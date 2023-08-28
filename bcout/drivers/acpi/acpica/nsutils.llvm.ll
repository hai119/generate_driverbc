; ModuleID = '../bcout/drivers/acpi/acpica/nsutils.llvm.bc'
source_filename = "drivers/acpi/acpica/nsutils.c"
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
%struct.acpi_namestring_info = type { i8*, i8*, i8*, i32, i32, i32, i8 }
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_scope_state = type { i8*, i8, i8, i16, i16, %struct.acpi_namespace_node* }

@.str = private unnamed_addr constant [12 x i8] c"[NULL NAME]\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_acpi_module_name = internal constant [8 x i8] c"nsutils\00", align 1, !dbg !0
@.str.3 = private unnamed_addr constant [20 x i8] c"Null Node parameter\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid Object Type 0x%X\00", align 1
@acpi_gbl_ns_properties = external dso_local constant [31 x i8], align 16
@.str.5 = private unnamed_addr constant [22 x i8] c"Invalid internal name\00", align 1
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@_ctype = external dso_local constant [0 x i8], align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_print_node_pathname(%struct.acpi_namespace_node* %node, i8* %message) #0 !dbg !819 {
entry:
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %message.addr = alloca i8*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %status = alloca i32, align 4
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !824, metadata !DIExpression()), !dbg !825
  store i8* %message, i8** %message.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %message.addr, metadata !826, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !828, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.declare(metadata i32* %status, metadata !834, metadata !DIExpression()), !dbg !835
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !836
  %tobool = icmp ne %struct.acpi_namespace_node* %0, null, !dbg !836
  br i1 %tobool, label %if.end, label %if.then, !dbg !838

if.then:                                          ; preds = %entry
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #8, !dbg !839
  br label %if.end7, !dbg !841

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !842
  store i64 -2, i64* %length, align 8, !dbg !843
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !844
  %2 = bitcast %struct.acpi_namespace_node* %1 to i8*, !dbg !844
  %call = call i32 @acpi_ns_handle_to_pathname(i8* %2, %struct.acpi_buffer* %buffer, i8 zeroext 1) #8, !dbg !845
  store i32 %call, i32* %status, align 4, !dbg !846
  %3 = load i32, i32* %status, align 4, !dbg !847
  %tobool1 = icmp ne i32 %3, 0, !dbg !847
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !849

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %message.addr, align 8, !dbg !850
  %tobool3 = icmp ne i8* %4, null, !dbg !850
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !853

if.then4:                                         ; preds = %if.then2
  %5 = load i8*, i8** %message.addr, align 8, !dbg !854
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %5) #8, !dbg !856
  br label %if.end5, !dbg !857

if.end5:                                          ; preds = %if.then4, %if.then2
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !858
  %6 = load i8*, i8** %pointer, align 8, !dbg !858
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %6) #8, !dbg !859
  %pointer6 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !860
  %7 = load i8*, i8** %pointer6, align 8, !dbg !860
  call void @acpi_os_free(i8* %7) #8, !dbg !860
  br label %if.end7, !dbg !861

if.end7:                                          ; preds = %if.then, %if.end5, %if.end
  ret void, !dbg !862
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_os_printf(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_handle_to_pathname(i8*, %struct.acpi_buffer*, i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !863 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !867, metadata !DIExpression()), !dbg !868
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !869
  call void @kfree(i8* %0) #8, !dbg !870
  ret void, !dbg !871
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %node) #0 !dbg !872 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !876, metadata !DIExpression()), !dbg !877
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !878
  %tobool = icmp ne %struct.acpi_namespace_node* %0, null, !dbg !878
  br i1 %tobool, label %if.end, label %if.then, !dbg !880

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !881
  store i32 0, i32* %retval, align 4, !dbg !883
  br label %return, !dbg !883

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !884
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %1, i32 0, i32 2, !dbg !884
  %2 = load i8, i8* %type, align 1, !dbg !884
  %conv = zext i8 %2 to i32, !dbg !884
  store i32 %conv, i32* %retval, align 4, !dbg !884
  br label %return, !dbg !884

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !885
  ret i32 %3, !dbg !885
}

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_local(i32 %type) #0 !dbg !886 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !889, metadata !DIExpression()), !dbg !890
  %0 = load i32, i32* %type.addr, align 4, !dbg !891
  %call = call zeroext i8 @acpi_ut_valid_object_type(i32 %0) #8, !dbg !893
  %tobool = icmp ne i8 %call, 0, !dbg !893
  br i1 %tobool, label %if.end, label %if.then, !dbg !894

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4, !dbg !895
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %1) #8, !dbg !895
  store i32 0, i32* %retval, align 4, !dbg !897
  br label %return, !dbg !897

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %type.addr, align 4, !dbg !898
  %idxprom = zext i32 %2 to i64, !dbg !898
  %arrayidx = getelementptr [31 x i8], [31 x i8]* @acpi_gbl_ns_properties, i64 0, i64 %idxprom, !dbg !898
  %3 = load i8, i8* %arrayidx, align 1, !dbg !898
  %conv = zext i8 %3 to i32, !dbg !898
  %and = and i32 %conv, 2, !dbg !898
  store i32 %and, i32* %retval, align 4, !dbg !898
  br label %return, !dbg !898

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !899
  ret i32 %4, !dbg !899
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_valid_object_type(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_get_internal_name_length(%struct.acpi_namestring_info* %info) #0 !dbg !900 {
entry:
  %info.addr = alloca %struct.acpi_namestring_info*, align 8
  %next_external_char = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.acpi_namestring_info* %info, %struct.acpi_namestring_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namestring_info** %info.addr, metadata !913, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.declare(metadata i8** %next_external_char, metadata !915, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.declare(metadata i32* %i, metadata !917, metadata !DIExpression()), !dbg !918
  %0 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !919
  %external_name = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %0, i32 0, i32 0, !dbg !920
  %1 = load i8*, i8** %external_name, align 8, !dbg !920
  store i8* %1, i8** %next_external_char, align 8, !dbg !921
  %2 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !922
  %num_carats = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %2, i32 0, i32 5, !dbg !923
  store i32 0, i32* %num_carats, align 8, !dbg !924
  %3 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !925
  %num_segments = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %3, i32 0, i32 4, !dbg !926
  store i32 0, i32* %num_segments, align 4, !dbg !927
  %4 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !928
  %fully_qualified = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %4, i32 0, i32 6, !dbg !929
  store i8 0, i8* %fully_qualified, align 4, !dbg !930
  %5 = load i8*, i8** %next_external_char, align 8, !dbg !931
  %6 = load i8, i8* %5, align 1, !dbg !931
  %conv = sext i8 %6 to i32, !dbg !931
  %cmp = icmp eq i32 %conv, 92, !dbg !931
  br i1 %cmp, label %if.then, label %if.else, !dbg !933

if.then:                                          ; preds = %entry
  %7 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !934
  %fully_qualified2 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %7, i32 0, i32 6, !dbg !936
  store i8 1, i8* %fully_qualified2, align 4, !dbg !937
  %8 = load i8*, i8** %next_external_char, align 8, !dbg !938
  %incdec.ptr = getelementptr i8, i8* %8, i32 1, !dbg !938
  store i8* %incdec.ptr, i8** %next_external_char, align 8, !dbg !938
  br label %while.cond, !dbg !939

while.cond:                                       ; preds = %while.body, %if.then
  %9 = load i8*, i8** %next_external_char, align 8, !dbg !940
  %10 = load i8, i8* %9, align 1, !dbg !940
  %conv3 = sext i8 %10 to i32, !dbg !940
  %cmp4 = icmp eq i32 %conv3, 92, !dbg !940
  br i1 %cmp4, label %while.body, label %while.end, !dbg !939

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %next_external_char, align 8, !dbg !941
  %incdec.ptr6 = getelementptr i8, i8* %11, i32 1, !dbg !941
  store i8* %incdec.ptr6, i8** %next_external_char, align 8, !dbg !941
  br label %while.cond, !dbg !939, !llvm.loop !943

while.end:                                        ; preds = %while.cond
  br label %if.end, !dbg !945

if.else:                                          ; preds = %entry
  br label %while.cond7, !dbg !946

while.cond7:                                      ; preds = %while.body11, %if.else
  %12 = load i8*, i8** %next_external_char, align 8, !dbg !948
  %13 = load i8, i8* %12, align 1, !dbg !948
  %conv8 = sext i8 %13 to i32, !dbg !948
  %cmp9 = icmp eq i32 %conv8, 94, !dbg !948
  br i1 %cmp9, label %while.body11, label %while.end14, !dbg !946

while.body11:                                     ; preds = %while.cond7
  %14 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !949
  %num_carats12 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %14, i32 0, i32 5, !dbg !951
  %15 = load i32, i32* %num_carats12, align 8, !dbg !952
  %inc = add i32 %15, 1, !dbg !952
  store i32 %inc, i32* %num_carats12, align 8, !dbg !952
  %16 = load i8*, i8** %next_external_char, align 8, !dbg !953
  %incdec.ptr13 = getelementptr i8, i8* %16, i32 1, !dbg !953
  store i8* %incdec.ptr13, i8** %next_external_char, align 8, !dbg !953
  br label %while.cond7, !dbg !946, !llvm.loop !954

while.end14:                                      ; preds = %while.cond7
  br label %if.end

if.end:                                           ; preds = %while.end14, %while.end
  %17 = load i8*, i8** %next_external_char, align 8, !dbg !956
  %18 = load i8, i8* %17, align 1, !dbg !958
  %tobool = icmp ne i8 %18, 0, !dbg !958
  br i1 %tobool, label %if.then15, label %if.end28, !dbg !959

if.then15:                                        ; preds = %if.end
  %19 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !960
  %num_segments16 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %19, i32 0, i32 4, !dbg !962
  store i32 1, i32* %num_segments16, align 4, !dbg !963
  store i32 0, i32* %i, align 4, !dbg !964
  br label %for.cond, !dbg !966

for.cond:                                         ; preds = %for.inc, %if.then15
  %20 = load i8*, i8** %next_external_char, align 8, !dbg !967
  %21 = load i32, i32* %i, align 4, !dbg !969
  %idxprom = zext i32 %21 to i64, !dbg !967
  %arrayidx = getelementptr i8, i8* %20, i64 %idxprom, !dbg !967
  %22 = load i8, i8* %arrayidx, align 1, !dbg !967
  %tobool17 = icmp ne i8 %22, 0, !dbg !970
  br i1 %tobool17, label %for.body, label %for.end, !dbg !970

for.body:                                         ; preds = %for.cond
  %23 = load i8*, i8** %next_external_char, align 8, !dbg !971
  %24 = load i32, i32* %i, align 4, !dbg !971
  %idxprom18 = zext i32 %24 to i64, !dbg !971
  %arrayidx19 = getelementptr i8, i8* %23, i64 %idxprom18, !dbg !971
  %25 = load i8, i8* %arrayidx19, align 1, !dbg !971
  %conv20 = sext i8 %25 to i32, !dbg !971
  %cmp21 = icmp eq i32 %conv20, 46, !dbg !971
  br i1 %cmp21, label %if.then23, label %if.end26, !dbg !974

if.then23:                                        ; preds = %for.body
  %26 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !975
  %num_segments24 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %26, i32 0, i32 4, !dbg !977
  %27 = load i32, i32* %num_segments24, align 4, !dbg !978
  %inc25 = add i32 %27, 1, !dbg !978
  store i32 %inc25, i32* %num_segments24, align 4, !dbg !978
  br label %if.end26, !dbg !979

if.end26:                                         ; preds = %if.then23, %for.body
  br label %for.inc, !dbg !980

for.inc:                                          ; preds = %if.end26
  %28 = load i32, i32* %i, align 4, !dbg !981
  %inc27 = add i32 %28, 1, !dbg !981
  store i32 %inc27, i32* %i, align 4, !dbg !981
  br label %for.cond, !dbg !982, !llvm.loop !983

for.end:                                          ; preds = %for.cond
  br label %if.end28, !dbg !985

if.end28:                                         ; preds = %for.end, %if.end
  %29 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !986
  %num_segments29 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %29, i32 0, i32 4, !dbg !987
  %30 = load i32, i32* %num_segments29, align 4, !dbg !987
  %mul = mul i32 4, %30, !dbg !988
  %add = add i32 %mul, 4, !dbg !989
  %31 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !990
  %num_carats30 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %31, i32 0, i32 5, !dbg !991
  %32 = load i32, i32* %num_carats30, align 8, !dbg !991
  %add31 = add i32 %add, %32, !dbg !992
  %33 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !993
  %length = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %33, i32 0, i32 3, !dbg !994
  store i32 %add31, i32* %length, align 8, !dbg !995
  %34 = load i8*, i8** %next_external_char, align 8, !dbg !996
  %35 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !997
  %next_external_char32 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %35, i32 0, i32 1, !dbg !998
  store i8* %34, i8** %next_external_char32, align 8, !dbg !999
  ret void, !dbg !1000
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_build_internal_name(%struct.acpi_namestring_info* %info) #0 !dbg !1001 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_namestring_info*, align 8
  %num_segments = alloca i32, align 4
  %internal_name = alloca i8*, align 8
  %external_name = alloca i8*, align 8
  %result = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.acpi_namestring_info* %info, %struct.acpi_namestring_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namestring_info** %info.addr, metadata !1004, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.declare(metadata i32* %num_segments, metadata !1006, metadata !DIExpression()), !dbg !1007
  %0 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !1008
  %num_segments1 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %0, i32 0, i32 4, !dbg !1009
  %1 = load i32, i32* %num_segments1, align 4, !dbg !1009
  store i32 %1, i32* %num_segments, align 4, !dbg !1007
  call void @llvm.dbg.declare(metadata i8** %internal_name, metadata !1010, metadata !DIExpression()), !dbg !1011
  %2 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !1012
  %internal_name2 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %2, i32 0, i32 2, !dbg !1013
  %3 = load i8*, i8** %internal_name2, align 8, !dbg !1013
  store i8* %3, i8** %internal_name, align 8, !dbg !1011
  call void @llvm.dbg.declare(metadata i8** %external_name, metadata !1014, metadata !DIExpression()), !dbg !1015
  %4 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !1016
  %next_external_char = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %4, i32 0, i32 1, !dbg !1017
  %5 = load i8*, i8** %next_external_char, align 8, !dbg !1017
  store i8* %5, i8** %external_name, align 8, !dbg !1015
  call void @llvm.dbg.declare(metadata i8** %result, metadata !1018, metadata !DIExpression()), !dbg !1019
  store i8* null, i8** %result, align 8, !dbg !1019
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1020, metadata !DIExpression()), !dbg !1021
  %6 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !1022
  %fully_qualified = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %6, i32 0, i32 6, !dbg !1024
  %7 = load i8, i8* %fully_qualified, align 4, !dbg !1024
  %tobool = icmp ne i8 %7, 0, !dbg !1022
  br i1 %tobool, label %if.then, label %if.else14, !dbg !1025

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %internal_name, align 8, !dbg !1026
  %arrayidx = getelementptr i8, i8* %8, i64 0, !dbg !1026
  store i8 92, i8* %arrayidx, align 1, !dbg !1028
  %9 = load i32, i32* %num_segments, align 4, !dbg !1029
  %cmp = icmp ule i32 %9, 1, !dbg !1031
  br i1 %cmp, label %if.then3, label %if.else, !dbg !1032

if.then3:                                         ; preds = %if.then
  %10 = load i8*, i8** %internal_name, align 8, !dbg !1033
  %arrayidx4 = getelementptr i8, i8* %10, i64 1, !dbg !1033
  store i8* %arrayidx4, i8** %result, align 8, !dbg !1035
  br label %if.end13, !dbg !1036

if.else:                                          ; preds = %if.then
  %11 = load i32, i32* %num_segments, align 4, !dbg !1037
  %cmp5 = icmp eq i32 %11, 2, !dbg !1039
  br i1 %cmp5, label %if.then6, label %if.else9, !dbg !1040

if.then6:                                         ; preds = %if.else
  %12 = load i8*, i8** %internal_name, align 8, !dbg !1041
  %arrayidx7 = getelementptr i8, i8* %12, i64 1, !dbg !1041
  store i8 46, i8* %arrayidx7, align 1, !dbg !1043
  %13 = load i8*, i8** %internal_name, align 8, !dbg !1044
  %arrayidx8 = getelementptr i8, i8* %13, i64 2, !dbg !1044
  store i8* %arrayidx8, i8** %result, align 8, !dbg !1045
  br label %if.end, !dbg !1046

if.else9:                                         ; preds = %if.else
  %14 = load i8*, i8** %internal_name, align 8, !dbg !1047
  %arrayidx10 = getelementptr i8, i8* %14, i64 1, !dbg !1047
  store i8 47, i8* %arrayidx10, align 1, !dbg !1049
  %15 = load i32, i32* %num_segments, align 4, !dbg !1050
  %conv = trunc i32 %15 to i8, !dbg !1051
  %16 = load i8*, i8** %internal_name, align 8, !dbg !1052
  %arrayidx11 = getelementptr i8, i8* %16, i64 2, !dbg !1052
  store i8 %conv, i8* %arrayidx11, align 1, !dbg !1053
  %17 = load i8*, i8** %internal_name, align 8, !dbg !1054
  %arrayidx12 = getelementptr i8, i8* %17, i64 3, !dbg !1054
  store i8* %arrayidx12, i8** %result, align 8, !dbg !1055
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then6
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then3
  br label %if.end47, !dbg !1056

if.else14:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !1057
  %18 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !1059
  %num_carats = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %18, i32 0, i32 5, !dbg !1061
  %19 = load i32, i32* %num_carats, align 8, !dbg !1061
  %tobool15 = icmp ne i32 %19, 0, !dbg !1059
  br i1 %tobool15, label %if.then16, label %if.end21, !dbg !1062

if.then16:                                        ; preds = %if.else14
  store i32 0, i32* %i, align 4, !dbg !1063
  br label %for.cond, !dbg !1066

for.cond:                                         ; preds = %for.inc, %if.then16
  %20 = load i32, i32* %i, align 4, !dbg !1067
  %21 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !1069
  %num_carats17 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %21, i32 0, i32 5, !dbg !1070
  %22 = load i32, i32* %num_carats17, align 8, !dbg !1070
  %cmp18 = icmp ult i32 %20, %22, !dbg !1071
  br i1 %cmp18, label %for.body, label %for.end, !dbg !1072

for.body:                                         ; preds = %for.cond
  %23 = load i8*, i8** %internal_name, align 8, !dbg !1073
  %24 = load i32, i32* %i, align 4, !dbg !1075
  %idxprom = zext i32 %24 to i64, !dbg !1073
  %arrayidx20 = getelementptr i8, i8* %23, i64 %idxprom, !dbg !1073
  store i8 94, i8* %arrayidx20, align 1, !dbg !1076
  br label %for.inc, !dbg !1077

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !dbg !1078
  %inc = add i32 %25, 1, !dbg !1078
  store i32 %inc, i32* %i, align 4, !dbg !1078
  br label %for.cond, !dbg !1079, !llvm.loop !1080

for.end:                                          ; preds = %for.cond
  br label %if.end21, !dbg !1082

if.end21:                                         ; preds = %for.end, %if.else14
  %26 = load i32, i32* %num_segments, align 4, !dbg !1083
  %cmp22 = icmp ule i32 %26, 1, !dbg !1085
  br i1 %cmp22, label %if.then24, label %if.else27, !dbg !1086

if.then24:                                        ; preds = %if.end21
  %27 = load i8*, i8** %internal_name, align 8, !dbg !1087
  %28 = load i32, i32* %i, align 4, !dbg !1089
  %idxprom25 = zext i32 %28 to i64, !dbg !1087
  %arrayidx26 = getelementptr i8, i8* %27, i64 %idxprom25, !dbg !1087
  store i8* %arrayidx26, i8** %result, align 8, !dbg !1090
  br label %if.end46, !dbg !1091

if.else27:                                        ; preds = %if.end21
  %29 = load i32, i32* %num_segments, align 4, !dbg !1092
  %cmp28 = icmp eq i32 %29, 2, !dbg !1094
  br i1 %cmp28, label %if.then30, label %if.else35, !dbg !1095

if.then30:                                        ; preds = %if.else27
  %30 = load i8*, i8** %internal_name, align 8, !dbg !1096
  %31 = load i32, i32* %i, align 4, !dbg !1098
  %idxprom31 = zext i32 %31 to i64, !dbg !1096
  %arrayidx32 = getelementptr i8, i8* %30, i64 %idxprom31, !dbg !1096
  store i8 46, i8* %arrayidx32, align 1, !dbg !1099
  %32 = load i8*, i8** %internal_name, align 8, !dbg !1100
  %33 = load i32, i32* %i, align 4, !dbg !1101
  %conv33 = zext i32 %33 to i64, !dbg !1102
  %add = add i64 %conv33, 1, !dbg !1103
  %arrayidx34 = getelementptr i8, i8* %32, i64 %add, !dbg !1100
  store i8* %arrayidx34, i8** %result, align 8, !dbg !1104
  br label %if.end45, !dbg !1105

if.else35:                                        ; preds = %if.else27
  %34 = load i8*, i8** %internal_name, align 8, !dbg !1106
  %35 = load i32, i32* %i, align 4, !dbg !1108
  %idxprom36 = zext i32 %35 to i64, !dbg !1106
  %arrayidx37 = getelementptr i8, i8* %34, i64 %idxprom36, !dbg !1106
  store i8 47, i8* %arrayidx37, align 1, !dbg !1109
  %36 = load i32, i32* %num_segments, align 4, !dbg !1110
  %conv38 = trunc i32 %36 to i8, !dbg !1111
  %37 = load i8*, i8** %internal_name, align 8, !dbg !1112
  %38 = load i32, i32* %i, align 4, !dbg !1113
  %conv39 = zext i32 %38 to i64, !dbg !1114
  %add40 = add i64 %conv39, 1, !dbg !1115
  %arrayidx41 = getelementptr i8, i8* %37, i64 %add40, !dbg !1112
  store i8 %conv38, i8* %arrayidx41, align 1, !dbg !1116
  %39 = load i8*, i8** %internal_name, align 8, !dbg !1117
  %40 = load i32, i32* %i, align 4, !dbg !1118
  %conv42 = zext i32 %40 to i64, !dbg !1119
  %add43 = add i64 %conv42, 2, !dbg !1120
  %arrayidx44 = getelementptr i8, i8* %39, i64 %add43, !dbg !1117
  store i8* %arrayidx44, i8** %result, align 8, !dbg !1121
  br label %if.end45

if.end45:                                         ; preds = %if.else35, %if.then30
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then24
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end13
  br label %for.cond48, !dbg !1122

for.cond48:                                       ; preds = %for.inc82, %if.end47
  %41 = load i32, i32* %num_segments, align 4, !dbg !1123
  %tobool49 = icmp ne i32 %41, 0, !dbg !1126
  br i1 %tobool49, label %for.body50, label %for.end83, !dbg !1126

for.body50:                                       ; preds = %for.cond48
  store i32 0, i32* %i, align 4, !dbg !1127
  br label %for.cond51, !dbg !1130

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %42 = load i32, i32* %i, align 4, !dbg !1131
  %cmp52 = icmp ult i32 %42, 4, !dbg !1133
  br i1 %cmp52, label %for.body54, label %for.end72, !dbg !1134

for.body54:                                       ; preds = %for.cond51
  %43 = load i8*, i8** %external_name, align 8, !dbg !1135
  %44 = load i8, i8* %43, align 1, !dbg !1135
  %conv55 = sext i8 %44 to i32, !dbg !1135
  %cmp56 = icmp eq i32 %conv55, 46, !dbg !1135
  br i1 %cmp56, label %if.then61, label %lor.lhs.false, !dbg !1138

lor.lhs.false:                                    ; preds = %for.body54
  %45 = load i8*, i8** %external_name, align 8, !dbg !1139
  %46 = load i8, i8* %45, align 1, !dbg !1140
  %conv58 = sext i8 %46 to i32, !dbg !1140
  %cmp59 = icmp eq i32 %conv58, 0, !dbg !1141
  br i1 %cmp59, label %if.then61, label %if.else64, !dbg !1142

if.then61:                                        ; preds = %lor.lhs.false, %for.body54
  %47 = load i8*, i8** %result, align 8, !dbg !1143
  %48 = load i32, i32* %i, align 4, !dbg !1145
  %idxprom62 = zext i32 %48 to i64, !dbg !1143
  %arrayidx63 = getelementptr i8, i8* %47, i64 %idxprom62, !dbg !1143
  store i8 95, i8* %arrayidx63, align 1, !dbg !1146
  br label %if.end69, !dbg !1147

if.else64:                                        ; preds = %lor.lhs.false
  %49 = load i8*, i8** %external_name, align 8, !dbg !1148
  %50 = load i8, i8* %49, align 1, !dbg !1148
  %conv65 = sext i8 %50 to i32, !dbg !1148
  %conv66 = trunc i32 %conv65 to i8, !dbg !1148
  %call = call zeroext i8 @__toupper(i8 zeroext %conv66) #8, !dbg !1148
  %51 = load i8*, i8** %result, align 8, !dbg !1150
  %52 = load i32, i32* %i, align 4, !dbg !1151
  %idxprom67 = zext i32 %52 to i64, !dbg !1150
  %arrayidx68 = getelementptr i8, i8* %51, i64 %idxprom67, !dbg !1150
  store i8 %call, i8* %arrayidx68, align 1, !dbg !1152
  %53 = load i8*, i8** %external_name, align 8, !dbg !1153
  %incdec.ptr = getelementptr i8, i8* %53, i32 1, !dbg !1153
  store i8* %incdec.ptr, i8** %external_name, align 8, !dbg !1153
  br label %if.end69

if.end69:                                         ; preds = %if.else64, %if.then61
  br label %for.inc70, !dbg !1154

for.inc70:                                        ; preds = %if.end69
  %54 = load i32, i32* %i, align 4, !dbg !1155
  %inc71 = add i32 %54, 1, !dbg !1155
  store i32 %inc71, i32* %i, align 4, !dbg !1155
  br label %for.cond51, !dbg !1156, !llvm.loop !1157

for.end72:                                        ; preds = %for.cond51
  %55 = load i8*, i8** %external_name, align 8, !dbg !1159
  %56 = load i8, i8* %55, align 1, !dbg !1159
  %conv73 = sext i8 %56 to i32, !dbg !1159
  %cmp74 = icmp eq i32 %conv73, 46, !dbg !1159
  br i1 %cmp74, label %if.end80, label %land.lhs.true, !dbg !1161

land.lhs.true:                                    ; preds = %for.end72
  %57 = load i8*, i8** %external_name, align 8, !dbg !1162
  %58 = load i8, i8* %57, align 1, !dbg !1163
  %conv76 = sext i8 %58 to i32, !dbg !1163
  %cmp77 = icmp ne i32 %conv76, 0, !dbg !1164
  br i1 %cmp77, label %if.then79, label %if.end80, !dbg !1165

if.then79:                                        ; preds = %land.lhs.true
  store i32 4099, i32* %retval, align 4, !dbg !1166
  br label %return, !dbg !1166

if.end80:                                         ; preds = %land.lhs.true, %for.end72
  %59 = load i8*, i8** %external_name, align 8, !dbg !1168
  %incdec.ptr81 = getelementptr i8, i8* %59, i32 1, !dbg !1168
  store i8* %incdec.ptr81, i8** %external_name, align 8, !dbg !1168
  %60 = load i8*, i8** %result, align 8, !dbg !1169
  %add.ptr = getelementptr i8, i8* %60, i64 4, !dbg !1169
  store i8* %add.ptr, i8** %result, align 8, !dbg !1169
  br label %for.inc82, !dbg !1170

for.inc82:                                        ; preds = %if.end80
  %61 = load i32, i32* %num_segments, align 4, !dbg !1171
  %dec = add i32 %61, -1, !dbg !1171
  store i32 %dec, i32* %num_segments, align 4, !dbg !1171
  br label %for.cond48, !dbg !1172, !llvm.loop !1173

for.end83:                                        ; preds = %for.cond48
  %62 = load i8*, i8** %result, align 8, !dbg !1175
  store i8 0, i8* %62, align 1, !dbg !1176
  %63 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %info.addr, align 8, !dbg !1177
  %fully_qualified84 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %63, i32 0, i32 6, !dbg !1179
  %64 = load i8, i8* %fully_qualified84, align 4, !dbg !1179
  %tobool85 = icmp ne i8 %64, 0, !dbg !1177
  br i1 %tobool85, label %if.then86, label %if.else87, !dbg !1180

if.then86:                                        ; preds = %for.end83
  br label %if.end88, !dbg !1181

if.else87:                                        ; preds = %for.end83
  br label %if.end88

if.end88:                                         ; preds = %if.else87, %if.then86
  store i32 0, i32* %retval, align 4, !dbg !1183
  br label %return, !dbg !1183

return:                                           ; preds = %if.end88, %if.then79
  %65 = load i32, i32* %retval, align 4, !dbg !1184
  ret i32 %65, !dbg !1184
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @__toupper(i8 zeroext %c) #0 !dbg !1185 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !1189, metadata !DIExpression()), !dbg !1190
  %0 = load i8, i8* %c.addr, align 1, !dbg !1191
  %conv = zext i8 %0 to i32, !dbg !1191
  %idxprom = sext i32 %conv to i64, !dbg !1191
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !1191
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1191
  %conv1 = zext i8 %1 to i32, !dbg !1191
  %and = and i32 %conv1, 2, !dbg !1191
  %cmp = icmp ne i32 %and, 0, !dbg !1191
  br i1 %cmp, label %if.then, label %if.end, !dbg !1193

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1, !dbg !1194
  %conv3 = zext i8 %2 to i32, !dbg !1194
  %sub = sub i32 %conv3, 32, !dbg !1194
  %conv4 = trunc i32 %sub to i8, !dbg !1194
  store i8 %conv4, i8* %c.addr, align 1, !dbg !1194
  br label %if.end, !dbg !1195

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %c.addr, align 1, !dbg !1196
  ret i8 %3, !dbg !1197
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_internalize_name(i8* %external_name, i8** %converted_name) #0 !dbg !1198 {
entry:
  %retval = alloca i32, align 4
  %external_name.addr = alloca i8*, align 8
  %converted_name.addr = alloca i8**, align 8
  %internal_name = alloca i8*, align 8
  %info = alloca %struct.acpi_namestring_info, align 8
  %status = alloca i32, align 4
  store i8* %external_name, i8** %external_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %external_name.addr, metadata !1202, metadata !DIExpression()), !dbg !1203
  store i8** %converted_name, i8*** %converted_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %converted_name.addr, metadata !1204, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.declare(metadata i8** %internal_name, metadata !1206, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.declare(metadata %struct.acpi_namestring_info* %info, metadata !1208, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1210, metadata !DIExpression()), !dbg !1211
  %0 = load i8*, i8** %external_name.addr, align 8, !dbg !1212
  %tobool = icmp ne i8* %0, null, !dbg !1212
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1214

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %external_name.addr, align 8, !dbg !1215
  %2 = load i8, i8* %1, align 1, !dbg !1216
  %conv = sext i8 %2 to i32, !dbg !1216
  %cmp = icmp eq i32 %conv, 0, !dbg !1217
  br i1 %cmp, label %if.then, label %lor.lhs.false2, !dbg !1218

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i8**, i8*** %converted_name.addr, align 8, !dbg !1219
  %tobool3 = icmp ne i8** %3, null, !dbg !1219
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1220

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1221
  br label %return, !dbg !1221

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load i8*, i8** %external_name.addr, align 8, !dbg !1223
  %external_name4 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %info, i32 0, i32 0, !dbg !1224
  store i8* %4, i8** %external_name4, align 8, !dbg !1225
  call void @acpi_ns_get_internal_name_length(%struct.acpi_namestring_info* %info) #8, !dbg !1226
  %length = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %info, i32 0, i32 3, !dbg !1227
  %5 = load i32, i32* %length, align 8, !dbg !1227
  %conv5 = zext i32 %5 to i64, !dbg !1227
  %call = call i8* @acpi_os_allocate_zeroed(i64 %conv5) #8, !dbg !1227
  store i8* %call, i8** %internal_name, align 8, !dbg !1228
  %6 = load i8*, i8** %internal_name, align 8, !dbg !1229
  %tobool6 = icmp ne i8* %6, null, !dbg !1229
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1231

if.then7:                                         ; preds = %if.end
  store i32 4, i32* %retval, align 4, !dbg !1232
  br label %return, !dbg !1232

if.end8:                                          ; preds = %if.end
  %7 = load i8*, i8** %internal_name, align 8, !dbg !1234
  %internal_name9 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %info, i32 0, i32 2, !dbg !1235
  store i8* %7, i8** %internal_name9, align 8, !dbg !1236
  %call10 = call i32 @acpi_ns_build_internal_name(%struct.acpi_namestring_info* %info) #8, !dbg !1237
  store i32 %call10, i32* %status, align 4, !dbg !1238
  %8 = load i32, i32* %status, align 4, !dbg !1239
  %tobool11 = icmp ne i32 %8, 0, !dbg !1239
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1241

if.then12:                                        ; preds = %if.end8
  %9 = load i8*, i8** %internal_name, align 8, !dbg !1242
  call void @acpi_os_free(i8* %9) #8, !dbg !1242
  %10 = load i32, i32* %status, align 4, !dbg !1244
  store i32 %10, i32* %retval, align 4, !dbg !1244
  br label %return, !dbg !1244

if.end13:                                         ; preds = %if.end8
  %11 = load i8*, i8** %internal_name, align 8, !dbg !1245
  %12 = load i8**, i8*** %converted_name.addr, align 8, !dbg !1246
  store i8* %11, i8** %12, align 8, !dbg !1247
  store i32 0, i32* %retval, align 4, !dbg !1248
  br label %return, !dbg !1248

return:                                           ; preds = %if.end13, %if.then12, %if.then7, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !1249
  ret i32 %13, !dbg !1249
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1250 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1253, metadata !DIExpression()), !dbg !1258
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1262, metadata !DIExpression()), !dbg !1263
  %0 = load i64, i64* %size.addr, align 8, !dbg !1264
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1265, metadata !DIExpression()), !dbg !1266
  br label %do.body, !dbg !1266

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1267, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1271, metadata !DIExpression()), !dbg !1270
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1270
  %conv = zext i1 %cmp to i32, !dbg !1270
  store i32 1, i32* %tmp, align 4, !dbg !1270
  %1 = load i32, i32* %tmp, align 4, !dbg !1270
  %call = call i64 @arch_local_save_flags() #8, !dbg !1272
  store i64 %call, i64* %_flags, align 8, !dbg !1272
  br label %do.end, !dbg !1272

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1273, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1276, metadata !DIExpression()), !dbg !1275
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1275
  %conv6 = zext i1 %cmp5 to i32, !dbg !1275
  store i32 1, i32* %tmp7, align 4, !dbg !1275
  %2 = load i32, i32* %tmp7, align 4, !dbg !1275
  %3 = load i64, i64* %_flags, align 8, !dbg !1277
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1278
  %and.i = and i64 %4, 512, !dbg !1279
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1280
  %lnot.i = xor i1 %tobool.i, true, !dbg !1280
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1280
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1277
  %5 = load i32, i32* %tmp8, align 4, !dbg !1277
  store i32 %5, i32* %tmp1, align 4, !dbg !1272
  %6 = load i32, i32* %tmp1, align 4, !dbg !1266
  %tobool = icmp ne i32 %6, 0, !dbg !1281
  %7 = zext i1 %tobool to i64, !dbg !1281
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1281
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1282
  ret i8* %call10, !dbg !1283
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_externalize_name(i32 %internal_name_length, i8* %internal_name, i32* %converted_name_length, i8** %converted_name) #0 !dbg !1284 {
entry:
  %retval = alloca i32, align 4
  %internal_name_length.addr = alloca i32, align 4
  %internal_name.addr = alloca i8*, align 8
  %converted_name_length.addr = alloca i32*, align 8
  %converted_name.addr = alloca i8**, align 8
  %names_index = alloca i32, align 4
  %num_segments = alloca i32, align 4
  %required_length = alloca i32, align 4
  %prefix_length = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %internal_name_length, i32* %internal_name_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %internal_name_length.addr, metadata !1287, metadata !DIExpression()), !dbg !1288
  store i8* %internal_name, i8** %internal_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %internal_name.addr, metadata !1289, metadata !DIExpression()), !dbg !1290
  store i32* %converted_name_length, i32** %converted_name_length.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %converted_name_length.addr, metadata !1291, metadata !DIExpression()), !dbg !1292
  store i8** %converted_name, i8*** %converted_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %converted_name.addr, metadata !1293, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.declare(metadata i32* %names_index, metadata !1295, metadata !DIExpression()), !dbg !1296
  store i32 0, i32* %names_index, align 4, !dbg !1296
  call void @llvm.dbg.declare(metadata i32* %num_segments, metadata !1297, metadata !DIExpression()), !dbg !1298
  store i32 0, i32* %num_segments, align 4, !dbg !1298
  call void @llvm.dbg.declare(metadata i32* %required_length, metadata !1299, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.declare(metadata i32* %prefix_length, metadata !1301, metadata !DIExpression()), !dbg !1302
  store i32 0, i32* %prefix_length, align 4, !dbg !1302
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1303, metadata !DIExpression()), !dbg !1304
  store i32 0, i32* %i, align 4, !dbg !1304
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1305, metadata !DIExpression()), !dbg !1306
  store i32 0, i32* %j, align 4, !dbg !1306
  %0 = load i32, i32* %internal_name_length.addr, align 4, !dbg !1307
  %tobool = icmp ne i32 %0, 0, !dbg !1307
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1309

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %internal_name.addr, align 8, !dbg !1310
  %tobool1 = icmp ne i8* %1, null, !dbg !1310
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1311

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8**, i8*** %converted_name.addr, align 8, !dbg !1312
  %tobool3 = icmp ne i8** %2, null, !dbg !1312
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1313

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1314
  br label %return, !dbg !1314

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load i8*, i8** %internal_name.addr, align 8, !dbg !1316
  %arrayidx = getelementptr i8, i8* %3, i64 0, !dbg !1316
  %4 = load i8, i8* %arrayidx, align 1, !dbg !1316
  %conv = sext i8 %4 to i32, !dbg !1316
  switch i32 %conv, label %sw.default [
    i32 92, label %sw.bb
    i32 94, label %sw.bb4
  ], !dbg !1317

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %prefix_length, align 4, !dbg !1318
  br label %sw.epilog, !dbg !1320

