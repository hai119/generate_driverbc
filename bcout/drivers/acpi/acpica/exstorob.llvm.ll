; ModuleID = '../bcout/drivers/acpi/acpica/exstorob.llvm.bc'
source_filename = "drivers/acpi/acpica/exstorob.c"
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
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }

@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_store_buffer_to_buffer(%union.acpi_operand_object* %source_desc, %union.acpi_operand_object* %target_desc) #0 !dbg !36 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca %union.acpi_operand_object*, align 8
  %target_desc.addr = alloca %union.acpi_operand_object*, align 8
  %length = alloca i32, align 4
  %buffer = alloca i8*, align 8
  store %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc.addr, metadata !800, metadata !DIExpression()), !dbg !801
  store %union.acpi_operand_object* %target_desc, %union.acpi_operand_object** %target_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %target_desc.addr, metadata !802, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.declare(metadata i32* %length, metadata !804, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !806, metadata !DIExpression()), !dbg !807
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !808
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !810
  %cmp = icmp eq %union.acpi_operand_object* %0, %1, !dbg !811
  br i1 %cmp, label %if.then, label %if.end, !dbg !812

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !813
  br label %return, !dbg !813

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !815
  %buffer1 = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_buffer*, !dbg !815
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer1, i32 0, i32 5, !dbg !815
  %3 = load i8*, i8** %pointer, align 8, !dbg !815
  store i8* %3, i8** %buffer, align 8, !dbg !816
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !817
  %buffer2 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_buffer*, !dbg !818
  %length3 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer2, i32 0, i32 6, !dbg !819
  %5 = load i32, i32* %length3, align 8, !dbg !819
  store i32 %5, i32* %length, align 4, !dbg !820
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !821
  %buffer4 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_buffer*, !dbg !823
  %length5 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer4, i32 0, i32 6, !dbg !824
  %7 = load i32, i32* %length5, align 8, !dbg !824
  %cmp6 = icmp eq i32 %7, 0, !dbg !825
  br i1 %cmp6, label %if.then7, label %lor.lhs.false, !dbg !826

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !827
  %common = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_common*, !dbg !828
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 4, !dbg !829
  %9 = load i8, i8* %flags, align 4, !dbg !829
  %conv = zext i8 %9 to i32, !dbg !827
  %and = and i32 %conv, 2, !dbg !830
  %tobool = icmp ne i32 %and, 0, !dbg !830
  br i1 %tobool, label %if.then7, label %if.end18, !dbg !831

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load i32, i32* %length, align 4, !dbg !832
  %conv8 = zext i32 %10 to i64, !dbg !832
  %call = call i8* @acpi_os_allocate(i64 %conv8) #9, !dbg !832
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !834
  %buffer9 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_buffer*, !dbg !835
  %pointer10 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer9, i32 0, i32 5, !dbg !836
  store i8* %call, i8** %pointer10, align 8, !dbg !837
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !838
  %buffer11 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_buffer*, !dbg !840
  %pointer12 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer11, i32 0, i32 5, !dbg !841
  %13 = load i8*, i8** %pointer12, align 8, !dbg !841
  %tobool13 = icmp ne i8* %13, null, !dbg !838
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !842

if.then14:                                        ; preds = %if.then7
  store i32 4, i32* %retval, align 4, !dbg !843
  br label %return, !dbg !843

if.end15:                                         ; preds = %if.then7
  %14 = load i32, i32* %length, align 4, !dbg !845
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !846
  %buffer16 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_buffer*, !dbg !847
  %length17 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer16, i32 0, i32 6, !dbg !848
  store i32 %14, i32* %length17, align 8, !dbg !849
  br label %if.end18, !dbg !850

if.end18:                                         ; preds = %if.end15, %lor.lhs.false
  %16 = load i32, i32* %length, align 4, !dbg !851
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !853
  %buffer19 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_buffer*, !dbg !854
  %length20 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer19, i32 0, i32 6, !dbg !855
  %18 = load i32, i32* %length20, align 8, !dbg !855
  %cmp21 = icmp ule i32 %16, %18, !dbg !856
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !857

if.then23:                                        ; preds = %if.end18
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !858
  %buffer24 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_buffer*, !dbg !860
  %pointer25 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer24, i32 0, i32 5, !dbg !861
  %20 = load i8*, i8** %pointer25, align 8, !dbg !861
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !862
  %buffer26 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_buffer*, !dbg !863
  %length27 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer26, i32 0, i32 6, !dbg !864
  %22 = load i32, i32* %length27, align 8, !dbg !864
  %conv28 = zext i32 %22 to i64, !dbg !862
  call void @llvm.memset.p0i8.i64(i8* align 1 %20, i8 0, i64 %conv28, i1 false), !dbg !865
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !866
  %buffer29 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_buffer*, !dbg !867
  %pointer30 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer29, i32 0, i32 5, !dbg !868
  %24 = load i8*, i8** %pointer30, align 8, !dbg !868
  %25 = load i8*, i8** %buffer, align 8, !dbg !869
  %26 = load i32, i32* %length, align 4, !dbg !870
  %conv31 = zext i32 %26 to i64, !dbg !870
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %25, i64 %conv31, i1 false), !dbg !871
  br label %if.end37, !dbg !872

if.else:                                          ; preds = %if.end18
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !873
  %buffer32 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_buffer*, !dbg !875
  %pointer33 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer32, i32 0, i32 5, !dbg !876
  %28 = load i8*, i8** %pointer33, align 8, !dbg !876
  %29 = load i8*, i8** %buffer, align 8, !dbg !877
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !878
  %buffer34 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_buffer*, !dbg !879
  %length35 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer34, i32 0, i32 6, !dbg !880
  %31 = load i32, i32* %length35, align 8, !dbg !880
  %conv36 = zext i32 %31 to i64, !dbg !878
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %conv36, i1 false), !dbg !881
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then23
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !882
  %buffer38 = bitcast %union.acpi_operand_object* %32 to %struct.acpi_object_buffer*, !dbg !883
  %flags39 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer38, i32 0, i32 4, !dbg !884
  %33 = load i8, i8* %flags39, align 4, !dbg !884
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !885
  %buffer40 = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_buffer*, !dbg !886
  %flags41 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer40, i32 0, i32 4, !dbg !887
  store i8 %33, i8* %flags41, align 4, !dbg !888
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !889
  %common42 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_common*, !dbg !890
  %flags43 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common42, i32 0, i32 4, !dbg !891
  %36 = load i8, i8* %flags43, align 4, !dbg !892
  %conv44 = zext i8 %36 to i32, !dbg !892
  %and45 = and i32 %conv44, -3, !dbg !892
  %conv46 = trunc i32 %and45 to i8, !dbg !892
  store i8 %conv46, i8* %flags43, align 4, !dbg !892
  store i32 0, i32* %retval, align 4, !dbg !893
  br label %return, !dbg !893

return:                                           ; preds = %if.end37, %if.then14, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !894
  ret i32 %37, !dbg !894
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate(i64 %size) #0 !dbg !895 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !899, metadata !DIExpression()), !dbg !910
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !918, metadata !DIExpression()), !dbg !919
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !920, metadata !DIExpression()), !dbg !921
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !922, metadata !DIExpression()), !dbg !923
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !924, metadata !DIExpression()), !dbg !928
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !930, metadata !DIExpression()), !dbg !934
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !936, metadata !DIExpression()), !dbg !940
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !945, metadata !DIExpression()), !dbg !946
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !947, metadata !DIExpression()), !dbg !948
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !949, metadata !DIExpression()), !dbg !950
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !951, metadata !DIExpression()), !dbg !952
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !953, metadata !DIExpression()), !dbg !954
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !955, metadata !DIExpression()), !dbg !956
  %flags.addr.i11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i11, metadata !957, metadata !DIExpression()), !dbg !958
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !959, metadata !DIExpression()), !dbg !960
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !961, metadata !DIExpression()), !dbg !967
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !971, metadata !DIExpression()), !dbg !972
  %0 = load i64, i64* %size.addr, align 8, !dbg !973
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !974, metadata !DIExpression()), !dbg !975
  br label %do.body, !dbg !975

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !976, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !980, metadata !DIExpression()), !dbg !979
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !979
  %conv = zext i1 %cmp to i32, !dbg !979
  store i32 1, i32* %tmp, align 4, !dbg !979
  %1 = load i32, i32* %tmp, align 4, !dbg !979
  %call = call i64 @arch_local_save_flags() #9, !dbg !981
  store i64 %call, i64* %_flags, align 8, !dbg !981
  br label %do.end, !dbg !981

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !982, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !985, metadata !DIExpression()), !dbg !984
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !984
  %conv6 = zext i1 %cmp5 to i32, !dbg !984
  store i32 1, i32* %tmp7, align 4, !dbg !984
  %2 = load i32, i32* %tmp7, align 4, !dbg !984
  %3 = load i64, i64* %_flags, align 8, !dbg !986
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !987
  %and.i = and i64 %4, 512, !dbg !988
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !989
  %lnot.i = xor i1 %tobool.i, true, !dbg !989
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !989
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !986
  %5 = load i32, i32* %tmp8, align 4, !dbg !986
  store i32 %5, i32* %tmp1, align 4, !dbg !981
  %6 = load i32, i32* %tmp1, align 4, !dbg !975
  %tobool = icmp ne i32 %6, 0, !dbg !990
  %7 = zext i1 %tobool to i64, !dbg !990
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !990
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %cond, i32* %flags.addr.i11, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !991
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #8, !dbg !992
  br i1 %9, label %if.then.i, label %if.end9.i, !dbg !993

if.then.i:                                        ; preds = %do.end
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !994
  %cmp.i = icmp ugt i64 %10, 8192, !dbg !995
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !996

if.then1.i:                                       ; preds = %if.then.i
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !997
  %12 = load i32, i32* %flags.addr.i11, align 4, !dbg !998
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !999
  %call.i.i = call i32 @get_order(i64 %13) #10, !dbg !1000
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !954
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !1001
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1002
  %16 = load i32, i32* %order.i.i, align 4, !dbg !1003
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1004
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1005
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1006
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #11, !dbg !1007
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1007
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1007
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1007
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1007
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1008
  br label %kmalloc.exit, !dbg !1008

if.end.i:                                         ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !1009
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1010
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !1010
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1012

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1013
  br label %kmalloc_index.exit.i, !dbg !1013

if.end.i.i:                                       ; preds = %if.end.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1014
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !1016
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1017

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1018
  br label %kmalloc_index.exit.i, !dbg !1018

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1019
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !1021
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1022

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1023
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !1024
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1025

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1026
  br label %kmalloc_index.exit.i, !dbg !1026

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1027
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !1029
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1030

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1031
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !1032
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1033

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1034
  br label %kmalloc_index.exit.i, !dbg !1034

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1035
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !1037
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1038

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1039
  br label %kmalloc_index.exit.i, !dbg !1039

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1040
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !1042
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1043

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1044
  br label %kmalloc_index.exit.i, !dbg !1044

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1045
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !1047
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1048

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1049
  br label %kmalloc_index.exit.i, !dbg !1049

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1050
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !1052
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1053

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1054
  br label %kmalloc_index.exit.i, !dbg !1054

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1055
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !1057
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1058

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1059
  br label %kmalloc_index.exit.i, !dbg !1059

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1060
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !1062
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1063

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1064
  br label %kmalloc_index.exit.i, !dbg !1064

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1065
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !1067
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1068

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1069
  br label %kmalloc_index.exit.i, !dbg !1069

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1070
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !1072
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1073

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1074
  br label %kmalloc_index.exit.i, !dbg !1074

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1075
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !1077
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1078

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1079
  br label %kmalloc_index.exit.i, !dbg !1079

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1080
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !1082
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1083

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1084
  br label %kmalloc_index.exit.i, !dbg !1084

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1085
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !1087
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1088

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1089
  br label %kmalloc_index.exit.i, !dbg !1089

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1090
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !1092
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1093

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1094
  br label %kmalloc_index.exit.i, !dbg !1094

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1095
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !1097
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1098

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1099
  br label %kmalloc_index.exit.i, !dbg !1099

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1100
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !1102
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1103

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1104
  br label %kmalloc_index.exit.i, !dbg !1104

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1105
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !1107
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1108

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1109
  br label %kmalloc_index.exit.i, !dbg !1109

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1110
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !1112
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1113

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1114
  br label %kmalloc_index.exit.i, !dbg !1114

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1115
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !1117
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1118

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1119
  br label %kmalloc_index.exit.i, !dbg !1119

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1120
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !1122
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1123

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1124
  br label %kmalloc_index.exit.i, !dbg !1124

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1125
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !1127
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1128

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1129
  br label %kmalloc_index.exit.i, !dbg !1129

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1130
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !1132
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1133

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1134
  br label %kmalloc_index.exit.i, !dbg !1134

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1135
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !1137
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1138

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1139
  br label %kmalloc_index.exit.i, !dbg !1139

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1140
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !1142
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1143

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1144
  br label %kmalloc_index.exit.i, !dbg !1144

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1145
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !1147
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1148

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1149
  br label %kmalloc_index.exit.i, !dbg !1149

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1150
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !1152
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1153

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1154
  br label %kmalloc_index.exit.i, !dbg !1154

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1155, !srcloc !1158
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !1159, !srcloc !1162
  unreachable, !dbg !1163

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !1164
  store i32 %51, i32* %index.i, align 4, !dbg !1165
  %52 = load i32, i32* %index.i, align 4, !dbg !1166
  %tobool.i12 = icmp ne i32 %52, 0, !dbg !1166
  br i1 %tobool.i12, label %if.end4.i, label %if.then3.i, !dbg !1168

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1169
  br label %kmalloc.exit, !dbg !1169

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i11, align 4, !dbg !1170
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1171
  %and.i.i = and i32 %54, 17, !dbg !1171
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1171
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1171
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1171
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1171
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1173

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1174
  br label %kmalloc_type.exit.i, !dbg !1174

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1175
  %and2.i.i = and i32 %55, 1, !dbg !1176
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1175
  %56 = zext i1 %tobool3.i.i to i64, !dbg !1175
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1175
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1177
  br label %kmalloc_type.exit.i, !dbg !1177

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !1178
  %idxprom.i = zext i32 %57 to i64, !dbg !1179
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1179
  %58 = load i32, i32* %index.i, align 4, !dbg !1180
  %idxprom6.i = zext i32 %58 to i64, !dbg !1179
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1179
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1179
  %60 = load i32, i32* %flags.addr.i11, align 4, !dbg !1181
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !1182
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1183
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1184
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #11, !dbg !1185
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1185
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1185
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1185
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1185
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !923
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1186
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !1187
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1188
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1189
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #11, !dbg !1190
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1191
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !1192
  store i8* %68, i8** %retval.i, align 8, !dbg !1193
  br label %kmalloc.exit, !dbg !1193

if.end9.i:                                        ; preds = %do.end
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !1194
  %70 = load i32, i32* %flags.addr.i11, align 4, !dbg !1195
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #11, !dbg !1196
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1196
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1196
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1196
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1196
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1197
  br label %kmalloc.exit, !dbg !1197

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i, align 8, !dbg !1198
  ret i8* %71, !dbg !1199
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_store_string_to_string(%union.acpi_operand_object* %source_desc, %union.acpi_operand_object* %target_desc) #0 !dbg !1200 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca %union.acpi_operand_object*, align 8
  %target_desc.addr = alloca %union.acpi_operand_object*, align 8
  %length = alloca i32, align 4
  %buffer = alloca i8*, align 8
  store %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc.addr, metadata !1201, metadata !DIExpression()), !dbg !1202
  store %union.acpi_operand_object* %target_desc, %union.acpi_operand_object** %target_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %target_desc.addr, metadata !1203, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.declare(metadata i32* %length, metadata !1205, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !1207, metadata !DIExpression()), !dbg !1208
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1209
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !1211
  %cmp = icmp eq %union.acpi_operand_object* %0, %1, !dbg !1212
  br i1 %cmp, label %if.then, label %if.end, !dbg !1213

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1214
  br label %return, !dbg !1214

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1216
  %string = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_string*, !dbg !1216
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 5, !dbg !1216
  %3 = load i8*, i8** %pointer, align 8, !dbg !1216
  store i8* %3, i8** %buffer, align 8, !dbg !1217
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1218
  %string1 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_string*, !dbg !1219
  %length2 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string1, i32 0, i32 6, !dbg !1220
  %5 = load i32, i32* %length2, align 8, !dbg !1220
  store i32 %5, i32* %length, align 4, !dbg !1221
  %6 = load i32, i32* %length, align 4, !dbg !1222
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !1224
  %string3 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_string*, !dbg !1225
  %length4 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string3, i32 0, i32 6, !dbg !1226
  %8 = load i32, i32* %length4, align 8, !dbg !1226
  %cmp5 = icmp ult i32 %6, %8, !dbg !1227
  br i1 %cmp5, label %land.lhs.true, label %if.else, !dbg !1228

land.lhs.true:                                    ; preds = %if.end
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !1229
  %common = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_common*, !dbg !1230
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 4, !dbg !1231
  %10 = load i8, i8* %flags, align 4, !dbg !1231
  %conv = zext i8 %10 to i32, !dbg !1229
  %and = and i32 %conv, 2, !dbg !1232
  %tobool = icmp ne i32 %and, 0, !dbg !1232
  br i1 %tobool, label %if.else, label %if.then6, !dbg !1233

if.then6:                                         ; preds = %land.lhs.true
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !1234
  %string7 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_string*, !dbg !1236
  %pointer8 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string7, i32 0, i32 5, !dbg !1237
  %12 = load i8*, i8** %pointer8, align 8, !dbg !1237
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !1238
  %string9 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_string*, !dbg !1239
  %length10 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string9, i32 0, i32 6, !dbg !1240
  %14 = load i32, i32* %length10, align 8, !dbg !1240
  %conv11 = zext i32 %14 to i64, !dbg !1241
  %add = add i64 %conv11, 1, !dbg !1242
  call void @llvm.memset.p0i8.i64(i8* align 1 %12, i8 0, i64 %add, i1 false), !dbg !1243
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !1244
  %string12 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_string*, !dbg !1245
  %pointer13 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string12, i32 0, i32 5, !dbg !1246
  %16 = load i8*, i8** %pointer13, align 8, !dbg !1246
  %17 = load i8*, i8** %buffer, align 8, !dbg !1247
  %18 = load i32, i32* %length, align 4, !dbg !1248
  %conv14 = zext i32 %18 to i64, !dbg !1248
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 %17, i64 %conv14, i1 false), !dbg !1249
  br label %if.end45, !dbg !1250

if.else:                                          ; preds = %land.lhs.true, %if.end
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !1251
  %string15 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_string*, !dbg !1254
  %pointer16 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string15, i32 0, i32 5, !dbg !1255
  %20 = load i8*, i8** %pointer16, align 8, !dbg !1255
  %tobool17 = icmp ne i8* %20, null, !dbg !1251
  br i1 %tobool17, label %land.lhs.true18, label %if.end27, !dbg !1256

land.lhs.true18:                                  ; preds = %if.else
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !1257
  %common19 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_common*, !dbg !1258
  %flags20 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common19, i32 0, i32 4, !dbg !1259
  %22 = load i8, i8* %flags20, align 4, !dbg !1259
  %conv21 = zext i8 %22 to i32, !dbg !1257
  %and22 = and i32 %conv21, 2, !dbg !1260
  %tobool23 = icmp ne i32 %and22, 0, !dbg !1260
  br i1 %tobool23, label %if.end27, label %if.then24, !dbg !1261

