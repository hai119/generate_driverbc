; ModuleID = '../bcout/drivers/acpi/acpica/evrgnini.llvm.bc'
source_filename = "drivers/acpi/acpica/evrgnini.c"
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
%struct.acpi_mem_space_context = type { i32, i64, %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping* }
%struct.acpi_mem_mapping = type { i64, i8*, i64, %struct.acpi_mem_mapping* }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_pci_id = type { i16, i16, i16, i16 }
%struct.acpi_object_addr_handler = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i32 (i32, i64, i32, i64*, i8*, i8*)*, %struct.acpi_namespace_node*, i8*, i32 (i8*, i32, i8*, i8**)*, %union.acpi_operand_object*, %union.acpi_operand_object* }
%struct.acpi_pnp_device_id = type { i32, i8* }
%struct.acpi_pnp_device_id_list = type { i32, i32, [0 x %struct.acpi_pnp_device_id] }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_notify_common = type { %union.acpi_operand_object*, i8, i8, i16, i8, [2 x %union.acpi_operand_object*], %union.acpi_operand_object* }

@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@_acpi_module_name = internal constant [9 x i8] c"evrgnini\00", align 1, !dbg !0
@.str = private unnamed_addr constant [58 x i8] c"Could not install PciConfig handler for Root Bridge %4.4s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_ADR\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_SEG\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_BBN\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_system_memory_region_setup(i8* %handle, i32 %function, i8* %handler_context, i8** %region_context) #0 !dbg !816 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %function.addr = alloca i32, align 4
  %handler_context.addr = alloca i8*, align 8
  %region_context.addr = alloca i8**, align 8
  %region_desc = alloca %union.acpi_operand_object*, align 8
  %local_region_context = alloca %struct.acpi_mem_space_context*, align 8
  %mm = alloca %struct.acpi_mem_mapping*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !818, metadata !DIExpression()), !dbg !819
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !820, metadata !DIExpression()), !dbg !821
  store i8* %handler_context, i8** %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handler_context.addr, metadata !822, metadata !DIExpression()), !dbg !823
  store i8** %region_context, i8*** %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %region_context.addr, metadata !824, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %region_desc, metadata !826, metadata !DIExpression()), !dbg !827
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !828
  %1 = bitcast i8* %0 to %union.acpi_operand_object*, !dbg !829
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %region_desc, align 8, !dbg !827
  call void @llvm.dbg.declare(metadata %struct.acpi_mem_space_context** %local_region_context, metadata !830, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata %struct.acpi_mem_mapping** %mm, metadata !832, metadata !DIExpression()), !dbg !833
  %2 = load i32, i32* %function.addr, align 4, !dbg !834
  %cmp = icmp eq i32 %2, 1, !dbg !836
  br i1 %cmp, label %if.then, label %if.end5, !dbg !837

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %region_context.addr, align 8, !dbg !838
  %4 = load i8*, i8** %3, align 8, !dbg !841
  %tobool = icmp ne i8* %4, null, !dbg !841
  br i1 %tobool, label %if.then1, label %if.end, !dbg !842

if.then1:                                         ; preds = %if.then
  %5 = load i8**, i8*** %region_context.addr, align 8, !dbg !843
  %6 = load i8*, i8** %5, align 8, !dbg !845
  %7 = bitcast i8* %6 to %struct.acpi_mem_space_context*, !dbg !846
  store %struct.acpi_mem_space_context* %7, %struct.acpi_mem_space_context** %local_region_context, align 8, !dbg !847
  br label %while.cond, !dbg !848

while.cond:                                       ; preds = %while.body, %if.then1
  %8 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %local_region_context, align 8, !dbg !849
  %first_mm = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %8, i32 0, i32 3, !dbg !850
  %9 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %first_mm, align 8, !dbg !850
  %tobool2 = icmp ne %struct.acpi_mem_mapping* %9, null, !dbg !848
  br i1 %tobool2, label %while.body, label %while.end, !dbg !848

while.body:                                       ; preds = %while.cond
  %10 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %local_region_context, align 8, !dbg !851
  %first_mm3 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %10, i32 0, i32 3, !dbg !853
  %11 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %first_mm3, align 8, !dbg !853
  store %struct.acpi_mem_mapping* %11, %struct.acpi_mem_mapping** %mm, align 8, !dbg !854
  %12 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !855
  %next_mm = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %12, i32 0, i32 3, !dbg !856
  %13 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %next_mm, align 8, !dbg !856
  %14 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %local_region_context, align 8, !dbg !857
  %first_mm4 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %14, i32 0, i32 3, !dbg !858
  store %struct.acpi_mem_mapping* %13, %struct.acpi_mem_mapping** %first_mm4, align 8, !dbg !859
  %15 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !860
  %logical_address = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %15, i32 0, i32 1, !dbg !861
  %16 = load i8*, i8** %logical_address, align 8, !dbg !861
  %17 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !862
  %length = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %17, i32 0, i32 2, !dbg !863
  %18 = load i64, i64* %length, align 8, !dbg !863
  call void @acpi_os_unmap_memory(i8* %16, i64 %18) #8, !dbg !864
  %19 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !865
  %20 = bitcast %struct.acpi_mem_mapping* %19 to i8*, !dbg !865
  call void @acpi_os_free(i8* %20) #8, !dbg !865
  br label %while.cond, !dbg !848, !llvm.loop !866

while.end:                                        ; preds = %while.cond
  %21 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %local_region_context, align 8, !dbg !868
  %22 = bitcast %struct.acpi_mem_space_context* %21 to i8*, !dbg !868
  call void @acpi_os_free(i8* %22) #8, !dbg !868
  %23 = load i8**, i8*** %region_context.addr, align 8, !dbg !869
  store i8* null, i8** %23, align 8, !dbg !870
  br label %if.end, !dbg !871

if.end:                                           ; preds = %while.end, %if.then
  store i32 0, i32* %retval, align 4, !dbg !872
  br label %return, !dbg !872

if.end5:                                          ; preds = %entry
  %call = call i8* @acpi_os_allocate_zeroed(i64 32) #8, !dbg !873
  %24 = bitcast i8* %call to %struct.acpi_mem_space_context*, !dbg !873
  store %struct.acpi_mem_space_context* %24, %struct.acpi_mem_space_context** %local_region_context, align 8, !dbg !874
  %25 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %local_region_context, align 8, !dbg !875
  %tobool6 = icmp ne %struct.acpi_mem_space_context* %25, null, !dbg !877
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !878

if.then7:                                         ; preds = %if.end5
  store i32 4, i32* %retval, align 4, !dbg !879
  br label %return, !dbg !879

if.end8:                                          ; preds = %if.end5
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_desc, align 8, !dbg !881
  %region = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_region*, !dbg !882
  %length9 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 10, !dbg !883
  %27 = load i32, i32* %length9, align 8, !dbg !883
  %28 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %local_region_context, align 8, !dbg !884
  %length10 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %28, i32 0, i32 0, !dbg !885
  store i32 %27, i32* %length10, align 8, !dbg !886
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_desc, align 8, !dbg !887
  %region11 = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_region*, !dbg !888
  %address = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region11, i32 0, i32 9, !dbg !889
  %30 = load i64, i64* %address, align 8, !dbg !889
  %31 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %local_region_context, align 8, !dbg !890
  %address12 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %31, i32 0, i32 1, !dbg !891
  store i64 %30, i64* %address12, align 8, !dbg !892
  %32 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %local_region_context, align 8, !dbg !893
  %33 = bitcast %struct.acpi_mem_space_context* %32 to i8*, !dbg !893
  %34 = load i8**, i8*** %region_context.addr, align 8, !dbg !894
  store i8* %33, i8** %34, align 8, !dbg !895
  store i32 0, i32* %retval, align 4, !dbg !896
  br label %return, !dbg !896

return:                                           ; preds = %if.end8, %if.then7, %if.end
  %35 = load i32, i32* %retval, align 4, !dbg !897
  ret i32 %35, !dbg !897
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_os_unmap_memory(i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !898 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !902, metadata !DIExpression()), !dbg !903
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !904
  call void @kfree(i8* %0) #8, !dbg !905
  ret void, !dbg !906
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !907 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !910, metadata !DIExpression()), !dbg !916
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !920, metadata !DIExpression()), !dbg !921
  %0 = load i64, i64* %size.addr, align 8, !dbg !922
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !923, metadata !DIExpression()), !dbg !924
  br label %do.body, !dbg !924

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !925, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !929, metadata !DIExpression()), !dbg !928
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !928
  %conv = zext i1 %cmp to i32, !dbg !928
  store i32 1, i32* %tmp, align 4, !dbg !928
  %1 = load i32, i32* %tmp, align 4, !dbg !928
  %call = call i64 @arch_local_save_flags() #8, !dbg !930
  store i64 %call, i64* %_flags, align 8, !dbg !930
  br label %do.end, !dbg !930

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !931, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !934, metadata !DIExpression()), !dbg !933
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !933
  %conv6 = zext i1 %cmp5 to i32, !dbg !933
  store i32 1, i32* %tmp7, align 4, !dbg !933
  %2 = load i32, i32* %tmp7, align 4, !dbg !933
  %3 = load i64, i64* %_flags, align 8, !dbg !935
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !936
  %and.i = and i64 %4, 512, !dbg !937
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !938
  %lnot.i = xor i1 %tobool.i, true, !dbg !938
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !938
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !935
  %5 = load i32, i32* %tmp8, align 4, !dbg !935
  store i32 %5, i32* %tmp1, align 4, !dbg !930
  %6 = load i32, i32* %tmp1, align 4, !dbg !924
  %tobool = icmp ne i32 %6, 0, !dbg !939
  %7 = zext i1 %tobool to i64, !dbg !939
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !939
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !940
  ret i8* %call10, !dbg !941
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_io_space_region_setup(i8* %handle, i32 %function, i8* %handler_context, i8** %region_context) #0 !dbg !942 {
entry:
  %handle.addr = alloca i8*, align 8
  %function.addr = alloca i32, align 4
  %handler_context.addr = alloca i8*, align 8
  %region_context.addr = alloca i8**, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !943, metadata !DIExpression()), !dbg !944
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !945, metadata !DIExpression()), !dbg !946
  store i8* %handler_context, i8** %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handler_context.addr, metadata !947, metadata !DIExpression()), !dbg !948
  store i8** %region_context, i8*** %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %region_context.addr, metadata !949, metadata !DIExpression()), !dbg !950
  %0 = load i32, i32* %function.addr, align 4, !dbg !951
  %cmp = icmp eq i32 %0, 1, !dbg !953
  br i1 %cmp, label %if.then, label %if.else, !dbg !954

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %region_context.addr, align 8, !dbg !955
  store i8* null, i8** %1, align 8, !dbg !957
  br label %if.end, !dbg !958

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %handler_context.addr, align 8, !dbg !959
  %3 = load i8**, i8*** %region_context.addr, align 8, !dbg !961
  store i8* %2, i8** %3, align 8, !dbg !962
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !963
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_pci_config_region_setup(i8* %handle, i32 %function, i8* %handler_context, i8** %region_context) #0 !dbg !964 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %function.addr = alloca i32, align 4
  %handler_context.addr = alloca i8*, align 8
  %region_context.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %pci_value = alloca i64, align 8
  %pci_id = alloca %struct.acpi_pci_id*, align 8
  %handler_obj = alloca %union.acpi_operand_object*, align 8
  %parent_node = alloca %struct.acpi_namespace_node*, align 8
  %pci_root_node = alloca %struct.acpi_namespace_node*, align 8
  %pci_device_node = alloca %struct.acpi_namespace_node*, align 8
  %region_obj = alloca %union.acpi_operand_object*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !965, metadata !DIExpression()), !dbg !966
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !967, metadata !DIExpression()), !dbg !968
  store i8* %handler_context, i8** %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handler_context.addr, metadata !969, metadata !DIExpression()), !dbg !970
  store i8** %region_context, i8*** %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %region_context.addr, metadata !971, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.declare(metadata i32* %status, metadata !973, metadata !DIExpression()), !dbg !974
  store i32 0, i32* %status, align 4, !dbg !974
  call void @llvm.dbg.declare(metadata i64* %pci_value, metadata !975, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_id** %pci_id, metadata !977, metadata !DIExpression()), !dbg !985
  %0 = load i8**, i8*** %region_context.addr, align 8, !dbg !986
  %1 = load i8*, i8** %0, align 8, !dbg !987
  %2 = bitcast i8* %1 to %struct.acpi_pci_id*, !dbg !987
  store %struct.acpi_pci_id* %2, %struct.acpi_pci_id** %pci_id, align 8, !dbg !985
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_obj, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node, metadata !990, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %pci_root_node, metadata !992, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %pci_device_node, metadata !994, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %region_obj, metadata !996, metadata !DIExpression()), !dbg !997
  %3 = load i8*, i8** %handle.addr, align 8, !dbg !998
  %4 = bitcast i8* %3 to %union.acpi_operand_object*, !dbg !999
  store %union.acpi_operand_object* %4, %union.acpi_operand_object** %region_obj, align 8, !dbg !997
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj, align 8, !dbg !1000
  %region = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_region*, !dbg !1001
  %handler = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 7, !dbg !1002
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler, align 8, !dbg !1002
  store %union.acpi_operand_object* %6, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1003
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1004
  %tobool = icmp ne %union.acpi_operand_object* %7, null, !dbg !1004
  br i1 %tobool, label %if.end, label %if.then, !dbg !1006

if.then:                                          ; preds = %entry
  store i32 6, i32* %retval, align 4, !dbg !1007
  br label %return, !dbg !1007

if.end:                                           ; preds = %entry
  %8 = load i8**, i8*** %region_context.addr, align 8, !dbg !1009
  store i8* null, i8** %8, align 8, !dbg !1010
  %9 = load i32, i32* %function.addr, align 4, !dbg !1011
  %cmp = icmp eq i32 %9, 1, !dbg !1013
  br i1 %cmp, label %if.then1, label %if.end5, !dbg !1014

if.then1:                                         ; preds = %if.end
  %10 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id, align 8, !dbg !1015
  %tobool2 = icmp ne %struct.acpi_pci_id* %10, null, !dbg !1015
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1018

if.then3:                                         ; preds = %if.then1
  %11 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id, align 8, !dbg !1019
  %12 = bitcast %struct.acpi_pci_id* %11 to i8*, !dbg !1019
  call void @acpi_os_free(i8* %12) #8, !dbg !1019
  br label %if.end4, !dbg !1021

if.end4:                                          ; preds = %if.then3, %if.then1
  %13 = load i32, i32* %status, align 4, !dbg !1022
  store i32 %13, i32* %retval, align 4, !dbg !1022
  br label %return, !dbg !1022

if.end5:                                          ; preds = %if.end
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj, align 8, !dbg !1023
  %region6 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_region*, !dbg !1024
  %node = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region6, i32 0, i32 6, !dbg !1025
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1025
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %15, i32 0, i32 5, !dbg !1026
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !1026
  store %struct.acpi_namespace_node* %16, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1027
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1028
  %address_space = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_addr_handler*, !dbg !1030
  %node7 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space, i32 0, i32 8, !dbg !1031
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node7, align 8, !dbg !1031
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1032
  %cmp8 = icmp eq %struct.acpi_namespace_node* %18, %19, !dbg !1033
  br i1 %cmp8, label %if.then9, label %if.else23, !dbg !1034

if.then9:                                         ; preds = %if.end5
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1035
  store %struct.acpi_namespace_node* %20, %struct.acpi_namespace_node** %pci_root_node, align 8, !dbg !1037
  br label %while.cond, !dbg !1038

while.cond:                                       ; preds = %if.end21, %if.then9
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %pci_root_node, align 8, !dbg !1039
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1040
  %cmp10 = icmp ne %struct.acpi_namespace_node* %21, %22, !dbg !1041
  br i1 %cmp10, label %while.body, label %while.end, !dbg !1038

while.body:                                       ; preds = %while.cond
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %pci_root_node, align 8, !dbg !1042
  %call = call zeroext i8 @acpi_ev_is_pci_root_bridge(%struct.acpi_namespace_node* %23) #8, !dbg !1045
  %tobool11 = icmp ne i8 %call, 0, !dbg !1045
  br i1 %tobool11, label %if.then12, label %if.end21, !dbg !1046

if.then12:                                        ; preds = %while.body
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %pci_root_node, align 8, !dbg !1047
  %25 = bitcast %struct.acpi_namespace_node* %24 to i8*, !dbg !1049
  %call13 = call i32 @acpi_install_address_space_handler(i8* %25, i8 zeroext 2, i32 (i32, i64, i32, i64*, i8*, i8*)* null, i32 (i8*, i32, i8*, i8**)* null, i8* null) #8, !dbg !1050
  store i32 %call13, i32* %status, align 4, !dbg !1051
  %26 = load i32, i32* %status, align 4, !dbg !1052
  %tobool14 = icmp ne i32 %26, 0, !dbg !1052
  br i1 %tobool14, label %if.then15, label %if.end20, !dbg !1054

if.then15:                                        ; preds = %if.then12
  %27 = load i32, i32* %status, align 4, !dbg !1055
  %cmp16 = icmp eq i32 %27, 25, !dbg !1058
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !1059

if.then17:                                        ; preds = %if.then15
  br label %if.end19, !dbg !1060

if.else:                                          ; preds = %if.then15
  %28 = load i32, i32* %status, align 4, !dbg !1062
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %pci_root_node, align 8, !dbg !1062
  %30 = bitcast %struct.acpi_namespace_node* %29 to i8*, !dbg !1062
  %call18 = call i8* @acpi_ut_get_node_name(i8* %30) #8, !dbg !1062
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 204, i32 %28, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %call18) #8, !dbg !1062
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  br label %if.end20, !dbg !1064

if.end20:                                         ; preds = %if.end19, %if.then12
  br label %while.end, !dbg !1065

if.end21:                                         ; preds = %while.body
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %pci_root_node, align 8, !dbg !1066
  %parent22 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %31, i32 0, i32 5, !dbg !1067
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent22, align 8, !dbg !1067
  store %struct.acpi_namespace_node* %32, %struct.acpi_namespace_node** %pci_root_node, align 8, !dbg !1068
  br label %while.cond, !dbg !1038, !llvm.loop !1069

while.end:                                        ; preds = %if.end20, %while.cond
  br label %if.end26, !dbg !1071

if.else23:                                        ; preds = %if.end5
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1072
  %address_space24 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_addr_handler*, !dbg !1074
  %node25 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space24, i32 0, i32 8, !dbg !1075
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node25, align 8, !dbg !1075
  store %struct.acpi_namespace_node* %34, %struct.acpi_namespace_node** %pci_root_node, align 8, !dbg !1076
  br label %if.end26

if.end26:                                         ; preds = %if.else23, %while.end
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj, align 8, !dbg !1077
  %region27 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_region*, !dbg !1079
  %flags = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region27, i32 0, i32 4, !dbg !1080
  %36 = load i8, i8* %flags, align 4, !dbg !1080
  %conv = zext i8 %36 to i32, !dbg !1077
  %and = and i32 %conv, 32, !dbg !1081
  %tobool28 = icmp ne i32 %and, 0, !dbg !1081
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1082

if.then29:                                        ; preds = %if.end26
  store i32 0, i32* %retval, align 4, !dbg !1083
  br label %return, !dbg !1083

if.end30:                                         ; preds = %if.end26
  %call31 = call i8* @acpi_os_allocate_zeroed(i64 8) #8, !dbg !1085
  %37 = bitcast i8* %call31 to %struct.acpi_pci_id*, !dbg !1085
  store %struct.acpi_pci_id* %37, %struct.acpi_pci_id** %pci_id, align 8, !dbg !1086
  %38 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id, align 8, !dbg !1087
  %tobool32 = icmp ne %struct.acpi_pci_id* %38, null, !dbg !1087
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !1089

if.then33:                                        ; preds = %if.end30
  store i32 4, i32* %retval, align 4, !dbg !1090
  br label %return, !dbg !1090

if.end34:                                         ; preds = %if.end30
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj, align 8, !dbg !1092
  %region35 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_region*, !dbg !1093
  %node36 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region35, i32 0, i32 6, !dbg !1094
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node36, align 8, !dbg !1094
  store %struct.acpi_namespace_node* %40, %struct.acpi_namespace_node** %pci_device_node, align 8, !dbg !1095
  br label %while.cond37, !dbg !1096

while.cond37:                                     ; preds = %while.body42, %if.end34
  %41 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %pci_device_node, align 8, !dbg !1097
  %tobool38 = icmp ne %struct.acpi_namespace_node* %41, null, !dbg !1097
  br i1 %tobool38, label %land.rhs, label %land.end, !dbg !1098

land.rhs:                                         ; preds = %while.cond37
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %pci_device_node, align 8, !dbg !1099
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %42, i32 0, i32 2, !dbg !1100
  %43 = load i8, i8* %type, align 1, !dbg !1100
  %conv39 = zext i8 %43 to i32, !dbg !1099
  %cmp40 = icmp ne i32 %conv39, 6, !dbg !1101
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond37
  %44 = phi i1 [ false, %while.cond37 ], [ %cmp40, %land.rhs ], !dbg !1102
  br i1 %44, label %while.body42, label %while.end44, !dbg !1096

while.body42:                                     ; preds = %land.end
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %pci_device_node, align 8, !dbg !1103
  %parent43 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %45, i32 0, i32 5, !dbg !1105
  %46 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent43, align 8, !dbg !1105
  store %struct.acpi_namespace_node* %46, %struct.acpi_namespace_node** %pci_device_node, align 8, !dbg !1106
  br label %while.cond37, !dbg !1096, !llvm.loop !1107