sw.bb4:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !1321
  br label %for.cond, !dbg !1323

for.cond:                                         ; preds = %for.inc, %sw.bb4
  %5 = load i32, i32* %i, align 4, !dbg !1324
  %6 = load i32, i32* %internal_name_length.addr, align 4, !dbg !1326
  %cmp = icmp ult i32 %5, %6, !dbg !1327
  br i1 %cmp, label %for.body, label %for.end, !dbg !1328

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %internal_name.addr, align 8, !dbg !1329
  %8 = load i32, i32* %i, align 4, !dbg !1329
  %idxprom = zext i32 %8 to i64, !dbg !1329
  %arrayidx6 = getelementptr i8, i8* %7, i64 %idxprom, !dbg !1329
  %9 = load i8, i8* %arrayidx6, align 1, !dbg !1329
  %conv7 = sext i8 %9 to i32, !dbg !1329
  %cmp8 = icmp eq i32 %conv7, 94, !dbg !1329
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !1332

if.then10:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !1333
  %add = add i32 %10, 1, !dbg !1335
  store i32 %add, i32* %prefix_length, align 4, !dbg !1336
  br label %if.end11, !dbg !1337

if.else:                                          ; preds = %for.body
  br label %for.end, !dbg !1338

if.end11:                                         ; preds = %if.then10
  br label %for.inc, !dbg !1340

for.inc:                                          ; preds = %if.end11
  %11 = load i32, i32* %i, align 4, !dbg !1341
  %inc = add i32 %11, 1, !dbg !1341
  store i32 %inc, i32* %i, align 4, !dbg !1341
  br label %for.cond, !dbg !1342, !llvm.loop !1343

for.end:                                          ; preds = %if.else, %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !1345
  %13 = load i32, i32* %internal_name_length.addr, align 4, !dbg !1347
  %cmp12 = icmp eq i32 %12, %13, !dbg !1348
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1349

if.then14:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4, !dbg !1350
  store i32 %14, i32* %prefix_length, align 4, !dbg !1352
  br label %if.end15, !dbg !1353

if.end15:                                         ; preds = %if.then14, %for.end
  br label %sw.epilog, !dbg !1354

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1355

sw.epilog:                                        ; preds = %sw.default, %if.end15, %sw.bb
  %15 = load i32, i32* %prefix_length, align 4, !dbg !1356
  %16 = load i32, i32* %internal_name_length.addr, align 4, !dbg !1358
  %cmp16 = icmp ult i32 %15, %16, !dbg !1359
  br i1 %cmp16, label %if.then18, label %if.end33, !dbg !1360

if.then18:                                        ; preds = %sw.epilog
  %17 = load i8*, i8** %internal_name.addr, align 8, !dbg !1361
  %18 = load i32, i32* %prefix_length, align 4, !dbg !1363
  %idxprom19 = zext i32 %18 to i64, !dbg !1361
  %arrayidx20 = getelementptr i8, i8* %17, i64 %idxprom19, !dbg !1361
  %19 = load i8, i8* %arrayidx20, align 1, !dbg !1361
  %conv21 = sext i8 %19 to i32, !dbg !1361
  switch i32 %conv21, label %sw.default31 [
    i32 47, label %sw.bb22
    i32 46, label %sw.bb28
    i32 0, label %sw.bb30
  ], !dbg !1364

sw.bb22:                                          ; preds = %if.then18
  %20 = load i32, i32* %prefix_length, align 4, !dbg !1365
  %add23 = add i32 %20, 2, !dbg !1367
  store i32 %add23, i32* %names_index, align 4, !dbg !1368
  %21 = load i8*, i8** %internal_name.addr, align 8, !dbg !1369
  %22 = load i32, i32* %prefix_length, align 4, !dbg !1370
  %conv24 = zext i32 %22 to i64, !dbg !1371
  %add25 = add i64 %conv24, 1, !dbg !1372
  %arrayidx26 = getelementptr i8, i8* %21, i64 %add25, !dbg !1369
  %23 = load i8, i8* %arrayidx26, align 1, !dbg !1369
  %conv27 = zext i8 %23 to i32, !dbg !1373
  store i32 %conv27, i32* %num_segments, align 4, !dbg !1374
  br label %sw.epilog32, !dbg !1375

sw.bb28:                                          ; preds = %if.then18
  %24 = load i32, i32* %prefix_length, align 4, !dbg !1376
  %add29 = add i32 %24, 1, !dbg !1377
  store i32 %add29, i32* %names_index, align 4, !dbg !1378
  store i32 2, i32* %num_segments, align 4, !dbg !1379
  br label %sw.epilog32, !dbg !1380

sw.bb30:                                          ; preds = %if.then18
  store i32 0, i32* %names_index, align 4, !dbg !1381
  store i32 0, i32* %num_segments, align 4, !dbg !1382
  br label %sw.epilog32, !dbg !1383

sw.default31:                                     ; preds = %if.then18
  %25 = load i32, i32* %prefix_length, align 4, !dbg !1384
  store i32 %25, i32* %names_index, align 4, !dbg !1385
  store i32 1, i32* %num_segments, align 4, !dbg !1386
  br label %sw.epilog32, !dbg !1387

sw.epilog32:                                      ; preds = %sw.default31, %sw.bb30, %sw.bb28, %sw.bb22
  br label %if.end33, !dbg !1388

if.end33:                                         ; preds = %sw.epilog32, %sw.epilog
  %26 = load i32, i32* %prefix_length, align 4, !dbg !1389
  %27 = load i32, i32* %num_segments, align 4, !dbg !1390
  %mul = mul i32 4, %27, !dbg !1391
  %add34 = add i32 %26, %mul, !dbg !1392
  %28 = load i32, i32* %num_segments, align 4, !dbg !1393
  %cmp35 = icmp ugt i32 %28, 0, !dbg !1394
  br i1 %cmp35, label %cond.true, label %cond.false, !dbg !1395

cond.true:                                        ; preds = %if.end33
  %29 = load i32, i32* %num_segments, align 4, !dbg !1396
  %sub = sub i32 %29, 1, !dbg !1397
  br label %cond.end, !dbg !1395

cond.false:                                       ; preds = %if.end33
  br label %cond.end, !dbg !1395

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !1395
  %add37 = add i32 %add34, %cond, !dbg !1398
  %add38 = add i32 %add37, 1, !dbg !1399
  store i32 %add38, i32* %required_length, align 4, !dbg !1400
  %30 = load i32, i32* %required_length, align 4, !dbg !1401
  %31 = load i32, i32* %internal_name_length.addr, align 4, !dbg !1403
  %cmp39 = icmp ugt i32 %30, %31, !dbg !1404
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !1405

if.then41:                                        ; preds = %cond.end
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 467, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1406
  store i32 4099, i32* %retval, align 4, !dbg !1408
  br label %return, !dbg !1408

if.end42:                                         ; preds = %cond.end
  %32 = load i32, i32* %required_length, align 4, !dbg !1409
  %conv43 = zext i32 %32 to i64, !dbg !1409
  %call = call i8* @acpi_os_allocate_zeroed(i64 %conv43) #8, !dbg !1409
  %33 = load i8**, i8*** %converted_name.addr, align 8, !dbg !1410
  store i8* %call, i8** %33, align 8, !dbg !1411
  %34 = load i8**, i8*** %converted_name.addr, align 8, !dbg !1412
  %35 = load i8*, i8** %34, align 8, !dbg !1414
  %tobool44 = icmp ne i8* %35, null, !dbg !1415
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !1416

if.then45:                                        ; preds = %if.end42
  store i32 4, i32* %retval, align 4, !dbg !1417
  br label %return, !dbg !1417

if.end46:                                         ; preds = %if.end42
  store i32 0, i32* %j, align 4, !dbg !1419
  store i32 0, i32* %i, align 4, !dbg !1420
  br label %for.cond47, !dbg !1422

for.cond47:                                       ; preds = %for.inc56, %if.end46
  %36 = load i32, i32* %i, align 4, !dbg !1423
  %37 = load i32, i32* %prefix_length, align 4, !dbg !1425
  %cmp48 = icmp ult i32 %36, %37, !dbg !1426
  br i1 %cmp48, label %for.body50, label %for.end58, !dbg !1427

for.body50:                                       ; preds = %for.cond47
  %38 = load i8*, i8** %internal_name.addr, align 8, !dbg !1428
  %39 = load i32, i32* %i, align 4, !dbg !1430
  %idxprom51 = zext i32 %39 to i64, !dbg !1428
  %arrayidx52 = getelementptr i8, i8* %38, i64 %idxprom51, !dbg !1428
  %40 = load i8, i8* %arrayidx52, align 1, !dbg !1428
  %41 = load i8**, i8*** %converted_name.addr, align 8, !dbg !1431
  %42 = load i8*, i8** %41, align 8, !dbg !1432
  %43 = load i32, i32* %j, align 4, !dbg !1433
  %inc53 = add i32 %43, 1, !dbg !1433
  store i32 %inc53, i32* %j, align 4, !dbg !1433
  %idxprom54 = zext i32 %43 to i64, !dbg !1434
  %arrayidx55 = getelementptr i8, i8* %42, i64 %idxprom54, !dbg !1434
  store i8 %40, i8* %arrayidx55, align 1, !dbg !1435
  br label %for.inc56, !dbg !1436

for.inc56:                                        ; preds = %for.body50
  %44 = load i32, i32* %i, align 4, !dbg !1437
  %inc57 = add i32 %44, 1, !dbg !1437
  store i32 %inc57, i32* %i, align 4, !dbg !1437
  br label %for.cond47, !dbg !1438, !llvm.loop !1439

for.end58:                                        ; preds = %for.cond47
  %45 = load i32, i32* %num_segments, align 4, !dbg !1441
  %cmp59 = icmp ugt i32 %45, 0, !dbg !1443
  br i1 %cmp59, label %if.then61, label %if.end84, !dbg !1444

if.then61:                                        ; preds = %for.end58
  store i32 0, i32* %i, align 4, !dbg !1445
  br label %for.cond62, !dbg !1448

for.cond62:                                       ; preds = %for.inc81, %if.then61
  %46 = load i32, i32* %i, align 4, !dbg !1449
  %47 = load i32, i32* %num_segments, align 4, !dbg !1451
  %cmp63 = icmp ult i32 %46, %47, !dbg !1452
  br i1 %cmp63, label %for.body65, label %for.end83, !dbg !1453

for.body65:                                       ; preds = %for.cond62
  %48 = load i32, i32* %i, align 4, !dbg !1454
  %cmp66 = icmp ugt i32 %48, 0, !dbg !1457
  br i1 %cmp66, label %if.then68, label %if.end72, !dbg !1458

if.then68:                                        ; preds = %for.body65
  %49 = load i8**, i8*** %converted_name.addr, align 8, !dbg !1459
  %50 = load i8*, i8** %49, align 8, !dbg !1461
  %51 = load i32, i32* %j, align 4, !dbg !1462
  %inc69 = add i32 %51, 1, !dbg !1462
  store i32 %inc69, i32* %j, align 4, !dbg !1462
  %idxprom70 = zext i32 %51 to i64, !dbg !1463
  %arrayidx71 = getelementptr i8, i8* %50, i64 %idxprom70, !dbg !1463
  store i8 46, i8* %arrayidx71, align 1, !dbg !1464
  br label %if.end72, !dbg !1465

if.end72:                                         ; preds = %if.then68, %for.body65
  %52 = load i8*, i8** %internal_name.addr, align 8, !dbg !1466
  %53 = load i32, i32* %names_index, align 4, !dbg !1466
  %idxprom73 = zext i32 %53 to i64, !dbg !1466
  %arrayidx74 = getelementptr i8, i8* %52, i64 %idxprom73, !dbg !1466
  %54 = bitcast i8* %arrayidx74 to i32*, !dbg !1466
  %55 = load i32, i32* %54, align 4, !dbg !1466
  %56 = load i8**, i8*** %converted_name.addr, align 8, !dbg !1466
  %57 = load i8*, i8** %56, align 8, !dbg !1466
  %58 = load i32, i32* %j, align 4, !dbg !1466
  %idxprom75 = zext i32 %58 to i64, !dbg !1466
  %arrayidx76 = getelementptr i8, i8* %57, i64 %idxprom75, !dbg !1466
  %59 = bitcast i8* %arrayidx76 to i32*, !dbg !1466
  store i32 %55, i32* %59, align 4, !dbg !1466
  %60 = load i8**, i8*** %converted_name.addr, align 8, !dbg !1467
  %61 = load i8*, i8** %60, align 8, !dbg !1468
  %62 = load i32, i32* %j, align 4, !dbg !1469
  %idxprom77 = zext i32 %62 to i64, !dbg !1470
  %arrayidx78 = getelementptr i8, i8* %61, i64 %idxprom77, !dbg !1470
  call void @acpi_ut_repair_name(i8* %arrayidx78) #8, !dbg !1471
  %63 = load i32, i32* %j, align 4, !dbg !1472
  %add79 = add i32 %63, 4, !dbg !1472
  store i32 %add79, i32* %j, align 4, !dbg !1472
  %64 = load i32, i32* %names_index, align 4, !dbg !1473
  %add80 = add i32 %64, 4, !dbg !1473
  store i32 %add80, i32* %names_index, align 4, !dbg !1473
  br label %for.inc81, !dbg !1474

for.inc81:                                        ; preds = %if.end72
  %65 = load i32, i32* %i, align 4, !dbg !1475
  %inc82 = add i32 %65, 1, !dbg !1475
  store i32 %inc82, i32* %i, align 4, !dbg !1475
  br label %for.cond62, !dbg !1476, !llvm.loop !1477

for.end83:                                        ; preds = %for.cond62
  br label %if.end84, !dbg !1479

if.end84:                                         ; preds = %for.end83, %for.end58
  %66 = load i32*, i32** %converted_name_length.addr, align 8, !dbg !1480
  %tobool85 = icmp ne i32* %66, null, !dbg !1480
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !1482

if.then86:                                        ; preds = %if.end84
  %67 = load i32, i32* %required_length, align 4, !dbg !1483
  %68 = load i32*, i32** %converted_name_length.addr, align 8, !dbg !1485
  store i32 %67, i32* %68, align 4, !dbg !1486
  br label %if.end87, !dbg !1487

if.end87:                                         ; preds = %if.then86, %if.end84
  store i32 0, i32* %retval, align 4, !dbg !1488
  br label %return, !dbg !1488