if.then24:                                        ; preds = %land.lhs.true18
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !1262
  %string25 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_string*, !dbg !1262
  %pointer26 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string25, i32 0, i32 5, !dbg !1262
  %24 = load i8*, i8** %pointer26, align 8, !dbg !1262
  call void @acpi_os_free(i8* %24) #9, !dbg !1262
  br label %if.end27, !dbg !1264

if.end27:                                         ; preds = %if.then24, %land.lhs.true18, %if.else
  %25 = load i32, i32* %length, align 4, !dbg !1265
  %conv28 = zext i32 %25 to i64, !dbg !1265
  %add29 = add i64 %conv28, 1, !dbg !1265
  %call = call i8* @acpi_os_allocate_zeroed(i64 %add29) #9, !dbg !1265
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !1266
  %string30 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_string*, !dbg !1267
  %pointer31 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string30, i32 0, i32 5, !dbg !1268
  store i8* %call, i8** %pointer31, align 8, !dbg !1269
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !1270
  %string32 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_string*, !dbg !1272
  %pointer33 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string32, i32 0, i32 5, !dbg !1273
  %28 = load i8*, i8** %pointer33, align 8, !dbg !1273
  %tobool34 = icmp ne i8* %28, null, !dbg !1270
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !1274

if.then35:                                        ; preds = %if.end27
  store i32 4, i32* %retval, align 4, !dbg !1275
  br label %return, !dbg !1275

if.end36:                                         ; preds = %if.end27
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !1277
  %common37 = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_common*, !dbg !1278
  %flags38 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common37, i32 0, i32 4, !dbg !1279
  %30 = load i8, i8* %flags38, align 4, !dbg !1280
  %conv39 = zext i8 %30 to i32, !dbg !1280
  %and40 = and i32 %conv39, -3, !dbg !1280
  %conv41 = trunc i32 %and40 to i8, !dbg !1280
  store i8 %conv41, i8* %flags38, align 4, !dbg !1280
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !1281
  %string42 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_string*, !dbg !1282
  %pointer43 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string42, i32 0, i32 5, !dbg !1283
  %32 = load i8*, i8** %pointer43, align 8, !dbg !1283
  %33 = load i8*, i8** %buffer, align 8, !dbg !1284
  %34 = load i32, i32* %length, align 4, !dbg !1285
  %conv44 = zext i32 %34 to i64, !dbg !1285
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 %conv44, i1 false), !dbg !1286
  br label %if.end45

if.end45:                                         ; preds = %if.end36, %if.then6
  %35 = load i32, i32* %length, align 4, !dbg !1287
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_desc.addr, align 8, !dbg !1288
  %string46 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_string*, !dbg !1289
  %length47 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string46, i32 0, i32 6, !dbg !1290
  store i32 %35, i32* %length47, align 8, !dbg !1291
  store i32 0, i32* %retval, align 4, !dbg !1292
  br label %return, !dbg !1292

