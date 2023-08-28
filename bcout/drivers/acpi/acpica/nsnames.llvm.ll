; ModuleID = '../bcout/drivers/acpi/acpica/nsnames.llvm.bc'
source_filename = "drivers/acpi/acpica/nsnames.c"
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
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_buffer = type { i64, i8* }
%struct.acpi_scope_state = type { i8*, i8, i8, i16, i16, %struct.acpi_namespace_node* }

@_acpi_module_name = internal constant [8 x i8] c"nsnames\00", align 1, !dbg !0
@.str = private unnamed_addr constant [61 x i8] c"Invalid/cached reference target node: %p, descriptor type %d\00", align 1
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not allocate %u bytes\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ns_get_external_pathname(%struct.acpi_namespace_node* %node) #0 !dbg !813 {
entry:
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %name_buffer = alloca i8*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata i8** %name_buffer, metadata !819, metadata !DIExpression()), !dbg !820
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !821
  %call = call i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node* %0, i8 zeroext 0) #8, !dbg !822
  store i8* %call, i8** %name_buffer, align 8, !dbg !823
  %1 = load i8*, i8** %name_buffer, align 8, !dbg !824
  ret i8* %1, !dbg !824
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node* %node, i8 zeroext %no_trailing) #0 !dbg !825 {
entry:
  %retval = alloca i8*, align 8
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %no_trailing.addr = alloca i8, align 1
  %name_buffer = alloca i8*, align 8
  %size = alloca i64, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !828, metadata !DIExpression()), !dbg !829
  store i8 %no_trailing, i8* %no_trailing.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %no_trailing.addr, metadata !830, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata i8** %name_buffer, metadata !832, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.declare(metadata i64* %size, metadata !834, metadata !DIExpression()), !dbg !835
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !836
  %1 = load i8, i8* %no_trailing.addr, align 1, !dbg !837
  %call = call i32 @acpi_ns_build_normalized_path(%struct.acpi_namespace_node* %0, i8* null, i32 0, i8 zeroext %1) #8, !dbg !838
  %conv = zext i32 %call to i64, !dbg !838
  store i64 %conv, i64* %size, align 8, !dbg !839
  %2 = load i64, i64* %size, align 8, !dbg !840
  %tobool = icmp ne i64 %2, 0, !dbg !840
  br i1 %tobool, label %if.end, label %if.then, !dbg !842

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !843
  br label %return, !dbg !843

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %size, align 8, !dbg !845
  %call1 = call i8* @acpi_os_allocate_zeroed(i64 %3) #8, !dbg !845
  store i8* %call1, i8** %name_buffer, align 8, !dbg !846
  %4 = load i8*, i8** %name_buffer, align 8, !dbg !847
  %tobool2 = icmp ne i8* %4, null, !dbg !847
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !849

if.then3:                                         ; preds = %if.end
  %5 = load i64, i64* %size, align 8, !dbg !850
  %conv4 = trunc i64 %5 to i32, !dbg !850
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 308, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %conv4) #8, !dbg !850
  store i8* null, i8** %retval, align 8, !dbg !852
  br label %return, !dbg !852

if.end5:                                          ; preds = %if.end
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !853
  %7 = load i8*, i8** %name_buffer, align 8, !dbg !854
  %8 = load i64, i64* %size, align 8, !dbg !855
  %conv6 = trunc i64 %8 to i32, !dbg !856
  %9 = load i8, i8* %no_trailing.addr, align 1, !dbg !857
  %call7 = call i32 @acpi_ns_build_normalized_path(%struct.acpi_namespace_node* %6, i8* %7, i32 %conv6, i8 zeroext %9) #8, !dbg !858
  %10 = load i8*, i8** %name_buffer, align 8, !dbg !859
  store i8* %10, i8** %retval, align 8, !dbg !859
  br label %return, !dbg !859

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %11 = load i8*, i8** %retval, align 8, !dbg !860
  ret i8* %11, !dbg !860
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @acpi_ns_get_pathname_length(%struct.acpi_namespace_node* %node) #0 !dbg !861 {
entry:
  %retval = alloca i64, align 8
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %size = alloca i64, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !864, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.declare(metadata i64* %size, metadata !866, metadata !DIExpression()), !dbg !867
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !868
  %1 = bitcast %struct.acpi_namespace_node* %0 to i8*, !dbg !868
  %2 = bitcast i8* %1 to %union.acpi_descriptor*, !dbg !868
  %common = bitcast %union.acpi_descriptor* %2 to %struct.acpi_common_descriptor*, !dbg !868
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !868
  %3 = load i8, i8* %descriptor_type, align 8, !dbg !868
  %conv = zext i8 %3 to i32, !dbg !868
  %cmp = icmp ne i32 %conv, 15, !dbg !870
  br i1 %cmp, label %if.then, label %if.end, !dbg !871

if.then:                                          ; preds = %entry
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !872
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !872
  %6 = bitcast %struct.acpi_namespace_node* %5 to i8*, !dbg !872
  %7 = bitcast i8* %6 to %union.acpi_descriptor*, !dbg !872
  %common2 = bitcast %union.acpi_descriptor* %7 to %struct.acpi_common_descriptor*, !dbg !872
  %descriptor_type3 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common2, i32 0, i32 1, !dbg !872
  %8 = load i8, i8* %descriptor_type3, align 8, !dbg !872
  %conv4 = zext i8 %8 to i32, !dbg !872
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), %struct.acpi_namespace_node* %4, i32 %conv4) #8, !dbg !872
  store i64 0, i64* %retval, align 8, !dbg !874
  br label %return, !dbg !874

if.end:                                           ; preds = %entry
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !875
  %call = call i32 @acpi_ns_build_normalized_path(%struct.acpi_namespace_node* %9, i8* null, i32 0, i8 zeroext 0) #8, !dbg !876
  %conv5 = zext i32 %call to i64, !dbg !876
  store i64 %conv5, i64* %size, align 8, !dbg !877
  %10 = load i64, i64* %size, align 8, !dbg !878
  store i64 %10, i64* %retval, align 8, !dbg !879
  br label %return, !dbg !879

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !880
  ret i64 %11, !dbg !880
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_build_normalized_path(%struct.acpi_namespace_node* %node, i8* %full_path, i32 %path_size, i8 zeroext %no_trailing) #0 !dbg !881 {
entry:
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %full_path.addr = alloca i8*, align 8
  %path_size.addr = alloca i32, align 4
  %no_trailing.addr = alloca i8, align 1
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  %name = alloca [4 x i8], align 1
  %do_no_trailing = alloca i8, align 1
  %c = alloca i8, align 1
  %left = alloca i8*, align 8
  %right = alloca i8*, align 8
  %next_node = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !884, metadata !DIExpression()), !dbg !885
  store i8* %full_path, i8** %full_path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %full_path.addr, metadata !886, metadata !DIExpression()), !dbg !887
  store i32 %path_size, i32* %path_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %path_size.addr, metadata !888, metadata !DIExpression()), !dbg !889
  store i8 %no_trailing, i8* %no_trailing.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %no_trailing.addr, metadata !890, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.declare(metadata i32* %length, metadata !892, metadata !DIExpression()), !dbg !893
  store i32 0, i32* %length, align 4, !dbg !893
  call void @llvm.dbg.declare(metadata i32* %i, metadata !894, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.declare(metadata [4 x i8]* %name, metadata !896, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.declare(metadata i8* %do_no_trailing, metadata !898, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.declare(metadata i8* %c, metadata !900, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.declare(metadata i8** %left, metadata !902, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.declare(metadata i8** %right, metadata !904, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %next_node, metadata !906, metadata !DIExpression()), !dbg !907
  %0 = load i8*, i8** %full_path.addr, align 8, !dbg !908
  %tobool = icmp ne i8* %0, null, !dbg !908
  br i1 %tobool, label %if.end, label %if.then, !dbg !910

if.then:                                          ; preds = %entry
  store i32 0, i32* %path_size.addr, align 4, !dbg !911
  br label %if.end, !dbg !913

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !914
  %tobool1 = icmp ne %struct.acpi_namespace_node* %1, null, !dbg !914
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !916

if.then2:                                         ; preds = %if.end
  br label %build_trailing_null, !dbg !917

if.end3:                                          ; preds = %if.end
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !919
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %next_node, align 8, !dbg !920
  br label %while.cond, !dbg !921

while.cond:                                       ; preds = %for.end, %if.end3
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !922
  %tobool4 = icmp ne %struct.acpi_namespace_node* %3, null, !dbg !922
  br i1 %tobool4, label %land.rhs, label %land.end, !dbg !923

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !924
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !925
  %cmp = icmp ne %struct.acpi_namespace_node* %4, %5, !dbg !926
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !927
  br i1 %6, label %while.body, label %while.end, !dbg !921

while.body:                                       ; preds = %land.end
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !928
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !931
  %cmp5 = icmp ne %struct.acpi_namespace_node* %7, %8, !dbg !932
  br i1 %cmp5, label %if.then6, label %if.end10, !dbg !933

if.then6:                                         ; preds = %while.body
  br label %do.body, !dbg !934

do.body:                                          ; preds = %if.then6
  %9 = load i32, i32* %length, align 4, !dbg !936
  %10 = load i32, i32* %path_size.addr, align 4, !dbg !936
  %cmp7 = icmp ult i32 %9, %10, !dbg !936
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !939

if.then8:                                         ; preds = %do.body
  %11 = load i8*, i8** %full_path.addr, align 8, !dbg !940
  %12 = load i32, i32* %length, align 4, !dbg !940
  %idxprom = zext i32 %12 to i64, !dbg !940
  %arrayidx = getelementptr i8, i8* %11, i64 %idxprom, !dbg !940
  store i8 46, i8* %arrayidx, align 1, !dbg !940
  br label %if.end9, !dbg !940

if.end9:                                          ; preds = %if.then8, %do.body
  %13 = load i32, i32* %length, align 4, !dbg !939
  %inc = add i32 %13, 1, !dbg !939
  store i32 %inc, i32* %length, align 4, !dbg !939
  br label %do.end, !dbg !939

do.end:                                           ; preds = %if.end9
  br label %if.end10, !dbg !942

if.end10:                                         ; preds = %do.end, %while.body
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !943
  %name11 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %14, i32 0, i32 4, !dbg !943
  %15 = bitcast %union.acpi_name_union* %name11 to i8*, !dbg !943
  %16 = bitcast i8* %15 to i32*, !dbg !943
  %17 = load i32, i32* %16, align 4, !dbg !943
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %name, i64 0, i64 0, !dbg !943
  %18 = bitcast i8* %arraydecay to i32*, !dbg !943
  store i32 %17, i32* %18, align 4, !dbg !943
  %19 = load i8, i8* %no_trailing.addr, align 1, !dbg !944
  store i8 %19, i8* %do_no_trailing, align 1, !dbg !945
  store i32 0, i32* %i, align 4, !dbg !946
  br label %for.cond, !dbg !948

for.cond:                                         ; preds = %for.inc, %if.end10
  %20 = load i32, i32* %i, align 4, !dbg !949
  %cmp12 = icmp ult i32 %20, 4, !dbg !951
  br i1 %cmp12, label %for.body, label %for.end, !dbg !952

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !dbg !953
  %sub = sub i32 4, %21, !dbg !955
  %sub13 = sub i32 %sub, 1, !dbg !956
  %idxprom14 = zext i32 %sub13 to i64, !dbg !957
  %arrayidx15 = getelementptr [4 x i8], [4 x i8]* %name, i64 0, i64 %idxprom14, !dbg !957
  %22 = load i8, i8* %arrayidx15, align 1, !dbg !957
  store i8 %22, i8* %c, align 1, !dbg !958
  %23 = load i8, i8* %do_no_trailing, align 1, !dbg !959
  %conv = zext i8 %23 to i32, !dbg !959
  %tobool16 = icmp ne i32 %conv, 0, !dbg !959
  br i1 %tobool16, label %land.lhs.true, label %if.end21, !dbg !961

land.lhs.true:                                    ; preds = %for.body
  %24 = load i8, i8* %c, align 1, !dbg !962
  %conv17 = sext i8 %24 to i32, !dbg !962
  %cmp18 = icmp ne i32 %conv17, 95, !dbg !963
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !964

if.then20:                                        ; preds = %land.lhs.true
  store i8 0, i8* %do_no_trailing, align 1, !dbg !965
  br label %if.end21, !dbg !967

if.end21:                                         ; preds = %if.then20, %land.lhs.true, %for.body
  %25 = load i8, i8* %do_no_trailing, align 1, !dbg !968
  %tobool22 = icmp ne i8 %25, 0, !dbg !968
  br i1 %tobool22, label %if.end33, label %if.then23, !dbg !970

if.then23:                                        ; preds = %if.end21
  br label %do.body24, !dbg !971

do.body24:                                        ; preds = %if.then23
  %26 = load i32, i32* %length, align 4, !dbg !973
  %27 = load i32, i32* %path_size.addr, align 4, !dbg !973
  %cmp25 = icmp ult i32 %26, %27, !dbg !973
  br i1 %cmp25, label %if.then27, label %if.end30, !dbg !976

if.then27:                                        ; preds = %do.body24
  %28 = load i8, i8* %c, align 1, !dbg !977
  %29 = load i8*, i8** %full_path.addr, align 8, !dbg !977
  %30 = load i32, i32* %length, align 4, !dbg !977
  %idxprom28 = zext i32 %30 to i64, !dbg !977
  %arrayidx29 = getelementptr i8, i8* %29, i64 %idxprom28, !dbg !977
  store i8 %28, i8* %arrayidx29, align 1, !dbg !977
  br label %if.end30, !dbg !977

if.end30:                                         ; preds = %if.then27, %do.body24
  %31 = load i32, i32* %length, align 4, !dbg !976
  %inc31 = add i32 %31, 1, !dbg !976
  store i32 %inc31, i32* %length, align 4, !dbg !976
  br label %do.end32, !dbg !976

do.end32:                                         ; preds = %if.end30
  br label %if.end33, !dbg !979

if.end33:                                         ; preds = %do.end32, %if.end21
  br label %for.inc, !dbg !980

for.inc:                                          ; preds = %if.end33
  %32 = load i32, i32* %i, align 4, !dbg !981
  %inc34 = add i32 %32, 1, !dbg !981
  store i32 %inc34, i32* %i, align 4, !dbg !981
  br label %for.cond, !dbg !982, !llvm.loop !983

for.end:                                          ; preds = %for.cond
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !985
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %33, i32 0, i32 5, !dbg !986
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !986
  store %struct.acpi_namespace_node* %34, %struct.acpi_namespace_node** %next_node, align 8, !dbg !987
  br label %while.cond, !dbg !921, !llvm.loop !988

while.end:                                        ; preds = %land.end
  br label %do.body35, !dbg !990

do.body35:                                        ; preds = %while.end
  %35 = load i32, i32* %length, align 4, !dbg !991
  %36 = load i32, i32* %path_size.addr, align 4, !dbg !991
  %cmp36 = icmp ult i32 %35, %36, !dbg !991
  br i1 %cmp36, label %if.then38, label %if.end41, !dbg !994

if.then38:                                        ; preds = %do.body35
  %37 = load i8*, i8** %full_path.addr, align 8, !dbg !995
  %38 = load i32, i32* %length, align 4, !dbg !995
  %idxprom39 = zext i32 %38 to i64, !dbg !995
  %arrayidx40 = getelementptr i8, i8* %37, i64 %idxprom39, !dbg !995
  store i8 92, i8* %arrayidx40, align 1, !dbg !995
  br label %if.end41, !dbg !995

if.end41:                                         ; preds = %if.then38, %do.body35
  %39 = load i32, i32* %length, align 4, !dbg !994
  %inc42 = add i32 %39, 1, !dbg !994
  store i32 %inc42, i32* %length, align 4, !dbg !994
  br label %do.end43, !dbg !994

do.end43:                                         ; preds = %if.end41
  %40 = load i32, i32* %length, align 4, !dbg !997
  %41 = load i32, i32* %path_size.addr, align 4, !dbg !999
  %cmp44 = icmp ule i32 %40, %41, !dbg !1000
  br i1 %cmp44, label %if.then46, label %if.end54, !dbg !1001

if.then46:                                        ; preds = %do.end43
  %42 = load i8*, i8** %full_path.addr, align 8, !dbg !1002
  store i8* %42, i8** %left, align 8, !dbg !1004
  %43 = load i8*, i8** %full_path.addr, align 8, !dbg !1005
  %44 = load i32, i32* %length, align 4, !dbg !1006
  %idx.ext = zext i32 %44 to i64, !dbg !1007
  %add.ptr = getelementptr i8, i8* %43, i64 %idx.ext, !dbg !1007
  %add.ptr47 = getelementptr i8, i8* %add.ptr, i64 -1, !dbg !1008
  store i8* %add.ptr47, i8** %right, align 8, !dbg !1009
  br label %while.cond48, !dbg !1010

while.cond48:                                     ; preds = %while.body51, %if.then46
  %45 = load i8*, i8** %left, align 8, !dbg !1011
  %46 = load i8*, i8** %right, align 8, !dbg !1012
  %cmp49 = icmp ult i8* %45, %46, !dbg !1013
  br i1 %cmp49, label %while.body51, label %while.end53, !dbg !1010

while.body51:                                     ; preds = %while.cond48
  %47 = load i8*, i8** %left, align 8, !dbg !1014
  %48 = load i8, i8* %47, align 1, !dbg !1016
  store i8 %48, i8* %c, align 1, !dbg !1017
  %49 = load i8*, i8** %right, align 8, !dbg !1018
  %50 = load i8, i8* %49, align 1, !dbg !1019
  %51 = load i8*, i8** %left, align 8, !dbg !1020
  %incdec.ptr = getelementptr i8, i8* %51, i32 1, !dbg !1020
  store i8* %incdec.ptr, i8** %left, align 8, !dbg !1020
  store i8 %50, i8* %51, align 1, !dbg !1021
  %52 = load i8, i8* %c, align 1, !dbg !1022
  %53 = load i8*, i8** %right, align 8, !dbg !1023
  %incdec.ptr52 = getelementptr i8, i8* %53, i32 -1, !dbg !1023
  store i8* %incdec.ptr52, i8** %right, align 8, !dbg !1023
  store i8 %52, i8* %53, align 1, !dbg !1024
  br label %while.cond48, !dbg !1010, !llvm.loop !1025

while.end53:                                      ; preds = %while.cond48
  br label %if.end54, !dbg !1027

if.end54:                                         ; preds = %while.end53, %do.end43
  br label %build_trailing_null, !dbg !999

build_trailing_null:                              ; preds = %if.end54, %if.then2
  call void @llvm.dbg.label(metadata !1028), !dbg !1029
  br label %do.body55, !dbg !1030

do.body55:                                        ; preds = %build_trailing_null
  %54 = load i32, i32* %length, align 4, !dbg !1031
  %55 = load i32, i32* %path_size.addr, align 4, !dbg !1031
  %cmp56 = icmp ult i32 %54, %55, !dbg !1031
  br i1 %cmp56, label %if.then58, label %if.end61, !dbg !1034

if.then58:                                        ; preds = %do.body55
  %56 = load i8*, i8** %full_path.addr, align 8, !dbg !1035
  %57 = load i32, i32* %length, align 4, !dbg !1035
  %idxprom59 = zext i32 %57 to i64, !dbg !1035
  %arrayidx60 = getelementptr i8, i8* %56, i64 %idxprom59, !dbg !1035
  store i8 0, i8* %arrayidx60, align 1, !dbg !1035
  br label %if.end61, !dbg !1035

if.end61:                                         ; preds = %if.then58, %do.body55
  %58 = load i32, i32* %length, align 4, !dbg !1034
  %inc62 = add i32 %58, 1, !dbg !1034
  store i32 %inc62, i32* %length, align 4, !dbg !1034
  br label %do.end63, !dbg !1034

do.end63:                                         ; preds = %if.end61
  %59 = load i32, i32* %length, align 4, !dbg !1037
  ret i32 %59, !dbg !1037
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_handle_to_name(i8* %target_handle, %struct.acpi_buffer* %buffer) #0 !dbg !1038 {
entry:
  %retval = alloca i32, align 4
  %target_handle.addr = alloca i8*, align 8
  %buffer.addr = alloca %struct.acpi_buffer*, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  %node_name = alloca i8*, align 8
  store i8* %target_handle, i8** %target_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %target_handle.addr, metadata !1046, metadata !DIExpression()), !dbg !1047
  store %struct.acpi_buffer* %buffer, %struct.acpi_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %buffer.addr, metadata !1048, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1050, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1052, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.declare(metadata i8** %node_name, metadata !1054, metadata !DIExpression()), !dbg !1056
  %0 = load i8*, i8** %target_handle.addr, align 8, !dbg !1057
  %call = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %0) #8, !dbg !1058
  store %struct.acpi_namespace_node* %call, %struct.acpi_namespace_node** %node, align 8, !dbg !1059
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1060
  %tobool = icmp ne %struct.acpi_namespace_node* %1, null, !dbg !1060
  br i1 %tobool, label %if.end, label %if.then, !dbg !1062

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1063
  br label %return, !dbg !1063

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !1065
  %call1 = call i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer* %2, i64 5) #8, !dbg !1066
  store i32 %call1, i32* %status, align 4, !dbg !1067
  %3 = load i32, i32* %status, align 4, !dbg !1068
  %tobool2 = icmp ne i32 %3, 0, !dbg !1068
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1070

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* %status, align 4, !dbg !1071
  store i32 %4, i32* %retval, align 4, !dbg !1071
  br label %return, !dbg !1071

if.end4:                                          ; preds = %if.end
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1073
  %6 = bitcast %struct.acpi_namespace_node* %5 to i8*, !dbg !1073
  %call5 = call i8* @acpi_ut_get_node_name(i8* %6) #8, !dbg !1074
  store i8* %call5, i8** %node_name, align 8, !dbg !1075
  %7 = load i8*, i8** %node_name, align 8, !dbg !1076
  %8 = bitcast i8* %7 to i32*, !dbg !1076
  %9 = load i32, i32* %8, align 4, !dbg !1076
  %10 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !1076
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 1, !dbg !1076
  %11 = load i8*, i8** %pointer, align 8, !dbg !1076
  %12 = bitcast i8* %11 to i32*, !dbg !1076
  store i32 %9, i32* %12, align 4, !dbg !1076
  %13 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !1077
  %pointer6 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1, !dbg !1078
  %14 = load i8*, i8** %pointer6, align 8, !dbg !1078
  %arrayidx = getelementptr i8, i8* %14, i64 4, !dbg !1079
  store i8 0, i8* %arrayidx, align 1, !dbg !1080
  store i32 0, i32* %retval, align 4, !dbg !1081
  br label %return, !dbg !1081

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !1082
  ret i32 %15, !dbg !1082
}

; Function Attrs: noredzone
declare dso_local %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer*, i64) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_node_name(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_handle_to_pathname(i8* %target_handle, %struct.acpi_buffer* %buffer, i8 zeroext %no_trailing) #0 !dbg !1083 {
entry:
  %retval = alloca i32, align 4
  %target_handle.addr = alloca i8*, align 8
  %buffer.addr = alloca %struct.acpi_buffer*, align 8
  %no_trailing.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  %required_size = alloca i64, align 8
  store i8* %target_handle, i8** %target_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %target_handle.addr, metadata !1086, metadata !DIExpression()), !dbg !1087
  store %struct.acpi_buffer* %buffer, %struct.acpi_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %buffer.addr, metadata !1088, metadata !DIExpression()), !dbg !1089
  store i8 %no_trailing, i8* %no_trailing.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %no_trailing.addr, metadata !1090, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1092, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1094, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.declare(metadata i64* %required_size, metadata !1096, metadata !DIExpression()), !dbg !1097
  %0 = load i8*, i8** %target_handle.addr, align 8, !dbg !1098
  %call = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %0) #8, !dbg !1099
  store %struct.acpi_namespace_node* %call, %struct.acpi_namespace_node** %node, align 8, !dbg !1100
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1101
  %tobool = icmp ne %struct.acpi_namespace_node* %1, null, !dbg !1101
  br i1 %tobool, label %if.end, label %if.then, !dbg !1103

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1104
  br label %return, !dbg !1104

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1106
  %3 = load i8, i8* %no_trailing.addr, align 1, !dbg !1107
  %call1 = call i32 @acpi_ns_build_normalized_path(%struct.acpi_namespace_node* %2, i8* null, i32 0, i8 zeroext %3) #8, !dbg !1108
  %conv = zext i32 %call1 to i64, !dbg !1108
  store i64 %conv, i64* %required_size, align 8, !dbg !1109
  %4 = load i64, i64* %required_size, align 8, !dbg !1110
  %tobool2 = icmp ne i64 %4, 0, !dbg !1110
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1112