return:                                           ; preds = %if.end87, %if.then45, %if.then41, %if.then
  %69 = load i32, i32* %retval, align 4, !dbg !1489
  ret i32 %69, !dbg !1489
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_repair_name(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %handle) #0 !dbg !1490 {
entry:
  %retval = alloca %struct.acpi_namespace_node*, align 8
  %handle.addr = alloca i8*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !1493, metadata !DIExpression()), !dbg !1494
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !1495
  %tobool = icmp ne i8* %0, null, !dbg !1495
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1497

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !1498
  %cmp = icmp eq i8* %1, inttoptr (i64 -1 to i8*), !dbg !1499
  br i1 %cmp, label %if.then, label %if.end, !dbg !1500

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1501
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %retval, align 8, !dbg !1503
  br label %return, !dbg !1503

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %handle.addr, align 8, !dbg !1504
  %4 = bitcast i8* %3 to %union.acpi_descriptor*, !dbg !1504
  %common = bitcast %union.acpi_descriptor* %4 to %struct.acpi_common_descriptor*, !dbg !1504
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !1504
  %5 = load i8, i8* %descriptor_type, align 8, !dbg !1504
  %conv = zext i8 %5 to i32, !dbg !1504
  %cmp1 = icmp ne i32 %conv, 15, !dbg !1506
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !1507

if.then3:                                         ; preds = %if.end
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %retval, align 8, !dbg !1508
  br label %return, !dbg !1508

if.end4:                                          ; preds = %if.end
  %6 = load i8*, i8** %handle.addr, align 8, !dbg !1510
  %7 = bitcast i8* %6 to %struct.acpi_namespace_node*, !dbg !1510
  store %struct.acpi_namespace_node* %7, %struct.acpi_namespace_node** %retval, align 8, !dbg !1511
  br label %return, !dbg !1511

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %retval, align 8, !dbg !1512
  ret %struct.acpi_namespace_node* %8, !dbg !1512
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_terminate() #0 !dbg !1513 {
entry:
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1516, metadata !DIExpression()), !dbg !1517
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1518
  call void @acpi_ns_delete_namespace_subtree(%struct.acpi_namespace_node* %0) #8, !dbg !1519
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !1520
  store i32 %call, i32* %status, align 4, !dbg !1521
  %1 = load i32, i32* %status, align 4, !dbg !1522
  %tobool = icmp ne i32 %1, 0, !dbg !1522
  br i1 %tobool, label %if.then, label %if.end, !dbg !1524

if.then:                                          ; preds = %entry
  br label %return, !dbg !1525

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1527
  call void @acpi_ns_delete_node(%struct.acpi_namespace_node* %2) #8, !dbg !1528
  %call1 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !1529
  br label %return, !dbg !1530

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1531
}

; Function Attrs: noredzone
declare dso_local void @acpi_ns_delete_namespace_subtree(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ns_delete_node(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_opens_scope(i32 %type) #0 !dbg !1532 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !1533, metadata !DIExpression()), !dbg !1534
  %0 = load i32, i32* %type.addr, align 4, !dbg !1535
  %cmp = icmp ugt i32 %0, 29, !dbg !1537
  br i1 %cmp, label %if.then, label %if.end, !dbg !1538

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4, !dbg !1539
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 605, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %1) #8, !dbg !1539
  store i32 0, i32* %retval, align 4, !dbg !1541
  br label %return, !dbg !1541

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %type.addr, align 4, !dbg !1542
  %idxprom = zext i32 %2 to i64, !dbg !1543
  %arrayidx = getelementptr [31 x i8], [31 x i8]* @acpi_gbl_ns_properties, i64 0, i64 %idxprom, !dbg !1543
  %3 = load i8, i8* %arrayidx, align 1, !dbg !1543
  %conv = zext i8 %3 to i32, !dbg !1544
  %and = and i32 %conv, 1, !dbg !1545
  store i32 %and, i32* %retval, align 4, !dbg !1546
  br label %return, !dbg !1546

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !1547
  ret i32 %4, !dbg !1547
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_get_node_unlocked(%struct.acpi_namespace_node* %prefix_node, i8* %pathname, i32 %flags, %struct.acpi_namespace_node** %return_node) #0 !dbg !1548 {
entry:
  %retval = alloca i32, align 4
  %prefix_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %pathname.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %return_node.addr = alloca %struct.acpi_namespace_node**, align 8
  %scope_info = alloca %union.acpi_generic_state, align 8
  %status = alloca i32, align 4
  %internal_path = alloca i8*, align 8
  store %struct.acpi_namespace_node* %prefix_node, %struct.acpi_namespace_node** %prefix_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %prefix_node.addr, metadata !1552, metadata !DIExpression()), !dbg !1553
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !1554, metadata !DIExpression()), !dbg !1555
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1556, metadata !DIExpression()), !dbg !1557
  store %struct.acpi_namespace_node** %return_node, %struct.acpi_namespace_node*** %return_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node*** %return_node.addr, metadata !1558, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state* %scope_info, metadata !1560, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1562, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.declare(metadata i8** %internal_path, metadata !1564, metadata !DIExpression()), !dbg !1565
  %0 = load i8*, i8** %pathname.addr, align 8, !dbg !1566
  %tobool = icmp ne i8* %0, null, !dbg !1566
  br i1 %tobool, label %if.end3, label %if.then, !dbg !1568

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node.addr, align 8, !dbg !1569
  %2 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !1571
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %2, align 8, !dbg !1572
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node.addr, align 8, !dbg !1573
  %tobool1 = icmp ne %struct.acpi_namespace_node* %3, null, !dbg !1573
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !1575

if.then2:                                         ; preds = %if.then
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1576
  %5 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !1578
  store %struct.acpi_namespace_node* %4, %struct.acpi_namespace_node** %5, align 8, !dbg !1579
  br label %if.end, !dbg !1580

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, i32* %retval, align 4, !dbg !1581
  br label %return, !dbg !1581

if.end3:                                          ; preds = %entry
  %6 = load i8*, i8** %pathname.addr, align 8, !dbg !1582
  %arrayidx = getelementptr i8, i8* %6, i64 0, !dbg !1582
  %7 = load i8, i8* %arrayidx, align 1, !dbg !1582
  %conv = sext i8 %7 to i32, !dbg !1582
  %cmp = icmp eq i32 %conv, 92, !dbg !1582
  br i1 %cmp, label %land.lhs.true, label %if.end8, !dbg !1584

land.lhs.true:                                    ; preds = %if.end3
  %8 = load i8*, i8** %pathname.addr, align 8, !dbg !1585
  %arrayidx5 = getelementptr i8, i8* %8, i64 1, !dbg !1585
  %9 = load i8, i8* %arrayidx5, align 1, !dbg !1585
  %tobool6 = icmp ne i8 %9, 0, !dbg !1585
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1586

if.then7:                                         ; preds = %land.lhs.true
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1587
  %11 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !1589
  store %struct.acpi_namespace_node* %10, %struct.acpi_namespace_node** %11, align 8, !dbg !1590
  store i32 0, i32* %retval, align 4, !dbg !1591
  br label %return, !dbg !1591

if.end8:                                          ; preds = %land.lhs.true, %if.end3
  %12 = load i8*, i8** %pathname.addr, align 8, !dbg !1592
  %call = call i32 @acpi_ns_internalize_name(i8* %12, i8** %internal_path) #8, !dbg !1593
  store i32 %call, i32* %status, align 4, !dbg !1594
  %13 = load i32, i32* %status, align 4, !dbg !1595
  %tobool9 = icmp ne i32 %13, 0, !dbg !1595
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1597

if.then10:                                        ; preds = %if.end8
  %14 = load i32, i32* %status, align 4, !dbg !1598
  store i32 %14, i32* %retval, align 4, !dbg !1598
  br label %return, !dbg !1598

if.end11:                                         ; preds = %if.end8
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node.addr, align 8, !dbg !1600
  %scope = bitcast %union.acpi_generic_state* %scope_info to %struct.acpi_scope_state*, !dbg !1601
  %node = getelementptr inbounds %struct.acpi_scope_state, %struct.acpi_scope_state* %scope, i32 0, i32 5, !dbg !1602
  store %struct.acpi_namespace_node* %15, %struct.acpi_namespace_node** %node, align 8, !dbg !1603
  %16 = load i8*, i8** %internal_path, align 8, !dbg !1604
  %17 = load i32, i32* %flags.addr, align 4, !dbg !1605
  %or = or i32 %17, 2, !dbg !1606
  %18 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !1607
  %call12 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %scope_info, i8* %16, i32 0, i32 3, i32 %or, %struct.acpi_walk_state* null, %struct.acpi_namespace_node** %18) #8, !dbg !1608
  store i32 %call12, i32* %status, align 4, !dbg !1609
  %19 = load i32, i32* %status, align 4, !dbg !1610
  %tobool13 = icmp ne i32 %19, 0, !dbg !1610
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1612

if.then14:                                        ; preds = %if.end11
  br label %if.end15, !dbg !1613

if.end15:                                         ; preds = %if.then14, %if.end11
  %20 = load i8*, i8** %internal_path, align 8, !dbg !1615
  call void @acpi_os_free(i8* %20) #8, !dbg !1615
  %21 = load i32, i32* %status, align 4, !dbg !1616
  store i32 %21, i32* %retval, align 4, !dbg !1616
  br label %return, !dbg !1616