while.end44:                                      ; preds = %land.end
  %47 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %pci_device_node, align 8, !dbg !1109
  %tobool45 = icmp ne %struct.acpi_namespace_node* %47, null, !dbg !1109
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !1111

if.then46:                                        ; preds = %while.end44
  %48 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id, align 8, !dbg !1112
  %49 = bitcast %struct.acpi_pci_id* %48 to i8*, !dbg !1112
  call void @acpi_os_free(i8* %49) #8, !dbg !1112
  store i32 12291, i32* %retval, align 4, !dbg !1114
  br label %return, !dbg !1114

if.end47:                                         ; preds = %while.end44
  %50 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %pci_device_node, align 8, !dbg !1115
  %call48 = call i32 @acpi_ut_evaluate_numeric_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.acpi_namespace_node* %50, i64* %pci_value) #8, !dbg !1116
  store i32 %call48, i32* %status, align 4, !dbg !1117
  %51 = load i32, i32* %status, align 4, !dbg !1118
  %tobool49 = icmp ne i32 %51, 0, !dbg !1118
  br i1 %tobool49, label %if.end56, label %if.then50, !dbg !1120

if.then50:                                        ; preds = %if.end47
  %52 = load i64, i64* %pci_value, align 8, !dbg !1121
  %conv51 = trunc i64 %52 to i32, !dbg !1121
  %shr = lshr i32 %conv51, 16, !dbg !1121
  %conv52 = trunc i32 %shr to i16, !dbg !1121
  %53 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id, align 8, !dbg !1123
  %device = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %53, i32 0, i32 2, !dbg !1124
  store i16 %conv52, i16* %device, align 2, !dbg !1125
  %54 = load i64, i64* %pci_value, align 8, !dbg !1126
  %conv53 = trunc i64 %54 to i32, !dbg !1126
  %conv54 = trunc i32 %conv53 to i16, !dbg !1126
  %55 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id, align 8, !dbg !1127
  %function55 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %55, i32 0, i32 3, !dbg !1128
  store i16 %conv54, i16* %function55, align 2, !dbg !1129
  br label %if.end56, !dbg !1130

if.end56:                                         ; preds = %if.then50, %if.end47
  %56 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %pci_root_node, align 8, !dbg !1131
  %call57 = call i32 @acpi_ut_evaluate_numeric_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.acpi_namespace_node* %56, i64* %pci_value) #8, !dbg !1132
  store i32 %call57, i32* %status, align 4, !dbg !1133
  %57 = load i32, i32* %status, align 4, !dbg !1134
  %tobool58 = icmp ne i32 %57, 0, !dbg !1134
  br i1 %tobool58, label %if.end62, label %if.then59, !dbg !1136

if.then59:                                        ; preds = %if.end56
  %58 = load i64, i64* %pci_value, align 8, !dbg !1137
  %conv60 = trunc i64 %58 to i32, !dbg !1137
  %conv61 = trunc i32 %conv60 to i16, !dbg !1137
  %59 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id, align 8, !dbg !1139
  %segment = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %59, i32 0, i32 0, !dbg !1140
  store i16 %conv61, i16* %segment, align 2, !dbg !1141
  br label %if.end62, !dbg !1142

if.end62:                                         ; preds = %if.then59, %if.end56
  %60 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %pci_root_node, align 8, !dbg !1143
  %call63 = call i32 @acpi_ut_evaluate_numeric_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.acpi_namespace_node* %60, i64* %pci_value) #8, !dbg !1144
  store i32 %call63, i32* %status, align 4, !dbg !1145
  %61 = load i32, i32* %status, align 4, !dbg !1146
  %tobool64 = icmp ne i32 %61, 0, !dbg !1146
  br i1 %tobool64, label %if.end68, label %if.then65, !dbg !1148

if.then65:                                        ; preds = %if.end62
  %62 = load i64, i64* %pci_value, align 8, !dbg !1149
  %conv66 = trunc i64 %62 to i32, !dbg !1149
  %conv67 = trunc i32 %conv66 to i16, !dbg !1149
  %63 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id, align 8, !dbg !1151
  %bus = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %63, i32 0, i32 1, !dbg !1152
  store i16 %conv67, i16* %bus, align 2, !dbg !1153
  br label %if.end68, !dbg !1154

if.end68:                                         ; preds = %if.then65, %if.end62
  %64 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id, align 8, !dbg !1155
  %65 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %pci_root_node, align 8, !dbg !1156
  %66 = bitcast %struct.acpi_namespace_node* %65 to i8*, !dbg !1156
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj, align 8, !dbg !1157
  %region69 = bitcast %union.acpi_operand_object* %67 to %struct.acpi_object_region*, !dbg !1158
  %node70 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region69, i32 0, i32 6, !dbg !1159
  %68 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node70, align 8, !dbg !1159
  %69 = bitcast %struct.acpi_namespace_node* %68 to i8*, !dbg !1157
  %call71 = call i32 @acpi_hw_derive_pci_id(%struct.acpi_pci_id* %64, i8* %66, i8* %69) #8, !dbg !1160
  store i32 %call71, i32* %status, align 4, !dbg !1161
  %70 = load i32, i32* %status, align 4, !dbg !1162
  %tobool72 = icmp ne i32 %70, 0, !dbg !1162
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !1164

if.then73:                                        ; preds = %if.end68
  %71 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id, align 8, !dbg !1165
  %72 = bitcast %struct.acpi_pci_id* %71 to i8*, !dbg !1165
  call void @acpi_os_free(i8* %72) #8, !dbg !1165
  %73 = load i32, i32* %status, align 4, !dbg !1167
  store i32 %73, i32* %retval, align 4, !dbg !1167
  br label %return, !dbg !1167

if.end74:                                         ; preds = %if.end68
  %74 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id, align 8, !dbg !1168
  %75 = bitcast %struct.acpi_pci_id* %74 to i8*, !dbg !1168
  %76 = load i8**, i8*** %region_context.addr, align 8, !dbg !1169
  store i8* %75, i8** %76, align 8, !dbg !1170
  store i32 0, i32* %retval, align 4, !dbg !1171
  br label %return, !dbg !1171

return:                                           ; preds = %if.end74, %if.then73, %if.then46, %if.then33, %if.then29, %if.end4, %if.then
  %77 = load i32, i32* %retval, align 4, !dbg !1172
  ret i32 %77, !dbg !1172
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ev_is_pci_root_bridge(%struct.acpi_namespace_node* %node) #0 !dbg !1173 {
entry:
  %retval = alloca i8, align 1
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  %hid = alloca %struct.acpi_pnp_device_id*, align 8
  %cid = alloca %struct.acpi_pnp_device_id_list*, align 8
  %i = alloca i32, align 4
  %match = alloca i8, align 1
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1176, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1178, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id** %hid, metadata !1180, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id_list** %cid, metadata !1187, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1198, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.declare(metadata i8* %match, metadata !1200, metadata !DIExpression()), !dbg !1201
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1202
  %call = call i32 @acpi_ut_execute_HID(%struct.acpi_namespace_node* %0, %struct.acpi_pnp_device_id** %hid) #8, !dbg !1203
  store i32 %call, i32* %status, align 4, !dbg !1204
  %1 = load i32, i32* %status, align 4, !dbg !1205
  %tobool = icmp ne i32 %1, 0, !dbg !1205
  br i1 %tobool, label %if.then, label %if.end, !dbg !1207

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !1208
  br label %return, !dbg !1208

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !1210
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %2, i32 0, i32 1, !dbg !1211
  %3 = load i8*, i8** %string, align 8, !dbg !1211
  %call1 = call zeroext i8 @acpi_ut_is_pci_root_bridge(i8* %3) #8, !dbg !1212
  store i8 %call1, i8* %match, align 1, !dbg !1213
  %4 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !1214
  %5 = bitcast %struct.acpi_pnp_device_id* %4 to i8*, !dbg !1214
  call void @acpi_os_free(i8* %5) #8, !dbg !1214
  %6 = load i8, i8* %match, align 1, !dbg !1215
  %tobool2 = icmp ne i8 %6, 0, !dbg !1215
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1217

if.then3:                                         ; preds = %if.end
  store i8 1, i8* %retval, align 1, !dbg !1218
  br label %return, !dbg !1218

if.end4:                                          ; preds = %if.end
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1220
  %call5 = call i32 @acpi_ut_execute_CID(%struct.acpi_namespace_node* %7, %struct.acpi_pnp_device_id_list** %cid) #8, !dbg !1221
  store i32 %call5, i32* %status, align 4, !dbg !1222
  %8 = load i32, i32* %status, align 4, !dbg !1223
  %tobool6 = icmp ne i32 %8, 0, !dbg !1223
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1225

if.then7:                                         ; preds = %if.end4
  store i8 0, i8* %retval, align 1, !dbg !1226
  br label %return, !dbg !1226

if.end8:                                          ; preds = %if.end4
  store i32 0, i32* %i, align 4, !dbg !1228
  br label %for.cond, !dbg !1230

for.cond:                                         ; preds = %for.inc, %if.end8
  %9 = load i32, i32* %i, align 4, !dbg !1231
  %10 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid, align 8, !dbg !1233
  %count = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %10, i32 0, i32 0, !dbg !1234
  %11 = load i32, i32* %count, align 8, !dbg !1234
  %cmp = icmp ult i32 %9, %11, !dbg !1235
  br i1 %cmp, label %for.body, label %for.end, !dbg !1236

for.body:                                         ; preds = %for.cond
  %12 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid, align 8, !dbg !1237
  %ids = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %12, i32 0, i32 2, !dbg !1240
  %13 = load i32, i32* %i, align 4, !dbg !1241
  %idxprom = zext i32 %13 to i64, !dbg !1237
  %arrayidx = getelementptr [0 x %struct.acpi_pnp_device_id], [0 x %struct.acpi_pnp_device_id]* %ids, i64 0, i64 %idxprom, !dbg !1237
  %string9 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %arrayidx, i32 0, i32 1, !dbg !1242
  %14 = load i8*, i8** %string9, align 8, !dbg !1242
  %call10 = call zeroext i8 @acpi_ut_is_pci_root_bridge(i8* %14) #8, !dbg !1243
  %tobool11 = icmp ne i8 %call10, 0, !dbg !1243
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1244

if.then12:                                        ; preds = %for.body
  %15 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid, align 8, !dbg !1245
  %16 = bitcast %struct.acpi_pnp_device_id_list* %15 to i8*, !dbg !1245
  call void @acpi_os_free(i8* %16) #8, !dbg !1245
  store i8 1, i8* %retval, align 1, !dbg !1247
  br label %return, !dbg !1247

if.end13:                                         ; preds = %for.body
  br label %for.inc, !dbg !1248

for.inc:                                          ; preds = %if.end13
  %17 = load i32, i32* %i, align 4, !dbg !1249
  %inc = add i32 %17, 1, !dbg !1249
  store i32 %inc, i32* %i, align 4, !dbg !1249
  br label %for.cond, !dbg !1250, !llvm.loop !1251

for.end:                                          ; preds = %for.cond
  %18 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid, align 8, !dbg !1253
  %19 = bitcast %struct.acpi_pnp_device_id_list* %18 to i8*, !dbg !1253
  call void @acpi_os_free(i8* %19) #8, !dbg !1253
  store i8 0, i8* %retval, align 1, !dbg !1254
  br label %return, !dbg !1254

return:                                           ; preds = %for.end, %if.then12, %if.then7, %if.then3, %if.then
  %20 = load i8, i8* %retval, align 1, !dbg !1255
  ret i8 %20, !dbg !1255
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_install_address_space_handler(i8*, i8 zeroext, i32 (i32, i64, i32, i64*, i8*, i8*)*, i32 (i8*, i32, i8*, i8**)*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_node_name(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_evaluate_numeric_object(i8*, %struct.acpi_namespace_node*, i64*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_derive_pci_id(%struct.acpi_pci_id*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_execute_HID(%struct.acpi_namespace_node*, %struct.acpi_pnp_device_id**) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_is_pci_root_bridge(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_execute_CID(%struct.acpi_namespace_node*, %struct.acpi_pnp_device_id_list**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_pci_bar_region_setup(i8* %handle, i32 %function, i8* %handler_context, i8** %region_context) #0 !dbg !1256 {
entry:
  %handle.addr = alloca i8*, align 8
  %function.addr = alloca i32, align 4
  %handler_context.addr = alloca i8*, align 8
  %region_context.addr = alloca i8**, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !1257, metadata !DIExpression()), !dbg !1258
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !1259, metadata !DIExpression()), !dbg !1260
  store i8* %handler_context, i8** %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handler_context.addr, metadata !1261, metadata !DIExpression()), !dbg !1262
  store i8** %region_context, i8*** %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %region_context.addr, metadata !1263, metadata !DIExpression()), !dbg !1264
  ret i32 0, !dbg !1265
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_cmos_region_setup(i8* %handle, i32 %function, i8* %handler_context, i8** %region_context) #0 !dbg !1266 {
entry:
  %handle.addr = alloca i8*, align 8
  %function.addr = alloca i32, align 4
  %handler_context.addr = alloca i8*, align 8
  %region_context.addr = alloca i8**, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !1267, metadata !DIExpression()), !dbg !1268
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !1269, metadata !DIExpression()), !dbg !1270
  store i8* %handler_context, i8** %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handler_context.addr, metadata !1271, metadata !DIExpression()), !dbg !1272
  store i8** %region_context, i8*** %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %region_context.addr, metadata !1273, metadata !DIExpression()), !dbg !1274
  ret i32 0, !dbg !1275
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_default_region_setup(i8* %handle, i32 %function, i8* %handler_context, i8** %region_context) #0 !dbg !1276 {
entry:
  %handle.addr = alloca i8*, align 8
  %function.addr = alloca i32, align 4
  %handler_context.addr = alloca i8*, align 8
  %region_context.addr = alloca i8**, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !1277, metadata !DIExpression()), !dbg !1278
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !1279, metadata !DIExpression()), !dbg !1280
  store i8* %handler_context, i8** %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handler_context.addr, metadata !1281, metadata !DIExpression()), !dbg !1282
  store i8** %region_context, i8*** %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %region_context.addr, metadata !1283, metadata !DIExpression()), !dbg !1284
  %0 = load i32, i32* %function.addr, align 4, !dbg !1285
  %cmp = icmp eq i32 %0, 1, !dbg !1287
  br i1 %cmp, label %if.then, label %if.else, !dbg !1288

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %region_context.addr, align 8, !dbg !1289
  store i8* null, i8** %1, align 8, !dbg !1291
  br label %if.end, !dbg !1292

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %handler_context.addr, align 8, !dbg !1293
  %3 = load i8**, i8*** %region_context.addr, align 8, !dbg !1295
  store i8* %2, i8** %3, align 8, !dbg !1296
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !1297
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_initialize_region(%union.acpi_operand_object* %region_obj) #0 !dbg !1298 {
entry:
  %retval = alloca i32, align 4
  %region_obj.addr = alloca %union.acpi_operand_object*, align 8
  %handler_obj = alloca %union.acpi_operand_object*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %space_id = alloca i8, align 1
  %node = alloca %struct.acpi_namespace_node*, align 8
  store %union.acpi_operand_object* %region_obj, %union.acpi_operand_object** %region_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %region_obj.addr, metadata !1301, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_obj, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1305, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.declare(metadata i8* %space_id, metadata !1307, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1309, metadata !DIExpression()), !dbg !1310
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1311
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1311
  br i1 %tobool, label %if.end, label %if.then, !dbg !1313

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1314
  br label %return, !dbg !1314

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1316
  %common = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_common*, !dbg !1318
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 4, !dbg !1319
  %2 = load i8, i8* %flags, align 4, !dbg !1319
  %conv = zext i8 %2 to i32, !dbg !1316
  %and = and i32 %conv, 8, !dbg !1320
  %tobool1 = icmp ne i32 %and, 0, !dbg !1320
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1321

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1322
  br label %return, !dbg !1322

if.end3:                                          ; preds = %if.end
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1324
  %common4 = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !1325
  %flags5 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common4, i32 0, i32 4, !dbg !1326
  %4 = load i8, i8* %flags5, align 4, !dbg !1327
  %conv6 = zext i8 %4 to i32, !dbg !1327
  %or = or i32 %conv6, 8, !dbg !1327
  %conv7 = trunc i32 %or to i8, !dbg !1327
  store i8 %conv7, i8* %flags5, align 4, !dbg !1327
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1328
  %region = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_region*, !dbg !1329
  %node8 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 6, !dbg !1330
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node8, align 8, !dbg !1330
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %6, i32 0, i32 5, !dbg !1331
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !1331
  store %struct.acpi_namespace_node* %7, %struct.acpi_namespace_node** %node, align 8, !dbg !1332
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1333
  %region9 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_region*, !dbg !1334
  %space_id10 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region9, i32 0, i32 5, !dbg !1335
  %9 = load i8, i8* %space_id10, align 1, !dbg !1335
  store i8 %9, i8* %space_id, align 1, !dbg !1336
  br label %while.cond, !dbg !1337

while.cond:                                       ; preds = %if.end21, %if.end3
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1338
  %tobool11 = icmp ne %struct.acpi_namespace_node* %10, null, !dbg !1337
  br i1 %tobool11, label %while.body, label %while.end, !dbg !1337

while.body:                                       ; preds = %while.cond
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1339
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1341
  %call = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %11) #8, !dbg !1342
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1343
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1344
  %tobool12 = icmp ne %union.acpi_operand_object* %12, null, !dbg !1344
  br i1 %tobool12, label %if.then13, label %if.end21, !dbg !1346

if.then13:                                        ; preds = %while.body
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1347
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %13, i32 0, i32 2, !dbg !1349
  %14 = load i8, i8* %type, align 1, !dbg !1349
  %conv14 = zext i8 %14 to i32, !dbg !1347
  switch i32 %conv14, label %sw.default [
    i32 6, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
  ], !dbg !1350

sw.bb:                                            ; preds = %if.then13, %if.then13, %if.then13
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1351
  %common_notify = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_notify_common*, !dbg !1353
  %handler = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify, i32 0, i32 6, !dbg !1354
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler, align 8, !dbg !1354
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1355
  br label %sw.epilog, !dbg !1356

sw.default:                                       ; preds = %if.then13
  br label %sw.epilog, !dbg !1357

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %17 = load i8, i8* %space_id, align 1, !dbg !1358
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1359
  %call15 = call %union.acpi_operand_object* @acpi_ev_find_region_handler(i8 zeroext %17, %union.acpi_operand_object* %18) #8, !dbg !1360
  store %union.acpi_operand_object* %call15, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1361
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1362
  %tobool16 = icmp ne %union.acpi_operand_object* %19, null, !dbg !1362
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !1364

if.then17:                                        ; preds = %sw.epilog
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1365
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1367
  %call18 = call i32 @acpi_ev_attach_region(%union.acpi_operand_object* %20, %union.acpi_operand_object* %21, i8 zeroext 0) #8, !dbg !1368
  call void @acpi_ex_exit_interpreter() #8, !dbg !1369
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1370
  %call19 = call i32 @acpi_ev_execute_reg_method(%union.acpi_operand_object* %22, i32 1) #8, !dbg !1371
  call void @acpi_ex_enter_interpreter() #8, !dbg !1372
  store i32 0, i32* %retval, align 4, !dbg !1373
  br label %return, !dbg !1373

if.end20:                                         ; preds = %sw.epilog
  br label %if.end21, !dbg !1374

if.end21:                                         ; preds = %if.end20, %while.body
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1375
  %parent22 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %23, i32 0, i32 5, !dbg !1376
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent22, align 8, !dbg !1376
  store %struct.acpi_namespace_node* %24, %struct.acpi_namespace_node** %node, align 8, !dbg !1377
  br label %while.cond, !dbg !1337, !llvm.loop !1378

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !1380
  br label %return, !dbg !1380