return:                                           ; preds = %if.end45, %if.then35, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !1293
  ret i32 %37, !dbg !1293
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1294 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1297, metadata !DIExpression()), !dbg !1298
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1299
  call void @kfree(i8* %0) #9, !dbg !1300
  ret void, !dbg !1301
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1302 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !961, metadata !DIExpression()), !dbg !1303
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1307, metadata !DIExpression()), !dbg !1308
  %0 = load i64, i64* %size.addr, align 8, !dbg !1309
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1310, metadata !DIExpression()), !dbg !1311
  br label %do.body, !dbg !1311

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1312, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1316, metadata !DIExpression()), !dbg !1315
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1315
  %conv = zext i1 %cmp to i32, !dbg !1315
  store i32 1, i32* %tmp, align 4, !dbg !1315
  %1 = load i32, i32* %tmp, align 4, !dbg !1315
  %call = call i64 @arch_local_save_flags() #9, !dbg !1317
  store i64 %call, i64* %_flags, align 8, !dbg !1317
  br label %do.end, !dbg !1317

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1318, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1321, metadata !DIExpression()), !dbg !1320
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1320
  %conv6 = zext i1 %cmp5 to i32, !dbg !1320
  store i32 1, i32* %tmp7, align 4, !dbg !1320
  %2 = load i32, i32* %tmp7, align 4, !dbg !1320
  %3 = load i64, i64* %_flags, align 8, !dbg !1322
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1323
  %and.i = and i64 %4, 512, !dbg !1324
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1325
  %lnot.i = xor i1 %tobool.i, true, !dbg !1325
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1325
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1322
  %5 = load i32, i32* %tmp8, align 4, !dbg !1322
  store i32 %5, i32* %tmp1, align 4, !dbg !1317
  %6 = load i32, i32* %tmp1, align 4, !dbg !1311
  %tobool = icmp ne i32 %6, 0, !dbg !1326
  %7 = zext i1 %tobool to i64, !dbg !1326
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1326
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #9, !dbg !1327
  ret i8* %call10, !dbg !1328
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1329 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1333, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1336, metadata !DIExpression()), !dbg !1335
  %0 = load i64, i64* %__edi, align 8, !dbg !1335
  store i64 %0, i64* %__edi, align 8, !dbg !1335
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1337, metadata !DIExpression()), !dbg !1335
  %1 = load i64, i64* %__esi, align 8, !dbg !1335
  store i64 %1, i64* %__esi, align 8, !dbg !1335
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1338, metadata !DIExpression()), !dbg !1335
  %2 = load i64, i64* %__edx, align 8, !dbg !1335
  store i64 %2, i64* %__edx, align 8, !dbg !1335
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1339, metadata !DIExpression()), !dbg !1335
  %3 = load i64, i64* %__ecx, align 8, !dbg !1335
  store i64 %3, i64* %__ecx, align 8, !dbg !1335
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1340, metadata !DIExpression()), !dbg !1335
  %4 = load i64, i64* %__eax, align 8, !dbg !1335
  store i64 %4, i64* %__eax, align 8, !dbg !1335
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1335
  %6 = call i64 @llvm.read_register.i64(metadata !30), !dbg !1341
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !1341, !srcloc !1344
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1341
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1341
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1341
  call void @llvm.write_register.i64(metadata !30, i64 %asmresult1), !dbg !1341
  %8 = load i64, i64* %__eax, align 8, !dbg !1341
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1345, metadata !DIExpression()), !dbg !1347
  store i64 -1, i64* %__mask, align 8, !dbg !1347
  %9 = load i64, i64* %__mask, align 8, !dbg !1347
  store i64 %9, i64* %tmp, align 8, !dbg !1347
  %10 = load i64, i64* %tmp, align 8, !dbg !1347
  %and = and i64 %8, %10, !dbg !1341
  store i64 %and, i64* %__ret, align 8, !dbg !1341
  %11 = load i64, i64* %__ret, align 8, !dbg !1335
  store i64 %11, i64* %tmp2, align 8, !dbg !1348
  %12 = load i64, i64* %tmp2, align 8, !dbg !1335
  ret i64 %12, !dbg !1349
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !1350 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1352, metadata !DIExpression()), !dbg !1357
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1359, metadata !DIExpression()), !dbg !1360
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1361, metadata !DIExpression()), !dbg !1362
  %0 = load i64, i64* %size.addr, align 8, !dbg !1363
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1365
  br i1 %1, label %if.then, label %if.end447, !dbg !1366

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1367
  %tobool = icmp ne i64 %2, 0, !dbg !1367
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1370

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1371
  br label %return, !dbg !1371

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1372
  %cmp = icmp ult i64 %3, 4096, !dbg !1374
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1375

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1376
  br label %return, !dbg !1376

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub = sub i64 %4, 1, !dbg !1377
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1377
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1377

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub4 = sub i64 %6, 1, !dbg !1377
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1377
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1377

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub6 = sub i64 %8, 1, !dbg !1377
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1377
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1377

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1377

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub9 = sub i64 %9, 1, !dbg !1377
  %and = and i64 %sub9, -9223372036854775808, !dbg !1377
  %tobool10 = icmp ne i64 %and, 0, !dbg !1377
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1377

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1377

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub13 = sub i64 %10, 1, !dbg !1377
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1377
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1377
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1377

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1377

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub18 = sub i64 %11, 1, !dbg !1377
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1377
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1377
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1377

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1377

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub23 = sub i64 %12, 1, !dbg !1377
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1377
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1377
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1377

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1377

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub28 = sub i64 %13, 1, !dbg !1377
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1377
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1377
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1377

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1377

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub33 = sub i64 %14, 1, !dbg !1377
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1377
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1377
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1377

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1377

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub38 = sub i64 %15, 1, !dbg !1377
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1377
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1377
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1377

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1377

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub43 = sub i64 %16, 1, !dbg !1377
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1377
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1377
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1377

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1377

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub48 = sub i64 %17, 1, !dbg !1377
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1377
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1377
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1377

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1377

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub53 = sub i64 %18, 1, !dbg !1377
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1377
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1377
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1377

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1377

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub58 = sub i64 %19, 1, !dbg !1377
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1377
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1377
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1377

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1377

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub63 = sub i64 %20, 1, !dbg !1377
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1377
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1377
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1377

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1377

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub68 = sub i64 %21, 1, !dbg !1377
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1377
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1377
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1377

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1377

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub73 = sub i64 %22, 1, !dbg !1377
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1377
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1377
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1377

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1377

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub78 = sub i64 %23, 1, !dbg !1377
  %and79 = and i64 %sub78, 562949953421312, !dbg !1377
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1377
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1377

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1377

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub83 = sub i64 %24, 1, !dbg !1377
  %and84 = and i64 %sub83, 281474976710656, !dbg !1377
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1377
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1377

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1377

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub88 = sub i64 %25, 1, !dbg !1377
  %and89 = and i64 %sub88, 140737488355328, !dbg !1377
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1377
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1377

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1377

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub93 = sub i64 %26, 1, !dbg !1377
  %and94 = and i64 %sub93, 70368744177664, !dbg !1377
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1377
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1377

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1377

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub98 = sub i64 %27, 1, !dbg !1377
  %and99 = and i64 %sub98, 35184372088832, !dbg !1377
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1377
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1377

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1377

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub103 = sub i64 %28, 1, !dbg !1377
  %and104 = and i64 %sub103, 17592186044416, !dbg !1377
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1377
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1377

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1377

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub108 = sub i64 %29, 1, !dbg !1377
  %and109 = and i64 %sub108, 8796093022208, !dbg !1377
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1377
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1377

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1377

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub113 = sub i64 %30, 1, !dbg !1377
  %and114 = and i64 %sub113, 4398046511104, !dbg !1377
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1377
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1377

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1377

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub118 = sub i64 %31, 1, !dbg !1377
  %and119 = and i64 %sub118, 2199023255552, !dbg !1377
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1377
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1377

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1377

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub123 = sub i64 %32, 1, !dbg !1377
  %and124 = and i64 %sub123, 1099511627776, !dbg !1377
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1377
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1377

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1377

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub128 = sub i64 %33, 1, !dbg !1377
  %and129 = and i64 %sub128, 549755813888, !dbg !1377
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1377
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1377

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1377

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub133 = sub i64 %34, 1, !dbg !1377
  %and134 = and i64 %sub133, 274877906944, !dbg !1377
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1377
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1377

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1377

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub138 = sub i64 %35, 1, !dbg !1377
  %and139 = and i64 %sub138, 137438953472, !dbg !1377
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1377
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1377

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1377

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub143 = sub i64 %36, 1, !dbg !1377
  %and144 = and i64 %sub143, 68719476736, !dbg !1377
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1377
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1377

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1377

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub148 = sub i64 %37, 1, !dbg !1377
  %and149 = and i64 %sub148, 34359738368, !dbg !1377
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1377
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1377

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1377

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub153 = sub i64 %38, 1, !dbg !1377
  %and154 = and i64 %sub153, 17179869184, !dbg !1377
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1377
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1377

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1377

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub158 = sub i64 %39, 1, !dbg !1377
  %and159 = and i64 %sub158, 8589934592, !dbg !1377
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1377
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1377

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1377

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub163 = sub i64 %40, 1, !dbg !1377
  %and164 = and i64 %sub163, 4294967296, !dbg !1377
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1377
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1377

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1377

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub168 = sub i64 %41, 1, !dbg !1377
  %and169 = and i64 %sub168, 2147483648, !dbg !1377
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1377
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1377

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1377

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub173 = sub i64 %42, 1, !dbg !1377
  %and174 = and i64 %sub173, 1073741824, !dbg !1377
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1377
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1377

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1377

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub178 = sub i64 %43, 1, !dbg !1377
  %and179 = and i64 %sub178, 536870912, !dbg !1377
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1377
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1377

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1377

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub183 = sub i64 %44, 1, !dbg !1377
  %and184 = and i64 %sub183, 268435456, !dbg !1377
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1377
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1377

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1377

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub188 = sub i64 %45, 1, !dbg !1377
  %and189 = and i64 %sub188, 134217728, !dbg !1377
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1377
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1377

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1377

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub193 = sub i64 %46, 1, !dbg !1377
  %and194 = and i64 %sub193, 67108864, !dbg !1377
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1377
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1377

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1377

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub198 = sub i64 %47, 1, !dbg !1377
  %and199 = and i64 %sub198, 33554432, !dbg !1377
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1377
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1377

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1377

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub203 = sub i64 %48, 1, !dbg !1377
  %and204 = and i64 %sub203, 16777216, !dbg !1377
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1377
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1377

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1377

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub208 = sub i64 %49, 1, !dbg !1377
  %and209 = and i64 %sub208, 8388608, !dbg !1377
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1377
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1377

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1377

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub213 = sub i64 %50, 1, !dbg !1377
  %and214 = and i64 %sub213, 4194304, !dbg !1377
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1377
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1377

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1377

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub218 = sub i64 %51, 1, !dbg !1377
  %and219 = and i64 %sub218, 2097152, !dbg !1377
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1377
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1377

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1377

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub223 = sub i64 %52, 1, !dbg !1377
  %and224 = and i64 %sub223, 1048576, !dbg !1377
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1377
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1377

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1377

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub228 = sub i64 %53, 1, !dbg !1377
  %and229 = and i64 %sub228, 524288, !dbg !1377
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1377
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1377

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1377

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub233 = sub i64 %54, 1, !dbg !1377
  %and234 = and i64 %sub233, 262144, !dbg !1377
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1377
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1377

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1377

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub238 = sub i64 %55, 1, !dbg !1377
  %and239 = and i64 %sub238, 131072, !dbg !1377
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1377
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1377

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1377

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub243 = sub i64 %56, 1, !dbg !1377
  %and244 = and i64 %sub243, 65536, !dbg !1377
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1377
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1377

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1377

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub248 = sub i64 %57, 1, !dbg !1377
  %and249 = and i64 %sub248, 32768, !dbg !1377
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1377
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1377

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1377

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub253 = sub i64 %58, 1, !dbg !1377
  %and254 = and i64 %sub253, 16384, !dbg !1377
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1377
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1377

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1377

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub258 = sub i64 %59, 1, !dbg !1377
  %and259 = and i64 %sub258, 8192, !dbg !1377
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1377
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1377

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1377

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub263 = sub i64 %60, 1, !dbg !1377
  %and264 = and i64 %sub263, 4096, !dbg !1377
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1377
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1377

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1377

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub268 = sub i64 %61, 1, !dbg !1377
  %and269 = and i64 %sub268, 2048, !dbg !1377
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1377
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1377

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1377

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub273 = sub i64 %62, 1, !dbg !1377
  %and274 = and i64 %sub273, 1024, !dbg !1377
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1377
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1377

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1377

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub278 = sub i64 %63, 1, !dbg !1377
  %and279 = and i64 %sub278, 512, !dbg !1377
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1377
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1377

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1377

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub283 = sub i64 %64, 1, !dbg !1377
  %and284 = and i64 %sub283, 256, !dbg !1377
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1377
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1377

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1377

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub288 = sub i64 %65, 1, !dbg !1377
  %and289 = and i64 %sub288, 128, !dbg !1377
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1377
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1377

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1377

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub293 = sub i64 %66, 1, !dbg !1377
  %and294 = and i64 %sub293, 64, !dbg !1377
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1377
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1377

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1377

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub298 = sub i64 %67, 1, !dbg !1377
  %and299 = and i64 %sub298, 32, !dbg !1377
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1377
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1377

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1377

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub303 = sub i64 %68, 1, !dbg !1377
  %and304 = and i64 %sub303, 16, !dbg !1377
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1377
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1377

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1377

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub308 = sub i64 %69, 1, !dbg !1377
  %and309 = and i64 %sub308, 8, !dbg !1377
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1377
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1377

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1377

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub313 = sub i64 %70, 1, !dbg !1377
  %and314 = and i64 %sub313, 4, !dbg !1377
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1377
  %71 = zext i1 %tobool315 to i64, !dbg !1377
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1377
  br label %cond.end, !dbg !1377

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1377
  br label %cond.end317, !dbg !1377

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1377
  br label %cond.end319, !dbg !1377

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1377
  br label %cond.end321, !dbg !1377

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1377
  br label %cond.end323, !dbg !1377

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1377
  br label %cond.end325, !dbg !1377

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1377
  br label %cond.end327, !dbg !1377

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1377
  br label %cond.end329, !dbg !1377

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1377
  br label %cond.end331, !dbg !1377

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1377
  br label %cond.end333, !dbg !1377

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1377
  br label %cond.end335, !dbg !1377

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1377
  br label %cond.end337, !dbg !1377

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1377
  br label %cond.end339, !dbg !1377

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1377
  br label %cond.end341, !dbg !1377

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1377
  br label %cond.end343, !dbg !1377

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1377
  br label %cond.end345, !dbg !1377

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1377
  br label %cond.end347, !dbg !1377

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1377
  br label %cond.end349, !dbg !1377

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1377
  br label %cond.end351, !dbg !1377

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1377
  br label %cond.end353, !dbg !1377

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1377
  br label %cond.end355, !dbg !1377

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1377
  br label %cond.end357, !dbg !1377

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1377
  br label %cond.end359, !dbg !1377

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1377
  br label %cond.end361, !dbg !1377

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1377
  br label %cond.end363, !dbg !1377

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1377
  br label %cond.end365, !dbg !1377

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1377
  br label %cond.end367, !dbg !1377

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1377
  br label %cond.end369, !dbg !1377

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1377
  br label %cond.end371, !dbg !1377

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1377
  br label %cond.end373, !dbg !1377

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1377
  br label %cond.end375, !dbg !1377

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1377
  br label %cond.end377, !dbg !1377

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1377
  br label %cond.end379, !dbg !1377

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1377
  br label %cond.end381, !dbg !1377

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1377
  br label %cond.end383, !dbg !1377

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1377
  br label %cond.end385, !dbg !1377

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1377
  br label %cond.end387, !dbg !1377

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1377
  br label %cond.end389, !dbg !1377

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1377
  br label %cond.end391, !dbg !1377

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1377
  br label %cond.end393, !dbg !1377

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1377
  br label %cond.end395, !dbg !1377

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1377
  br label %cond.end397, !dbg !1377

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1377
  br label %cond.end399, !dbg !1377

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1377
  br label %cond.end401, !dbg !1377

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1377
  br label %cond.end403, !dbg !1377

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1377
  br label %cond.end405, !dbg !1377

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1377
  br label %cond.end407, !dbg !1377

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1377
  br label %cond.end409, !dbg !1377

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1377
  br label %cond.end411, !dbg !1377

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1377
  br label %cond.end413, !dbg !1377

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1377
  br label %cond.end415, !dbg !1377

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1377
  br label %cond.end417, !dbg !1377

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1377
  br label %cond.end419, !dbg !1377

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1377
  br label %cond.end421, !dbg !1377

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1377
  br label %cond.end423, !dbg !1377

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1377
  br label %cond.end425, !dbg !1377

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1377
  br label %cond.end427, !dbg !1377

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1377
  br label %cond.end429, !dbg !1377

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1377
  br label %cond.end431, !dbg !1377

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1377
  br label %cond.end433, !dbg !1377

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1377
  br label %cond.end435, !dbg !1377

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1377
  br label %cond.end437, !dbg !1377

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1377
  br label %cond.end440, !dbg !1377

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1377

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1377
  br label %cond.end444, !dbg !1377

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1377
  %sub443 = sub i64 %72, 1, !dbg !1377
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !1377
  br label %cond.end444, !dbg !1377

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1377
  %sub446 = sub i32 %cond445, 12, !dbg !1378
  %add = add i32 %sub446, 1, !dbg !1379
  store i32 %add, i32* %retval, align 4, !dbg !1380
  br label %return, !dbg !1380

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1381
  %dec = add i64 %73, -1, !dbg !1381
  store i64 %dec, i64* %size.addr, align 8, !dbg !1381
  %74 = load i64, i64* %size.addr, align 8, !dbg !1382
  %shr = lshr i64 %74, 12, !dbg !1382
  store i64 %shr, i64* %size.addr, align 8, !dbg !1382
  %75 = load i64, i64* %size.addr, align 8, !dbg !1383
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1360
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1384
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1385
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !1384, !srcloc !1386
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1384
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1387
  %add.i = add i32 %79, 1, !dbg !1388
  store i32 %add.i, i32* %retval, align 4, !dbg !1389
  br label %return, !dbg !1389

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1390
  ret i32 %80, !dbg !1390
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1391 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1352, metadata !DIExpression()), !dbg !1395
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1359, metadata !DIExpression()), !dbg !1397
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1398, metadata !DIExpression()), !dbg !1399
  %0 = load i64, i64* %n.addr, align 8, !dbg !1400
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1397
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1401
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1402
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !1401, !srcloc !1386
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1401
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1403
  %add.i = add i32 %4, 1, !dbg !1404
  %sub = sub i32 %add.i, 1, !dbg !1405
  ret i32 %sub, !dbg !1406
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1407 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1413, metadata !DIExpression()), !dbg !1414
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1415, metadata !DIExpression()), !dbg !1416
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1417, metadata !DIExpression()), !dbg !1418
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1419, metadata !DIExpression()), !dbg !1420
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1421
  ret i8* %0, !dbg !1422
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1423 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !899, metadata !DIExpression()), !dbg !1424
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !918, metadata !DIExpression()), !dbg !1427
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !920, metadata !DIExpression()), !dbg !1428
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !922, metadata !DIExpression()), !dbg !1429
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !924, metadata !DIExpression()), !dbg !1430
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !930, metadata !DIExpression()), !dbg !1432
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !936, metadata !DIExpression()), !dbg !1434
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !945, metadata !DIExpression()), !dbg !1437
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !947, metadata !DIExpression()), !dbg !1438
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !949, metadata !DIExpression()), !dbg !1439
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !951, metadata !DIExpression()), !dbg !1440
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !953, metadata !DIExpression()), !dbg !1441
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !955, metadata !DIExpression()), !dbg !1442
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !957, metadata !DIExpression()), !dbg !1443
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !959, metadata !DIExpression()), !dbg !1444
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1445, metadata !DIExpression()), !dbg !1446
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1447, metadata !DIExpression()), !dbg !1448
  %0 = load i64, i64* %size.addr, align 8, !dbg !1449
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1450
  %or = or i32 %1, 256, !dbg !1451
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1452
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !1453
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1454

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1455
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1456
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1457

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1458
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1459
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1460
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !1461
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1441
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1462
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1463
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1464
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1465
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1466
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1467
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !1468
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1468
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1468
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1468
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1468
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1469
  br label %kmalloc.exit, !dbg !1469

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1470
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1471
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1471
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1472

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1473
  br label %kmalloc_index.exit.i, !dbg !1473

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1474
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1475
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1476

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1477
  br label %kmalloc_index.exit.i, !dbg !1477

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1478
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1479
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1480

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1481
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1482
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1483

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1484
  br label %kmalloc_index.exit.i, !dbg !1484

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1485
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1486
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1487

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1488
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1489
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1490

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1491
  br label %kmalloc_index.exit.i, !dbg !1491

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1492
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1493
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1494

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1495
  br label %kmalloc_index.exit.i, !dbg !1495

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1496
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1497
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1498

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1499
  br label %kmalloc_index.exit.i, !dbg !1499

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1500
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1501
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1502

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1503
  br label %kmalloc_index.exit.i, !dbg !1503

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1504
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1505
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1506

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1507
  br label %kmalloc_index.exit.i, !dbg !1507

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1508
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1509
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1510

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1511
  br label %kmalloc_index.exit.i, !dbg !1511

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1512
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1513
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1514

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1515
  br label %kmalloc_index.exit.i, !dbg !1515

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1516
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1517
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1518

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1519
  br label %kmalloc_index.exit.i, !dbg !1519

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1520
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1521
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1522

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1523
  br label %kmalloc_index.exit.i, !dbg !1523

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1524
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1525
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1526

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1527
  br label %kmalloc_index.exit.i, !dbg !1527

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1528
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1529
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1530

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1531
  br label %kmalloc_index.exit.i, !dbg !1531

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1532
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1533
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1534

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1535
  br label %kmalloc_index.exit.i, !dbg !1535

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1536
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1537
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1538

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1539
  br label %kmalloc_index.exit.i, !dbg !1539

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1540
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1541
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1542

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1543
  br label %kmalloc_index.exit.i, !dbg !1543

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1544
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1545
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1546

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1547
  br label %kmalloc_index.exit.i, !dbg !1547

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1548
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1549
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1550

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1551
  br label %kmalloc_index.exit.i, !dbg !1551

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1552
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1553
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1554

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1555
  br label %kmalloc_index.exit.i, !dbg !1555

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1556
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1557
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1558

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1559
  br label %kmalloc_index.exit.i, !dbg !1559

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1560
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1561
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1562

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1563
  br label %kmalloc_index.exit.i, !dbg !1563

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1564
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1565
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1566

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1567
  br label %kmalloc_index.exit.i, !dbg !1567

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1568
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1569
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1570

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1571
  br label %kmalloc_index.exit.i, !dbg !1571

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1572
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1573
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1574

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1575
  br label %kmalloc_index.exit.i, !dbg !1575

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1576
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1577
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1578

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1579
  br label %kmalloc_index.exit.i, !dbg !1579

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1580
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1581
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1582

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1583
  br label %kmalloc_index.exit.i, !dbg !1583

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1584
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1585
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1586

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1587
  br label %kmalloc_index.exit.i, !dbg !1587

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1588, !srcloc !1158
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !1589, !srcloc !1162
  unreachable, !dbg !1590

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1591
  store i32 %45, i32* %index.i, align 4, !dbg !1592
  %46 = load i32, i32* %index.i, align 4, !dbg !1593
  %tobool.i = icmp ne i32 %46, 0, !dbg !1593
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1594

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1595
  br label %kmalloc.exit, !dbg !1595

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1596
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1597
  %and.i.i = and i32 %48, 17, !dbg !1597
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1597
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1597
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1597
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1597
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1598

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1599
  br label %kmalloc_type.exit.i, !dbg !1599

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1600
  %and2.i.i = and i32 %49, 1, !dbg !1601
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1600
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1600
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1600
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1602
  br label %kmalloc_type.exit.i, !dbg !1602

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1603
  %idxprom.i = zext i32 %51 to i64, !dbg !1604
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1604
  %52 = load i32, i32* %index.i, align 4, !dbg !1605
  %idxprom6.i = zext i32 %52 to i64, !dbg !1604
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1604
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1604
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1606
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1607
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1608
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1609
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !1610
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1610
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1610
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1610
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1610
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1429
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1611
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1612
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1613
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1614
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !1615
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1616
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1617
  store i8* %62, i8** %retval.i, align 8, !dbg !1618
  br label %kmalloc.exit, !dbg !1618

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1619
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1620
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !1621
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1621
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1621
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1621
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1621
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1622
  br label %kmalloc.exit, !dbg !1622

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1623
  ret i8* %65, !dbg !1624
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/exstorob.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4, line: 305, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!11 = !{!12, !18, !22, !23, !27, !29}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !13, line: 421, baseType: !14)
!13 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !5)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !15, line: 17, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !17, line: 21, baseType: !21)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !13, line: 127, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !15, line: 23, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !17, line: 31, baseType: !26)
!26 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !28, line: 148, baseType: !5)
!28 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !{!"rsp"}
!31 = !{i32 7, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"Code Model", i32 2}
!35 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!36 = distinct !DISubprogram(name: "acpi_ex_store_buffer_to_buffer", scope: !1, file: !1, line: 30, type: !37, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !799)
!37 = !DISubroutineType(types: !38)
!38 = !{!12, !39, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !41, line: 367, size: 576, elements: !42)
!41 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!42 = !{!43, !54, !67, !79, !114, !128, !137, !450, !467, !482, !495, !573, !585, !599, !609, !627, !649, !668, !687, !706, !719, !745, !762, !775, !789, !798}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !40, file: !41, line: 368, baseType: !44, size: 128)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !41, line: 73, size: 128, elements: !45)
!45 = !{!46, !47, !48, !49, !53}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !44, file: !41, line: 74, baseType: !39, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !44, file: !41, line: 74, baseType: !19, size: 8, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !44, file: !41, line: 74, baseType: !19, size: 8, offset: 72)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !44, file: !41, line: 74, baseType: !50, size: 16, offset: 80)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !15, line: 19, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !17, line: 24, baseType: !52)
!52 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !41, line: 74, baseType: !19, size: 8, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !40, file: !41, line: 369, baseType: !55, size: 192)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !41, line: 76, size: 192, elements: !56)
!56 = !{!57, !58, !59, !60, !61, !62, !66}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !55, file: !41, line: 77, baseType: !39, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !55, file: !41, line: 77, baseType: !19, size: 8, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !41, line: 77, baseType: !19, size: 8, offset: 72)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !55, file: !41, line: 77, baseType: !50, size: 16, offset: 80)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !41, line: 77, baseType: !19, size: 8, offset: 96)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !55, file: !41, line: 77, baseType: !63, size: 24, offset: 104)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 3)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !55, file: !41, line: 78, baseType: !24, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !40, file: !41, line: 370, baseType: !68, size: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !41, line: 93, size: 256, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !78}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !41, line: 94, baseType: !39, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !41, line: 94, baseType: !19, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !41, line: 94, baseType: !19, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !41, line: 94, baseType: !50, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !41, line: 94, baseType: !19, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !68, file: !41, line: 94, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !68, file: !41, line: 94, baseType: !14, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !40, file: !41, line: 371, baseType: !80, size: 384)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !41, line: 97, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !41, line: 98, baseType: !39, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !41, line: 98, baseType: !19, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !41, line: 98, baseType: !19, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !41, line: 98, baseType: !50, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !41, line: 98, baseType: !19, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !80, file: !41, line: 98, baseType: !18, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !41, line: 98, baseType: !14, size: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !80, file: !41, line: 99, baseType: !14, size: 32, offset: 224)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !80, file: !41, line: 100, baseType: !18, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !41, line: 101, baseType: !92, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !94, line: 133, size: 384, elements: !95)
!94 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99, !100, !109, !110, !111, !112}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !93, file: !94, line: 134, baseType: !39, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !94, line: 135, baseType: !19, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !94, line: 136, baseType: !19, size: 8, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !94, line: 137, baseType: !50, size: 16, offset: 80)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !93, file: !94, line: 138, baseType: !101, size: 32, offset: 96)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !102, line: 327, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !105}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !101, file: !102, line: 328, baseType: !14, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !101, file: !102, line: 329, baseType: !106, size: 32)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 4)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !93, file: !94, line: 139, baseType: !92, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !93, file: !94, line: 140, baseType: !92, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !93, file: !94, line: 141, baseType: !92, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !93, file: !94, line: 142, baseType: !113, size: 16, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !13, line: 445, baseType: !50)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !40, file: !41, line: 372, baseType: !115, size: 384)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !41, line: 104, size: 384, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !125, !126, !127}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !115, file: !41, line: 105, baseType: !39, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !115, file: !41, line: 105, baseType: !19, size: 8, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !41, line: 105, baseType: !19, size: 8, offset: 72)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !115, file: !41, line: 105, baseType: !50, size: 16, offset: 80)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !41, line: 105, baseType: !19, size: 8, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !115, file: !41, line: 105, baseType: !92, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !115, file: !41, line: 106, baseType: !124, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !115, file: !41, line: 107, baseType: !18, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !115, file: !41, line: 108, baseType: !14, size: 32, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !115, file: !41, line: 109, baseType: !14, size: 32, offset: 352)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !40, file: !41, line: 373, baseType: !129, size: 192)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !41, line: 118, size: 192, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !129, file: !41, line: 119, baseType: !39, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !129, file: !41, line: 119, baseType: !19, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !41, line: 119, baseType: !19, size: 8, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !129, file: !41, line: 119, baseType: !50, size: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !41, line: 119, baseType: !19, size: 8, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !129, file: !41, line: 119, baseType: !22, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !40, file: !41, line: 374, baseType: !138, size: 448)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !41, line: 143, size: 448, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !447, !448, !449}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !138, file: !41, line: 144, baseType: !39, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !138, file: !41, line: 144, baseType: !19, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !41, line: 144, baseType: !19, size: 8, offset: 72)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !138, file: !41, line: 144, baseType: !50, size: 16, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !41, line: 144, baseType: !19, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !138, file: !41, line: 144, baseType: !19, size: 8, offset: 104)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !138, file: !41, line: 145, baseType: !19, size: 8, offset: 112)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !138, file: !41, line: 146, baseType: !19, size: 8, offset: 120)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !138, file: !41, line: 147, baseType: !39, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !138, file: !41, line: 148, baseType: !39, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !138, file: !41, line: 149, baseType: !18, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !138, file: !41, line: 153, baseType: !152, size: 64, offset: 320)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !41, line: 150, size: 64, elements: !153)
!153 = !{!154, !446}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !152, file: !41, line: 151, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !94, line: 248, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!12, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !161, line: 37, size: 9024, elements: !162)
!161 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !392, !393, !394, !395, !396, !400, !402, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !429, !430, !431, !432, !433, !434, !435, !436, !438, !444}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !160, file: !161, line: 38, baseType: !159, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !160, file: !161, line: 39, baseType: !19, size: 8, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !160, file: !161, line: 40, baseType: !19, size: 8, offset: 72)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !160, file: !161, line: 41, baseType: !50, size: 16, offset: 80)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !160, file: !161, line: 42, baseType: !19, size: 8, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !160, file: !161, line: 43, baseType: !19, size: 8, offset: 104)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !160, file: !161, line: 44, baseType: !19, size: 8, offset: 112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !160, file: !161, line: 45, baseType: !113, size: 16, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !160, file: !161, line: 46, baseType: !19, size: 8, offset: 144)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !160, file: !161, line: 47, baseType: !19, size: 8, offset: 152)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !160, file: !161, line: 48, baseType: !19, size: 8, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !160, file: !161, line: 49, baseType: !19, size: 8, offset: 168)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !160, file: !161, line: 50, baseType: !19, size: 8, offset: 176)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !160, file: !161, line: 51, baseType: !19, size: 8, offset: 184)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !160, file: !161, line: 52, baseType: !19, size: 8, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !160, file: !161, line: 53, baseType: !19, size: 8, offset: 200)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !160, file: !161, line: 54, baseType: !18, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !160, file: !161, line: 55, baseType: !14, size: 32, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !160, file: !161, line: 56, baseType: !14, size: 32, offset: 352)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !160, file: !161, line: 57, baseType: !14, size: 32, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !160, file: !161, line: 58, baseType: !14, size: 32, offset: 416)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !160, file: !161, line: 60, baseType: !185, size: 640, offset: 448)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !94, line: 893, size: 640, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !273, !274, !390, !391}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !185, file: !94, line: 894, baseType: !18, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !185, file: !94, line: 895, baseType: !18, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !185, file: !94, line: 896, baseType: !18, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !185, file: !94, line: 897, baseType: !18, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !185, file: !94, line: 898, baseType: !18, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !185, file: !94, line: 899, baseType: !193, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !94, line: 875, size: 1600, elements: !195)
!195 = !{!196, !216, !232}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !194, file: !94, line: 876, baseType: !197, size: 448)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !94, line: 828, size: 448, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !215}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !197, file: !94, line: 829, baseType: !193, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !197, file: !94, line: 829, baseType: !19, size: 8, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !94, line: 829, baseType: !19, size: 8, offset: 72)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !197, file: !94, line: 829, baseType: !50, size: 16, offset: 80)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !197, file: !94, line: 829, baseType: !18, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !94, line: 829, baseType: !193, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !197, file: !94, line: 829, baseType: !92, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !197, file: !94, line: 829, baseType: !207, size: 64, offset: 320)
!207 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !94, line: 716, size: 64, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !207, file: !94, line: 717, baseType: !24, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !207, file: !94, line: 718, baseType: !14, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !207, file: !94, line: 719, baseType: !76, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !207, file: !94, line: 720, baseType: !18, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !94, line: 721, baseType: !76, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !207, file: !94, line: 722, baseType: !193, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !197, file: !94, line: 829, baseType: !19, size: 8, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !194, file: !94, line: 877, baseType: !217, size: 640)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !94, line: 835, size: 640, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !217, file: !94, line: 836, baseType: !193, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !217, file: !94, line: 836, baseType: !19, size: 8, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !217, file: !94, line: 836, baseType: !19, size: 8, offset: 72)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !217, file: !94, line: 836, baseType: !50, size: 16, offset: 80)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !217, file: !94, line: 836, baseType: !18, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !94, line: 836, baseType: !193, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !217, file: !94, line: 836, baseType: !92, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !217, file: !94, line: 836, baseType: !207, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !217, file: !94, line: 836, baseType: !19, size: 8, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !217, file: !94, line: 836, baseType: !76, size: 64, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !217, file: !94, line: 837, baseType: !18, size: 64, offset: 512)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !217, file: !94, line: 838, baseType: !14, size: 32, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !94, line: 839, baseType: !14, size: 32, offset: 608)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !194, file: !94, line: 878, baseType: !233, size: 1600)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !94, line: 846, size: 1600, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !233, file: !94, line: 847, baseType: !193, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !233, file: !94, line: 847, baseType: !19, size: 8, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !233, file: !94, line: 847, baseType: !19, size: 8, offset: 72)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !233, file: !94, line: 847, baseType: !50, size: 16, offset: 80)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !233, file: !94, line: 847, baseType: !18, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !233, file: !94, line: 847, baseType: !193, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !233, file: !94, line: 847, baseType: !92, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !233, file: !94, line: 847, baseType: !207, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !233, file: !94, line: 847, baseType: !19, size: 8, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !233, file: !94, line: 847, baseType: !193, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !233, file: !94, line: 848, baseType: !193, size: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !233, file: !94, line: 849, baseType: !76, size: 64, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !233, file: !94, line: 850, baseType: !19, size: 8, offset: 640)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !233, file: !94, line: 851, baseType: !76, size: 64, offset: 704)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !233, file: !94, line: 852, baseType: !76, size: 64, offset: 768)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !233, file: !94, line: 853, baseType: !76, size: 64, offset: 832)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !233, file: !94, line: 854, baseType: !106, size: 32, offset: 896)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !233, file: !94, line: 855, baseType: !14, size: 32, offset: 928)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !233, file: !94, line: 856, baseType: !14, size: 32, offset: 960)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !233, file: !94, line: 857, baseType: !14, size: 32, offset: 992)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !233, file: !94, line: 858, baseType: !14, size: 32, offset: 1024)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !233, file: !94, line: 859, baseType: !14, size: 32, offset: 1056)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !233, file: !94, line: 860, baseType: !14, size: 32, offset: 1088)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !233, file: !94, line: 861, baseType: !14, size: 32, offset: 1120)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !233, file: !94, line: 862, baseType: !14, size: 32, offset: 1152)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !233, file: !94, line: 863, baseType: !14, size: 32, offset: 1184)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !233, file: !94, line: 864, baseType: !14, size: 32, offset: 1216)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !233, file: !94, line: 865, baseType: !14, size: 32, offset: 1248)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !233, file: !94, line: 866, baseType: !14, size: 32, offset: 1280)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !233, file: !94, line: 867, baseType: !14, size: 32, offset: 1312)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !233, file: !94, line: 868, baseType: !50, size: 16, offset: 1344)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !233, file: !94, line: 869, baseType: !19, size: 8, offset: 1360)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !233, file: !94, line: 870, baseType: !19, size: 8, offset: 1368)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !233, file: !94, line: 871, baseType: !19, size: 8, offset: 1376)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !233, file: !94, line: 872, baseType: !270, size: 160, offset: 1384)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 160, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 20)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !185, file: !94, line: 900, baseType: !92, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !185, file: !94, line: 901, baseType: !275, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !94, line: 663, size: 640, elements: !277)
!277 = !{!278, !286, !299, !308, !317, !330, !344, !356, !368}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !276, file: !94, line: 664, baseType: !279, size: 128)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !94, line: 567, size: 128, elements: !280)
!280 = !{!281, !282, !283, !284, !285}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !94, line: 568, baseType: !22, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !94, line: 568, baseType: !19, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !94, line: 568, baseType: !19, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !94, line: 568, baseType: !50, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !94, line: 568, baseType: !50, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !276, file: !94, line: 665, baseType: !287, size: 384)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !94, line: 593, size: 384, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !94, line: 594, baseType: !22, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !94, line: 594, baseType: !19, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !94, line: 594, baseType: !19, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !94, line: 594, baseType: !50, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !94, line: 594, baseType: !50, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !287, file: !94, line: 594, baseType: !50, size: 16, offset: 112)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !287, file: !94, line: 595, baseType: !193, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !287, file: !94, line: 596, baseType: !18, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !287, file: !94, line: 597, baseType: !18, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !287, file: !94, line: 598, baseType: !24, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !276, file: !94, line: 666, baseType: !300, size: 192)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !94, line: 573, size: 192, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !94, line: 574, baseType: !22, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !94, line: 574, baseType: !19, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !94, line: 574, baseType: !19, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !94, line: 574, baseType: !50, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !94, line: 574, baseType: !50, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !300, file: !94, line: 574, baseType: !39, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !276, file: !94, line: 667, baseType: !309, size: 192)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !94, line: 604, size: 192, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !94, line: 605, baseType: !22, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !94, line: 605, baseType: !19, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !94, line: 605, baseType: !19, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !94, line: 605, baseType: !50, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !94, line: 605, baseType: !50, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !309, file: !94, line: 605, baseType: !92, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !276, file: !94, line: 668, baseType: !318, size: 448)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !94, line: 608, size: 448, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !94, line: 609, baseType: !22, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !94, line: 609, baseType: !19, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !94, line: 609, baseType: !19, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !94, line: 609, baseType: !50, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !318, file: !94, line: 609, baseType: !50, size: 16, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !318, file: !94, line: 609, baseType: !14, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !318, file: !94, line: 610, baseType: !193, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !318, file: !94, line: 611, baseType: !18, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !318, file: !94, line: 612, baseType: !18, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !318, file: !94, line: 613, baseType: !14, size: 32, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !276, file: !94, line: 669, baseType: !331, size: 512)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !94, line: 580, size: 512, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !94, line: 581, baseType: !22, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !331, file: !94, line: 581, baseType: !19, size: 8, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !94, line: 581, baseType: !19, size: 8, offset: 72)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !331, file: !94, line: 581, baseType: !50, size: 16, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !331, file: !94, line: 581, baseType: !50, size: 16, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !331, file: !94, line: 581, baseType: !14, size: 32, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !331, file: !94, line: 582, baseType: !39, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !331, file: !94, line: 583, baseType: !39, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !331, file: !94, line: 584, baseType: !159, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !331, file: !94, line: 585, baseType: !22, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !331, file: !94, line: 586, baseType: !14, size: 32, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !276, file: !94, line: 670, baseType: !345, size: 320)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !94, line: 620, size: 320, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !94, line: 621, baseType: !22, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !345, file: !94, line: 621, baseType: !19, size: 8, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !94, line: 621, baseType: !19, size: 8, offset: 72)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !345, file: !94, line: 621, baseType: !50, size: 16, offset: 80)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !345, file: !94, line: 621, baseType: !50, size: 16, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !345, file: !94, line: 621, baseType: !19, size: 8, offset: 112)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !345, file: !94, line: 622, baseType: !159, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !345, file: !94, line: 623, baseType: !39, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !345, file: !94, line: 624, baseType: !24, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !276, file: !94, line: 671, baseType: !357, size: 640)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !94, line: 631, size: 640, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !94, line: 632, baseType: !22, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !357, file: !94, line: 632, baseType: !19, size: 8, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !94, line: 632, baseType: !19, size: 8, offset: 72)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !357, file: !94, line: 632, baseType: !50, size: 16, offset: 80)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !357, file: !94, line: 632, baseType: !50, size: 16, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !357, file: !94, line: 633, baseType: !365, size: 512, offset: 128)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 512, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 8)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !276, file: !94, line: 672, baseType: !369, size: 320)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !94, line: 654, size: 320, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !94, line: 655, baseType: !22, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !369, file: !94, line: 655, baseType: !19, size: 8, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !94, line: 655, baseType: !19, size: 8, offset: 72)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !369, file: !94, line: 655, baseType: !50, size: 16, offset: 80)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !369, file: !94, line: 655, baseType: !50, size: 16, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !369, file: !94, line: 655, baseType: !19, size: 8, offset: 112)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !369, file: !94, line: 656, baseType: !92, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !369, file: !94, line: 657, baseType: !39, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !369, file: !94, line: 658, baseType: !380, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !94, line: 645, size: 128, elements: !382)
!382 = !{!383, !389}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !381, file: !94, line: 646, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !13, line: 1052, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388, !14, !22}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !13, line: 424, baseType: !22)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !381, file: !94, line: 647, baseType: !22, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !185, file: !94, line: 902, baseType: !193, size: 64, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !185, file: !94, line: 903, baseType: !14, size: 32, offset: 576)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !160, file: !161, line: 61, baseType: !14, size: 32, offset: 1088)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !160, file: !161, line: 62, baseType: !14, size: 32, offset: 1120)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !160, file: !161, line: 63, baseType: !50, size: 16, offset: 1152)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !160, file: !161, line: 64, baseType: !19, size: 8, offset: 1168)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !160, file: !161, line: 66, baseType: !397, size: 2688, offset: 1216)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 2688, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 7)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !160, file: !161, line: 67, baseType: !401, size: 3072, offset: 3904)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 3072, elements: !366)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !160, file: !161, line: 68, baseType: !403, size: 576, offset: 6976)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 576, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 9)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !160, file: !161, line: 69, baseType: !124, size: 64, offset: 7552)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !160, file: !161, line: 71, baseType: !18, size: 64, offset: 7616)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !160, file: !161, line: 72, baseType: !124, size: 64, offset: 7680)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !160, file: !161, line: 73, baseType: !275, size: 64, offset: 7744)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !160, file: !161, line: 74, baseType: !92, size: 64, offset: 7808)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !160, file: !161, line: 75, baseType: !39, size: 64, offset: 7872)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !160, file: !161, line: 76, baseType: !92, size: 64, offset: 7936)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !160, file: !161, line: 77, baseType: !193, size: 64, offset: 8000)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !160, file: !161, line: 78, baseType: !39, size: 64, offset: 8064)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !160, file: !161, line: 79, baseType: !92, size: 64, offset: 8128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !160, file: !161, line: 80, baseType: !76, size: 64, offset: 8192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !160, file: !161, line: 81, baseType: !193, size: 64, offset: 8256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !160, file: !161, line: 82, baseType: !419, size: 64, offset: 8320)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !94, line: 702, size: 128, elements: !422)
!422 = !{!423, !424, !425, !426, !427, !428}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !421, file: !94, line: 706, baseType: !14, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !421, file: !94, line: 707, baseType: !14, size: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !94, line: 708, baseType: !50, size: 16, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !421, file: !94, line: 709, baseType: !19, size: 8, offset: 80)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !421, file: !94, line: 710, baseType: !19, size: 8, offset: 88)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !421, file: !94, line: 711, baseType: !19, size: 8, offset: 96)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !160, file: !161, line: 83, baseType: !193, size: 64, offset: 8384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !160, file: !161, line: 84, baseType: !39, size: 64, offset: 8448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !160, file: !161, line: 85, baseType: !275, size: 64, offset: 8512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !160, file: !161, line: 86, baseType: !39, size: 64, offset: 8576)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !160, file: !161, line: 87, baseType: !275, size: 64, offset: 8640)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !160, file: !161, line: 88, baseType: !193, size: 64, offset: 8704)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !160, file: !161, line: 89, baseType: !193, size: 64, offset: 8768)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !160, file: !161, line: 90, baseType: !437, size: 64, offset: 8832)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !160, file: !161, line: 91, baseType: !439, size: 64, offset: 8896)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !94, line: 637, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!12, !159, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !160, file: !161, line: 92, baseType: !445, size: 64, offset: 8960)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !94, line: 641, baseType: !156)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !152, file: !41, line: 152, baseType: !39, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !138, file: !41, line: 155, baseType: !14, size: 32, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !138, file: !41, line: 156, baseType: !113, size: 16, offset: 416)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !138, file: !41, line: 157, baseType: !19, size: 8, offset: 432)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !40, file: !41, line: 375, baseType: !451, size: 576)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !41, line: 122, size: 576, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !451, file: !41, line: 123, baseType: !39, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !451, file: !41, line: 123, baseType: !19, size: 8, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !451, file: !41, line: 123, baseType: !19, size: 8, offset: 72)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !451, file: !41, line: 123, baseType: !50, size: 16, offset: 80)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !451, file: !41, line: 123, baseType: !19, size: 8, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !451, file: !41, line: 123, baseType: !19, size: 8, offset: 104)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !451, file: !41, line: 124, baseType: !50, size: 16, offset: 112)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !451, file: !41, line: 125, baseType: !22, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !451, file: !41, line: 126, baseType: !24, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !451, file: !41, line: 127, baseType: !437, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !451, file: !41, line: 128, baseType: !39, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !41, line: 129, baseType: !39, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !451, file: !41, line: 130, baseType: !92, size: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !451, file: !41, line: 131, baseType: !19, size: 8, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !40, file: !41, line: 376, baseType: !468, size: 448)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !41, line: 134, size: 448, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !481}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !468, file: !41, line: 135, baseType: !39, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !468, file: !41, line: 135, baseType: !19, size: 8, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !468, file: !41, line: 135, baseType: !19, size: 8, offset: 72)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !468, file: !41, line: 135, baseType: !50, size: 16, offset: 80)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !41, line: 135, baseType: !19, size: 8, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !468, file: !41, line: 135, baseType: !19, size: 8, offset: 104)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !468, file: !41, line: 136, baseType: !92, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !468, file: !41, line: 137, baseType: !39, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !41, line: 138, baseType: !39, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !468, file: !41, line: 139, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !13, line: 129, baseType: !24)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !468, file: !41, line: 140, baseType: !14, size: 32, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !40, file: !41, line: 377, baseType: !483, size: 320)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !41, line: 184, size: 320, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !494}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !483, file: !41, line: 185, baseType: !39, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !483, file: !41, line: 185, baseType: !19, size: 8, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !483, file: !41, line: 185, baseType: !19, size: 8, offset: 72)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !483, file: !41, line: 185, baseType: !50, size: 16, offset: 80)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !41, line: 185, baseType: !19, size: 8, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !483, file: !41, line: 185, baseType: !491, size: 128, offset: 128)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 2)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !483, file: !41, line: 185, baseType: !39, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !40, file: !41, line: 378, baseType: !496, size: 384)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !41, line: 187, size: 384, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !496, file: !41, line: 188, baseType: !39, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !496, file: !41, line: 188, baseType: !19, size: 8, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !496, file: !41, line: 188, baseType: !19, size: 8, offset: 72)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !496, file: !41, line: 188, baseType: !50, size: 16, offset: 80)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !496, file: !41, line: 188, baseType: !19, size: 8, offset: 96)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !496, file: !41, line: 189, baseType: !491, size: 128, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !496, file: !41, line: 189, baseType: !39, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !496, file: !41, line: 189, baseType: !506, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !94, line: 480, size: 576, elements: !508)
!508 = !{!509, !510, !511, !512, !520, !535, !567, !568, !569, !570, !571, !572}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !507, file: !94, line: 481, baseType: !92, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !507, file: !94, line: 482, baseType: !506, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !507, file: !94, line: 483, baseType: !506, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !507, file: !94, line: 484, baseType: !513, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !94, line: 497, size: 256, elements: !515)
!515 = !{!516, !517, !518, !519}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !514, file: !94, line: 498, baseType: !513, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !514, file: !94, line: 499, baseType: !513, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !514, file: !94, line: 500, baseType: !506, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !514, file: !94, line: 501, baseType: !14, size: 32, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !507, file: !94, line: 485, baseType: !521, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !94, line: 466, size: 320, elements: !523)
!523 = !{!524, !529, !530, !531, !532, !533, !534}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !522, file: !94, line: 467, baseType: !525, size: 128)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !94, line: 459, size: 128, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !525, file: !94, line: 460, baseType: !19, size: 8)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !525, file: !94, line: 461, baseType: !24, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !522, file: !94, line: 468, baseType: !525, size: 128, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !522, file: !94, line: 469, baseType: !50, size: 16, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !522, file: !94, line: 470, baseType: !19, size: 8, offset: 272)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !522, file: !94, line: 471, baseType: !19, size: 8, offset: 280)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !522, file: !94, line: 472, baseType: !19, size: 8, offset: 288)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !522, file: !94, line: 473, baseType: !19, size: 8, offset: 296)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !507, file: !94, line: 486, baseType: !536, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !94, line: 448, size: 192, elements: !538)
!538 = !{!539, !562, !563, !564, !565, !566}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !537, file: !94, line: 449, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !94, line: 438, size: 64, elements: !541)
!541 = !{!542, !543, !556}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !540, file: !94, line: 439, baseType: !92, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !540, file: !94, line: 440, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !94, line: 419, size: 256, elements: !546)
!546 = !{!547, !552, !553, !554, !555}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !545, file: !94, line: 420, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !13, line: 1049, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!14, !388, !14, !22}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !545, file: !94, line: 421, baseType: !22, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !545, file: !94, line: 422, baseType: !92, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !545, file: !94, line: 423, baseType: !19, size: 8, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !545, file: !94, line: 424, baseType: !19, size: 8, offset: 200)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !540, file: !94, line: 441, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !94, line: 429, size: 128, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !558, file: !94, line: 430, baseType: !92, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !558, file: !94, line: 431, baseType: !557, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !537, file: !94, line: 450, baseType: !521, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !94, line: 451, baseType: !19, size: 8, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !537, file: !94, line: 452, baseType: !19, size: 8, offset: 136)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !537, file: !94, line: 453, baseType: !19, size: 8, offset: 144)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !537, file: !94, line: 454, baseType: !19, size: 8, offset: 152)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !507, file: !94, line: 487, baseType: !24, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !507, file: !94, line: 488, baseType: !14, size: 32, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !507, file: !94, line: 489, baseType: !50, size: 16, offset: 480)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !507, file: !94, line: 490, baseType: !50, size: 16, offset: 496)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !507, file: !94, line: 491, baseType: !19, size: 8, offset: 512)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !507, file: !94, line: 492, baseType: !19, size: 8, offset: 520)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !40, file: !41, line: 379, baseType: !574, size: 384)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !41, line: 192, size: 384, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !574, file: !41, line: 193, baseType: !39, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !574, file: !41, line: 193, baseType: !19, size: 8, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !574, file: !41, line: 193, baseType: !19, size: 8, offset: 72)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !574, file: !41, line: 193, baseType: !50, size: 16, offset: 80)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !41, line: 193, baseType: !19, size: 8, offset: 96)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !574, file: !41, line: 193, baseType: !491, size: 128, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !574, file: !41, line: 193, baseType: !39, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !574, file: !41, line: 193, baseType: !14, size: 32, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !574, file: !41, line: 194, baseType: !14, size: 32, offset: 352)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !40, file: !41, line: 380, baseType: !586, size: 384)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !41, line: 197, size: 384, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !586, file: !41, line: 198, baseType: !39, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !586, file: !41, line: 198, baseType: !19, size: 8, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !586, file: !41, line: 198, baseType: !19, size: 8, offset: 72)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !586, file: !41, line: 198, baseType: !50, size: 16, offset: 80)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !41, line: 198, baseType: !19, size: 8, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !586, file: !41, line: 200, baseType: !19, size: 8, offset: 104)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !586, file: !41, line: 201, baseType: !19, size: 8, offset: 112)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !586, file: !41, line: 202, baseType: !491, size: 128, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !586, file: !41, line: 202, baseType: !39, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !586, file: !41, line: 202, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !13, line: 128, baseType: !24)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !40, file: !41, line: 381, baseType: !600, size: 320)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !41, line: 205, size: 320, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !608}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !600, file: !41, line: 206, baseType: !39, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !600, file: !41, line: 206, baseType: !19, size: 8, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !600, file: !41, line: 206, baseType: !19, size: 8, offset: 72)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !600, file: !41, line: 206, baseType: !50, size: 16, offset: 80)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !600, file: !41, line: 206, baseType: !19, size: 8, offset: 96)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !600, file: !41, line: 206, baseType: !491, size: 128, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !600, file: !41, line: 206, baseType: !39, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !40, file: !41, line: 382, baseType: !610, size: 384)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !41, line: 233, size: 384, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !610, file: !41, line: 234, baseType: !39, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !610, file: !41, line: 234, baseType: !19, size: 8, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !610, file: !41, line: 234, baseType: !19, size: 8, offset: 72)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !610, file: !41, line: 234, baseType: !50, size: 16, offset: 80)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !610, file: !41, line: 234, baseType: !19, size: 8, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !610, file: !41, line: 234, baseType: !19, size: 8, offset: 104)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !610, file: !41, line: 234, baseType: !19, size: 8, offset: 112)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !610, file: !41, line: 234, baseType: !19, size: 8, offset: 120)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !610, file: !41, line: 234, baseType: !92, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !610, file: !41, line: 234, baseType: !14, size: 32, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !610, file: !41, line: 234, baseType: !14, size: 32, offset: 224)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !610, file: !41, line: 234, baseType: !14, size: 32, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !610, file: !41, line: 234, baseType: !19, size: 8, offset: 288)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !610, file: !41, line: 234, baseType: !19, size: 8, offset: 296)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !610, file: !41, line: 234, baseType: !39, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !40, file: !41, line: 383, baseType: !628, size: 576)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !41, line: 237, size: 576, elements: !629)
!629 = !{!630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !628, file: !41, line: 238, baseType: !39, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !628, file: !41, line: 238, baseType: !19, size: 8, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !628, file: !41, line: 238, baseType: !19, size: 8, offset: 72)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !628, file: !41, line: 238, baseType: !50, size: 16, offset: 80)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !628, file: !41, line: 238, baseType: !19, size: 8, offset: 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !628, file: !41, line: 238, baseType: !19, size: 8, offset: 104)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !628, file: !41, line: 238, baseType: !19, size: 8, offset: 112)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !628, file: !41, line: 238, baseType: !19, size: 8, offset: 120)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !628, file: !41, line: 238, baseType: !92, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !628, file: !41, line: 238, baseType: !14, size: 32, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !628, file: !41, line: 238, baseType: !14, size: 32, offset: 224)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !628, file: !41, line: 238, baseType: !14, size: 32, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !628, file: !41, line: 238, baseType: !19, size: 8, offset: 288)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !628, file: !41, line: 238, baseType: !19, size: 8, offset: 296)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !628, file: !41, line: 238, baseType: !50, size: 16, offset: 304)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !628, file: !41, line: 239, baseType: !39, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !628, file: !41, line: 240, baseType: !18, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !628, file: !41, line: 241, baseType: !50, size: 16, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !628, file: !41, line: 242, baseType: !18, size: 64, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !40, file: !41, line: 384, baseType: !650, size: 384)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !41, line: 262, size: 384, elements: !651)
!651 = !{!652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !650, file: !41, line: 263, baseType: !39, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !650, file: !41, line: 263, baseType: !19, size: 8, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !650, file: !41, line: 263, baseType: !19, size: 8, offset: 72)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !650, file: !41, line: 263, baseType: !50, size: 16, offset: 80)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !41, line: 263, baseType: !19, size: 8, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !650, file: !41, line: 263, baseType: !19, size: 8, offset: 104)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !650, file: !41, line: 263, baseType: !19, size: 8, offset: 112)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !650, file: !41, line: 263, baseType: !19, size: 8, offset: 120)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !650, file: !41, line: 263, baseType: !92, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !650, file: !41, line: 263, baseType: !14, size: 32, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !650, file: !41, line: 263, baseType: !14, size: 32, offset: 224)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !650, file: !41, line: 263, baseType: !14, size: 32, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !650, file: !41, line: 263, baseType: !19, size: 8, offset: 288)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !650, file: !41, line: 263, baseType: !19, size: 8, offset: 296)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !650, file: !41, line: 263, baseType: !19, size: 8, offset: 304)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !650, file: !41, line: 264, baseType: !39, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !40, file: !41, line: 385, baseType: !669, size: 448)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !41, line: 245, size: 448, elements: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !669, file: !41, line: 246, baseType: !39, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !669, file: !41, line: 246, baseType: !19, size: 8, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !669, file: !41, line: 246, baseType: !19, size: 8, offset: 72)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !669, file: !41, line: 246, baseType: !50, size: 16, offset: 80)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !669, file: !41, line: 246, baseType: !19, size: 8, offset: 96)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !669, file: !41, line: 246, baseType: !19, size: 8, offset: 104)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !669, file: !41, line: 246, baseType: !19, size: 8, offset: 112)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !669, file: !41, line: 246, baseType: !19, size: 8, offset: 120)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !669, file: !41, line: 246, baseType: !92, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !669, file: !41, line: 246, baseType: !14, size: 32, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !669, file: !41, line: 246, baseType: !14, size: 32, offset: 224)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !669, file: !41, line: 246, baseType: !14, size: 32, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !669, file: !41, line: 246, baseType: !19, size: 8, offset: 288)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !669, file: !41, line: 246, baseType: !19, size: 8, offset: 296)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !669, file: !41, line: 246, baseType: !39, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !669, file: !41, line: 247, baseType: !39, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !40, file: !41, line: 386, baseType: !688, size: 448)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !41, line: 250, size: 448, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !688, file: !41, line: 251, baseType: !39, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !688, file: !41, line: 251, baseType: !19, size: 8, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !688, file: !41, line: 251, baseType: !19, size: 8, offset: 72)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !688, file: !41, line: 251, baseType: !50, size: 16, offset: 80)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !688, file: !41, line: 251, baseType: !19, size: 8, offset: 96)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !688, file: !41, line: 251, baseType: !19, size: 8, offset: 104)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !688, file: !41, line: 251, baseType: !19, size: 8, offset: 112)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !688, file: !41, line: 251, baseType: !19, size: 8, offset: 120)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !688, file: !41, line: 251, baseType: !92, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !688, file: !41, line: 251, baseType: !14, size: 32, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !688, file: !41, line: 251, baseType: !14, size: 32, offset: 224)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !688, file: !41, line: 251, baseType: !14, size: 32, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !688, file: !41, line: 251, baseType: !19, size: 8, offset: 288)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !688, file: !41, line: 251, baseType: !19, size: 8, offset: 296)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !688, file: !41, line: 256, baseType: !39, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !688, file: !41, line: 257, baseType: !39, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !40, file: !41, line: 387, baseType: !707, size: 512)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !41, line: 273, size: 512, elements: !708)
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !717, !718}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !707, file: !41, line: 274, baseType: !39, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !707, file: !41, line: 274, baseType: !19, size: 8, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !707, file: !41, line: 274, baseType: !19, size: 8, offset: 72)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !707, file: !41, line: 274, baseType: !50, size: 16, offset: 80)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !41, line: 274, baseType: !19, size: 8, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !707, file: !41, line: 274, baseType: !92, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !707, file: !41, line: 275, baseType: !14, size: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !707, file: !41, line: 276, baseType: !384, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !707, file: !41, line: 277, baseType: !22, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !707, file: !41, line: 278, baseType: !491, size: 128, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !40, file: !41, line: 388, baseType: !720, size: 512)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !41, line: 281, size: 512, elements: !721)
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !735, !736, !737, !743, !744}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !720, file: !41, line: 282, baseType: !39, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !720, file: !41, line: 282, baseType: !19, size: 8, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !720, file: !41, line: 282, baseType: !19, size: 8, offset: 72)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !720, file: !41, line: 282, baseType: !50, size: 16, offset: 80)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !720, file: !41, line: 282, baseType: !19, size: 8, offset: 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !720, file: !41, line: 282, baseType: !19, size: 8, offset: 104)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !720, file: !41, line: 283, baseType: !19, size: 8, offset: 112)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !720, file: !41, line: 284, baseType: !730, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !13, line: 1084, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!12, !14, !480, !14, !734, !22, !22}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !720, file: !41, line: 285, baseType: !92, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !720, file: !41, line: 286, baseType: !22, size: 64, offset: 256)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !720, file: !41, line: 287, baseType: !738, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !13, line: 1102, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!12, !388, !14, !22, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !720, file: !41, line: 288, baseType: !39, size: 64, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !720, file: !41, line: 289, baseType: !39, size: 64, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !40, file: !41, line: 389, baseType: !746, size: 512)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !41, line: 307, size: 512, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !746, file: !41, line: 308, baseType: !39, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !746, file: !41, line: 308, baseType: !19, size: 8, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !746, file: !41, line: 308, baseType: !19, size: 8, offset: 72)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !746, file: !41, line: 308, baseType: !50, size: 16, offset: 80)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !41, line: 308, baseType: !19, size: 8, offset: 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !746, file: !41, line: 308, baseType: !19, size: 8, offset: 104)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !746, file: !41, line: 309, baseType: !19, size: 8, offset: 112)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !746, file: !41, line: 310, baseType: !19, size: 8, offset: 120)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !746, file: !41, line: 311, baseType: !22, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !746, file: !41, line: 312, baseType: !92, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !746, file: !41, line: 313, baseType: !124, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !746, file: !41, line: 314, baseType: !18, size: 64, offset: 320)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !746, file: !41, line: 315, baseType: !18, size: 64, offset: 384)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !746, file: !41, line: 316, baseType: !14, size: 32, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !40, file: !41, line: 390, baseType: !763, size: 448)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !41, line: 340, size: 448, elements: !764)
!764 = !{!765, !766, !767, !768, !769, !770, !771, !772, !773, !774}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !763, file: !41, line: 341, baseType: !39, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !763, file: !41, line: 341, baseType: !19, size: 8, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !763, file: !41, line: 341, baseType: !19, size: 8, offset: 72)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !763, file: !41, line: 341, baseType: !50, size: 16, offset: 80)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !763, file: !41, line: 341, baseType: !19, size: 8, offset: 96)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !763, file: !41, line: 341, baseType: !92, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !763, file: !41, line: 342, baseType: !92, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !763, file: !41, line: 343, baseType: !22, size: 64, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !763, file: !41, line: 344, baseType: !18, size: 64, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !763, file: !41, line: 345, baseType: !14, size: 32, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !40, file: !41, line: 391, baseType: !776, size: 256)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !41, line: 350, size: 256, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783, !788}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !776, file: !41, line: 351, baseType: !39, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !776, file: !41, line: 351, baseType: !19, size: 8, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !776, file: !41, line: 351, baseType: !19, size: 8, offset: 72)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !776, file: !41, line: 351, baseType: !50, size: 16, offset: 80)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !776, file: !41, line: 351, baseType: !19, size: 8, offset: 96)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !776, file: !41, line: 351, baseType: !784, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !13, line: 1055, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !388, !22}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !776, file: !41, line: 352, baseType: !22, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !40, file: !41, line: 392, baseType: !790, size: 192)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !41, line: 357, size: 192, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !790, file: !41, line: 358, baseType: !39, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !790, file: !41, line: 358, baseType: !19, size: 8, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !790, file: !41, line: 358, baseType: !19, size: 8, offset: 72)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !790, file: !41, line: 358, baseType: !50, size: 16, offset: 80)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !41, line: 358, baseType: !19, size: 8, offset: 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !790, file: !41, line: 358, baseType: !39, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !40, file: !41, line: 399, baseType: !93, size: 384)
!799 = !{}
!800 = !DILocalVariable(name: "source_desc", arg: 1, scope: !36, file: !1, line: 30, type: !39)
!801 = !DILocation(line: 30, column: 59, scope: !36)
!802 = !DILocalVariable(name: "target_desc", arg: 2, scope: !36, file: !1, line: 31, type: !39)
!803 = !DILocation(line: 31, column: 38, scope: !36)
!804 = !DILocalVariable(name: "length", scope: !36, file: !1, line: 33, type: !14)
!805 = !DILocation(line: 33, column: 6, scope: !36)
!806 = !DILocalVariable(name: "buffer", scope: !36, file: !1, line: 34, type: !18)
!807 = !DILocation(line: 34, column: 6, scope: !36)
!808 = !DILocation(line: 40, column: 6, scope: !809)
!809 = distinct !DILexicalBlock(scope: !36, file: !1, line: 40, column: 6)
!810 = !DILocation(line: 40, column: 21, scope: !809)
!811 = !DILocation(line: 40, column: 18, scope: !809)
!812 = !DILocation(line: 40, column: 6, scope: !36)
!813 = !DILocation(line: 41, column: 3, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !1, line: 40, column: 34)
!815 = !DILocation(line: 46, column: 11, scope: !36)
!816 = !DILocation(line: 46, column: 9, scope: !36)
!817 = !DILocation(line: 47, column: 11, scope: !36)
!818 = !DILocation(line: 47, column: 24, scope: !36)
!819 = !DILocation(line: 47, column: 31, scope: !36)
!820 = !DILocation(line: 47, column: 9, scope: !36)
!821 = !DILocation(line: 53, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !36, file: !1, line: 53, column: 6)
!823 = !DILocation(line: 53, column: 20, scope: !822)
!824 = !DILocation(line: 53, column: 27, scope: !822)
!825 = !DILocation(line: 53, column: 34, scope: !822)
!826 = !DILocation(line: 53, column: 40, scope: !822)
!827 = !DILocation(line: 54, column: 7, scope: !822)
!828 = !DILocation(line: 54, column: 20, scope: !822)
!829 = !DILocation(line: 54, column: 27, scope: !822)
!830 = !DILocation(line: 54, column: 33, scope: !822)
!831 = !DILocation(line: 53, column: 6, scope: !36)
!832 = !DILocation(line: 55, column: 33, scope: !833)
!833 = distinct !DILexicalBlock(scope: !822, file: !1, line: 54, column: 59)
!834 = !DILocation(line: 55, column: 3, scope: !833)
!835 = !DILocation(line: 55, column: 16, scope: !833)
!836 = !DILocation(line: 55, column: 23, scope: !833)
!837 = !DILocation(line: 55, column: 31, scope: !833)
!838 = !DILocation(line: 56, column: 8, scope: !839)
!839 = distinct !DILexicalBlock(scope: !833, file: !1, line: 56, column: 7)
!840 = !DILocation(line: 56, column: 21, scope: !839)
!841 = !DILocation(line: 56, column: 28, scope: !839)
!842 = !DILocation(line: 56, column: 7, scope: !833)
!843 = !DILocation(line: 57, column: 4, scope: !844)
!844 = distinct !DILexicalBlock(scope: !839, file: !1, line: 56, column: 37)
!845 = !DILocation(line: 60, column: 32, scope: !833)
!846 = !DILocation(line: 60, column: 3, scope: !833)
!847 = !DILocation(line: 60, column: 16, scope: !833)
!848 = !DILocation(line: 60, column: 23, scope: !833)
!849 = !DILocation(line: 60, column: 30, scope: !833)
!850 = !DILocation(line: 61, column: 2, scope: !833)
!851 = !DILocation(line: 65, column: 6, scope: !852)
!852 = distinct !DILexicalBlock(scope: !36, file: !1, line: 65, column: 6)
!853 = !DILocation(line: 65, column: 16, scope: !852)
!854 = !DILocation(line: 65, column: 29, scope: !852)
!855 = !DILocation(line: 65, column: 36, scope: !852)
!856 = !DILocation(line: 65, column: 13, scope: !852)
!857 = !DILocation(line: 65, column: 6, scope: !36)
!858 = !DILocation(line: 69, column: 10, scope: !859)
!859 = distinct !DILexicalBlock(scope: !852, file: !1, line: 65, column: 44)
!860 = !DILocation(line: 69, column: 23, scope: !859)
!861 = !DILocation(line: 69, column: 30, scope: !859)
!862 = !DILocation(line: 70, column: 10, scope: !859)
!863 = !DILocation(line: 70, column: 23, scope: !859)
!864 = !DILocation(line: 70, column: 30, scope: !859)
!865 = !DILocation(line: 69, column: 3, scope: !859)
!866 = !DILocation(line: 71, column: 10, scope: !859)
!867 = !DILocation(line: 71, column: 23, scope: !859)
!868 = !DILocation(line: 71, column: 30, scope: !859)
!869 = !DILocation(line: 71, column: 39, scope: !859)
!870 = !DILocation(line: 71, column: 47, scope: !859)
!871 = !DILocation(line: 71, column: 3, scope: !859)
!872 = !DILocation(line: 95, column: 2, scope: !859)
!873 = !DILocation(line: 98, column: 10, scope: !874)
!874 = distinct !DILexicalBlock(scope: !852, file: !1, line: 95, column: 9)
!875 = !DILocation(line: 98, column: 23, scope: !874)
!876 = !DILocation(line: 98, column: 30, scope: !874)
!877 = !DILocation(line: 98, column: 39, scope: !874)
!878 = !DILocation(line: 99, column: 10, scope: !874)
!879 = !DILocation(line: 99, column: 23, scope: !874)
!880 = !DILocation(line: 99, column: 30, scope: !874)
!881 = !DILocation(line: 98, column: 3, scope: !874)
!882 = !DILocation(line: 108, column: 30, scope: !36)
!883 = !DILocation(line: 108, column: 43, scope: !36)
!884 = !DILocation(line: 108, column: 50, scope: !36)
!885 = !DILocation(line: 108, column: 2, scope: !36)
!886 = !DILocation(line: 108, column: 15, scope: !36)
!887 = !DILocation(line: 108, column: 22, scope: !36)
!888 = !DILocation(line: 108, column: 28, scope: !36)
!889 = !DILocation(line: 109, column: 2, scope: !36)
!890 = !DILocation(line: 109, column: 15, scope: !36)
!891 = !DILocation(line: 109, column: 22, scope: !36)
!892 = !DILocation(line: 109, column: 28, scope: !36)
!893 = !DILocation(line: 110, column: 2, scope: !36)
!894 = !DILocation(line: 111, column: 1, scope: !36)
!895 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !896, file: !896, line: 50, type: !897, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!896 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!897 = !DISubroutineType(types: !898)
!898 = !{!22, !23}
!899 = !DILocalVariable(name: "s", arg: 1, scope: !900, file: !4, line: 445, type: !903)
!900 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !4, file: !4, line: 445, type: !901, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!901 = !DISubroutineType(types: !902)
!902 = !{!22, !903, !27, !906}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !905, line: 117, flags: DIFlagFwdDecl)
!905 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 55, baseType: !907)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !908, line: 72, baseType: !909)
!908 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !908, line: 16, baseType: !29)
!910 = !DILocation(line: 445, column: 72, scope: !900, inlinedAt: !911)
!911 = distinct !DILocation(line: 552, column: 10, scope: !912, inlinedAt: !917)
!912 = distinct !DILexicalBlock(scope: !913, file: !4, line: 540, column: 34)
!913 = distinct !DILexicalBlock(scope: !914, file: !4, line: 540, column: 6)
!914 = distinct !DISubprogram(name: "kmalloc", scope: !4, file: !4, line: 538, type: !915, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!915 = !DISubroutineType(types: !916)
!916 = !{!22, !906, !27}
!917 = distinct !DILocation(line: 52, column: 9, scope: !895)
!918 = !DILocalVariable(name: "flags", arg: 2, scope: !900, file: !4, line: 446, type: !27)
!919 = !DILocation(line: 446, column: 9, scope: !900, inlinedAt: !911)
!920 = !DILocalVariable(name: "size", arg: 3, scope: !900, file: !4, line: 446, type: !906)
!921 = !DILocation(line: 446, column: 23, scope: !900, inlinedAt: !911)
!922 = !DILocalVariable(name: "ret", scope: !900, file: !4, line: 448, type: !22)
!923 = !DILocation(line: 448, column: 8, scope: !900, inlinedAt: !911)
!924 = !DILocalVariable(name: "flags", arg: 1, scope: !925, file: !4, line: 318, type: !27)
!925 = distinct !DISubprogram(name: "kmalloc_type", scope: !4, file: !4, line: 318, type: !926, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!926 = !DISubroutineType(types: !927)
!927 = !{!3, !27}
!928 = !DILocation(line: 318, column: 67, scope: !925, inlinedAt: !929)
!929 = distinct !DILocation(line: 553, column: 20, scope: !912, inlinedAt: !917)
!930 = !DILocalVariable(name: "size", arg: 1, scope: !931, file: !4, line: 346, type: !906)
!931 = distinct !DISubprogram(name: "kmalloc_index", scope: !4, file: !4, line: 346, type: !932, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!932 = !DISubroutineType(types: !933)
!933 = !{!5, !906}
!934 = !DILocation(line: 346, column: 58, scope: !931, inlinedAt: !935)
!935 = distinct !DILocation(line: 547, column: 11, scope: !912, inlinedAt: !917)
!936 = !DILocalVariable(name: "size", arg: 1, scope: !937, file: !4, line: 472, type: !906)
!937 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !4, file: !4, line: 472, type: !938, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!938 = !DISubroutineType(types: !939)
!939 = !{!22, !906, !27, !5}
!940 = !DILocation(line: 472, column: 28, scope: !937, inlinedAt: !941)
!941 = distinct !DILocation(line: 481, column: 9, scope: !942, inlinedAt: !943)
!942 = distinct !DISubprogram(name: "kmalloc_large", scope: !4, file: !4, line: 478, type: !915, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!943 = distinct !DILocation(line: 545, column: 11, scope: !944, inlinedAt: !917)
!944 = distinct !DILexicalBlock(scope: !912, file: !4, line: 544, column: 7)
!945 = !DILocalVariable(name: "flags", arg: 2, scope: !937, file: !4, line: 472, type: !27)
!946 = !DILocation(line: 472, column: 40, scope: !937, inlinedAt: !941)
!947 = !DILocalVariable(name: "order", arg: 3, scope: !937, file: !4, line: 472, type: !5)
!948 = !DILocation(line: 472, column: 60, scope: !937, inlinedAt: !941)
!949 = !DILocalVariable(name: "size", arg: 1, scope: !942, file: !4, line: 478, type: !906)
!950 = !DILocation(line: 478, column: 51, scope: !942, inlinedAt: !943)
!951 = !DILocalVariable(name: "flags", arg: 2, scope: !942, file: !4, line: 478, type: !27)
!952 = !DILocation(line: 478, column: 63, scope: !942, inlinedAt: !943)
!953 = !DILocalVariable(name: "order", scope: !942, file: !4, line: 480, type: !5)
!954 = !DILocation(line: 480, column: 15, scope: !942, inlinedAt: !943)
!955 = !DILocalVariable(name: "size", arg: 1, scope: !914, file: !4, line: 538, type: !906)
!956 = !DILocation(line: 538, column: 45, scope: !914, inlinedAt: !917)
!957 = !DILocalVariable(name: "flags", arg: 2, scope: !914, file: !4, line: 538, type: !27)
!958 = !DILocation(line: 538, column: 57, scope: !914, inlinedAt: !917)
!959 = !DILocalVariable(name: "index", scope: !912, file: !4, line: 542, type: !5)
!960 = !DILocation(line: 542, column: 16, scope: !912, inlinedAt: !917)
!961 = !DILocalVariable(name: "flags", arg: 1, scope: !962, file: !963, line: 162, type: !29)
!962 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !963, file: !963, line: 162, type: !964, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!963 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!964 = !DISubroutineType(types: !965)
!965 = !{!966, !29}
!966 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!967 = !DILocation(line: 162, column: 67, scope: !962, inlinedAt: !968)
!968 = distinct !DILocation(line: 52, column: 23, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !896, line: 52, column: 23)
!970 = distinct !DILexicalBlock(scope: !895, file: !896, line: 52, column: 23)
!971 = !DILocalVariable(name: "size", arg: 1, scope: !895, file: !896, line: 50, type: !23)
!972 = !DILocation(line: 50, column: 48, scope: !895)
!973 = !DILocation(line: 52, column: 17, scope: !895)
!974 = !DILocalVariable(name: "_flags", scope: !970, file: !896, line: 52, type: !29)
!975 = !DILocation(line: 52, column: 23, scope: !970)
!976 = !DILocalVariable(name: "__dummy", scope: !977, file: !896, line: 52, type: !29)
!977 = distinct !DILexicalBlock(scope: !978, file: !896, line: 52, column: 23)
!978 = distinct !DILexicalBlock(scope: !970, file: !896, line: 52, column: 23)
!979 = !DILocation(line: 52, column: 23, scope: !977)
!980 = !DILocalVariable(name: "__dummy2", scope: !977, file: !896, line: 52, type: !29)
!981 = !DILocation(line: 52, column: 23, scope: !978)
!982 = !DILocalVariable(name: "__dummy", scope: !983, file: !896, line: 52, type: !29)
!983 = distinct !DILexicalBlock(scope: !969, file: !896, line: 52, column: 23)
!984 = !DILocation(line: 52, column: 23, scope: !983)
!985 = !DILocalVariable(name: "__dummy2", scope: !983, file: !896, line: 52, type: !29)
!986 = !DILocation(line: 52, column: 23, scope: !969)
!987 = !DILocation(line: 164, column: 11, scope: !962, inlinedAt: !968)
!988 = !DILocation(line: 164, column: 17, scope: !962, inlinedAt: !968)
!989 = !DILocation(line: 164, column: 9, scope: !962, inlinedAt: !968)
!990 = !DILocation(line: 52, column: 23, scope: !895)
!991 = !DILocation(line: 540, column: 27, scope: !913, inlinedAt: !917)
!992 = !DILocation(line: 540, column: 6, scope: !913, inlinedAt: !917)
!993 = !DILocation(line: 540, column: 6, scope: !914, inlinedAt: !917)
!994 = !DILocation(line: 544, column: 7, scope: !944, inlinedAt: !917)
!995 = !DILocation(line: 544, column: 12, scope: !944, inlinedAt: !917)
!996 = !DILocation(line: 544, column: 7, scope: !912, inlinedAt: !917)
!997 = !DILocation(line: 545, column: 25, scope: !944, inlinedAt: !917)
!998 = !DILocation(line: 545, column: 31, scope: !944, inlinedAt: !917)
!999 = !DILocation(line: 480, column: 33, scope: !942, inlinedAt: !943)
!1000 = !DILocation(line: 480, column: 23, scope: !942, inlinedAt: !943)
!1001 = !DILocation(line: 481, column: 29, scope: !942, inlinedAt: !943)
!1002 = !DILocation(line: 481, column: 35, scope: !942, inlinedAt: !943)
!1003 = !DILocation(line: 481, column: 42, scope: !942, inlinedAt: !943)
!1004 = !DILocation(line: 474, column: 23, scope: !937, inlinedAt: !941)
!1005 = !DILocation(line: 474, column: 29, scope: !937, inlinedAt: !941)
!1006 = !DILocation(line: 474, column: 36, scope: !937, inlinedAt: !941)
!1007 = !DILocation(line: 474, column: 9, scope: !937, inlinedAt: !941)
!1008 = !DILocation(line: 545, column: 4, scope: !944, inlinedAt: !917)
!1009 = !DILocation(line: 547, column: 25, scope: !912, inlinedAt: !917)
!1010 = !DILocation(line: 348, column: 7, scope: !1011, inlinedAt: !935)
!1011 = distinct !DILexicalBlock(scope: !931, file: !4, line: 348, column: 6)
!1012 = !DILocation(line: 348, column: 6, scope: !931, inlinedAt: !935)
!1013 = !DILocation(line: 349, column: 3, scope: !1011, inlinedAt: !935)
!1014 = !DILocation(line: 351, column: 6, scope: !1015, inlinedAt: !935)
!1015 = distinct !DILexicalBlock(scope: !931, file: !4, line: 351, column: 6)
!1016 = !DILocation(line: 351, column: 11, scope: !1015, inlinedAt: !935)
!1017 = !DILocation(line: 351, column: 6, scope: !931, inlinedAt: !935)
!1018 = !DILocation(line: 352, column: 3, scope: !1015, inlinedAt: !935)
!1019 = !DILocation(line: 354, column: 32, scope: !1020, inlinedAt: !935)
!1020 = distinct !DILexicalBlock(scope: !931, file: !4, line: 354, column: 6)
!1021 = !DILocation(line: 354, column: 37, scope: !1020, inlinedAt: !935)
!1022 = !DILocation(line: 354, column: 42, scope: !1020, inlinedAt: !935)
!1023 = !DILocation(line: 354, column: 45, scope: !1020, inlinedAt: !935)
!1024 = !DILocation(line: 354, column: 50, scope: !1020, inlinedAt: !935)
!1025 = !DILocation(line: 354, column: 6, scope: !931, inlinedAt: !935)
!1026 = !DILocation(line: 355, column: 3, scope: !1020, inlinedAt: !935)
!1027 = !DILocation(line: 356, column: 32, scope: !1028, inlinedAt: !935)
!1028 = distinct !DILexicalBlock(scope: !931, file: !4, line: 356, column: 6)
!1029 = !DILocation(line: 356, column: 37, scope: !1028, inlinedAt: !935)
!1030 = !DILocation(line: 356, column: 43, scope: !1028, inlinedAt: !935)
!1031 = !DILocation(line: 356, column: 46, scope: !1028, inlinedAt: !935)
!1032 = !DILocation(line: 356, column: 51, scope: !1028, inlinedAt: !935)
!1033 = !DILocation(line: 356, column: 6, scope: !931, inlinedAt: !935)
!1034 = !DILocation(line: 357, column: 3, scope: !1028, inlinedAt: !935)
!1035 = !DILocation(line: 358, column: 6, scope: !1036, inlinedAt: !935)
!1036 = distinct !DILexicalBlock(scope: !931, file: !4, line: 358, column: 6)
!1037 = !DILocation(line: 358, column: 11, scope: !1036, inlinedAt: !935)
!1038 = !DILocation(line: 358, column: 6, scope: !931, inlinedAt: !935)
!1039 = !DILocation(line: 358, column: 26, scope: !1036, inlinedAt: !935)
!1040 = !DILocation(line: 359, column: 6, scope: !1041, inlinedAt: !935)
!1041 = distinct !DILexicalBlock(scope: !931, file: !4, line: 359, column: 6)
!1042 = !DILocation(line: 359, column: 11, scope: !1041, inlinedAt: !935)
!1043 = !DILocation(line: 359, column: 6, scope: !931, inlinedAt: !935)
!1044 = !DILocation(line: 359, column: 26, scope: !1041, inlinedAt: !935)
!1045 = !DILocation(line: 360, column: 6, scope: !1046, inlinedAt: !935)
!1046 = distinct !DILexicalBlock(scope: !931, file: !4, line: 360, column: 6)
!1047 = !DILocation(line: 360, column: 11, scope: !1046, inlinedAt: !935)
!1048 = !DILocation(line: 360, column: 6, scope: !931, inlinedAt: !935)
!1049 = !DILocation(line: 360, column: 26, scope: !1046, inlinedAt: !935)
!1050 = !DILocation(line: 361, column: 6, scope: !1051, inlinedAt: !935)
!1051 = distinct !DILexicalBlock(scope: !931, file: !4, line: 361, column: 6)
!1052 = !DILocation(line: 361, column: 11, scope: !1051, inlinedAt: !935)
!1053 = !DILocation(line: 361, column: 6, scope: !931, inlinedAt: !935)
!1054 = !DILocation(line: 361, column: 26, scope: !1051, inlinedAt: !935)
!1055 = !DILocation(line: 362, column: 6, scope: !1056, inlinedAt: !935)
!1056 = distinct !DILexicalBlock(scope: !931, file: !4, line: 362, column: 6)
!1057 = !DILocation(line: 362, column: 11, scope: !1056, inlinedAt: !935)
!1058 = !DILocation(line: 362, column: 6, scope: !931, inlinedAt: !935)
!1059 = !DILocation(line: 362, column: 26, scope: !1056, inlinedAt: !935)
!1060 = !DILocation(line: 363, column: 6, scope: !1061, inlinedAt: !935)
!1061 = distinct !DILexicalBlock(scope: !931, file: !4, line: 363, column: 6)
!1062 = !DILocation(line: 363, column: 11, scope: !1061, inlinedAt: !935)
!1063 = !DILocation(line: 363, column: 6, scope: !931, inlinedAt: !935)
!1064 = !DILocation(line: 363, column: 26, scope: !1061, inlinedAt: !935)
!1065 = !DILocation(line: 364, column: 6, scope: !1066, inlinedAt: !935)
!1066 = distinct !DILexicalBlock(scope: !931, file: !4, line: 364, column: 6)
!1067 = !DILocation(line: 364, column: 11, scope: !1066, inlinedAt: !935)
!1068 = !DILocation(line: 364, column: 6, scope: !931, inlinedAt: !935)
!1069 = !DILocation(line: 364, column: 26, scope: !1066, inlinedAt: !935)
!1070 = !DILocation(line: 365, column: 6, scope: !1071, inlinedAt: !935)
!1071 = distinct !DILexicalBlock(scope: !931, file: !4, line: 365, column: 6)
!1072 = !DILocation(line: 365, column: 11, scope: !1071, inlinedAt: !935)
!1073 = !DILocation(line: 365, column: 6, scope: !931, inlinedAt: !935)
!1074 = !DILocation(line: 365, column: 26, scope: !1071, inlinedAt: !935)
!1075 = !DILocation(line: 366, column: 6, scope: !1076, inlinedAt: !935)
!1076 = distinct !DILexicalBlock(scope: !931, file: !4, line: 366, column: 6)
!1077 = !DILocation(line: 366, column: 11, scope: !1076, inlinedAt: !935)
!1078 = !DILocation(line: 366, column: 6, scope: !931, inlinedAt: !935)
!1079 = !DILocation(line: 366, column: 26, scope: !1076, inlinedAt: !935)
!1080 = !DILocation(line: 367, column: 6, scope: !1081, inlinedAt: !935)
!1081 = distinct !DILexicalBlock(scope: !931, file: !4, line: 367, column: 6)
!1082 = !DILocation(line: 367, column: 11, scope: !1081, inlinedAt: !935)
!1083 = !DILocation(line: 367, column: 6, scope: !931, inlinedAt: !935)
!1084 = !DILocation(line: 367, column: 26, scope: !1081, inlinedAt: !935)
!1085 = !DILocation(line: 368, column: 6, scope: !1086, inlinedAt: !935)
!1086 = distinct !DILexicalBlock(scope: !931, file: !4, line: 368, column: 6)
!1087 = !DILocation(line: 368, column: 11, scope: !1086, inlinedAt: !935)
!1088 = !DILocation(line: 368, column: 6, scope: !931, inlinedAt: !935)
!1089 = !DILocation(line: 368, column: 26, scope: !1086, inlinedAt: !935)
!1090 = !DILocation(line: 369, column: 6, scope: !1091, inlinedAt: !935)
!1091 = distinct !DILexicalBlock(scope: !931, file: !4, line: 369, column: 6)
!1092 = !DILocation(line: 369, column: 11, scope: !1091, inlinedAt: !935)
!1093 = !DILocation(line: 369, column: 6, scope: !931, inlinedAt: !935)
!1094 = !DILocation(line: 369, column: 26, scope: !1091, inlinedAt: !935)
!1095 = !DILocation(line: 370, column: 6, scope: !1096, inlinedAt: !935)
!1096 = distinct !DILexicalBlock(scope: !931, file: !4, line: 370, column: 6)
!1097 = !DILocation(line: 370, column: 11, scope: !1096, inlinedAt: !935)
!1098 = !DILocation(line: 370, column: 6, scope: !931, inlinedAt: !935)
!1099 = !DILocation(line: 370, column: 26, scope: !1096, inlinedAt: !935)
!1100 = !DILocation(line: 371, column: 6, scope: !1101, inlinedAt: !935)
!1101 = distinct !DILexicalBlock(scope: !931, file: !4, line: 371, column: 6)
!1102 = !DILocation(line: 371, column: 11, scope: !1101, inlinedAt: !935)
!1103 = !DILocation(line: 371, column: 6, scope: !931, inlinedAt: !935)
!1104 = !DILocation(line: 371, column: 26, scope: !1101, inlinedAt: !935)
!1105 = !DILocation(line: 372, column: 6, scope: !1106, inlinedAt: !935)
!1106 = distinct !DILexicalBlock(scope: !931, file: !4, line: 372, column: 6)
!1107 = !DILocation(line: 372, column: 11, scope: !1106, inlinedAt: !935)
!1108 = !DILocation(line: 372, column: 6, scope: !931, inlinedAt: !935)
!1109 = !DILocation(line: 372, column: 26, scope: !1106, inlinedAt: !935)
!1110 = !DILocation(line: 373, column: 6, scope: !1111, inlinedAt: !935)
!1111 = distinct !DILexicalBlock(scope: !931, file: !4, line: 373, column: 6)
!1112 = !DILocation(line: 373, column: 11, scope: !1111, inlinedAt: !935)
!1113 = !DILocation(line: 373, column: 6, scope: !931, inlinedAt: !935)
!1114 = !DILocation(line: 373, column: 26, scope: !1111, inlinedAt: !935)
!1115 = !DILocation(line: 374, column: 6, scope: !1116, inlinedAt: !935)
!1116 = distinct !DILexicalBlock(scope: !931, file: !4, line: 374, column: 6)
!1117 = !DILocation(line: 374, column: 11, scope: !1116, inlinedAt: !935)
!1118 = !DILocation(line: 374, column: 6, scope: !931, inlinedAt: !935)
!1119 = !DILocation(line: 374, column: 26, scope: !1116, inlinedAt: !935)
!1120 = !DILocation(line: 375, column: 6, scope: !1121, inlinedAt: !935)
!1121 = distinct !DILexicalBlock(scope: !931, file: !4, line: 375, column: 6)
!1122 = !DILocation(line: 375, column: 11, scope: !1121, inlinedAt: !935)
!1123 = !DILocation(line: 375, column: 6, scope: !931, inlinedAt: !935)
!1124 = !DILocation(line: 375, column: 27, scope: !1121, inlinedAt: !935)
!1125 = !DILocation(line: 376, column: 6, scope: !1126, inlinedAt: !935)
!1126 = distinct !DILexicalBlock(scope: !931, file: !4, line: 376, column: 6)
!1127 = !DILocation(line: 376, column: 11, scope: !1126, inlinedAt: !935)
!1128 = !DILocation(line: 376, column: 6, scope: !931, inlinedAt: !935)
!1129 = !DILocation(line: 376, column: 32, scope: !1126, inlinedAt: !935)
!1130 = !DILocation(line: 377, column: 6, scope: !1131, inlinedAt: !935)
!1131 = distinct !DILexicalBlock(scope: !931, file: !4, line: 377, column: 6)
!1132 = !DILocation(line: 377, column: 11, scope: !1131, inlinedAt: !935)
!1133 = !DILocation(line: 377, column: 6, scope: !931, inlinedAt: !935)
!1134 = !DILocation(line: 377, column: 32, scope: !1131, inlinedAt: !935)
!1135 = !DILocation(line: 378, column: 6, scope: !1136, inlinedAt: !935)
!1136 = distinct !DILexicalBlock(scope: !931, file: !4, line: 378, column: 6)
!1137 = !DILocation(line: 378, column: 11, scope: !1136, inlinedAt: !935)
!1138 = !DILocation(line: 378, column: 6, scope: !931, inlinedAt: !935)
!1139 = !DILocation(line: 378, column: 32, scope: !1136, inlinedAt: !935)
!1140 = !DILocation(line: 379, column: 6, scope: !1141, inlinedAt: !935)
!1141 = distinct !DILexicalBlock(scope: !931, file: !4, line: 379, column: 6)
!1142 = !DILocation(line: 379, column: 11, scope: !1141, inlinedAt: !935)
!1143 = !DILocation(line: 379, column: 6, scope: !931, inlinedAt: !935)
!1144 = !DILocation(line: 379, column: 33, scope: !1141, inlinedAt: !935)
!1145 = !DILocation(line: 380, column: 6, scope: !1146, inlinedAt: !935)
!1146 = distinct !DILexicalBlock(scope: !931, file: !4, line: 380, column: 6)
!1147 = !DILocation(line: 380, column: 11, scope: !1146, inlinedAt: !935)
!1148 = !DILocation(line: 380, column: 6, scope: !931, inlinedAt: !935)
!1149 = !DILocation(line: 380, column: 33, scope: !1146, inlinedAt: !935)
!1150 = !DILocation(line: 381, column: 6, scope: !1151, inlinedAt: !935)
!1151 = distinct !DILexicalBlock(scope: !931, file: !4, line: 381, column: 6)
!1152 = !DILocation(line: 381, column: 11, scope: !1151, inlinedAt: !935)
!1153 = !DILocation(line: 381, column: 6, scope: !931, inlinedAt: !935)
!1154 = !DILocation(line: 381, column: 33, scope: !1151, inlinedAt: !935)
!1155 = !DILocation(line: 382, column: 2, scope: !1156, inlinedAt: !935)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !4, line: 382, column: 2)
!1157 = distinct !DILexicalBlock(scope: !931, file: !4, line: 382, column: 2)
!1158 = !{i32 -2144114708, i32 -2144114679, i32 -2144114633, i32 -2144114575, i32 -2144114521, i32 -2144114467, i32 -2144114412, i32 -2144114381}
!1159 = !DILocation(line: 382, column: 2, scope: !1160, inlinedAt: !935)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !4, line: 382, column: 2)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !4, line: 382, column: 2)
!1162 = !{i32 -2144113938, i32 -2144113931, i32 -2144113877, i32 -2144113846, i32 -2144113816}
!1163 = !DILocation(line: 382, column: 2, scope: !1161, inlinedAt: !935)
!1164 = !DILocation(line: 386, column: 1, scope: !931, inlinedAt: !935)
!1165 = !DILocation(line: 547, column: 9, scope: !912, inlinedAt: !917)
!1166 = !DILocation(line: 549, column: 8, scope: !1167, inlinedAt: !917)
!1167 = distinct !DILexicalBlock(scope: !912, file: !4, line: 549, column: 7)
!1168 = !DILocation(line: 549, column: 7, scope: !912, inlinedAt: !917)
!1169 = !DILocation(line: 550, column: 4, scope: !1167, inlinedAt: !917)
!1170 = !DILocation(line: 553, column: 33, scope: !912, inlinedAt: !917)
!1171 = !DILocation(line: 325, column: 6, scope: !1172, inlinedAt: !929)
!1172 = distinct !DILexicalBlock(scope: !925, file: !4, line: 325, column: 6)
!1173 = !DILocation(line: 325, column: 6, scope: !925, inlinedAt: !929)
!1174 = !DILocation(line: 326, column: 3, scope: !1172, inlinedAt: !929)
!1175 = !DILocation(line: 332, column: 9, scope: !925, inlinedAt: !929)
!1176 = !DILocation(line: 332, column: 15, scope: !925, inlinedAt: !929)
!1177 = !DILocation(line: 332, column: 2, scope: !925, inlinedAt: !929)
!1178 = !DILocation(line: 336, column: 1, scope: !925, inlinedAt: !929)
!1179 = !DILocation(line: 553, column: 5, scope: !912, inlinedAt: !917)
!1180 = !DILocation(line: 553, column: 41, scope: !912, inlinedAt: !917)
!1181 = !DILocation(line: 554, column: 5, scope: !912, inlinedAt: !917)
!1182 = !DILocation(line: 554, column: 12, scope: !912, inlinedAt: !917)
!1183 = !DILocation(line: 448, column: 31, scope: !900, inlinedAt: !911)
!1184 = !DILocation(line: 448, column: 34, scope: !900, inlinedAt: !911)
!1185 = !DILocation(line: 448, column: 14, scope: !900, inlinedAt: !911)
!1186 = !DILocation(line: 450, column: 22, scope: !900, inlinedAt: !911)
!1187 = !DILocation(line: 450, column: 25, scope: !900, inlinedAt: !911)
!1188 = !DILocation(line: 450, column: 30, scope: !900, inlinedAt: !911)
!1189 = !DILocation(line: 450, column: 36, scope: !900, inlinedAt: !911)
!1190 = !DILocation(line: 450, column: 8, scope: !900, inlinedAt: !911)
!1191 = !DILocation(line: 450, column: 6, scope: !900, inlinedAt: !911)
!1192 = !DILocation(line: 451, column: 9, scope: !900, inlinedAt: !911)
!1193 = !DILocation(line: 552, column: 3, scope: !912, inlinedAt: !917)
!1194 = !DILocation(line: 557, column: 19, scope: !914, inlinedAt: !917)
!1195 = !DILocation(line: 557, column: 25, scope: !914, inlinedAt: !917)
!1196 = !DILocation(line: 557, column: 9, scope: !914, inlinedAt: !917)
!1197 = !DILocation(line: 557, column: 2, scope: !914, inlinedAt: !917)
!1198 = !DILocation(line: 558, column: 1, scope: !914, inlinedAt: !917)
!1199 = !DILocation(line: 52, column: 2, scope: !895)
!1200 = distinct !DISubprogram(name: "acpi_ex_store_string_to_string", scope: !1, file: !1, line: 127, type: !37, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !799)
!1201 = !DILocalVariable(name: "source_desc", arg: 1, scope: !1200, file: !1, line: 127, type: !39)
!1202 = !DILocation(line: 127, column: 59, scope: !1200)
!1203 = !DILocalVariable(name: "target_desc", arg: 2, scope: !1200, file: !1, line: 128, type: !39)
!1204 = !DILocation(line: 128, column: 38, scope: !1200)
!1205 = !DILocalVariable(name: "length", scope: !1200, file: !1, line: 130, type: !14)
!1206 = !DILocation(line: 130, column: 6, scope: !1200)
!1207 = !DILocalVariable(name: "buffer", scope: !1200, file: !1, line: 131, type: !18)
!1208 = !DILocation(line: 131, column: 6, scope: !1200)
!1209 = !DILocation(line: 137, column: 6, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 137, column: 6)
!1211 = !DILocation(line: 137, column: 21, scope: !1210)
!1212 = !DILocation(line: 137, column: 18, scope: !1210)
!1213 = !DILocation(line: 137, column: 6, scope: !1200)
!1214 = !DILocation(line: 138, column: 3, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !1, line: 137, column: 34)
!1216 = !DILocation(line: 143, column: 11, scope: !1200)
!1217 = !DILocation(line: 143, column: 9, scope: !1200)
!1218 = !DILocation(line: 144, column: 11, scope: !1200)
!1219 = !DILocation(line: 144, column: 24, scope: !1200)
!1220 = !DILocation(line: 144, column: 31, scope: !1200)
!1221 = !DILocation(line: 144, column: 9, scope: !1200)
!1222 = !DILocation(line: 150, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 150, column: 6)
!1224 = !DILocation(line: 150, column: 16, scope: !1223)
!1225 = !DILocation(line: 150, column: 29, scope: !1223)
!1226 = !DILocation(line: 150, column: 36, scope: !1223)
!1227 = !DILocation(line: 150, column: 14, scope: !1223)
!1228 = !DILocation(line: 150, column: 44, scope: !1223)
!1229 = !DILocation(line: 151, column: 9, scope: !1223)
!1230 = !DILocation(line: 151, column: 22, scope: !1223)
!1231 = !DILocation(line: 151, column: 29, scope: !1223)
!1232 = !DILocation(line: 151, column: 35, scope: !1223)
!1233 = !DILocation(line: 150, column: 6, scope: !1200)
!1234 = !DILocation(line: 156, column: 10, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1223, file: !1, line: 151, column: 62)
!1236 = !DILocation(line: 156, column: 23, scope: !1235)
!1237 = !DILocation(line: 156, column: 30, scope: !1235)
!1238 = !DILocation(line: 157, column: 21, scope: !1235)
!1239 = !DILocation(line: 157, column: 34, scope: !1235)
!1240 = !DILocation(line: 157, column: 41, scope: !1235)
!1241 = !DILocation(line: 157, column: 10, scope: !1235)
!1242 = !DILocation(line: 157, column: 48, scope: !1235)
!1243 = !DILocation(line: 156, column: 3, scope: !1235)
!1244 = !DILocation(line: 158, column: 10, scope: !1235)
!1245 = !DILocation(line: 158, column: 23, scope: !1235)
!1246 = !DILocation(line: 158, column: 30, scope: !1235)
!1247 = !DILocation(line: 158, column: 39, scope: !1235)
!1248 = !DILocation(line: 158, column: 47, scope: !1235)
!1249 = !DILocation(line: 158, column: 3, scope: !1235)
!1250 = !DILocation(line: 159, column: 2, scope: !1235)
!1251 = !DILocation(line: 164, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 164, column: 7)
!1253 = distinct !DILexicalBlock(scope: !1223, file: !1, line: 159, column: 9)
!1254 = !DILocation(line: 164, column: 20, scope: !1252)
!1255 = !DILocation(line: 164, column: 27, scope: !1252)
!1256 = !DILocation(line: 164, column: 35, scope: !1252)
!1257 = !DILocation(line: 165, column: 10, scope: !1252)
!1258 = !DILocation(line: 165, column: 23, scope: !1252)
!1259 = !DILocation(line: 165, column: 30, scope: !1252)
!1260 = !DILocation(line: 165, column: 36, scope: !1252)
!1261 = !DILocation(line: 164, column: 7, scope: !1253)
!1262 = !DILocation(line: 169, column: 4, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1252, file: !1, line: 165, column: 63)
!1264 = !DILocation(line: 170, column: 3, scope: !1263)
!1265 = !DILocation(line: 173, column: 7, scope: !1253)
!1266 = !DILocation(line: 172, column: 3, scope: !1253)
!1267 = !DILocation(line: 172, column: 16, scope: !1253)
!1268 = !DILocation(line: 172, column: 23, scope: !1253)
!1269 = !DILocation(line: 172, column: 31, scope: !1253)
!1270 = !DILocation(line: 175, column: 8, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 175, column: 7)
!1272 = !DILocation(line: 175, column: 21, scope: !1271)
!1273 = !DILocation(line: 175, column: 28, scope: !1271)
!1274 = !DILocation(line: 175, column: 7, scope: !1253)
!1275 = !DILocation(line: 176, column: 4, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 175, column: 37)
!1277 = !DILocation(line: 179, column: 3, scope: !1253)
!1278 = !DILocation(line: 179, column: 16, scope: !1253)
!1279 = !DILocation(line: 179, column: 23, scope: !1253)
!1280 = !DILocation(line: 179, column: 29, scope: !1253)
!1281 = !DILocation(line: 180, column: 10, scope: !1253)
!1282 = !DILocation(line: 180, column: 23, scope: !1253)
!1283 = !DILocation(line: 180, column: 30, scope: !1253)
!1284 = !DILocation(line: 180, column: 39, scope: !1253)
!1285 = !DILocation(line: 180, column: 47, scope: !1253)
!1286 = !DILocation(line: 180, column: 3, scope: !1253)
!1287 = !DILocation(line: 185, column: 31, scope: !1200)
!1288 = !DILocation(line: 185, column: 2, scope: !1200)
!1289 = !DILocation(line: 185, column: 15, scope: !1200)
!1290 = !DILocation(line: 185, column: 22, scope: !1200)
!1291 = !DILocation(line: 185, column: 29, scope: !1200)
!1292 = !DILocation(line: 186, column: 2, scope: !1200)
!1293 = !DILocation(line: 187, column: 1, scope: !1200)
!1294 = distinct !DISubprogram(name: "acpi_os_free", scope: !896, file: !896, line: 60, type: !1295, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !22}
!1297 = !DILocalVariable(name: "memory", arg: 1, scope: !1294, file: !896, line: 60, type: !22)
!1298 = !DILocation(line: 60, column: 39, scope: !1294)
!1299 = !DILocation(line: 62, column: 8, scope: !1294)
!1300 = !DILocation(line: 62, column: 2, scope: !1294)
!1301 = !DILocation(line: 63, column: 1, scope: !1294)
!1302 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !896, file: !896, line: 55, type: !897, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!1303 = !DILocation(line: 162, column: 67, scope: !962, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 57, column: 23, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !896, line: 57, column: 23)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !896, line: 57, column: 23)
!1307 = !DILocalVariable(name: "size", arg: 1, scope: !1302, file: !896, line: 55, type: !23)
!1308 = !DILocation(line: 55, column: 55, scope: !1302)
!1309 = !DILocation(line: 57, column: 17, scope: !1302)
!1310 = !DILocalVariable(name: "_flags", scope: !1306, file: !896, line: 57, type: !29)
!1311 = !DILocation(line: 57, column: 23, scope: !1306)
!1312 = !DILocalVariable(name: "__dummy", scope: !1313, file: !896, line: 57, type: !29)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !896, line: 57, column: 23)
!1314 = distinct !DILexicalBlock(scope: !1306, file: !896, line: 57, column: 23)
!1315 = !DILocation(line: 57, column: 23, scope: !1313)
!1316 = !DILocalVariable(name: "__dummy2", scope: !1313, file: !896, line: 57, type: !29)
!1317 = !DILocation(line: 57, column: 23, scope: !1314)
!1318 = !DILocalVariable(name: "__dummy", scope: !1319, file: !896, line: 57, type: !29)
!1319 = distinct !DILexicalBlock(scope: !1305, file: !896, line: 57, column: 23)
!1320 = !DILocation(line: 57, column: 23, scope: !1319)
!1321 = !DILocalVariable(name: "__dummy2", scope: !1319, file: !896, line: 57, type: !29)
!1322 = !DILocation(line: 57, column: 23, scope: !1305)
!1323 = !DILocation(line: 164, column: 11, scope: !962, inlinedAt: !1304)
!1324 = !DILocation(line: 164, column: 17, scope: !962, inlinedAt: !1304)
!1325 = !DILocation(line: 164, column: 9, scope: !962, inlinedAt: !1304)
!1326 = !DILocation(line: 57, column: 23, scope: !1302)
!1327 = !DILocation(line: 57, column: 9, scope: !1302)
!1328 = !DILocation(line: 57, column: 2, scope: !1302)
!1329 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1330, file: !1330, line: 646, type: !1331, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!1330 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!29}
!1333 = !DILocalVariable(name: "__ret", scope: !1334, file: !1330, line: 648, type: !29)
!1334 = distinct !DILexicalBlock(scope: !1329, file: !1330, line: 648, column: 9)
!1335 = !DILocation(line: 648, column: 9, scope: !1334)
!1336 = !DILocalVariable(name: "__edi", scope: !1334, file: !1330, line: 648, type: !29)
!1337 = !DILocalVariable(name: "__esi", scope: !1334, file: !1330, line: 648, type: !29)
!1338 = !DILocalVariable(name: "__edx", scope: !1334, file: !1330, line: 648, type: !29)
!1339 = !DILocalVariable(name: "__ecx", scope: !1334, file: !1330, line: 648, type: !29)
!1340 = !DILocalVariable(name: "__eax", scope: !1334, file: !1330, line: 648, type: !29)
!1341 = !DILocation(line: 648, column: 9, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !1330, line: 648, column: 9)
!1343 = distinct !DILexicalBlock(scope: !1334, file: !1330, line: 648, column: 9)
!1344 = !{i32 -2145788314, i32 -2145785999, i32 -2145785765, i32 -2145785714, i32 -2145785686, i32 -2145785661, i32 -2145785977, i32 -2145785964, i32 -2145785526, i32 -2145785407, i32 -2145785872, i32 -2145785845, i32 -2145785817, i32 -2145785787}
!1345 = !DILocalVariable(name: "__mask", scope: !1346, file: !1330, line: 648, type: !29)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !1330, line: 648, column: 9)
!1347 = !DILocation(line: 648, column: 9, scope: !1346)
!1348 = !DILocation(line: 648, column: 9, scope: !1343)
!1349 = !DILocation(line: 648, column: 2, scope: !1329)
!1350 = distinct !DISubprogram(name: "get_order", scope: !1351, file: !1351, line: 29, type: !964, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!1351 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1352 = !DILocalVariable(name: "x", arg: 1, scope: !1353, file: !1354, line: 366, type: !25)
!1353 = distinct !DISubprogram(name: "fls64", scope: !1354, file: !1354, line: 366, type: !1355, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!1354 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!966, !25}
!1357 = !DILocation(line: 366, column: 40, scope: !1353, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 46, column: 9, scope: !1350)
!1359 = !DILocalVariable(name: "bitpos", scope: !1353, file: !1354, line: 368, type: !966)
!1360 = !DILocation(line: 368, column: 6, scope: !1353, inlinedAt: !1358)
!1361 = !DILocalVariable(name: "size", arg: 1, scope: !1350, file: !1351, line: 29, type: !29)
!1362 = !DILocation(line: 29, column: 63, scope: !1350)
!1363 = !DILocation(line: 31, column: 27, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1350, file: !1351, line: 31, column: 6)
!1365 = !DILocation(line: 31, column: 6, scope: !1364)
!1366 = !DILocation(line: 31, column: 6, scope: !1350)
!1367 = !DILocation(line: 32, column: 8, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !1351, line: 32, column: 7)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !1351, line: 31, column: 34)
!1370 = !DILocation(line: 32, column: 7, scope: !1369)
!1371 = !DILocation(line: 33, column: 4, scope: !1368)
!1372 = !DILocation(line: 35, column: 7, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !1351, line: 35, column: 7)
!1374 = !DILocation(line: 35, column: 12, scope: !1373)
!1375 = !DILocation(line: 35, column: 7, scope: !1369)
!1376 = !DILocation(line: 36, column: 4, scope: !1373)
!1377 = !DILocation(line: 38, column: 10, scope: !1369)
!1378 = !DILocation(line: 38, column: 28, scope: !1369)
!1379 = !DILocation(line: 38, column: 41, scope: !1369)
!1380 = !DILocation(line: 38, column: 3, scope: !1369)
!1381 = !DILocation(line: 41, column: 6, scope: !1350)
!1382 = !DILocation(line: 42, column: 7, scope: !1350)
!1383 = !DILocation(line: 46, column: 15, scope: !1350)
!1384 = !DILocation(line: 374, column: 2, scope: !1353, inlinedAt: !1358)
!1385 = !DILocation(line: 376, column: 14, scope: !1353, inlinedAt: !1358)
!1386 = !{i32 656494}
!1387 = !DILocation(line: 377, column: 9, scope: !1353, inlinedAt: !1358)
!1388 = !DILocation(line: 377, column: 16, scope: !1353, inlinedAt: !1358)
!1389 = !DILocation(line: 46, column: 2, scope: !1350)
!1390 = !DILocation(line: 48, column: 1, scope: !1350)
!1391 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1392, file: !1392, line: 30, type: !1393, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!1392 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!966, !24}
!1395 = !DILocation(line: 366, column: 40, scope: !1353, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 32, column: 9, scope: !1391)
!1397 = !DILocation(line: 368, column: 6, scope: !1353, inlinedAt: !1396)
!1398 = !DILocalVariable(name: "n", arg: 1, scope: !1391, file: !1392, line: 30, type: !24)
!1399 = !DILocation(line: 30, column: 21, scope: !1391)
!1400 = !DILocation(line: 32, column: 15, scope: !1391)
!1401 = !DILocation(line: 374, column: 2, scope: !1353, inlinedAt: !1396)
!1402 = !DILocation(line: 376, column: 14, scope: !1353, inlinedAt: !1396)
!1403 = !DILocation(line: 377, column: 9, scope: !1353, inlinedAt: !1396)
!1404 = !DILocation(line: 377, column: 16, scope: !1353, inlinedAt: !1396)
!1405 = !DILocation(line: 32, column: 18, scope: !1391)
!1406 = !DILocation(line: 32, column: 2, scope: !1391)
!1407 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1408, file: !1408, line: 137, type: !1409, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!1408 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!22, !903, !1411, !906, !27}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1413 = !DILocalVariable(name: "s", arg: 1, scope: !1407, file: !1408, line: 137, type: !903)
!1414 = !DILocation(line: 137, column: 54, scope: !1407)
!1415 = !DILocalVariable(name: "object", arg: 2, scope: !1407, file: !1408, line: 137, type: !1411)
!1416 = !DILocation(line: 137, column: 69, scope: !1407)
!1417 = !DILocalVariable(name: "size", arg: 3, scope: !1407, file: !1408, line: 138, type: !906)
!1418 = !DILocation(line: 138, column: 12, scope: !1407)
!1419 = !DILocalVariable(name: "flags", arg: 4, scope: !1407, file: !1408, line: 138, type: !27)
!1420 = !DILocation(line: 138, column: 24, scope: !1407)
!1421 = !DILocation(line: 140, column: 17, scope: !1407)
!1422 = !DILocation(line: 140, column: 2, scope: !1407)
!1423 = distinct !DISubprogram(name: "kzalloc", scope: !4, file: !4, line: 662, type: !915, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !799)
!1424 = !DILocation(line: 445, column: 72, scope: !900, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 552, column: 10, scope: !912, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 664, column: 9, scope: !1423)
!1427 = !DILocation(line: 446, column: 9, scope: !900, inlinedAt: !1425)
!1428 = !DILocation(line: 446, column: 23, scope: !900, inlinedAt: !1425)
!1429 = !DILocation(line: 448, column: 8, scope: !900, inlinedAt: !1425)
!1430 = !DILocation(line: 318, column: 67, scope: !925, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 553, column: 20, scope: !912, inlinedAt: !1426)
!1432 = !DILocation(line: 346, column: 58, scope: !931, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 547, column: 11, scope: !912, inlinedAt: !1426)
!1434 = !DILocation(line: 472, column: 28, scope: !937, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 481, column: 9, scope: !942, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 545, column: 11, scope: !944, inlinedAt: !1426)
!1437 = !DILocation(line: 472, column: 40, scope: !937, inlinedAt: !1435)
!1438 = !DILocation(line: 472, column: 60, scope: !937, inlinedAt: !1435)
!1439 = !DILocation(line: 478, column: 51, scope: !942, inlinedAt: !1436)
!1440 = !DILocation(line: 478, column: 63, scope: !942, inlinedAt: !1436)
!1441 = !DILocation(line: 480, column: 15, scope: !942, inlinedAt: !1436)
!1442 = !DILocation(line: 538, column: 45, scope: !914, inlinedAt: !1426)
!1443 = !DILocation(line: 538, column: 57, scope: !914, inlinedAt: !1426)
!1444 = !DILocation(line: 542, column: 16, scope: !912, inlinedAt: !1426)
!1445 = !DILocalVariable(name: "size", arg: 1, scope: !1423, file: !4, line: 662, type: !906)
!1446 = !DILocation(line: 662, column: 36, scope: !1423)
!1447 = !DILocalVariable(name: "flags", arg: 2, scope: !1423, file: !4, line: 662, type: !27)
!1448 = !DILocation(line: 662, column: 48, scope: !1423)
!1449 = !DILocation(line: 664, column: 17, scope: !1423)
!1450 = !DILocation(line: 664, column: 23, scope: !1423)
!1451 = !DILocation(line: 664, column: 29, scope: !1423)
!1452 = !DILocation(line: 540, column: 27, scope: !913, inlinedAt: !1426)
!1453 = !DILocation(line: 540, column: 6, scope: !913, inlinedAt: !1426)
!1454 = !DILocation(line: 540, column: 6, scope: !914, inlinedAt: !1426)
!1455 = !DILocation(line: 544, column: 7, scope: !944, inlinedAt: !1426)
!1456 = !DILocation(line: 544, column: 12, scope: !944, inlinedAt: !1426)
!1457 = !DILocation(line: 544, column: 7, scope: !912, inlinedAt: !1426)
!1458 = !DILocation(line: 545, column: 25, scope: !944, inlinedAt: !1426)
!1459 = !DILocation(line: 545, column: 31, scope: !944, inlinedAt: !1426)
!1460 = !DILocation(line: 480, column: 33, scope: !942, inlinedAt: !1436)
!1461 = !DILocation(line: 480, column: 23, scope: !942, inlinedAt: !1436)
!1462 = !DILocation(line: 481, column: 29, scope: !942, inlinedAt: !1436)
!1463 = !DILocation(line: 481, column: 35, scope: !942, inlinedAt: !1436)
!1464 = !DILocation(line: 481, column: 42, scope: !942, inlinedAt: !1436)
!1465 = !DILocation(line: 474, column: 23, scope: !937, inlinedAt: !1435)
!1466 = !DILocation(line: 474, column: 29, scope: !937, inlinedAt: !1435)
!1467 = !DILocation(line: 474, column: 36, scope: !937, inlinedAt: !1435)
!1468 = !DILocation(line: 474, column: 9, scope: !937, inlinedAt: !1435)
!1469 = !DILocation(line: 545, column: 4, scope: !944, inlinedAt: !1426)
!1470 = !DILocation(line: 547, column: 25, scope: !912, inlinedAt: !1426)
!1471 = !DILocation(line: 348, column: 7, scope: !1011, inlinedAt: !1433)
!1472 = !DILocation(line: 348, column: 6, scope: !931, inlinedAt: !1433)
!1473 = !DILocation(line: 349, column: 3, scope: !1011, inlinedAt: !1433)
!1474 = !DILocation(line: 351, column: 6, scope: !1015, inlinedAt: !1433)
!1475 = !DILocation(line: 351, column: 11, scope: !1015, inlinedAt: !1433)
!1476 = !DILocation(line: 351, column: 6, scope: !931, inlinedAt: !1433)
!1477 = !DILocation(line: 352, column: 3, scope: !1015, inlinedAt: !1433)
!1478 = !DILocation(line: 354, column: 32, scope: !1020, inlinedAt: !1433)
!1479 = !DILocation(line: 354, column: 37, scope: !1020, inlinedAt: !1433)
!1480 = !DILocation(line: 354, column: 42, scope: !1020, inlinedAt: !1433)
!1481 = !DILocation(line: 354, column: 45, scope: !1020, inlinedAt: !1433)
!1482 = !DILocation(line: 354, column: 50, scope: !1020, inlinedAt: !1433)
!1483 = !DILocation(line: 354, column: 6, scope: !931, inlinedAt: !1433)
!1484 = !DILocation(line: 355, column: 3, scope: !1020, inlinedAt: !1433)
!1485 = !DILocation(line: 356, column: 32, scope: !1028, inlinedAt: !1433)
!1486 = !DILocation(line: 356, column: 37, scope: !1028, inlinedAt: !1433)
!1487 = !DILocation(line: 356, column: 43, scope: !1028, inlinedAt: !1433)
!1488 = !DILocation(line: 356, column: 46, scope: !1028, inlinedAt: !1433)
!1489 = !DILocation(line: 356, column: 51, scope: !1028, inlinedAt: !1433)
!1490 = !DILocation(line: 356, column: 6, scope: !931, inlinedAt: !1433)
!1491 = !DILocation(line: 357, column: 3, scope: !1028, inlinedAt: !1433)
!1492 = !DILocation(line: 358, column: 6, scope: !1036, inlinedAt: !1433)
!1493 = !DILocation(line: 358, column: 11, scope: !1036, inlinedAt: !1433)
!1494 = !DILocation(line: 358, column: 6, scope: !931, inlinedAt: !1433)
!1495 = !DILocation(line: 358, column: 26, scope: !1036, inlinedAt: !1433)
!1496 = !DILocation(line: 359, column: 6, scope: !1041, inlinedAt: !1433)
!1497 = !DILocation(line: 359, column: 11, scope: !1041, inlinedAt: !1433)
!1498 = !DILocation(line: 359, column: 6, scope: !931, inlinedAt: !1433)
!1499 = !DILocation(line: 359, column: 26, scope: !1041, inlinedAt: !1433)
!1500 = !DILocation(line: 360, column: 6, scope: !1046, inlinedAt: !1433)
!1501 = !DILocation(line: 360, column: 11, scope: !1046, inlinedAt: !1433)
!1502 = !DILocation(line: 360, column: 6, scope: !931, inlinedAt: !1433)
!1503 = !DILocation(line: 360, column: 26, scope: !1046, inlinedAt: !1433)
!1504 = !DILocation(line: 361, column: 6, scope: !1051, inlinedAt: !1433)
!1505 = !DILocation(line: 361, column: 11, scope: !1051, inlinedAt: !1433)
!1506 = !DILocation(line: 361, column: 6, scope: !931, inlinedAt: !1433)
!1507 = !DILocation(line: 361, column: 26, scope: !1051, inlinedAt: !1433)
!1508 = !DILocation(line: 362, column: 6, scope: !1056, inlinedAt: !1433)
!1509 = !DILocation(line: 362, column: 11, scope: !1056, inlinedAt: !1433)
!1510 = !DILocation(line: 362, column: 6, scope: !931, inlinedAt: !1433)
!1511 = !DILocation(line: 362, column: 26, scope: !1056, inlinedAt: !1433)
!1512 = !DILocation(line: 363, column: 6, scope: !1061, inlinedAt: !1433)
!1513 = !DILocation(line: 363, column: 11, scope: !1061, inlinedAt: !1433)
!1514 = !DILocation(line: 363, column: 6, scope: !931, inlinedAt: !1433)
!1515 = !DILocation(line: 363, column: 26, scope: !1061, inlinedAt: !1433)
!1516 = !DILocation(line: 364, column: 6, scope: !1066, inlinedAt: !1433)
!1517 = !DILocation(line: 364, column: 11, scope: !1066, inlinedAt: !1433)
!1518 = !DILocation(line: 364, column: 6, scope: !931, inlinedAt: !1433)
!1519 = !DILocation(line: 364, column: 26, scope: !1066, inlinedAt: !1433)
!1520 = !DILocation(line: 365, column: 6, scope: !1071, inlinedAt: !1433)
!1521 = !DILocation(line: 365, column: 11, scope: !1071, inlinedAt: !1433)
!1522 = !DILocation(line: 365, column: 6, scope: !931, inlinedAt: !1433)
!1523 = !DILocation(line: 365, column: 26, scope: !1071, inlinedAt: !1433)
!1524 = !DILocation(line: 366, column: 6, scope: !1076, inlinedAt: !1433)
!1525 = !DILocation(line: 366, column: 11, scope: !1076, inlinedAt: !1433)
!1526 = !DILocation(line: 366, column: 6, scope: !931, inlinedAt: !1433)
!1527 = !DILocation(line: 366, column: 26, scope: !1076, inlinedAt: !1433)
!1528 = !DILocation(line: 367, column: 6, scope: !1081, inlinedAt: !1433)
!1529 = !DILocation(line: 367, column: 11, scope: !1081, inlinedAt: !1433)
!1530 = !DILocation(line: 367, column: 6, scope: !931, inlinedAt: !1433)
!1531 = !DILocation(line: 367, column: 26, scope: !1081, inlinedAt: !1433)
!1532 = !DILocation(line: 368, column: 6, scope: !1086, inlinedAt: !1433)
!1533 = !DILocation(line: 368, column: 11, scope: !1086, inlinedAt: !1433)
!1534 = !DILocation(line: 368, column: 6, scope: !931, inlinedAt: !1433)
!1535 = !DILocation(line: 368, column: 26, scope: !1086, inlinedAt: !1433)
!1536 = !DILocation(line: 369, column: 6, scope: !1091, inlinedAt: !1433)
!1537 = !DILocation(line: 369, column: 11, scope: !1091, inlinedAt: !1433)
!1538 = !DILocation(line: 369, column: 6, scope: !931, inlinedAt: !1433)
!1539 = !DILocation(line: 369, column: 26, scope: !1091, inlinedAt: !1433)
!1540 = !DILocation(line: 370, column: 6, scope: !1096, inlinedAt: !1433)
!1541 = !DILocation(line: 370, column: 11, scope: !1096, inlinedAt: !1433)
!1542 = !DILocation(line: 370, column: 6, scope: !931, inlinedAt: !1433)
!1543 = !DILocation(line: 370, column: 26, scope: !1096, inlinedAt: !1433)
!1544 = !DILocation(line: 371, column: 6, scope: !1101, inlinedAt: !1433)
!1545 = !DILocation(line: 371, column: 11, scope: !1101, inlinedAt: !1433)
!1546 = !DILocation(line: 371, column: 6, scope: !931, inlinedAt: !1433)
!1547 = !DILocation(line: 371, column: 26, scope: !1101, inlinedAt: !1433)
!1548 = !DILocation(line: 372, column: 6, scope: !1106, inlinedAt: !1433)
!1549 = !DILocation(line: 372, column: 11, scope: !1106, inlinedAt: !1433)
!1550 = !DILocation(line: 372, column: 6, scope: !931, inlinedAt: !1433)
!1551 = !DILocation(line: 372, column: 26, scope: !1106, inlinedAt: !1433)
!1552 = !DILocation(line: 373, column: 6, scope: !1111, inlinedAt: !1433)
!1553 = !DILocation(line: 373, column: 11, scope: !1111, inlinedAt: !1433)
!1554 = !DILocation(line: 373, column: 6, scope: !931, inlinedAt: !1433)
!1555 = !DILocation(line: 373, column: 26, scope: !1111, inlinedAt: !1433)
!1556 = !DILocation(line: 374, column: 6, scope: !1116, inlinedAt: !1433)
!1557 = !DILocation(line: 374, column: 11, scope: !1116, inlinedAt: !1433)
!1558 = !DILocation(line: 374, column: 6, scope: !931, inlinedAt: !1433)
!1559 = !DILocation(line: 374, column: 26, scope: !1116, inlinedAt: !1433)
!1560 = !DILocation(line: 375, column: 6, scope: !1121, inlinedAt: !1433)
!1561 = !DILocation(line: 375, column: 11, scope: !1121, inlinedAt: !1433)
!1562 = !DILocation(line: 375, column: 6, scope: !931, inlinedAt: !1433)
!1563 = !DILocation(line: 375, column: 27, scope: !1121, inlinedAt: !1433)
!1564 = !DILocation(line: 376, column: 6, scope: !1126, inlinedAt: !1433)
!1565 = !DILocation(line: 376, column: 11, scope: !1126, inlinedAt: !1433)
!1566 = !DILocation(line: 376, column: 6, scope: !931, inlinedAt: !1433)
!1567 = !DILocation(line: 376, column: 32, scope: !1126, inlinedAt: !1433)
!1568 = !DILocation(line: 377, column: 6, scope: !1131, inlinedAt: !1433)
!1569 = !DILocation(line: 377, column: 11, scope: !1131, inlinedAt: !1433)
!1570 = !DILocation(line: 377, column: 6, scope: !931, inlinedAt: !1433)
!1571 = !DILocation(line: 377, column: 32, scope: !1131, inlinedAt: !1433)
!1572 = !DILocation(line: 378, column: 6, scope: !1136, inlinedAt: !1433)
!1573 = !DILocation(line: 378, column: 11, scope: !1136, inlinedAt: !1433)
!1574 = !DILocation(line: 378, column: 6, scope: !931, inlinedAt: !1433)
!1575 = !DILocation(line: 378, column: 32, scope: !1136, inlinedAt: !1433)
!1576 = !DILocation(line: 379, column: 6, scope: !1141, inlinedAt: !1433)
!1577 = !DILocation(line: 379, column: 11, scope: !1141, inlinedAt: !1433)
!1578 = !DILocation(line: 379, column: 6, scope: !931, inlinedAt: !1433)
!1579 = !DILocation(line: 379, column: 33, scope: !1141, inlinedAt: !1433)
!1580 = !DILocation(line: 380, column: 6, scope: !1146, inlinedAt: !1433)
!1581 = !DILocation(line: 380, column: 11, scope: !1146, inlinedAt: !1433)
!1582 = !DILocation(line: 380, column: 6, scope: !931, inlinedAt: !1433)
!1583 = !DILocation(line: 380, column: 33, scope: !1146, inlinedAt: !1433)
!1584 = !DILocation(line: 381, column: 6, scope: !1151, inlinedAt: !1433)
!1585 = !DILocation(line: 381, column: 11, scope: !1151, inlinedAt: !1433)
!1586 = !DILocation(line: 381, column: 6, scope: !931, inlinedAt: !1433)
!1587 = !DILocation(line: 381, column: 33, scope: !1151, inlinedAt: !1433)
!1588 = !DILocation(line: 382, column: 2, scope: !1156, inlinedAt: !1433)
!1589 = !DILocation(line: 382, column: 2, scope: !1160, inlinedAt: !1433)
!1590 = !DILocation(line: 382, column: 2, scope: !1161, inlinedAt: !1433)
!1591 = !DILocation(line: 386, column: 1, scope: !931, inlinedAt: !1433)
!1592 = !DILocation(line: 547, column: 9, scope: !912, inlinedAt: !1426)
!1593 = !DILocation(line: 549, column: 8, scope: !1167, inlinedAt: !1426)
!1594 = !DILocation(line: 549, column: 7, scope: !912, inlinedAt: !1426)
!1595 = !DILocation(line: 550, column: 4, scope: !1167, inlinedAt: !1426)
!1596 = !DILocation(line: 553, column: 33, scope: !912, inlinedAt: !1426)
!1597 = !DILocation(line: 325, column: 6, scope: !1172, inlinedAt: !1431)
!1598 = !DILocation(line: 325, column: 6, scope: !925, inlinedAt: !1431)
!1599 = !DILocation(line: 326, column: 3, scope: !1172, inlinedAt: !1431)
!1600 = !DILocation(line: 332, column: 9, scope: !925, inlinedAt: !1431)
!1601 = !DILocation(line: 332, column: 15, scope: !925, inlinedAt: !1431)
!1602 = !DILocation(line: 332, column: 2, scope: !925, inlinedAt: !1431)
!1603 = !DILocation(line: 336, column: 1, scope: !925, inlinedAt: !1431)
!1604 = !DILocation(line: 553, column: 5, scope: !912, inlinedAt: !1426)
!1605 = !DILocation(line: 553, column: 41, scope: !912, inlinedAt: !1426)
!1606 = !DILocation(line: 554, column: 5, scope: !912, inlinedAt: !1426)
!1607 = !DILocation(line: 554, column: 12, scope: !912, inlinedAt: !1426)
!1608 = !DILocation(line: 448, column: 31, scope: !900, inlinedAt: !1425)
!1609 = !DILocation(line: 448, column: 34, scope: !900, inlinedAt: !1425)
!1610 = !DILocation(line: 448, column: 14, scope: !900, inlinedAt: !1425)
!1611 = !DILocation(line: 450, column: 22, scope: !900, inlinedAt: !1425)
!1612 = !DILocation(line: 450, column: 25, scope: !900, inlinedAt: !1425)
!1613 = !DILocation(line: 450, column: 30, scope: !900, inlinedAt: !1425)
!1614 = !DILocation(line: 450, column: 36, scope: !900, inlinedAt: !1425)
!1615 = !DILocation(line: 450, column: 8, scope: !900, inlinedAt: !1425)
!1616 = !DILocation(line: 450, column: 6, scope: !900, inlinedAt: !1425)
!1617 = !DILocation(line: 451, column: 9, scope: !900, inlinedAt: !1425)
!1618 = !DILocation(line: 552, column: 3, scope: !912, inlinedAt: !1426)
!1619 = !DILocation(line: 557, column: 19, scope: !914, inlinedAt: !1426)
!1620 = !DILocation(line: 557, column: 25, scope: !914, inlinedAt: !1426)
!1621 = !DILocation(line: 557, column: 9, scope: !914, inlinedAt: !1426)
!1622 = !DILocation(line: 557, column: 2, scope: !914, inlinedAt: !1426)
!1623 = !DILocation(line: 558, column: 1, scope: !914, inlinedAt: !1426)
!1624 = !DILocation(line: 664, column: 2, scope: !1423)