return:                                           ; preds = %if.end15, %if.then10, %if.then7, %if.end
  %22 = load i32, i32* %retval, align 4, !dbg !1617
  ret i32 %22, !dbg !1617
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_lookup(%union.acpi_generic_state*, i8*, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_get_node(%struct.acpi_namespace_node* %prefix_node, i8* %pathname, i32 %flags, %struct.acpi_namespace_node** %return_node) #0 !dbg !1618 {
entry:
  %retval = alloca i32, align 4
  %prefix_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %pathname.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %return_node.addr = alloca %struct.acpi_namespace_node**, align 8
  %status = alloca i32, align 4
  store %struct.acpi_namespace_node* %prefix_node, %struct.acpi_namespace_node** %prefix_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %prefix_node.addr, metadata !1619, metadata !DIExpression()), !dbg !1620
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !1621, metadata !DIExpression()), !dbg !1622
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1623, metadata !DIExpression()), !dbg !1624
  store %struct.acpi_namespace_node** %return_node, %struct.acpi_namespace_node*** %return_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node*** %return_node.addr, metadata !1625, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1627, metadata !DIExpression()), !dbg !1628
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !1629
  store i32 %call, i32* %status, align 4, !dbg !1630
  %0 = load i32, i32* %status, align 4, !dbg !1631
  %tobool = icmp ne i32 %0, 0, !dbg !1631
  br i1 %tobool, label %if.then, label %if.end, !dbg !1633

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !1634
  store i32 %1, i32* %retval, align 4, !dbg !1634
  br label %return, !dbg !1634

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node.addr, align 8, !dbg !1636
  %3 = load i8*, i8** %pathname.addr, align 8, !dbg !1637
  %4 = load i32, i32* %flags.addr, align 4, !dbg !1638
  %5 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !1639
  %call1 = call i32 @acpi_ns_get_node_unlocked(%struct.acpi_namespace_node* %2, i8* %3, i32 %4, %struct.acpi_namespace_node** %5) #8, !dbg !1640
  store i32 %call1, i32* %status, align 4, !dbg !1641
  %call2 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !1642
  %6 = load i32, i32* %status, align 4, !dbg !1643
  store i32 %6, i32* %retval, align 4, !dbg !1643
  br label %return, !dbg !1643

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !1644
  ret i32 %7, !dbg !1644
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1645 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1652, metadata !DIExpression()), !dbg !1659
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1665, metadata !DIExpression()), !dbg !1666
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1667, metadata !DIExpression()), !dbg !1668
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1669, metadata !DIExpression()), !dbg !1670
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1671, metadata !DIExpression()), !dbg !1675
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1677, metadata !DIExpression()), !dbg !1681
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1683, metadata !DIExpression()), !dbg !1687
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1692, metadata !DIExpression()), !dbg !1693
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1694, metadata !DIExpression()), !dbg !1695
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1696, metadata !DIExpression()), !dbg !1697
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1698, metadata !DIExpression()), !dbg !1699
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1700, metadata !DIExpression()), !dbg !1701
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1702, metadata !DIExpression()), !dbg !1703
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1704, metadata !DIExpression()), !dbg !1705
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1706, metadata !DIExpression()), !dbg !1707
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1708, metadata !DIExpression()), !dbg !1709
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1710, metadata !DIExpression()), !dbg !1711
  %0 = load i64, i64* %size.addr, align 8, !dbg !1712
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1713
  %or = or i32 %1, 256, !dbg !1714
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1715
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1716
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1717

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1718
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1719
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1720

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1721
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1722
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1723
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1724
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1701
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1725
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1726
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1727
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1728
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1729
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1730
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1731
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1731
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1731
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1731
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1731
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1732
  br label %kmalloc.exit, !dbg !1732

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1733
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1734
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1734
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1736

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1737
  br label %kmalloc_index.exit.i, !dbg !1737

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1738
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1740
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1741

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1742
  br label %kmalloc_index.exit.i, !dbg !1742

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1743
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1745
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1746

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1747
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1748
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1749

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1750
  br label %kmalloc_index.exit.i, !dbg !1750

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1751
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1753
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1754

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1755
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1756
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1757

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1758
  br label %kmalloc_index.exit.i, !dbg !1758

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1759
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1761
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1762

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1763
  br label %kmalloc_index.exit.i, !dbg !1763

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1764
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1766
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1767

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1768
  br label %kmalloc_index.exit.i, !dbg !1768

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1769
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1771
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1772

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1773
  br label %kmalloc_index.exit.i, !dbg !1773

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1774
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1776
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1777

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1778
  br label %kmalloc_index.exit.i, !dbg !1778

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1779
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1781
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1782

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1783
  br label %kmalloc_index.exit.i, !dbg !1783

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1784
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1786
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1787

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1788
  br label %kmalloc_index.exit.i, !dbg !1788

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1789
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1791
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1792

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1793
  br label %kmalloc_index.exit.i, !dbg !1793

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1794
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1796
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1797

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1798
  br label %kmalloc_index.exit.i, !dbg !1798

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1799
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1801
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1802

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1803
  br label %kmalloc_index.exit.i, !dbg !1803

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1804
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1806
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1807

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1808
  br label %kmalloc_index.exit.i, !dbg !1808

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1809
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1811
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1812

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1813
  br label %kmalloc_index.exit.i, !dbg !1813

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1814
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1816
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1817

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1818
  br label %kmalloc_index.exit.i, !dbg !1818

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1819
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1821
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1822

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1823
  br label %kmalloc_index.exit.i, !dbg !1823

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1824
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1826
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1827

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1828
  br label %kmalloc_index.exit.i, !dbg !1828

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1829
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1831
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1832

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1833
  br label %kmalloc_index.exit.i, !dbg !1833

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1834
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1836
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1837

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1838
  br label %kmalloc_index.exit.i, !dbg !1838

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1839
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1841
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1842

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1843
  br label %kmalloc_index.exit.i, !dbg !1843

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1844
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1846
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1847

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1848
  br label %kmalloc_index.exit.i, !dbg !1848

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1849
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1851
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1852

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1853
  br label %kmalloc_index.exit.i, !dbg !1853

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1854
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1856
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1857

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1858
  br label %kmalloc_index.exit.i, !dbg !1858

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1859
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1861
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1862

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1863
  br label %kmalloc_index.exit.i, !dbg !1863

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1864
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1866
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1867

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1868
  br label %kmalloc_index.exit.i, !dbg !1868

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1869
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1871
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1872

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1873
  br label %kmalloc_index.exit.i, !dbg !1873

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1874
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1876
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1877

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1878
  br label %kmalloc_index.exit.i, !dbg !1878

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1879, !srcloc !1882
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1883, !srcloc !1886
  unreachable, !dbg !1887

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1888
  store i32 %45, i32* %index.i, align 4, !dbg !1889
  %46 = load i32, i32* %index.i, align 4, !dbg !1890
  %tobool.i = icmp ne i32 %46, 0, !dbg !1890
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1892

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1893
  br label %kmalloc.exit, !dbg !1893

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1894
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1895
  %and.i.i = and i32 %48, 17, !dbg !1895
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1895
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1895
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1895
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1895
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1897

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1898
  br label %kmalloc_type.exit.i, !dbg !1898

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1899
  %and2.i.i = and i32 %49, 1, !dbg !1900
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1899
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1899
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1899
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1901
  br label %kmalloc_type.exit.i, !dbg !1901

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1902
  %idxprom.i = zext i32 %51 to i64, !dbg !1903
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1903
  %52 = load i32, i32* %index.i, align 4, !dbg !1904
  %idxprom6.i = zext i32 %52 to i64, !dbg !1903
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1903
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1903
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1905
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1906
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1907
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1908
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1909
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1909
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1909
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1909
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1909
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1670
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1910
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1911
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1912
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1913
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1914
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1915
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1916
  store i8* %62, i8** %retval.i, align 8, !dbg !1917
  br label %kmalloc.exit, !dbg !1917

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1918
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1919
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1920
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1920
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1920
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1920
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1920
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1921
  br label %kmalloc.exit, !dbg !1921

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1922
  ret i8* %65, !dbg !1923
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1924 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1928, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1931, metadata !DIExpression()), !dbg !1930
  %0 = load i64, i64* %__edi, align 8, !dbg !1930
  store i64 %0, i64* %__edi, align 8, !dbg !1930
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1932, metadata !DIExpression()), !dbg !1930
  %1 = load i64, i64* %__esi, align 8, !dbg !1930
  store i64 %1, i64* %__esi, align 8, !dbg !1930
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1933, metadata !DIExpression()), !dbg !1930
  %2 = load i64, i64* %__edx, align 8, !dbg !1930
  store i64 %2, i64* %__edx, align 8, !dbg !1930
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1934, metadata !DIExpression()), !dbg !1930
  %3 = load i64, i64* %__ecx, align 8, !dbg !1930
  store i64 %3, i64* %__ecx, align 8, !dbg !1930
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1935, metadata !DIExpression()), !dbg !1930
  %4 = load i64, i64* %__eax, align 8, !dbg !1930
  store i64 %4, i64* %__eax, align 8, !dbg !1930
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1930
  %6 = call i64 @llvm.read_register.i64(metadata !813), !dbg !1936
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1936, !srcloc !1939
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1936
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1936
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1936
  call void @llvm.write_register.i64(metadata !813, i64 %asmresult1), !dbg !1936
  %8 = load i64, i64* %__eax, align 8, !dbg !1936
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1940, metadata !DIExpression()), !dbg !1942
  store i64 -1, i64* %__mask, align 8, !dbg !1942
  %9 = load i64, i64* %__mask, align 8, !dbg !1942
  store i64 %9, i64* %tmp, align 8, !dbg !1942
  %10 = load i64, i64* %tmp, align 8, !dbg !1942
  %and = and i64 %8, %10, !dbg !1936
  store i64 %and, i64* %__ret, align 8, !dbg !1936
  %11 = load i64, i64* %__ret, align 8, !dbg !1930
  store i64 %11, i64* %tmp2, align 8, !dbg !1943
  %12 = load i64, i64* %tmp2, align 8, !dbg !1930
  ret i64 %12, !dbg !1944
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1945 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1947, metadata !DIExpression()), !dbg !1952
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1954, metadata !DIExpression()), !dbg !1955
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1956, metadata !DIExpression()), !dbg !1957
  %0 = load i64, i64* %size.addr, align 8, !dbg !1958
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1960
  br i1 %1, label %if.then, label %if.end447, !dbg !1961

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1962
  %tobool = icmp ne i64 %2, 0, !dbg !1962
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1965

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1966
  br label %return, !dbg !1966

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1967
  %cmp = icmp ult i64 %3, 4096, !dbg !1969
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1970

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1971
  br label %return, !dbg !1971

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub = sub i64 %4, 1, !dbg !1972
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1972
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1972

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub4 = sub i64 %6, 1, !dbg !1972
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1972
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1972

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub6 = sub i64 %8, 1, !dbg !1972
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1972
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1972

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1972

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub9 = sub i64 %9, 1, !dbg !1972
  %and = and i64 %sub9, -9223372036854775808, !dbg !1972
  %tobool10 = icmp ne i64 %and, 0, !dbg !1972
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1972

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1972

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub13 = sub i64 %10, 1, !dbg !1972
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1972
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1972
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1972

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1972

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub18 = sub i64 %11, 1, !dbg !1972
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1972
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1972
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1972

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1972

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub23 = sub i64 %12, 1, !dbg !1972
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1972
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1972
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1972

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1972

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub28 = sub i64 %13, 1, !dbg !1972
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1972
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1972
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1972

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1972

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub33 = sub i64 %14, 1, !dbg !1972
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1972
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1972
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1972

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1972

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub38 = sub i64 %15, 1, !dbg !1972
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1972
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1972
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1972

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1972

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub43 = sub i64 %16, 1, !dbg !1972
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1972
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1972
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1972

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1972

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub48 = sub i64 %17, 1, !dbg !1972
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1972
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1972
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1972

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1972

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub53 = sub i64 %18, 1, !dbg !1972
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1972
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1972
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1972

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1972

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub58 = sub i64 %19, 1, !dbg !1972
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1972
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1972
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1972

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1972

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub63 = sub i64 %20, 1, !dbg !1972
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1972
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1972
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1972

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1972

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub68 = sub i64 %21, 1, !dbg !1972
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1972
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1972
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1972

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1972

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub73 = sub i64 %22, 1, !dbg !1972
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1972
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1972
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1972

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1972

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub78 = sub i64 %23, 1, !dbg !1972
  %and79 = and i64 %sub78, 562949953421312, !dbg !1972
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1972
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1972

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1972

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub83 = sub i64 %24, 1, !dbg !1972
  %and84 = and i64 %sub83, 281474976710656, !dbg !1972
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1972
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1972

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1972

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub88 = sub i64 %25, 1, !dbg !1972
  %and89 = and i64 %sub88, 140737488355328, !dbg !1972
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1972
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1972

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1972

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub93 = sub i64 %26, 1, !dbg !1972
  %and94 = and i64 %sub93, 70368744177664, !dbg !1972
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1972
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1972

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1972

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub98 = sub i64 %27, 1, !dbg !1972
  %and99 = and i64 %sub98, 35184372088832, !dbg !1972
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1972
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1972

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1972

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub103 = sub i64 %28, 1, !dbg !1972
  %and104 = and i64 %sub103, 17592186044416, !dbg !1972
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1972
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1972

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1972

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub108 = sub i64 %29, 1, !dbg !1972
  %and109 = and i64 %sub108, 8796093022208, !dbg !1972
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1972
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1972

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1972

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub113 = sub i64 %30, 1, !dbg !1972
  %and114 = and i64 %sub113, 4398046511104, !dbg !1972
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1972
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1972

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1972

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub118 = sub i64 %31, 1, !dbg !1972
  %and119 = and i64 %sub118, 2199023255552, !dbg !1972
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1972
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1972

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1972

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub123 = sub i64 %32, 1, !dbg !1972
  %and124 = and i64 %sub123, 1099511627776, !dbg !1972
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1972
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1972

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1972

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub128 = sub i64 %33, 1, !dbg !1972
  %and129 = and i64 %sub128, 549755813888, !dbg !1972
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1972
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1972

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1972

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub133 = sub i64 %34, 1, !dbg !1972
  %and134 = and i64 %sub133, 274877906944, !dbg !1972
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1972
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1972

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1972

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub138 = sub i64 %35, 1, !dbg !1972
  %and139 = and i64 %sub138, 137438953472, !dbg !1972
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1972
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1972

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1972

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub143 = sub i64 %36, 1, !dbg !1972
  %and144 = and i64 %sub143, 68719476736, !dbg !1972
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1972
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1972

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1972

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub148 = sub i64 %37, 1, !dbg !1972
  %and149 = and i64 %sub148, 34359738368, !dbg !1972
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1972
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1972

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1972

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub153 = sub i64 %38, 1, !dbg !1972
  %and154 = and i64 %sub153, 17179869184, !dbg !1972
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1972
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1972

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1972

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub158 = sub i64 %39, 1, !dbg !1972
  %and159 = and i64 %sub158, 8589934592, !dbg !1972
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1972
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1972

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1972

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub163 = sub i64 %40, 1, !dbg !1972
  %and164 = and i64 %sub163, 4294967296, !dbg !1972
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1972
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1972

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1972

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub168 = sub i64 %41, 1, !dbg !1972
  %and169 = and i64 %sub168, 2147483648, !dbg !1972
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1972
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1972

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1972

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub173 = sub i64 %42, 1, !dbg !1972
  %and174 = and i64 %sub173, 1073741824, !dbg !1972
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1972
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1972

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1972

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub178 = sub i64 %43, 1, !dbg !1972
  %and179 = and i64 %sub178, 536870912, !dbg !1972
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1972
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1972

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1972

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub183 = sub i64 %44, 1, !dbg !1972
  %and184 = and i64 %sub183, 268435456, !dbg !1972
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1972
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1972

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1972

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub188 = sub i64 %45, 1, !dbg !1972
  %and189 = and i64 %sub188, 134217728, !dbg !1972
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1972
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1972

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1972

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub193 = sub i64 %46, 1, !dbg !1972
  %and194 = and i64 %sub193, 67108864, !dbg !1972
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1972
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1972

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1972

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub198 = sub i64 %47, 1, !dbg !1972
  %and199 = and i64 %sub198, 33554432, !dbg !1972
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1972
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1972

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1972

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub203 = sub i64 %48, 1, !dbg !1972
  %and204 = and i64 %sub203, 16777216, !dbg !1972
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1972
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1972

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1972

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub208 = sub i64 %49, 1, !dbg !1972
  %and209 = and i64 %sub208, 8388608, !dbg !1972
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1972
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1972

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1972

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub213 = sub i64 %50, 1, !dbg !1972
  %and214 = and i64 %sub213, 4194304, !dbg !1972
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1972
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1972

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1972

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub218 = sub i64 %51, 1, !dbg !1972
  %and219 = and i64 %sub218, 2097152, !dbg !1972
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1972
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1972

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1972

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub223 = sub i64 %52, 1, !dbg !1972
  %and224 = and i64 %sub223, 1048576, !dbg !1972
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1972
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1972

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1972

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub228 = sub i64 %53, 1, !dbg !1972
  %and229 = and i64 %sub228, 524288, !dbg !1972
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1972
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1972

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1972

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub233 = sub i64 %54, 1, !dbg !1972
  %and234 = and i64 %sub233, 262144, !dbg !1972
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1972
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1972

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1972

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub238 = sub i64 %55, 1, !dbg !1972
  %and239 = and i64 %sub238, 131072, !dbg !1972
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1972
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1972

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1972

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub243 = sub i64 %56, 1, !dbg !1972
  %and244 = and i64 %sub243, 65536, !dbg !1972
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1972
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1972

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1972

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub248 = sub i64 %57, 1, !dbg !1972
  %and249 = and i64 %sub248, 32768, !dbg !1972
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1972
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1972

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1972

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub253 = sub i64 %58, 1, !dbg !1972
  %and254 = and i64 %sub253, 16384, !dbg !1972
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1972
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1972

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1972

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub258 = sub i64 %59, 1, !dbg !1972
  %and259 = and i64 %sub258, 8192, !dbg !1972
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1972
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1972

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1972

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub263 = sub i64 %60, 1, !dbg !1972
  %and264 = and i64 %sub263, 4096, !dbg !1972
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1972
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1972

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1972

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub268 = sub i64 %61, 1, !dbg !1972
  %and269 = and i64 %sub268, 2048, !dbg !1972
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1972
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1972

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1972

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub273 = sub i64 %62, 1, !dbg !1972
  %and274 = and i64 %sub273, 1024, !dbg !1972
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1972
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1972

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1972

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub278 = sub i64 %63, 1, !dbg !1972
  %and279 = and i64 %sub278, 512, !dbg !1972
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1972
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1972

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1972

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub283 = sub i64 %64, 1, !dbg !1972
  %and284 = and i64 %sub283, 256, !dbg !1972
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1972
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1972

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1972

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub288 = sub i64 %65, 1, !dbg !1972
  %and289 = and i64 %sub288, 128, !dbg !1972
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1972
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1972

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1972

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub293 = sub i64 %66, 1, !dbg !1972
  %and294 = and i64 %sub293, 64, !dbg !1972
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1972
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1972

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1972

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub298 = sub i64 %67, 1, !dbg !1972
  %and299 = and i64 %sub298, 32, !dbg !1972
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1972
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1972

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1972

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub303 = sub i64 %68, 1, !dbg !1972
  %and304 = and i64 %sub303, 16, !dbg !1972
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1972
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1972

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1972

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub308 = sub i64 %69, 1, !dbg !1972
  %and309 = and i64 %sub308, 8, !dbg !1972
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1972
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1972

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1972

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub313 = sub i64 %70, 1, !dbg !1972
  %and314 = and i64 %sub313, 4, !dbg !1972
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1972
  %71 = zext i1 %tobool315 to i64, !dbg !1972
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1972
  br label %cond.end, !dbg !1972

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1972
  br label %cond.end317, !dbg !1972

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1972
  br label %cond.end319, !dbg !1972

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1972
  br label %cond.end321, !dbg !1972

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1972
  br label %cond.end323, !dbg !1972

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1972
  br label %cond.end325, !dbg !1972

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1972
  br label %cond.end327, !dbg !1972

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1972
  br label %cond.end329, !dbg !1972

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1972
  br label %cond.end331, !dbg !1972

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1972
  br label %cond.end333, !dbg !1972

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1972
  br label %cond.end335, !dbg !1972

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1972
  br label %cond.end337, !dbg !1972

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1972
  br label %cond.end339, !dbg !1972

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1972
  br label %cond.end341, !dbg !1972

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1972
  br label %cond.end343, !dbg !1972

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1972
  br label %cond.end345, !dbg !1972

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1972
  br label %cond.end347, !dbg !1972

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1972
  br label %cond.end349, !dbg !1972

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1972
  br label %cond.end351, !dbg !1972

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1972
  br label %cond.end353, !dbg !1972

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1972
  br label %cond.end355, !dbg !1972

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1972
  br label %cond.end357, !dbg !1972

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1972
  br label %cond.end359, !dbg !1972

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1972
  br label %cond.end361, !dbg !1972

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1972
  br label %cond.end363, !dbg !1972

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1972
  br label %cond.end365, !dbg !1972

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1972
  br label %cond.end367, !dbg !1972

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1972
  br label %cond.end369, !dbg !1972

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1972
  br label %cond.end371, !dbg !1972

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1972
  br label %cond.end373, !dbg !1972

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1972
  br label %cond.end375, !dbg !1972

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1972
  br label %cond.end377, !dbg !1972

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1972
  br label %cond.end379, !dbg !1972

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1972
  br label %cond.end381, !dbg !1972

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1972
  br label %cond.end383, !dbg !1972

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1972
  br label %cond.end385, !dbg !1972

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1972
  br label %cond.end387, !dbg !1972

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1972
  br label %cond.end389, !dbg !1972

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1972
  br label %cond.end391, !dbg !1972

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1972
  br label %cond.end393, !dbg !1972

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1972
  br label %cond.end395, !dbg !1972

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1972
  br label %cond.end397, !dbg !1972

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1972
  br label %cond.end399, !dbg !1972

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1972
  br label %cond.end401, !dbg !1972

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1972
  br label %cond.end403, !dbg !1972

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1972
  br label %cond.end405, !dbg !1972

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1972
  br label %cond.end407, !dbg !1972

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1972
  br label %cond.end409, !dbg !1972

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1972
  br label %cond.end411, !dbg !1972

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1972
  br label %cond.end413, !dbg !1972

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1972
  br label %cond.end415, !dbg !1972

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1972
  br label %cond.end417, !dbg !1972

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1972
  br label %cond.end419, !dbg !1972

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1972
  br label %cond.end421, !dbg !1972

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1972
  br label %cond.end423, !dbg !1972

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1972
  br label %cond.end425, !dbg !1972

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1972
  br label %cond.end427, !dbg !1972

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1972
  br label %cond.end429, !dbg !1972

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1972
  br label %cond.end431, !dbg !1972

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1972
  br label %cond.end433, !dbg !1972

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1972
  br label %cond.end435, !dbg !1972

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1972
  br label %cond.end437, !dbg !1972

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1972
  br label %cond.end440, !dbg !1972

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1972

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1972
  br label %cond.end444, !dbg !1972

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1972
  %sub443 = sub i64 %72, 1, !dbg !1972
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1972
  br label %cond.end444, !dbg !1972

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1972
  %sub446 = sub i32 %cond445, 12, !dbg !1973
  %add = add i32 %sub446, 1, !dbg !1974
  store i32 %add, i32* %retval, align 4, !dbg !1975
  br label %return, !dbg !1975

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1976
  %dec = add i64 %73, -1, !dbg !1976
  store i64 %dec, i64* %size.addr, align 8, !dbg !1976
  %74 = load i64, i64* %size.addr, align 8, !dbg !1977
  %shr = lshr i64 %74, 12, !dbg !1977
  store i64 %shr, i64* %size.addr, align 8, !dbg !1977
  %75 = load i64, i64* %size.addr, align 8, !dbg !1978
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1955
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1979
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1980
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !1979, !srcloc !1981
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1979
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1982
  %add.i = add i32 %79, 1, !dbg !1983
  store i32 %add.i, i32* %retval, align 4, !dbg !1984
  br label %return, !dbg !1984

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1985
  ret i32 %80, !dbg !1985
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1986 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1947, metadata !DIExpression()), !dbg !1990
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1954, metadata !DIExpression()), !dbg !1992
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1993, metadata !DIExpression()), !dbg !1994
  %0 = load i64, i64* %n.addr, align 8, !dbg !1995
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1992
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1996
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1997
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !1996, !srcloc !1981
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1996
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1998
  %add.i = add i32 %4, 1, !dbg !1999
  %sub = sub i32 %add.i, 1, !dbg !2000
  ret i32 %sub, !dbg !2001
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2002 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2008, metadata !DIExpression()), !dbg !2009
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2010, metadata !DIExpression()), !dbg !2011
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2012, metadata !DIExpression()), !dbg !2013
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2014, metadata !DIExpression()), !dbg !2015
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2016
  ret i8* %0, !dbg !2017
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

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
!llvm.named.register.rsp = !{!813}
!llvm.module.flags = !{!814, !815, !816, !817}
!llvm.ident = !{!818}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !811, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !810, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsutils.c", directory: "/home/lizy2001/genbc/linux")
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
!19 = !{!20, !27, !29, !32, !28, !35, !36, !39, !40, !37, !41, !22, !42, !100, !31, !807, !809}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !21, line: 127, baseType: !22)
!21 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !23, line: 23, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !25, line: 31, baseType: !26)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !23, line: 17, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !25, line: 21, baseType: !31)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !23, line: 19, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !25, line: 24, baseType: !34)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !21, line: 421, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !23, line: 21, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !25, line: 27, baseType: !7)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !21, line: 424, baseType: !40)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !44, line: 432, size: 1600, elements: !45)
!44 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !51, !805, !806}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !43, file: !44, line: 433, baseType: !47, size: 128)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !44, line: 427, size: 128, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !47, file: !44, line: 428, baseType: !40, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !47, file: !44, line: 429, baseType: !29, size: 8, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !43, file: !44, line: 434, baseType: !52, size: 576)
!52 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !44, line: 367, size: 576, elements: !53)
!53 = !{!54, !63, !76, !86, !121, !135, !144, !456, !473, !488, !501, !579, !591, !605, !615, !633, !655, !674, !693, !712, !725, !751, !768, !781, !795, !804}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !52, file: !44, line: 368, baseType: !55, size: 128)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !44, line: 73, size: 128, elements: !56)
!56 = !{!57, !59, !60, !61, !62}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !55, file: !44, line: 74, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !55, file: !44, line: 74, baseType: !29, size: 8, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !44, line: 74, baseType: !29, size: 8, offset: 72)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !55, file: !44, line: 74, baseType: !32, size: 16, offset: 80)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !44, line: 74, baseType: !29, size: 8, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !52, file: !44, line: 369, baseType: !64, size: 192)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !44, line: 76, size: 192, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !75}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !64, file: !44, line: 77, baseType: !58, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !64, file: !44, line: 77, baseType: !29, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !44, line: 77, baseType: !29, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !64, file: !44, line: 77, baseType: !32, size: 16, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !44, line: 77, baseType: !29, size: 8, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !64, file: !44, line: 77, baseType: !72, size: 24, offset: 104)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 24, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !64, file: !44, line: 78, baseType: !22, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !52, file: !44, line: 370, baseType: !77, size: 256)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !44, line: 93, size: 256, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !85}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !77, file: !44, line: 94, baseType: !58, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !77, file: !44, line: 94, baseType: !29, size: 8, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !44, line: 94, baseType: !29, size: 8, offset: 72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !77, file: !44, line: 94, baseType: !32, size: 16, offset: 80)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !44, line: 94, baseType: !29, size: 8, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !77, file: !44, line: 94, baseType: !27, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !44, line: 94, baseType: !37, size: 32, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !52, file: !44, line: 371, baseType: !87, size: 384)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !44, line: 97, size: 384, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !96, !97, !98, !99}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !87, file: !44, line: 98, baseType: !58, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !87, file: !44, line: 98, baseType: !29, size: 8, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !44, line: 98, baseType: !29, size: 8, offset: 72)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !87, file: !44, line: 98, baseType: !32, size: 16, offset: 80)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !44, line: 98, baseType: !29, size: 8, offset: 96)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !87, file: !44, line: 98, baseType: !95, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !87, file: !44, line: 98, baseType: !37, size: 32, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !87, file: !44, line: 99, baseType: !37, size: 32, offset: 224)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !87, file: !44, line: 100, baseType: !95, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !87, file: !44, line: 101, baseType: !100, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !116, !117, !118, !119}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !101, file: !6, line: 134, baseType: !58, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !101, file: !6, line: 135, baseType: !29, size: 8, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !6, line: 136, baseType: !29, size: 8, offset: 72)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !6, line: 137, baseType: !32, size: 16, offset: 80)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !101, file: !6, line: 138, baseType: !108, size: 32, offset: 96)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !109, line: 327, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !108, file: !109, line: 328, baseType: !37, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !108, file: !109, line: 329, baseType: !113, size: 32)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 4)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !101, file: !6, line: 139, baseType: !100, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !101, file: !6, line: 140, baseType: !100, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !101, file: !6, line: 141, baseType: !100, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !101, file: !6, line: 142, baseType: !120, size: 16, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !21, line: 445, baseType: !32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !52, file: !44, line: 372, baseType: !122, size: 384)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !44, line: 104, size: 384, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130, !132, !133, !134}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !122, file: !44, line: 105, baseType: !58, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !122, file: !44, line: 105, baseType: !29, size: 8, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !44, line: 105, baseType: !29, size: 8, offset: 72)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !122, file: !44, line: 105, baseType: !32, size: 16, offset: 80)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !44, line: 105, baseType: !29, size: 8, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !122, file: !44, line: 105, baseType: !100, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !122, file: !44, line: 106, baseType: !131, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !122, file: !44, line: 107, baseType: !95, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !122, file: !44, line: 108, baseType: !37, size: 32, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !122, file: !44, line: 109, baseType: !37, size: 32, offset: 352)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !52, file: !44, line: 373, baseType: !136, size: 192)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !44, line: 118, size: 192, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !136, file: !44, line: 119, baseType: !58, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !136, file: !44, line: 119, baseType: !29, size: 8, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !136, file: !44, line: 119, baseType: !29, size: 8, offset: 72)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !136, file: !44, line: 119, baseType: !32, size: 16, offset: 80)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !44, line: 119, baseType: !29, size: 8, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !136, file: !44, line: 119, baseType: !40, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !52, file: !44, line: 374, baseType: !145, size: 448)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !44, line: 143, size: 448, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !453, !454, !455}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !145, file: !44, line: 144, baseType: !58, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !145, file: !44, line: 144, baseType: !29, size: 8, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !44, line: 144, baseType: !29, size: 8, offset: 72)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !145, file: !44, line: 144, baseType: !32, size: 16, offset: 80)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !145, file: !44, line: 144, baseType: !29, size: 8, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !145, file: !44, line: 144, baseType: !29, size: 8, offset: 104)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !145, file: !44, line: 145, baseType: !29, size: 8, offset: 112)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !145, file: !44, line: 146, baseType: !29, size: 8, offset: 120)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !145, file: !44, line: 147, baseType: !58, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !145, file: !44, line: 148, baseType: !58, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !145, file: !44, line: 149, baseType: !95, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !145, file: !44, line: 153, baseType: !159, size: 64, offset: 320)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !44, line: 150, size: 64, elements: !160)
!160 = !{!161, !452}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !159, file: !44, line: 151, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!36, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !168, line: 37, size: 9024, elements: !169)
!168 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !398, !399, !400, !401, !402, !406, !408, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !435, !436, !437, !438, !439, !440, !441, !442, !444, !450}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !168, line: 38, baseType: !166, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !167, file: !168, line: 39, baseType: !29, size: 8, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !167, file: !168, line: 40, baseType: !29, size: 8, offset: 72)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !167, file: !168, line: 41, baseType: !32, size: 16, offset: 80)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !167, file: !168, line: 42, baseType: !29, size: 8, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !167, file: !168, line: 43, baseType: !29, size: 8, offset: 104)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !167, file: !168, line: 44, baseType: !29, size: 8, offset: 112)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !167, file: !168, line: 45, baseType: !120, size: 16, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !167, file: !168, line: 46, baseType: !29, size: 8, offset: 144)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !167, file: !168, line: 47, baseType: !29, size: 8, offset: 152)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !167, file: !168, line: 48, baseType: !29, size: 8, offset: 160)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !167, file: !168, line: 49, baseType: !29, size: 8, offset: 168)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !167, file: !168, line: 50, baseType: !29, size: 8, offset: 176)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !167, file: !168, line: 51, baseType: !29, size: 8, offset: 184)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !167, file: !168, line: 52, baseType: !29, size: 8, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !167, file: !168, line: 53, baseType: !29, size: 8, offset: 200)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !167, file: !168, line: 54, baseType: !95, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !167, file: !168, line: 55, baseType: !37, size: 32, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !167, file: !168, line: 56, baseType: !37, size: 32, offset: 352)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !167, file: !168, line: 57, baseType: !37, size: 32, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !167, file: !168, line: 58, baseType: !37, size: 32, offset: 416)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !167, file: !168, line: 60, baseType: !192, size: 640, offset: 448)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !280, !281, !396, !397}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !192, file: !6, line: 894, baseType: !95, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !192, file: !6, line: 895, baseType: !95, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !192, file: !6, line: 896, baseType: !95, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !192, file: !6, line: 897, baseType: !95, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !192, file: !6, line: 898, baseType: !95, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !192, file: !6, line: 899, baseType: !200, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !202)
!202 = !{!203, !223, !239}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !201, file: !6, line: 876, baseType: !204, size: 448)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !222}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !204, file: !6, line: 829, baseType: !200, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !204, file: !6, line: 829, baseType: !29, size: 8, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !6, line: 829, baseType: !29, size: 8, offset: 72)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !204, file: !6, line: 829, baseType: !32, size: 16, offset: 80)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !204, file: !6, line: 829, baseType: !95, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !204, file: !6, line: 829, baseType: !200, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !204, file: !6, line: 829, baseType: !100, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !204, file: !6, line: 829, baseType: !214, size: 64, offset: 320)
!214 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !214, file: !6, line: 717, baseType: !22, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !214, file: !6, line: 718, baseType: !37, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !214, file: !6, line: 719, baseType: !27, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !214, file: !6, line: 720, baseType: !95, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !6, line: 721, baseType: !27, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !214, file: !6, line: 722, baseType: !200, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !204, file: !6, line: 829, baseType: !29, size: 8, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !201, file: !6, line: 877, baseType: !224, size: 640)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !224, file: !6, line: 836, baseType: !200, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !224, file: !6, line: 836, baseType: !29, size: 8, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !224, file: !6, line: 836, baseType: !29, size: 8, offset: 72)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !224, file: !6, line: 836, baseType: !32, size: 16, offset: 80)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !224, file: !6, line: 836, baseType: !95, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !224, file: !6, line: 836, baseType: !200, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !224, file: !6, line: 836, baseType: !100, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !224, file: !6, line: 836, baseType: !214, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !224, file: !6, line: 836, baseType: !29, size: 8, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !224, file: !6, line: 836, baseType: !27, size: 64, offset: 448)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !224, file: !6, line: 837, baseType: !95, size: 64, offset: 512)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !224, file: !6, line: 838, baseType: !37, size: 32, offset: 576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !6, line: 839, baseType: !37, size: 32, offset: 608)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !201, file: !6, line: 878, baseType: !240, size: 1600)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !241)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !240, file: !6, line: 847, baseType: !200, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !240, file: !6, line: 847, baseType: !29, size: 8, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !240, file: !6, line: 847, baseType: !29, size: 8, offset: 72)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !240, file: !6, line: 847, baseType: !32, size: 16, offset: 80)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !240, file: !6, line: 847, baseType: !95, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !240, file: !6, line: 847, baseType: !200, size: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !240, file: !6, line: 847, baseType: !100, size: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !240, file: !6, line: 847, baseType: !214, size: 64, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !240, file: !6, line: 847, baseType: !29, size: 8, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !240, file: !6, line: 847, baseType: !200, size: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !240, file: !6, line: 848, baseType: !200, size: 64, offset: 512)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !240, file: !6, line: 849, baseType: !27, size: 64, offset: 576)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !240, file: !6, line: 850, baseType: !29, size: 8, offset: 640)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !240, file: !6, line: 851, baseType: !27, size: 64, offset: 704)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !240, file: !6, line: 852, baseType: !27, size: 64, offset: 768)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !240, file: !6, line: 853, baseType: !27, size: 64, offset: 832)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !240, file: !6, line: 854, baseType: !113, size: 32, offset: 896)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !240, file: !6, line: 855, baseType: !37, size: 32, offset: 928)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !240, file: !6, line: 856, baseType: !37, size: 32, offset: 960)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !240, file: !6, line: 857, baseType: !37, size: 32, offset: 992)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !240, file: !6, line: 858, baseType: !37, size: 32, offset: 1024)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !240, file: !6, line: 859, baseType: !37, size: 32, offset: 1056)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !240, file: !6, line: 860, baseType: !37, size: 32, offset: 1088)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !240, file: !6, line: 861, baseType: !37, size: 32, offset: 1120)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !240, file: !6, line: 862, baseType: !37, size: 32, offset: 1152)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !240, file: !6, line: 863, baseType: !37, size: 32, offset: 1184)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !240, file: !6, line: 864, baseType: !37, size: 32, offset: 1216)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !240, file: !6, line: 865, baseType: !37, size: 32, offset: 1248)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !240, file: !6, line: 866, baseType: !37, size: 32, offset: 1280)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !240, file: !6, line: 867, baseType: !37, size: 32, offset: 1312)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !240, file: !6, line: 868, baseType: !32, size: 16, offset: 1344)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !240, file: !6, line: 869, baseType: !29, size: 8, offset: 1360)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !240, file: !6, line: 870, baseType: !29, size: 8, offset: 1368)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !240, file: !6, line: 871, baseType: !29, size: 8, offset: 1376)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !240, file: !6, line: 872, baseType: !277, size: 160, offset: 1384)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 20)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !192, file: !6, line: 900, baseType: !100, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !192, file: !6, line: 901, baseType: !282, size: 64, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !284)
!284 = !{!285, !293, !306, !315, !324, !337, !351, !363, !375}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !283, file: !6, line: 664, baseType: !286, size: 128)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !287)
!287 = !{!288, !289, !290, !291, !292}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !6, line: 568, baseType: !40, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !286, file: !6, line: 568, baseType: !29, size: 8, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !6, line: 568, baseType: !29, size: 8, offset: 72)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !286, file: !6, line: 568, baseType: !32, size: 16, offset: 80)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !286, file: !6, line: 568, baseType: !32, size: 16, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !283, file: !6, line: 665, baseType: !294, size: 384)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301, !302, !303, !304, !305}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !6, line: 594, baseType: !40, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !294, file: !6, line: 594, baseType: !29, size: 8, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !6, line: 594, baseType: !29, size: 8, offset: 72)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !294, file: !6, line: 594, baseType: !32, size: 16, offset: 80)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !294, file: !6, line: 594, baseType: !32, size: 16, offset: 96)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !294, file: !6, line: 594, baseType: !32, size: 16, offset: 112)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !294, file: !6, line: 595, baseType: !200, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !294, file: !6, line: 596, baseType: !95, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !294, file: !6, line: 597, baseType: !95, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !294, file: !6, line: 598, baseType: !22, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !283, file: !6, line: 666, baseType: !307, size: 192)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !6, line: 574, baseType: !40, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !307, file: !6, line: 574, baseType: !29, size: 8, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !6, line: 574, baseType: !29, size: 8, offset: 72)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !307, file: !6, line: 574, baseType: !32, size: 16, offset: 80)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !307, file: !6, line: 574, baseType: !32, size: 16, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !307, file: !6, line: 574, baseType: !58, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !283, file: !6, line: 667, baseType: !316, size: 192)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !6, line: 605, baseType: !40, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !316, file: !6, line: 605, baseType: !29, size: 8, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !6, line: 605, baseType: !29, size: 8, offset: 72)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !316, file: !6, line: 605, baseType: !32, size: 16, offset: 80)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !316, file: !6, line: 605, baseType: !32, size: 16, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !316, file: !6, line: 605, baseType: !100, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !283, file: !6, line: 668, baseType: !325, size: 448)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !6, line: 609, baseType: !40, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !325, file: !6, line: 609, baseType: !29, size: 8, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !6, line: 609, baseType: !29, size: 8, offset: 72)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !325, file: !6, line: 609, baseType: !32, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !325, file: !6, line: 609, baseType: !32, size: 16, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !325, file: !6, line: 609, baseType: !37, size: 32, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !325, file: !6, line: 610, baseType: !200, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !325, file: !6, line: 611, baseType: !95, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !325, file: !6, line: 612, baseType: !95, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !325, file: !6, line: 613, baseType: !37, size: 32, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !283, file: !6, line: 669, baseType: !338, size: 512)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !338, file: !6, line: 581, baseType: !40, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !338, file: !6, line: 581, baseType: !29, size: 8, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !6, line: 581, baseType: !29, size: 8, offset: 72)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !338, file: !6, line: 581, baseType: !32, size: 16, offset: 80)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !338, file: !6, line: 581, baseType: !32, size: 16, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !338, file: !6, line: 581, baseType: !37, size: 32, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !338, file: !6, line: 582, baseType: !58, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !338, file: !6, line: 583, baseType: !58, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !338, file: !6, line: 584, baseType: !166, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !338, file: !6, line: 585, baseType: !40, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !338, file: !6, line: 586, baseType: !37, size: 32, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !283, file: !6, line: 670, baseType: !352, size: 320)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !6, line: 621, baseType: !40, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !352, file: !6, line: 621, baseType: !29, size: 8, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !6, line: 621, baseType: !29, size: 8, offset: 72)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !352, file: !6, line: 621, baseType: !32, size: 16, offset: 80)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !352, file: !6, line: 621, baseType: !32, size: 16, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !352, file: !6, line: 621, baseType: !29, size: 8, offset: 112)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !352, file: !6, line: 622, baseType: !166, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !352, file: !6, line: 623, baseType: !58, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !352, file: !6, line: 624, baseType: !22, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !283, file: !6, line: 671, baseType: !364, size: 640)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !365)
!365 = !{!366, !367, !368, !369, !370, !371}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !6, line: 632, baseType: !40, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !364, file: !6, line: 632, baseType: !29, size: 8, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !364, file: !6, line: 632, baseType: !29, size: 8, offset: 72)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !364, file: !6, line: 632, baseType: !32, size: 16, offset: 80)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !364, file: !6, line: 632, baseType: !32, size: 16, offset: 96)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !364, file: !6, line: 633, baseType: !372, size: 512, offset: 128)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 512, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 8)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !283, file: !6, line: 672, baseType: !376, size: 320)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !376, file: !6, line: 655, baseType: !40, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !376, file: !6, line: 655, baseType: !29, size: 8, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !376, file: !6, line: 655, baseType: !29, size: 8, offset: 72)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !376, file: !6, line: 655, baseType: !32, size: 16, offset: 80)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !376, file: !6, line: 655, baseType: !32, size: 16, offset: 96)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !376, file: !6, line: 655, baseType: !29, size: 8, offset: 112)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !376, file: !6, line: 656, baseType: !100, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !376, file: !6, line: 657, baseType: !58, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !376, file: !6, line: 658, baseType: !387, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !389)
!389 = !{!390, !395}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !388, file: !6, line: 646, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !21, line: 1052, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !41, !37, !40}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !388, file: !6, line: 647, baseType: !40, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !192, file: !6, line: 902, baseType: !200, size: 64, offset: 512)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !192, file: !6, line: 903, baseType: !37, size: 32, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !167, file: !168, line: 61, baseType: !37, size: 32, offset: 1088)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !167, file: !168, line: 62, baseType: !37, size: 32, offset: 1120)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !167, file: !168, line: 63, baseType: !32, size: 16, offset: 1152)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !167, file: !168, line: 64, baseType: !29, size: 8, offset: 1168)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !167, file: !168, line: 66, baseType: !403, size: 2688, offset: 1216)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 2688, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 7)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !167, file: !168, line: 67, baseType: !407, size: 3072, offset: 3904)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 3072, elements: !373)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !167, file: !168, line: 68, baseType: !409, size: 576, offset: 6976)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 576, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 9)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !167, file: !168, line: 69, baseType: !131, size: 64, offset: 7552)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !167, file: !168, line: 71, baseType: !95, size: 64, offset: 7616)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !167, file: !168, line: 72, baseType: !131, size: 64, offset: 7680)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !167, file: !168, line: 73, baseType: !282, size: 64, offset: 7744)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !167, file: !168, line: 74, baseType: !100, size: 64, offset: 7808)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !167, file: !168, line: 75, baseType: !58, size: 64, offset: 7872)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !167, file: !168, line: 76, baseType: !100, size: 64, offset: 7936)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !167, file: !168, line: 77, baseType: !200, size: 64, offset: 8000)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !167, file: !168, line: 78, baseType: !58, size: 64, offset: 8064)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !167, file: !168, line: 79, baseType: !100, size: 64, offset: 8128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !167, file: !168, line: 80, baseType: !27, size: 64, offset: 8192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !167, file: !168, line: 81, baseType: !200, size: 64, offset: 8256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !167, file: !168, line: 82, baseType: !425, size: 64, offset: 8320)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !427, file: !6, line: 706, baseType: !37, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !427, file: !6, line: 707, baseType: !37, size: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !427, file: !6, line: 708, baseType: !32, size: 16, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !427, file: !6, line: 709, baseType: !29, size: 8, offset: 80)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !427, file: !6, line: 710, baseType: !29, size: 8, offset: 88)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !427, file: !6, line: 711, baseType: !29, size: 8, offset: 96)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !167, file: !168, line: 83, baseType: !200, size: 64, offset: 8384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !167, file: !168, line: 84, baseType: !58, size: 64, offset: 8448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !167, file: !168, line: 85, baseType: !282, size: 64, offset: 8512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !167, file: !168, line: 86, baseType: !58, size: 64, offset: 8576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !167, file: !168, line: 87, baseType: !282, size: 64, offset: 8640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !167, file: !168, line: 88, baseType: !200, size: 64, offset: 8704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !167, file: !168, line: 89, baseType: !200, size: 64, offset: 8768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !167, file: !168, line: 90, baseType: !443, size: 64, offset: 8832)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !167, file: !168, line: 91, baseType: !445, size: 64, offset: 8896)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!36, !166, !449}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !167, file: !168, line: 92, baseType: !451, size: 64, offset: 8960)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !163)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !159, file: !44, line: 152, baseType: !58, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !145, file: !44, line: 155, baseType: !37, size: 32, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !145, file: !44, line: 156, baseType: !120, size: 16, offset: 416)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !145, file: !44, line: 157, baseType: !29, size: 8, offset: 432)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !52, file: !44, line: 375, baseType: !457, size: 576)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !44, line: 122, size: 576, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !457, file: !44, line: 123, baseType: !58, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !457, file: !44, line: 123, baseType: !29, size: 8, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !457, file: !44, line: 123, baseType: !29, size: 8, offset: 72)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !457, file: !44, line: 123, baseType: !32, size: 16, offset: 80)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !457, file: !44, line: 123, baseType: !29, size: 8, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !457, file: !44, line: 123, baseType: !29, size: 8, offset: 104)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !457, file: !44, line: 124, baseType: !32, size: 16, offset: 112)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !457, file: !44, line: 125, baseType: !40, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !457, file: !44, line: 126, baseType: !22, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !457, file: !44, line: 127, baseType: !443, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !457, file: !44, line: 128, baseType: !58, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !44, line: 129, baseType: !58, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !457, file: !44, line: 130, baseType: !100, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !457, file: !44, line: 131, baseType: !29, size: 8, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !52, file: !44, line: 376, baseType: !474, size: 448)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !44, line: 134, size: 448, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !487}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !474, file: !44, line: 135, baseType: !58, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !474, file: !44, line: 135, baseType: !29, size: 8, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !44, line: 135, baseType: !29, size: 8, offset: 72)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !44, line: 135, baseType: !32, size: 16, offset: 80)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !44, line: 135, baseType: !29, size: 8, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !474, file: !44, line: 135, baseType: !29, size: 8, offset: 104)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !474, file: !44, line: 136, baseType: !100, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !474, file: !44, line: 137, baseType: !58, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !474, file: !44, line: 138, baseType: !58, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !474, file: !44, line: 139, baseType: !486, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !21, line: 129, baseType: !22)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !474, file: !44, line: 140, baseType: !37, size: 32, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !52, file: !44, line: 377, baseType: !489, size: 320)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !44, line: 184, size: 320, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !500}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !489, file: !44, line: 185, baseType: !58, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !489, file: !44, line: 185, baseType: !29, size: 8, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !489, file: !44, line: 185, baseType: !29, size: 8, offset: 72)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !489, file: !44, line: 185, baseType: !32, size: 16, offset: 80)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !44, line: 185, baseType: !29, size: 8, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !489, file: !44, line: 185, baseType: !497, size: 128, offset: 128)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 128, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 2)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !489, file: !44, line: 185, baseType: !58, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !52, file: !44, line: 378, baseType: !502, size: 384)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !44, line: 187, size: 384, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !502, file: !44, line: 188, baseType: !58, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !502, file: !44, line: 188, baseType: !29, size: 8, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !502, file: !44, line: 188, baseType: !29, size: 8, offset: 72)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !502, file: !44, line: 188, baseType: !32, size: 16, offset: 80)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !44, line: 188, baseType: !29, size: 8, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !502, file: !44, line: 189, baseType: !497, size: 128, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !502, file: !44, line: 189, baseType: !58, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !502, file: !44, line: 189, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !514)
!514 = !{!515, !516, !517, !518, !526, !541, !573, !574, !575, !576, !577, !578}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !513, file: !6, line: 481, baseType: !100, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !513, file: !6, line: 482, baseType: !512, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !6, line: 483, baseType: !512, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !513, file: !6, line: 484, baseType: !519, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !521)
!521 = !{!522, !523, !524, !525}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !520, file: !6, line: 498, baseType: !519, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !6, line: 499, baseType: !519, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !520, file: !6, line: 500, baseType: !512, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !520, file: !6, line: 501, baseType: !37, size: 32, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !513, file: !6, line: 485, baseType: !527, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !529)
!529 = !{!530, !535, !536, !537, !538, !539, !540}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !528, file: !6, line: 467, baseType: !531, size: 128)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !531, file: !6, line: 460, baseType: !29, size: 8)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !531, file: !6, line: 461, baseType: !22, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !528, file: !6, line: 468, baseType: !531, size: 128, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !528, file: !6, line: 469, baseType: !32, size: 16, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !528, file: !6, line: 470, baseType: !29, size: 8, offset: 272)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !528, file: !6, line: 471, baseType: !29, size: 8, offset: 280)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !528, file: !6, line: 472, baseType: !29, size: 8, offset: 288)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !528, file: !6, line: 473, baseType: !29, size: 8, offset: 296)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !513, file: !6, line: 486, baseType: !542, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !544)
!544 = !{!545, !568, !569, !570, !571, !572}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !543, file: !6, line: 449, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !547)
!547 = !{!548, !549, !562}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !546, file: !6, line: 439, baseType: !100, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !546, file: !6, line: 440, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !552)
!552 = !{!553, !558, !559, !560, !561}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !551, file: !6, line: 420, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !21, line: 1049, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!37, !41, !37, !40}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !551, file: !6, line: 421, baseType: !40, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !551, file: !6, line: 422, baseType: !100, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !551, file: !6, line: 423, baseType: !29, size: 8, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !551, file: !6, line: 424, baseType: !29, size: 8, offset: 200)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !546, file: !6, line: 441, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !564, file: !6, line: 430, baseType: !100, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !564, file: !6, line: 431, baseType: !563, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !543, file: !6, line: 450, baseType: !527, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !6, line: 451, baseType: !29, size: 8, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !543, file: !6, line: 452, baseType: !29, size: 8, offset: 136)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !543, file: !6, line: 453, baseType: !29, size: 8, offset: 144)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !543, file: !6, line: 454, baseType: !29, size: 8, offset: 152)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !513, file: !6, line: 487, baseType: !22, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !513, file: !6, line: 488, baseType: !37, size: 32, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !513, file: !6, line: 489, baseType: !32, size: 16, offset: 480)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !513, file: !6, line: 490, baseType: !32, size: 16, offset: 496)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !513, file: !6, line: 491, baseType: !29, size: 8, offset: 512)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !513, file: !6, line: 492, baseType: !29, size: 8, offset: 520)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !52, file: !44, line: 379, baseType: !580, size: 384)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !44, line: 192, size: 384, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !580, file: !44, line: 193, baseType: !58, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !580, file: !44, line: 193, baseType: !29, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !44, line: 193, baseType: !29, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !580, file: !44, line: 193, baseType: !32, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !44, line: 193, baseType: !29, size: 8, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !580, file: !44, line: 193, baseType: !497, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !580, file: !44, line: 193, baseType: !58, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !580, file: !44, line: 193, baseType: !37, size: 32, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !580, file: !44, line: 194, baseType: !37, size: 32, offset: 352)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !52, file: !44, line: 380, baseType: !592, size: 384)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !44, line: 197, size: 384, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601, !602, !603}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !592, file: !44, line: 198, baseType: !58, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !592, file: !44, line: 198, baseType: !29, size: 8, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !44, line: 198, baseType: !29, size: 8, offset: 72)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !592, file: !44, line: 198, baseType: !32, size: 16, offset: 80)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !44, line: 198, baseType: !29, size: 8, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !592, file: !44, line: 200, baseType: !29, size: 8, offset: 104)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !592, file: !44, line: 201, baseType: !29, size: 8, offset: 112)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !592, file: !44, line: 202, baseType: !497, size: 128, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !592, file: !44, line: 202, baseType: !58, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !592, file: !44, line: 202, baseType: !604, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !21, line: 128, baseType: !22)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !52, file: !44, line: 381, baseType: !606, size: 320)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !44, line: 205, size: 320, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !606, file: !44, line: 206, baseType: !58, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !606, file: !44, line: 206, baseType: !29, size: 8, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !606, file: !44, line: 206, baseType: !29, size: 8, offset: 72)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !606, file: !44, line: 206, baseType: !32, size: 16, offset: 80)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !606, file: !44, line: 206, baseType: !29, size: 8, offset: 96)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !606, file: !44, line: 206, baseType: !497, size: 128, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !606, file: !44, line: 206, baseType: !58, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !52, file: !44, line: 382, baseType: !616, size: 384)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !44, line: 233, size: 384, elements: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !616, file: !44, line: 234, baseType: !58, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !616, file: !44, line: 234, baseType: !29, size: 8, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !616, file: !44, line: 234, baseType: !29, size: 8, offset: 72)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !616, file: !44, line: 234, baseType: !32, size: 16, offset: 80)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !44, line: 234, baseType: !29, size: 8, offset: 96)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !616, file: !44, line: 234, baseType: !29, size: 8, offset: 104)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !616, file: !44, line: 234, baseType: !29, size: 8, offset: 112)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !616, file: !44, line: 234, baseType: !29, size: 8, offset: 120)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !616, file: !44, line: 234, baseType: !100, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !616, file: !44, line: 234, baseType: !37, size: 32, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !616, file: !44, line: 234, baseType: !37, size: 32, offset: 224)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !616, file: !44, line: 234, baseType: !37, size: 32, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !616, file: !44, line: 234, baseType: !29, size: 8, offset: 288)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !616, file: !44, line: 234, baseType: !29, size: 8, offset: 296)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !616, file: !44, line: 234, baseType: !58, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !52, file: !44, line: 383, baseType: !634, size: 576)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !44, line: 237, size: 576, elements: !635)
!635 = !{!636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !634, file: !44, line: 238, baseType: !58, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !634, file: !44, line: 238, baseType: !29, size: 8, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !634, file: !44, line: 238, baseType: !29, size: 8, offset: 72)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !634, file: !44, line: 238, baseType: !32, size: 16, offset: 80)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !634, file: !44, line: 238, baseType: !29, size: 8, offset: 96)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !634, file: !44, line: 238, baseType: !29, size: 8, offset: 104)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !634, file: !44, line: 238, baseType: !29, size: 8, offset: 112)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !634, file: !44, line: 238, baseType: !29, size: 8, offset: 120)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !634, file: !44, line: 238, baseType: !100, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !634, file: !44, line: 238, baseType: !37, size: 32, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !634, file: !44, line: 238, baseType: !37, size: 32, offset: 224)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !634, file: !44, line: 238, baseType: !37, size: 32, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !634, file: !44, line: 238, baseType: !29, size: 8, offset: 288)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !634, file: !44, line: 238, baseType: !29, size: 8, offset: 296)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !634, file: !44, line: 238, baseType: !32, size: 16, offset: 304)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !634, file: !44, line: 239, baseType: !58, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !634, file: !44, line: 240, baseType: !95, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !634, file: !44, line: 241, baseType: !32, size: 16, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !634, file: !44, line: 242, baseType: !95, size: 64, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !52, file: !44, line: 384, baseType: !656, size: 384)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !44, line: 262, size: 384, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !656, file: !44, line: 263, baseType: !58, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !656, file: !44, line: 263, baseType: !29, size: 8, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !44, line: 263, baseType: !29, size: 8, offset: 72)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !656, file: !44, line: 263, baseType: !32, size: 16, offset: 80)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !44, line: 263, baseType: !29, size: 8, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !656, file: !44, line: 263, baseType: !29, size: 8, offset: 104)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !656, file: !44, line: 263, baseType: !29, size: 8, offset: 112)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !656, file: !44, line: 263, baseType: !29, size: 8, offset: 120)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !656, file: !44, line: 263, baseType: !100, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !656, file: !44, line: 263, baseType: !37, size: 32, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !656, file: !44, line: 263, baseType: !37, size: 32, offset: 224)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !656, file: !44, line: 263, baseType: !37, size: 32, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !656, file: !44, line: 263, baseType: !29, size: 8, offset: 288)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !656, file: !44, line: 263, baseType: !29, size: 8, offset: 296)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !656, file: !44, line: 263, baseType: !29, size: 8, offset: 304)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !656, file: !44, line: 264, baseType: !58, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !52, file: !44, line: 385, baseType: !675, size: 448)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !44, line: 245, size: 448, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !675, file: !44, line: 246, baseType: !58, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !675, file: !44, line: 246, baseType: !29, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !44, line: 246, baseType: !29, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !675, file: !44, line: 246, baseType: !32, size: 16, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !44, line: 246, baseType: !29, size: 8, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !675, file: !44, line: 246, baseType: !29, size: 8, offset: 104)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !675, file: !44, line: 246, baseType: !29, size: 8, offset: 112)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !675, file: !44, line: 246, baseType: !29, size: 8, offset: 120)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !675, file: !44, line: 246, baseType: !100, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !675, file: !44, line: 246, baseType: !37, size: 32, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !675, file: !44, line: 246, baseType: !37, size: 32, offset: 224)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !675, file: !44, line: 246, baseType: !37, size: 32, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !675, file: !44, line: 246, baseType: !29, size: 8, offset: 288)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !675, file: !44, line: 246, baseType: !29, size: 8, offset: 296)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !675, file: !44, line: 246, baseType: !58, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !675, file: !44, line: 247, baseType: !58, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !52, file: !44, line: 386, baseType: !694, size: 448)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !44, line: 250, size: 448, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !694, file: !44, line: 251, baseType: !58, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !694, file: !44, line: 251, baseType: !29, size: 8, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !44, line: 251, baseType: !29, size: 8, offset: 72)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !694, file: !44, line: 251, baseType: !32, size: 16, offset: 80)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !44, line: 251, baseType: !29, size: 8, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !694, file: !44, line: 251, baseType: !29, size: 8, offset: 104)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !694, file: !44, line: 251, baseType: !29, size: 8, offset: 112)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !694, file: !44, line: 251, baseType: !29, size: 8, offset: 120)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !694, file: !44, line: 251, baseType: !100, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !694, file: !44, line: 251, baseType: !37, size: 32, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !694, file: !44, line: 251, baseType: !37, size: 32, offset: 224)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !694, file: !44, line: 251, baseType: !37, size: 32, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !694, file: !44, line: 251, baseType: !29, size: 8, offset: 288)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !694, file: !44, line: 251, baseType: !29, size: 8, offset: 296)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !694, file: !44, line: 256, baseType: !58, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !694, file: !44, line: 257, baseType: !58, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !52, file: !44, line: 387, baseType: !713, size: 512)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !44, line: 273, size: 512, elements: !714)
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !713, file: !44, line: 274, baseType: !58, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !713, file: !44, line: 274, baseType: !29, size: 8, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !44, line: 274, baseType: !29, size: 8, offset: 72)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !713, file: !44, line: 274, baseType: !32, size: 16, offset: 80)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !44, line: 274, baseType: !29, size: 8, offset: 96)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !713, file: !44, line: 274, baseType: !100, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !713, file: !44, line: 275, baseType: !37, size: 32, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !713, file: !44, line: 276, baseType: !391, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !713, file: !44, line: 277, baseType: !40, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !44, line: 278, baseType: !497, size: 128, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !52, file: !44, line: 388, baseType: !726, size: 512)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !44, line: 281, size: 512, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !741, !742, !743, !749, !750}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !726, file: !44, line: 282, baseType: !58, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !726, file: !44, line: 282, baseType: !29, size: 8, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !726, file: !44, line: 282, baseType: !29, size: 8, offset: 72)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !726, file: !44, line: 282, baseType: !32, size: 16, offset: 80)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !726, file: !44, line: 282, baseType: !29, size: 8, offset: 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !726, file: !44, line: 282, baseType: !29, size: 8, offset: 104)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !726, file: !44, line: 283, baseType: !29, size: 8, offset: 112)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !726, file: !44, line: 284, baseType: !736, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !21, line: 1084, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!36, !37, !486, !37, !740, !40, !40}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !726, file: !44, line: 285, baseType: !100, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !726, file: !44, line: 286, baseType: !40, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !726, file: !44, line: 287, baseType: !744, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !21, line: 1102, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!36, !41, !37, !40, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !726, file: !44, line: 288, baseType: !58, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !44, line: 289, baseType: !58, size: 64, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !52, file: !44, line: 389, baseType: !752, size: 512)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !44, line: 307, size: 512, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !752, file: !44, line: 308, baseType: !58, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !752, file: !44, line: 308, baseType: !29, size: 8, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !752, file: !44, line: 308, baseType: !29, size: 8, offset: 72)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !752, file: !44, line: 308, baseType: !32, size: 16, offset: 80)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !44, line: 308, baseType: !29, size: 8, offset: 96)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !752, file: !44, line: 308, baseType: !29, size: 8, offset: 104)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !752, file: !44, line: 309, baseType: !29, size: 8, offset: 112)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !752, file: !44, line: 310, baseType: !29, size: 8, offset: 120)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !752, file: !44, line: 311, baseType: !40, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !752, file: !44, line: 312, baseType: !100, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !752, file: !44, line: 313, baseType: !131, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !752, file: !44, line: 314, baseType: !95, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !752, file: !44, line: 315, baseType: !95, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !752, file: !44, line: 316, baseType: !37, size: 32, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !52, file: !44, line: 390, baseType: !769, size: 448)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !44, line: 340, size: 448, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778, !779, !780}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !769, file: !44, line: 341, baseType: !58, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !769, file: !44, line: 341, baseType: !29, size: 8, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !769, file: !44, line: 341, baseType: !29, size: 8, offset: 72)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !769, file: !44, line: 341, baseType: !32, size: 16, offset: 80)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !44, line: 341, baseType: !29, size: 8, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !769, file: !44, line: 341, baseType: !100, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !769, file: !44, line: 342, baseType: !100, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !769, file: !44, line: 343, baseType: !40, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !769, file: !44, line: 344, baseType: !95, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !769, file: !44, line: 345, baseType: !37, size: 32, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !52, file: !44, line: 391, baseType: !782, size: 256)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !44, line: 350, size: 256, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !794}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !782, file: !44, line: 351, baseType: !58, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !782, file: !44, line: 351, baseType: !29, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !44, line: 351, baseType: !29, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !782, file: !44, line: 351, baseType: !32, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !44, line: 351, baseType: !29, size: 8, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !782, file: !44, line: 351, baseType: !790, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !21, line: 1055, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !41, !40}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !782, file: !44, line: 352, baseType: !40, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !52, file: !44, line: 392, baseType: !796, size: 192)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !44, line: 357, size: 192, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !796, file: !44, line: 358, baseType: !58, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !796, file: !44, line: 358, baseType: !29, size: 8, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !796, file: !44, line: 358, baseType: !29, size: 8, offset: 72)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !796, file: !44, line: 358, baseType: !32, size: 16, offset: 80)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !44, line: 358, baseType: !29, size: 8, offset: 96)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !796, file: !44, line: 358, baseType: !58, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !52, file: !44, line: 399, baseType: !101, size: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !43, file: !44, line: 435, baseType: !101, size: 384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !43, file: !44, line: 436, baseType: !201, size: 1600)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !808, line: 148, baseType: !7)
!808 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!809 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!810 = !{!0}
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, size: 64, elements: !373)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!813 = !{!"rsp"}
!814 = !{i32 7, !"Dwarf Version", i32 4}
!815 = !{i32 2, !"Debug Info Version", i32 3}
!816 = !{i32 1, !"wchar_size", i32 2}
!817 = !{i32 1, !"Code Model", i32 2}
!818 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!819 = distinct !DISubprogram(name: "acpi_ns_print_node_pathname", scope: !3, file: !3, line: 37, type: !820, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !823)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !100, !822}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!823 = !{}
!824 = !DILocalVariable(name: "node", arg: 1, scope: !819, file: !3, line: 37, type: !100)
!825 = !DILocation(line: 37, column: 57, scope: !819)
!826 = !DILocalVariable(name: "message", arg: 2, scope: !819, file: !3, line: 38, type: !822)
!827 = !DILocation(line: 38, column: 20, scope: !819)
!828 = !DILocalVariable(name: "buffer", scope: !819, file: !3, line: 40, type: !829)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !21, line: 969, size: 128, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !829, file: !21, line: 970, baseType: !20, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !829, file: !21, line: 971, baseType: !40, size: 64, offset: 64)
!833 = !DILocation(line: 40, column: 21, scope: !819)
!834 = !DILocalVariable(name: "status", scope: !819, file: !3, line: 41, type: !36)
!835 = !DILocation(line: 41, column: 14, scope: !819)
!836 = !DILocation(line: 43, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !819, file: !3, line: 43, column: 6)
!838 = !DILocation(line: 43, column: 6, scope: !819)
!839 = !DILocation(line: 44, column: 3, scope: !840)
!840 = distinct !DILexicalBlock(scope: !837, file: !3, line: 43, column: 13)
!841 = !DILocation(line: 45, column: 3, scope: !840)
!842 = !DILocation(line: 50, column: 9, scope: !819)
!843 = !DILocation(line: 50, column: 16, scope: !819)
!844 = !DILocation(line: 52, column: 38, scope: !819)
!845 = !DILocation(line: 52, column: 11, scope: !819)
!846 = !DILocation(line: 52, column: 9, scope: !819)
!847 = !DILocation(line: 53, column: 6, scope: !848)
!848 = distinct !DILexicalBlock(scope: !819, file: !3, line: 53, column: 6)
!849 = !DILocation(line: 53, column: 6, scope: !819)
!850 = !DILocation(line: 54, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 54, column: 7)
!852 = distinct !DILexicalBlock(scope: !848, file: !3, line: 53, column: 28)
!853 = !DILocation(line: 54, column: 7, scope: !852)
!854 = !DILocation(line: 55, column: 26, scope: !855)
!855 = distinct !DILexicalBlock(scope: !851, file: !3, line: 54, column: 16)
!856 = !DILocation(line: 55, column: 4, scope: !855)
!857 = !DILocation(line: 56, column: 3, scope: !855)
!858 = !DILocation(line: 58, column: 39, scope: !852)
!859 = !DILocation(line: 58, column: 3, scope: !852)
!860 = !DILocation(line: 59, column: 3, scope: !852)
!861 = !DILocation(line: 60, column: 2, scope: !852)
!862 = !DILocation(line: 61, column: 1, scope: !819)
!863 = distinct !DISubprogram(name: "acpi_os_free", scope: !864, file: !864, line: 60, type: !865, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!864 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!865 = !DISubroutineType(types: !866)
!866 = !{null, !40}
!867 = !DILocalVariable(name: "memory", arg: 1, scope: !863, file: !864, line: 60, type: !40)
!868 = !DILocation(line: 60, column: 39, scope: !863)
!869 = !DILocation(line: 62, column: 8, scope: !863)
!870 = !DILocation(line: 62, column: 2, scope: !863)
!871 = !DILocation(line: 63, column: 1, scope: !863)
!872 = distinct !DISubprogram(name: "acpi_ns_get_type", scope: !3, file: !3, line: 75, type: !873, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !823)
!873 = !DISubroutineType(types: !874)
!874 = !{!875, !100}
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !21, line: 635, baseType: !37)
!876 = !DILocalVariable(name: "node", arg: 1, scope: !872, file: !3, line: 75, type: !100)
!877 = !DILocation(line: 75, column: 64, scope: !872)
!878 = !DILocation(line: 79, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !872, file: !3, line: 79, column: 6)
!880 = !DILocation(line: 79, column: 6, scope: !872)
!881 = !DILocation(line: 80, column: 3, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !3, line: 79, column: 13)
!883 = !DILocation(line: 81, column: 3, scope: !882)
!884 = !DILocation(line: 84, column: 2, scope: !872)
!885 = !DILocation(line: 85, column: 1, scope: !872)
!886 = distinct !DISubprogram(name: "acpi_ns_local", scope: !3, file: !3, line: 100, type: !887, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !823)
!887 = !DISubroutineType(types: !888)
!888 = !{!37, !875}
!889 = !DILocalVariable(name: "type", arg: 1, scope: !886, file: !3, line: 100, type: !875)
!890 = !DILocation(line: 100, column: 36, scope: !886)
!891 = !DILocation(line: 104, column: 33, scope: !892)
!892 = distinct !DILexicalBlock(scope: !886, file: !3, line: 104, column: 6)
!893 = !DILocation(line: 104, column: 7, scope: !892)
!894 = !DILocation(line: 104, column: 6, scope: !886)
!895 = !DILocation(line: 108, column: 3, scope: !896)
!896 = distinct !DILexicalBlock(scope: !892, file: !3, line: 104, column: 40)
!897 = !DILocation(line: 109, column: 3, scope: !896)
!898 = !DILocation(line: 112, column: 2, scope: !886)
!899 = !DILocation(line: 113, column: 1, scope: !886)
!900 = distinct !DISubprogram(name: "acpi_ns_get_internal_name_length", scope: !3, file: !3, line: 129, type: !901, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !823)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !903}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namestring_info", file: !6, line: 217, size: 320, elements: !905)
!905 = !{!906, !907, !908, !909, !910, !911, !912}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !904, file: !6, line: 218, baseType: !822, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "next_external_char", scope: !904, file: !6, line: 219, baseType: !822, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "internal_name", scope: !904, file: !6, line: 220, baseType: !27, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !904, file: !6, line: 221, baseType: !37, size: 32, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "num_segments", scope: !904, file: !6, line: 222, baseType: !37, size: 32, offset: 224)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "num_carats", scope: !904, file: !6, line: 223, baseType: !37, size: 32, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "fully_qualified", scope: !904, file: !6, line: 224, baseType: !29, size: 8, offset: 288)
!913 = !DILocalVariable(name: "info", arg: 1, scope: !900, file: !3, line: 129, type: !903)
!914 = !DILocation(line: 129, column: 68, scope: !900)
!915 = !DILocalVariable(name: "next_external_char", scope: !900, file: !3, line: 131, type: !822)
!916 = !DILocation(line: 131, column: 14, scope: !900)
!917 = !DILocalVariable(name: "i", scope: !900, file: !3, line: 132, type: !37)
!918 = !DILocation(line: 132, column: 6, scope: !900)
!919 = !DILocation(line: 136, column: 23, scope: !900)
!920 = !DILocation(line: 136, column: 29, scope: !900)
!921 = !DILocation(line: 136, column: 21, scope: !900)
!922 = !DILocation(line: 137, column: 2, scope: !900)
!923 = !DILocation(line: 137, column: 8, scope: !900)
!924 = !DILocation(line: 137, column: 19, scope: !900)
!925 = !DILocation(line: 138, column: 2, scope: !900)
!926 = !DILocation(line: 138, column: 8, scope: !900)
!927 = !DILocation(line: 138, column: 21, scope: !900)
!928 = !DILocation(line: 139, column: 2, scope: !900)
!929 = !DILocation(line: 139, column: 8, scope: !900)
!930 = !DILocation(line: 139, column: 24, scope: !900)
!931 = !DILocation(line: 149, column: 6, scope: !932)
!932 = distinct !DILexicalBlock(scope: !900, file: !3, line: 149, column: 6)
!933 = !DILocation(line: 149, column: 6, scope: !900)
!934 = !DILocation(line: 150, column: 3, scope: !935)
!935 = distinct !DILexicalBlock(scope: !932, file: !3, line: 149, column: 48)
!936 = !DILocation(line: 150, column: 9, scope: !935)
!937 = !DILocation(line: 150, column: 25, scope: !935)
!938 = !DILocation(line: 151, column: 21, scope: !935)
!939 = !DILocation(line: 155, column: 3, scope: !935)
!940 = !DILocation(line: 155, column: 10, scope: !935)
!941 = !DILocation(line: 156, column: 22, scope: !942)
!942 = distinct !DILexicalBlock(scope: !935, file: !3, line: 155, column: 52)
!943 = distinct !{!943, !939, !944}
!944 = !DILocation(line: 157, column: 3, scope: !935)
!945 = !DILocation(line: 158, column: 2, scope: !935)
!946 = !DILocation(line: 161, column: 3, scope: !947)
!947 = distinct !DILexicalBlock(scope: !932, file: !3, line: 158, column: 9)
!948 = !DILocation(line: 161, column: 10, scope: !947)
!949 = !DILocation(line: 162, column: 4, scope: !950)
!950 = distinct !DILexicalBlock(scope: !947, file: !3, line: 161, column: 54)
!951 = !DILocation(line: 162, column: 10, scope: !950)
!952 = !DILocation(line: 162, column: 20, scope: !950)
!953 = !DILocation(line: 163, column: 22, scope: !950)
!954 = distinct !{!954, !946, !955}
!955 = !DILocation(line: 164, column: 3, scope: !947)
!956 = !DILocation(line: 172, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !900, file: !3, line: 172, column: 6)
!958 = !DILocation(line: 172, column: 6, scope: !957)
!959 = !DILocation(line: 172, column: 6, scope: !900)
!960 = !DILocation(line: 173, column: 3, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !3, line: 172, column: 27)
!962 = !DILocation(line: 173, column: 9, scope: !961)
!963 = !DILocation(line: 173, column: 22, scope: !961)
!964 = !DILocation(line: 174, column: 10, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !3, line: 174, column: 3)
!966 = !DILocation(line: 174, column: 8, scope: !965)
!967 = !DILocation(line: 174, column: 15, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !3, line: 174, column: 3)
!969 = !DILocation(line: 174, column: 34, scope: !968)
!970 = !DILocation(line: 174, column: 3, scope: !965)
!971 = !DILocation(line: 175, column: 8, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !3, line: 175, column: 8)
!973 = distinct !DILexicalBlock(scope: !968, file: !3, line: 174, column: 43)
!974 = !DILocation(line: 175, column: 8, scope: !973)
!975 = !DILocation(line: 176, column: 5, scope: !976)
!976 = distinct !DILexicalBlock(scope: !972, file: !3, line: 175, column: 55)
!977 = !DILocation(line: 176, column: 11, scope: !976)
!978 = !DILocation(line: 176, column: 23, scope: !976)
!979 = !DILocation(line: 177, column: 4, scope: !976)
!980 = !DILocation(line: 178, column: 3, scope: !973)
!981 = !DILocation(line: 174, column: 39, scope: !968)
!982 = !DILocation(line: 174, column: 3, scope: !968)
!983 = distinct !{!983, !970, !984}
!984 = !DILocation(line: 178, column: 3, scope: !965)
!985 = !DILocation(line: 179, column: 2, scope: !961)
!986 = !DILocation(line: 181, column: 38, scope: !900)
!987 = !DILocation(line: 181, column: 44, scope: !900)
!988 = !DILocation(line: 181, column: 36, scope: !900)
!989 = !DILocation(line: 181, column: 58, scope: !900)
!990 = !DILocation(line: 182, column: 10, scope: !900)
!991 = !DILocation(line: 182, column: 16, scope: !900)
!992 = !DILocation(line: 182, column: 8, scope: !900)
!993 = !DILocation(line: 181, column: 2, scope: !900)
!994 = !DILocation(line: 181, column: 8, scope: !900)
!995 = !DILocation(line: 181, column: 15, scope: !900)
!996 = !DILocation(line: 184, column: 29, scope: !900)
!997 = !DILocation(line: 184, column: 2, scope: !900)
!998 = !DILocation(line: 184, column: 8, scope: !900)
!999 = !DILocation(line: 184, column: 27, scope: !900)
!1000 = !DILocation(line: 185, column: 1, scope: !900)
!1001 = distinct !DISubprogram(name: "acpi_ns_build_internal_name", scope: !3, file: !3, line: 200, type: !1002, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!36, !903}
!1004 = !DILocalVariable(name: "info", arg: 1, scope: !1001, file: !3, line: 200, type: !903)
!1005 = !DILocation(line: 200, column: 70, scope: !1001)
!1006 = !DILocalVariable(name: "num_segments", scope: !1001, file: !3, line: 202, type: !37)
!1007 = !DILocation(line: 202, column: 6, scope: !1001)
!1008 = !DILocation(line: 202, column: 21, scope: !1001)
!1009 = !DILocation(line: 202, column: 27, scope: !1001)
!1010 = !DILocalVariable(name: "internal_name", scope: !1001, file: !3, line: 203, type: !27)
!1011 = !DILocation(line: 203, column: 8, scope: !1001)
!1012 = !DILocation(line: 203, column: 24, scope: !1001)
!1013 = !DILocation(line: 203, column: 30, scope: !1001)
!1014 = !DILocalVariable(name: "external_name", scope: !1001, file: !3, line: 204, type: !822)
!1015 = !DILocation(line: 204, column: 14, scope: !1001)
!1016 = !DILocation(line: 204, column: 30, scope: !1001)
!1017 = !DILocation(line: 204, column: 36, scope: !1001)
!1018 = !DILocalVariable(name: "result", scope: !1001, file: !3, line: 205, type: !27)
!1019 = !DILocation(line: 205, column: 8, scope: !1001)
!1020 = !DILocalVariable(name: "i", scope: !1001, file: !3, line: 206, type: !37)
!1021 = !DILocation(line: 206, column: 6, scope: !1001)
!1022 = !DILocation(line: 212, column: 6, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 212, column: 6)
!1024 = !DILocation(line: 212, column: 12, scope: !1023)
!1025 = !DILocation(line: 212, column: 6, scope: !1001)
!1026 = !DILocation(line: 213, column: 3, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 212, column: 29)
!1028 = !DILocation(line: 213, column: 20, scope: !1027)
!1029 = !DILocation(line: 215, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 215, column: 7)
!1031 = !DILocation(line: 215, column: 20, scope: !1030)
!1032 = !DILocation(line: 215, column: 7, scope: !1027)
!1033 = !DILocation(line: 216, column: 14, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 215, column: 26)
!1035 = !DILocation(line: 216, column: 11, scope: !1034)
!1036 = !DILocation(line: 217, column: 3, scope: !1034)
!1037 = !DILocation(line: 217, column: 14, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 217, column: 14)
!1039 = !DILocation(line: 217, column: 27, scope: !1038)
!1040 = !DILocation(line: 217, column: 14, scope: !1030)
!1041 = !DILocation(line: 218, column: 4, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 217, column: 33)
!1043 = !DILocation(line: 218, column: 21, scope: !1042)
!1044 = !DILocation(line: 219, column: 14, scope: !1042)
!1045 = !DILocation(line: 219, column: 11, scope: !1042)
!1046 = !DILocation(line: 220, column: 3, scope: !1042)
!1047 = !DILocation(line: 221, column: 4, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 220, column: 10)
!1049 = !DILocation(line: 221, column: 21, scope: !1048)
!1050 = !DILocation(line: 222, column: 29, scope: !1048)
!1051 = !DILocation(line: 222, column: 23, scope: !1048)
!1052 = !DILocation(line: 222, column: 4, scope: !1048)
!1053 = !DILocation(line: 222, column: 21, scope: !1048)
!1054 = !DILocation(line: 223, column: 14, scope: !1048)
!1055 = !DILocation(line: 223, column: 11, scope: !1048)
!1056 = !DILocation(line: 225, column: 2, scope: !1027)
!1057 = !DILocation(line: 230, column: 5, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 225, column: 9)
!1059 = !DILocation(line: 231, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 231, column: 7)
!1061 = !DILocation(line: 231, column: 13, scope: !1060)
!1062 = !DILocation(line: 231, column: 7, scope: !1058)
!1063 = !DILocation(line: 232, column: 11, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 232, column: 4)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 231, column: 25)
!1066 = !DILocation(line: 232, column: 9, scope: !1064)
!1067 = !DILocation(line: 232, column: 16, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 232, column: 4)
!1069 = !DILocation(line: 232, column: 20, scope: !1068)
!1070 = !DILocation(line: 232, column: 26, scope: !1068)
!1071 = !DILocation(line: 232, column: 18, scope: !1068)
!1072 = !DILocation(line: 232, column: 4, scope: !1064)
!1073 = !DILocation(line: 233, column: 5, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 232, column: 43)
!1075 = !DILocation(line: 233, column: 19, scope: !1074)
!1076 = !DILocation(line: 233, column: 22, scope: !1074)
!1077 = !DILocation(line: 234, column: 4, scope: !1074)
!1078 = !DILocation(line: 232, column: 39, scope: !1068)
!1079 = !DILocation(line: 232, column: 4, scope: !1068)
!1080 = distinct !{!1080, !1072, !1081}
!1081 = !DILocation(line: 234, column: 4, scope: !1064)
!1082 = !DILocation(line: 235, column: 3, scope: !1065)
!1083 = !DILocation(line: 237, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 237, column: 7)
!1085 = !DILocation(line: 237, column: 20, scope: !1084)
!1086 = !DILocation(line: 237, column: 7, scope: !1058)
!1087 = !DILocation(line: 238, column: 14, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 237, column: 26)
!1089 = !DILocation(line: 238, column: 28, scope: !1088)
!1090 = !DILocation(line: 238, column: 11, scope: !1088)
!1091 = !DILocation(line: 239, column: 3, scope: !1088)
!1092 = !DILocation(line: 239, column: 14, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 239, column: 14)
!1094 = !DILocation(line: 239, column: 27, scope: !1093)
!1095 = !DILocation(line: 239, column: 14, scope: !1084)
!1096 = !DILocation(line: 240, column: 4, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 239, column: 33)
!1098 = !DILocation(line: 240, column: 18, scope: !1097)
!1099 = !DILocation(line: 240, column: 21, scope: !1097)
!1100 = !DILocation(line: 241, column: 14, scope: !1097)
!1101 = !DILocation(line: 241, column: 39, scope: !1097)
!1102 = !DILocation(line: 241, column: 28, scope: !1097)
!1103 = !DILocation(line: 241, column: 41, scope: !1097)
!1104 = !DILocation(line: 241, column: 11, scope: !1097)
!1105 = !DILocation(line: 242, column: 3, scope: !1097)
!1106 = !DILocation(line: 243, column: 4, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 242, column: 10)
!1108 = !DILocation(line: 243, column: 18, scope: !1107)
!1109 = !DILocation(line: 243, column: 21, scope: !1107)
!1110 = !DILocation(line: 244, column: 44, scope: !1107)
!1111 = !DILocation(line: 244, column: 38, scope: !1107)
!1112 = !DILocation(line: 244, column: 4, scope: !1107)
!1113 = !DILocation(line: 244, column: 29, scope: !1107)
!1114 = !DILocation(line: 244, column: 18, scope: !1107)
!1115 = !DILocation(line: 244, column: 31, scope: !1107)
!1116 = !DILocation(line: 244, column: 36, scope: !1107)
!1117 = !DILocation(line: 245, column: 14, scope: !1107)
!1118 = !DILocation(line: 245, column: 39, scope: !1107)
!1119 = !DILocation(line: 245, column: 28, scope: !1107)
!1120 = !DILocation(line: 245, column: 41, scope: !1107)
!1121 = !DILocation(line: 245, column: 11, scope: !1107)
!1122 = !DILocation(line: 251, column: 2, scope: !1001)
!1123 = !DILocation(line: 251, column: 9, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 251, column: 2)
!1125 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 251, column: 2)
!1126 = !DILocation(line: 251, column: 2, scope: !1125)
!1127 = !DILocation(line: 252, column: 10, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 252, column: 3)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 251, column: 39)
!1130 = !DILocation(line: 252, column: 8, scope: !1128)
!1131 = !DILocation(line: 252, column: 15, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 252, column: 3)
!1133 = !DILocation(line: 252, column: 17, scope: !1132)
!1134 = !DILocation(line: 252, column: 3, scope: !1128)
!1135 = !DILocation(line: 253, column: 8, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 253, column: 8)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 252, column: 43)
!1138 = !DILocation(line: 253, column: 47, scope: !1136)
!1139 = !DILocation(line: 254, column: 10, scope: !1136)
!1140 = !DILocation(line: 254, column: 9, scope: !1136)
!1141 = !DILocation(line: 254, column: 24, scope: !1136)
!1142 = !DILocation(line: 253, column: 8, scope: !1137)
!1143 = !DILocation(line: 258, column: 5, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 254, column: 31)
!1145 = !DILocation(line: 258, column: 12, scope: !1144)
!1146 = !DILocation(line: 258, column: 15, scope: !1144)
!1147 = !DILocation(line: 259, column: 4, scope: !1144)
!1148 = !DILocation(line: 262, column: 23, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 259, column: 11)
!1150 = !DILocation(line: 262, column: 5, scope: !1149)
!1151 = !DILocation(line: 262, column: 12, scope: !1149)
!1152 = !DILocation(line: 262, column: 15, scope: !1149)
!1153 = !DILocation(line: 263, column: 18, scope: !1149)
!1154 = !DILocation(line: 265, column: 3, scope: !1137)
!1155 = !DILocation(line: 252, column: 39, scope: !1132)
!1156 = !DILocation(line: 252, column: 3, scope: !1132)
!1157 = distinct !{!1157, !1134, !1158}
!1158 = !DILocation(line: 265, column: 3, scope: !1128)
!1159 = !DILocation(line: 269, column: 8, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 269, column: 7)
!1161 = !DILocation(line: 269, column: 47, scope: !1160)
!1162 = !DILocation(line: 270, column: 9, scope: !1160)
!1163 = !DILocation(line: 270, column: 8, scope: !1160)
!1164 = !DILocation(line: 270, column: 23, scope: !1160)
!1165 = !DILocation(line: 269, column: 7, scope: !1129)
!1166 = !DILocation(line: 271, column: 4, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 270, column: 30)
!1168 = !DILocation(line: 276, column: 16, scope: !1129)
!1169 = !DILocation(line: 277, column: 10, scope: !1129)
!1170 = !DILocation(line: 278, column: 2, scope: !1129)
!1171 = !DILocation(line: 251, column: 35, scope: !1124)
!1172 = !DILocation(line: 251, column: 2, scope: !1124)
!1173 = distinct !{!1173, !1126, !1174}
!1174 = !DILocation(line: 278, column: 2, scope: !1125)
!1175 = !DILocation(line: 282, column: 3, scope: !1001)
!1176 = !DILocation(line: 282, column: 10, scope: !1001)
!1177 = !DILocation(line: 284, column: 6, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 284, column: 6)
!1179 = !DILocation(line: 284, column: 12, scope: !1178)
!1180 = !DILocation(line: 284, column: 6, scope: !1001)
!1181 = !DILocation(line: 288, column: 2, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 284, column: 29)
!1183 = !DILocation(line: 293, column: 2, scope: !1001)
!1184 = !DILocation(line: 294, column: 1, scope: !1001)
!1185 = distinct !DISubprogram(name: "__toupper", scope: !1186, file: !1186, line: 49, type: !1187, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1186 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/lizy2001/genbc/linux")
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!31, !31}
!1189 = !DILocalVariable(name: "c", arg: 1, scope: !1185, file: !1186, line: 49, type: !31)
!1190 = !DILocation(line: 49, column: 53, scope: !1185)
!1191 = !DILocation(line: 51, column: 6, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1185, file: !1186, line: 51, column: 6)
!1193 = !DILocation(line: 51, column: 6, scope: !1185)
!1194 = !DILocation(line: 52, column: 5, scope: !1192)
!1195 = !DILocation(line: 52, column: 3, scope: !1192)
!1196 = !DILocation(line: 53, column: 9, scope: !1185)
!1197 = !DILocation(line: 53, column: 2, scope: !1185)
!1198 = distinct !DISubprogram(name: "acpi_ns_internalize_name", scope: !3, file: !3, line: 312, type: !1199, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!36, !822, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!1202 = !DILocalVariable(name: "external_name", arg: 1, scope: !1198, file: !3, line: 312, type: !822)
!1203 = !DILocation(line: 312, column: 38, scope: !1198)
!1204 = !DILocalVariable(name: "converted_name", arg: 2, scope: !1198, file: !3, line: 312, type: !1201)
!1205 = !DILocation(line: 312, column: 60, scope: !1198)
!1206 = !DILocalVariable(name: "internal_name", scope: !1198, file: !3, line: 314, type: !27)
!1207 = !DILocation(line: 314, column: 8, scope: !1198)
!1208 = !DILocalVariable(name: "info", scope: !1198, file: !3, line: 315, type: !904)
!1209 = !DILocation(line: 315, column: 30, scope: !1198)
!1210 = !DILocalVariable(name: "status", scope: !1198, file: !3, line: 316, type: !36)
!1211 = !DILocation(line: 316, column: 14, scope: !1198)
!1212 = !DILocation(line: 320, column: 8, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 320, column: 6)
!1214 = !DILocation(line: 320, column: 23, scope: !1213)
!1215 = !DILocation(line: 320, column: 28, scope: !1213)
!1216 = !DILocation(line: 320, column: 27, scope: !1213)
!1217 = !DILocation(line: 320, column: 42, scope: !1213)
!1218 = !DILocation(line: 320, column: 48, scope: !1213)
!1219 = !DILocation(line: 320, column: 53, scope: !1213)
!1220 = !DILocation(line: 320, column: 6, scope: !1198)
!1221 = !DILocation(line: 321, column: 3, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 320, column: 70)
!1223 = !DILocation(line: 326, column: 23, scope: !1198)
!1224 = !DILocation(line: 326, column: 7, scope: !1198)
!1225 = !DILocation(line: 326, column: 21, scope: !1198)
!1226 = !DILocation(line: 327, column: 2, scope: !1198)
!1227 = !DILocation(line: 331, column: 18, scope: !1198)
!1228 = !DILocation(line: 331, column: 16, scope: !1198)
!1229 = !DILocation(line: 332, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 332, column: 6)
!1231 = !DILocation(line: 332, column: 6, scope: !1198)
!1232 = !DILocation(line: 333, column: 3, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 332, column: 22)
!1234 = !DILocation(line: 338, column: 23, scope: !1198)
!1235 = !DILocation(line: 338, column: 7, scope: !1198)
!1236 = !DILocation(line: 338, column: 21, scope: !1198)
!1237 = !DILocation(line: 339, column: 11, scope: !1198)
!1238 = !DILocation(line: 339, column: 9, scope: !1198)
!1239 = !DILocation(line: 340, column: 6, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 340, column: 6)
!1241 = !DILocation(line: 340, column: 6, scope: !1198)
!1242 = !DILocation(line: 341, column: 3, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 340, column: 28)
!1244 = !DILocation(line: 342, column: 3, scope: !1243)
!1245 = !DILocation(line: 345, column: 20, scope: !1198)
!1246 = !DILocation(line: 345, column: 3, scope: !1198)
!1247 = !DILocation(line: 345, column: 18, scope: !1198)
!1248 = !DILocation(line: 346, column: 2, scope: !1198)
!1249 = !DILocation(line: 347, column: 1, scope: !1198)
!1250 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !864, file: !864, line: 55, type: !1251, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!40, !20}
!1253 = !DILocalVariable(name: "flags", arg: 1, scope: !1254, file: !1255, line: 162, type: !809)
!1254 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1255, file: !1255, line: 162, type: !1256, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1255 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!35, !809}
!1258 = !DILocation(line: 162, column: 67, scope: !1254, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 57, column: 23, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !864, line: 57, column: 23)
!1261 = distinct !DILexicalBlock(scope: !1250, file: !864, line: 57, column: 23)
!1262 = !DILocalVariable(name: "size", arg: 1, scope: !1250, file: !864, line: 55, type: !20)
!1263 = !DILocation(line: 55, column: 55, scope: !1250)
!1264 = !DILocation(line: 57, column: 17, scope: !1250)
!1265 = !DILocalVariable(name: "_flags", scope: !1261, file: !864, line: 57, type: !809)
!1266 = !DILocation(line: 57, column: 23, scope: !1261)
!1267 = !DILocalVariable(name: "__dummy", scope: !1268, file: !864, line: 57, type: !809)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !864, line: 57, column: 23)
!1269 = distinct !DILexicalBlock(scope: !1261, file: !864, line: 57, column: 23)
!1270 = !DILocation(line: 57, column: 23, scope: !1268)
!1271 = !DILocalVariable(name: "__dummy2", scope: !1268, file: !864, line: 57, type: !809)
!1272 = !DILocation(line: 57, column: 23, scope: !1269)
!1273 = !DILocalVariable(name: "__dummy", scope: !1274, file: !864, line: 57, type: !809)
!1274 = distinct !DILexicalBlock(scope: !1260, file: !864, line: 57, column: 23)
!1275 = !DILocation(line: 57, column: 23, scope: !1274)
!1276 = !DILocalVariable(name: "__dummy2", scope: !1274, file: !864, line: 57, type: !809)
!1277 = !DILocation(line: 57, column: 23, scope: !1260)
!1278 = !DILocation(line: 164, column: 11, scope: !1254, inlinedAt: !1259)
!1279 = !DILocation(line: 164, column: 17, scope: !1254, inlinedAt: !1259)
!1280 = !DILocation(line: 164, column: 9, scope: !1254, inlinedAt: !1259)
!1281 = !DILocation(line: 57, column: 23, scope: !1250)
!1282 = !DILocation(line: 57, column: 9, scope: !1250)
!1283 = !DILocation(line: 57, column: 2, scope: !1250)
!1284 = distinct !DISubprogram(name: "acpi_ns_externalize_name", scope: !3, file: !3, line: 367, type: !1285, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!36, !37, !822, !39, !1201}
!1287 = !DILocalVariable(name: "internal_name_length", arg: 1, scope: !1284, file: !3, line: 367, type: !37)
!1288 = !DILocation(line: 367, column: 30, scope: !1284)
!1289 = !DILocalVariable(name: "internal_name", arg: 2, scope: !1284, file: !3, line: 368, type: !822)
!1290 = !DILocation(line: 368, column: 17, scope: !1284)
!1291 = !DILocalVariable(name: "converted_name_length", arg: 3, scope: !1284, file: !3, line: 369, type: !39)
!1292 = !DILocation(line: 369, column: 11, scope: !1284)
!1293 = !DILocalVariable(name: "converted_name", arg: 4, scope: !1284, file: !3, line: 369, type: !1201)
!1294 = !DILocation(line: 369, column: 41, scope: !1284)
!1295 = !DILocalVariable(name: "names_index", scope: !1284, file: !3, line: 371, type: !37)
!1296 = !DILocation(line: 371, column: 6, scope: !1284)
!1297 = !DILocalVariable(name: "num_segments", scope: !1284, file: !3, line: 372, type: !37)
!1298 = !DILocation(line: 372, column: 6, scope: !1284)
!1299 = !DILocalVariable(name: "required_length", scope: !1284, file: !3, line: 373, type: !37)
!1300 = !DILocation(line: 373, column: 6, scope: !1284)
!1301 = !DILocalVariable(name: "prefix_length", scope: !1284, file: !3, line: 374, type: !37)
!1302 = !DILocation(line: 374, column: 6, scope: !1284)
!1303 = !DILocalVariable(name: "i", scope: !1284, file: !3, line: 375, type: !37)
!1304 = !DILocation(line: 375, column: 6, scope: !1284)
!1305 = !DILocalVariable(name: "j", scope: !1284, file: !3, line: 376, type: !37)
!1306 = !DILocation(line: 376, column: 6, scope: !1284)
!1307 = !DILocation(line: 380, column: 7, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 380, column: 6)
!1309 = !DILocation(line: 380, column: 28, scope: !1308)
!1310 = !DILocation(line: 380, column: 32, scope: !1308)
!1311 = !DILocation(line: 380, column: 46, scope: !1308)
!1312 = !DILocation(line: 380, column: 50, scope: !1308)
!1313 = !DILocation(line: 380, column: 6, scope: !1284)
!1314 = !DILocation(line: 381, column: 3, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 380, column: 66)
!1316 = !DILocation(line: 386, column: 10, scope: !1284)
!1317 = !DILocation(line: 386, column: 2, scope: !1284)
!1318 = !DILocation(line: 389, column: 17, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 386, column: 28)
!1320 = !DILocation(line: 390, column: 3, scope: !1319)
!1321 = !DILocation(line: 394, column: 10, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 394, column: 3)
!1323 = !DILocation(line: 394, column: 8, scope: !1322)
!1324 = !DILocation(line: 394, column: 15, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 394, column: 3)
!1326 = !DILocation(line: 394, column: 19, scope: !1325)
!1327 = !DILocation(line: 394, column: 17, scope: !1325)
!1328 = !DILocation(line: 394, column: 3, scope: !1322)
!1329 = !DILocation(line: 395, column: 8, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 395, column: 8)
!1331 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 394, column: 46)
!1332 = !DILocation(line: 395, column: 8, scope: !1331)
!1333 = !DILocation(line: 396, column: 21, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 395, column: 49)
!1335 = !DILocation(line: 396, column: 23, scope: !1334)
!1336 = !DILocation(line: 396, column: 19, scope: !1334)
!1337 = !DILocation(line: 397, column: 4, scope: !1334)
!1338 = !DILocation(line: 398, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 397, column: 11)
!1340 = !DILocation(line: 400, column: 3, scope: !1331)
!1341 = !DILocation(line: 394, column: 42, scope: !1325)
!1342 = !DILocation(line: 394, column: 3, scope: !1325)
!1343 = distinct !{!1343, !1328, !1344}
!1344 = !DILocation(line: 400, column: 3, scope: !1322)
!1345 = !DILocation(line: 402, column: 7, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 402, column: 7)
!1347 = !DILocation(line: 402, column: 12, scope: !1346)
!1348 = !DILocation(line: 402, column: 9, scope: !1346)
!1349 = !DILocation(line: 402, column: 7, scope: !1319)
!1350 = !DILocation(line: 403, column: 20, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 402, column: 34)
!1352 = !DILocation(line: 403, column: 18, scope: !1351)
!1353 = !DILocation(line: 404, column: 3, scope: !1351)
!1354 = !DILocation(line: 406, column: 3, scope: !1319)
!1355 = !DILocation(line: 410, column: 3, scope: !1319)
!1356 = !DILocation(line: 417, column: 6, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 417, column: 6)
!1358 = !DILocation(line: 417, column: 22, scope: !1357)
!1359 = !DILocation(line: 417, column: 20, scope: !1357)
!1360 = !DILocation(line: 417, column: 6, scope: !1284)
!1361 = !DILocation(line: 418, column: 11, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 417, column: 44)
!1363 = !DILocation(line: 418, column: 25, scope: !1362)
!1364 = !DILocation(line: 418, column: 3, scope: !1362)
!1365 = !DILocation(line: 423, column: 18, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 418, column: 41)
!1367 = !DILocation(line: 423, column: 32, scope: !1366)
!1368 = !DILocation(line: 423, column: 16, scope: !1366)
!1369 = !DILocation(line: 425, column: 8, scope: !1366)
!1370 = !DILocation(line: 425, column: 33, scope: !1366)
!1371 = !DILocation(line: 425, column: 22, scope: !1366)
!1372 = !DILocation(line: 425, column: 47, scope: !1366)
!1373 = !DILocation(line: 424, column: 19, scope: !1366)
!1374 = !DILocation(line: 424, column: 17, scope: !1366)
!1375 = !DILocation(line: 426, column: 4, scope: !1366)
!1376 = !DILocation(line: 432, column: 18, scope: !1366)
!1377 = !DILocation(line: 432, column: 32, scope: !1366)
!1378 = !DILocation(line: 432, column: 16, scope: !1366)
!1379 = !DILocation(line: 433, column: 17, scope: !1366)
!1380 = !DILocation(line: 434, column: 4, scope: !1366)
!1381 = !DILocation(line: 440, column: 16, scope: !1366)
!1382 = !DILocation(line: 441, column: 17, scope: !1366)
!1383 = !DILocation(line: 442, column: 4, scope: !1366)
!1384 = !DILocation(line: 448, column: 18, scope: !1366)
!1385 = !DILocation(line: 448, column: 16, scope: !1366)
!1386 = !DILocation(line: 449, column: 17, scope: !1366)
!1387 = !DILocation(line: 450, column: 4, scope: !1366)
!1388 = !DILocation(line: 452, column: 2, scope: !1362)
!1389 = !DILocation(line: 459, column: 20, scope: !1284)
!1390 = !DILocation(line: 459, column: 41, scope: !1284)
!1391 = !DILocation(line: 459, column: 39, scope: !1284)
!1392 = !DILocation(line: 459, column: 34, scope: !1284)
!1393 = !DILocation(line: 460, column: 8, scope: !1284)
!1394 = !DILocation(line: 460, column: 21, scope: !1284)
!1395 = !DILocation(line: 460, column: 7, scope: !1284)
!1396 = !DILocation(line: 460, column: 29, scope: !1284)
!1397 = !DILocation(line: 460, column: 42, scope: !1284)
!1398 = !DILocation(line: 459, column: 55, scope: !1284)
!1399 = !DILocation(line: 460, column: 52, scope: !1284)
!1400 = !DILocation(line: 459, column: 18, scope: !1284)
!1401 = !DILocation(line: 466, column: 6, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 466, column: 6)
!1403 = !DILocation(line: 466, column: 24, scope: !1402)
!1404 = !DILocation(line: 466, column: 22, scope: !1402)
!1405 = !DILocation(line: 466, column: 6, scope: !1284)
!1406 = !DILocation(line: 467, column: 3, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 466, column: 46)
!1408 = !DILocation(line: 468, column: 3, scope: !1407)
!1409 = !DILocation(line: 473, column: 20, scope: !1284)
!1410 = !DILocation(line: 473, column: 3, scope: !1284)
!1411 = !DILocation(line: 473, column: 18, scope: !1284)
!1412 = !DILocation(line: 474, column: 9, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 474, column: 6)
!1414 = !DILocation(line: 474, column: 8, scope: !1413)
!1415 = !DILocation(line: 474, column: 7, scope: !1413)
!1416 = !DILocation(line: 474, column: 6, scope: !1284)
!1417 = !DILocation(line: 475, column: 3, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 474, column: 26)
!1419 = !DILocation(line: 478, column: 4, scope: !1284)
!1420 = !DILocation(line: 480, column: 9, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 480, column: 2)
!1422 = !DILocation(line: 480, column: 7, scope: !1421)
!1423 = !DILocation(line: 480, column: 14, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 480, column: 2)
!1425 = !DILocation(line: 480, column: 18, scope: !1424)
!1426 = !DILocation(line: 480, column: 16, scope: !1424)
!1427 = !DILocation(line: 480, column: 2, scope: !1421)
!1428 = !DILocation(line: 481, column: 28, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 480, column: 38)
!1430 = !DILocation(line: 481, column: 42, scope: !1429)
!1431 = !DILocation(line: 481, column: 5, scope: !1429)
!1432 = !DILocation(line: 481, column: 4, scope: !1429)
!1433 = !DILocation(line: 481, column: 22, scope: !1429)
!1434 = !DILocation(line: 481, column: 3, scope: !1429)
!1435 = !DILocation(line: 481, column: 26, scope: !1429)
!1436 = !DILocation(line: 482, column: 2, scope: !1429)
!1437 = !DILocation(line: 480, column: 34, scope: !1424)
!1438 = !DILocation(line: 480, column: 2, scope: !1424)
!1439 = distinct !{!1439, !1427, !1440}
!1440 = !DILocation(line: 482, column: 2, scope: !1421)
!1441 = !DILocation(line: 484, column: 6, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 484, column: 6)
!1443 = !DILocation(line: 484, column: 19, scope: !1442)
!1444 = !DILocation(line: 484, column: 6, scope: !1284)
!1445 = !DILocation(line: 485, column: 10, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 485, column: 3)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 484, column: 24)
!1448 = !DILocation(line: 485, column: 8, scope: !1446)
!1449 = !DILocation(line: 485, column: 15, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 485, column: 3)
!1451 = !DILocation(line: 485, column: 19, scope: !1450)
!1452 = !DILocation(line: 485, column: 17, scope: !1450)
!1453 = !DILocation(line: 485, column: 3, scope: !1446)
!1454 = !DILocation(line: 486, column: 8, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 486, column: 8)
!1456 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 485, column: 38)
!1457 = !DILocation(line: 486, column: 10, scope: !1455)
!1458 = !DILocation(line: 486, column: 8, scope: !1456)
!1459 = !DILocation(line: 487, column: 7, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 486, column: 15)
!1461 = !DILocation(line: 487, column: 6, scope: !1460)
!1462 = !DILocation(line: 487, column: 24, scope: !1460)
!1463 = !DILocation(line: 487, column: 5, scope: !1460)
!1464 = !DILocation(line: 487, column: 28, scope: !1460)
!1465 = !DILocation(line: 488, column: 4, scope: !1460)
!1466 = !DILocation(line: 492, column: 4, scope: !1456)
!1467 = !DILocation(line: 494, column: 27, scope: !1456)
!1468 = !DILocation(line: 494, column: 26, scope: !1456)
!1469 = !DILocation(line: 494, column: 43, scope: !1456)
!1470 = !DILocation(line: 494, column: 25, scope: !1456)
!1471 = !DILocation(line: 494, column: 4, scope: !1456)
!1472 = !DILocation(line: 496, column: 6, scope: !1456)
!1473 = !DILocation(line: 497, column: 16, scope: !1456)
!1474 = !DILocation(line: 498, column: 3, scope: !1456)
!1475 = !DILocation(line: 485, column: 34, scope: !1450)
!1476 = !DILocation(line: 485, column: 3, scope: !1450)
!1477 = distinct !{!1477, !1453, !1478}
!1478 = !DILocation(line: 498, column: 3, scope: !1446)
!1479 = !DILocation(line: 499, column: 2, scope: !1447)
!1480 = !DILocation(line: 501, column: 6, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 501, column: 6)
!1482 = !DILocation(line: 501, column: 6, scope: !1284)
!1483 = !DILocation(line: 502, column: 34, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 501, column: 29)
!1485 = !DILocation(line: 502, column: 4, scope: !1484)
!1486 = !DILocation(line: 502, column: 26, scope: !1484)
!1487 = !DILocation(line: 503, column: 2, scope: !1484)
!1488 = !DILocation(line: 505, column: 2, scope: !1284)
!1489 = !DILocation(line: 506, column: 1, scope: !1284)
!1490 = distinct !DISubprogram(name: "acpi_ns_validate_handle", scope: !3, file: !3, line: 528, type: !1491, scopeLine: 529, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!100, !41}
!1493 = !DILocalVariable(name: "handle", arg: 1, scope: !1490, file: !3, line: 528, type: !41)
!1494 = !DILocation(line: 528, column: 65, scope: !1490)
!1495 = !DILocation(line: 535, column: 8, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 535, column: 6)
!1497 = !DILocation(line: 535, column: 16, scope: !1496)
!1498 = !DILocation(line: 535, column: 20, scope: !1496)
!1499 = !DILocation(line: 535, column: 27, scope: !1496)
!1500 = !DILocation(line: 535, column: 6, scope: !1490)
!1501 = !DILocation(line: 536, column: 11, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 535, column: 49)
!1503 = !DILocation(line: 536, column: 3, scope: !1502)
!1504 = !DILocation(line: 541, column: 6, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 541, column: 6)
!1506 = !DILocation(line: 541, column: 39, scope: !1505)
!1507 = !DILocation(line: 541, column: 6, scope: !1490)
!1508 = !DILocation(line: 542, column: 3, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 541, column: 64)
!1510 = !DILocation(line: 545, column: 10, scope: !1490)
!1511 = !DILocation(line: 545, column: 2, scope: !1490)
!1512 = !DILocation(line: 546, column: 1, scope: !1490)
!1513 = distinct !DISubprogram(name: "acpi_ns_terminate", scope: !3, file: !3, line: 560, type: !1514, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null}
!1516 = !DILocalVariable(name: "status", scope: !1513, file: !3, line: 562, type: !36)
!1517 = !DILocation(line: 562, column: 14, scope: !1513)
!1518 = !DILocation(line: 570, column: 35, scope: !1513)
!1519 = !DILocation(line: 570, column: 2, scope: !1513)
!1520 = !DILocation(line: 574, column: 11, scope: !1513)
!1521 = !DILocation(line: 574, column: 9, scope: !1513)
!1522 = !DILocation(line: 575, column: 6, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 575, column: 6)
!1524 = !DILocation(line: 575, column: 6, scope: !1513)
!1525 = !DILocation(line: 576, column: 3, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 575, column: 28)
!1527 = !DILocation(line: 579, column: 22, scope: !1513)
!1528 = !DILocation(line: 579, column: 2, scope: !1513)
!1529 = !DILocation(line: 580, column: 8, scope: !1513)
!1530 = !DILocation(line: 583, column: 2, scope: !1513)
!1531 = !DILocation(line: 584, column: 1, scope: !1513)
!1532 = distinct !DISubprogram(name: "acpi_ns_opens_scope", scope: !3, file: !3, line: 597, type: !887, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1533 = !DILocalVariable(name: "type", arg: 1, scope: !1532, file: !3, line: 597, type: !875)
!1534 = !DILocation(line: 597, column: 42, scope: !1532)
!1535 = !DILocation(line: 601, column: 6, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 601, column: 6)
!1537 = !DILocation(line: 601, column: 11, scope: !1536)
!1538 = !DILocation(line: 601, column: 6, scope: !1532)
!1539 = !DILocation(line: 605, column: 3, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 601, column: 34)
!1541 = !DILocation(line: 606, column: 3, scope: !1540)
!1542 = !DILocation(line: 609, column: 39, scope: !1532)
!1543 = !DILocation(line: 609, column: 16, scope: !1532)
!1544 = !DILocation(line: 609, column: 11, scope: !1532)
!1545 = !DILocation(line: 609, column: 46, scope: !1532)
!1546 = !DILocation(line: 609, column: 2, scope: !1532)
!1547 = !DILocation(line: 610, column: 1, scope: !1532)
!1548 = distinct !DISubprogram(name: "acpi_ns_get_node_unlocked", scope: !3, file: !3, line: 635, type: !1549, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!36, !100, !822, !37, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!1552 = !DILocalVariable(name: "prefix_node", arg: 1, scope: !1548, file: !3, line: 635, type: !100)
!1553 = !DILocation(line: 635, column: 55, scope: !1548)
!1554 = !DILocalVariable(name: "pathname", arg: 2, scope: !1548, file: !3, line: 636, type: !822)
!1555 = !DILocation(line: 636, column: 18, scope: !1548)
!1556 = !DILocalVariable(name: "flags", arg: 3, scope: !1548, file: !3, line: 637, type: !37)
!1557 = !DILocation(line: 637, column: 10, scope: !1548)
!1558 = !DILocalVariable(name: "return_node", arg: 4, scope: !1548, file: !3, line: 637, type: !1551)
!1559 = !DILocation(line: 637, column: 46, scope: !1548)
!1560 = !DILocalVariable(name: "scope_info", scope: !1548, file: !3, line: 639, type: !283)
!1561 = !DILocation(line: 639, column: 27, scope: !1548)
!1562 = !DILocalVariable(name: "status", scope: !1548, file: !3, line: 640, type: !36)
!1563 = !DILocation(line: 640, column: 14, scope: !1548)
!1564 = !DILocalVariable(name: "internal_path", scope: !1548, file: !3, line: 641, type: !27)
!1565 = !DILocation(line: 641, column: 8, scope: !1548)
!1566 = !DILocation(line: 648, column: 7, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 648, column: 6)
!1568 = !DILocation(line: 648, column: 6, scope: !1548)
!1569 = !DILocation(line: 649, column: 18, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 648, column: 17)
!1571 = !DILocation(line: 649, column: 4, scope: !1570)
!1572 = !DILocation(line: 649, column: 16, scope: !1570)
!1573 = !DILocation(line: 650, column: 8, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 650, column: 7)
!1575 = !DILocation(line: 650, column: 7, scope: !1570)
!1576 = !DILocation(line: 651, column: 19, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 650, column: 21)
!1578 = !DILocation(line: 651, column: 5, scope: !1577)
!1579 = !DILocation(line: 651, column: 17, scope: !1577)
!1580 = !DILocation(line: 652, column: 3, scope: !1577)
!1581 = !DILocation(line: 654, column: 3, scope: !1570)
!1582 = !DILocation(line: 659, column: 6, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 659, column: 6)
!1584 = !DILocation(line: 659, column: 39, scope: !1583)
!1585 = !DILocation(line: 659, column: 44, scope: !1583)
!1586 = !DILocation(line: 659, column: 6, scope: !1548)
!1587 = !DILocation(line: 660, column: 18, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 659, column: 58)
!1589 = !DILocation(line: 660, column: 4, scope: !1588)
!1590 = !DILocation(line: 660, column: 16, scope: !1588)
!1591 = !DILocation(line: 661, column: 3, scope: !1588)
!1592 = !DILocation(line: 666, column: 36, scope: !1548)
!1593 = !DILocation(line: 666, column: 11, scope: !1548)
!1594 = !DILocation(line: 666, column: 9, scope: !1548)
!1595 = !DILocation(line: 667, column: 6, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 667, column: 6)
!1597 = !DILocation(line: 667, column: 6, scope: !1548)
!1598 = !DILocation(line: 668, column: 3, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 667, column: 28)
!1600 = !DILocation(line: 673, column: 26, scope: !1548)
!1601 = !DILocation(line: 673, column: 13, scope: !1548)
!1602 = !DILocation(line: 673, column: 19, scope: !1548)
!1603 = !DILocation(line: 673, column: 24, scope: !1548)
!1604 = !DILocation(line: 677, column: 39, scope: !1548)
!1605 = !DILocation(line: 679, column: 6, scope: !1548)
!1606 = !DILocation(line: 679, column: 12, scope: !1548)
!1607 = !DILocation(line: 680, column: 5, scope: !1548)
!1608 = !DILocation(line: 677, column: 11, scope: !1548)
!1609 = !DILocation(line: 677, column: 9, scope: !1548)
!1610 = !DILocation(line: 681, column: 6, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 681, column: 6)
!1612 = !DILocation(line: 681, column: 6, scope: !1548)
!1613 = !DILocation(line: 684, column: 2, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 681, column: 28)
!1615 = !DILocation(line: 686, column: 2, scope: !1548)
!1616 = !DILocation(line: 687, column: 2, scope: !1548)
!1617 = !DILocation(line: 688, column: 1, scope: !1548)
!1618 = distinct !DISubprogram(name: "acpi_ns_get_node", scope: !3, file: !3, line: 713, type: !1549, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1619 = !DILocalVariable(name: "prefix_node", arg: 1, scope: !1618, file: !3, line: 713, type: !100)
!1620 = !DILocation(line: 713, column: 46, scope: !1618)
!1621 = !DILocalVariable(name: "pathname", arg: 2, scope: !1618, file: !3, line: 714, type: !822)
!1622 = !DILocation(line: 714, column: 16, scope: !1618)
!1623 = !DILocalVariable(name: "flags", arg: 3, scope: !1618, file: !3, line: 715, type: !37)
!1624 = !DILocation(line: 715, column: 8, scope: !1618)
!1625 = !DILocalVariable(name: "return_node", arg: 4, scope: !1618, file: !3, line: 715, type: !1551)
!1626 = !DILocation(line: 715, column: 44, scope: !1618)
!1627 = !DILocalVariable(name: "status", scope: !1618, file: !3, line: 717, type: !36)
!1628 = !DILocation(line: 717, column: 14, scope: !1618)
!1629 = !DILocation(line: 721, column: 11, scope: !1618)
!1630 = !DILocation(line: 721, column: 9, scope: !1618)
!1631 = !DILocation(line: 722, column: 6, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 722, column: 6)
!1633 = !DILocation(line: 722, column: 6, scope: !1618)
!1634 = !DILocation(line: 723, column: 3, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 722, column: 28)
!1636 = !DILocation(line: 726, column: 37, scope: !1618)
!1637 = !DILocation(line: 726, column: 50, scope: !1618)
!1638 = !DILocation(line: 727, column: 9, scope: !1618)
!1639 = !DILocation(line: 727, column: 16, scope: !1618)
!1640 = !DILocation(line: 726, column: 11, scope: !1618)
!1641 = !DILocation(line: 726, column: 9, scope: !1618)
!1642 = !DILocation(line: 729, column: 8, scope: !1618)
!1643 = !DILocation(line: 730, column: 2, scope: !1618)
!1644 = !DILocation(line: 731, column: 1, scope: !1618)
!1645 = distinct !DISubprogram(name: "kzalloc", scope: !13, file: !13, line: 662, type: !1646, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!40, !1648, !807}
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !808, line: 55, baseType: !1649)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1650, line: 72, baseType: !1651)
!1650 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1650, line: 16, baseType: !809)
!1652 = !DILocalVariable(name: "s", arg: 1, scope: !1653, file: !13, line: 445, type: !1656)
!1653 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !13, file: !13, line: 445, type: !1654, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!40, !1656, !807, !1648}
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1658, line: 117, flags: DIFlagFwdDecl)
!1658 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1659 = !DILocation(line: 445, column: 72, scope: !1653, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 552, column: 10, scope: !1661, inlinedAt: !1664)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !13, line: 540, column: 34)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !13, line: 540, column: 6)
!1663 = distinct !DISubprogram(name: "kmalloc", scope: !13, file: !13, line: 538, type: !1646, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1664 = distinct !DILocation(line: 664, column: 9, scope: !1645)
!1665 = !DILocalVariable(name: "flags", arg: 2, scope: !1653, file: !13, line: 446, type: !807)
!1666 = !DILocation(line: 446, column: 9, scope: !1653, inlinedAt: !1660)
!1667 = !DILocalVariable(name: "size", arg: 3, scope: !1653, file: !13, line: 446, type: !1648)
!1668 = !DILocation(line: 446, column: 23, scope: !1653, inlinedAt: !1660)
!1669 = !DILocalVariable(name: "ret", scope: !1653, file: !13, line: 448, type: !40)
!1670 = !DILocation(line: 448, column: 8, scope: !1653, inlinedAt: !1660)
!1671 = !DILocalVariable(name: "flags", arg: 1, scope: !1672, file: !13, line: 318, type: !807)
!1672 = distinct !DISubprogram(name: "kmalloc_type", scope: !13, file: !13, line: 318, type: !1673, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!12, !807}
!1675 = !DILocation(line: 318, column: 67, scope: !1672, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 553, column: 20, scope: !1661, inlinedAt: !1664)
!1677 = !DILocalVariable(name: "size", arg: 1, scope: !1678, file: !13, line: 346, type: !1648)
!1678 = distinct !DISubprogram(name: "kmalloc_index", scope: !13, file: !13, line: 346, type: !1679, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!7, !1648}
!1681 = !DILocation(line: 346, column: 58, scope: !1678, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 547, column: 11, scope: !1661, inlinedAt: !1664)
!1683 = !DILocalVariable(name: "size", arg: 1, scope: !1684, file: !13, line: 472, type: !1648)
!1684 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !13, file: !13, line: 472, type: !1685, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!40, !1648, !807, !7}
!1687 = !DILocation(line: 472, column: 28, scope: !1684, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 481, column: 9, scope: !1689, inlinedAt: !1690)
!1689 = distinct !DISubprogram(name: "kmalloc_large", scope: !13, file: !13, line: 478, type: !1646, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1690 = distinct !DILocation(line: 545, column: 11, scope: !1691, inlinedAt: !1664)
!1691 = distinct !DILexicalBlock(scope: !1661, file: !13, line: 544, column: 7)
!1692 = !DILocalVariable(name: "flags", arg: 2, scope: !1684, file: !13, line: 472, type: !807)
!1693 = !DILocation(line: 472, column: 40, scope: !1684, inlinedAt: !1688)
!1694 = !DILocalVariable(name: "order", arg: 3, scope: !1684, file: !13, line: 472, type: !7)
!1695 = !DILocation(line: 472, column: 60, scope: !1684, inlinedAt: !1688)
!1696 = !DILocalVariable(name: "size", arg: 1, scope: !1689, file: !13, line: 478, type: !1648)
!1697 = !DILocation(line: 478, column: 51, scope: !1689, inlinedAt: !1690)
!1698 = !DILocalVariable(name: "flags", arg: 2, scope: !1689, file: !13, line: 478, type: !807)
!1699 = !DILocation(line: 478, column: 63, scope: !1689, inlinedAt: !1690)
!1700 = !DILocalVariable(name: "order", scope: !1689, file: !13, line: 480, type: !7)
!1701 = !DILocation(line: 480, column: 15, scope: !1689, inlinedAt: !1690)
!1702 = !DILocalVariable(name: "size", arg: 1, scope: !1663, file: !13, line: 538, type: !1648)
!1703 = !DILocation(line: 538, column: 45, scope: !1663, inlinedAt: !1664)
!1704 = !DILocalVariable(name: "flags", arg: 2, scope: !1663, file: !13, line: 538, type: !807)
!1705 = !DILocation(line: 538, column: 57, scope: !1663, inlinedAt: !1664)
!1706 = !DILocalVariable(name: "index", scope: !1661, file: !13, line: 542, type: !7)
!1707 = !DILocation(line: 542, column: 16, scope: !1661, inlinedAt: !1664)
!1708 = !DILocalVariable(name: "size", arg: 1, scope: !1645, file: !13, line: 662, type: !1648)
!1709 = !DILocation(line: 662, column: 36, scope: !1645)
!1710 = !DILocalVariable(name: "flags", arg: 2, scope: !1645, file: !13, line: 662, type: !807)
!1711 = !DILocation(line: 662, column: 48, scope: !1645)
!1712 = !DILocation(line: 664, column: 17, scope: !1645)
!1713 = !DILocation(line: 664, column: 23, scope: !1645)
!1714 = !DILocation(line: 664, column: 29, scope: !1645)
!1715 = !DILocation(line: 540, column: 27, scope: !1662, inlinedAt: !1664)
!1716 = !DILocation(line: 540, column: 6, scope: !1662, inlinedAt: !1664)
!1717 = !DILocation(line: 540, column: 6, scope: !1663, inlinedAt: !1664)
!1718 = !DILocation(line: 544, column: 7, scope: !1691, inlinedAt: !1664)
!1719 = !DILocation(line: 544, column: 12, scope: !1691, inlinedAt: !1664)
!1720 = !DILocation(line: 544, column: 7, scope: !1661, inlinedAt: !1664)
!1721 = !DILocation(line: 545, column: 25, scope: !1691, inlinedAt: !1664)
!1722 = !DILocation(line: 545, column: 31, scope: !1691, inlinedAt: !1664)
!1723 = !DILocation(line: 480, column: 33, scope: !1689, inlinedAt: !1690)
!1724 = !DILocation(line: 480, column: 23, scope: !1689, inlinedAt: !1690)
!1725 = !DILocation(line: 481, column: 29, scope: !1689, inlinedAt: !1690)
!1726 = !DILocation(line: 481, column: 35, scope: !1689, inlinedAt: !1690)
!1727 = !DILocation(line: 481, column: 42, scope: !1689, inlinedAt: !1690)
!1728 = !DILocation(line: 474, column: 23, scope: !1684, inlinedAt: !1688)
!1729 = !DILocation(line: 474, column: 29, scope: !1684, inlinedAt: !1688)
!1730 = !DILocation(line: 474, column: 36, scope: !1684, inlinedAt: !1688)
!1731 = !DILocation(line: 474, column: 9, scope: !1684, inlinedAt: !1688)
!1732 = !DILocation(line: 545, column: 4, scope: !1691, inlinedAt: !1664)
!1733 = !DILocation(line: 547, column: 25, scope: !1661, inlinedAt: !1664)
!1734 = !DILocation(line: 348, column: 7, scope: !1735, inlinedAt: !1682)
!1735 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 348, column: 6)
!1736 = !DILocation(line: 348, column: 6, scope: !1678, inlinedAt: !1682)
!1737 = !DILocation(line: 349, column: 3, scope: !1735, inlinedAt: !1682)
!1738 = !DILocation(line: 351, column: 6, scope: !1739, inlinedAt: !1682)
!1739 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 351, column: 6)
!1740 = !DILocation(line: 351, column: 11, scope: !1739, inlinedAt: !1682)
!1741 = !DILocation(line: 351, column: 6, scope: !1678, inlinedAt: !1682)
!1742 = !DILocation(line: 352, column: 3, scope: !1739, inlinedAt: !1682)
!1743 = !DILocation(line: 354, column: 32, scope: !1744, inlinedAt: !1682)
!1744 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 354, column: 6)
!1745 = !DILocation(line: 354, column: 37, scope: !1744, inlinedAt: !1682)
!1746 = !DILocation(line: 354, column: 42, scope: !1744, inlinedAt: !1682)
!1747 = !DILocation(line: 354, column: 45, scope: !1744, inlinedAt: !1682)
!1748 = !DILocation(line: 354, column: 50, scope: !1744, inlinedAt: !1682)
!1749 = !DILocation(line: 354, column: 6, scope: !1678, inlinedAt: !1682)
!1750 = !DILocation(line: 355, column: 3, scope: !1744, inlinedAt: !1682)
!1751 = !DILocation(line: 356, column: 32, scope: !1752, inlinedAt: !1682)
!1752 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 356, column: 6)
!1753 = !DILocation(line: 356, column: 37, scope: !1752, inlinedAt: !1682)
!1754 = !DILocation(line: 356, column: 43, scope: !1752, inlinedAt: !1682)
!1755 = !DILocation(line: 356, column: 46, scope: !1752, inlinedAt: !1682)
!1756 = !DILocation(line: 356, column: 51, scope: !1752, inlinedAt: !1682)
!1757 = !DILocation(line: 356, column: 6, scope: !1678, inlinedAt: !1682)
!1758 = !DILocation(line: 357, column: 3, scope: !1752, inlinedAt: !1682)
!1759 = !DILocation(line: 358, column: 6, scope: !1760, inlinedAt: !1682)
!1760 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 358, column: 6)
!1761 = !DILocation(line: 358, column: 11, scope: !1760, inlinedAt: !1682)
!1762 = !DILocation(line: 358, column: 6, scope: !1678, inlinedAt: !1682)
!1763 = !DILocation(line: 358, column: 26, scope: !1760, inlinedAt: !1682)
!1764 = !DILocation(line: 359, column: 6, scope: !1765, inlinedAt: !1682)
!1765 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 359, column: 6)
!1766 = !DILocation(line: 359, column: 11, scope: !1765, inlinedAt: !1682)
!1767 = !DILocation(line: 359, column: 6, scope: !1678, inlinedAt: !1682)
!1768 = !DILocation(line: 359, column: 26, scope: !1765, inlinedAt: !1682)
!1769 = !DILocation(line: 360, column: 6, scope: !1770, inlinedAt: !1682)
!1770 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 360, column: 6)
!1771 = !DILocation(line: 360, column: 11, scope: !1770, inlinedAt: !1682)
!1772 = !DILocation(line: 360, column: 6, scope: !1678, inlinedAt: !1682)
!1773 = !DILocation(line: 360, column: 26, scope: !1770, inlinedAt: !1682)
!1774 = !DILocation(line: 361, column: 6, scope: !1775, inlinedAt: !1682)
!1775 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 361, column: 6)
!1776 = !DILocation(line: 361, column: 11, scope: !1775, inlinedAt: !1682)
!1777 = !DILocation(line: 361, column: 6, scope: !1678, inlinedAt: !1682)
!1778 = !DILocation(line: 361, column: 26, scope: !1775, inlinedAt: !1682)
!1779 = !DILocation(line: 362, column: 6, scope: !1780, inlinedAt: !1682)
!1780 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 362, column: 6)
!1781 = !DILocation(line: 362, column: 11, scope: !1780, inlinedAt: !1682)
!1782 = !DILocation(line: 362, column: 6, scope: !1678, inlinedAt: !1682)
!1783 = !DILocation(line: 362, column: 26, scope: !1780, inlinedAt: !1682)
!1784 = !DILocation(line: 363, column: 6, scope: !1785, inlinedAt: !1682)
!1785 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 363, column: 6)
!1786 = !DILocation(line: 363, column: 11, scope: !1785, inlinedAt: !1682)
!1787 = !DILocation(line: 363, column: 6, scope: !1678, inlinedAt: !1682)
!1788 = !DILocation(line: 363, column: 26, scope: !1785, inlinedAt: !1682)
!1789 = !DILocation(line: 364, column: 6, scope: !1790, inlinedAt: !1682)
!1790 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 364, column: 6)
!1791 = !DILocation(line: 364, column: 11, scope: !1790, inlinedAt: !1682)
!1792 = !DILocation(line: 364, column: 6, scope: !1678, inlinedAt: !1682)
!1793 = !DILocation(line: 364, column: 26, scope: !1790, inlinedAt: !1682)
!1794 = !DILocation(line: 365, column: 6, scope: !1795, inlinedAt: !1682)
!1795 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 365, column: 6)
!1796 = !DILocation(line: 365, column: 11, scope: !1795, inlinedAt: !1682)
!1797 = !DILocation(line: 365, column: 6, scope: !1678, inlinedAt: !1682)
!1798 = !DILocation(line: 365, column: 26, scope: !1795, inlinedAt: !1682)
!1799 = !DILocation(line: 366, column: 6, scope: !1800, inlinedAt: !1682)
!1800 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 366, column: 6)
!1801 = !DILocation(line: 366, column: 11, scope: !1800, inlinedAt: !1682)
!1802 = !DILocation(line: 366, column: 6, scope: !1678, inlinedAt: !1682)
!1803 = !DILocation(line: 366, column: 26, scope: !1800, inlinedAt: !1682)
!1804 = !DILocation(line: 367, column: 6, scope: !1805, inlinedAt: !1682)
!1805 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 367, column: 6)
!1806 = !DILocation(line: 367, column: 11, scope: !1805, inlinedAt: !1682)
!1807 = !DILocation(line: 367, column: 6, scope: !1678, inlinedAt: !1682)
!1808 = !DILocation(line: 367, column: 26, scope: !1805, inlinedAt: !1682)
!1809 = !DILocation(line: 368, column: 6, scope: !1810, inlinedAt: !1682)
!1810 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 368, column: 6)
!1811 = !DILocation(line: 368, column: 11, scope: !1810, inlinedAt: !1682)
!1812 = !DILocation(line: 368, column: 6, scope: !1678, inlinedAt: !1682)
!1813 = !DILocation(line: 368, column: 26, scope: !1810, inlinedAt: !1682)
!1814 = !DILocation(line: 369, column: 6, scope: !1815, inlinedAt: !1682)
!1815 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 369, column: 6)
!1816 = !DILocation(line: 369, column: 11, scope: !1815, inlinedAt: !1682)
!1817 = !DILocation(line: 369, column: 6, scope: !1678, inlinedAt: !1682)
!1818 = !DILocation(line: 369, column: 26, scope: !1815, inlinedAt: !1682)
!1819 = !DILocation(line: 370, column: 6, scope: !1820, inlinedAt: !1682)
!1820 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 370, column: 6)
!1821 = !DILocation(line: 370, column: 11, scope: !1820, inlinedAt: !1682)
!1822 = !DILocation(line: 370, column: 6, scope: !1678, inlinedAt: !1682)
!1823 = !DILocation(line: 370, column: 26, scope: !1820, inlinedAt: !1682)
!1824 = !DILocation(line: 371, column: 6, scope: !1825, inlinedAt: !1682)
!1825 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 371, column: 6)
!1826 = !DILocation(line: 371, column: 11, scope: !1825, inlinedAt: !1682)
!1827 = !DILocation(line: 371, column: 6, scope: !1678, inlinedAt: !1682)
!1828 = !DILocation(line: 371, column: 26, scope: !1825, inlinedAt: !1682)
!1829 = !DILocation(line: 372, column: 6, scope: !1830, inlinedAt: !1682)
!1830 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 372, column: 6)
!1831 = !DILocation(line: 372, column: 11, scope: !1830, inlinedAt: !1682)
!1832 = !DILocation(line: 372, column: 6, scope: !1678, inlinedAt: !1682)
!1833 = !DILocation(line: 372, column: 26, scope: !1830, inlinedAt: !1682)
!1834 = !DILocation(line: 373, column: 6, scope: !1835, inlinedAt: !1682)
!1835 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 373, column: 6)
!1836 = !DILocation(line: 373, column: 11, scope: !1835, inlinedAt: !1682)
!1837 = !DILocation(line: 373, column: 6, scope: !1678, inlinedAt: !1682)
!1838 = !DILocation(line: 373, column: 26, scope: !1835, inlinedAt: !1682)
!1839 = !DILocation(line: 374, column: 6, scope: !1840, inlinedAt: !1682)
!1840 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 374, column: 6)
!1841 = !DILocation(line: 374, column: 11, scope: !1840, inlinedAt: !1682)
!1842 = !DILocation(line: 374, column: 6, scope: !1678, inlinedAt: !1682)
!1843 = !DILocation(line: 374, column: 26, scope: !1840, inlinedAt: !1682)
!1844 = !DILocation(line: 375, column: 6, scope: !1845, inlinedAt: !1682)
!1845 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 375, column: 6)
!1846 = !DILocation(line: 375, column: 11, scope: !1845, inlinedAt: !1682)
!1847 = !DILocation(line: 375, column: 6, scope: !1678, inlinedAt: !1682)
!1848 = !DILocation(line: 375, column: 27, scope: !1845, inlinedAt: !1682)
!1849 = !DILocation(line: 376, column: 6, scope: !1850, inlinedAt: !1682)
!1850 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 376, column: 6)
!1851 = !DILocation(line: 376, column: 11, scope: !1850, inlinedAt: !1682)
!1852 = !DILocation(line: 376, column: 6, scope: !1678, inlinedAt: !1682)
!1853 = !DILocation(line: 376, column: 32, scope: !1850, inlinedAt: !1682)
!1854 = !DILocation(line: 377, column: 6, scope: !1855, inlinedAt: !1682)
!1855 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 377, column: 6)
!1856 = !DILocation(line: 377, column: 11, scope: !1855, inlinedAt: !1682)
!1857 = !DILocation(line: 377, column: 6, scope: !1678, inlinedAt: !1682)
!1858 = !DILocation(line: 377, column: 32, scope: !1855, inlinedAt: !1682)
!1859 = !DILocation(line: 378, column: 6, scope: !1860, inlinedAt: !1682)
!1860 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 378, column: 6)
!1861 = !DILocation(line: 378, column: 11, scope: !1860, inlinedAt: !1682)
!1862 = !DILocation(line: 378, column: 6, scope: !1678, inlinedAt: !1682)
!1863 = !DILocation(line: 378, column: 32, scope: !1860, inlinedAt: !1682)
!1864 = !DILocation(line: 379, column: 6, scope: !1865, inlinedAt: !1682)
!1865 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 379, column: 6)
!1866 = !DILocation(line: 379, column: 11, scope: !1865, inlinedAt: !1682)
!1867 = !DILocation(line: 379, column: 6, scope: !1678, inlinedAt: !1682)
!1868 = !DILocation(line: 379, column: 33, scope: !1865, inlinedAt: !1682)
!1869 = !DILocation(line: 380, column: 6, scope: !1870, inlinedAt: !1682)
!1870 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 380, column: 6)
!1871 = !DILocation(line: 380, column: 11, scope: !1870, inlinedAt: !1682)
!1872 = !DILocation(line: 380, column: 6, scope: !1678, inlinedAt: !1682)
!1873 = !DILocation(line: 380, column: 33, scope: !1870, inlinedAt: !1682)
!1874 = !DILocation(line: 381, column: 6, scope: !1875, inlinedAt: !1682)
!1875 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 381, column: 6)
!1876 = !DILocation(line: 381, column: 11, scope: !1875, inlinedAt: !1682)
!1877 = !DILocation(line: 381, column: 6, scope: !1678, inlinedAt: !1682)
!1878 = !DILocation(line: 381, column: 33, scope: !1875, inlinedAt: !1682)
!1879 = !DILocation(line: 382, column: 2, scope: !1880, inlinedAt: !1682)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !13, line: 382, column: 2)
!1881 = distinct !DILexicalBlock(scope: !1678, file: !13, line: 382, column: 2)
!1882 = !{i32 -2144100213, i32 -2144100184, i32 -2144100138, i32 -2144100080, i32 -2144100026, i32 -2144099972, i32 -2144099917, i32 -2144099886}
!1883 = !DILocation(line: 382, column: 2, scope: !1884, inlinedAt: !1682)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !13, line: 382, column: 2)
!1885 = distinct !DILexicalBlock(scope: !1881, file: !13, line: 382, column: 2)
!1886 = !{i32 -2144099443, i32 -2144099436, i32 -2144099382, i32 -2144099351, i32 -2144099321}
!1887 = !DILocation(line: 382, column: 2, scope: !1885, inlinedAt: !1682)
!1888 = !DILocation(line: 386, column: 1, scope: !1678, inlinedAt: !1682)
!1889 = !DILocation(line: 547, column: 9, scope: !1661, inlinedAt: !1664)
!1890 = !DILocation(line: 549, column: 8, scope: !1891, inlinedAt: !1664)
!1891 = distinct !DILexicalBlock(scope: !1661, file: !13, line: 549, column: 7)
!1892 = !DILocation(line: 549, column: 7, scope: !1661, inlinedAt: !1664)
!1893 = !DILocation(line: 550, column: 4, scope: !1891, inlinedAt: !1664)
!1894 = !DILocation(line: 553, column: 33, scope: !1661, inlinedAt: !1664)
!1895 = !DILocation(line: 325, column: 6, scope: !1896, inlinedAt: !1676)
!1896 = distinct !DILexicalBlock(scope: !1672, file: !13, line: 325, column: 6)
!1897 = !DILocation(line: 325, column: 6, scope: !1672, inlinedAt: !1676)
!1898 = !DILocation(line: 326, column: 3, scope: !1896, inlinedAt: !1676)
!1899 = !DILocation(line: 332, column: 9, scope: !1672, inlinedAt: !1676)
!1900 = !DILocation(line: 332, column: 15, scope: !1672, inlinedAt: !1676)
!1901 = !DILocation(line: 332, column: 2, scope: !1672, inlinedAt: !1676)
!1902 = !DILocation(line: 336, column: 1, scope: !1672, inlinedAt: !1676)
!1903 = !DILocation(line: 553, column: 5, scope: !1661, inlinedAt: !1664)
!1904 = !DILocation(line: 553, column: 41, scope: !1661, inlinedAt: !1664)
!1905 = !DILocation(line: 554, column: 5, scope: !1661, inlinedAt: !1664)
!1906 = !DILocation(line: 554, column: 12, scope: !1661, inlinedAt: !1664)
!1907 = !DILocation(line: 448, column: 31, scope: !1653, inlinedAt: !1660)
!1908 = !DILocation(line: 448, column: 34, scope: !1653, inlinedAt: !1660)
!1909 = !DILocation(line: 448, column: 14, scope: !1653, inlinedAt: !1660)
!1910 = !DILocation(line: 450, column: 22, scope: !1653, inlinedAt: !1660)
!1911 = !DILocation(line: 450, column: 25, scope: !1653, inlinedAt: !1660)
!1912 = !DILocation(line: 450, column: 30, scope: !1653, inlinedAt: !1660)
!1913 = !DILocation(line: 450, column: 36, scope: !1653, inlinedAt: !1660)
!1914 = !DILocation(line: 450, column: 8, scope: !1653, inlinedAt: !1660)
!1915 = !DILocation(line: 450, column: 6, scope: !1653, inlinedAt: !1660)
!1916 = !DILocation(line: 451, column: 9, scope: !1653, inlinedAt: !1660)
!1917 = !DILocation(line: 552, column: 3, scope: !1661, inlinedAt: !1664)
!1918 = !DILocation(line: 557, column: 19, scope: !1663, inlinedAt: !1664)
!1919 = !DILocation(line: 557, column: 25, scope: !1663, inlinedAt: !1664)
!1920 = !DILocation(line: 557, column: 9, scope: !1663, inlinedAt: !1664)
!1921 = !DILocation(line: 557, column: 2, scope: !1663, inlinedAt: !1664)
!1922 = !DILocation(line: 558, column: 1, scope: !1663, inlinedAt: !1664)
!1923 = !DILocation(line: 664, column: 2, scope: !1645)
!1924 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1925, file: !1925, line: 646, type: !1926, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1925 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!809}
!1928 = !DILocalVariable(name: "__ret", scope: !1929, file: !1925, line: 648, type: !809)
!1929 = distinct !DILexicalBlock(scope: !1924, file: !1925, line: 648, column: 9)
!1930 = !DILocation(line: 648, column: 9, scope: !1929)
!1931 = !DILocalVariable(name: "__edi", scope: !1929, file: !1925, line: 648, type: !809)
!1932 = !DILocalVariable(name: "__esi", scope: !1929, file: !1925, line: 648, type: !809)
!1933 = !DILocalVariable(name: "__edx", scope: !1929, file: !1925, line: 648, type: !809)
!1934 = !DILocalVariable(name: "__ecx", scope: !1929, file: !1925, line: 648, type: !809)
!1935 = !DILocalVariable(name: "__eax", scope: !1929, file: !1925, line: 648, type: !809)
!1936 = !DILocation(line: 648, column: 9, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !1925, line: 648, column: 9)
!1938 = distinct !DILexicalBlock(scope: !1929, file: !1925, line: 648, column: 9)
!1939 = !{i32 -2145773819, i32 -2145771504, i32 -2145771270, i32 -2145771219, i32 -2145771191, i32 -2145771166, i32 -2145771482, i32 -2145771469, i32 -2145771031, i32 -2145770912, i32 -2145771377, i32 -2145771350, i32 -2145771322, i32 -2145771292}
!1940 = !DILocalVariable(name: "__mask", scope: !1941, file: !1925, line: 648, type: !809)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !1925, line: 648, column: 9)
!1942 = !DILocation(line: 648, column: 9, scope: !1941)
!1943 = !DILocation(line: 648, column: 9, scope: !1938)
!1944 = !DILocation(line: 648, column: 2, scope: !1924)
!1945 = distinct !DISubprogram(name: "get_order", scope: !1946, file: !1946, line: 29, type: !1256, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1946 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1947 = !DILocalVariable(name: "x", arg: 1, scope: !1948, file: !1949, line: 366, type: !24)
!1948 = distinct !DISubprogram(name: "fls64", scope: !1949, file: !1949, line: 366, type: !1950, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1949 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!35, !24}
!1952 = !DILocation(line: 366, column: 40, scope: !1948, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 46, column: 9, scope: !1945)
!1954 = !DILocalVariable(name: "bitpos", scope: !1948, file: !1949, line: 368, type: !35)
!1955 = !DILocation(line: 368, column: 6, scope: !1948, inlinedAt: !1953)
!1956 = !DILocalVariable(name: "size", arg: 1, scope: !1945, file: !1946, line: 29, type: !809)
!1957 = !DILocation(line: 29, column: 63, scope: !1945)
!1958 = !DILocation(line: 31, column: 27, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1945, file: !1946, line: 31, column: 6)
!1960 = !DILocation(line: 31, column: 6, scope: !1959)
!1961 = !DILocation(line: 31, column: 6, scope: !1945)
!1962 = !DILocation(line: 32, column: 8, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !1946, line: 32, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1959, file: !1946, line: 31, column: 34)
!1965 = !DILocation(line: 32, column: 7, scope: !1964)
!1966 = !DILocation(line: 33, column: 4, scope: !1963)
!1967 = !DILocation(line: 35, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !1946, line: 35, column: 7)
!1969 = !DILocation(line: 35, column: 12, scope: !1968)
!1970 = !DILocation(line: 35, column: 7, scope: !1964)
!1971 = !DILocation(line: 36, column: 4, scope: !1968)
!1972 = !DILocation(line: 38, column: 10, scope: !1964)
!1973 = !DILocation(line: 38, column: 28, scope: !1964)
!1974 = !DILocation(line: 38, column: 41, scope: !1964)
!1975 = !DILocation(line: 38, column: 3, scope: !1964)
!1976 = !DILocation(line: 41, column: 6, scope: !1945)
!1977 = !DILocation(line: 42, column: 7, scope: !1945)
!1978 = !DILocation(line: 46, column: 15, scope: !1945)
!1979 = !DILocation(line: 374, column: 2, scope: !1948, inlinedAt: !1953)
!1980 = !DILocation(line: 376, column: 14, scope: !1948, inlinedAt: !1953)
!1981 = !{i32 670989}
!1982 = !DILocation(line: 377, column: 9, scope: !1948, inlinedAt: !1953)
!1983 = !DILocation(line: 377, column: 16, scope: !1948, inlinedAt: !1953)
!1984 = !DILocation(line: 46, column: 2, scope: !1945)
!1985 = !DILocation(line: 48, column: 1, scope: !1945)
!1986 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1987, file: !1987, line: 30, type: !1988, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!1987 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!35, !22}
!1990 = !DILocation(line: 366, column: 40, scope: !1948, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 32, column: 9, scope: !1986)
!1992 = !DILocation(line: 368, column: 6, scope: !1948, inlinedAt: !1991)
!1993 = !DILocalVariable(name: "n", arg: 1, scope: !1986, file: !1987, line: 30, type: !22)
!1994 = !DILocation(line: 30, column: 21, scope: !1986)
!1995 = !DILocation(line: 32, column: 15, scope: !1986)
!1996 = !DILocation(line: 374, column: 2, scope: !1948, inlinedAt: !1991)
!1997 = !DILocation(line: 376, column: 14, scope: !1948, inlinedAt: !1991)
!1998 = !DILocation(line: 377, column: 9, scope: !1948, inlinedAt: !1991)
!1999 = !DILocation(line: 377, column: 16, scope: !1948, inlinedAt: !1991)
!2000 = !DILocation(line: 32, column: 18, scope: !1986)
!2001 = !DILocation(line: 32, column: 2, scope: !1986)
!2002 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2003, file: !2003, line: 137, type: !2004, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !823)
!2003 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!40, !1656, !2006, !1648, !807}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2008 = !DILocalVariable(name: "s", arg: 1, scope: !2002, file: !2003, line: 137, type: !1656)
!2009 = !DILocation(line: 137, column: 54, scope: !2002)
!2010 = !DILocalVariable(name: "object", arg: 2, scope: !2002, file: !2003, line: 137, type: !2006)
!2011 = !DILocation(line: 137, column: 69, scope: !2002)
!2012 = !DILocalVariable(name: "size", arg: 3, scope: !2002, file: !2003, line: 138, type: !1648)
!2013 = !DILocation(line: 138, column: 12, scope: !2002)
!2014 = !DILocalVariable(name: "flags", arg: 4, scope: !2002, file: !2003, line: 138, type: !807)
!2015 = !DILocation(line: 138, column: 24, scope: !2002)
!2016 = !DILocation(line: 140, column: 17, scope: !2002)
!2017 = !DILocation(line: 140, column: 2, scope: !2002)