if.then3:                                         ; preds = %if.end
  store i32 4097, i32* %retval, align 4, !dbg !1113
  br label %return, !dbg !1113

if.end4:                                          ; preds = %if.end
  %5 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !1115
  %6 = load i64, i64* %required_size, align 8, !dbg !1116
  %call5 = call i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer* %5, i64 %6) #8, !dbg !1117
  store i32 %call5, i32* %status, align 4, !dbg !1118
  %7 = load i32, i32* %status, align 4, !dbg !1119
  %tobool6 = icmp ne i32 %7, 0, !dbg !1119
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1121

if.then7:                                         ; preds = %if.end4
  %8 = load i32, i32* %status, align 4, !dbg !1122
  store i32 %8, i32* %retval, align 4, !dbg !1122
  br label %return, !dbg !1122

if.end8:                                          ; preds = %if.end4
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1124
  %10 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !1125
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 1, !dbg !1126
  %11 = load i8*, i8** %pointer, align 8, !dbg !1126
  %12 = load i64, i64* %required_size, align 8, !dbg !1127
  %conv9 = trunc i64 %12 to i32, !dbg !1128
  %13 = load i8, i8* %no_trailing.addr, align 1, !dbg !1129
  %call10 = call i32 @acpi_ns_build_normalized_path(%struct.acpi_namespace_node* %9, i8* %11, i32 %conv9, i8 zeroext %13) #8, !dbg !1130
  store i32 0, i32* %retval, align 4, !dbg !1131
  br label %return, !dbg !1131

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !1132
  ret i32 %14, !dbg !1132
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1133 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1137, metadata !DIExpression()), !dbg !1143
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1147, metadata !DIExpression()), !dbg !1148
  %0 = load i64, i64* %size.addr, align 8, !dbg !1149
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1150, metadata !DIExpression()), !dbg !1151
  br label %do.body, !dbg !1151

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1152, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1156, metadata !DIExpression()), !dbg !1155
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1155
  %conv = zext i1 %cmp to i32, !dbg !1155
  store i32 1, i32* %tmp, align 4, !dbg !1155
  %1 = load i32, i32* %tmp, align 4, !dbg !1155
  %call = call i64 @arch_local_save_flags() #8, !dbg !1157
  store i64 %call, i64* %_flags, align 8, !dbg !1157
  br label %do.end, !dbg !1157

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1158, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1161, metadata !DIExpression()), !dbg !1160
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1160
  %conv6 = zext i1 %cmp5 to i32, !dbg !1160
  store i32 1, i32* %tmp7, align 4, !dbg !1160
  %2 = load i32, i32* %tmp7, align 4, !dbg !1160
  %3 = load i64, i64* %_flags, align 8, !dbg !1162
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1163
  %and.i = and i64 %4, 512, !dbg !1164
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1165
  %lnot.i = xor i1 %tobool.i, true, !dbg !1165
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1165
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1162
  %5 = load i32, i32* %tmp8, align 4, !dbg !1162
  store i32 %5, i32* %tmp1, align 4, !dbg !1157
  %6 = load i32, i32* %tmp1, align 4, !dbg !1151
  %tobool = icmp ne i32 %6, 0, !dbg !1166
  %7 = zext i1 %tobool to i64, !dbg !1166
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1166
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1167
  ret i8* %call10, !dbg !1168
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ns_build_prefixed_pathname(%union.acpi_generic_state* %prefix_scope, i8* %internal_path) #0 !dbg !1169 {
entry:
  %prefix_scope.addr = alloca %union.acpi_generic_state*, align 8
  %internal_path.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %full_path = alloca i8*, align 8
  %external_path = alloca i8*, align 8
  %prefix_path = alloca i8*, align 8
  %prefix_path_length = alloca i64, align 8
  store %union.acpi_generic_state* %prefix_scope, %union.acpi_generic_state** %prefix_scope.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %prefix_scope.addr, metadata !1172, metadata !DIExpression()), !dbg !1173
  store i8* %internal_path, i8** %internal_path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %internal_path.addr, metadata !1174, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1176, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.declare(metadata i8** %full_path, metadata !1178, metadata !DIExpression()), !dbg !1179
  store i8* null, i8** %full_path, align 8, !dbg !1179
  call void @llvm.dbg.declare(metadata i8** %external_path, metadata !1180, metadata !DIExpression()), !dbg !1181
  store i8* null, i8** %external_path, align 8, !dbg !1181
  call void @llvm.dbg.declare(metadata i8** %prefix_path, metadata !1182, metadata !DIExpression()), !dbg !1183
  store i8* null, i8** %prefix_path, align 8, !dbg !1183
  call void @llvm.dbg.declare(metadata i64* %prefix_path_length, metadata !1184, metadata !DIExpression()), !dbg !1185
  store i64 0, i64* %prefix_path_length, align 8, !dbg !1185
  %0 = load %union.acpi_generic_state*, %union.acpi_generic_state** %prefix_scope.addr, align 8, !dbg !1186
  %tobool = icmp ne %union.acpi_generic_state* %0, null, !dbg !1186
  br i1 %tobool, label %land.lhs.true, label %if.end7, !dbg !1188

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.acpi_generic_state*, %union.acpi_generic_state** %prefix_scope.addr, align 8, !dbg !1189
  %scope = bitcast %union.acpi_generic_state* %1 to %struct.acpi_scope_state*, !dbg !1190
  %node = getelementptr inbounds %struct.acpi_scope_state, %struct.acpi_scope_state* %scope, i32 0, i32 5, !dbg !1191
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1191
  %tobool1 = icmp ne %struct.acpi_namespace_node* %2, null, !dbg !1189
  br i1 %tobool1, label %if.then, label %if.end7, !dbg !1192

if.then:                                          ; preds = %land.lhs.true
  %3 = load %union.acpi_generic_state*, %union.acpi_generic_state** %prefix_scope.addr, align 8, !dbg !1193
  %scope2 = bitcast %union.acpi_generic_state* %3 to %struct.acpi_scope_state*, !dbg !1195
  %node3 = getelementptr inbounds %struct.acpi_scope_state, %struct.acpi_scope_state* %scope2, i32 0, i32 5, !dbg !1196
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node3, align 8, !dbg !1196
  %call = call i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node* %4, i8 zeroext 1) #8, !dbg !1197
  store i8* %call, i8** %prefix_path, align 8, !dbg !1198
  %5 = load i8*, i8** %prefix_path, align 8, !dbg !1199
  %tobool4 = icmp ne i8* %5, null, !dbg !1199
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !1201

if.then5:                                         ; preds = %if.then
  %6 = load i8*, i8** %prefix_path, align 8, !dbg !1202
  %call6 = call i64 @strlen(i8* %6) #8, !dbg !1204
  store i64 %call6, i64* %prefix_path_length, align 8, !dbg !1205
  br label %if.end, !dbg !1206

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end7, !dbg !1207

if.end7:                                          ; preds = %if.end, %land.lhs.true, %entry
  %7 = load i8*, i8** %internal_path.addr, align 8, !dbg !1208
  %call8 = call i32 @acpi_ns_externalize_name(i32 -1, i8* %7, i32* null, i8** %external_path) #8, !dbg !1209
  store i32 %call8, i32* %status, align 4, !dbg !1210
  %8 = load i32, i32* %status, align 4, !dbg !1211
  %tobool9 = icmp ne i32 %8, 0, !dbg !1211
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1213

if.then10:                                        ; preds = %if.end7
  br label %cleanup, !dbg !1214

if.end11:                                         ; preds = %if.end7
  %9 = load i64, i64* %prefix_path_length, align 8, !dbg !1216
  %10 = load i8*, i8** %external_path, align 8, !dbg !1216
  %call12 = call i64 @strlen(i8* %10) #8, !dbg !1216
  %add = add i64 %9, %call12, !dbg !1216
  %add13 = add i64 %add, 2, !dbg !1216
  %call14 = call i8* @acpi_os_allocate_zeroed(i64 %add13) #8, !dbg !1216
  store i8* %call14, i8** %full_path, align 8, !dbg !1217
  %11 = load i8*, i8** %full_path, align 8, !dbg !1218
  %tobool15 = icmp ne i8* %11, null, !dbg !1218
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !1220

if.then16:                                        ; preds = %if.end11
  br label %cleanup, !dbg !1221

if.end17:                                         ; preds = %if.end11
  %12 = load i8*, i8** %prefix_path, align 8, !dbg !1223
  %tobool18 = icmp ne i8* %12, null, !dbg !1223
  br i1 %tobool18, label %land.lhs.true19, label %if.end31, !dbg !1225

land.lhs.true19:                                  ; preds = %if.end17
  %13 = load i8*, i8** %external_path, align 8, !dbg !1226
  %14 = load i8, i8* %13, align 1, !dbg !1227
  %conv = sext i8 %14 to i32, !dbg !1227
  %cmp = icmp ne i32 %conv, 92, !dbg !1228
  br i1 %cmp, label %land.lhs.true21, label %if.end31, !dbg !1229

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %15 = load i8*, i8** %external_path, align 8, !dbg !1230
  %16 = load i8, i8* %15, align 1, !dbg !1231
  %conv22 = sext i8 %16 to i32, !dbg !1231
  %cmp23 = icmp ne i32 %conv22, 94, !dbg !1232
  br i1 %cmp23, label %if.then25, label %if.end31, !dbg !1233

if.then25:                                        ; preds = %land.lhs.true21
  %17 = load i8*, i8** %full_path, align 8, !dbg !1234
  %18 = load i8*, i8** %prefix_path, align 8, !dbg !1236
  %call26 = call i8* @strcat(i8* %17, i8* %18) #8, !dbg !1237
  %19 = load i8*, i8** %prefix_path, align 8, !dbg !1238
  %arrayidx = getelementptr i8, i8* %19, i64 1, !dbg !1238
  %20 = load i8, i8* %arrayidx, align 1, !dbg !1238
  %tobool27 = icmp ne i8 %20, 0, !dbg !1238
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !1240