return:                                           ; preds = %while.end, %if.then17, %if.then2, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !1381
  ret i32 %25, !dbg !1381
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ev_find_region_handler(i8 zeroext, %union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_attach_region(%union.acpi_operand_object*, %union.acpi_operand_object*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_exit_interpreter() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_execute_reg_method(%union.acpi_operand_object*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_enter_interpreter() #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1382 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1389, metadata !DIExpression()), !dbg !1396
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1402, metadata !DIExpression()), !dbg !1403
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1404, metadata !DIExpression()), !dbg !1405
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1406, metadata !DIExpression()), !dbg !1407
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1408, metadata !DIExpression()), !dbg !1412
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1414, metadata !DIExpression()), !dbg !1418
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1420, metadata !DIExpression()), !dbg !1424
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1429, metadata !DIExpression()), !dbg !1430
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1431, metadata !DIExpression()), !dbg !1432
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1433, metadata !DIExpression()), !dbg !1434
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1435, metadata !DIExpression()), !dbg !1436
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1437, metadata !DIExpression()), !dbg !1438
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1439, metadata !DIExpression()), !dbg !1440
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1441, metadata !DIExpression()), !dbg !1442
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1443, metadata !DIExpression()), !dbg !1444
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
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1453
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
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1461
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1438
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1462
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1463
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1464
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1465
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1466
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1467
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1468
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1468
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1468
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1468
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1468
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1469
  br label %kmalloc.exit, !dbg !1469

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1470
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1471
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1471
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1473

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1474
  br label %kmalloc_index.exit.i, !dbg !1474

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1475
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1477
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1478

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1479
  br label %kmalloc_index.exit.i, !dbg !1479

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1480
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1482
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1483

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1484
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1485
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1486

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1487
  br label %kmalloc_index.exit.i, !dbg !1487

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1488
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1490
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1491

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1492
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1493
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1494

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1495
  br label %kmalloc_index.exit.i, !dbg !1495

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1496
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1498
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1499

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1500
  br label %kmalloc_index.exit.i, !dbg !1500

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1501
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1503
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1504

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1505
  br label %kmalloc_index.exit.i, !dbg !1505

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1506
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1508
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1509

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1510
  br label %kmalloc_index.exit.i, !dbg !1510

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1511
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1513
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1514

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1515
  br label %kmalloc_index.exit.i, !dbg !1515

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1516
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1518
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1519

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1520
  br label %kmalloc_index.exit.i, !dbg !1520

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1521
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1523
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1524

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1525
  br label %kmalloc_index.exit.i, !dbg !1525

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1526
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1528
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1529

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1530
  br label %kmalloc_index.exit.i, !dbg !1530

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1531
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1533
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1534

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1535
  br label %kmalloc_index.exit.i, !dbg !1535

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1536
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1538
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1539

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1540
  br label %kmalloc_index.exit.i, !dbg !1540

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1541
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1543
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1544

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1545
  br label %kmalloc_index.exit.i, !dbg !1545

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1546
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1548
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1549

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1550
  br label %kmalloc_index.exit.i, !dbg !1550

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1551
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1553
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1554

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1555
  br label %kmalloc_index.exit.i, !dbg !1555

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1556
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1558
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1559

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1560
  br label %kmalloc_index.exit.i, !dbg !1560

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1561
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1563
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1564

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1565
  br label %kmalloc_index.exit.i, !dbg !1565

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1566
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1568
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1569

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1570
  br label %kmalloc_index.exit.i, !dbg !1570

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1571
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1573
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1574

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1575
  br label %kmalloc_index.exit.i, !dbg !1575

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1576
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1578
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1579

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1580
  br label %kmalloc_index.exit.i, !dbg !1580

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1581
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1583
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1584

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1585
  br label %kmalloc_index.exit.i, !dbg !1585

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1586
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1588
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1589

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1590
  br label %kmalloc_index.exit.i, !dbg !1590

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1591
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1593
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1594

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1595
  br label %kmalloc_index.exit.i, !dbg !1595

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1596
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1598
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1599

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1600
  br label %kmalloc_index.exit.i, !dbg !1600

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1601
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1603
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1604

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1605
  br label %kmalloc_index.exit.i, !dbg !1605

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1606
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1608
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1609

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1610
  br label %kmalloc_index.exit.i, !dbg !1610

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1611
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1613
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1614

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1615
  br label %kmalloc_index.exit.i, !dbg !1615

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1616, !srcloc !1619
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1620, !srcloc !1623
  unreachable, !dbg !1624

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1625
  store i32 %45, i32* %index.i, align 4, !dbg !1626
  %46 = load i32, i32* %index.i, align 4, !dbg !1627
  %tobool.i = icmp ne i32 %46, 0, !dbg !1627
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1629

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1630
  br label %kmalloc.exit, !dbg !1630

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1631
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1632
  %and.i.i = and i32 %48, 17, !dbg !1632
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1632
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1632
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1632
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1632
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1634

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1635
  br label %kmalloc_type.exit.i, !dbg !1635

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1636
  %and2.i.i = and i32 %49, 1, !dbg !1637
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1636
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1636
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1636
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1638
  br label %kmalloc_type.exit.i, !dbg !1638

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1639
  %idxprom.i = zext i32 %51 to i64, !dbg !1640
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1640
  %52 = load i32, i32* %index.i, align 4, !dbg !1641
  %idxprom6.i = zext i32 %52 to i64, !dbg !1640
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1640
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1640
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1642
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1643
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1644
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1645
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1646
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1646
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1646
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1646
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1646
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1407
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1647
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1648
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1649
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1650
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1651
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1652
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1653
  store i8* %62, i8** %retval.i, align 8, !dbg !1654
  br label %kmalloc.exit, !dbg !1654

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1655
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1656
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1657
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1657
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1657
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1657
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1657
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1658
  br label %kmalloc.exit, !dbg !1658

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1659
  ret i8* %65, !dbg !1660
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1661 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1665, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1668, metadata !DIExpression()), !dbg !1667
  %0 = load i64, i64* %__edi, align 8, !dbg !1667
  store i64 %0, i64* %__edi, align 8, !dbg !1667
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1669, metadata !DIExpression()), !dbg !1667
  %1 = load i64, i64* %__esi, align 8, !dbg !1667
  store i64 %1, i64* %__esi, align 8, !dbg !1667
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1670, metadata !DIExpression()), !dbg !1667
  %2 = load i64, i64* %__edx, align 8, !dbg !1667
  store i64 %2, i64* %__edx, align 8, !dbg !1667
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1671, metadata !DIExpression()), !dbg !1667
  %3 = load i64, i64* %__ecx, align 8, !dbg !1667
  store i64 %3, i64* %__ecx, align 8, !dbg !1667
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1672, metadata !DIExpression()), !dbg !1667
  %4 = load i64, i64* %__eax, align 8, !dbg !1667
  store i64 %4, i64* %__eax, align 8, !dbg !1667
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1667
  %6 = call i64 @llvm.read_register.i64(metadata !810), !dbg !1673
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1673, !srcloc !1676
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1673
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1673
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1673
  call void @llvm.write_register.i64(metadata !810, i64 %asmresult1), !dbg !1673
  %8 = load i64, i64* %__eax, align 8, !dbg !1673
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1677, metadata !DIExpression()), !dbg !1679
  store i64 -1, i64* %__mask, align 8, !dbg !1679
  %9 = load i64, i64* %__mask, align 8, !dbg !1679
  store i64 %9, i64* %tmp, align 8, !dbg !1679
  %10 = load i64, i64* %tmp, align 8, !dbg !1679
  %and = and i64 %8, %10, !dbg !1673
  store i64 %and, i64* %__ret, align 8, !dbg !1673
  %11 = load i64, i64* %__ret, align 8, !dbg !1667
  store i64 %11, i64* %tmp2, align 8, !dbg !1680
  %12 = load i64, i64* %tmp2, align 8, !dbg !1667
  ret i64 %12, !dbg !1681
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1682 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1684, metadata !DIExpression()), !dbg !1689
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1691, metadata !DIExpression()), !dbg !1692
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1693, metadata !DIExpression()), !dbg !1694
  %0 = load i64, i64* %size.addr, align 8, !dbg !1695
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1697
  br i1 %1, label %if.then, label %if.end447, !dbg !1698

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1699
  %tobool = icmp ne i64 %2, 0, !dbg !1699
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1702

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1703
  br label %return, !dbg !1703

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1704
  %cmp = icmp ult i64 %3, 4096, !dbg !1706
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1707

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1708
  br label %return, !dbg !1708

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub = sub i64 %4, 1, !dbg !1709
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1709
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1709

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub4 = sub i64 %6, 1, !dbg !1709
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1709
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1709

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub6 = sub i64 %8, 1, !dbg !1709
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1709
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1709

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1709

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub9 = sub i64 %9, 1, !dbg !1709
  %and = and i64 %sub9, -9223372036854775808, !dbg !1709
  %tobool10 = icmp ne i64 %and, 0, !dbg !1709
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1709

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1709

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub13 = sub i64 %10, 1, !dbg !1709
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1709
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1709
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1709

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1709

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub18 = sub i64 %11, 1, !dbg !1709
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1709
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1709
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1709

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1709

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub23 = sub i64 %12, 1, !dbg !1709
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1709
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1709
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1709

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1709

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub28 = sub i64 %13, 1, !dbg !1709
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1709
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1709
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1709

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1709

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub33 = sub i64 %14, 1, !dbg !1709
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1709
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1709
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1709

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1709

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub38 = sub i64 %15, 1, !dbg !1709
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1709
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1709
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1709

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1709

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub43 = sub i64 %16, 1, !dbg !1709
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1709
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1709
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1709

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1709

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub48 = sub i64 %17, 1, !dbg !1709
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1709
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1709
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1709

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1709

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub53 = sub i64 %18, 1, !dbg !1709
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1709
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1709
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1709

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1709

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub58 = sub i64 %19, 1, !dbg !1709
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1709
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1709
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1709

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1709

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub63 = sub i64 %20, 1, !dbg !1709
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1709
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1709
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1709

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1709

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub68 = sub i64 %21, 1, !dbg !1709
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1709
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1709
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1709

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1709

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub73 = sub i64 %22, 1, !dbg !1709
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1709
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1709
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1709

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1709

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub78 = sub i64 %23, 1, !dbg !1709
  %and79 = and i64 %sub78, 562949953421312, !dbg !1709
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1709
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1709

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1709

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub83 = sub i64 %24, 1, !dbg !1709
  %and84 = and i64 %sub83, 281474976710656, !dbg !1709
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1709
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1709

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1709

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub88 = sub i64 %25, 1, !dbg !1709
  %and89 = and i64 %sub88, 140737488355328, !dbg !1709
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1709
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1709

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1709

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub93 = sub i64 %26, 1, !dbg !1709
  %and94 = and i64 %sub93, 70368744177664, !dbg !1709
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1709
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1709

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1709

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub98 = sub i64 %27, 1, !dbg !1709
  %and99 = and i64 %sub98, 35184372088832, !dbg !1709
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1709
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1709

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1709

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub103 = sub i64 %28, 1, !dbg !1709
  %and104 = and i64 %sub103, 17592186044416, !dbg !1709
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1709
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1709

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1709

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub108 = sub i64 %29, 1, !dbg !1709
  %and109 = and i64 %sub108, 8796093022208, !dbg !1709
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1709
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1709

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1709

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub113 = sub i64 %30, 1, !dbg !1709
  %and114 = and i64 %sub113, 4398046511104, !dbg !1709
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1709
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1709

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1709

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub118 = sub i64 %31, 1, !dbg !1709
  %and119 = and i64 %sub118, 2199023255552, !dbg !1709
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1709
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1709

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1709

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub123 = sub i64 %32, 1, !dbg !1709
  %and124 = and i64 %sub123, 1099511627776, !dbg !1709
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1709
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1709

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1709

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub128 = sub i64 %33, 1, !dbg !1709
  %and129 = and i64 %sub128, 549755813888, !dbg !1709
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1709
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1709

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1709

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub133 = sub i64 %34, 1, !dbg !1709
  %and134 = and i64 %sub133, 274877906944, !dbg !1709
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1709
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1709

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1709

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub138 = sub i64 %35, 1, !dbg !1709
  %and139 = and i64 %sub138, 137438953472, !dbg !1709
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1709
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1709

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1709

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub143 = sub i64 %36, 1, !dbg !1709
  %and144 = and i64 %sub143, 68719476736, !dbg !1709
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1709
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1709

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1709

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub148 = sub i64 %37, 1, !dbg !1709
  %and149 = and i64 %sub148, 34359738368, !dbg !1709
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1709
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1709

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1709

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub153 = sub i64 %38, 1, !dbg !1709
  %and154 = and i64 %sub153, 17179869184, !dbg !1709
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1709
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1709

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1709

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub158 = sub i64 %39, 1, !dbg !1709
  %and159 = and i64 %sub158, 8589934592, !dbg !1709
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1709
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1709

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1709

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub163 = sub i64 %40, 1, !dbg !1709
  %and164 = and i64 %sub163, 4294967296, !dbg !1709
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1709
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1709

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1709

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub168 = sub i64 %41, 1, !dbg !1709
  %and169 = and i64 %sub168, 2147483648, !dbg !1709
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1709
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1709

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1709

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub173 = sub i64 %42, 1, !dbg !1709
  %and174 = and i64 %sub173, 1073741824, !dbg !1709
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1709
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1709

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1709

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub178 = sub i64 %43, 1, !dbg !1709
  %and179 = and i64 %sub178, 536870912, !dbg !1709
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1709
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1709

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1709

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub183 = sub i64 %44, 1, !dbg !1709
  %and184 = and i64 %sub183, 268435456, !dbg !1709
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1709
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1709

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1709

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub188 = sub i64 %45, 1, !dbg !1709
  %and189 = and i64 %sub188, 134217728, !dbg !1709
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1709
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1709

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1709

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub193 = sub i64 %46, 1, !dbg !1709
  %and194 = and i64 %sub193, 67108864, !dbg !1709
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1709
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1709

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1709

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub198 = sub i64 %47, 1, !dbg !1709
  %and199 = and i64 %sub198, 33554432, !dbg !1709
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1709
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1709

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1709

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub203 = sub i64 %48, 1, !dbg !1709
  %and204 = and i64 %sub203, 16777216, !dbg !1709
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1709
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1709

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1709

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub208 = sub i64 %49, 1, !dbg !1709
  %and209 = and i64 %sub208, 8388608, !dbg !1709
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1709
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1709

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1709

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub213 = sub i64 %50, 1, !dbg !1709
  %and214 = and i64 %sub213, 4194304, !dbg !1709
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1709
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1709

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1709

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub218 = sub i64 %51, 1, !dbg !1709
  %and219 = and i64 %sub218, 2097152, !dbg !1709
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1709
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1709

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1709

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub223 = sub i64 %52, 1, !dbg !1709
  %and224 = and i64 %sub223, 1048576, !dbg !1709
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1709
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1709

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1709

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub228 = sub i64 %53, 1, !dbg !1709
  %and229 = and i64 %sub228, 524288, !dbg !1709
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1709
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1709

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1709

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub233 = sub i64 %54, 1, !dbg !1709
  %and234 = and i64 %sub233, 262144, !dbg !1709
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1709
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1709

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1709

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub238 = sub i64 %55, 1, !dbg !1709
  %and239 = and i64 %sub238, 131072, !dbg !1709
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1709
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1709

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1709

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub243 = sub i64 %56, 1, !dbg !1709
  %and244 = and i64 %sub243, 65536, !dbg !1709
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1709
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1709

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1709

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub248 = sub i64 %57, 1, !dbg !1709
  %and249 = and i64 %sub248, 32768, !dbg !1709
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1709
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1709

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1709

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub253 = sub i64 %58, 1, !dbg !1709
  %and254 = and i64 %sub253, 16384, !dbg !1709
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1709
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1709

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1709

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub258 = sub i64 %59, 1, !dbg !1709
  %and259 = and i64 %sub258, 8192, !dbg !1709
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1709
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1709

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1709

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub263 = sub i64 %60, 1, !dbg !1709
  %and264 = and i64 %sub263, 4096, !dbg !1709
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1709
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1709

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1709

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub268 = sub i64 %61, 1, !dbg !1709
  %and269 = and i64 %sub268, 2048, !dbg !1709
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1709
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1709

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1709

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub273 = sub i64 %62, 1, !dbg !1709
  %and274 = and i64 %sub273, 1024, !dbg !1709
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1709
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1709

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1709

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub278 = sub i64 %63, 1, !dbg !1709
  %and279 = and i64 %sub278, 512, !dbg !1709
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1709
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1709

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1709

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub283 = sub i64 %64, 1, !dbg !1709
  %and284 = and i64 %sub283, 256, !dbg !1709
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1709
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1709

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1709

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub288 = sub i64 %65, 1, !dbg !1709
  %and289 = and i64 %sub288, 128, !dbg !1709
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1709
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1709

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1709

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub293 = sub i64 %66, 1, !dbg !1709
  %and294 = and i64 %sub293, 64, !dbg !1709
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1709
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1709

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1709

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub298 = sub i64 %67, 1, !dbg !1709
  %and299 = and i64 %sub298, 32, !dbg !1709
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1709
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1709

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1709

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub303 = sub i64 %68, 1, !dbg !1709
  %and304 = and i64 %sub303, 16, !dbg !1709
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1709
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1709

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1709

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub308 = sub i64 %69, 1, !dbg !1709
  %and309 = and i64 %sub308, 8, !dbg !1709
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1709
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1709

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1709

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub313 = sub i64 %70, 1, !dbg !1709
  %and314 = and i64 %sub313, 4, !dbg !1709
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1709
  %71 = zext i1 %tobool315 to i64, !dbg !1709
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1709
  br label %cond.end, !dbg !1709

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1709
  br label %cond.end317, !dbg !1709

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1709
  br label %cond.end319, !dbg !1709

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1709
  br label %cond.end321, !dbg !1709

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1709
  br label %cond.end323, !dbg !1709

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1709
  br label %cond.end325, !dbg !1709

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1709
  br label %cond.end327, !dbg !1709

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1709
  br label %cond.end329, !dbg !1709

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1709
  br label %cond.end331, !dbg !1709

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1709
  br label %cond.end333, !dbg !1709

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1709
  br label %cond.end335, !dbg !1709

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1709
  br label %cond.end337, !dbg !1709

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1709
  br label %cond.end339, !dbg !1709

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1709
  br label %cond.end341, !dbg !1709

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1709
  br label %cond.end343, !dbg !1709

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1709
  br label %cond.end345, !dbg !1709

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1709
  br label %cond.end347, !dbg !1709

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1709
  br label %cond.end349, !dbg !1709

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1709
  br label %cond.end351, !dbg !1709

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1709
  br label %cond.end353, !dbg !1709

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1709
  br label %cond.end355, !dbg !1709

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1709
  br label %cond.end357, !dbg !1709

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1709
  br label %cond.end359, !dbg !1709

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1709
  br label %cond.end361, !dbg !1709

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1709
  br label %cond.end363, !dbg !1709

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1709
  br label %cond.end365, !dbg !1709

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1709
  br label %cond.end367, !dbg !1709

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1709
  br label %cond.end369, !dbg !1709

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1709
  br label %cond.end371, !dbg !1709

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1709
  br label %cond.end373, !dbg !1709

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1709
  br label %cond.end375, !dbg !1709

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1709
  br label %cond.end377, !dbg !1709

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1709
  br label %cond.end379, !dbg !1709

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1709
  br label %cond.end381, !dbg !1709

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1709
  br label %cond.end383, !dbg !1709

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1709
  br label %cond.end385, !dbg !1709

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1709
  br label %cond.end387, !dbg !1709

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1709
  br label %cond.end389, !dbg !1709

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1709
  br label %cond.end391, !dbg !1709

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1709
  br label %cond.end393, !dbg !1709

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1709
  br label %cond.end395, !dbg !1709

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1709
  br label %cond.end397, !dbg !1709

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1709
  br label %cond.end399, !dbg !1709

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1709
  br label %cond.end401, !dbg !1709

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1709
  br label %cond.end403, !dbg !1709

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1709
  br label %cond.end405, !dbg !1709

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1709
  br label %cond.end407, !dbg !1709

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1709
  br label %cond.end409, !dbg !1709

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1709
  br label %cond.end411, !dbg !1709

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1709
  br label %cond.end413, !dbg !1709

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1709
  br label %cond.end415, !dbg !1709

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1709
  br label %cond.end417, !dbg !1709

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1709
  br label %cond.end419, !dbg !1709

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1709
  br label %cond.end421, !dbg !1709

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1709
  br label %cond.end423, !dbg !1709

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1709
  br label %cond.end425, !dbg !1709

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1709
  br label %cond.end427, !dbg !1709

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1709
  br label %cond.end429, !dbg !1709

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1709
  br label %cond.end431, !dbg !1709

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1709
  br label %cond.end433, !dbg !1709

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1709
  br label %cond.end435, !dbg !1709

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1709
  br label %cond.end437, !dbg !1709

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1709
  br label %cond.end440, !dbg !1709

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1709

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1709
  br label %cond.end444, !dbg !1709

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1709
  %sub443 = sub i64 %72, 1, !dbg !1709
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1709
  br label %cond.end444, !dbg !1709

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1709
  %sub446 = sub i32 %cond445, 12, !dbg !1710
  %add = add i32 %sub446, 1, !dbg !1711
  store i32 %add, i32* %retval, align 4, !dbg !1712
  br label %return, !dbg !1712

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1713
  %dec = add i64 %73, -1, !dbg !1713
  store i64 %dec, i64* %size.addr, align 8, !dbg !1713
  %74 = load i64, i64* %size.addr, align 8, !dbg !1714
  %shr = lshr i64 %74, 12, !dbg !1714
  store i64 %shr, i64* %size.addr, align 8, !dbg !1714
  %75 = load i64, i64* %size.addr, align 8, !dbg !1715
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1692
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1716
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1717
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !1716, !srcloc !1718
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1716
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1719
  %add.i = add i32 %79, 1, !dbg !1720
  store i32 %add.i, i32* %retval, align 4, !dbg !1721
  br label %return, !dbg !1721

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1722
  ret i32 %80, !dbg !1722
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1723 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1684, metadata !DIExpression()), !dbg !1727
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1691, metadata !DIExpression()), !dbg !1729
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1730, metadata !DIExpression()), !dbg !1731
  %0 = load i64, i64* %n.addr, align 8, !dbg !1732
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1729
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1733
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1734
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !1733, !srcloc !1718
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1733
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1735
  %add.i = add i32 %4, 1, !dbg !1736
  %sub = sub i32 %add.i, 1, !dbg !1737
  ret i32 %sub, !dbg !1738
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1739 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1745, metadata !DIExpression()), !dbg !1746
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1747, metadata !DIExpression()), !dbg !1748
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1749, metadata !DIExpression()), !dbg !1750
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1751, metadata !DIExpression()), !dbg !1752
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1753
  ret i8* %0, !dbg !1754
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
!llvm.named.register.rsp = !{!810}
!llvm.module.flags = !{!811, !812, !813, !814}
!llvm.ident = !{!815}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !808, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !807, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evrgnini.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !788, !124, !147, !800, !377, !803, !30, !62, !47, !804, !806}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !16, line: 367, size: 576, elements: !17)
!16 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!17 = !{!18, !34, !50, !64, !101, !115, !125, !439, !456, !471, !484, !562, !574, !588, !598, !616, !638, !657, !676, !695, !708, !734, !751, !764, !778, !787}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !15, file: !16, line: 368, baseType: !19, size: 128)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !16, line: 73, size: 128, elements: !20)
!20 = !{!21, !22, !28, !29, !33}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !19, file: !16, line: 74, baseType: !14, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !19, file: !16, line: 74, baseType: !23, size: 8, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !24, line: 17, baseType: !25)
!24 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !26, line: 21, baseType: !27)
!26 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !19, file: !16, line: 74, baseType: !23, size: 8, offset: 72)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !19, file: !16, line: 74, baseType: !30, size: 16, offset: 80)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !24, line: 19, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !26, line: 24, baseType: !32)
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !19, file: !16, line: 74, baseType: !23, size: 8, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !15, file: !16, line: 369, baseType: !35, size: 192)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !16, line: 76, size: 192, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !42, !46}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !35, file: !16, line: 77, baseType: !14, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !35, file: !16, line: 77, baseType: !23, size: 8, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !35, file: !16, line: 77, baseType: !23, size: 8, offset: 72)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !35, file: !16, line: 77, baseType: !30, size: 16, offset: 80)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !35, file: !16, line: 77, baseType: !23, size: 8, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !35, file: !16, line: 77, baseType: !43, size: 24, offset: 104)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 3)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !35, file: !16, line: 78, baseType: !47, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !24, line: 23, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !26, line: 31, baseType: !49)
!49 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !15, file: !16, line: 370, baseType: !51, size: 256)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !16, line: 93, size: 256, elements: !52)
!52 = !{!53, !54, !55, !56, !57, !58, !61}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !51, file: !16, line: 94, baseType: !14, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !51, file: !16, line: 94, baseType: !23, size: 8, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !16, line: 94, baseType: !23, size: 8, offset: 72)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !51, file: !16, line: 94, baseType: !30, size: 16, offset: 80)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !16, line: 94, baseType: !23, size: 8, offset: 96)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !51, file: !16, line: 94, baseType: !59, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !51, file: !16, line: 94, baseType: !62, size: 32, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !24, line: 21, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !26, line: 27, baseType: !7)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !15, file: !16, line: 371, baseType: !65, size: 384)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !16, line: 97, size: 384, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !74, !75, !76, !77}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !65, file: !16, line: 98, baseType: !14, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !65, file: !16, line: 98, baseType: !23, size: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !16, line: 98, baseType: !23, size: 8, offset: 72)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !65, file: !16, line: 98, baseType: !30, size: 16, offset: 80)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !16, line: 98, baseType: !23, size: 8, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !65, file: !16, line: 98, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !65, file: !16, line: 98, baseType: !62, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !65, file: !16, line: 99, baseType: !62, size: 32, offset: 224)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !65, file: !16, line: 100, baseType: !73, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !65, file: !16, line: 101, baseType: !78, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !80, line: 133, size: 384, elements: !81)
!80 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !85, !86, !95, !96, !97, !98}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !79, file: !80, line: 134, baseType: !14, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !80, line: 135, baseType: !23, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !80, line: 136, baseType: !23, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !80, line: 137, baseType: !30, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !79, file: !80, line: 138, baseType: !87, size: 32, offset: 96)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !88, line: 327, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !87, file: !88, line: 328, baseType: !62, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !87, file: !88, line: 329, baseType: !92, size: 32)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 4)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !79, file: !80, line: 139, baseType: !78, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !79, file: !80, line: 140, baseType: !78, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !79, file: !80, line: 141, baseType: !78, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !79, file: !80, line: 142, baseType: !99, size: 16, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !100, line: 445, baseType: !30)
!100 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!101 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !15, file: !16, line: 372, baseType: !102, size: 384)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !16, line: 104, size: 384, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !112, !113, !114}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !102, file: !16, line: 105, baseType: !14, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !16, line: 105, baseType: !23, size: 8, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !16, line: 105, baseType: !23, size: 8, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !102, file: !16, line: 105, baseType: !30, size: 16, offset: 80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !16, line: 105, baseType: !23, size: 8, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !102, file: !16, line: 105, baseType: !78, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !102, file: !16, line: 106, baseType: !111, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !102, file: !16, line: 107, baseType: !73, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !102, file: !16, line: 108, baseType: !62, size: 32, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !102, file: !16, line: 109, baseType: !62, size: 32, offset: 352)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !15, file: !16, line: 373, baseType: !116, size: 192)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !16, line: 118, size: 192, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !16, line: 119, baseType: !14, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !16, line: 119, baseType: !23, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !16, line: 119, baseType: !23, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !16, line: 119, baseType: !30, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !16, line: 119, baseType: !23, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !116, file: !16, line: 119, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !15, file: !16, line: 374, baseType: !126, size: 448)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !16, line: 143, size: 448, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !436, !437, !438}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !126, file: !16, line: 144, baseType: !14, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !16, line: 144, baseType: !23, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !16, line: 144, baseType: !23, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !126, file: !16, line: 144, baseType: !30, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !16, line: 144, baseType: !23, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !126, file: !16, line: 144, baseType: !23, size: 8, offset: 104)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !126, file: !16, line: 145, baseType: !23, size: 8, offset: 112)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !126, file: !16, line: 146, baseType: !23, size: 8, offset: 120)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !126, file: !16, line: 147, baseType: !14, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !126, file: !16, line: 148, baseType: !14, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !126, file: !16, line: 149, baseType: !73, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !126, file: !16, line: 153, baseType: !140, size: 64, offset: 320)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !16, line: 150, size: 64, elements: !141)
!141 = !{!142, !435}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !140, file: !16, line: 151, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !80, line: 248, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !100, line: 421, baseType: !62)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !150, line: 37, size: 9024, elements: !151)
!150 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !381, !382, !383, !384, !385, !389, !391, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !418, !419, !420, !421, !422, !423, !424, !425, !427, !433}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !150, line: 38, baseType: !148, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !149, file: !150, line: 39, baseType: !23, size: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !149, file: !150, line: 40, baseType: !23, size: 8, offset: 72)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !149, file: !150, line: 41, baseType: !30, size: 16, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !149, file: !150, line: 42, baseType: !23, size: 8, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !149, file: !150, line: 43, baseType: !23, size: 8, offset: 104)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !149, file: !150, line: 44, baseType: !23, size: 8, offset: 112)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !149, file: !150, line: 45, baseType: !99, size: 16, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !149, file: !150, line: 46, baseType: !23, size: 8, offset: 144)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !149, file: !150, line: 47, baseType: !23, size: 8, offset: 152)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !149, file: !150, line: 48, baseType: !23, size: 8, offset: 160)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !149, file: !150, line: 49, baseType: !23, size: 8, offset: 168)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !149, file: !150, line: 50, baseType: !23, size: 8, offset: 176)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !149, file: !150, line: 51, baseType: !23, size: 8, offset: 184)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !149, file: !150, line: 52, baseType: !23, size: 8, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !149, file: !150, line: 53, baseType: !23, size: 8, offset: 200)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !149, file: !150, line: 54, baseType: !73, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !149, file: !150, line: 55, baseType: !62, size: 32, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !149, file: !150, line: 56, baseType: !62, size: 32, offset: 352)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !149, file: !150, line: 57, baseType: !62, size: 32, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !149, file: !150, line: 58, baseType: !62, size: 32, offset: 416)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !149, file: !150, line: 60, baseType: !174, size: 640, offset: 448)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !80, line: 893, size: 640, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !262, !263, !379, !380}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !174, file: !80, line: 894, baseType: !73, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !174, file: !80, line: 895, baseType: !73, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !174, file: !80, line: 896, baseType: !73, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !174, file: !80, line: 897, baseType: !73, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !174, file: !80, line: 898, baseType: !73, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !174, file: !80, line: 899, baseType: !182, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !80, line: 875, size: 1600, elements: !184)
!184 = !{!185, !205, !221}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !183, file: !80, line: 876, baseType: !186, size: 448)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !80, line: 828, size: 448, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !204}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !186, file: !80, line: 829, baseType: !182, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !186, file: !80, line: 829, baseType: !23, size: 8, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !80, line: 829, baseType: !23, size: 8, offset: 72)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !186, file: !80, line: 829, baseType: !30, size: 16, offset: 80)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !186, file: !80, line: 829, baseType: !73, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !80, line: 829, baseType: !182, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !186, file: !80, line: 829, baseType: !78, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !186, file: !80, line: 829, baseType: !196, size: 64, offset: 320)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !80, line: 716, size: 64, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !196, file: !80, line: 717, baseType: !47, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !196, file: !80, line: 718, baseType: !62, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !196, file: !80, line: 719, baseType: !59, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !196, file: !80, line: 720, baseType: !73, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !80, line: 721, baseType: !59, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !196, file: !80, line: 722, baseType: !182, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !186, file: !80, line: 829, baseType: !23, size: 8, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !183, file: !80, line: 877, baseType: !206, size: 640)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !80, line: 835, size: 640, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !206, file: !80, line: 836, baseType: !182, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !206, file: !80, line: 836, baseType: !23, size: 8, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !80, line: 836, baseType: !23, size: 8, offset: 72)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !206, file: !80, line: 836, baseType: !30, size: 16, offset: 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !206, file: !80, line: 836, baseType: !73, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !80, line: 836, baseType: !182, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !206, file: !80, line: 836, baseType: !78, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !206, file: !80, line: 836, baseType: !196, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !206, file: !80, line: 836, baseType: !23, size: 8, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !206, file: !80, line: 836, baseType: !59, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !206, file: !80, line: 837, baseType: !73, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !206, file: !80, line: 838, baseType: !62, size: 32, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !80, line: 839, baseType: !62, size: 32, offset: 608)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !183, file: !80, line: 878, baseType: !222, size: 1600)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !80, line: 846, size: 1600, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !222, file: !80, line: 847, baseType: !182, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !222, file: !80, line: 847, baseType: !23, size: 8, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !222, file: !80, line: 847, baseType: !23, size: 8, offset: 72)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !222, file: !80, line: 847, baseType: !30, size: 16, offset: 80)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !222, file: !80, line: 847, baseType: !73, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !80, line: 847, baseType: !182, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !222, file: !80, line: 847, baseType: !78, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !222, file: !80, line: 847, baseType: !196, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !222, file: !80, line: 847, baseType: !23, size: 8, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !222, file: !80, line: 847, baseType: !182, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !222, file: !80, line: 848, baseType: !182, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !222, file: !80, line: 849, baseType: !59, size: 64, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !222, file: !80, line: 850, baseType: !23, size: 8, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !222, file: !80, line: 851, baseType: !59, size: 64, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !222, file: !80, line: 852, baseType: !59, size: 64, offset: 768)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !222, file: !80, line: 853, baseType: !59, size: 64, offset: 832)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !222, file: !80, line: 854, baseType: !92, size: 32, offset: 896)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !222, file: !80, line: 855, baseType: !62, size: 32, offset: 928)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !222, file: !80, line: 856, baseType: !62, size: 32, offset: 960)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !222, file: !80, line: 857, baseType: !62, size: 32, offset: 992)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !222, file: !80, line: 858, baseType: !62, size: 32, offset: 1024)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !222, file: !80, line: 859, baseType: !62, size: 32, offset: 1056)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !222, file: !80, line: 860, baseType: !62, size: 32, offset: 1088)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !222, file: !80, line: 861, baseType: !62, size: 32, offset: 1120)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !222, file: !80, line: 862, baseType: !62, size: 32, offset: 1152)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !222, file: !80, line: 863, baseType: !62, size: 32, offset: 1184)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !222, file: !80, line: 864, baseType: !62, size: 32, offset: 1216)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !222, file: !80, line: 865, baseType: !62, size: 32, offset: 1248)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !222, file: !80, line: 866, baseType: !62, size: 32, offset: 1280)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !222, file: !80, line: 867, baseType: !62, size: 32, offset: 1312)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !222, file: !80, line: 868, baseType: !30, size: 16, offset: 1344)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !222, file: !80, line: 869, baseType: !23, size: 8, offset: 1360)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !222, file: !80, line: 870, baseType: !23, size: 8, offset: 1368)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !222, file: !80, line: 871, baseType: !23, size: 8, offset: 1376)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !222, file: !80, line: 872, baseType: !259, size: 160, offset: 1384)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 160, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 20)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !174, file: !80, line: 900, baseType: !78, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !174, file: !80, line: 901, baseType: !264, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !80, line: 663, size: 640, elements: !266)
!266 = !{!267, !275, !288, !297, !306, !319, !333, !345, !357}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !265, file: !80, line: 664, baseType: !268, size: 128)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !80, line: 567, size: 128, elements: !269)
!269 = !{!270, !271, !272, !273, !274}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !80, line: 568, baseType: !124, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !268, file: !80, line: 568, baseType: !23, size: 8, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !80, line: 568, baseType: !23, size: 8, offset: 72)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !268, file: !80, line: 568, baseType: !30, size: 16, offset: 80)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !268, file: !80, line: 568, baseType: !30, size: 16, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !265, file: !80, line: 665, baseType: !276, size: 384)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !80, line: 593, size: 384, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !80, line: 594, baseType: !124, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !276, file: !80, line: 594, baseType: !23, size: 8, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !80, line: 594, baseType: !23, size: 8, offset: 72)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !276, file: !80, line: 594, baseType: !30, size: 16, offset: 80)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !276, file: !80, line: 594, baseType: !30, size: 16, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !276, file: !80, line: 594, baseType: !30, size: 16, offset: 112)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !276, file: !80, line: 595, baseType: !182, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !276, file: !80, line: 596, baseType: !73, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !276, file: !80, line: 597, baseType: !73, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !276, file: !80, line: 598, baseType: !47, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !265, file: !80, line: 666, baseType: !289, size: 192)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !80, line: 573, size: 192, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !80, line: 574, baseType: !124, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !289, file: !80, line: 574, baseType: !23, size: 8, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !80, line: 574, baseType: !23, size: 8, offset: 72)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !289, file: !80, line: 574, baseType: !30, size: 16, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !80, line: 574, baseType: !30, size: 16, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !289, file: !80, line: 574, baseType: !14, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !265, file: !80, line: 667, baseType: !298, size: 192)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !80, line: 604, size: 192, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !80, line: 605, baseType: !124, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !298, file: !80, line: 605, baseType: !23, size: 8, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !80, line: 605, baseType: !23, size: 8, offset: 72)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !298, file: !80, line: 605, baseType: !30, size: 16, offset: 80)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !298, file: !80, line: 605, baseType: !30, size: 16, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !298, file: !80, line: 605, baseType: !78, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !265, file: !80, line: 668, baseType: !307, size: 448)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !80, line: 608, size: 448, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !80, line: 609, baseType: !124, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !307, file: !80, line: 609, baseType: !23, size: 8, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !80, line: 609, baseType: !23, size: 8, offset: 72)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !307, file: !80, line: 609, baseType: !30, size: 16, offset: 80)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !307, file: !80, line: 609, baseType: !30, size: 16, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !307, file: !80, line: 609, baseType: !62, size: 32, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !307, file: !80, line: 610, baseType: !182, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !307, file: !80, line: 611, baseType: !73, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !307, file: !80, line: 612, baseType: !73, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !307, file: !80, line: 613, baseType: !62, size: 32, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !265, file: !80, line: 669, baseType: !320, size: 512)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !80, line: 580, size: 512, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !80, line: 581, baseType: !124, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !320, file: !80, line: 581, baseType: !23, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !80, line: 581, baseType: !23, size: 8, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !320, file: !80, line: 581, baseType: !30, size: 16, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !80, line: 581, baseType: !30, size: 16, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !320, file: !80, line: 581, baseType: !62, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !320, file: !80, line: 582, baseType: !14, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !320, file: !80, line: 583, baseType: !14, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !320, file: !80, line: 584, baseType: !148, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !320, file: !80, line: 585, baseType: !124, size: 64, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !320, file: !80, line: 586, baseType: !62, size: 32, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !265, file: !80, line: 670, baseType: !334, size: 320)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !80, line: 620, size: 320, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !80, line: 621, baseType: !124, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !334, file: !80, line: 621, baseType: !23, size: 8, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !80, line: 621, baseType: !23, size: 8, offset: 72)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !334, file: !80, line: 621, baseType: !30, size: 16, offset: 80)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !80, line: 621, baseType: !30, size: 16, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !334, file: !80, line: 621, baseType: !23, size: 8, offset: 112)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !334, file: !80, line: 622, baseType: !148, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !334, file: !80, line: 623, baseType: !14, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !334, file: !80, line: 624, baseType: !47, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !265, file: !80, line: 671, baseType: !346, size: 640)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !80, line: 631, size: 640, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !80, line: 632, baseType: !124, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !80, line: 632, baseType: !23, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !80, line: 632, baseType: !23, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !80, line: 632, baseType: !30, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !80, line: 632, baseType: !30, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !346, file: !80, line: 633, baseType: !354, size: 512, offset: 128)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !265, file: !80, line: 672, baseType: !358, size: 320)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !80, line: 654, size: 320, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !80, line: 655, baseType: !124, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !80, line: 655, baseType: !23, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !80, line: 655, baseType: !23, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !80, line: 655, baseType: !30, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !80, line: 655, baseType: !30, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !358, file: !80, line: 655, baseType: !23, size: 8, offset: 112)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !358, file: !80, line: 656, baseType: !78, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !358, file: !80, line: 657, baseType: !14, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !358, file: !80, line: 658, baseType: !369, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !80, line: 645, size: 128, elements: !371)
!371 = !{!372, !378}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !370, file: !80, line: 646, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !100, line: 1052, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377, !62, !124}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !100, line: 424, baseType: !124)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !370, file: !80, line: 647, baseType: !124, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !174, file: !80, line: 902, baseType: !182, size: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !174, file: !80, line: 903, baseType: !62, size: 32, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !149, file: !150, line: 61, baseType: !62, size: 32, offset: 1088)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !149, file: !150, line: 62, baseType: !62, size: 32, offset: 1120)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !149, file: !150, line: 63, baseType: !30, size: 16, offset: 1152)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !149, file: !150, line: 64, baseType: !23, size: 8, offset: 1168)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !149, file: !150, line: 66, baseType: !386, size: 2688, offset: 1216)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 2688, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 7)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !149, file: !150, line: 67, baseType: !390, size: 3072, offset: 3904)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 3072, elements: !355)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !149, file: !150, line: 68, baseType: !392, size: 576, offset: 6976)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 576, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 9)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !149, file: !150, line: 69, baseType: !111, size: 64, offset: 7552)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !149, file: !150, line: 71, baseType: !73, size: 64, offset: 7616)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !149, file: !150, line: 72, baseType: !111, size: 64, offset: 7680)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !149, file: !150, line: 73, baseType: !264, size: 64, offset: 7744)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !149, file: !150, line: 74, baseType: !78, size: 64, offset: 7808)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !149, file: !150, line: 75, baseType: !14, size: 64, offset: 7872)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !149, file: !150, line: 76, baseType: !78, size: 64, offset: 7936)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !149, file: !150, line: 77, baseType: !182, size: 64, offset: 8000)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !149, file: !150, line: 78, baseType: !14, size: 64, offset: 8064)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !149, file: !150, line: 79, baseType: !78, size: 64, offset: 8128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !149, file: !150, line: 80, baseType: !59, size: 64, offset: 8192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !149, file: !150, line: 81, baseType: !182, size: 64, offset: 8256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !149, file: !150, line: 82, baseType: !408, size: 64, offset: 8320)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !80, line: 702, size: 128, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !410, file: !80, line: 706, baseType: !62, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !410, file: !80, line: 707, baseType: !62, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !80, line: 708, baseType: !30, size: 16, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !410, file: !80, line: 709, baseType: !23, size: 8, offset: 80)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !410, file: !80, line: 710, baseType: !23, size: 8, offset: 88)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !410, file: !80, line: 711, baseType: !23, size: 8, offset: 96)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !149, file: !150, line: 83, baseType: !182, size: 64, offset: 8384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !149, file: !150, line: 84, baseType: !14, size: 64, offset: 8448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !149, file: !150, line: 85, baseType: !264, size: 64, offset: 8512)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !149, file: !150, line: 86, baseType: !14, size: 64, offset: 8576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !149, file: !150, line: 87, baseType: !264, size: 64, offset: 8640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !149, file: !150, line: 88, baseType: !182, size: 64, offset: 8704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !149, file: !150, line: 89, baseType: !182, size: 64, offset: 8768)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !149, file: !150, line: 90, baseType: !426, size: 64, offset: 8832)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !149, file: !150, line: 91, baseType: !428, size: 64, offset: 8896)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !80, line: 637, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!147, !148, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !149, file: !150, line: 92, baseType: !434, size: 64, offset: 8960)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !80, line: 641, baseType: !144)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !140, file: !16, line: 152, baseType: !14, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !126, file: !16, line: 155, baseType: !62, size: 32, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !126, file: !16, line: 156, baseType: !99, size: 16, offset: 416)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !126, file: !16, line: 157, baseType: !23, size: 8, offset: 432)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !15, file: !16, line: 375, baseType: !440, size: 576)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !16, line: 122, size: 576, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !440, file: !16, line: 123, baseType: !14, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !440, file: !16, line: 123, baseType: !23, size: 8, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !440, file: !16, line: 123, baseType: !23, size: 8, offset: 72)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !440, file: !16, line: 123, baseType: !30, size: 16, offset: 80)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !440, file: !16, line: 123, baseType: !23, size: 8, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !440, file: !16, line: 123, baseType: !23, size: 8, offset: 104)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !440, file: !16, line: 124, baseType: !30, size: 16, offset: 112)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !440, file: !16, line: 125, baseType: !124, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !440, file: !16, line: 126, baseType: !47, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !440, file: !16, line: 127, baseType: !426, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !440, file: !16, line: 128, baseType: !14, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !440, file: !16, line: 129, baseType: !14, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !440, file: !16, line: 130, baseType: !78, size: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !440, file: !16, line: 131, baseType: !23, size: 8, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !15, file: !16, line: 376, baseType: !457, size: 448)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !16, line: 134, size: 448, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !470}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !457, file: !16, line: 135, baseType: !14, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !457, file: !16, line: 135, baseType: !23, size: 8, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !457, file: !16, line: 135, baseType: !23, size: 8, offset: 72)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !457, file: !16, line: 135, baseType: !30, size: 16, offset: 80)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !457, file: !16, line: 135, baseType: !23, size: 8, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !457, file: !16, line: 135, baseType: !23, size: 8, offset: 104)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !457, file: !16, line: 136, baseType: !78, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !457, file: !16, line: 137, baseType: !14, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !16, line: 138, baseType: !14, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !457, file: !16, line: 139, baseType: !469, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !100, line: 129, baseType: !47)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !457, file: !16, line: 140, baseType: !62, size: 32, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !15, file: !16, line: 377, baseType: !472, size: 320)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !16, line: 184, size: 320, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !483}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !472, file: !16, line: 185, baseType: !14, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !472, file: !16, line: 185, baseType: !23, size: 8, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !16, line: 185, baseType: !23, size: 8, offset: 72)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !472, file: !16, line: 185, baseType: !30, size: 16, offset: 80)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !16, line: 185, baseType: !23, size: 8, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !472, file: !16, line: 185, baseType: !480, size: 128, offset: 128)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 2)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !472, file: !16, line: 185, baseType: !14, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !15, file: !16, line: 378, baseType: !485, size: 384)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !16, line: 187, size: 384, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !16, line: 188, baseType: !14, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !16, line: 188, baseType: !23, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !16, line: 188, baseType: !23, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !16, line: 188, baseType: !30, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !16, line: 188, baseType: !23, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !16, line: 189, baseType: !480, size: 128, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !16, line: 189, baseType: !14, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !485, file: !16, line: 189, baseType: !495, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !80, line: 480, size: 576, elements: !497)
!497 = !{!498, !499, !500, !501, !509, !524, !556, !557, !558, !559, !560, !561}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !496, file: !80, line: 481, baseType: !78, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !496, file: !80, line: 482, baseType: !495, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !496, file: !80, line: 483, baseType: !495, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !496, file: !80, line: 484, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !80, line: 497, size: 256, elements: !504)
!504 = !{!505, !506, !507, !508}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !503, file: !80, line: 498, baseType: !502, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !80, line: 499, baseType: !502, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !503, file: !80, line: 500, baseType: !495, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !503, file: !80, line: 501, baseType: !62, size: 32, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !496, file: !80, line: 485, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !80, line: 466, size: 320, elements: !512)
!512 = !{!513, !518, !519, !520, !521, !522, !523}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !511, file: !80, line: 467, baseType: !514, size: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !80, line: 459, size: 128, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !514, file: !80, line: 460, baseType: !23, size: 8)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !80, line: 461, baseType: !47, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !511, file: !80, line: 468, baseType: !514, size: 128, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !511, file: !80, line: 469, baseType: !30, size: 16, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !511, file: !80, line: 470, baseType: !23, size: 8, offset: 272)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !511, file: !80, line: 471, baseType: !23, size: 8, offset: 280)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !511, file: !80, line: 472, baseType: !23, size: 8, offset: 288)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !511, file: !80, line: 473, baseType: !23, size: 8, offset: 296)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !496, file: !80, line: 486, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !80, line: 448, size: 192, elements: !527)
!527 = !{!528, !551, !552, !553, !554, !555}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !526, file: !80, line: 449, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !80, line: 438, size: 64, elements: !530)
!530 = !{!531, !532, !545}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !529, file: !80, line: 439, baseType: !78, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !529, file: !80, line: 440, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !80, line: 419, size: 256, elements: !535)
!535 = !{!536, !541, !542, !543, !544}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !534, file: !80, line: 420, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !100, line: 1049, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!62, !377, !62, !124}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !534, file: !80, line: 421, baseType: !124, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !534, file: !80, line: 422, baseType: !78, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !534, file: !80, line: 423, baseType: !23, size: 8, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !534, file: !80, line: 424, baseType: !23, size: 8, offset: 200)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !529, file: !80, line: 441, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !80, line: 429, size: 128, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !547, file: !80, line: 430, baseType: !78, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !80, line: 431, baseType: !546, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !526, file: !80, line: 450, baseType: !510, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !80, line: 451, baseType: !23, size: 8, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !526, file: !80, line: 452, baseType: !23, size: 8, offset: 136)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !526, file: !80, line: 453, baseType: !23, size: 8, offset: 144)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !526, file: !80, line: 454, baseType: !23, size: 8, offset: 152)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !496, file: !80, line: 487, baseType: !47, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !496, file: !80, line: 488, baseType: !62, size: 32, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !496, file: !80, line: 489, baseType: !30, size: 16, offset: 480)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !496, file: !80, line: 490, baseType: !30, size: 16, offset: 496)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !496, file: !80, line: 491, baseType: !23, size: 8, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !496, file: !80, line: 492, baseType: !23, size: 8, offset: 520)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !15, file: !16, line: 379, baseType: !563, size: 384)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !16, line: 192, size: 384, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !573}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !563, file: !16, line: 193, baseType: !14, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !563, file: !16, line: 193, baseType: !23, size: 8, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !563, file: !16, line: 193, baseType: !23, size: 8, offset: 72)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !563, file: !16, line: 193, baseType: !30, size: 16, offset: 80)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !16, line: 193, baseType: !23, size: 8, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !563, file: !16, line: 193, baseType: !480, size: 128, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !563, file: !16, line: 193, baseType: !14, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !563, file: !16, line: 193, baseType: !62, size: 32, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !563, file: !16, line: 194, baseType: !62, size: 32, offset: 352)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !15, file: !16, line: 380, baseType: !575, size: 384)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !16, line: 197, size: 384, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !575, file: !16, line: 198, baseType: !14, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !575, file: !16, line: 198, baseType: !23, size: 8, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !16, line: 198, baseType: !23, size: 8, offset: 72)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !575, file: !16, line: 198, baseType: !30, size: 16, offset: 80)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !16, line: 198, baseType: !23, size: 8, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !575, file: !16, line: 200, baseType: !23, size: 8, offset: 104)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !575, file: !16, line: 201, baseType: !23, size: 8, offset: 112)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !575, file: !16, line: 202, baseType: !480, size: 128, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !575, file: !16, line: 202, baseType: !14, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !575, file: !16, line: 202, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !100, line: 128, baseType: !47)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !15, file: !16, line: 381, baseType: !589, size: 320)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !16, line: 205, size: 320, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !589, file: !16, line: 206, baseType: !14, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !589, file: !16, line: 206, baseType: !23, size: 8, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !16, line: 206, baseType: !23, size: 8, offset: 72)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !589, file: !16, line: 206, baseType: !30, size: 16, offset: 80)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !16, line: 206, baseType: !23, size: 8, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !589, file: !16, line: 206, baseType: !480, size: 128, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !589, file: !16, line: 206, baseType: !14, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !15, file: !16, line: 382, baseType: !599, size: 384)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !16, line: 233, size: 384, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !16, line: 234, baseType: !14, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !16, line: 234, baseType: !23, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !16, line: 234, baseType: !23, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !16, line: 234, baseType: !30, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !16, line: 234, baseType: !23, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !599, file: !16, line: 234, baseType: !23, size: 8, offset: 104)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !599, file: !16, line: 234, baseType: !23, size: 8, offset: 112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !599, file: !16, line: 234, baseType: !23, size: 8, offset: 120)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !599, file: !16, line: 234, baseType: !78, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !599, file: !16, line: 234, baseType: !62, size: 32, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !599, file: !16, line: 234, baseType: !62, size: 32, offset: 224)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !599, file: !16, line: 234, baseType: !62, size: 32, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !599, file: !16, line: 234, baseType: !23, size: 8, offset: 288)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !599, file: !16, line: 234, baseType: !23, size: 8, offset: 296)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !599, file: !16, line: 234, baseType: !14, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !15, file: !16, line: 383, baseType: !617, size: 576)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !16, line: 237, size: 576, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !617, file: !16, line: 238, baseType: !14, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !16, line: 238, baseType: !23, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !16, line: 238, baseType: !23, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !617, file: !16, line: 238, baseType: !30, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !16, line: 238, baseType: !23, size: 8, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !617, file: !16, line: 238, baseType: !23, size: 8, offset: 104)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !617, file: !16, line: 238, baseType: !23, size: 8, offset: 112)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !617, file: !16, line: 238, baseType: !23, size: 8, offset: 120)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !617, file: !16, line: 238, baseType: !78, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !617, file: !16, line: 238, baseType: !62, size: 32, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !617, file: !16, line: 238, baseType: !62, size: 32, offset: 224)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !617, file: !16, line: 238, baseType: !62, size: 32, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !617, file: !16, line: 238, baseType: !23, size: 8, offset: 288)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !617, file: !16, line: 238, baseType: !23, size: 8, offset: 296)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !617, file: !16, line: 238, baseType: !30, size: 16, offset: 304)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !617, file: !16, line: 239, baseType: !14, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !617, file: !16, line: 240, baseType: !73, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !617, file: !16, line: 241, baseType: !30, size: 16, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !617, file: !16, line: 242, baseType: !73, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !15, file: !16, line: 384, baseType: !639, size: 384)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !16, line: 262, size: 384, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !639, file: !16, line: 263, baseType: !14, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !639, file: !16, line: 263, baseType: !23, size: 8, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !16, line: 263, baseType: !23, size: 8, offset: 72)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !639, file: !16, line: 263, baseType: !30, size: 16, offset: 80)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !16, line: 263, baseType: !23, size: 8, offset: 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !639, file: !16, line: 263, baseType: !23, size: 8, offset: 104)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !639, file: !16, line: 263, baseType: !23, size: 8, offset: 112)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !639, file: !16, line: 263, baseType: !23, size: 8, offset: 120)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !639, file: !16, line: 263, baseType: !78, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !639, file: !16, line: 263, baseType: !62, size: 32, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !639, file: !16, line: 263, baseType: !62, size: 32, offset: 224)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !639, file: !16, line: 263, baseType: !62, size: 32, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !639, file: !16, line: 263, baseType: !23, size: 8, offset: 288)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !639, file: !16, line: 263, baseType: !23, size: 8, offset: 296)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !639, file: !16, line: 263, baseType: !23, size: 8, offset: 304)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !639, file: !16, line: 264, baseType: !14, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !15, file: !16, line: 385, baseType: !658, size: 448)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !16, line: 245, size: 448, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !658, file: !16, line: 246, baseType: !14, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !16, line: 246, baseType: !23, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !16, line: 246, baseType: !23, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !658, file: !16, line: 246, baseType: !30, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !16, line: 246, baseType: !23, size: 8, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !658, file: !16, line: 246, baseType: !23, size: 8, offset: 104)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !658, file: !16, line: 246, baseType: !23, size: 8, offset: 112)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !658, file: !16, line: 246, baseType: !23, size: 8, offset: 120)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !658, file: !16, line: 246, baseType: !78, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !658, file: !16, line: 246, baseType: !62, size: 32, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !658, file: !16, line: 246, baseType: !62, size: 32, offset: 224)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !16, line: 246, baseType: !62, size: 32, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !658, file: !16, line: 246, baseType: !23, size: 8, offset: 288)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !658, file: !16, line: 246, baseType: !23, size: 8, offset: 296)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !658, file: !16, line: 246, baseType: !14, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !658, file: !16, line: 247, baseType: !14, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !15, file: !16, line: 386, baseType: !677, size: 448)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !16, line: 250, size: 448, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !16, line: 251, baseType: !14, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !16, line: 251, baseType: !23, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !16, line: 251, baseType: !23, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !16, line: 251, baseType: !30, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !16, line: 251, baseType: !23, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !677, file: !16, line: 251, baseType: !23, size: 8, offset: 104)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !677, file: !16, line: 251, baseType: !23, size: 8, offset: 112)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !677, file: !16, line: 251, baseType: !23, size: 8, offset: 120)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !677, file: !16, line: 251, baseType: !78, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !677, file: !16, line: 251, baseType: !62, size: 32, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !677, file: !16, line: 251, baseType: !62, size: 32, offset: 224)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !677, file: !16, line: 251, baseType: !62, size: 32, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !677, file: !16, line: 251, baseType: !23, size: 8, offset: 288)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !677, file: !16, line: 251, baseType: !23, size: 8, offset: 296)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !677, file: !16, line: 256, baseType: !14, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !677, file: !16, line: 257, baseType: !14, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !15, file: !16, line: 387, baseType: !696, size: 512)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !16, line: 273, size: 512, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !16, line: 274, baseType: !14, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !16, line: 274, baseType: !23, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !16, line: 274, baseType: !23, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !16, line: 274, baseType: !30, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !16, line: 274, baseType: !23, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !16, line: 274, baseType: !78, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !696, file: !16, line: 275, baseType: !62, size: 32, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !696, file: !16, line: 276, baseType: !373, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !696, file: !16, line: 277, baseType: !124, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !696, file: !16, line: 278, baseType: !480, size: 128, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !15, file: !16, line: 388, baseType: !709, size: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !16, line: 281, size: 512, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !724, !725, !726, !732, !733}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !16, line: 282, baseType: !14, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !16, line: 282, baseType: !23, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !16, line: 282, baseType: !23, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !16, line: 282, baseType: !30, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !16, line: 282, baseType: !23, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !709, file: !16, line: 282, baseType: !23, size: 8, offset: 104)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !709, file: !16, line: 283, baseType: !23, size: 8, offset: 112)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !16, line: 284, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !100, line: 1084, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!147, !62, !469, !62, !723, !124, !124}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !16, line: 285, baseType: !78, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !16, line: 286, baseType: !124, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !709, file: !16, line: 287, baseType: !727, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !100, line: 1102, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!147, !377, !62, !124, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !709, file: !16, line: 288, baseType: !14, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !16, line: 289, baseType: !14, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !15, file: !16, line: 389, baseType: !735, size: 512)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !16, line: 307, size: 512, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !735, file: !16, line: 308, baseType: !14, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !735, file: !16, line: 308, baseType: !23, size: 8, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !735, file: !16, line: 308, baseType: !23, size: 8, offset: 72)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !735, file: !16, line: 308, baseType: !30, size: 16, offset: 80)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !16, line: 308, baseType: !23, size: 8, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !735, file: !16, line: 308, baseType: !23, size: 8, offset: 104)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !735, file: !16, line: 309, baseType: !23, size: 8, offset: 112)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !735, file: !16, line: 310, baseType: !23, size: 8, offset: 120)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !735, file: !16, line: 311, baseType: !124, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !16, line: 312, baseType: !78, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !735, file: !16, line: 313, baseType: !111, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !735, file: !16, line: 314, baseType: !73, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !735, file: !16, line: 315, baseType: !73, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !735, file: !16, line: 316, baseType: !62, size: 32, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !15, file: !16, line: 390, baseType: !752, size: 448)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !16, line: 340, size: 448, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !752, file: !16, line: 341, baseType: !14, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !752, file: !16, line: 341, baseType: !23, size: 8, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !752, file: !16, line: 341, baseType: !23, size: 8, offset: 72)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !752, file: !16, line: 341, baseType: !30, size: 16, offset: 80)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !16, line: 341, baseType: !23, size: 8, offset: 96)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !752, file: !16, line: 341, baseType: !78, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !752, file: !16, line: 342, baseType: !78, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !752, file: !16, line: 343, baseType: !124, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !752, file: !16, line: 344, baseType: !73, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !752, file: !16, line: 345, baseType: !62, size: 32, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !15, file: !16, line: 391, baseType: !765, size: 256)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !16, line: 350, size: 256, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !777}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !765, file: !16, line: 351, baseType: !14, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !16, line: 351, baseType: !23, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !16, line: 351, baseType: !23, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !765, file: !16, line: 351, baseType: !30, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !16, line: 351, baseType: !23, size: 8, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !765, file: !16, line: 351, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !100, line: 1055, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !377, !124}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !765, file: !16, line: 352, baseType: !124, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !15, file: !16, line: 392, baseType: !779, size: 192)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !16, line: 357, size: 192, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !779, file: !16, line: 358, baseType: !14, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !779, file: !16, line: 358, baseType: !23, size: 8, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !779, file: !16, line: 358, baseType: !23, size: 8, offset: 72)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !779, file: !16, line: 358, baseType: !30, size: 16, offset: 80)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !16, line: 358, baseType: !23, size: 8, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !779, file: !16, line: 358, baseType: !14, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !15, file: !16, line: 399, baseType: !79, size: 384)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_mem_space_context", file: !100, line: 1211, size: 256, elements: !790)
!790 = !{!791, !792, !793, !802}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !789, file: !100, line: 1212, baseType: !62, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !789, file: !100, line: 1213, baseType: !469, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cur_mm", scope: !789, file: !100, line: 1214, baseType: !794, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_mem_mapping", file: !100, line: 1204, size: 256, elements: !796)
!796 = !{!797, !798, !799, !801}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "physical_address", scope: !795, file: !100, line: 1205, baseType: !469, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "logical_address", scope: !795, file: !100, line: 1206, baseType: !73, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !795, file: !100, line: 1207, baseType: !800, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !100, line: 127, baseType: !47)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "next_mm", scope: !795, file: !100, line: 1208, baseType: !794, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "first_mm", scope: !789, file: !100, line: 1215, baseType: !794, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !100, line: 805, baseType: !23)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !805, line: 148, baseType: !7)
!805 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!806 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!807 = !{!0}
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 72, elements: !393)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!810 = !{!"rsp"}
!811 = !{i32 7, !"Dwarf Version", i32 4}
!812 = !{i32 2, !"Debug Info Version", i32 3}
!813 = !{i32 1, !"wchar_size", i32 2}
!814 = !{i32 1, !"Code Model", i32 2}
!815 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!816 = distinct !DISubprogram(name: "acpi_ev_system_memory_region_setup", scope: !3, file: !3, line: 34, type: !729, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !817)
!817 = !{}
!818 = !DILocalVariable(name: "handle", arg: 1, scope: !816, file: !3, line: 34, type: !377)
!819 = !DILocation(line: 34, column: 48, scope: !816)
!820 = !DILocalVariable(name: "function", arg: 2, scope: !816, file: !3, line: 35, type: !62)
!821 = !DILocation(line: 35, column: 12, scope: !816)
!822 = !DILocalVariable(name: "handler_context", arg: 3, scope: !816, file: !3, line: 36, type: !124)
!823 = !DILocation(line: 36, column: 14, scope: !816)
!824 = !DILocalVariable(name: "region_context", arg: 4, scope: !816, file: !3, line: 36, type: !731)
!825 = !DILocation(line: 36, column: 38, scope: !816)
!826 = !DILocalVariable(name: "region_desc", scope: !816, file: !3, line: 38, type: !14)
!827 = !DILocation(line: 38, column: 29, scope: !816)
!828 = !DILocation(line: 39, column: 35, scope: !816)
!829 = !DILocation(line: 39, column: 6, scope: !816)
!830 = !DILocalVariable(name: "local_region_context", scope: !816, file: !3, line: 40, type: !788)
!831 = !DILocation(line: 40, column: 33, scope: !816)
!832 = !DILocalVariable(name: "mm", scope: !816, file: !3, line: 41, type: !794)
!833 = !DILocation(line: 41, column: 27, scope: !816)
!834 = !DILocation(line: 45, column: 6, scope: !835)
!835 = distinct !DILexicalBlock(scope: !816, file: !3, line: 45, column: 6)
!836 = !DILocation(line: 45, column: 15, scope: !835)
!837 = !DILocation(line: 45, column: 6, scope: !816)
!838 = !DILocation(line: 46, column: 8, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 46, column: 7)
!840 = distinct !DILexicalBlock(scope: !835, file: !3, line: 45, column: 42)
!841 = !DILocation(line: 46, column: 7, scope: !839)
!842 = !DILocation(line: 46, column: 7, scope: !840)
!843 = !DILocation(line: 48, column: 42, scope: !844)
!844 = distinct !DILexicalBlock(scope: !839, file: !3, line: 46, column: 24)
!845 = !DILocation(line: 48, column: 41, scope: !844)
!846 = !DILocation(line: 48, column: 8, scope: !844)
!847 = !DILocation(line: 47, column: 25, scope: !844)
!848 = !DILocation(line: 52, column: 4, scope: !844)
!849 = !DILocation(line: 52, column: 11, scope: !844)
!850 = !DILocation(line: 52, column: 33, scope: !844)
!851 = !DILocation(line: 53, column: 10, scope: !852)
!852 = distinct !DILexicalBlock(scope: !844, file: !3, line: 52, column: 43)
!853 = !DILocation(line: 53, column: 32, scope: !852)
!854 = !DILocation(line: 53, column: 8, scope: !852)
!855 = !DILocation(line: 54, column: 38, scope: !852)
!856 = !DILocation(line: 54, column: 42, scope: !852)
!857 = !DILocation(line: 54, column: 5, scope: !852)
!858 = !DILocation(line: 54, column: 27, scope: !852)
!859 = !DILocation(line: 54, column: 36, scope: !852)
!860 = !DILocation(line: 55, column: 26, scope: !852)
!861 = !DILocation(line: 55, column: 30, scope: !852)
!862 = !DILocation(line: 56, column: 12, scope: !852)
!863 = !DILocation(line: 56, column: 16, scope: !852)
!864 = !DILocation(line: 55, column: 5, scope: !852)
!865 = !DILocation(line: 57, column: 5, scope: !852)
!866 = distinct !{!866, !848, !867}
!867 = !DILocation(line: 58, column: 4, scope: !844)
!868 = !DILocation(line: 59, column: 4, scope: !844)
!869 = !DILocation(line: 60, column: 5, scope: !844)
!870 = !DILocation(line: 60, column: 20, scope: !844)
!871 = !DILocation(line: 61, column: 3, scope: !844)
!872 = !DILocation(line: 62, column: 3, scope: !840)
!873 = !DILocation(line: 68, column: 6, scope: !816)
!874 = !DILocation(line: 67, column: 23, scope: !816)
!875 = !DILocation(line: 69, column: 8, scope: !876)
!876 = distinct !DILexicalBlock(scope: !816, file: !3, line: 69, column: 6)
!877 = !DILocation(line: 69, column: 7, scope: !876)
!878 = !DILocation(line: 69, column: 6, scope: !816)
!879 = !DILocation(line: 70, column: 3, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !3, line: 69, column: 31)
!881 = !DILocation(line: 75, column: 33, scope: !816)
!882 = !DILocation(line: 75, column: 46, scope: !816)
!883 = !DILocation(line: 75, column: 53, scope: !816)
!884 = !DILocation(line: 75, column: 2, scope: !816)
!885 = !DILocation(line: 75, column: 24, scope: !816)
!886 = !DILocation(line: 75, column: 31, scope: !816)
!887 = !DILocation(line: 76, column: 34, scope: !816)
!888 = !DILocation(line: 76, column: 47, scope: !816)
!889 = !DILocation(line: 76, column: 54, scope: !816)
!890 = !DILocation(line: 76, column: 2, scope: !816)
!891 = !DILocation(line: 76, column: 24, scope: !816)
!892 = !DILocation(line: 76, column: 32, scope: !816)
!893 = !DILocation(line: 78, column: 20, scope: !816)
!894 = !DILocation(line: 78, column: 3, scope: !816)
!895 = !DILocation(line: 78, column: 18, scope: !816)
!896 = !DILocation(line: 79, column: 2, scope: !816)
!897 = !DILocation(line: 80, column: 1, scope: !816)
!898 = distinct !DISubprogram(name: "acpi_os_free", scope: !899, file: !899, line: 60, type: !900, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!899 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!900 = !DISubroutineType(types: !901)
!901 = !{null, !124}
!902 = !DILocalVariable(name: "memory", arg: 1, scope: !898, file: !899, line: 60, type: !124)
!903 = !DILocation(line: 60, column: 39, scope: !898)
!904 = !DILocation(line: 62, column: 8, scope: !898)
!905 = !DILocation(line: 62, column: 2, scope: !898)
!906 = !DILocation(line: 63, column: 1, scope: !898)
!907 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !899, file: !899, line: 55, type: !908, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!908 = !DISubroutineType(types: !909)
!909 = !{!124, !800}
!910 = !DILocalVariable(name: "flags", arg: 1, scope: !911, file: !912, line: 162, type: !806)
!911 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !912, file: !912, line: 162, type: !913, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!912 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!913 = !DISubroutineType(types: !914)
!914 = !{!915, !806}
!915 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!916 = !DILocation(line: 162, column: 67, scope: !911, inlinedAt: !917)
!917 = distinct !DILocation(line: 57, column: 23, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !899, line: 57, column: 23)
!919 = distinct !DILexicalBlock(scope: !907, file: !899, line: 57, column: 23)
!920 = !DILocalVariable(name: "size", arg: 1, scope: !907, file: !899, line: 55, type: !800)
!921 = !DILocation(line: 55, column: 55, scope: !907)
!922 = !DILocation(line: 57, column: 17, scope: !907)
!923 = !DILocalVariable(name: "_flags", scope: !919, file: !899, line: 57, type: !806)
!924 = !DILocation(line: 57, column: 23, scope: !919)
!925 = !DILocalVariable(name: "__dummy", scope: !926, file: !899, line: 57, type: !806)
!926 = distinct !DILexicalBlock(scope: !927, file: !899, line: 57, column: 23)
!927 = distinct !DILexicalBlock(scope: !919, file: !899, line: 57, column: 23)
!928 = !DILocation(line: 57, column: 23, scope: !926)
!929 = !DILocalVariable(name: "__dummy2", scope: !926, file: !899, line: 57, type: !806)
!930 = !DILocation(line: 57, column: 23, scope: !927)
!931 = !DILocalVariable(name: "__dummy", scope: !932, file: !899, line: 57, type: !806)
!932 = distinct !DILexicalBlock(scope: !918, file: !899, line: 57, column: 23)
!933 = !DILocation(line: 57, column: 23, scope: !932)
!934 = !DILocalVariable(name: "__dummy2", scope: !932, file: !899, line: 57, type: !806)
!935 = !DILocation(line: 57, column: 23, scope: !918)
!936 = !DILocation(line: 164, column: 11, scope: !911, inlinedAt: !917)
!937 = !DILocation(line: 164, column: 17, scope: !911, inlinedAt: !917)
!938 = !DILocation(line: 164, column: 9, scope: !911, inlinedAt: !917)
!939 = !DILocation(line: 57, column: 23, scope: !907)
!940 = !DILocation(line: 57, column: 9, scope: !907)
!941 = !DILocation(line: 57, column: 2, scope: !907)
!942 = distinct !DISubprogram(name: "acpi_ev_io_space_region_setup", scope: !3, file: !3, line: 98, type: !729, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !817)
!943 = !DILocalVariable(name: "handle", arg: 1, scope: !942, file: !3, line: 98, type: !377)
!944 = !DILocation(line: 98, column: 43, scope: !942)
!945 = !DILocalVariable(name: "function", arg: 2, scope: !942, file: !3, line: 99, type: !62)
!946 = !DILocation(line: 99, column: 14, scope: !942)
!947 = !DILocalVariable(name: "handler_context", arg: 3, scope: !942, file: !3, line: 100, type: !124)
!948 = !DILocation(line: 100, column: 16, scope: !942)
!949 = !DILocalVariable(name: "region_context", arg: 4, scope: !942, file: !3, line: 100, type: !731)
!950 = !DILocation(line: 100, column: 40, scope: !942)
!951 = !DILocation(line: 104, column: 6, scope: !952)
!952 = distinct !DILexicalBlock(scope: !942, file: !3, line: 104, column: 6)
!953 = !DILocation(line: 104, column: 15, scope: !952)
!954 = !DILocation(line: 104, column: 6, scope: !942)
!955 = !DILocation(line: 105, column: 4, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !3, line: 104, column: 42)
!957 = !DILocation(line: 105, column: 19, scope: !956)
!958 = !DILocation(line: 106, column: 2, scope: !956)
!959 = !DILocation(line: 107, column: 21, scope: !960)
!960 = distinct !DILexicalBlock(scope: !952, file: !3, line: 106, column: 9)
!961 = !DILocation(line: 107, column: 4, scope: !960)
!962 = !DILocation(line: 107, column: 19, scope: !960)
!963 = !DILocation(line: 110, column: 2, scope: !942)
!964 = distinct !DISubprogram(name: "acpi_ev_pci_config_region_setup", scope: !3, file: !3, line: 131, type: !729, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !817)
!965 = !DILocalVariable(name: "handle", arg: 1, scope: !964, file: !3, line: 131, type: !377)
!966 = !DILocation(line: 131, column: 45, scope: !964)
!967 = !DILocalVariable(name: "function", arg: 2, scope: !964, file: !3, line: 132, type: !62)
!968 = !DILocation(line: 132, column: 9, scope: !964)
!969 = !DILocalVariable(name: "handler_context", arg: 3, scope: !964, file: !3, line: 133, type: !124)
!970 = !DILocation(line: 133, column: 11, scope: !964)
!971 = !DILocalVariable(name: "region_context", arg: 4, scope: !964, file: !3, line: 133, type: !731)
!972 = !DILocation(line: 133, column: 35, scope: !964)
!973 = !DILocalVariable(name: "status", scope: !964, file: !3, line: 135, type: !147)
!974 = !DILocation(line: 135, column: 14, scope: !964)
!975 = !DILocalVariable(name: "pci_value", scope: !964, file: !3, line: 136, type: !47)
!976 = !DILocation(line: 136, column: 6, scope: !964)
!977 = !DILocalVariable(name: "pci_id", scope: !964, file: !3, line: 137, type: !978)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_id", file: !100, line: 1197, size: 64, elements: !980)
!980 = !{!981, !982, !983, !984}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !979, file: !100, line: 1198, baseType: !30, size: 16)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !979, file: !100, line: 1199, baseType: !30, size: 16, offset: 16)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !979, file: !100, line: 1200, baseType: !30, size: 16, offset: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !979, file: !100, line: 1201, baseType: !30, size: 16, offset: 48)
!985 = !DILocation(line: 137, column: 22, scope: !964)
!986 = !DILocation(line: 137, column: 32, scope: !964)
!987 = !DILocation(line: 137, column: 31, scope: !964)
!988 = !DILocalVariable(name: "handler_obj", scope: !964, file: !3, line: 138, type: !14)
!989 = !DILocation(line: 138, column: 29, scope: !964)
!990 = !DILocalVariable(name: "parent_node", scope: !964, file: !3, line: 139, type: !78)
!991 = !DILocation(line: 139, column: 30, scope: !964)
!992 = !DILocalVariable(name: "pci_root_node", scope: !964, file: !3, line: 140, type: !78)
!993 = !DILocation(line: 140, column: 30, scope: !964)
!994 = !DILocalVariable(name: "pci_device_node", scope: !964, file: !3, line: 141, type: !78)
!995 = !DILocation(line: 141, column: 30, scope: !964)
!996 = !DILocalVariable(name: "region_obj", scope: !964, file: !3, line: 142, type: !14)
!997 = !DILocation(line: 142, column: 29, scope: !964)
!998 = !DILocation(line: 143, column: 35, scope: !964)
!999 = !DILocation(line: 143, column: 6, scope: !964)
!1000 = !DILocation(line: 147, column: 16, scope: !964)
!1001 = !DILocation(line: 147, column: 28, scope: !964)
!1002 = !DILocation(line: 147, column: 35, scope: !964)
!1003 = !DILocation(line: 147, column: 14, scope: !964)
!1004 = !DILocation(line: 148, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !964, file: !3, line: 148, column: 6)
!1006 = !DILocation(line: 148, column: 6, scope: !964)
!1007 = !DILocation(line: 156, column: 3, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 148, column: 20)
!1009 = !DILocation(line: 159, column: 3, scope: !964)
!1010 = !DILocation(line: 159, column: 18, scope: !964)
!1011 = !DILocation(line: 160, column: 6, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !964, file: !3, line: 160, column: 6)
!1013 = !DILocation(line: 160, column: 15, scope: !1012)
!1014 = !DILocation(line: 160, column: 6, scope: !964)
!1015 = !DILocation(line: 161, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 161, column: 7)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 160, column: 42)
!1018 = !DILocation(line: 161, column: 7, scope: !1017)
!1019 = !DILocation(line: 162, column: 4, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 161, column: 15)
!1021 = !DILocation(line: 163, column: 3, scope: !1020)
!1022 = !DILocation(line: 164, column: 3, scope: !1017)
!1023 = !DILocation(line: 167, column: 16, scope: !964)
!1024 = !DILocation(line: 167, column: 28, scope: !964)
!1025 = !DILocation(line: 167, column: 35, scope: !964)
!1026 = !DILocation(line: 167, column: 41, scope: !964)
!1027 = !DILocation(line: 167, column: 14, scope: !964)
!1028 = !DILocation(line: 182, column: 6, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !964, file: !3, line: 182, column: 6)
!1030 = !DILocation(line: 182, column: 19, scope: !1029)
!1031 = !DILocation(line: 182, column: 33, scope: !1029)
!1032 = !DILocation(line: 182, column: 41, scope: !1029)
!1033 = !DILocation(line: 182, column: 38, scope: !1029)
!1034 = !DILocation(line: 182, column: 6, scope: !964)
!1035 = !DILocation(line: 186, column: 19, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 182, column: 61)
!1037 = !DILocation(line: 186, column: 17, scope: !1036)
!1038 = !DILocation(line: 187, column: 3, scope: !1036)
!1039 = !DILocation(line: 187, column: 10, scope: !1036)
!1040 = !DILocation(line: 187, column: 27, scope: !1036)
!1041 = !DILocation(line: 187, column: 24, scope: !1036)
!1042 = !DILocation(line: 191, column: 35, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 191, column: 8)
!1044 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 187, column: 47)
!1045 = !DILocation(line: 191, column: 8, scope: !1043)
!1046 = !DILocation(line: 191, column: 8, scope: !1044)
!1047 = !DILocation(line: 195, column: 62, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 191, column: 51)
!1049 = !DILocation(line: 195, column: 49, scope: !1048)
!1050 = !DILocation(line: 195, column: 14, scope: !1048)
!1051 = !DILocation(line: 195, column: 12, scope: !1048)
!1052 = !DILocation(line: 196, column: 9, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 196, column: 9)
!1054 = !DILocation(line: 196, column: 9, scope: !1048)
!1055 = !DILocation(line: 197, column: 10, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 197, column: 10)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 196, column: 31)
!1058 = !DILocation(line: 197, column: 17, scope: !1056)
!1059 = !DILocation(line: 197, column: 10, scope: !1057)
!1060 = !DILocation(line: 203, column: 6, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 197, column: 37)
!1062 = !DILocation(line: 204, column: 7, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 203, column: 13)
!1064 = !DILocation(line: 210, column: 5, scope: !1057)
!1065 = !DILocation(line: 211, column: 5, scope: !1048)
!1066 = !DILocation(line: 214, column: 20, scope: !1044)
!1067 = !DILocation(line: 214, column: 35, scope: !1044)
!1068 = !DILocation(line: 214, column: 18, scope: !1044)
!1069 = distinct !{!1069, !1038, !1070}
!1070 = !DILocation(line: 215, column: 3, scope: !1036)
!1071 = !DILocation(line: 218, column: 2, scope: !1036)
!1072 = !DILocation(line: 219, column: 19, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 218, column: 9)
!1074 = !DILocation(line: 219, column: 32, scope: !1073)
!1075 = !DILocation(line: 219, column: 46, scope: !1073)
!1076 = !DILocation(line: 219, column: 17, scope: !1073)
!1077 = !DILocation(line: 226, column: 6, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !964, file: !3, line: 226, column: 6)
!1079 = !DILocation(line: 226, column: 18, scope: !1078)
!1080 = !DILocation(line: 226, column: 25, scope: !1078)
!1081 = !DILocation(line: 226, column: 31, scope: !1078)
!1082 = !DILocation(line: 226, column: 6, scope: !964)
!1083 = !DILocation(line: 227, column: 3, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 226, column: 56)
!1085 = !DILocation(line: 232, column: 11, scope: !964)
!1086 = !DILocation(line: 232, column: 9, scope: !964)
!1087 = !DILocation(line: 233, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !964, file: !3, line: 233, column: 6)
!1089 = !DILocation(line: 233, column: 6, scope: !964)
!1090 = !DILocation(line: 234, column: 3, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 233, column: 15)
!1092 = !DILocation(line: 244, column: 20, scope: !964)
!1093 = !DILocation(line: 244, column: 32, scope: !964)
!1094 = !DILocation(line: 244, column: 39, scope: !964)
!1095 = !DILocation(line: 244, column: 18, scope: !964)
!1096 = !DILocation(line: 245, column: 2, scope: !964)
!1097 = !DILocation(line: 245, column: 9, scope: !964)
!1098 = !DILocation(line: 245, column: 25, scope: !964)
!1099 = !DILocation(line: 245, column: 29, scope: !964)
!1100 = !DILocation(line: 245, column: 46, scope: !964)
!1101 = !DILocation(line: 245, column: 51, scope: !964)
!1102 = !DILocation(line: 0, scope: !964)
!1103 = !DILocation(line: 246, column: 21, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !964, file: !3, line: 245, column: 73)
!1105 = !DILocation(line: 246, column: 38, scope: !1104)
!1106 = !DILocation(line: 246, column: 19, scope: !1104)
!1107 = distinct !{!1107, !1096, !1108}
!1108 = !DILocation(line: 247, column: 2, scope: !964)
!1109 = !DILocation(line: 249, column: 7, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !964, file: !3, line: 249, column: 6)
!1111 = !DILocation(line: 249, column: 6, scope: !964)
!1112 = !DILocation(line: 250, column: 3, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 249, column: 24)
!1114 = !DILocation(line: 251, column: 3, scope: !1113)
!1115 = !DILocation(line: 259, column: 8, scope: !964)
!1116 = !DILocation(line: 258, column: 11, scope: !964)
!1117 = !DILocation(line: 258, column: 9, scope: !964)
!1118 = !DILocation(line: 265, column: 6, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !964, file: !3, line: 265, column: 6)
!1120 = !DILocation(line: 265, column: 6, scope: !964)
!1121 = !DILocation(line: 266, column: 20, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 265, column: 28)
!1123 = !DILocation(line: 266, column: 3, scope: !1122)
!1124 = !DILocation(line: 266, column: 11, scope: !1122)
!1125 = !DILocation(line: 266, column: 18, scope: !1122)
!1126 = !DILocation(line: 267, column: 22, scope: !1122)
!1127 = !DILocation(line: 267, column: 3, scope: !1122)
!1128 = !DILocation(line: 267, column: 11, scope: !1122)
!1129 = !DILocation(line: 267, column: 20, scope: !1122)
!1130 = !DILocation(line: 268, column: 2, scope: !1122)
!1131 = !DILocation(line: 273, column: 8, scope: !964)
!1132 = !DILocation(line: 272, column: 11, scope: !964)
!1133 = !DILocation(line: 272, column: 9, scope: !964)
!1134 = !DILocation(line: 274, column: 6, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !964, file: !3, line: 274, column: 6)
!1136 = !DILocation(line: 274, column: 6, scope: !964)
!1137 = !DILocation(line: 275, column: 21, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 274, column: 28)
!1139 = !DILocation(line: 275, column: 3, scope: !1138)
!1140 = !DILocation(line: 275, column: 11, scope: !1138)
!1141 = !DILocation(line: 275, column: 19, scope: !1138)
!1142 = !DILocation(line: 276, column: 2, scope: !1138)
!1143 = !DILocation(line: 281, column: 8, scope: !964)
!1144 = !DILocation(line: 280, column: 11, scope: !964)
!1145 = !DILocation(line: 280, column: 9, scope: !964)
!1146 = !DILocation(line: 282, column: 6, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !964, file: !3, line: 282, column: 6)
!1148 = !DILocation(line: 282, column: 6, scope: !964)
!1149 = !DILocation(line: 283, column: 17, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 282, column: 28)
!1151 = !DILocation(line: 283, column: 3, scope: !1150)
!1152 = !DILocation(line: 283, column: 11, scope: !1150)
!1153 = !DILocation(line: 283, column: 15, scope: !1150)
!1154 = !DILocation(line: 284, column: 2, scope: !1150)
!1155 = !DILocation(line: 289, column: 28, scope: !964)
!1156 = !DILocation(line: 289, column: 36, scope: !964)
!1157 = !DILocation(line: 290, column: 7, scope: !964)
!1158 = !DILocation(line: 290, column: 19, scope: !964)
!1159 = !DILocation(line: 290, column: 26, scope: !964)
!1160 = !DILocation(line: 289, column: 6, scope: !964)
!1161 = !DILocation(line: 288, column: 9, scope: !964)
!1162 = !DILocation(line: 291, column: 6, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !964, file: !3, line: 291, column: 6)
!1164 = !DILocation(line: 291, column: 6, scope: !964)
!1165 = !DILocation(line: 292, column: 3, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 291, column: 28)
!1167 = !DILocation(line: 293, column: 3, scope: !1166)
!1168 = !DILocation(line: 296, column: 20, scope: !964)
!1169 = !DILocation(line: 296, column: 3, scope: !964)
!1170 = !DILocation(line: 296, column: 18, scope: !964)
!1171 = !DILocation(line: 297, column: 2, scope: !964)
!1172 = !DILocation(line: 298, column: 1, scope: !964)
!1173 = distinct !DISubprogram(name: "acpi_ev_is_pci_root_bridge", scope: !3, file: !3, line: 313, type: !1174, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!23, !78}
!1176 = !DILocalVariable(name: "node", arg: 1, scope: !1173, file: !3, line: 313, type: !78)
!1177 = !DILocation(line: 313, column: 59, scope: !1173)
!1178 = !DILocalVariable(name: "status", scope: !1173, file: !3, line: 315, type: !147)
!1179 = !DILocation(line: 315, column: 14, scope: !1173)
!1180 = !DILocalVariable(name: "hid", scope: !1173, file: !3, line: 316, type: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id", file: !100, line: 1141, size: 128, elements: !1183)
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1182, file: !100, line: 1142, baseType: !62, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1182, file: !100, line: 1143, baseType: !59, size: 64, offset: 64)
!1186 = !DILocation(line: 316, column: 29, scope: !1173)
!1187 = !DILocalVariable(name: "cid", scope: !1173, file: !3, line: 317, type: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id_list", file: !100, line: 1146, size: 64, elements: !1190)
!1190 = !{!1191, !1192, !1193}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1189, file: !100, line: 1147, baseType: !62, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "list_size", scope: !1189, file: !100, line: 1148, baseType: !62, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1189, file: !100, line: 1149, baseType: !1194, offset: 64)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1182, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: -1)
!1197 = !DILocation(line: 317, column: 34, scope: !1173)
!1198 = !DILocalVariable(name: "i", scope: !1173, file: !3, line: 318, type: !62)
!1199 = !DILocation(line: 318, column: 6, scope: !1173)
!1200 = !DILocalVariable(name: "match", scope: !1173, file: !3, line: 319, type: !23)
!1201 = !DILocation(line: 319, column: 5, scope: !1173)
!1202 = !DILocation(line: 323, column: 31, scope: !1173)
!1203 = !DILocation(line: 323, column: 11, scope: !1173)
!1204 = !DILocation(line: 323, column: 9, scope: !1173)
!1205 = !DILocation(line: 324, column: 6, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 324, column: 6)
!1207 = !DILocation(line: 324, column: 6, scope: !1173)
!1208 = !DILocation(line: 325, column: 3, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 324, column: 28)
!1210 = !DILocation(line: 328, column: 37, scope: !1173)
!1211 = !DILocation(line: 328, column: 42, scope: !1173)
!1212 = !DILocation(line: 328, column: 10, scope: !1173)
!1213 = !DILocation(line: 328, column: 8, scope: !1173)
!1214 = !DILocation(line: 329, column: 2, scope: !1173)
!1215 = !DILocation(line: 331, column: 6, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 331, column: 6)
!1217 = !DILocation(line: 331, column: 6, scope: !1173)
!1218 = !DILocation(line: 332, column: 3, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 331, column: 13)
!1220 = !DILocation(line: 337, column: 31, scope: !1173)
!1221 = !DILocation(line: 337, column: 11, scope: !1173)
!1222 = !DILocation(line: 337, column: 9, scope: !1173)
!1223 = !DILocation(line: 338, column: 6, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 338, column: 6)
!1225 = !DILocation(line: 338, column: 6, scope: !1173)
!1226 = !DILocation(line: 339, column: 3, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 338, column: 28)
!1228 = !DILocation(line: 344, column: 9, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 344, column: 2)
!1230 = !DILocation(line: 344, column: 7, scope: !1229)
!1231 = !DILocation(line: 344, column: 14, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 344, column: 2)
!1233 = !DILocation(line: 344, column: 18, scope: !1232)
!1234 = !DILocation(line: 344, column: 23, scope: !1232)
!1235 = !DILocation(line: 344, column: 16, scope: !1232)
!1236 = !DILocation(line: 344, column: 2, scope: !1229)
!1237 = !DILocation(line: 345, column: 34, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 345, column: 7)
!1239 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 344, column: 35)
!1240 = !DILocation(line: 345, column: 39, scope: !1238)
!1241 = !DILocation(line: 345, column: 43, scope: !1238)
!1242 = !DILocation(line: 345, column: 46, scope: !1238)
!1243 = !DILocation(line: 345, column: 7, scope: !1238)
!1244 = !DILocation(line: 345, column: 7, scope: !1239)
!1245 = !DILocation(line: 346, column: 4, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 345, column: 55)
!1247 = !DILocation(line: 347, column: 4, scope: !1246)
!1248 = !DILocation(line: 349, column: 2, scope: !1239)
!1249 = !DILocation(line: 344, column: 31, scope: !1232)
!1250 = !DILocation(line: 344, column: 2, scope: !1232)
!1251 = distinct !{!1251, !1236, !1252}
!1252 = !DILocation(line: 349, column: 2, scope: !1229)
!1253 = !DILocation(line: 351, column: 2, scope: !1173)
!1254 = !DILocation(line: 352, column: 2, scope: !1173)
!1255 = !DILocation(line: 353, column: 1, scope: !1173)
!1256 = distinct !DISubprogram(name: "acpi_ev_pci_bar_region_setup", scope: !3, file: !3, line: 373, type: !729, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1257 = !DILocalVariable(name: "handle", arg: 1, scope: !1256, file: !3, line: 373, type: !377)
!1258 = !DILocation(line: 373, column: 42, scope: !1256)
!1259 = !DILocalVariable(name: "function", arg: 2, scope: !1256, file: !3, line: 374, type: !62)
!1260 = !DILocation(line: 374, column: 13, scope: !1256)
!1261 = !DILocalVariable(name: "handler_context", arg: 3, scope: !1256, file: !3, line: 375, type: !124)
!1262 = !DILocation(line: 375, column: 15, scope: !1256)
!1263 = !DILocalVariable(name: "region_context", arg: 4, scope: !1256, file: !3, line: 375, type: !731)
!1264 = !DILocation(line: 375, column: 39, scope: !1256)
!1265 = !DILocation(line: 379, column: 2, scope: !1256)
!1266 = distinct !DISubprogram(name: "acpi_ev_cmos_region_setup", scope: !3, file: !3, line: 400, type: !729, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1267 = !DILocalVariable(name: "handle", arg: 1, scope: !1266, file: !3, line: 400, type: !377)
!1268 = !DILocation(line: 400, column: 39, scope: !1266)
!1269 = !DILocalVariable(name: "function", arg: 2, scope: !1266, file: !3, line: 401, type: !62)
!1270 = !DILocation(line: 401, column: 10, scope: !1266)
!1271 = !DILocalVariable(name: "handler_context", arg: 3, scope: !1266, file: !3, line: 402, type: !124)
!1272 = !DILocation(line: 402, column: 12, scope: !1266)
!1273 = !DILocalVariable(name: "region_context", arg: 4, scope: !1266, file: !3, line: 402, type: !731)
!1274 = !DILocation(line: 402, column: 36, scope: !1266)
!1275 = !DILocation(line: 406, column: 2, scope: !1266)
!1276 = distinct !DISubprogram(name: "acpi_ev_default_region_setup", scope: !3, file: !3, line: 425, type: !729, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1277 = !DILocalVariable(name: "handle", arg: 1, scope: !1276, file: !3, line: 425, type: !377)
!1278 = !DILocation(line: 425, column: 42, scope: !1276)
!1279 = !DILocalVariable(name: "function", arg: 2, scope: !1276, file: !3, line: 426, type: !62)
!1280 = !DILocation(line: 426, column: 13, scope: !1276)
!1281 = !DILocalVariable(name: "handler_context", arg: 3, scope: !1276, file: !3, line: 427, type: !124)
!1282 = !DILocation(line: 427, column: 15, scope: !1276)
!1283 = !DILocalVariable(name: "region_context", arg: 4, scope: !1276, file: !3, line: 427, type: !731)
!1284 = !DILocation(line: 427, column: 39, scope: !1276)
!1285 = !DILocation(line: 431, column: 6, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 431, column: 6)
!1287 = !DILocation(line: 431, column: 15, scope: !1286)
!1288 = !DILocation(line: 431, column: 6, scope: !1276)
!1289 = !DILocation(line: 432, column: 4, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 431, column: 42)
!1291 = !DILocation(line: 432, column: 19, scope: !1290)
!1292 = !DILocation(line: 433, column: 2, scope: !1290)
!1293 = !DILocation(line: 434, column: 21, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 433, column: 9)
!1295 = !DILocation(line: 434, column: 4, scope: !1294)
!1296 = !DILocation(line: 434, column: 19, scope: !1294)
!1297 = !DILocation(line: 437, column: 2, scope: !1276)
!1298 = distinct !DISubprogram(name: "acpi_ev_initialize_region", scope: !3, file: !3, line: 476, type: !1299, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!147, !14}
!1301 = !DILocalVariable(name: "region_obj", arg: 1, scope: !1298, file: !3, line: 476, type: !14)
!1302 = !DILocation(line: 476, column: 66, scope: !1298)
!1303 = !DILocalVariable(name: "handler_obj", scope: !1298, file: !3, line: 478, type: !14)
!1304 = !DILocation(line: 478, column: 29, scope: !1298)
!1305 = !DILocalVariable(name: "obj_desc", scope: !1298, file: !3, line: 479, type: !14)
!1306 = !DILocation(line: 479, column: 29, scope: !1298)
!1307 = !DILocalVariable(name: "space_id", scope: !1298, file: !3, line: 480, type: !803)
!1308 = !DILocation(line: 480, column: 22, scope: !1298)
!1309 = !DILocalVariable(name: "node", scope: !1298, file: !3, line: 481, type: !78)
!1310 = !DILocation(line: 481, column: 30, scope: !1298)
!1311 = !DILocation(line: 485, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 485, column: 6)
!1313 = !DILocation(line: 485, column: 6, scope: !1298)
!1314 = !DILocation(line: 486, column: 3, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 485, column: 19)
!1316 = !DILocation(line: 489, column: 6, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 489, column: 6)
!1318 = !DILocation(line: 489, column: 18, scope: !1317)
!1319 = !DILocation(line: 489, column: 25, scope: !1317)
!1320 = !DILocation(line: 489, column: 31, scope: !1317)
!1321 = !DILocation(line: 489, column: 6, scope: !1298)
!1322 = !DILocation(line: 490, column: 3, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 489, column: 60)
!1324 = !DILocation(line: 493, column: 2, scope: !1298)
!1325 = !DILocation(line: 493, column: 14, scope: !1298)
!1326 = !DILocation(line: 493, column: 21, scope: !1298)
!1327 = !DILocation(line: 493, column: 27, scope: !1298)
!1328 = !DILocation(line: 495, column: 9, scope: !1298)
!1329 = !DILocation(line: 495, column: 21, scope: !1298)
!1330 = !DILocation(line: 495, column: 28, scope: !1298)
!1331 = !DILocation(line: 495, column: 34, scope: !1298)
!1332 = !DILocation(line: 495, column: 7, scope: !1298)
!1333 = !DILocation(line: 496, column: 13, scope: !1298)
!1334 = !DILocation(line: 496, column: 25, scope: !1298)
!1335 = !DILocation(line: 496, column: 32, scope: !1298)
!1336 = !DILocation(line: 496, column: 11, scope: !1298)
!1337 = !DILocation(line: 502, column: 2, scope: !1298)
!1338 = !DILocation(line: 502, column: 9, scope: !1298)
!1339 = !DILocation(line: 506, column: 15, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 502, column: 15)
!1341 = !DILocation(line: 507, column: 42, scope: !1340)
!1342 = !DILocation(line: 507, column: 14, scope: !1340)
!1343 = !DILocation(line: 507, column: 12, scope: !1340)
!1344 = !DILocation(line: 508, column: 7, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 508, column: 7)
!1346 = !DILocation(line: 508, column: 7, scope: !1340)
!1347 = !DILocation(line: 512, column: 12, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 508, column: 17)
!1349 = !DILocation(line: 512, column: 18, scope: !1348)
!1350 = !DILocation(line: 512, column: 4, scope: !1348)
!1351 = !DILocation(line: 517, column: 19, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 512, column: 24)
!1353 = !DILocation(line: 517, column: 29, scope: !1352)
!1354 = !DILocation(line: 517, column: 43, scope: !1352)
!1355 = !DILocation(line: 517, column: 17, scope: !1352)
!1356 = !DILocation(line: 518, column: 5, scope: !1352)
!1357 = !DILocation(line: 524, column: 5, scope: !1352)
!1358 = !DILocation(line: 528, column: 36, scope: !1348)
!1359 = !DILocation(line: 528, column: 46, scope: !1348)
!1360 = !DILocation(line: 528, column: 8, scope: !1348)
!1361 = !DILocation(line: 527, column: 16, scope: !1348)
!1362 = !DILocation(line: 529, column: 8, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 529, column: 8)
!1364 = !DILocation(line: 529, column: 8, scope: !1348)
!1365 = !DILocation(line: 538, column: 33, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 529, column: 21)
!1367 = !DILocation(line: 539, column: 12, scope: !1366)
!1368 = !DILocation(line: 538, column: 11, scope: !1366)
!1369 = !DILocation(line: 545, column: 5, scope: !1366)
!1370 = !DILocation(line: 546, column: 38, scope: !1366)
!1371 = !DILocation(line: 546, column: 11, scope: !1366)
!1372 = !DILocation(line: 548, column: 5, scope: !1366)
!1373 = !DILocation(line: 549, column: 5, scope: !1366)
!1374 = !DILocation(line: 551, column: 3, scope: !1348)
!1375 = !DILocation(line: 555, column: 10, scope: !1340)
!1376 = !DILocation(line: 555, column: 16, scope: !1340)
!1377 = !DILocation(line: 555, column: 8, scope: !1340)
!1378 = distinct !{!1378, !1337, !1379}
!1379 = !DILocation(line: 556, column: 2, scope: !1298)
!1380 = !DILocation(line: 568, column: 2, scope: !1298)
!1381 = !DILocation(line: 569, column: 1, scope: !1298)
!1382 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1383, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!124, !1385, !804}
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !805, line: 55, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1387, line: 72, baseType: !1388)
!1387 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1387, line: 16, baseType: !806)
!1389 = !DILocalVariable(name: "s", arg: 1, scope: !1390, file: !6, line: 445, type: !1393)
!1390 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1391, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!124, !1393, !804, !1385}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1395, line: 117, flags: DIFlagFwdDecl)
!1395 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1396 = !DILocation(line: 445, column: 72, scope: !1390, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 552, column: 10, scope: !1398, inlinedAt: !1401)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 540, column: 34)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !6, line: 540, column: 6)
!1400 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1383, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1401 = distinct !DILocation(line: 664, column: 9, scope: !1382)
!1402 = !DILocalVariable(name: "flags", arg: 2, scope: !1390, file: !6, line: 446, type: !804)
!1403 = !DILocation(line: 446, column: 9, scope: !1390, inlinedAt: !1397)
!1404 = !DILocalVariable(name: "size", arg: 3, scope: !1390, file: !6, line: 446, type: !1385)
!1405 = !DILocation(line: 446, column: 23, scope: !1390, inlinedAt: !1397)
!1406 = !DILocalVariable(name: "ret", scope: !1390, file: !6, line: 448, type: !124)
!1407 = !DILocation(line: 448, column: 8, scope: !1390, inlinedAt: !1397)
!1408 = !DILocalVariable(name: "flags", arg: 1, scope: !1409, file: !6, line: 318, type: !804)
!1409 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1410, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!5, !804}
!1412 = !DILocation(line: 318, column: 67, scope: !1409, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 553, column: 20, scope: !1398, inlinedAt: !1401)
!1414 = !DILocalVariable(name: "size", arg: 1, scope: !1415, file: !6, line: 346, type: !1385)
!1415 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1416, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!7, !1385}
!1418 = !DILocation(line: 346, column: 58, scope: !1415, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 547, column: 11, scope: !1398, inlinedAt: !1401)
!1420 = !DILocalVariable(name: "size", arg: 1, scope: !1421, file: !6, line: 472, type: !1385)
!1421 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1422, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!124, !1385, !804, !7}
!1424 = !DILocation(line: 472, column: 28, scope: !1421, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 481, column: 9, scope: !1426, inlinedAt: !1427)
!1426 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1383, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1427 = distinct !DILocation(line: 545, column: 11, scope: !1428, inlinedAt: !1401)
!1428 = distinct !DILexicalBlock(scope: !1398, file: !6, line: 544, column: 7)
!1429 = !DILocalVariable(name: "flags", arg: 2, scope: !1421, file: !6, line: 472, type: !804)
!1430 = !DILocation(line: 472, column: 40, scope: !1421, inlinedAt: !1425)
!1431 = !DILocalVariable(name: "order", arg: 3, scope: !1421, file: !6, line: 472, type: !7)
!1432 = !DILocation(line: 472, column: 60, scope: !1421, inlinedAt: !1425)
!1433 = !DILocalVariable(name: "size", arg: 1, scope: !1426, file: !6, line: 478, type: !1385)
!1434 = !DILocation(line: 478, column: 51, scope: !1426, inlinedAt: !1427)
!1435 = !DILocalVariable(name: "flags", arg: 2, scope: !1426, file: !6, line: 478, type: !804)
!1436 = !DILocation(line: 478, column: 63, scope: !1426, inlinedAt: !1427)
!1437 = !DILocalVariable(name: "order", scope: !1426, file: !6, line: 480, type: !7)
!1438 = !DILocation(line: 480, column: 15, scope: !1426, inlinedAt: !1427)
!1439 = !DILocalVariable(name: "size", arg: 1, scope: !1400, file: !6, line: 538, type: !1385)
!1440 = !DILocation(line: 538, column: 45, scope: !1400, inlinedAt: !1401)
!1441 = !DILocalVariable(name: "flags", arg: 2, scope: !1400, file: !6, line: 538, type: !804)
!1442 = !DILocation(line: 538, column: 57, scope: !1400, inlinedAt: !1401)
!1443 = !DILocalVariable(name: "index", scope: !1398, file: !6, line: 542, type: !7)
!1444 = !DILocation(line: 542, column: 16, scope: !1398, inlinedAt: !1401)
!1445 = !DILocalVariable(name: "size", arg: 1, scope: !1382, file: !6, line: 662, type: !1385)
!1446 = !DILocation(line: 662, column: 36, scope: !1382)
!1447 = !DILocalVariable(name: "flags", arg: 2, scope: !1382, file: !6, line: 662, type: !804)
!1448 = !DILocation(line: 662, column: 48, scope: !1382)
!1449 = !DILocation(line: 664, column: 17, scope: !1382)
!1450 = !DILocation(line: 664, column: 23, scope: !1382)
!1451 = !DILocation(line: 664, column: 29, scope: !1382)
!1452 = !DILocation(line: 540, column: 27, scope: !1399, inlinedAt: !1401)
!1453 = !DILocation(line: 540, column: 6, scope: !1399, inlinedAt: !1401)
!1454 = !DILocation(line: 540, column: 6, scope: !1400, inlinedAt: !1401)
!1455 = !DILocation(line: 544, column: 7, scope: !1428, inlinedAt: !1401)
!1456 = !DILocation(line: 544, column: 12, scope: !1428, inlinedAt: !1401)
!1457 = !DILocation(line: 544, column: 7, scope: !1398, inlinedAt: !1401)
!1458 = !DILocation(line: 545, column: 25, scope: !1428, inlinedAt: !1401)
!1459 = !DILocation(line: 545, column: 31, scope: !1428, inlinedAt: !1401)
!1460 = !DILocation(line: 480, column: 33, scope: !1426, inlinedAt: !1427)
!1461 = !DILocation(line: 480, column: 23, scope: !1426, inlinedAt: !1427)
!1462 = !DILocation(line: 481, column: 29, scope: !1426, inlinedAt: !1427)
!1463 = !DILocation(line: 481, column: 35, scope: !1426, inlinedAt: !1427)
!1464 = !DILocation(line: 481, column: 42, scope: !1426, inlinedAt: !1427)
!1465 = !DILocation(line: 474, column: 23, scope: !1421, inlinedAt: !1425)
!1466 = !DILocation(line: 474, column: 29, scope: !1421, inlinedAt: !1425)
!1467 = !DILocation(line: 474, column: 36, scope: !1421, inlinedAt: !1425)
!1468 = !DILocation(line: 474, column: 9, scope: !1421, inlinedAt: !1425)
!1469 = !DILocation(line: 545, column: 4, scope: !1428, inlinedAt: !1401)
!1470 = !DILocation(line: 547, column: 25, scope: !1398, inlinedAt: !1401)
!1471 = !DILocation(line: 348, column: 7, scope: !1472, inlinedAt: !1419)
!1472 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 348, column: 6)
!1473 = !DILocation(line: 348, column: 6, scope: !1415, inlinedAt: !1419)
!1474 = !DILocation(line: 349, column: 3, scope: !1472, inlinedAt: !1419)
!1475 = !DILocation(line: 351, column: 6, scope: !1476, inlinedAt: !1419)
!1476 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 351, column: 6)
!1477 = !DILocation(line: 351, column: 11, scope: !1476, inlinedAt: !1419)
!1478 = !DILocation(line: 351, column: 6, scope: !1415, inlinedAt: !1419)
!1479 = !DILocation(line: 352, column: 3, scope: !1476, inlinedAt: !1419)
!1480 = !DILocation(line: 354, column: 32, scope: !1481, inlinedAt: !1419)
!1481 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 354, column: 6)
!1482 = !DILocation(line: 354, column: 37, scope: !1481, inlinedAt: !1419)
!1483 = !DILocation(line: 354, column: 42, scope: !1481, inlinedAt: !1419)
!1484 = !DILocation(line: 354, column: 45, scope: !1481, inlinedAt: !1419)
!1485 = !DILocation(line: 354, column: 50, scope: !1481, inlinedAt: !1419)
!1486 = !DILocation(line: 354, column: 6, scope: !1415, inlinedAt: !1419)
!1487 = !DILocation(line: 355, column: 3, scope: !1481, inlinedAt: !1419)
!1488 = !DILocation(line: 356, column: 32, scope: !1489, inlinedAt: !1419)
!1489 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 356, column: 6)
!1490 = !DILocation(line: 356, column: 37, scope: !1489, inlinedAt: !1419)
!1491 = !DILocation(line: 356, column: 43, scope: !1489, inlinedAt: !1419)
!1492 = !DILocation(line: 356, column: 46, scope: !1489, inlinedAt: !1419)
!1493 = !DILocation(line: 356, column: 51, scope: !1489, inlinedAt: !1419)
!1494 = !DILocation(line: 356, column: 6, scope: !1415, inlinedAt: !1419)
!1495 = !DILocation(line: 357, column: 3, scope: !1489, inlinedAt: !1419)
!1496 = !DILocation(line: 358, column: 6, scope: !1497, inlinedAt: !1419)
!1497 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 358, column: 6)
!1498 = !DILocation(line: 358, column: 11, scope: !1497, inlinedAt: !1419)
!1499 = !DILocation(line: 358, column: 6, scope: !1415, inlinedAt: !1419)
!1500 = !DILocation(line: 358, column: 26, scope: !1497, inlinedAt: !1419)
!1501 = !DILocation(line: 359, column: 6, scope: !1502, inlinedAt: !1419)
!1502 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 359, column: 6)
!1503 = !DILocation(line: 359, column: 11, scope: !1502, inlinedAt: !1419)
!1504 = !DILocation(line: 359, column: 6, scope: !1415, inlinedAt: !1419)
!1505 = !DILocation(line: 359, column: 26, scope: !1502, inlinedAt: !1419)
!1506 = !DILocation(line: 360, column: 6, scope: !1507, inlinedAt: !1419)
!1507 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 360, column: 6)
!1508 = !DILocation(line: 360, column: 11, scope: !1507, inlinedAt: !1419)
!1509 = !DILocation(line: 360, column: 6, scope: !1415, inlinedAt: !1419)
!1510 = !DILocation(line: 360, column: 26, scope: !1507, inlinedAt: !1419)
!1511 = !DILocation(line: 361, column: 6, scope: !1512, inlinedAt: !1419)
!1512 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 361, column: 6)
!1513 = !DILocation(line: 361, column: 11, scope: !1512, inlinedAt: !1419)
!1514 = !DILocation(line: 361, column: 6, scope: !1415, inlinedAt: !1419)
!1515 = !DILocation(line: 361, column: 26, scope: !1512, inlinedAt: !1419)
!1516 = !DILocation(line: 362, column: 6, scope: !1517, inlinedAt: !1419)
!1517 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 362, column: 6)
!1518 = !DILocation(line: 362, column: 11, scope: !1517, inlinedAt: !1419)
!1519 = !DILocation(line: 362, column: 6, scope: !1415, inlinedAt: !1419)
!1520 = !DILocation(line: 362, column: 26, scope: !1517, inlinedAt: !1419)
!1521 = !DILocation(line: 363, column: 6, scope: !1522, inlinedAt: !1419)
!1522 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 363, column: 6)
!1523 = !DILocation(line: 363, column: 11, scope: !1522, inlinedAt: !1419)
!1524 = !DILocation(line: 363, column: 6, scope: !1415, inlinedAt: !1419)
!1525 = !DILocation(line: 363, column: 26, scope: !1522, inlinedAt: !1419)
!1526 = !DILocation(line: 364, column: 6, scope: !1527, inlinedAt: !1419)
!1527 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 364, column: 6)
!1528 = !DILocation(line: 364, column: 11, scope: !1527, inlinedAt: !1419)
!1529 = !DILocation(line: 364, column: 6, scope: !1415, inlinedAt: !1419)
!1530 = !DILocation(line: 364, column: 26, scope: !1527, inlinedAt: !1419)
!1531 = !DILocation(line: 365, column: 6, scope: !1532, inlinedAt: !1419)
!1532 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 365, column: 6)
!1533 = !DILocation(line: 365, column: 11, scope: !1532, inlinedAt: !1419)
!1534 = !DILocation(line: 365, column: 6, scope: !1415, inlinedAt: !1419)
!1535 = !DILocation(line: 365, column: 26, scope: !1532, inlinedAt: !1419)
!1536 = !DILocation(line: 366, column: 6, scope: !1537, inlinedAt: !1419)
!1537 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 366, column: 6)
!1538 = !DILocation(line: 366, column: 11, scope: !1537, inlinedAt: !1419)
!1539 = !DILocation(line: 366, column: 6, scope: !1415, inlinedAt: !1419)
!1540 = !DILocation(line: 366, column: 26, scope: !1537, inlinedAt: !1419)
!1541 = !DILocation(line: 367, column: 6, scope: !1542, inlinedAt: !1419)
!1542 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 367, column: 6)
!1543 = !DILocation(line: 367, column: 11, scope: !1542, inlinedAt: !1419)
!1544 = !DILocation(line: 367, column: 6, scope: !1415, inlinedAt: !1419)
!1545 = !DILocation(line: 367, column: 26, scope: !1542, inlinedAt: !1419)
!1546 = !DILocation(line: 368, column: 6, scope: !1547, inlinedAt: !1419)
!1547 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 368, column: 6)
!1548 = !DILocation(line: 368, column: 11, scope: !1547, inlinedAt: !1419)
!1549 = !DILocation(line: 368, column: 6, scope: !1415, inlinedAt: !1419)
!1550 = !DILocation(line: 368, column: 26, scope: !1547, inlinedAt: !1419)
!1551 = !DILocation(line: 369, column: 6, scope: !1552, inlinedAt: !1419)
!1552 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 369, column: 6)
!1553 = !DILocation(line: 369, column: 11, scope: !1552, inlinedAt: !1419)
!1554 = !DILocation(line: 369, column: 6, scope: !1415, inlinedAt: !1419)
!1555 = !DILocation(line: 369, column: 26, scope: !1552, inlinedAt: !1419)
!1556 = !DILocation(line: 370, column: 6, scope: !1557, inlinedAt: !1419)
!1557 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 370, column: 6)
!1558 = !DILocation(line: 370, column: 11, scope: !1557, inlinedAt: !1419)
!1559 = !DILocation(line: 370, column: 6, scope: !1415, inlinedAt: !1419)
!1560 = !DILocation(line: 370, column: 26, scope: !1557, inlinedAt: !1419)
!1561 = !DILocation(line: 371, column: 6, scope: !1562, inlinedAt: !1419)
!1562 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 371, column: 6)
!1563 = !DILocation(line: 371, column: 11, scope: !1562, inlinedAt: !1419)
!1564 = !DILocation(line: 371, column: 6, scope: !1415, inlinedAt: !1419)
!1565 = !DILocation(line: 371, column: 26, scope: !1562, inlinedAt: !1419)
!1566 = !DILocation(line: 372, column: 6, scope: !1567, inlinedAt: !1419)
!1567 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 372, column: 6)
!1568 = !DILocation(line: 372, column: 11, scope: !1567, inlinedAt: !1419)
!1569 = !DILocation(line: 372, column: 6, scope: !1415, inlinedAt: !1419)
!1570 = !DILocation(line: 372, column: 26, scope: !1567, inlinedAt: !1419)
!1571 = !DILocation(line: 373, column: 6, scope: !1572, inlinedAt: !1419)
!1572 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 373, column: 6)
!1573 = !DILocation(line: 373, column: 11, scope: !1572, inlinedAt: !1419)
!1574 = !DILocation(line: 373, column: 6, scope: !1415, inlinedAt: !1419)
!1575 = !DILocation(line: 373, column: 26, scope: !1572, inlinedAt: !1419)
!1576 = !DILocation(line: 374, column: 6, scope: !1577, inlinedAt: !1419)
!1577 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 374, column: 6)
!1578 = !DILocation(line: 374, column: 11, scope: !1577, inlinedAt: !1419)
!1579 = !DILocation(line: 374, column: 6, scope: !1415, inlinedAt: !1419)
!1580 = !DILocation(line: 374, column: 26, scope: !1577, inlinedAt: !1419)
!1581 = !DILocation(line: 375, column: 6, scope: !1582, inlinedAt: !1419)
!1582 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 375, column: 6)
!1583 = !DILocation(line: 375, column: 11, scope: !1582, inlinedAt: !1419)
!1584 = !DILocation(line: 375, column: 6, scope: !1415, inlinedAt: !1419)
!1585 = !DILocation(line: 375, column: 27, scope: !1582, inlinedAt: !1419)
!1586 = !DILocation(line: 376, column: 6, scope: !1587, inlinedAt: !1419)
!1587 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 376, column: 6)
!1588 = !DILocation(line: 376, column: 11, scope: !1587, inlinedAt: !1419)
!1589 = !DILocation(line: 376, column: 6, scope: !1415, inlinedAt: !1419)
!1590 = !DILocation(line: 376, column: 32, scope: !1587, inlinedAt: !1419)
!1591 = !DILocation(line: 377, column: 6, scope: !1592, inlinedAt: !1419)
!1592 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 377, column: 6)
!1593 = !DILocation(line: 377, column: 11, scope: !1592, inlinedAt: !1419)
!1594 = !DILocation(line: 377, column: 6, scope: !1415, inlinedAt: !1419)
!1595 = !DILocation(line: 377, column: 32, scope: !1592, inlinedAt: !1419)
!1596 = !DILocation(line: 378, column: 6, scope: !1597, inlinedAt: !1419)
!1597 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 378, column: 6)
!1598 = !DILocation(line: 378, column: 11, scope: !1597, inlinedAt: !1419)
!1599 = !DILocation(line: 378, column: 6, scope: !1415, inlinedAt: !1419)
!1600 = !DILocation(line: 378, column: 32, scope: !1597, inlinedAt: !1419)
!1601 = !DILocation(line: 379, column: 6, scope: !1602, inlinedAt: !1419)
!1602 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 379, column: 6)
!1603 = !DILocation(line: 379, column: 11, scope: !1602, inlinedAt: !1419)
!1604 = !DILocation(line: 379, column: 6, scope: !1415, inlinedAt: !1419)
!1605 = !DILocation(line: 379, column: 33, scope: !1602, inlinedAt: !1419)
!1606 = !DILocation(line: 380, column: 6, scope: !1607, inlinedAt: !1419)
!1607 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 380, column: 6)
!1608 = !DILocation(line: 380, column: 11, scope: !1607, inlinedAt: !1419)
!1609 = !DILocation(line: 380, column: 6, scope: !1415, inlinedAt: !1419)
!1610 = !DILocation(line: 380, column: 33, scope: !1607, inlinedAt: !1419)
!1611 = !DILocation(line: 381, column: 6, scope: !1612, inlinedAt: !1419)
!1612 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 381, column: 6)
!1613 = !DILocation(line: 381, column: 11, scope: !1612, inlinedAt: !1419)
!1614 = !DILocation(line: 381, column: 6, scope: !1415, inlinedAt: !1419)
!1615 = !DILocation(line: 381, column: 33, scope: !1612, inlinedAt: !1419)
!1616 = !DILocation(line: 382, column: 2, scope: !1617, inlinedAt: !1419)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !6, line: 382, column: 2)
!1618 = distinct !DILexicalBlock(scope: !1415, file: !6, line: 382, column: 2)
!1619 = !{i32 -2144103662, i32 -2144103633, i32 -2144103587, i32 -2144103529, i32 -2144103475, i32 -2144103421, i32 -2144103366, i32 -2144103335}
!1620 = !DILocation(line: 382, column: 2, scope: !1621, inlinedAt: !1419)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !6, line: 382, column: 2)
!1622 = distinct !DILexicalBlock(scope: !1618, file: !6, line: 382, column: 2)
!1623 = !{i32 -2144102892, i32 -2144102885, i32 -2144102831, i32 -2144102800, i32 -2144102770}
!1624 = !DILocation(line: 382, column: 2, scope: !1622, inlinedAt: !1419)
!1625 = !DILocation(line: 386, column: 1, scope: !1415, inlinedAt: !1419)
!1626 = !DILocation(line: 547, column: 9, scope: !1398, inlinedAt: !1401)
!1627 = !DILocation(line: 549, column: 8, scope: !1628, inlinedAt: !1401)
!1628 = distinct !DILexicalBlock(scope: !1398, file: !6, line: 549, column: 7)
!1629 = !DILocation(line: 549, column: 7, scope: !1398, inlinedAt: !1401)
!1630 = !DILocation(line: 550, column: 4, scope: !1628, inlinedAt: !1401)
!1631 = !DILocation(line: 553, column: 33, scope: !1398, inlinedAt: !1401)
!1632 = !DILocation(line: 325, column: 6, scope: !1633, inlinedAt: !1413)
!1633 = distinct !DILexicalBlock(scope: !1409, file: !6, line: 325, column: 6)
!1634 = !DILocation(line: 325, column: 6, scope: !1409, inlinedAt: !1413)
!1635 = !DILocation(line: 326, column: 3, scope: !1633, inlinedAt: !1413)
!1636 = !DILocation(line: 332, column: 9, scope: !1409, inlinedAt: !1413)
!1637 = !DILocation(line: 332, column: 15, scope: !1409, inlinedAt: !1413)
!1638 = !DILocation(line: 332, column: 2, scope: !1409, inlinedAt: !1413)
!1639 = !DILocation(line: 336, column: 1, scope: !1409, inlinedAt: !1413)
!1640 = !DILocation(line: 553, column: 5, scope: !1398, inlinedAt: !1401)
!1641 = !DILocation(line: 553, column: 41, scope: !1398, inlinedAt: !1401)
!1642 = !DILocation(line: 554, column: 5, scope: !1398, inlinedAt: !1401)
!1643 = !DILocation(line: 554, column: 12, scope: !1398, inlinedAt: !1401)
!1644 = !DILocation(line: 448, column: 31, scope: !1390, inlinedAt: !1397)
!1645 = !DILocation(line: 448, column: 34, scope: !1390, inlinedAt: !1397)
!1646 = !DILocation(line: 448, column: 14, scope: !1390, inlinedAt: !1397)
!1647 = !DILocation(line: 450, column: 22, scope: !1390, inlinedAt: !1397)
!1648 = !DILocation(line: 450, column: 25, scope: !1390, inlinedAt: !1397)
!1649 = !DILocation(line: 450, column: 30, scope: !1390, inlinedAt: !1397)
!1650 = !DILocation(line: 450, column: 36, scope: !1390, inlinedAt: !1397)
!1651 = !DILocation(line: 450, column: 8, scope: !1390, inlinedAt: !1397)
!1652 = !DILocation(line: 450, column: 6, scope: !1390, inlinedAt: !1397)
!1653 = !DILocation(line: 451, column: 9, scope: !1390, inlinedAt: !1397)
!1654 = !DILocation(line: 552, column: 3, scope: !1398, inlinedAt: !1401)
!1655 = !DILocation(line: 557, column: 19, scope: !1400, inlinedAt: !1401)
!1656 = !DILocation(line: 557, column: 25, scope: !1400, inlinedAt: !1401)
!1657 = !DILocation(line: 557, column: 9, scope: !1400, inlinedAt: !1401)
!1658 = !DILocation(line: 557, column: 2, scope: !1400, inlinedAt: !1401)
!1659 = !DILocation(line: 558, column: 1, scope: !1400, inlinedAt: !1401)
!1660 = !DILocation(line: 664, column: 2, scope: !1382)
!1661 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1662, file: !1662, line: 646, type: !1663, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1662 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!806}
!1665 = !DILocalVariable(name: "__ret", scope: !1666, file: !1662, line: 648, type: !806)
!1666 = distinct !DILexicalBlock(scope: !1661, file: !1662, line: 648, column: 9)
!1667 = !DILocation(line: 648, column: 9, scope: !1666)
!1668 = !DILocalVariable(name: "__edi", scope: !1666, file: !1662, line: 648, type: !806)
!1669 = !DILocalVariable(name: "__esi", scope: !1666, file: !1662, line: 648, type: !806)
!1670 = !DILocalVariable(name: "__edx", scope: !1666, file: !1662, line: 648, type: !806)
!1671 = !DILocalVariable(name: "__ecx", scope: !1666, file: !1662, line: 648, type: !806)
!1672 = !DILocalVariable(name: "__eax", scope: !1666, file: !1662, line: 648, type: !806)
!1673 = !DILocation(line: 648, column: 9, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !1662, line: 648, column: 9)
!1675 = distinct !DILexicalBlock(scope: !1666, file: !1662, line: 648, column: 9)
!1676 = !{i32 -2145777268, i32 -2145774953, i32 -2145774719, i32 -2145774668, i32 -2145774640, i32 -2145774615, i32 -2145774931, i32 -2145774918, i32 -2145774480, i32 -2145774361, i32 -2145774826, i32 -2145774799, i32 -2145774771, i32 -2145774741}
!1677 = !DILocalVariable(name: "__mask", scope: !1678, file: !1662, line: 648, type: !806)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !1662, line: 648, column: 9)
!1679 = !DILocation(line: 648, column: 9, scope: !1678)
!1680 = !DILocation(line: 648, column: 9, scope: !1675)
!1681 = !DILocation(line: 648, column: 2, scope: !1661)
!1682 = distinct !DISubprogram(name: "get_order", scope: !1683, file: !1683, line: 29, type: !913, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1683 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !DILocalVariable(name: "x", arg: 1, scope: !1685, file: !1686, line: 366, type: !48)
!1685 = distinct !DISubprogram(name: "fls64", scope: !1686, file: !1686, line: 366, type: !1687, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1686 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!915, !48}
!1689 = !DILocation(line: 366, column: 40, scope: !1685, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 46, column: 9, scope: !1682)
!1691 = !DILocalVariable(name: "bitpos", scope: !1685, file: !1686, line: 368, type: !915)
!1692 = !DILocation(line: 368, column: 6, scope: !1685, inlinedAt: !1690)
!1693 = !DILocalVariable(name: "size", arg: 1, scope: !1682, file: !1683, line: 29, type: !806)
!1694 = !DILocation(line: 29, column: 63, scope: !1682)
!1695 = !DILocation(line: 31, column: 27, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1682, file: !1683, line: 31, column: 6)
!1697 = !DILocation(line: 31, column: 6, scope: !1696)
!1698 = !DILocation(line: 31, column: 6, scope: !1682)
!1699 = !DILocation(line: 32, column: 8, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !1683, line: 32, column: 7)
!1701 = distinct !DILexicalBlock(scope: !1696, file: !1683, line: 31, column: 34)
!1702 = !DILocation(line: 32, column: 7, scope: !1701)
!1703 = !DILocation(line: 33, column: 4, scope: !1700)
!1704 = !DILocation(line: 35, column: 7, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !1683, line: 35, column: 7)
!1706 = !DILocation(line: 35, column: 12, scope: !1705)
!1707 = !DILocation(line: 35, column: 7, scope: !1701)
!1708 = !DILocation(line: 36, column: 4, scope: !1705)
!1709 = !DILocation(line: 38, column: 10, scope: !1701)
!1710 = !DILocation(line: 38, column: 28, scope: !1701)
!1711 = !DILocation(line: 38, column: 41, scope: !1701)
!1712 = !DILocation(line: 38, column: 3, scope: !1701)
!1713 = !DILocation(line: 41, column: 6, scope: !1682)
!1714 = !DILocation(line: 42, column: 7, scope: !1682)
!1715 = !DILocation(line: 46, column: 15, scope: !1682)
!1716 = !DILocation(line: 374, column: 2, scope: !1685, inlinedAt: !1690)
!1717 = !DILocation(line: 376, column: 14, scope: !1685, inlinedAt: !1690)
!1718 = !{i32 667540}
!1719 = !DILocation(line: 377, column: 9, scope: !1685, inlinedAt: !1690)
!1720 = !DILocation(line: 377, column: 16, scope: !1685, inlinedAt: !1690)
!1721 = !DILocation(line: 46, column: 2, scope: !1682)
!1722 = !DILocation(line: 48, column: 1, scope: !1682)
!1723 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1724, file: !1724, line: 30, type: !1725, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1724 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!915, !47}
!1727 = !DILocation(line: 366, column: 40, scope: !1685, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 32, column: 9, scope: !1723)
!1729 = !DILocation(line: 368, column: 6, scope: !1685, inlinedAt: !1728)
!1730 = !DILocalVariable(name: "n", arg: 1, scope: !1723, file: !1724, line: 30, type: !47)
!1731 = !DILocation(line: 30, column: 21, scope: !1723)
!1732 = !DILocation(line: 32, column: 15, scope: !1723)
!1733 = !DILocation(line: 374, column: 2, scope: !1685, inlinedAt: !1728)
!1734 = !DILocation(line: 376, column: 14, scope: !1685, inlinedAt: !1728)
!1735 = !DILocation(line: 377, column: 9, scope: !1685, inlinedAt: !1728)
!1736 = !DILocation(line: 377, column: 16, scope: !1685, inlinedAt: !1728)
!1737 = !DILocation(line: 32, column: 18, scope: !1723)
!1738 = !DILocation(line: 32, column: 2, scope: !1723)
!1739 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1740, file: !1740, line: 137, type: !1741, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !817)
!1740 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!124, !1393, !1743, !1385, !804}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1745 = !DILocalVariable(name: "s", arg: 1, scope: !1739, file: !1740, line: 137, type: !1393)
!1746 = !DILocation(line: 137, column: 54, scope: !1739)
!1747 = !DILocalVariable(name: "object", arg: 2, scope: !1739, file: !1740, line: 137, type: !1743)
!1748 = !DILocation(line: 137, column: 69, scope: !1739)
!1749 = !DILocalVariable(name: "size", arg: 3, scope: !1739, file: !1740, line: 138, type: !1385)
!1750 = !DILocation(line: 138, column: 12, scope: !1739)
!1751 = !DILocalVariable(name: "flags", arg: 4, scope: !1739, file: !1740, line: 138, type: !804)
!1752 = !DILocation(line: 138, column: 24, scope: !1739)
!1753 = !DILocation(line: 140, column: 17, scope: !1739)
!1754 = !DILocation(line: 140, column: 2, scope: !1739)