if.then28:                                        ; preds = %if.then25
  %21 = load i8*, i8** %full_path, align 8, !dbg !1241
  %call29 = call i8* @strcat(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1243
  br label %if.end30, !dbg !1244

if.end30:                                         ; preds = %if.then28, %if.then25
  br label %if.end31, !dbg !1245

if.end31:                                         ; preds = %if.end30, %land.lhs.true21, %land.lhs.true19, %if.end17
  %22 = load i8*, i8** %external_path, align 8, !dbg !1246
  call void @acpi_ns_normalize_pathname(i8* %22) #8, !dbg !1247
  %23 = load i8*, i8** %full_path, align 8, !dbg !1248
  %24 = load i8*, i8** %external_path, align 8, !dbg !1249
  %call32 = call i8* @strcat(i8* %23, i8* %24) #8, !dbg !1250
  br label %cleanup, !dbg !1250

cleanup:                                          ; preds = %if.end31, %if.then16, %if.then10
  call void @llvm.dbg.label(metadata !1251), !dbg !1252
  %25 = load i8*, i8** %prefix_path, align 8, !dbg !1253
  %tobool33 = icmp ne i8* %25, null, !dbg !1253
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !1255

if.then34:                                        ; preds = %cleanup
  %26 = load i8*, i8** %prefix_path, align 8, !dbg !1256
  call void @acpi_os_free(i8* %26) #8, !dbg !1256
  br label %if.end35, !dbg !1258

if.end35:                                         ; preds = %if.then34, %cleanup
  %27 = load i8*, i8** %external_path, align 8, !dbg !1259
  %tobool36 = icmp ne i8* %27, null, !dbg !1259
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1261

if.then37:                                        ; preds = %if.end35
  %28 = load i8*, i8** %external_path, align 8, !dbg !1262
  call void @acpi_os_free(i8* %28) #8, !dbg !1262
  br label %if.end38, !dbg !1264

if.end38:                                         ; preds = %if.then37, %if.end35
  %29 = load i8*, i8** %full_path, align 8, !dbg !1265
  ret i8* %29, !dbg !1266
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_externalize_name(i32, i8*, i32*, i8**) #2

; Function Attrs: noredzone
declare dso_local i8* @strcat(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_normalize_pathname(i8* %original_path) #0 !dbg !1267 {
entry:
  %original_path.addr = alloca i8*, align 8
  %input_path = alloca i8*, align 8
  %new_path_buffer = alloca i8*, align 8
  %new_path = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %original_path, i8** %original_path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %original_path.addr, metadata !1270, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.declare(metadata i8** %input_path, metadata !1272, metadata !DIExpression()), !dbg !1273
  %0 = load i8*, i8** %original_path.addr, align 8, !dbg !1274
  store i8* %0, i8** %input_path, align 8, !dbg !1273
  call void @llvm.dbg.declare(metadata i8** %new_path_buffer, metadata !1275, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.declare(metadata i8** %new_path, metadata !1277, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1279, metadata !DIExpression()), !dbg !1280
  %1 = load i8*, i8** %input_path, align 8, !dbg !1281
  %call = call i64 @strlen(i8* %1) #8, !dbg !1281
  %add = add i64 %call, 1, !dbg !1281
  %call1 = call i8* @acpi_os_allocate_zeroed(i64 %add) #8, !dbg !1281
  store i8* %call1, i8** %new_path_buffer, align 8, !dbg !1282
  %2 = load i8*, i8** %new_path_buffer, align 8, !dbg !1283
  store i8* %2, i8** %new_path, align 8, !dbg !1284
  %3 = load i8*, i8** %new_path_buffer, align 8, !dbg !1285
  %tobool = icmp ne i8* %3, null, !dbg !1285
  br i1 %tobool, label %if.end, label %if.then, !dbg !1287

if.then:                                          ; preds = %entry
  br label %return, !dbg !1288

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %input_path, align 8, !dbg !1290
  %5 = load i8, i8* %4, align 1, !dbg !1292
  %conv = sext i8 %5 to i32, !dbg !1292
  %cmp = icmp eq i32 %conv, 92, !dbg !1293
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !1294

if.then3:                                         ; preds = %if.end
  %6 = load i8*, i8** %input_path, align 8, !dbg !1295
  %7 = load i8, i8* %6, align 1, !dbg !1297
  %8 = load i8*, i8** %new_path, align 8, !dbg !1298
  store i8 %7, i8* %8, align 1, !dbg !1299
  %9 = load i8*, i8** %new_path, align 8, !dbg !1300
  %incdec.ptr = getelementptr i8, i8* %9, i32 1, !dbg !1300
  store i8* %incdec.ptr, i8** %new_path, align 8, !dbg !1300
  %10 = load i8*, i8** %input_path, align 8, !dbg !1301
  %incdec.ptr4 = getelementptr i8, i8* %10, i32 1, !dbg !1301
  store i8* %incdec.ptr4, i8** %input_path, align 8, !dbg !1301
  br label %if.end5, !dbg !1302

if.end5:                                          ; preds = %if.then3, %if.end
  br label %while.cond, !dbg !1303

while.cond:                                       ; preds = %while.body, %if.end5
  %11 = load i8*, i8** %input_path, align 8, !dbg !1304
  %12 = load i8, i8* %11, align 1, !dbg !1305
  %conv6 = sext i8 %12 to i32, !dbg !1305
  %cmp7 = icmp eq i32 %conv6, 94, !dbg !1306
  br i1 %cmp7, label %while.body, label %while.end, !dbg !1303

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %input_path, align 8, !dbg !1307
  %14 = load i8, i8* %13, align 1, !dbg !1309
  %15 = load i8*, i8** %new_path, align 8, !dbg !1310
  store i8 %14, i8* %15, align 1, !dbg !1311
  %16 = load i8*, i8** %new_path, align 8, !dbg !1312
  %incdec.ptr9 = getelementptr i8, i8* %16, i32 1, !dbg !1312
  store i8* %incdec.ptr9, i8** %new_path, align 8, !dbg !1312
  %17 = load i8*, i8** %input_path, align 8, !dbg !1313
  %incdec.ptr10 = getelementptr i8, i8* %17, i32 1, !dbg !1313
  store i8* %incdec.ptr10, i8** %input_path, align 8, !dbg !1313
  br label %while.cond, !dbg !1303, !llvm.loop !1314

while.end:                                        ; preds = %while.cond
  br label %while.cond11, !dbg !1316

while.cond11:                                     ; preds = %if.end33, %while.end
  %18 = load i8*, i8** %input_path, align 8, !dbg !1317
  %19 = load i8, i8* %18, align 1, !dbg !1318
  %tobool12 = icmp ne i8 %19, 0, !dbg !1316
  br i1 %tobool12, label %while.body13, label %while.end34, !dbg !1316

while.body13:                                     ; preds = %while.cond11
  store i32 0, i32* %i, align 4, !dbg !1319
  br label %for.cond, !dbg !1322

for.cond:                                         ; preds = %for.inc, %while.body13
  %20 = load i32, i32* %i, align 4, !dbg !1323
  %cmp14 = icmp ult i32 %20, 4, !dbg !1325
  br i1 %cmp14, label %land.rhs, label %land.end, !dbg !1326

land.rhs:                                         ; preds = %for.cond
  %21 = load i8*, i8** %input_path, align 8, !dbg !1327
  %22 = load i8, i8* %21, align 1, !dbg !1328
  %conv16 = sext i8 %22 to i32, !dbg !1328
  %tobool17 = icmp ne i32 %conv16, 0, !dbg !1326
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %tobool17, %land.rhs ], !dbg !1329
  br i1 %23, label %for.body, label %for.end, !dbg !1330

for.body:                                         ; preds = %land.end
  %24 = load i32, i32* %i, align 4, !dbg !1331
  %cmp18 = icmp eq i32 %24, 0, !dbg !1334
  br i1 %cmp18, label %if.then23, label %lor.lhs.false, !dbg !1335

lor.lhs.false:                                    ; preds = %for.body
  %25 = load i8*, i8** %input_path, align 8, !dbg !1336
  %26 = load i8, i8* %25, align 1, !dbg !1337
  %conv20 = sext i8 %26 to i32, !dbg !1337
  %cmp21 = icmp ne i32 %conv20, 95, !dbg !1338
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !1339

if.then23:                                        ; preds = %lor.lhs.false, %for.body
  %27 = load i8*, i8** %input_path, align 8, !dbg !1340
  %28 = load i8, i8* %27, align 1, !dbg !1342
  %29 = load i8*, i8** %new_path, align 8, !dbg !1343
  store i8 %28, i8* %29, align 1, !dbg !1344
  %30 = load i8*, i8** %new_path, align 8, !dbg !1345
  %incdec.ptr24 = getelementptr i8, i8* %30, i32 1, !dbg !1345
  store i8* %incdec.ptr24, i8** %new_path, align 8, !dbg !1345
  br label %if.end25, !dbg !1346

if.end25:                                         ; preds = %if.then23, %lor.lhs.false
  %31 = load i8*, i8** %input_path, align 8, !dbg !1347
  %incdec.ptr26 = getelementptr i8, i8* %31, i32 1, !dbg !1347
  store i8* %incdec.ptr26, i8** %input_path, align 8, !dbg !1347
  br label %for.inc, !dbg !1348

for.inc:                                          ; preds = %if.end25
  %32 = load i32, i32* %i, align 4, !dbg !1349
  %inc = add i32 %32, 1, !dbg !1349
  store i32 %inc, i32* %i, align 4, !dbg !1349
  br label %for.cond, !dbg !1350, !llvm.loop !1351

for.end:                                          ; preds = %land.end
  %33 = load i8*, i8** %input_path, align 8, !dbg !1353
  %34 = load i8, i8* %33, align 1, !dbg !1355
  %conv27 = sext i8 %34 to i32, !dbg !1355
  %cmp28 = icmp eq i32 %conv27, 46, !dbg !1356
  br i1 %cmp28, label %if.then30, label %if.end33, !dbg !1357

if.then30:                                        ; preds = %for.end
  %35 = load i8*, i8** %input_path, align 8, !dbg !1358
  %36 = load i8, i8* %35, align 1, !dbg !1360
  %37 = load i8*, i8** %new_path, align 8, !dbg !1361
  store i8 %36, i8* %37, align 1, !dbg !1362
  %38 = load i8*, i8** %new_path, align 8, !dbg !1363
  %incdec.ptr31 = getelementptr i8, i8* %38, i32 1, !dbg !1363
  store i8* %incdec.ptr31, i8** %new_path, align 8, !dbg !1363
  %39 = load i8*, i8** %input_path, align 8, !dbg !1364
  %incdec.ptr32 = getelementptr i8, i8* %39, i32 1, !dbg !1364
  store i8* %incdec.ptr32, i8** %input_path, align 8, !dbg !1364
  br label %if.end33, !dbg !1365

if.end33:                                         ; preds = %if.then30, %for.end
  br label %while.cond11, !dbg !1316, !llvm.loop !1366

while.end34:                                      ; preds = %while.cond11
  %40 = load i8*, i8** %new_path, align 8, !dbg !1368
  store i8 0, i8* %40, align 1, !dbg !1369
  %41 = load i8*, i8** %original_path.addr, align 8, !dbg !1370
  %42 = load i8*, i8** %new_path_buffer, align 8, !dbg !1371
  %call35 = call i8* @strcpy(i8* %41, i8* %42) #8, !dbg !1372
  %43 = load i8*, i8** %new_path_buffer, align 8, !dbg !1373
  call void @acpi_os_free(i8* %43) #8, !dbg !1373
  br label %return, !dbg !1374

return:                                           ; preds = %while.end34, %if.then
  ret void, !dbg !1374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1375 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1378, metadata !DIExpression()), !dbg !1379
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1380
  call void @kfree(i8* %0) #8, !dbg !1381
  ret void, !dbg !1382
}

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1383 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1390, metadata !DIExpression()), !dbg !1397
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1403, metadata !DIExpression()), !dbg !1404
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1405, metadata !DIExpression()), !dbg !1406
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1407, metadata !DIExpression()), !dbg !1408
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1409, metadata !DIExpression()), !dbg !1413
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1415, metadata !DIExpression()), !dbg !1419
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1421, metadata !DIExpression()), !dbg !1425
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1430, metadata !DIExpression()), !dbg !1431
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1432, metadata !DIExpression()), !dbg !1433
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1434, metadata !DIExpression()), !dbg !1435
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1436, metadata !DIExpression()), !dbg !1437
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1438, metadata !DIExpression()), !dbg !1439
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1440, metadata !DIExpression()), !dbg !1441
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1442, metadata !DIExpression()), !dbg !1443
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1444, metadata !DIExpression()), !dbg !1445
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1446, metadata !DIExpression()), !dbg !1447
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1448, metadata !DIExpression()), !dbg !1449
  %0 = load i64, i64* %size.addr, align 8, !dbg !1450
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1451
  %or = or i32 %1, 256, !dbg !1452
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1453
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1454
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1455

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1456
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1457
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1458

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1459
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1460
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1461
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1462
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1439
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1463
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1464
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1465
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1466
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1467
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1468
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1469
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1469
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1469
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1469
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1469
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1470
  br label %kmalloc.exit, !dbg !1470

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1471
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1472
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1472
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1474

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1475
  br label %kmalloc_index.exit.i, !dbg !1475

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1476
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1478
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1479

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1480
  br label %kmalloc_index.exit.i, !dbg !1480

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1481
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1483
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1484

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1485
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1486
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1487

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1488
  br label %kmalloc_index.exit.i, !dbg !1488

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1489
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1491
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1492

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1493
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1494
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1495

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1496
  br label %kmalloc_index.exit.i, !dbg !1496

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1497
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1499
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1500

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1501
  br label %kmalloc_index.exit.i, !dbg !1501

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1502
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1504
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1505

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1506
  br label %kmalloc_index.exit.i, !dbg !1506

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1507
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1509
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1510

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1511
  br label %kmalloc_index.exit.i, !dbg !1511

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1512
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1514
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1515

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1516
  br label %kmalloc_index.exit.i, !dbg !1516

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1517
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1519
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1520

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1521
  br label %kmalloc_index.exit.i, !dbg !1521

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1522
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1524
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1525

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1526
  br label %kmalloc_index.exit.i, !dbg !1526

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1527
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1529
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1530

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1531
  br label %kmalloc_index.exit.i, !dbg !1531

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1532
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1534
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1535

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1536
  br label %kmalloc_index.exit.i, !dbg !1536

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1537
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1539
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1540

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1541
  br label %kmalloc_index.exit.i, !dbg !1541

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1542
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1544
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1545

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1546
  br label %kmalloc_index.exit.i, !dbg !1546

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1547
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1549
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1550

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1551
  br label %kmalloc_index.exit.i, !dbg !1551

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1552
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1554
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1555

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1556
  br label %kmalloc_index.exit.i, !dbg !1556

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1557
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1559
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1560

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1561
  br label %kmalloc_index.exit.i, !dbg !1561

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1562
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1564
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1565

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1566
  br label %kmalloc_index.exit.i, !dbg !1566

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1567
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1569
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1570

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1571
  br label %kmalloc_index.exit.i, !dbg !1571

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1572
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1574
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1575

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1576
  br label %kmalloc_index.exit.i, !dbg !1576

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1577
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1579
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1580

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1581
  br label %kmalloc_index.exit.i, !dbg !1581

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1582
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1584
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1585

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1586
  br label %kmalloc_index.exit.i, !dbg !1586

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1587
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1589
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1590

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1591
  br label %kmalloc_index.exit.i, !dbg !1591

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1592
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1594
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1595

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1596
  br label %kmalloc_index.exit.i, !dbg !1596

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1597
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1599
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1600

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1601
  br label %kmalloc_index.exit.i, !dbg !1601

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1602
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1604
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1605

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1606
  br label %kmalloc_index.exit.i, !dbg !1606

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1607
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1609
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1610

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1611
  br label %kmalloc_index.exit.i, !dbg !1611

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1612
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1614
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1615

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1616
  br label %kmalloc_index.exit.i, !dbg !1616

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1617, !srcloc !1620
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1621, !srcloc !1624
  unreachable, !dbg !1625

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1626
  store i32 %45, i32* %index.i, align 4, !dbg !1627
  %46 = load i32, i32* %index.i, align 4, !dbg !1628
  %tobool.i = icmp ne i32 %46, 0, !dbg !1628
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1630

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1631
  br label %kmalloc.exit, !dbg !1631

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1632
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1633
  %and.i.i = and i32 %48, 17, !dbg !1633
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1633
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1633
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1633
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1633
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1635

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1636
  br label %kmalloc_type.exit.i, !dbg !1636

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1637
  %and2.i.i = and i32 %49, 1, !dbg !1638
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1637
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1637
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1637
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1639
  br label %kmalloc_type.exit.i, !dbg !1639

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1640
  %idxprom.i = zext i32 %51 to i64, !dbg !1641
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1641
  %52 = load i32, i32* %index.i, align 4, !dbg !1642
  %idxprom6.i = zext i32 %52 to i64, !dbg !1641
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1641
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1641
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1643
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1644
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1645
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1646
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1647
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1647
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1647
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1647
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1647
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1408
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1648
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1649
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1650
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1651
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1652
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1653
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1654
  store i8* %62, i8** %retval.i, align 8, !dbg !1655
  br label %kmalloc.exit, !dbg !1655

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1656
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1657
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1658
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1658
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1658
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1658
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1658
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1659
  br label %kmalloc.exit, !dbg !1659

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1660
  ret i8* %65, !dbg !1661
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1662 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1666, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1669, metadata !DIExpression()), !dbg !1668
  %0 = load i64, i64* %__edi, align 8, !dbg !1668
  store i64 %0, i64* %__edi, align 8, !dbg !1668
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1670, metadata !DIExpression()), !dbg !1668
  %1 = load i64, i64* %__esi, align 8, !dbg !1668
  store i64 %1, i64* %__esi, align 8, !dbg !1668
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1671, metadata !DIExpression()), !dbg !1668
  %2 = load i64, i64* %__edx, align 8, !dbg !1668
  store i64 %2, i64* %__edx, align 8, !dbg !1668
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1672, metadata !DIExpression()), !dbg !1668
  %3 = load i64, i64* %__ecx, align 8, !dbg !1668
  store i64 %3, i64* %__ecx, align 8, !dbg !1668
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1673, metadata !DIExpression()), !dbg !1668
  %4 = load i64, i64* %__eax, align 8, !dbg !1668
  store i64 %4, i64* %__eax, align 8, !dbg !1668
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1668
  %6 = call i64 @llvm.read_register.i64(metadata !807), !dbg !1674
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1674, !srcloc !1677
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1674
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1674
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1674
  call void @llvm.write_register.i64(metadata !807, i64 %asmresult1), !dbg !1674
  %8 = load i64, i64* %__eax, align 8, !dbg !1674
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1678, metadata !DIExpression()), !dbg !1680
  store i64 -1, i64* %__mask, align 8, !dbg !1680
  %9 = load i64, i64* %__mask, align 8, !dbg !1680
  store i64 %9, i64* %tmp, align 8, !dbg !1680
  %10 = load i64, i64* %tmp, align 8, !dbg !1680
  %and = and i64 %8, %10, !dbg !1674
  store i64 %and, i64* %__ret, align 8, !dbg !1674
  %11 = load i64, i64* %__ret, align 8, !dbg !1668
  store i64 %11, i64* %tmp2, align 8, !dbg !1681
  %12 = load i64, i64* %tmp2, align 8, !dbg !1668
  ret i64 %12, !dbg !1682
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1683 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1685, metadata !DIExpression()), !dbg !1690
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1692, metadata !DIExpression()), !dbg !1693
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1694, metadata !DIExpression()), !dbg !1695
  %0 = load i64, i64* %size.addr, align 8, !dbg !1696
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1698
  br i1 %1, label %if.then, label %if.end447, !dbg !1699

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1700
  %tobool = icmp ne i64 %2, 0, !dbg !1700
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1703

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1704
  br label %return, !dbg !1704

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1705
  %cmp = icmp ult i64 %3, 4096, !dbg !1707
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1708

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1709
  br label %return, !dbg !1709

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub = sub i64 %4, 1, !dbg !1710
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1710
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1710

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub4 = sub i64 %6, 1, !dbg !1710
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1710
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1710

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub6 = sub i64 %8, 1, !dbg !1710
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1710
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1710

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1710

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub9 = sub i64 %9, 1, !dbg !1710
  %and = and i64 %sub9, -9223372036854775808, !dbg !1710
  %tobool10 = icmp ne i64 %and, 0, !dbg !1710
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1710

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1710

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub13 = sub i64 %10, 1, !dbg !1710
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1710
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1710
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1710

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1710

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub18 = sub i64 %11, 1, !dbg !1710
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1710
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1710
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1710

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1710

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub23 = sub i64 %12, 1, !dbg !1710
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1710
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1710
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1710

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1710

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub28 = sub i64 %13, 1, !dbg !1710
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1710
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1710
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1710

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1710

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub33 = sub i64 %14, 1, !dbg !1710
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1710
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1710
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1710

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1710

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub38 = sub i64 %15, 1, !dbg !1710
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1710
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1710
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1710

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1710

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub43 = sub i64 %16, 1, !dbg !1710
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1710
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1710
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1710

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1710

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub48 = sub i64 %17, 1, !dbg !1710
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1710
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1710
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1710

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1710

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub53 = sub i64 %18, 1, !dbg !1710
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1710
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1710
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1710

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1710

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub58 = sub i64 %19, 1, !dbg !1710
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1710
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1710
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1710

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1710

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub63 = sub i64 %20, 1, !dbg !1710
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1710
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1710
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1710

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1710

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub68 = sub i64 %21, 1, !dbg !1710
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1710
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1710
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1710

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1710

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub73 = sub i64 %22, 1, !dbg !1710
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1710
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1710
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1710

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1710

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub78 = sub i64 %23, 1, !dbg !1710
  %and79 = and i64 %sub78, 562949953421312, !dbg !1710
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1710
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1710

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1710

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub83 = sub i64 %24, 1, !dbg !1710
  %and84 = and i64 %sub83, 281474976710656, !dbg !1710
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1710
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1710

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1710

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub88 = sub i64 %25, 1, !dbg !1710
  %and89 = and i64 %sub88, 140737488355328, !dbg !1710
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1710
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1710

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1710

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub93 = sub i64 %26, 1, !dbg !1710
  %and94 = and i64 %sub93, 70368744177664, !dbg !1710
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1710
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1710

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1710

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub98 = sub i64 %27, 1, !dbg !1710
  %and99 = and i64 %sub98, 35184372088832, !dbg !1710
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1710
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1710

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1710

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub103 = sub i64 %28, 1, !dbg !1710
  %and104 = and i64 %sub103, 17592186044416, !dbg !1710
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1710
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1710

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1710

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub108 = sub i64 %29, 1, !dbg !1710
  %and109 = and i64 %sub108, 8796093022208, !dbg !1710
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1710
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1710

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1710

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub113 = sub i64 %30, 1, !dbg !1710
  %and114 = and i64 %sub113, 4398046511104, !dbg !1710
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1710
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1710

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1710

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub118 = sub i64 %31, 1, !dbg !1710
  %and119 = and i64 %sub118, 2199023255552, !dbg !1710
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1710
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1710

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1710

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub123 = sub i64 %32, 1, !dbg !1710
  %and124 = and i64 %sub123, 1099511627776, !dbg !1710
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1710
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1710

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1710

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub128 = sub i64 %33, 1, !dbg !1710
  %and129 = and i64 %sub128, 549755813888, !dbg !1710
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1710
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1710

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1710

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub133 = sub i64 %34, 1, !dbg !1710
  %and134 = and i64 %sub133, 274877906944, !dbg !1710
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1710
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1710

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1710

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub138 = sub i64 %35, 1, !dbg !1710
  %and139 = and i64 %sub138, 137438953472, !dbg !1710
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1710
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1710

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1710

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub143 = sub i64 %36, 1, !dbg !1710
  %and144 = and i64 %sub143, 68719476736, !dbg !1710
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1710
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1710

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1710

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub148 = sub i64 %37, 1, !dbg !1710
  %and149 = and i64 %sub148, 34359738368, !dbg !1710
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1710
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1710

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1710

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub153 = sub i64 %38, 1, !dbg !1710
  %and154 = and i64 %sub153, 17179869184, !dbg !1710
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1710
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1710

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1710

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub158 = sub i64 %39, 1, !dbg !1710
  %and159 = and i64 %sub158, 8589934592, !dbg !1710
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1710
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1710

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1710

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub163 = sub i64 %40, 1, !dbg !1710
  %and164 = and i64 %sub163, 4294967296, !dbg !1710
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1710
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1710

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1710

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub168 = sub i64 %41, 1, !dbg !1710
  %and169 = and i64 %sub168, 2147483648, !dbg !1710
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1710
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1710

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1710

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub173 = sub i64 %42, 1, !dbg !1710
  %and174 = and i64 %sub173, 1073741824, !dbg !1710
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1710
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1710

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1710

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub178 = sub i64 %43, 1, !dbg !1710
  %and179 = and i64 %sub178, 536870912, !dbg !1710
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1710
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1710

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1710

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub183 = sub i64 %44, 1, !dbg !1710
  %and184 = and i64 %sub183, 268435456, !dbg !1710
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1710
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1710

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1710

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub188 = sub i64 %45, 1, !dbg !1710
  %and189 = and i64 %sub188, 134217728, !dbg !1710
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1710
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1710

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1710

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub193 = sub i64 %46, 1, !dbg !1710
  %and194 = and i64 %sub193, 67108864, !dbg !1710
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1710
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1710

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1710

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub198 = sub i64 %47, 1, !dbg !1710
  %and199 = and i64 %sub198, 33554432, !dbg !1710
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1710
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1710

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1710

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub203 = sub i64 %48, 1, !dbg !1710
  %and204 = and i64 %sub203, 16777216, !dbg !1710
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1710
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1710

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1710

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub208 = sub i64 %49, 1, !dbg !1710
  %and209 = and i64 %sub208, 8388608, !dbg !1710
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1710
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1710

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1710

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub213 = sub i64 %50, 1, !dbg !1710
  %and214 = and i64 %sub213, 4194304, !dbg !1710
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1710
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1710

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1710

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub218 = sub i64 %51, 1, !dbg !1710
  %and219 = and i64 %sub218, 2097152, !dbg !1710
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1710
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1710

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1710

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub223 = sub i64 %52, 1, !dbg !1710
  %and224 = and i64 %sub223, 1048576, !dbg !1710
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1710
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1710

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1710

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub228 = sub i64 %53, 1, !dbg !1710
  %and229 = and i64 %sub228, 524288, !dbg !1710
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1710
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1710

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1710

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub233 = sub i64 %54, 1, !dbg !1710
  %and234 = and i64 %sub233, 262144, !dbg !1710
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1710
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1710

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1710

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub238 = sub i64 %55, 1, !dbg !1710
  %and239 = and i64 %sub238, 131072, !dbg !1710
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1710
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1710

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1710

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub243 = sub i64 %56, 1, !dbg !1710
  %and244 = and i64 %sub243, 65536, !dbg !1710
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1710
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1710

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1710

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub248 = sub i64 %57, 1, !dbg !1710
  %and249 = and i64 %sub248, 32768, !dbg !1710
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1710
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1710

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1710

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub253 = sub i64 %58, 1, !dbg !1710
  %and254 = and i64 %sub253, 16384, !dbg !1710
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1710
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1710

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1710

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub258 = sub i64 %59, 1, !dbg !1710
  %and259 = and i64 %sub258, 8192, !dbg !1710
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1710
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1710

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1710

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub263 = sub i64 %60, 1, !dbg !1710
  %and264 = and i64 %sub263, 4096, !dbg !1710
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1710
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1710

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1710

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub268 = sub i64 %61, 1, !dbg !1710
  %and269 = and i64 %sub268, 2048, !dbg !1710
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1710
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1710

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1710

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub273 = sub i64 %62, 1, !dbg !1710
  %and274 = and i64 %sub273, 1024, !dbg !1710
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1710
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1710

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1710

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub278 = sub i64 %63, 1, !dbg !1710
  %and279 = and i64 %sub278, 512, !dbg !1710
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1710
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1710

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1710

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub283 = sub i64 %64, 1, !dbg !1710
  %and284 = and i64 %sub283, 256, !dbg !1710
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1710
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1710

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1710

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub288 = sub i64 %65, 1, !dbg !1710
  %and289 = and i64 %sub288, 128, !dbg !1710
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1710
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1710

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1710

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub293 = sub i64 %66, 1, !dbg !1710
  %and294 = and i64 %sub293, 64, !dbg !1710
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1710
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1710

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1710

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub298 = sub i64 %67, 1, !dbg !1710
  %and299 = and i64 %sub298, 32, !dbg !1710
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1710
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1710

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1710

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub303 = sub i64 %68, 1, !dbg !1710
  %and304 = and i64 %sub303, 16, !dbg !1710
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1710
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1710

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1710

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub308 = sub i64 %69, 1, !dbg !1710
  %and309 = and i64 %sub308, 8, !dbg !1710
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1710
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1710

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1710

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub313 = sub i64 %70, 1, !dbg !1710
  %and314 = and i64 %sub313, 4, !dbg !1710
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1710
  %71 = zext i1 %tobool315 to i64, !dbg !1710
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1710
  br label %cond.end, !dbg !1710

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1710
  br label %cond.end317, !dbg !1710

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1710
  br label %cond.end319, !dbg !1710

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1710
  br label %cond.end321, !dbg !1710

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1710
  br label %cond.end323, !dbg !1710

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1710
  br label %cond.end325, !dbg !1710

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1710
  br label %cond.end327, !dbg !1710

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1710
  br label %cond.end329, !dbg !1710

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1710
  br label %cond.end331, !dbg !1710

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1710
  br label %cond.end333, !dbg !1710

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1710
  br label %cond.end335, !dbg !1710

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1710
  br label %cond.end337, !dbg !1710

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1710
  br label %cond.end339, !dbg !1710

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1710
  br label %cond.end341, !dbg !1710

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1710
  br label %cond.end343, !dbg !1710

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1710
  br label %cond.end345, !dbg !1710

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1710
  br label %cond.end347, !dbg !1710

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1710
  br label %cond.end349, !dbg !1710

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1710
  br label %cond.end351, !dbg !1710

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1710
  br label %cond.end353, !dbg !1710

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1710
  br label %cond.end355, !dbg !1710

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1710
  br label %cond.end357, !dbg !1710

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1710
  br label %cond.end359, !dbg !1710

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1710
  br label %cond.end361, !dbg !1710

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1710
  br label %cond.end363, !dbg !1710

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1710
  br label %cond.end365, !dbg !1710

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1710
  br label %cond.end367, !dbg !1710

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1710
  br label %cond.end369, !dbg !1710

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1710
  br label %cond.end371, !dbg !1710

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1710
  br label %cond.end373, !dbg !1710

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1710
  br label %cond.end375, !dbg !1710

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1710
  br label %cond.end377, !dbg !1710

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1710
  br label %cond.end379, !dbg !1710

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1710
  br label %cond.end381, !dbg !1710

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1710
  br label %cond.end383, !dbg !1710

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1710
  br label %cond.end385, !dbg !1710

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1710
  br label %cond.end387, !dbg !1710

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1710
  br label %cond.end389, !dbg !1710

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1710
  br label %cond.end391, !dbg !1710

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1710
  br label %cond.end393, !dbg !1710

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1710
  br label %cond.end395, !dbg !1710

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1710
  br label %cond.end397, !dbg !1710

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1710
  br label %cond.end399, !dbg !1710

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1710
  br label %cond.end401, !dbg !1710

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1710
  br label %cond.end403, !dbg !1710

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1710
  br label %cond.end405, !dbg !1710

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1710
  br label %cond.end407, !dbg !1710

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1710
  br label %cond.end409, !dbg !1710

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1710
  br label %cond.end411, !dbg !1710

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1710
  br label %cond.end413, !dbg !1710

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1710
  br label %cond.end415, !dbg !1710

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1710
  br label %cond.end417, !dbg !1710

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1710
  br label %cond.end419, !dbg !1710

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1710
  br label %cond.end421, !dbg !1710

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1710
  br label %cond.end423, !dbg !1710

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1710
  br label %cond.end425, !dbg !1710

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1710
  br label %cond.end427, !dbg !1710

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1710
  br label %cond.end429, !dbg !1710

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1710
  br label %cond.end431, !dbg !1710

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1710
  br label %cond.end433, !dbg !1710

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1710
  br label %cond.end435, !dbg !1710

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1710
  br label %cond.end437, !dbg !1710

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1710
  br label %cond.end440, !dbg !1710

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1710

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1710
  br label %cond.end444, !dbg !1710

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1710
  %sub443 = sub i64 %72, 1, !dbg !1710
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1710
  br label %cond.end444, !dbg !1710

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1710
  %sub446 = sub i32 %cond445, 12, !dbg !1711
  %add = add i32 %sub446, 1, !dbg !1712
  store i32 %add, i32* %retval, align 4, !dbg !1713
  br label %return, !dbg !1713

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1714
  %dec = add i64 %73, -1, !dbg !1714
  store i64 %dec, i64* %size.addr, align 8, !dbg !1714
  %74 = load i64, i64* %size.addr, align 8, !dbg !1715
  %shr = lshr i64 %74, 12, !dbg !1715
  store i64 %shr, i64* %size.addr, align 8, !dbg !1715
  %75 = load i64, i64* %size.addr, align 8, !dbg !1716
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1693
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1717
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1718
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !1717, !srcloc !1719
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1717
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1720
  %add.i = add i32 %79, 1, !dbg !1721
  store i32 %add.i, i32* %retval, align 4, !dbg !1722
  br label %return, !dbg !1722

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1723
  ret i32 %80, !dbg !1723
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1724 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1685, metadata !DIExpression()), !dbg !1728
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1692, metadata !DIExpression()), !dbg !1730
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1731, metadata !DIExpression()), !dbg !1732
  %0 = load i64, i64* %n.addr, align 8, !dbg !1733
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1730
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1734
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1735
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !1734, !srcloc !1719
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1734
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1736
  %add.i = add i32 %4, 1, !dbg !1737
  %sub = sub i32 %add.i, 1, !dbg !1738
  ret i32 %sub, !dbg !1739
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1740 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1746, metadata !DIExpression()), !dbg !1747
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1748, metadata !DIExpression()), !dbg !1749
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1750, metadata !DIExpression()), !dbg !1751
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1752, metadata !DIExpression()), !dbg !1753
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1754
  ret i8* %0, !dbg !1755
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
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !805, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !804, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsnames.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !22, !156, !799, !69, !72, !40, !800, !801, !803}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !16, line: 432, size: 1600, elements: !17)
!16 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!17 = !{!18, !29, !797, !798}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !15, file: !16, line: 433, baseType: !19, size: 128)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !16, line: 427, size: 128, elements: !20)
!20 = !{!21, !23}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !19, file: !16, line: 428, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !19, file: !16, line: 429, baseType: !24, size: 8, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !28)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !15, file: !16, line: 434, baseType: !30, size: 576)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !16, line: 367, size: 576, elements: !31)
!31 = !{!32, !44, !60, !74, !111, !125, !134, !448, !465, !480, !493, !571, !583, !597, !607, !625, !647, !666, !685, !704, !717, !743, !760, !773, !787, !796}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !30, file: !16, line: 368, baseType: !33, size: 128)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !16, line: 73, size: 128, elements: !34)
!34 = !{!35, !37, !38, !39, !43}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !33, file: !16, line: 74, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !33, file: !16, line: 74, baseType: !24, size: 8, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !16, line: 74, baseType: !24, size: 8, offset: 72)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !33, file: !16, line: 74, baseType: !40, size: 16, offset: 80)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !42)
!42 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !16, line: 74, baseType: !24, size: 8, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !30, file: !16, line: 369, baseType: !45, size: 192)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !16, line: 76, size: 192, elements: !46)
!46 = !{!47, !48, !49, !50, !51, !52, !56}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !45, file: !16, line: 77, baseType: !36, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !45, file: !16, line: 77, baseType: !24, size: 8, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !45, file: !16, line: 77, baseType: !24, size: 8, offset: 72)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !45, file: !16, line: 77, baseType: !40, size: 16, offset: 80)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !45, file: !16, line: 77, baseType: !24, size: 8, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !45, file: !16, line: 77, baseType: !53, size: 24, offset: 104)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 24, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 3)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !45, file: !16, line: 78, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !59)
!59 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !30, file: !16, line: 370, baseType: !61, size: 256)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !16, line: 93, size: 256, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !71}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !61, file: !16, line: 94, baseType: !36, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !61, file: !16, line: 94, baseType: !24, size: 8, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !16, line: 94, baseType: !24, size: 8, offset: 72)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !61, file: !16, line: 94, baseType: !40, size: 16, offset: 80)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !61, file: !16, line: 94, baseType: !24, size: 8, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !61, file: !16, line: 94, baseType: !69, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !61, file: !16, line: 94, baseType: !72, size: 32, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !30, file: !16, line: 371, baseType: !75, size: 384)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !16, line: 97, size: 384, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !84, !85, !86, !87}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !75, file: !16, line: 98, baseType: !36, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !16, line: 98, baseType: !24, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !16, line: 98, baseType: !24, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !75, file: !16, line: 98, baseType: !40, size: 16, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !16, line: 98, baseType: !24, size: 8, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !75, file: !16, line: 98, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !75, file: !16, line: 98, baseType: !72, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !75, file: !16, line: 99, baseType: !72, size: 32, offset: 224)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !75, file: !16, line: 100, baseType: !83, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !75, file: !16, line: 101, baseType: !88, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !90, line: 133, size: 384, elements: !91)
!90 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!91 = !{!92, !93, !94, !95, !96, !105, !106, !107, !108}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !89, file: !90, line: 134, baseType: !36, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !89, file: !90, line: 135, baseType: !24, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !90, line: 136, baseType: !24, size: 8, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !90, line: 137, baseType: !40, size: 16, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !89, file: !90, line: 138, baseType: !97, size: 32, offset: 96)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !98, line: 327, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !101}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !97, file: !98, line: 328, baseType: !72, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !97, file: !98, line: 329, baseType: !102, size: 32)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 32, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 4)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !89, file: !90, line: 139, baseType: !88, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !89, file: !90, line: 140, baseType: !88, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !89, file: !90, line: 141, baseType: !88, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !89, file: !90, line: 142, baseType: !109, size: 16, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !110, line: 445, baseType: !40)
!110 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!111 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !30, file: !16, line: 372, baseType: !112, size: 384)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !16, line: 104, size: 384, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !122, !123, !124}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !112, file: !16, line: 105, baseType: !36, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !112, file: !16, line: 105, baseType: !24, size: 8, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !16, line: 105, baseType: !24, size: 8, offset: 72)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !112, file: !16, line: 105, baseType: !40, size: 16, offset: 80)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !16, line: 105, baseType: !24, size: 8, offset: 96)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !112, file: !16, line: 105, baseType: !88, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !112, file: !16, line: 106, baseType: !121, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !112, file: !16, line: 107, baseType: !83, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !112, file: !16, line: 108, baseType: !72, size: 32, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !112, file: !16, line: 109, baseType: !72, size: 32, offset: 352)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !30, file: !16, line: 373, baseType: !126, size: 192)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !16, line: 118, size: 192, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !126, file: !16, line: 119, baseType: !36, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !16, line: 119, baseType: !24, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !16, line: 119, baseType: !24, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !126, file: !16, line: 119, baseType: !40, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !16, line: 119, baseType: !24, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !126, file: !16, line: 119, baseType: !22, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !30, file: !16, line: 374, baseType: !135, size: 448)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !16, line: 143, size: 448, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !445, !446, !447}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !135, file: !16, line: 144, baseType: !36, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !135, file: !16, line: 144, baseType: !24, size: 8, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !16, line: 144, baseType: !24, size: 8, offset: 72)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !135, file: !16, line: 144, baseType: !40, size: 16, offset: 80)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !135, file: !16, line: 144, baseType: !24, size: 8, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !135, file: !16, line: 144, baseType: !24, size: 8, offset: 104)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !135, file: !16, line: 145, baseType: !24, size: 8, offset: 112)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !135, file: !16, line: 146, baseType: !24, size: 8, offset: 120)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !135, file: !16, line: 147, baseType: !36, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !135, file: !16, line: 148, baseType: !36, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !135, file: !16, line: 149, baseType: !83, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !135, file: !16, line: 153, baseType: !149, size: 64, offset: 320)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !135, file: !16, line: 150, size: 64, elements: !150)
!150 = !{!151, !444}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !149, file: !16, line: 151, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !90, line: 248, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !110, line: 421, baseType: !72)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !159, line: 37, size: 9024, elements: !160)
!159 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !390, !391, !392, !393, !394, !398, !400, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !427, !428, !429, !430, !431, !432, !433, !434, !436, !442}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !159, line: 38, baseType: !157, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !158, file: !159, line: 39, baseType: !24, size: 8, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !158, file: !159, line: 40, baseType: !24, size: 8, offset: 72)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !158, file: !159, line: 41, baseType: !40, size: 16, offset: 80)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !158, file: !159, line: 42, baseType: !24, size: 8, offset: 96)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !158, file: !159, line: 43, baseType: !24, size: 8, offset: 104)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !158, file: !159, line: 44, baseType: !24, size: 8, offset: 112)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !158, file: !159, line: 45, baseType: !109, size: 16, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !158, file: !159, line: 46, baseType: !24, size: 8, offset: 144)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !158, file: !159, line: 47, baseType: !24, size: 8, offset: 152)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !158, file: !159, line: 48, baseType: !24, size: 8, offset: 160)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !158, file: !159, line: 49, baseType: !24, size: 8, offset: 168)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !158, file: !159, line: 50, baseType: !24, size: 8, offset: 176)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !158, file: !159, line: 51, baseType: !24, size: 8, offset: 184)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !158, file: !159, line: 52, baseType: !24, size: 8, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !158, file: !159, line: 53, baseType: !24, size: 8, offset: 200)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !158, file: !159, line: 54, baseType: !83, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !158, file: !159, line: 55, baseType: !72, size: 32, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !158, file: !159, line: 56, baseType: !72, size: 32, offset: 352)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !158, file: !159, line: 57, baseType: !72, size: 32, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !158, file: !159, line: 58, baseType: !72, size: 32, offset: 416)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !158, file: !159, line: 60, baseType: !183, size: 640, offset: 448)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !90, line: 893, size: 640, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !271, !272, !388, !389}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !183, file: !90, line: 894, baseType: !83, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !183, file: !90, line: 895, baseType: !83, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !183, file: !90, line: 896, baseType: !83, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !183, file: !90, line: 897, baseType: !83, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !183, file: !90, line: 898, baseType: !83, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !183, file: !90, line: 899, baseType: !191, size: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !90, line: 875, size: 1600, elements: !193)
!193 = !{!194, !214, !230}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !192, file: !90, line: 876, baseType: !195, size: 448)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !90, line: 828, size: 448, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202, !203, !204, !213}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !195, file: !90, line: 829, baseType: !191, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !195, file: !90, line: 829, baseType: !24, size: 8, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !195, file: !90, line: 829, baseType: !24, size: 8, offset: 72)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !195, file: !90, line: 829, baseType: !40, size: 16, offset: 80)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !195, file: !90, line: 829, baseType: !83, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !90, line: 829, baseType: !191, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !195, file: !90, line: 829, baseType: !88, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !195, file: !90, line: 829, baseType: !205, size: 64, offset: 320)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !90, line: 716, size: 64, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !205, file: !90, line: 717, baseType: !57, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !205, file: !90, line: 718, baseType: !72, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !205, file: !90, line: 719, baseType: !69, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !205, file: !90, line: 720, baseType: !83, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !90, line: 721, baseType: !69, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !205, file: !90, line: 722, baseType: !191, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !195, file: !90, line: 829, baseType: !24, size: 8, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !192, file: !90, line: 877, baseType: !215, size: 640)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !90, line: 835, size: 640, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !215, file: !90, line: 836, baseType: !191, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !215, file: !90, line: 836, baseType: !24, size: 8, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !90, line: 836, baseType: !24, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !215, file: !90, line: 836, baseType: !40, size: 16, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !215, file: !90, line: 836, baseType: !83, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !90, line: 836, baseType: !191, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !215, file: !90, line: 836, baseType: !88, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !215, file: !90, line: 836, baseType: !205, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !215, file: !90, line: 836, baseType: !24, size: 8, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !215, file: !90, line: 836, baseType: !69, size: 64, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !215, file: !90, line: 837, baseType: !83, size: 64, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !215, file: !90, line: 838, baseType: !72, size: 32, offset: 576)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !90, line: 839, baseType: !72, size: 32, offset: 608)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !192, file: !90, line: 878, baseType: !231, size: 1600)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !90, line: 846, size: 1600, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !231, file: !90, line: 847, baseType: !191, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !231, file: !90, line: 847, baseType: !24, size: 8, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !231, file: !90, line: 847, baseType: !24, size: 8, offset: 72)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !231, file: !90, line: 847, baseType: !40, size: 16, offset: 80)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !231, file: !90, line: 847, baseType: !83, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !90, line: 847, baseType: !191, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !231, file: !90, line: 847, baseType: !88, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !231, file: !90, line: 847, baseType: !205, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !231, file: !90, line: 847, baseType: !24, size: 8, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !231, file: !90, line: 847, baseType: !191, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !231, file: !90, line: 848, baseType: !191, size: 64, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !231, file: !90, line: 849, baseType: !69, size: 64, offset: 576)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !231, file: !90, line: 850, baseType: !24, size: 8, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !231, file: !90, line: 851, baseType: !69, size: 64, offset: 704)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !231, file: !90, line: 852, baseType: !69, size: 64, offset: 768)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !231, file: !90, line: 853, baseType: !69, size: 64, offset: 832)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !231, file: !90, line: 854, baseType: !102, size: 32, offset: 896)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !231, file: !90, line: 855, baseType: !72, size: 32, offset: 928)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !231, file: !90, line: 856, baseType: !72, size: 32, offset: 960)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !231, file: !90, line: 857, baseType: !72, size: 32, offset: 992)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !231, file: !90, line: 858, baseType: !72, size: 32, offset: 1024)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !231, file: !90, line: 859, baseType: !72, size: 32, offset: 1056)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !231, file: !90, line: 860, baseType: !72, size: 32, offset: 1088)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !231, file: !90, line: 861, baseType: !72, size: 32, offset: 1120)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !231, file: !90, line: 862, baseType: !72, size: 32, offset: 1152)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !231, file: !90, line: 863, baseType: !72, size: 32, offset: 1184)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !231, file: !90, line: 864, baseType: !72, size: 32, offset: 1216)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !231, file: !90, line: 865, baseType: !72, size: 32, offset: 1248)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !231, file: !90, line: 866, baseType: !72, size: 32, offset: 1280)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !231, file: !90, line: 867, baseType: !72, size: 32, offset: 1312)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !231, file: !90, line: 868, baseType: !40, size: 16, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !231, file: !90, line: 869, baseType: !24, size: 8, offset: 1360)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !231, file: !90, line: 870, baseType: !24, size: 8, offset: 1368)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !231, file: !90, line: 871, baseType: !24, size: 8, offset: 1376)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !231, file: !90, line: 872, baseType: !268, size: 160, offset: 1384)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 160, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 20)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !183, file: !90, line: 900, baseType: !88, size: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !183, file: !90, line: 901, baseType: !273, size: 64, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !90, line: 663, size: 640, elements: !275)
!275 = !{!276, !284, !297, !306, !315, !328, !342, !354, !366}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !274, file: !90, line: 664, baseType: !277, size: 128)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !90, line: 567, size: 128, elements: !278)
!278 = !{!279, !280, !281, !282, !283}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !90, line: 568, baseType: !22, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !277, file: !90, line: 568, baseType: !24, size: 8, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !90, line: 568, baseType: !24, size: 8, offset: 72)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !277, file: !90, line: 568, baseType: !40, size: 16, offset: 80)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !277, file: !90, line: 568, baseType: !40, size: 16, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !274, file: !90, line: 665, baseType: !285, size: 384)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !90, line: 593, size: 384, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295, !296}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !285, file: !90, line: 594, baseType: !22, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !285, file: !90, line: 594, baseType: !24, size: 8, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !285, file: !90, line: 594, baseType: !24, size: 8, offset: 72)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !285, file: !90, line: 594, baseType: !40, size: 16, offset: 80)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !285, file: !90, line: 594, baseType: !40, size: 16, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !285, file: !90, line: 594, baseType: !40, size: 16, offset: 112)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !285, file: !90, line: 595, baseType: !191, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !285, file: !90, line: 596, baseType: !83, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !285, file: !90, line: 597, baseType: !83, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !285, file: !90, line: 598, baseType: !57, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !274, file: !90, line: 666, baseType: !298, size: 192)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !90, line: 573, size: 192, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !90, line: 574, baseType: !22, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !298, file: !90, line: 574, baseType: !24, size: 8, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !90, line: 574, baseType: !24, size: 8, offset: 72)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !298, file: !90, line: 574, baseType: !40, size: 16, offset: 80)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !298, file: !90, line: 574, baseType: !40, size: 16, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !298, file: !90, line: 574, baseType: !36, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !274, file: !90, line: 667, baseType: !307, size: 192)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !90, line: 604, size: 192, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !90, line: 605, baseType: !22, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !307, file: !90, line: 605, baseType: !24, size: 8, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !90, line: 605, baseType: !24, size: 8, offset: 72)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !307, file: !90, line: 605, baseType: !40, size: 16, offset: 80)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !307, file: !90, line: 605, baseType: !40, size: 16, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !307, file: !90, line: 605, baseType: !88, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !274, file: !90, line: 668, baseType: !316, size: 448)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !90, line: 608, size: 448, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !90, line: 609, baseType: !22, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !316, file: !90, line: 609, baseType: !24, size: 8, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !90, line: 609, baseType: !24, size: 8, offset: 72)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !316, file: !90, line: 609, baseType: !40, size: 16, offset: 80)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !316, file: !90, line: 609, baseType: !40, size: 16, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !316, file: !90, line: 609, baseType: !72, size: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !316, file: !90, line: 610, baseType: !191, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !316, file: !90, line: 611, baseType: !83, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !316, file: !90, line: 612, baseType: !83, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !316, file: !90, line: 613, baseType: !72, size: 32, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !274, file: !90, line: 669, baseType: !329, size: 512)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !90, line: 580, size: 512, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !90, line: 581, baseType: !22, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !329, file: !90, line: 581, baseType: !24, size: 8, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !329, file: !90, line: 581, baseType: !24, size: 8, offset: 72)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !329, file: !90, line: 581, baseType: !40, size: 16, offset: 80)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !329, file: !90, line: 581, baseType: !40, size: 16, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !329, file: !90, line: 581, baseType: !72, size: 32, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !329, file: !90, line: 582, baseType: !36, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !329, file: !90, line: 583, baseType: !36, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !329, file: !90, line: 584, baseType: !157, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !329, file: !90, line: 585, baseType: !22, size: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !329, file: !90, line: 586, baseType: !72, size: 32, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !274, file: !90, line: 670, baseType: !343, size: 320)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !90, line: 620, size: 320, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !90, line: 621, baseType: !22, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !343, file: !90, line: 621, baseType: !24, size: 8, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !90, line: 621, baseType: !24, size: 8, offset: 72)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !343, file: !90, line: 621, baseType: !40, size: 16, offset: 80)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !343, file: !90, line: 621, baseType: !40, size: 16, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !343, file: !90, line: 621, baseType: !24, size: 8, offset: 112)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !343, file: !90, line: 622, baseType: !157, size: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !343, file: !90, line: 623, baseType: !36, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !343, file: !90, line: 624, baseType: !57, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !274, file: !90, line: 671, baseType: !355, size: 640)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !90, line: 631, size: 640, elements: !356)
!356 = !{!357, !358, !359, !360, !361, !362}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !90, line: 632, baseType: !22, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !355, file: !90, line: 632, baseType: !24, size: 8, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !90, line: 632, baseType: !24, size: 8, offset: 72)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !355, file: !90, line: 632, baseType: !40, size: 16, offset: 80)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !355, file: !90, line: 632, baseType: !40, size: 16, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !355, file: !90, line: 633, baseType: !363, size: 512, offset: 128)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 512, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 8)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !274, file: !90, line: 672, baseType: !367, size: 320)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !90, line: 654, size: 320, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !367, file: !90, line: 655, baseType: !22, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !367, file: !90, line: 655, baseType: !24, size: 8, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !90, line: 655, baseType: !24, size: 8, offset: 72)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !367, file: !90, line: 655, baseType: !40, size: 16, offset: 80)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !367, file: !90, line: 655, baseType: !40, size: 16, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !367, file: !90, line: 655, baseType: !24, size: 8, offset: 112)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !367, file: !90, line: 656, baseType: !88, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !367, file: !90, line: 657, baseType: !36, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !367, file: !90, line: 658, baseType: !378, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !90, line: 645, size: 128, elements: !380)
!380 = !{!381, !387}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !379, file: !90, line: 646, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !110, line: 1052, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !386, !72, !22}
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !110, line: 424, baseType: !22)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !379, file: !90, line: 647, baseType: !22, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !183, file: !90, line: 902, baseType: !191, size: 64, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !183, file: !90, line: 903, baseType: !72, size: 32, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !158, file: !159, line: 61, baseType: !72, size: 32, offset: 1088)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !158, file: !159, line: 62, baseType: !72, size: 32, offset: 1120)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !158, file: !159, line: 63, baseType: !40, size: 16, offset: 1152)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !158, file: !159, line: 64, baseType: !24, size: 8, offset: 1168)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !158, file: !159, line: 66, baseType: !395, size: 2688, offset: 1216)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 2688, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 7)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !158, file: !159, line: 67, baseType: !399, size: 3072, offset: 3904)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 3072, elements: !364)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !158, file: !159, line: 68, baseType: !401, size: 576, offset: 6976)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 576, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 9)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !158, file: !159, line: 69, baseType: !121, size: 64, offset: 7552)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !158, file: !159, line: 71, baseType: !83, size: 64, offset: 7616)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !158, file: !159, line: 72, baseType: !121, size: 64, offset: 7680)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !158, file: !159, line: 73, baseType: !273, size: 64, offset: 7744)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !158, file: !159, line: 74, baseType: !88, size: 64, offset: 7808)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !158, file: !159, line: 75, baseType: !36, size: 64, offset: 7872)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !158, file: !159, line: 76, baseType: !88, size: 64, offset: 7936)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !158, file: !159, line: 77, baseType: !191, size: 64, offset: 8000)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !158, file: !159, line: 78, baseType: !36, size: 64, offset: 8064)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !158, file: !159, line: 79, baseType: !88, size: 64, offset: 8128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !158, file: !159, line: 80, baseType: !69, size: 64, offset: 8192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !158, file: !159, line: 81, baseType: !191, size: 64, offset: 8256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !158, file: !159, line: 82, baseType: !417, size: 64, offset: 8320)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !90, line: 702, size: 128, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !419, file: !90, line: 706, baseType: !72, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !419, file: !90, line: 707, baseType: !72, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !419, file: !90, line: 708, baseType: !40, size: 16, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !419, file: !90, line: 709, baseType: !24, size: 8, offset: 80)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !419, file: !90, line: 710, baseType: !24, size: 8, offset: 88)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !419, file: !90, line: 711, baseType: !24, size: 8, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !158, file: !159, line: 83, baseType: !191, size: 64, offset: 8384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !158, file: !159, line: 84, baseType: !36, size: 64, offset: 8448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !158, file: !159, line: 85, baseType: !273, size: 64, offset: 8512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !158, file: !159, line: 86, baseType: !36, size: 64, offset: 8576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !158, file: !159, line: 87, baseType: !273, size: 64, offset: 8640)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !158, file: !159, line: 88, baseType: !191, size: 64, offset: 8704)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !158, file: !159, line: 89, baseType: !191, size: 64, offset: 8768)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !158, file: !159, line: 90, baseType: !435, size: 64, offset: 8832)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !158, file: !159, line: 91, baseType: !437, size: 64, offset: 8896)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !90, line: 637, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!156, !157, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !158, file: !159, line: 92, baseType: !443, size: 64, offset: 8960)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !90, line: 641, baseType: !153)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !149, file: !16, line: 152, baseType: !36, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !135, file: !16, line: 155, baseType: !72, size: 32, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !135, file: !16, line: 156, baseType: !109, size: 16, offset: 416)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !135, file: !16, line: 157, baseType: !24, size: 8, offset: 432)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !30, file: !16, line: 375, baseType: !449, size: 576)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !16, line: 122, size: 576, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !449, file: !16, line: 123, baseType: !36, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !449, file: !16, line: 123, baseType: !24, size: 8, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !449, file: !16, line: 123, baseType: !24, size: 8, offset: 72)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !449, file: !16, line: 123, baseType: !40, size: 16, offset: 80)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !16, line: 123, baseType: !24, size: 8, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !449, file: !16, line: 123, baseType: !24, size: 8, offset: 104)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !449, file: !16, line: 124, baseType: !40, size: 16, offset: 112)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !449, file: !16, line: 125, baseType: !22, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !449, file: !16, line: 126, baseType: !57, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !449, file: !16, line: 127, baseType: !435, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !449, file: !16, line: 128, baseType: !36, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !449, file: !16, line: 129, baseType: !36, size: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !449, file: !16, line: 130, baseType: !88, size: 64, offset: 448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !449, file: !16, line: 131, baseType: !24, size: 8, offset: 512)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !30, file: !16, line: 376, baseType: !466, size: 448)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !16, line: 134, size: 448, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !479}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !466, file: !16, line: 135, baseType: !36, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !466, file: !16, line: 135, baseType: !24, size: 8, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !16, line: 135, baseType: !24, size: 8, offset: 72)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !466, file: !16, line: 135, baseType: !40, size: 16, offset: 80)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !16, line: 135, baseType: !24, size: 8, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !466, file: !16, line: 135, baseType: !24, size: 8, offset: 104)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !466, file: !16, line: 136, baseType: !88, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !466, file: !16, line: 137, baseType: !36, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !466, file: !16, line: 138, baseType: !36, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !466, file: !16, line: 139, baseType: !478, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !110, line: 129, baseType: !57)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !466, file: !16, line: 140, baseType: !72, size: 32, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !30, file: !16, line: 377, baseType: !481, size: 320)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !16, line: 184, size: 320, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !492}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !481, file: !16, line: 185, baseType: !36, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !481, file: !16, line: 185, baseType: !24, size: 8, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !481, file: !16, line: 185, baseType: !24, size: 8, offset: 72)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !481, file: !16, line: 185, baseType: !40, size: 16, offset: 80)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !481, file: !16, line: 185, baseType: !24, size: 8, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !481, file: !16, line: 185, baseType: !489, size: 128, offset: 128)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 128, elements: !490)
!490 = !{!491}
!491 = !DISubrange(count: 2)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !481, file: !16, line: 185, baseType: !36, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !30, file: !16, line: 378, baseType: !494, size: 384)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !16, line: 187, size: 384, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !502, !503}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !494, file: !16, line: 188, baseType: !36, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !494, file: !16, line: 188, baseType: !24, size: 8, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !494, file: !16, line: 188, baseType: !24, size: 8, offset: 72)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !494, file: !16, line: 188, baseType: !40, size: 16, offset: 80)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !16, line: 188, baseType: !24, size: 8, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !494, file: !16, line: 189, baseType: !489, size: 128, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !494, file: !16, line: 189, baseType: !36, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !494, file: !16, line: 189, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !90, line: 480, size: 576, elements: !506)
!506 = !{!507, !508, !509, !510, !518, !533, !565, !566, !567, !568, !569, !570}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !505, file: !90, line: 481, baseType: !88, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !505, file: !90, line: 482, baseType: !504, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !90, line: 483, baseType: !504, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !505, file: !90, line: 484, baseType: !511, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !90, line: 497, size: 256, elements: !513)
!513 = !{!514, !515, !516, !517}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !512, file: !90, line: 498, baseType: !511, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !512, file: !90, line: 499, baseType: !511, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !512, file: !90, line: 500, baseType: !504, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !512, file: !90, line: 501, baseType: !72, size: 32, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !505, file: !90, line: 485, baseType: !519, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !90, line: 466, size: 320, elements: !521)
!521 = !{!522, !527, !528, !529, !530, !531, !532}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !520, file: !90, line: 467, baseType: !523, size: 128)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !90, line: 459, size: 128, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !523, file: !90, line: 460, baseType: !24, size: 8)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !523, file: !90, line: 461, baseType: !57, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !520, file: !90, line: 468, baseType: !523, size: 128, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !520, file: !90, line: 469, baseType: !40, size: 16, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !520, file: !90, line: 470, baseType: !24, size: 8, offset: 272)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !520, file: !90, line: 471, baseType: !24, size: 8, offset: 280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !520, file: !90, line: 472, baseType: !24, size: 8, offset: 288)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !520, file: !90, line: 473, baseType: !24, size: 8, offset: 296)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !505, file: !90, line: 486, baseType: !534, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !90, line: 448, size: 192, elements: !536)
!536 = !{!537, !560, !561, !562, !563, !564}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !535, file: !90, line: 449, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !90, line: 438, size: 64, elements: !539)
!539 = !{!540, !541, !554}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !538, file: !90, line: 439, baseType: !88, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !538, file: !90, line: 440, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !90, line: 419, size: 256, elements: !544)
!544 = !{!545, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !543, file: !90, line: 420, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !110, line: 1049, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!72, !386, !72, !22}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !543, file: !90, line: 421, baseType: !22, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !543, file: !90, line: 422, baseType: !88, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !543, file: !90, line: 423, baseType: !24, size: 8, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !543, file: !90, line: 424, baseType: !24, size: 8, offset: 200)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !538, file: !90, line: 441, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !90, line: 429, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !556, file: !90, line: 430, baseType: !88, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !556, file: !90, line: 431, baseType: !555, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !535, file: !90, line: 450, baseType: !519, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !90, line: 451, baseType: !24, size: 8, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !535, file: !90, line: 452, baseType: !24, size: 8, offset: 136)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !535, file: !90, line: 453, baseType: !24, size: 8, offset: 144)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !535, file: !90, line: 454, baseType: !24, size: 8, offset: 152)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !505, file: !90, line: 487, baseType: !57, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !505, file: !90, line: 488, baseType: !72, size: 32, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !505, file: !90, line: 489, baseType: !40, size: 16, offset: 480)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !505, file: !90, line: 490, baseType: !40, size: 16, offset: 496)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !505, file: !90, line: 491, baseType: !24, size: 8, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !505, file: !90, line: 492, baseType: !24, size: 8, offset: 520)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !30, file: !16, line: 379, baseType: !572, size: 384)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !16, line: 192, size: 384, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !582}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !572, file: !16, line: 193, baseType: !36, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !572, file: !16, line: 193, baseType: !24, size: 8, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !572, file: !16, line: 193, baseType: !24, size: 8, offset: 72)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !572, file: !16, line: 193, baseType: !40, size: 16, offset: 80)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !16, line: 193, baseType: !24, size: 8, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !572, file: !16, line: 193, baseType: !489, size: 128, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !572, file: !16, line: 193, baseType: !36, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !572, file: !16, line: 193, baseType: !72, size: 32, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !572, file: !16, line: 194, baseType: !72, size: 32, offset: 352)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !30, file: !16, line: 380, baseType: !584, size: 384)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !16, line: 197, size: 384, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !584, file: !16, line: 198, baseType: !36, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !584, file: !16, line: 198, baseType: !24, size: 8, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !584, file: !16, line: 198, baseType: !24, size: 8, offset: 72)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !584, file: !16, line: 198, baseType: !40, size: 16, offset: 80)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !16, line: 198, baseType: !24, size: 8, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !584, file: !16, line: 200, baseType: !24, size: 8, offset: 104)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !584, file: !16, line: 201, baseType: !24, size: 8, offset: 112)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !584, file: !16, line: 202, baseType: !489, size: 128, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !584, file: !16, line: 202, baseType: !36, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !584, file: !16, line: 202, baseType: !596, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !110, line: 128, baseType: !57)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !30, file: !16, line: 381, baseType: !598, size: 320)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !16, line: 205, size: 320, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !598, file: !16, line: 206, baseType: !36, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !598, file: !16, line: 206, baseType: !24, size: 8, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !16, line: 206, baseType: !24, size: 8, offset: 72)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !598, file: !16, line: 206, baseType: !40, size: 16, offset: 80)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !16, line: 206, baseType: !24, size: 8, offset: 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !598, file: !16, line: 206, baseType: !489, size: 128, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !598, file: !16, line: 206, baseType: !36, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !30, file: !16, line: 382, baseType: !608, size: 384)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !16, line: 233, size: 384, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !608, file: !16, line: 234, baseType: !36, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !608, file: !16, line: 234, baseType: !24, size: 8, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !16, line: 234, baseType: !24, size: 8, offset: 72)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !608, file: !16, line: 234, baseType: !40, size: 16, offset: 80)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !16, line: 234, baseType: !24, size: 8, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !608, file: !16, line: 234, baseType: !24, size: 8, offset: 104)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !608, file: !16, line: 234, baseType: !24, size: 8, offset: 112)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !608, file: !16, line: 234, baseType: !24, size: 8, offset: 120)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !608, file: !16, line: 234, baseType: !88, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !608, file: !16, line: 234, baseType: !72, size: 32, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !608, file: !16, line: 234, baseType: !72, size: 32, offset: 224)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !608, file: !16, line: 234, baseType: !72, size: 32, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !608, file: !16, line: 234, baseType: !24, size: 8, offset: 288)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !608, file: !16, line: 234, baseType: !24, size: 8, offset: 296)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !608, file: !16, line: 234, baseType: !36, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !30, file: !16, line: 383, baseType: !626, size: 576)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !16, line: 237, size: 576, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !626, file: !16, line: 238, baseType: !36, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !626, file: !16, line: 238, baseType: !24, size: 8, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !626, file: !16, line: 238, baseType: !24, size: 8, offset: 72)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !626, file: !16, line: 238, baseType: !40, size: 16, offset: 80)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !626, file: !16, line: 238, baseType: !24, size: 8, offset: 96)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !626, file: !16, line: 238, baseType: !24, size: 8, offset: 104)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !626, file: !16, line: 238, baseType: !24, size: 8, offset: 112)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !626, file: !16, line: 238, baseType: !24, size: 8, offset: 120)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !626, file: !16, line: 238, baseType: !88, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !626, file: !16, line: 238, baseType: !72, size: 32, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !626, file: !16, line: 238, baseType: !72, size: 32, offset: 224)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !626, file: !16, line: 238, baseType: !72, size: 32, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !626, file: !16, line: 238, baseType: !24, size: 8, offset: 288)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !626, file: !16, line: 238, baseType: !24, size: 8, offset: 296)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !626, file: !16, line: 238, baseType: !40, size: 16, offset: 304)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !626, file: !16, line: 239, baseType: !36, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !626, file: !16, line: 240, baseType: !83, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !626, file: !16, line: 241, baseType: !40, size: 16, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !626, file: !16, line: 242, baseType: !83, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !30, file: !16, line: 384, baseType: !648, size: 384)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !16, line: 262, size: 384, elements: !649)
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !648, file: !16, line: 263, baseType: !36, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !648, file: !16, line: 263, baseType: !24, size: 8, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !648, file: !16, line: 263, baseType: !24, size: 8, offset: 72)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !648, file: !16, line: 263, baseType: !40, size: 16, offset: 80)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !648, file: !16, line: 263, baseType: !24, size: 8, offset: 96)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !648, file: !16, line: 263, baseType: !24, size: 8, offset: 104)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !648, file: !16, line: 263, baseType: !24, size: 8, offset: 112)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !648, file: !16, line: 263, baseType: !24, size: 8, offset: 120)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !648, file: !16, line: 263, baseType: !88, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !648, file: !16, line: 263, baseType: !72, size: 32, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !648, file: !16, line: 263, baseType: !72, size: 32, offset: 224)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !648, file: !16, line: 263, baseType: !72, size: 32, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !648, file: !16, line: 263, baseType: !24, size: 8, offset: 288)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !648, file: !16, line: 263, baseType: !24, size: 8, offset: 296)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !648, file: !16, line: 263, baseType: !24, size: 8, offset: 304)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !648, file: !16, line: 264, baseType: !36, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !30, file: !16, line: 385, baseType: !667, size: 448)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !16, line: 245, size: 448, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !667, file: !16, line: 246, baseType: !36, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !667, file: !16, line: 246, baseType: !24, size: 8, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !667, file: !16, line: 246, baseType: !24, size: 8, offset: 72)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !667, file: !16, line: 246, baseType: !40, size: 16, offset: 80)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !16, line: 246, baseType: !24, size: 8, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !667, file: !16, line: 246, baseType: !24, size: 8, offset: 104)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !667, file: !16, line: 246, baseType: !24, size: 8, offset: 112)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !667, file: !16, line: 246, baseType: !24, size: 8, offset: 120)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !667, file: !16, line: 246, baseType: !88, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !667, file: !16, line: 246, baseType: !72, size: 32, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !667, file: !16, line: 246, baseType: !72, size: 32, offset: 224)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !667, file: !16, line: 246, baseType: !72, size: 32, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !667, file: !16, line: 246, baseType: !24, size: 8, offset: 288)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !667, file: !16, line: 246, baseType: !24, size: 8, offset: 296)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !667, file: !16, line: 246, baseType: !36, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !667, file: !16, line: 247, baseType: !36, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !30, file: !16, line: 386, baseType: !686, size: 448)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !16, line: 250, size: 448, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !686, file: !16, line: 251, baseType: !36, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !686, file: !16, line: 251, baseType: !24, size: 8, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !686, file: !16, line: 251, baseType: !24, size: 8, offset: 72)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !686, file: !16, line: 251, baseType: !40, size: 16, offset: 80)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !16, line: 251, baseType: !24, size: 8, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !686, file: !16, line: 251, baseType: !24, size: 8, offset: 104)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !686, file: !16, line: 251, baseType: !24, size: 8, offset: 112)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !686, file: !16, line: 251, baseType: !24, size: 8, offset: 120)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !686, file: !16, line: 251, baseType: !88, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !686, file: !16, line: 251, baseType: !72, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !686, file: !16, line: 251, baseType: !72, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !686, file: !16, line: 251, baseType: !72, size: 32, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !686, file: !16, line: 251, baseType: !24, size: 8, offset: 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !686, file: !16, line: 251, baseType: !24, size: 8, offset: 296)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !686, file: !16, line: 256, baseType: !36, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !686, file: !16, line: 257, baseType: !36, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !30, file: !16, line: 387, baseType: !705, size: 512)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !16, line: 273, size: 512, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714, !715, !716}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !705, file: !16, line: 274, baseType: !36, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !705, file: !16, line: 274, baseType: !24, size: 8, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !705, file: !16, line: 274, baseType: !24, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !705, file: !16, line: 274, baseType: !40, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !16, line: 274, baseType: !24, size: 8, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !705, file: !16, line: 274, baseType: !88, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !705, file: !16, line: 275, baseType: !72, size: 32, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !705, file: !16, line: 276, baseType: !382, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !705, file: !16, line: 277, baseType: !22, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !705, file: !16, line: 278, baseType: !489, size: 128, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !30, file: !16, line: 388, baseType: !718, size: 512)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !16, line: 281, size: 512, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !733, !734, !735, !741, !742}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !718, file: !16, line: 282, baseType: !36, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !718, file: !16, line: 282, baseType: !24, size: 8, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !718, file: !16, line: 282, baseType: !24, size: 8, offset: 72)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !718, file: !16, line: 282, baseType: !40, size: 16, offset: 80)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !16, line: 282, baseType: !24, size: 8, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !718, file: !16, line: 282, baseType: !24, size: 8, offset: 104)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !718, file: !16, line: 283, baseType: !24, size: 8, offset: 112)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !718, file: !16, line: 284, baseType: !728, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !110, line: 1084, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!156, !72, !478, !72, !732, !22, !22}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !718, file: !16, line: 285, baseType: !88, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !718, file: !16, line: 286, baseType: !22, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !718, file: !16, line: 287, baseType: !736, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !110, line: 1102, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!156, !386, !72, !22, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !718, file: !16, line: 288, baseType: !36, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !16, line: 289, baseType: !36, size: 64, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !30, file: !16, line: 389, baseType: !744, size: 512)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !16, line: 307, size: 512, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !744, file: !16, line: 308, baseType: !36, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !744, file: !16, line: 308, baseType: !24, size: 8, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !744, file: !16, line: 308, baseType: !24, size: 8, offset: 72)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !744, file: !16, line: 308, baseType: !40, size: 16, offset: 80)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !16, line: 308, baseType: !24, size: 8, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !744, file: !16, line: 308, baseType: !24, size: 8, offset: 104)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !744, file: !16, line: 309, baseType: !24, size: 8, offset: 112)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !744, file: !16, line: 310, baseType: !24, size: 8, offset: 120)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !744, file: !16, line: 311, baseType: !22, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !744, file: !16, line: 312, baseType: !88, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !744, file: !16, line: 313, baseType: !121, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !744, file: !16, line: 314, baseType: !83, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !744, file: !16, line: 315, baseType: !83, size: 64, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !744, file: !16, line: 316, baseType: !72, size: 32, offset: 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !30, file: !16, line: 390, baseType: !761, size: 448)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !16, line: 340, size: 448, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771, !772}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !761, file: !16, line: 341, baseType: !36, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !761, file: !16, line: 341, baseType: !24, size: 8, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !761, file: !16, line: 341, baseType: !24, size: 8, offset: 72)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !761, file: !16, line: 341, baseType: !40, size: 16, offset: 80)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !16, line: 341, baseType: !24, size: 8, offset: 96)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !761, file: !16, line: 341, baseType: !88, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !761, file: !16, line: 342, baseType: !88, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !761, file: !16, line: 343, baseType: !22, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !761, file: !16, line: 344, baseType: !83, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !761, file: !16, line: 345, baseType: !72, size: 32, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !30, file: !16, line: 391, baseType: !774, size: 256)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !16, line: 350, size: 256, elements: !775)
!775 = !{!776, !777, !778, !779, !780, !781, !786}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !774, file: !16, line: 351, baseType: !36, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !774, file: !16, line: 351, baseType: !24, size: 8, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !774, file: !16, line: 351, baseType: !24, size: 8, offset: 72)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !774, file: !16, line: 351, baseType: !40, size: 16, offset: 80)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !16, line: 351, baseType: !24, size: 8, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !774, file: !16, line: 351, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !110, line: 1055, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !386, !22}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !774, file: !16, line: 352, baseType: !22, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !30, file: !16, line: 392, baseType: !788, size: 192)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !16, line: 357, size: 192, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !788, file: !16, line: 358, baseType: !36, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !788, file: !16, line: 358, baseType: !24, size: 8, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !788, file: !16, line: 358, baseType: !24, size: 8, offset: 72)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !788, file: !16, line: 358, baseType: !40, size: 16, offset: 80)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !788, file: !16, line: 358, baseType: !24, size: 8, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !788, file: !16, line: 358, baseType: !36, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !30, file: !16, line: 399, baseType: !89, size: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !15, file: !16, line: 435, baseType: !89, size: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !15, file: !16, line: 436, baseType: !192, size: 1600)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !110, line: 127, baseType: !57)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !802, line: 148, baseType: !7)
!802 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!803 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!804 = !{!0}
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 64, elements: !364)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!807 = !{!"rsp"}
!808 = !{i32 7, !"Dwarf Version", i32 4}
!809 = !{i32 2, !"Debug Info Version", i32 3}
!810 = !{i32 1, !"wchar_size", i32 2}
!811 = !{i32 1, !"Code Model", i32 2}
!812 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!813 = distinct !DISubprogram(name: "acpi_ns_get_external_pathname", scope: !3, file: !3, line: 30, type: !814, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{!69, !88}
!816 = !{}
!817 = !DILocalVariable(name: "node", arg: 1, scope: !813, file: !3, line: 30, type: !88)
!818 = !DILocation(line: 30, column: 65, scope: !813)
!819 = !DILocalVariable(name: "name_buffer", scope: !813, file: !3, line: 32, type: !69)
!820 = !DILocation(line: 32, column: 8, scope: !813)
!821 = !DILocation(line: 36, column: 48, scope: !813)
!822 = !DILocation(line: 36, column: 16, scope: !813)
!823 = !DILocation(line: 36, column: 14, scope: !813)
!824 = !DILocation(line: 37, column: 2, scope: !813)
!825 = distinct !DISubprogram(name: "acpi_ns_get_normalized_pathname", scope: !3, file: !3, line: 289, type: !826, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!826 = !DISubroutineType(types: !827)
!827 = !{!69, !88, !24}
!828 = !DILocalVariable(name: "node", arg: 1, scope: !825, file: !3, line: 289, type: !88)
!829 = !DILocation(line: 289, column: 67, scope: !825)
!830 = !DILocalVariable(name: "no_trailing", arg: 2, scope: !825, file: !3, line: 290, type: !24)
!831 = !DILocation(line: 290, column: 14, scope: !825)
!832 = !DILocalVariable(name: "name_buffer", scope: !825, file: !3, line: 292, type: !69)
!833 = !DILocation(line: 292, column: 8, scope: !825)
!834 = !DILocalVariable(name: "size", scope: !825, file: !3, line: 293, type: !800)
!835 = !DILocation(line: 293, column: 12, scope: !825)
!836 = !DILocation(line: 299, column: 39, scope: !825)
!837 = !DILocation(line: 299, column: 54, scope: !825)
!838 = !DILocation(line: 299, column: 9, scope: !825)
!839 = !DILocation(line: 299, column: 7, scope: !825)
!840 = !DILocation(line: 300, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !825, file: !3, line: 300, column: 6)
!842 = !DILocation(line: 300, column: 6, scope: !825)
!843 = !DILocation(line: 301, column: 3, scope: !844)
!844 = distinct !DILexicalBlock(scope: !841, file: !3, line: 300, column: 13)
!845 = !DILocation(line: 306, column: 16, scope: !825)
!846 = !DILocation(line: 306, column: 14, scope: !825)
!847 = !DILocation(line: 307, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !825, file: !3, line: 307, column: 6)
!849 = !DILocation(line: 307, column: 6, scope: !825)
!850 = !DILocation(line: 308, column: 3, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !3, line: 307, column: 20)
!852 = !DILocation(line: 309, column: 3, scope: !851)
!853 = !DILocation(line: 314, column: 38, scope: !825)
!854 = !DILocation(line: 314, column: 44, scope: !825)
!855 = !DILocation(line: 314, column: 62, scope: !825)
!856 = !DILocation(line: 314, column: 57, scope: !825)
!857 = !DILocation(line: 315, column: 10, scope: !825)
!858 = !DILocation(line: 314, column: 8, scope: !825)
!859 = !DILocation(line: 320, column: 2, scope: !825)
!860 = !DILocation(line: 321, column: 1, scope: !825)
!861 = distinct !DISubprogram(name: "acpi_ns_get_pathname_length", scope: !3, file: !3, line: 52, type: !862, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!862 = !DISubroutineType(types: !863)
!863 = !{!800, !88}
!864 = !DILocalVariable(name: "node", arg: 1, scope: !861, file: !3, line: 52, type: !88)
!865 = !DILocation(line: 52, column: 67, scope: !861)
!866 = !DILocalVariable(name: "size", scope: !861, file: !3, line: 54, type: !800)
!867 = !DILocation(line: 54, column: 12, scope: !861)
!868 = !DILocation(line: 58, column: 6, scope: !869)
!869 = distinct !DILexicalBlock(scope: !861, file: !3, line: 58, column: 6)
!870 = !DILocation(line: 58, column: 37, scope: !869)
!871 = !DILocation(line: 58, column: 6, scope: !861)
!872 = !DILocation(line: 59, column: 3, scope: !873)
!873 = distinct !DILexicalBlock(scope: !869, file: !3, line: 58, column: 62)
!874 = !DILocation(line: 62, column: 3, scope: !873)
!875 = !DILocation(line: 65, column: 39, scope: !861)
!876 = !DILocation(line: 65, column: 9, scope: !861)
!877 = !DILocation(line: 65, column: 7, scope: !861)
!878 = !DILocation(line: 66, column: 10, scope: !861)
!879 = !DILocation(line: 66, column: 2, scope: !861)
!880 = !DILocation(line: 67, column: 1, scope: !861)
!881 = distinct !DISubprogram(name: "acpi_ns_build_normalized_path", scope: !3, file: !3, line: 193, type: !882, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!882 = !DISubroutineType(types: !883)
!883 = !{!72, !88, !69, !72, !24}
!884 = !DILocalVariable(name: "node", arg: 1, scope: !881, file: !3, line: 193, type: !88)
!885 = !DILocation(line: 193, column: 59, scope: !881)
!886 = !DILocalVariable(name: "full_path", arg: 2, scope: !881, file: !3, line: 194, type: !69)
!887 = !DILocation(line: 194, column: 16, scope: !881)
!888 = !DILocalVariable(name: "path_size", arg: 3, scope: !881, file: !3, line: 194, type: !72)
!889 = !DILocation(line: 194, column: 31, scope: !881)
!890 = !DILocalVariable(name: "no_trailing", arg: 4, scope: !881, file: !3, line: 194, type: !24)
!891 = !DILocation(line: 194, column: 45, scope: !881)
!892 = !DILocalVariable(name: "length", scope: !881, file: !3, line: 196, type: !72)
!893 = !DILocation(line: 196, column: 6, scope: !881)
!894 = !DILocalVariable(name: "i", scope: !881, file: !3, line: 196, type: !72)
!895 = !DILocation(line: 196, column: 18, scope: !881)
!896 = !DILocalVariable(name: "name", scope: !881, file: !3, line: 197, type: !102)
!897 = !DILocation(line: 197, column: 7, scope: !881)
!898 = !DILocalVariable(name: "do_no_trailing", scope: !881, file: !3, line: 198, type: !24)
!899 = !DILocation(line: 198, column: 5, scope: !881)
!900 = !DILocalVariable(name: "c", scope: !881, file: !3, line: 199, type: !70)
!901 = !DILocation(line: 199, column: 7, scope: !881)
!902 = !DILocalVariable(name: "left", scope: !881, file: !3, line: 199, type: !69)
!903 = !DILocation(line: 199, column: 11, scope: !881)
!904 = !DILocalVariable(name: "right", scope: !881, file: !3, line: 199, type: !69)
!905 = !DILocation(line: 199, column: 18, scope: !881)
!906 = !DILocalVariable(name: "next_node", scope: !881, file: !3, line: 200, type: !88)
!907 = !DILocation(line: 200, column: 30, scope: !881)
!908 = !DILocation(line: 217, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !881, file: !3, line: 217, column: 6)
!910 = !DILocation(line: 217, column: 6, scope: !881)
!911 = !DILocation(line: 218, column: 13, scope: !912)
!912 = distinct !DILexicalBlock(scope: !909, file: !3, line: 217, column: 18)
!913 = !DILocation(line: 219, column: 2, scope: !912)
!914 = !DILocation(line: 221, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !881, file: !3, line: 221, column: 6)
!916 = !DILocation(line: 221, column: 6, scope: !881)
!917 = !DILocation(line: 222, column: 3, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !3, line: 221, column: 13)
!919 = !DILocation(line: 225, column: 14, scope: !881)
!920 = !DILocation(line: 225, column: 12, scope: !881)
!921 = !DILocation(line: 226, column: 2, scope: !881)
!922 = !DILocation(line: 226, column: 9, scope: !881)
!923 = !DILocation(line: 226, column: 19, scope: !881)
!924 = !DILocation(line: 226, column: 22, scope: !881)
!925 = !DILocation(line: 226, column: 35, scope: !881)
!926 = !DILocation(line: 226, column: 32, scope: !881)
!927 = !DILocation(line: 0, scope: !881)
!928 = !DILocation(line: 227, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 227, column: 7)
!930 = distinct !DILexicalBlock(scope: !881, file: !3, line: 226, column: 55)
!931 = !DILocation(line: 227, column: 20, scope: !929)
!932 = !DILocation(line: 227, column: 17, scope: !929)
!933 = !DILocation(line: 227, column: 7, scope: !930)
!934 = !DILocation(line: 228, column: 4, scope: !935)
!935 = distinct !DILexicalBlock(scope: !929, file: !3, line: 227, column: 26)
!936 = !DILocation(line: 228, column: 4, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 228, column: 4)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 228, column: 4)
!939 = !DILocation(line: 228, column: 4, scope: !938)
!940 = !DILocation(line: 228, column: 4, scope: !941)
!941 = distinct !DILexicalBlock(scope: !937, file: !3, line: 228, column: 4)
!942 = !DILocation(line: 230, column: 3, scope: !935)
!943 = !DILocation(line: 232, column: 3, scope: !930)
!944 = !DILocation(line: 233, column: 20, scope: !930)
!945 = !DILocation(line: 233, column: 18, scope: !930)
!946 = !DILocation(line: 234, column: 10, scope: !947)
!947 = distinct !DILexicalBlock(scope: !930, file: !3, line: 234, column: 3)
!948 = !DILocation(line: 234, column: 8, scope: !947)
!949 = !DILocation(line: 234, column: 15, scope: !950)
!950 = distinct !DILexicalBlock(scope: !947, file: !3, line: 234, column: 3)
!951 = !DILocation(line: 234, column: 17, scope: !950)
!952 = !DILocation(line: 234, column: 3, scope: !947)
!953 = !DILocation(line: 235, column: 17, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !3, line: 234, column: 27)
!955 = !DILocation(line: 235, column: 15, scope: !954)
!956 = !DILocation(line: 235, column: 19, scope: !954)
!957 = !DILocation(line: 235, column: 8, scope: !954)
!958 = !DILocation(line: 235, column: 6, scope: !954)
!959 = !DILocation(line: 236, column: 8, scope: !960)
!960 = distinct !DILexicalBlock(scope: !954, file: !3, line: 236, column: 8)
!961 = !DILocation(line: 236, column: 23, scope: !960)
!962 = !DILocation(line: 236, column: 26, scope: !960)
!963 = !DILocation(line: 236, column: 28, scope: !960)
!964 = !DILocation(line: 236, column: 8, scope: !954)
!965 = !DILocation(line: 237, column: 20, scope: !966)
!966 = distinct !DILexicalBlock(scope: !960, file: !3, line: 236, column: 36)
!967 = !DILocation(line: 238, column: 4, scope: !966)
!968 = !DILocation(line: 239, column: 9, scope: !969)
!969 = distinct !DILexicalBlock(scope: !954, file: !3, line: 239, column: 8)
!970 = !DILocation(line: 239, column: 8, scope: !954)
!971 = !DILocation(line: 240, column: 5, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !3, line: 239, column: 25)
!973 = !DILocation(line: 240, column: 5, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 240, column: 5)
!975 = distinct !DILexicalBlock(scope: !972, file: !3, line: 240, column: 5)
!976 = !DILocation(line: 240, column: 5, scope: !975)
!977 = !DILocation(line: 240, column: 5, scope: !978)
!978 = distinct !DILexicalBlock(scope: !974, file: !3, line: 240, column: 5)
!979 = !DILocation(line: 241, column: 4, scope: !972)
!980 = !DILocation(line: 242, column: 3, scope: !954)
!981 = !DILocation(line: 234, column: 23, scope: !950)
!982 = !DILocation(line: 234, column: 3, scope: !950)
!983 = distinct !{!983, !952, !984}
!984 = !DILocation(line: 242, column: 3, scope: !947)
!985 = !DILocation(line: 244, column: 15, scope: !930)
!986 = !DILocation(line: 244, column: 26, scope: !930)
!987 = !DILocation(line: 244, column: 13, scope: !930)
!988 = distinct !{!988, !921, !989}
!989 = !DILocation(line: 245, column: 2, scope: !881)
!990 = !DILocation(line: 247, column: 2, scope: !881)
!991 = !DILocation(line: 247, column: 2, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 247, column: 2)
!993 = distinct !DILexicalBlock(scope: !881, file: !3, line: 247, column: 2)
!994 = !DILocation(line: 247, column: 2, scope: !993)
!995 = !DILocation(line: 247, column: 2, scope: !996)
!996 = distinct !DILexicalBlock(scope: !992, file: !3, line: 247, column: 2)
!997 = !DILocation(line: 251, column: 6, scope: !998)
!998 = distinct !DILexicalBlock(scope: !881, file: !3, line: 251, column: 6)
!999 = !DILocation(line: 251, column: 16, scope: !998)
!1000 = !DILocation(line: 251, column: 13, scope: !998)
!1001 = !DILocation(line: 251, column: 6, scope: !881)
!1002 = !DILocation(line: 252, column: 10, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !998, file: !3, line: 251, column: 27)
!1004 = !DILocation(line: 252, column: 8, scope: !1003)
!1005 = !DILocation(line: 253, column: 11, scope: !1003)
!1006 = !DILocation(line: 253, column: 23, scope: !1003)
!1007 = !DILocation(line: 253, column: 21, scope: !1003)
!1008 = !DILocation(line: 253, column: 30, scope: !1003)
!1009 = !DILocation(line: 253, column: 9, scope: !1003)
!1010 = !DILocation(line: 255, column: 3, scope: !1003)
!1011 = !DILocation(line: 255, column: 10, scope: !1003)
!1012 = !DILocation(line: 255, column: 17, scope: !1003)
!1013 = !DILocation(line: 255, column: 15, scope: !1003)
!1014 = !DILocation(line: 256, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 255, column: 24)
!1016 = !DILocation(line: 256, column: 8, scope: !1015)
!1017 = !DILocation(line: 256, column: 6, scope: !1015)
!1018 = !DILocation(line: 257, column: 15, scope: !1015)
!1019 = !DILocation(line: 257, column: 14, scope: !1015)
!1020 = !DILocation(line: 257, column: 9, scope: !1015)
!1021 = !DILocation(line: 257, column: 12, scope: !1015)
!1022 = !DILocation(line: 258, column: 15, scope: !1015)
!1023 = !DILocation(line: 258, column: 10, scope: !1015)
!1024 = !DILocation(line: 258, column: 13, scope: !1015)
!1025 = distinct !{!1025, !1010, !1026}
!1026 = !DILocation(line: 259, column: 3, scope: !1003)
!1027 = !DILocation(line: 260, column: 2, scope: !1003)
!1028 = !DILabel(scope: !881, name: "build_trailing_null", file: !3, line: 264)
!1029 = !DILocation(line: 264, column: 1, scope: !881)
!1030 = !DILocation(line: 265, column: 2, scope: !881)
!1031 = !DILocation(line: 265, column: 2, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 265, column: 2)
!1033 = distinct !DILexicalBlock(scope: !881, file: !3, line: 265, column: 2)
!1034 = !DILocation(line: 265, column: 2, scope: !1033)
!1035 = !DILocation(line: 265, column: 2, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 265, column: 2)
!1037 = !DILocation(line: 269, column: 2, scope: !881)
!1038 = distinct !DISubprogram(name: "acpi_ns_handle_to_name", scope: !3, file: !3, line: 84, type: !1039, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!156, !386, !1041}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !110, line: 969, size: 128, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1042, file: !110, line: 970, baseType: !800, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1042, file: !110, line: 971, baseType: !22, size: 64, offset: 64)
!1046 = !DILocalVariable(name: "target_handle", arg: 1, scope: !1038, file: !3, line: 84, type: !386)
!1047 = !DILocation(line: 84, column: 36, scope: !1038)
!1048 = !DILocalVariable(name: "buffer", arg: 2, scope: !1038, file: !3, line: 84, type: !1041)
!1049 = !DILocation(line: 84, column: 71, scope: !1038)
!1050 = !DILocalVariable(name: "status", scope: !1038, file: !3, line: 86, type: !156)
!1051 = !DILocation(line: 86, column: 14, scope: !1038)
!1052 = !DILocalVariable(name: "node", scope: !1038, file: !3, line: 87, type: !88)
!1053 = !DILocation(line: 87, column: 30, scope: !1038)
!1054 = !DILocalVariable(name: "node_name", scope: !1038, file: !3, line: 88, type: !1055)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!1056 = !DILocation(line: 88, column: 14, scope: !1038)
!1057 = !DILocation(line: 92, column: 33, scope: !1038)
!1058 = !DILocation(line: 92, column: 9, scope: !1038)
!1059 = !DILocation(line: 92, column: 7, scope: !1038)
!1060 = !DILocation(line: 93, column: 7, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 93, column: 6)
!1062 = !DILocation(line: 93, column: 6, scope: !1038)
!1063 = !DILocation(line: 94, column: 3, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 93, column: 13)
!1065 = !DILocation(line: 99, column: 37, scope: !1038)
!1066 = !DILocation(line: 99, column: 11, scope: !1038)
!1067 = !DILocation(line: 99, column: 9, scope: !1038)
!1068 = !DILocation(line: 100, column: 6, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 100, column: 6)
!1070 = !DILocation(line: 100, column: 6, scope: !1038)
!1071 = !DILocation(line: 101, column: 3, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 100, column: 28)
!1073 = !DILocation(line: 106, column: 36, scope: !1038)
!1074 = !DILocation(line: 106, column: 14, scope: !1038)
!1075 = !DILocation(line: 106, column: 12, scope: !1038)
!1076 = !DILocation(line: 107, column: 2, scope: !1038)
!1077 = !DILocation(line: 108, column: 11, scope: !1038)
!1078 = !DILocation(line: 108, column: 19, scope: !1038)
!1079 = !DILocation(line: 108, column: 2, scope: !1038)
!1080 = !DILocation(line: 108, column: 47, scope: !1038)
!1081 = !DILocation(line: 111, column: 2, scope: !1038)
!1082 = !DILocation(line: 112, column: 1, scope: !1038)
!1083 = distinct !DISubprogram(name: "acpi_ns_handle_to_pathname", scope: !3, file: !3, line: 131, type: !1084, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!156, !386, !1041, !24}
!1086 = !DILocalVariable(name: "target_handle", arg: 1, scope: !1083, file: !3, line: 131, type: !386)
!1087 = !DILocation(line: 131, column: 40, scope: !1083)
!1088 = !DILocalVariable(name: "buffer", arg: 2, scope: !1083, file: !3, line: 132, type: !1041)
!1089 = !DILocation(line: 132, column: 27, scope: !1083)
!1090 = !DILocalVariable(name: "no_trailing", arg: 3, scope: !1083, file: !3, line: 132, type: !24)
!1091 = !DILocation(line: 132, column: 38, scope: !1083)
!1092 = !DILocalVariable(name: "status", scope: !1083, file: !3, line: 134, type: !156)
!1093 = !DILocation(line: 134, column: 14, scope: !1083)
!1094 = !DILocalVariable(name: "node", scope: !1083, file: !3, line: 135, type: !88)
!1095 = !DILocation(line: 135, column: 30, scope: !1083)
!1096 = !DILocalVariable(name: "required_size", scope: !1083, file: !3, line: 136, type: !800)
!1097 = !DILocation(line: 136, column: 12, scope: !1083)
!1098 = !DILocation(line: 140, column: 33, scope: !1083)
!1099 = !DILocation(line: 140, column: 9, scope: !1083)
!1100 = !DILocation(line: 140, column: 7, scope: !1083)
!1101 = !DILocation(line: 141, column: 7, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 141, column: 6)
!1103 = !DILocation(line: 141, column: 6, scope: !1083)
!1104 = !DILocation(line: 142, column: 3, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 141, column: 13)
!1106 = !DILocation(line: 148, column: 36, scope: !1083)
!1107 = !DILocation(line: 148, column: 51, scope: !1083)
!1108 = !DILocation(line: 148, column: 6, scope: !1083)
!1109 = !DILocation(line: 147, column: 16, scope: !1083)
!1110 = !DILocation(line: 149, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 149, column: 6)
!1112 = !DILocation(line: 149, column: 6, scope: !1083)
!1113 = !DILocation(line: 150, column: 3, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 149, column: 22)
!1115 = !DILocation(line: 155, column: 37, scope: !1083)
!1116 = !DILocation(line: 155, column: 45, scope: !1083)
!1117 = !DILocation(line: 155, column: 11, scope: !1083)
!1118 = !DILocation(line: 155, column: 9, scope: !1083)
!1119 = !DILocation(line: 156, column: 6, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 156, column: 6)
!1121 = !DILocation(line: 156, column: 6, scope: !1083)
!1122 = !DILocation(line: 157, column: 3, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 156, column: 28)
!1124 = !DILocation(line: 162, column: 38, scope: !1083)
!1125 = !DILocation(line: 162, column: 44, scope: !1083)
!1126 = !DILocation(line: 162, column: 52, scope: !1083)
!1127 = !DILocation(line: 163, column: 15, scope: !1083)
!1128 = !DILocation(line: 163, column: 10, scope: !1083)
!1129 = !DILocation(line: 163, column: 30, scope: !1083)
!1130 = !DILocation(line: 162, column: 8, scope: !1083)
!1131 = !DILocation(line: 167, column: 2, scope: !1083)
!1132 = !DILocation(line: 168, column: 1, scope: !1083)
!1133 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1134, file: !1134, line: 55, type: !1135, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1134 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!22, !800}
!1137 = !DILocalVariable(name: "flags", arg: 1, scope: !1138, file: !1139, line: 162, type: !803)
!1138 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1139, file: !1139, line: 162, type: !1140, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1139 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!1142, !803}
!1142 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1143 = !DILocation(line: 162, column: 67, scope: !1138, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 57, column: 23, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !1134, line: 57, column: 23)
!1146 = distinct !DILexicalBlock(scope: !1133, file: !1134, line: 57, column: 23)
!1147 = !DILocalVariable(name: "size", arg: 1, scope: !1133, file: !1134, line: 55, type: !800)
!1148 = !DILocation(line: 55, column: 55, scope: !1133)
!1149 = !DILocation(line: 57, column: 17, scope: !1133)
!1150 = !DILocalVariable(name: "_flags", scope: !1146, file: !1134, line: 57, type: !803)
!1151 = !DILocation(line: 57, column: 23, scope: !1146)
!1152 = !DILocalVariable(name: "__dummy", scope: !1153, file: !1134, line: 57, type: !803)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !1134, line: 57, column: 23)
!1154 = distinct !DILexicalBlock(scope: !1146, file: !1134, line: 57, column: 23)
!1155 = !DILocation(line: 57, column: 23, scope: !1153)
!1156 = !DILocalVariable(name: "__dummy2", scope: !1153, file: !1134, line: 57, type: !803)
!1157 = !DILocation(line: 57, column: 23, scope: !1154)
!1158 = !DILocalVariable(name: "__dummy", scope: !1159, file: !1134, line: 57, type: !803)
!1159 = distinct !DILexicalBlock(scope: !1145, file: !1134, line: 57, column: 23)
!1160 = !DILocation(line: 57, column: 23, scope: !1159)
!1161 = !DILocalVariable(name: "__dummy2", scope: !1159, file: !1134, line: 57, type: !803)
!1162 = !DILocation(line: 57, column: 23, scope: !1145)
!1163 = !DILocation(line: 164, column: 11, scope: !1138, inlinedAt: !1144)
!1164 = !DILocation(line: 164, column: 17, scope: !1138, inlinedAt: !1144)
!1165 = !DILocation(line: 164, column: 9, scope: !1138, inlinedAt: !1144)
!1166 = !DILocation(line: 57, column: 23, scope: !1133)
!1167 = !DILocation(line: 57, column: 9, scope: !1133)
!1168 = !DILocation(line: 57, column: 2, scope: !1133)
!1169 = distinct !DISubprogram(name: "acpi_ns_build_prefixed_pathname", scope: !3, file: !3, line: 338, type: !1170, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!69, !273, !1055}
!1172 = !DILocalVariable(name: "prefix_scope", arg: 1, scope: !1169, file: !3, line: 338, type: !273)
!1173 = !DILocation(line: 338, column: 65, scope: !1169)
!1174 = !DILocalVariable(name: "internal_path", arg: 2, scope: !1169, file: !3, line: 339, type: !1055)
!1175 = !DILocation(line: 339, column: 23, scope: !1169)
!1176 = !DILocalVariable(name: "status", scope: !1169, file: !3, line: 341, type: !156)
!1177 = !DILocation(line: 341, column: 14, scope: !1169)
!1178 = !DILocalVariable(name: "full_path", scope: !1169, file: !3, line: 342, type: !69)
!1179 = !DILocation(line: 342, column: 8, scope: !1169)
!1180 = !DILocalVariable(name: "external_path", scope: !1169, file: !3, line: 343, type: !69)
!1181 = !DILocation(line: 343, column: 8, scope: !1169)
!1182 = !DILocalVariable(name: "prefix_path", scope: !1169, file: !3, line: 344, type: !69)
!1183 = !DILocation(line: 344, column: 8, scope: !1169)
!1184 = !DILocalVariable(name: "prefix_path_length", scope: !1169, file: !3, line: 345, type: !800)
!1185 = !DILocation(line: 345, column: 12, scope: !1169)
!1186 = !DILocation(line: 349, column: 6, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 349, column: 6)
!1188 = !DILocation(line: 349, column: 19, scope: !1187)
!1189 = !DILocation(line: 349, column: 22, scope: !1187)
!1190 = !DILocation(line: 349, column: 36, scope: !1187)
!1191 = !DILocation(line: 349, column: 42, scope: !1187)
!1192 = !DILocation(line: 349, column: 6, scope: !1169)
!1193 = !DILocation(line: 351, column: 39, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 349, column: 48)
!1195 = !DILocation(line: 351, column: 53, scope: !1194)
!1196 = !DILocation(line: 351, column: 59, scope: !1194)
!1197 = !DILocation(line: 351, column: 7, scope: !1194)
!1198 = !DILocation(line: 350, column: 15, scope: !1194)
!1199 = !DILocation(line: 353, column: 7, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 353, column: 7)
!1201 = !DILocation(line: 353, column: 7, scope: !1194)
!1202 = !DILocation(line: 354, column: 32, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 353, column: 20)
!1204 = !DILocation(line: 354, column: 25, scope: !1203)
!1205 = !DILocation(line: 354, column: 23, scope: !1203)
!1206 = !DILocation(line: 355, column: 3, scope: !1203)
!1207 = !DILocation(line: 356, column: 2, scope: !1194)
!1208 = !DILocation(line: 358, column: 53, scope: !1169)
!1209 = !DILocation(line: 358, column: 11, scope: !1169)
!1210 = !DILocation(line: 358, column: 9, scope: !1169)
!1211 = !DILocation(line: 360, column: 6, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 360, column: 6)
!1213 = !DILocation(line: 360, column: 6, scope: !1169)
!1214 = !DILocation(line: 361, column: 3, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 360, column: 28)
!1216 = !DILocation(line: 367, column: 6, scope: !1169)
!1217 = !DILocation(line: 366, column: 12, scope: !1169)
!1218 = !DILocation(line: 369, column: 7, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 369, column: 6)
!1220 = !DILocation(line: 369, column: 6, scope: !1169)
!1221 = !DILocation(line: 370, column: 3, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 369, column: 18)
!1223 = !DILocation(line: 375, column: 6, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 375, column: 6)
!1225 = !DILocation(line: 375, column: 18, scope: !1224)
!1226 = !DILocation(line: 375, column: 23, scope: !1224)
!1227 = !DILocation(line: 375, column: 22, scope: !1224)
!1228 = !DILocation(line: 375, column: 37, scope: !1224)
!1229 = !DILocation(line: 375, column: 46, scope: !1224)
!1230 = !DILocation(line: 375, column: 51, scope: !1224)
!1231 = !DILocation(line: 375, column: 50, scope: !1224)
!1232 = !DILocation(line: 375, column: 65, scope: !1224)
!1233 = !DILocation(line: 375, column: 6, scope: !1169)
!1234 = !DILocation(line: 376, column: 10, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 375, column: 74)
!1236 = !DILocation(line: 376, column: 21, scope: !1235)
!1237 = !DILocation(line: 376, column: 3, scope: !1235)
!1238 = !DILocation(line: 377, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 377, column: 7)
!1240 = !DILocation(line: 377, column: 7, scope: !1235)
!1241 = !DILocation(line: 378, column: 11, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 377, column: 23)
!1243 = !DILocation(line: 378, column: 4, scope: !1242)
!1244 = !DILocation(line: 379, column: 3, scope: !1242)
!1245 = !DILocation(line: 380, column: 2, scope: !1235)
!1246 = !DILocation(line: 382, column: 29, scope: !1169)
!1247 = !DILocation(line: 382, column: 2, scope: !1169)
!1248 = !DILocation(line: 383, column: 9, scope: !1169)
!1249 = !DILocation(line: 383, column: 20, scope: !1169)
!1250 = !DILocation(line: 383, column: 2, scope: !1169)
!1251 = !DILabel(scope: !1169, name: "cleanup", file: !3, line: 385)
!1252 = !DILocation(line: 385, column: 1, scope: !1169)
!1253 = !DILocation(line: 386, column: 6, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 386, column: 6)
!1255 = !DILocation(line: 386, column: 6, scope: !1169)
!1256 = !DILocation(line: 387, column: 3, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 386, column: 19)
!1258 = !DILocation(line: 388, column: 2, scope: !1257)
!1259 = !DILocation(line: 389, column: 6, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 389, column: 6)
!1261 = !DILocation(line: 389, column: 6, scope: !1169)
!1262 = !DILocation(line: 390, column: 3, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 389, column: 21)
!1264 = !DILocation(line: 391, column: 2, scope: !1263)
!1265 = !DILocation(line: 393, column: 10, scope: !1169)
!1266 = !DILocation(line: 393, column: 2, scope: !1169)
!1267 = distinct !DISubprogram(name: "acpi_ns_normalize_pathname", scope: !3, file: !3, line: 410, type: !1268, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !69}
!1270 = !DILocalVariable(name: "original_path", arg: 1, scope: !1267, file: !3, line: 410, type: !69)
!1271 = !DILocation(line: 410, column: 39, scope: !1267)
!1272 = !DILocalVariable(name: "input_path", scope: !1267, file: !3, line: 412, type: !69)
!1273 = !DILocation(line: 412, column: 8, scope: !1267)
!1274 = !DILocation(line: 412, column: 21, scope: !1267)
!1275 = !DILocalVariable(name: "new_path_buffer", scope: !1267, file: !3, line: 413, type: !69)
!1276 = !DILocation(line: 413, column: 8, scope: !1267)
!1277 = !DILocalVariable(name: "new_path", scope: !1267, file: !3, line: 414, type: !69)
!1278 = !DILocation(line: 414, column: 8, scope: !1267)
!1279 = !DILocalVariable(name: "i", scope: !1267, file: !3, line: 415, type: !72)
!1280 = !DILocation(line: 415, column: 6, scope: !1267)
!1281 = !DILocation(line: 419, column: 20, scope: !1267)
!1282 = !DILocation(line: 419, column: 18, scope: !1267)
!1283 = !DILocation(line: 420, column: 13, scope: !1267)
!1284 = !DILocation(line: 420, column: 11, scope: !1267)
!1285 = !DILocation(line: 421, column: 7, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 421, column: 6)
!1287 = !DILocation(line: 421, column: 6, scope: !1267)
!1288 = !DILocation(line: 422, column: 3, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 421, column: 24)
!1290 = !DILocation(line: 427, column: 7, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 427, column: 6)
!1292 = !DILocation(line: 427, column: 6, scope: !1291)
!1293 = !DILocation(line: 427, column: 18, scope: !1291)
!1294 = !DILocation(line: 427, column: 6, scope: !1267)
!1295 = !DILocation(line: 428, column: 16, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 427, column: 27)
!1297 = !DILocation(line: 428, column: 15, scope: !1296)
!1298 = !DILocation(line: 428, column: 4, scope: !1296)
!1299 = !DILocation(line: 428, column: 13, scope: !1296)
!1300 = !DILocation(line: 429, column: 11, scope: !1296)
!1301 = !DILocation(line: 430, column: 13, scope: !1296)
!1302 = !DILocation(line: 431, column: 2, scope: !1296)
!1303 = !DILocation(line: 433, column: 2, scope: !1267)
!1304 = !DILocation(line: 433, column: 10, scope: !1267)
!1305 = !DILocation(line: 433, column: 9, scope: !1267)
!1306 = !DILocation(line: 433, column: 21, scope: !1267)
!1307 = !DILocation(line: 434, column: 16, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 433, column: 29)
!1309 = !DILocation(line: 434, column: 15, scope: !1308)
!1310 = !DILocation(line: 434, column: 4, scope: !1308)
!1311 = !DILocation(line: 434, column: 13, scope: !1308)
!1312 = !DILocation(line: 435, column: 11, scope: !1308)
!1313 = !DILocation(line: 436, column: 13, scope: !1308)
!1314 = distinct !{!1314, !1303, !1315}
!1315 = !DILocation(line: 437, column: 2, scope: !1267)
!1316 = !DILocation(line: 441, column: 2, scope: !1267)
!1317 = !DILocation(line: 441, column: 10, scope: !1267)
!1318 = !DILocation(line: 441, column: 9, scope: !1267)
!1319 = !DILocation(line: 445, column: 10, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 445, column: 3)
!1321 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 441, column: 22)
!1322 = !DILocation(line: 445, column: 8, scope: !1320)
!1323 = !DILocation(line: 445, column: 16, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 445, column: 3)
!1325 = !DILocation(line: 445, column: 18, scope: !1324)
!1326 = !DILocation(line: 445, column: 39, scope: !1324)
!1327 = !DILocation(line: 445, column: 43, scope: !1324)
!1328 = !DILocation(line: 445, column: 42, scope: !1324)
!1329 = !DILocation(line: 0, scope: !1324)
!1330 = !DILocation(line: 445, column: 3, scope: !1320)
!1331 = !DILocation(line: 446, column: 9, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 446, column: 8)
!1333 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 445, column: 60)
!1334 = !DILocation(line: 446, column: 11, scope: !1332)
!1335 = !DILocation(line: 446, column: 17, scope: !1332)
!1336 = !DILocation(line: 446, column: 22, scope: !1332)
!1337 = !DILocation(line: 446, column: 21, scope: !1332)
!1338 = !DILocation(line: 446, column: 33, scope: !1332)
!1339 = !DILocation(line: 446, column: 8, scope: !1333)
!1340 = !DILocation(line: 447, column: 18, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 446, column: 42)
!1342 = !DILocation(line: 447, column: 17, scope: !1341)
!1343 = !DILocation(line: 447, column: 6, scope: !1341)
!1344 = !DILocation(line: 447, column: 15, scope: !1341)
!1345 = !DILocation(line: 448, column: 13, scope: !1341)
!1346 = !DILocation(line: 449, column: 4, scope: !1341)
!1347 = !DILocation(line: 451, column: 14, scope: !1333)
!1348 = !DILocation(line: 452, column: 3, scope: !1333)
!1349 = !DILocation(line: 445, column: 56, scope: !1324)
!1350 = !DILocation(line: 445, column: 3, scope: !1324)
!1351 = distinct !{!1351, !1330, !1352}
!1352 = !DILocation(line: 452, column: 3, scope: !1320)
!1353 = !DILocation(line: 456, column: 8, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 456, column: 7)
!1355 = !DILocation(line: 456, column: 7, scope: !1354)
!1356 = !DILocation(line: 456, column: 19, scope: !1354)
!1357 = !DILocation(line: 456, column: 7, scope: !1321)
!1358 = !DILocation(line: 457, column: 17, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 456, column: 27)
!1360 = !DILocation(line: 457, column: 16, scope: !1359)
!1361 = !DILocation(line: 457, column: 5, scope: !1359)
!1362 = !DILocation(line: 457, column: 14, scope: !1359)
!1363 = !DILocation(line: 458, column: 12, scope: !1359)
!1364 = !DILocation(line: 459, column: 14, scope: !1359)
!1365 = !DILocation(line: 460, column: 3, scope: !1359)
!1366 = distinct !{!1366, !1316, !1367}
!1367 = !DILocation(line: 461, column: 2, scope: !1267)
!1368 = !DILocation(line: 463, column: 3, scope: !1267)
!1369 = !DILocation(line: 463, column: 12, scope: !1267)
!1370 = !DILocation(line: 464, column: 9, scope: !1267)
!1371 = !DILocation(line: 464, column: 24, scope: !1267)
!1372 = !DILocation(line: 464, column: 2, scope: !1267)
!1373 = !DILocation(line: 465, column: 2, scope: !1267)
!1374 = !DILocation(line: 466, column: 1, scope: !1267)
!1375 = distinct !DISubprogram(name: "acpi_os_free", scope: !1134, file: !1134, line: 60, type: !1376, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !22}
!1378 = !DILocalVariable(name: "memory", arg: 1, scope: !1375, file: !1134, line: 60, type: !22)
!1379 = !DILocation(line: 60, column: 39, scope: !1375)
!1380 = !DILocation(line: 62, column: 8, scope: !1375)
!1381 = !DILocation(line: 62, column: 2, scope: !1375)
!1382 = !DILocation(line: 63, column: 1, scope: !1375)
!1383 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1384, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!22, !1386, !801}
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !802, line: 55, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1388, line: 72, baseType: !1389)
!1388 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1388, line: 16, baseType: !803)
!1390 = !DILocalVariable(name: "s", arg: 1, scope: !1391, file: !6, line: 445, type: !1394)
!1391 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1392, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!22, !1394, !801, !1386}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1396, line: 117, flags: DIFlagFwdDecl)
!1396 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1397 = !DILocation(line: 445, column: 72, scope: !1391, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 552, column: 10, scope: !1399, inlinedAt: !1402)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !6, line: 540, column: 34)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !6, line: 540, column: 6)
!1401 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1384, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1402 = distinct !DILocation(line: 664, column: 9, scope: !1383)
!1403 = !DILocalVariable(name: "flags", arg: 2, scope: !1391, file: !6, line: 446, type: !801)
!1404 = !DILocation(line: 446, column: 9, scope: !1391, inlinedAt: !1398)
!1405 = !DILocalVariable(name: "size", arg: 3, scope: !1391, file: !6, line: 446, type: !1386)
!1406 = !DILocation(line: 446, column: 23, scope: !1391, inlinedAt: !1398)
!1407 = !DILocalVariable(name: "ret", scope: !1391, file: !6, line: 448, type: !22)
!1408 = !DILocation(line: 448, column: 8, scope: !1391, inlinedAt: !1398)
!1409 = !DILocalVariable(name: "flags", arg: 1, scope: !1410, file: !6, line: 318, type: !801)
!1410 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1411, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!5, !801}
!1413 = !DILocation(line: 318, column: 67, scope: !1410, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 553, column: 20, scope: !1399, inlinedAt: !1402)
!1415 = !DILocalVariable(name: "size", arg: 1, scope: !1416, file: !6, line: 346, type: !1386)
!1416 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1417, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!7, !1386}
!1419 = !DILocation(line: 346, column: 58, scope: !1416, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 547, column: 11, scope: !1399, inlinedAt: !1402)
!1421 = !DILocalVariable(name: "size", arg: 1, scope: !1422, file: !6, line: 472, type: !1386)
!1422 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1423, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!22, !1386, !801, !7}
!1425 = !DILocation(line: 472, column: 28, scope: !1422, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 481, column: 9, scope: !1427, inlinedAt: !1428)
!1427 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1384, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1428 = distinct !DILocation(line: 545, column: 11, scope: !1429, inlinedAt: !1402)
!1429 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 544, column: 7)
!1430 = !DILocalVariable(name: "flags", arg: 2, scope: !1422, file: !6, line: 472, type: !801)
!1431 = !DILocation(line: 472, column: 40, scope: !1422, inlinedAt: !1426)
!1432 = !DILocalVariable(name: "order", arg: 3, scope: !1422, file: !6, line: 472, type: !7)
!1433 = !DILocation(line: 472, column: 60, scope: !1422, inlinedAt: !1426)
!1434 = !DILocalVariable(name: "size", arg: 1, scope: !1427, file: !6, line: 478, type: !1386)
!1435 = !DILocation(line: 478, column: 51, scope: !1427, inlinedAt: !1428)
!1436 = !DILocalVariable(name: "flags", arg: 2, scope: !1427, file: !6, line: 478, type: !801)
!1437 = !DILocation(line: 478, column: 63, scope: !1427, inlinedAt: !1428)
!1438 = !DILocalVariable(name: "order", scope: !1427, file: !6, line: 480, type: !7)
!1439 = !DILocation(line: 480, column: 15, scope: !1427, inlinedAt: !1428)
!1440 = !DILocalVariable(name: "size", arg: 1, scope: !1401, file: !6, line: 538, type: !1386)
!1441 = !DILocation(line: 538, column: 45, scope: !1401, inlinedAt: !1402)
!1442 = !DILocalVariable(name: "flags", arg: 2, scope: !1401, file: !6, line: 538, type: !801)
!1443 = !DILocation(line: 538, column: 57, scope: !1401, inlinedAt: !1402)
!1444 = !DILocalVariable(name: "index", scope: !1399, file: !6, line: 542, type: !7)
!1445 = !DILocation(line: 542, column: 16, scope: !1399, inlinedAt: !1402)
!1446 = !DILocalVariable(name: "size", arg: 1, scope: !1383, file: !6, line: 662, type: !1386)
!1447 = !DILocation(line: 662, column: 36, scope: !1383)
!1448 = !DILocalVariable(name: "flags", arg: 2, scope: !1383, file: !6, line: 662, type: !801)
!1449 = !DILocation(line: 662, column: 48, scope: !1383)
!1450 = !DILocation(line: 664, column: 17, scope: !1383)
!1451 = !DILocation(line: 664, column: 23, scope: !1383)
!1452 = !DILocation(line: 664, column: 29, scope: !1383)
!1453 = !DILocation(line: 540, column: 27, scope: !1400, inlinedAt: !1402)
!1454 = !DILocation(line: 540, column: 6, scope: !1400, inlinedAt: !1402)
!1455 = !DILocation(line: 540, column: 6, scope: !1401, inlinedAt: !1402)
!1456 = !DILocation(line: 544, column: 7, scope: !1429, inlinedAt: !1402)
!1457 = !DILocation(line: 544, column: 12, scope: !1429, inlinedAt: !1402)
!1458 = !DILocation(line: 544, column: 7, scope: !1399, inlinedAt: !1402)
!1459 = !DILocation(line: 545, column: 25, scope: !1429, inlinedAt: !1402)
!1460 = !DILocation(line: 545, column: 31, scope: !1429, inlinedAt: !1402)
!1461 = !DILocation(line: 480, column: 33, scope: !1427, inlinedAt: !1428)
!1462 = !DILocation(line: 480, column: 23, scope: !1427, inlinedAt: !1428)
!1463 = !DILocation(line: 481, column: 29, scope: !1427, inlinedAt: !1428)
!1464 = !DILocation(line: 481, column: 35, scope: !1427, inlinedAt: !1428)
!1465 = !DILocation(line: 481, column: 42, scope: !1427, inlinedAt: !1428)
!1466 = !DILocation(line: 474, column: 23, scope: !1422, inlinedAt: !1426)
!1467 = !DILocation(line: 474, column: 29, scope: !1422, inlinedAt: !1426)
!1468 = !DILocation(line: 474, column: 36, scope: !1422, inlinedAt: !1426)
!1469 = !DILocation(line: 474, column: 9, scope: !1422, inlinedAt: !1426)
!1470 = !DILocation(line: 545, column: 4, scope: !1429, inlinedAt: !1402)
!1471 = !DILocation(line: 547, column: 25, scope: !1399, inlinedAt: !1402)
!1472 = !DILocation(line: 348, column: 7, scope: !1473, inlinedAt: !1420)
!1473 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 348, column: 6)
!1474 = !DILocation(line: 348, column: 6, scope: !1416, inlinedAt: !1420)
!1475 = !DILocation(line: 349, column: 3, scope: !1473, inlinedAt: !1420)
!1476 = !DILocation(line: 351, column: 6, scope: !1477, inlinedAt: !1420)
!1477 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 351, column: 6)
!1478 = !DILocation(line: 351, column: 11, scope: !1477, inlinedAt: !1420)
!1479 = !DILocation(line: 351, column: 6, scope: !1416, inlinedAt: !1420)
!1480 = !DILocation(line: 352, column: 3, scope: !1477, inlinedAt: !1420)
!1481 = !DILocation(line: 354, column: 32, scope: !1482, inlinedAt: !1420)
!1482 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 354, column: 6)
!1483 = !DILocation(line: 354, column: 37, scope: !1482, inlinedAt: !1420)
!1484 = !DILocation(line: 354, column: 42, scope: !1482, inlinedAt: !1420)
!1485 = !DILocation(line: 354, column: 45, scope: !1482, inlinedAt: !1420)
!1486 = !DILocation(line: 354, column: 50, scope: !1482, inlinedAt: !1420)
!1487 = !DILocation(line: 354, column: 6, scope: !1416, inlinedAt: !1420)
!1488 = !DILocation(line: 355, column: 3, scope: !1482, inlinedAt: !1420)
!1489 = !DILocation(line: 356, column: 32, scope: !1490, inlinedAt: !1420)
!1490 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 356, column: 6)
!1491 = !DILocation(line: 356, column: 37, scope: !1490, inlinedAt: !1420)
!1492 = !DILocation(line: 356, column: 43, scope: !1490, inlinedAt: !1420)
!1493 = !DILocation(line: 356, column: 46, scope: !1490, inlinedAt: !1420)
!1494 = !DILocation(line: 356, column: 51, scope: !1490, inlinedAt: !1420)
!1495 = !DILocation(line: 356, column: 6, scope: !1416, inlinedAt: !1420)
!1496 = !DILocation(line: 357, column: 3, scope: !1490, inlinedAt: !1420)
!1497 = !DILocation(line: 358, column: 6, scope: !1498, inlinedAt: !1420)
!1498 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 358, column: 6)
!1499 = !DILocation(line: 358, column: 11, scope: !1498, inlinedAt: !1420)
!1500 = !DILocation(line: 358, column: 6, scope: !1416, inlinedAt: !1420)
!1501 = !DILocation(line: 358, column: 26, scope: !1498, inlinedAt: !1420)
!1502 = !DILocation(line: 359, column: 6, scope: !1503, inlinedAt: !1420)
!1503 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 359, column: 6)
!1504 = !DILocation(line: 359, column: 11, scope: !1503, inlinedAt: !1420)
!1505 = !DILocation(line: 359, column: 6, scope: !1416, inlinedAt: !1420)
!1506 = !DILocation(line: 359, column: 26, scope: !1503, inlinedAt: !1420)
!1507 = !DILocation(line: 360, column: 6, scope: !1508, inlinedAt: !1420)
!1508 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 360, column: 6)
!1509 = !DILocation(line: 360, column: 11, scope: !1508, inlinedAt: !1420)
!1510 = !DILocation(line: 360, column: 6, scope: !1416, inlinedAt: !1420)
!1511 = !DILocation(line: 360, column: 26, scope: !1508, inlinedAt: !1420)
!1512 = !DILocation(line: 361, column: 6, scope: !1513, inlinedAt: !1420)
!1513 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 361, column: 6)
!1514 = !DILocation(line: 361, column: 11, scope: !1513, inlinedAt: !1420)
!1515 = !DILocation(line: 361, column: 6, scope: !1416, inlinedAt: !1420)
!1516 = !DILocation(line: 361, column: 26, scope: !1513, inlinedAt: !1420)
!1517 = !DILocation(line: 362, column: 6, scope: !1518, inlinedAt: !1420)
!1518 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 362, column: 6)
!1519 = !DILocation(line: 362, column: 11, scope: !1518, inlinedAt: !1420)
!1520 = !DILocation(line: 362, column: 6, scope: !1416, inlinedAt: !1420)
!1521 = !DILocation(line: 362, column: 26, scope: !1518, inlinedAt: !1420)
!1522 = !DILocation(line: 363, column: 6, scope: !1523, inlinedAt: !1420)
!1523 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 363, column: 6)
!1524 = !DILocation(line: 363, column: 11, scope: !1523, inlinedAt: !1420)
!1525 = !DILocation(line: 363, column: 6, scope: !1416, inlinedAt: !1420)
!1526 = !DILocation(line: 363, column: 26, scope: !1523, inlinedAt: !1420)
!1527 = !DILocation(line: 364, column: 6, scope: !1528, inlinedAt: !1420)
!1528 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 364, column: 6)
!1529 = !DILocation(line: 364, column: 11, scope: !1528, inlinedAt: !1420)
!1530 = !DILocation(line: 364, column: 6, scope: !1416, inlinedAt: !1420)
!1531 = !DILocation(line: 364, column: 26, scope: !1528, inlinedAt: !1420)
!1532 = !DILocation(line: 365, column: 6, scope: !1533, inlinedAt: !1420)
!1533 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 365, column: 6)
!1534 = !DILocation(line: 365, column: 11, scope: !1533, inlinedAt: !1420)
!1535 = !DILocation(line: 365, column: 6, scope: !1416, inlinedAt: !1420)
!1536 = !DILocation(line: 365, column: 26, scope: !1533, inlinedAt: !1420)
!1537 = !DILocation(line: 366, column: 6, scope: !1538, inlinedAt: !1420)
!1538 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 366, column: 6)
!1539 = !DILocation(line: 366, column: 11, scope: !1538, inlinedAt: !1420)
!1540 = !DILocation(line: 366, column: 6, scope: !1416, inlinedAt: !1420)
!1541 = !DILocation(line: 366, column: 26, scope: !1538, inlinedAt: !1420)
!1542 = !DILocation(line: 367, column: 6, scope: !1543, inlinedAt: !1420)
!1543 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 367, column: 6)
!1544 = !DILocation(line: 367, column: 11, scope: !1543, inlinedAt: !1420)
!1545 = !DILocation(line: 367, column: 6, scope: !1416, inlinedAt: !1420)
!1546 = !DILocation(line: 367, column: 26, scope: !1543, inlinedAt: !1420)
!1547 = !DILocation(line: 368, column: 6, scope: !1548, inlinedAt: !1420)
!1548 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 368, column: 6)
!1549 = !DILocation(line: 368, column: 11, scope: !1548, inlinedAt: !1420)
!1550 = !DILocation(line: 368, column: 6, scope: !1416, inlinedAt: !1420)
!1551 = !DILocation(line: 368, column: 26, scope: !1548, inlinedAt: !1420)
!1552 = !DILocation(line: 369, column: 6, scope: !1553, inlinedAt: !1420)
!1553 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 369, column: 6)
!1554 = !DILocation(line: 369, column: 11, scope: !1553, inlinedAt: !1420)
!1555 = !DILocation(line: 369, column: 6, scope: !1416, inlinedAt: !1420)
!1556 = !DILocation(line: 369, column: 26, scope: !1553, inlinedAt: !1420)
!1557 = !DILocation(line: 370, column: 6, scope: !1558, inlinedAt: !1420)
!1558 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 370, column: 6)
!1559 = !DILocation(line: 370, column: 11, scope: !1558, inlinedAt: !1420)
!1560 = !DILocation(line: 370, column: 6, scope: !1416, inlinedAt: !1420)
!1561 = !DILocation(line: 370, column: 26, scope: !1558, inlinedAt: !1420)
!1562 = !DILocation(line: 371, column: 6, scope: !1563, inlinedAt: !1420)
!1563 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 371, column: 6)
!1564 = !DILocation(line: 371, column: 11, scope: !1563, inlinedAt: !1420)
!1565 = !DILocation(line: 371, column: 6, scope: !1416, inlinedAt: !1420)
!1566 = !DILocation(line: 371, column: 26, scope: !1563, inlinedAt: !1420)
!1567 = !DILocation(line: 372, column: 6, scope: !1568, inlinedAt: !1420)
!1568 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 372, column: 6)
!1569 = !DILocation(line: 372, column: 11, scope: !1568, inlinedAt: !1420)
!1570 = !DILocation(line: 372, column: 6, scope: !1416, inlinedAt: !1420)
!1571 = !DILocation(line: 372, column: 26, scope: !1568, inlinedAt: !1420)
!1572 = !DILocation(line: 373, column: 6, scope: !1573, inlinedAt: !1420)
!1573 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 373, column: 6)
!1574 = !DILocation(line: 373, column: 11, scope: !1573, inlinedAt: !1420)
!1575 = !DILocation(line: 373, column: 6, scope: !1416, inlinedAt: !1420)
!1576 = !DILocation(line: 373, column: 26, scope: !1573, inlinedAt: !1420)
!1577 = !DILocation(line: 374, column: 6, scope: !1578, inlinedAt: !1420)
!1578 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 374, column: 6)
!1579 = !DILocation(line: 374, column: 11, scope: !1578, inlinedAt: !1420)
!1580 = !DILocation(line: 374, column: 6, scope: !1416, inlinedAt: !1420)
!1581 = !DILocation(line: 374, column: 26, scope: !1578, inlinedAt: !1420)
!1582 = !DILocation(line: 375, column: 6, scope: !1583, inlinedAt: !1420)
!1583 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 375, column: 6)
!1584 = !DILocation(line: 375, column: 11, scope: !1583, inlinedAt: !1420)
!1585 = !DILocation(line: 375, column: 6, scope: !1416, inlinedAt: !1420)
!1586 = !DILocation(line: 375, column: 27, scope: !1583, inlinedAt: !1420)
!1587 = !DILocation(line: 376, column: 6, scope: !1588, inlinedAt: !1420)
!1588 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 376, column: 6)
!1589 = !DILocation(line: 376, column: 11, scope: !1588, inlinedAt: !1420)
!1590 = !DILocation(line: 376, column: 6, scope: !1416, inlinedAt: !1420)
!1591 = !DILocation(line: 376, column: 32, scope: !1588, inlinedAt: !1420)
!1592 = !DILocation(line: 377, column: 6, scope: !1593, inlinedAt: !1420)
!1593 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 377, column: 6)
!1594 = !DILocation(line: 377, column: 11, scope: !1593, inlinedAt: !1420)
!1595 = !DILocation(line: 377, column: 6, scope: !1416, inlinedAt: !1420)
!1596 = !DILocation(line: 377, column: 32, scope: !1593, inlinedAt: !1420)
!1597 = !DILocation(line: 378, column: 6, scope: !1598, inlinedAt: !1420)
!1598 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 378, column: 6)
!1599 = !DILocation(line: 378, column: 11, scope: !1598, inlinedAt: !1420)
!1600 = !DILocation(line: 378, column: 6, scope: !1416, inlinedAt: !1420)
!1601 = !DILocation(line: 378, column: 32, scope: !1598, inlinedAt: !1420)
!1602 = !DILocation(line: 379, column: 6, scope: !1603, inlinedAt: !1420)
!1603 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 379, column: 6)
!1604 = !DILocation(line: 379, column: 11, scope: !1603, inlinedAt: !1420)
!1605 = !DILocation(line: 379, column: 6, scope: !1416, inlinedAt: !1420)
!1606 = !DILocation(line: 379, column: 33, scope: !1603, inlinedAt: !1420)
!1607 = !DILocation(line: 380, column: 6, scope: !1608, inlinedAt: !1420)
!1608 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 380, column: 6)
!1609 = !DILocation(line: 380, column: 11, scope: !1608, inlinedAt: !1420)
!1610 = !DILocation(line: 380, column: 6, scope: !1416, inlinedAt: !1420)
!1611 = !DILocation(line: 380, column: 33, scope: !1608, inlinedAt: !1420)
!1612 = !DILocation(line: 381, column: 6, scope: !1613, inlinedAt: !1420)
!1613 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 381, column: 6)
!1614 = !DILocation(line: 381, column: 11, scope: !1613, inlinedAt: !1420)
!1615 = !DILocation(line: 381, column: 6, scope: !1416, inlinedAt: !1420)
!1616 = !DILocation(line: 381, column: 33, scope: !1613, inlinedAt: !1420)
!1617 = !DILocation(line: 382, column: 2, scope: !1618, inlinedAt: !1420)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !6, line: 382, column: 2)
!1619 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 382, column: 2)
!1620 = !{i32 -2144106819, i32 -2144106790, i32 -2144106744, i32 -2144106686, i32 -2144106632, i32 -2144106578, i32 -2144106523, i32 -2144106492}
!1621 = !DILocation(line: 382, column: 2, scope: !1622, inlinedAt: !1420)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !6, line: 382, column: 2)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !6, line: 382, column: 2)
!1624 = !{i32 -2144106049, i32 -2144106042, i32 -2144105988, i32 -2144105957, i32 -2144105927}
!1625 = !DILocation(line: 382, column: 2, scope: !1623, inlinedAt: !1420)
!1626 = !DILocation(line: 386, column: 1, scope: !1416, inlinedAt: !1420)
!1627 = !DILocation(line: 547, column: 9, scope: !1399, inlinedAt: !1402)
!1628 = !DILocation(line: 549, column: 8, scope: !1629, inlinedAt: !1402)
!1629 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 549, column: 7)
!1630 = !DILocation(line: 549, column: 7, scope: !1399, inlinedAt: !1402)
!1631 = !DILocation(line: 550, column: 4, scope: !1629, inlinedAt: !1402)
!1632 = !DILocation(line: 553, column: 33, scope: !1399, inlinedAt: !1402)
!1633 = !DILocation(line: 325, column: 6, scope: !1634, inlinedAt: !1414)
!1634 = distinct !DILexicalBlock(scope: !1410, file: !6, line: 325, column: 6)
!1635 = !DILocation(line: 325, column: 6, scope: !1410, inlinedAt: !1414)
!1636 = !DILocation(line: 326, column: 3, scope: !1634, inlinedAt: !1414)
!1637 = !DILocation(line: 332, column: 9, scope: !1410, inlinedAt: !1414)
!1638 = !DILocation(line: 332, column: 15, scope: !1410, inlinedAt: !1414)
!1639 = !DILocation(line: 332, column: 2, scope: !1410, inlinedAt: !1414)
!1640 = !DILocation(line: 336, column: 1, scope: !1410, inlinedAt: !1414)
!1641 = !DILocation(line: 553, column: 5, scope: !1399, inlinedAt: !1402)
!1642 = !DILocation(line: 553, column: 41, scope: !1399, inlinedAt: !1402)
!1643 = !DILocation(line: 554, column: 5, scope: !1399, inlinedAt: !1402)
!1644 = !DILocation(line: 554, column: 12, scope: !1399, inlinedAt: !1402)
!1645 = !DILocation(line: 448, column: 31, scope: !1391, inlinedAt: !1398)
!1646 = !DILocation(line: 448, column: 34, scope: !1391, inlinedAt: !1398)
!1647 = !DILocation(line: 448, column: 14, scope: !1391, inlinedAt: !1398)
!1648 = !DILocation(line: 450, column: 22, scope: !1391, inlinedAt: !1398)
!1649 = !DILocation(line: 450, column: 25, scope: !1391, inlinedAt: !1398)
!1650 = !DILocation(line: 450, column: 30, scope: !1391, inlinedAt: !1398)
!1651 = !DILocation(line: 450, column: 36, scope: !1391, inlinedAt: !1398)
!1652 = !DILocation(line: 450, column: 8, scope: !1391, inlinedAt: !1398)
!1653 = !DILocation(line: 450, column: 6, scope: !1391, inlinedAt: !1398)
!1654 = !DILocation(line: 451, column: 9, scope: !1391, inlinedAt: !1398)
!1655 = !DILocation(line: 552, column: 3, scope: !1399, inlinedAt: !1402)
!1656 = !DILocation(line: 557, column: 19, scope: !1401, inlinedAt: !1402)
!1657 = !DILocation(line: 557, column: 25, scope: !1401, inlinedAt: !1402)
!1658 = !DILocation(line: 557, column: 9, scope: !1401, inlinedAt: !1402)
!1659 = !DILocation(line: 557, column: 2, scope: !1401, inlinedAt: !1402)
!1660 = !DILocation(line: 558, column: 1, scope: !1401, inlinedAt: !1402)
!1661 = !DILocation(line: 664, column: 2, scope: !1383)
!1662 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1663, file: !1663, line: 646, type: !1664, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1663 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!803}
!1666 = !DILocalVariable(name: "__ret", scope: !1667, file: !1663, line: 648, type: !803)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !1663, line: 648, column: 9)
!1668 = !DILocation(line: 648, column: 9, scope: !1667)
!1669 = !DILocalVariable(name: "__edi", scope: !1667, file: !1663, line: 648, type: !803)
!1670 = !DILocalVariable(name: "__esi", scope: !1667, file: !1663, line: 648, type: !803)
!1671 = !DILocalVariable(name: "__edx", scope: !1667, file: !1663, line: 648, type: !803)
!1672 = !DILocalVariable(name: "__ecx", scope: !1667, file: !1663, line: 648, type: !803)
!1673 = !DILocalVariable(name: "__eax", scope: !1667, file: !1663, line: 648, type: !803)
!1674 = !DILocation(line: 648, column: 9, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !1663, line: 648, column: 9)
!1676 = distinct !DILexicalBlock(scope: !1667, file: !1663, line: 648, column: 9)
!1677 = !{i32 -2145780425, i32 -2145778110, i32 -2145777876, i32 -2145777825, i32 -2145777797, i32 -2145777772, i32 -2145778088, i32 -2145778075, i32 -2145777637, i32 -2145777518, i32 -2145777983, i32 -2145777956, i32 -2145777928, i32 -2145777898}
!1678 = !DILocalVariable(name: "__mask", scope: !1679, file: !1663, line: 648, type: !803)
!1679 = distinct !DILexicalBlock(scope: !1675, file: !1663, line: 648, column: 9)
!1680 = !DILocation(line: 648, column: 9, scope: !1679)
!1681 = !DILocation(line: 648, column: 9, scope: !1676)
!1682 = !DILocation(line: 648, column: 2, scope: !1662)
!1683 = distinct !DISubprogram(name: "get_order", scope: !1684, file: !1684, line: 29, type: !1140, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1684 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1685 = !DILocalVariable(name: "x", arg: 1, scope: !1686, file: !1687, line: 366, type: !58)
!1686 = distinct !DISubprogram(name: "fls64", scope: !1687, file: !1687, line: 366, type: !1688, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1687 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!1142, !58}
!1690 = !DILocation(line: 366, column: 40, scope: !1686, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 46, column: 9, scope: !1683)
!1692 = !DILocalVariable(name: "bitpos", scope: !1686, file: !1687, line: 368, type: !1142)
!1693 = !DILocation(line: 368, column: 6, scope: !1686, inlinedAt: !1691)
!1694 = !DILocalVariable(name: "size", arg: 1, scope: !1683, file: !1684, line: 29, type: !803)
!1695 = !DILocation(line: 29, column: 63, scope: !1683)
!1696 = !DILocation(line: 31, column: 27, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1683, file: !1684, line: 31, column: 6)
!1698 = !DILocation(line: 31, column: 6, scope: !1697)
!1699 = !DILocation(line: 31, column: 6, scope: !1683)
!1700 = !DILocation(line: 32, column: 8, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !1684, line: 32, column: 7)
!1702 = distinct !DILexicalBlock(scope: !1697, file: !1684, line: 31, column: 34)
!1703 = !DILocation(line: 32, column: 7, scope: !1702)
!1704 = !DILocation(line: 33, column: 4, scope: !1701)
!1705 = !DILocation(line: 35, column: 7, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !1684, line: 35, column: 7)
!1707 = !DILocation(line: 35, column: 12, scope: !1706)
!1708 = !DILocation(line: 35, column: 7, scope: !1702)
!1709 = !DILocation(line: 36, column: 4, scope: !1706)
!1710 = !DILocation(line: 38, column: 10, scope: !1702)
!1711 = !DILocation(line: 38, column: 28, scope: !1702)
!1712 = !DILocation(line: 38, column: 41, scope: !1702)
!1713 = !DILocation(line: 38, column: 3, scope: !1702)
!1714 = !DILocation(line: 41, column: 6, scope: !1683)
!1715 = !DILocation(line: 42, column: 7, scope: !1683)
!1716 = !DILocation(line: 46, column: 15, scope: !1683)
!1717 = !DILocation(line: 374, column: 2, scope: !1686, inlinedAt: !1691)
!1718 = !DILocation(line: 376, column: 14, scope: !1686, inlinedAt: !1691)
!1719 = !{i32 664383}
!1720 = !DILocation(line: 377, column: 9, scope: !1686, inlinedAt: !1691)
!1721 = !DILocation(line: 377, column: 16, scope: !1686, inlinedAt: !1691)
!1722 = !DILocation(line: 46, column: 2, scope: !1683)
!1723 = !DILocation(line: 48, column: 1, scope: !1683)
!1724 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1725, file: !1725, line: 30, type: !1726, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1725 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1142, !57}
!1728 = !DILocation(line: 366, column: 40, scope: !1686, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 32, column: 9, scope: !1724)
!1730 = !DILocation(line: 368, column: 6, scope: !1686, inlinedAt: !1729)
!1731 = !DILocalVariable(name: "n", arg: 1, scope: !1724, file: !1725, line: 30, type: !57)
!1732 = !DILocation(line: 30, column: 21, scope: !1724)
!1733 = !DILocation(line: 32, column: 15, scope: !1724)
!1734 = !DILocation(line: 374, column: 2, scope: !1686, inlinedAt: !1729)
!1735 = !DILocation(line: 376, column: 14, scope: !1686, inlinedAt: !1729)
!1736 = !DILocation(line: 377, column: 9, scope: !1686, inlinedAt: !1729)
!1737 = !DILocation(line: 377, column: 16, scope: !1686, inlinedAt: !1729)
!1738 = !DILocation(line: 32, column: 18, scope: !1724)
!1739 = !DILocation(line: 32, column: 2, scope: !1724)
!1740 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1741, file: !1741, line: 137, type: !1742, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1741 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!22, !1394, !1744, !1386, !801}
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1746 = !DILocalVariable(name: "s", arg: 1, scope: !1740, file: !1741, line: 137, type: !1394)
!1747 = !DILocation(line: 137, column: 54, scope: !1740)
!1748 = !DILocalVariable(name: "object", arg: 2, scope: !1740, file: !1741, line: 137, type: !1744)
!1749 = !DILocation(line: 137, column: 69, scope: !1740)
!1750 = !DILocalVariable(name: "size", arg: 3, scope: !1740, file: !1741, line: 138, type: !1386)
!1751 = !DILocation(line: 138, column: 12, scope: !1740)
!1752 = !DILocalVariable(name: "flags", arg: 4, scope: !1740, file: !1741, line: 138, type: !801)
!1753 = !DILocation(line: 138, column: 24, scope: !1740)
!1754 = !DILocation(line: 140, column: 17, scope: !1740)
!1755 = !DILocation(line: 140, column: 2, scope: !1740)
