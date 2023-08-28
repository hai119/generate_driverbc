; ModuleID = '../bcout/drivers/acpi/acpica/exfldio.llvm.bc'
source_filename = "drivers/acpi/acpica/exfldio.c"
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
%struct.acpi_object_field_common = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, %union.acpi_operand_object* }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_buffer_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, i8, %union.acpi_operand_object* }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_bank_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object* }
%struct.acpi_object_index_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object* }

@_acpi_module_name = internal constant [8 x i8] c"exfldio\00", align 1, !dbg !0
@.str = private unnamed_addr constant [34 x i8] c"Region %s (ID=%u) not implemented\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Region %s (ID=%u) has no handler\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unknown UpdateRule value: 0x%X\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Field size %u (bits) is too large for buffer (%u)\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Needed Region, found type 0x%X (%s)\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Invalid/unknown Address Space ID: 0x%2.2X\00", align 1
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"Field [%4.4s] access width (%u bytes) too large for region [%4.4s] (length %u)\00", align 1
@.str.7 = private unnamed_addr constant [85 x i8] c"Field [%4.4s] Base+Offset+Width %u+%u+%u is beyond end of region [%4.4s] (length %u)\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Wrong object type in field I/O %u\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Index value 0x%8.8X%8.8X overflows field width 0x%X\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_access_region(%union.acpi_operand_object* %obj_desc, i32 %field_datum_byte_offset, i64* %value, i32 %function) #0 !dbg !45 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %field_datum_byte_offset.addr = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %function.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %rgn_desc = alloca %union.acpi_operand_object*, align 8
  %region_offset = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !806, metadata !DIExpression()), !dbg !807
  store i32 %field_datum_byte_offset, i32* %field_datum_byte_offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %field_datum_byte_offset.addr, metadata !808, metadata !DIExpression()), !dbg !809
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !810, metadata !DIExpression()), !dbg !811
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !812, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.declare(metadata i32* %status, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %rgn_desc, metadata !816, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.declare(metadata i32* %region_offset, metadata !818, metadata !DIExpression()), !dbg !819
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !820
  %1 = load i32, i32* %field_datum_byte_offset.addr, align 4, !dbg !821
  %call = call i32 @acpi_ex_setup_region(%union.acpi_operand_object* %0, i32 %1) #9, !dbg !822
  store i32 %call, i32* %status, align 4, !dbg !823
  %2 = load i32, i32* %status, align 4, !dbg !824
  %tobool = icmp ne i32 %2, 0, !dbg !824
  br i1 %tobool, label %if.then, label %if.end, !dbg !826

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !827
  store i32 %3, i32* %retval, align 4, !dbg !827
  br label %return, !dbg !827

if.end:                                           ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !829
  %common_field = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_field_common*, !dbg !830
  %region_obj = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 14, !dbg !831
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj, align 8, !dbg !831
  store %union.acpi_operand_object* %5, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !832
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !833
  %common_field1 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_field_common*, !dbg !834
  %base_byte_offset = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field1, i32 0, i32 10, !dbg !835
  %7 = load i32, i32* %base_byte_offset, align 4, !dbg !835
  %8 = load i32, i32* %field_datum_byte_offset.addr, align 4, !dbg !836
  %add = add i32 %7, %8, !dbg !837
  store i32 %add, i32* %region_offset, align 4, !dbg !838
  %9 = load i32, i32* %function.addr, align 4, !dbg !839
  %and = and i32 %9, 1, !dbg !841
  %cmp = icmp eq i32 %and, 0, !dbg !842
  br i1 %cmp, label %if.then2, label %if.else, !dbg !843

if.then2:                                         ; preds = %if.end
  br label %if.end3, !dbg !844

if.else:                                          ; preds = %if.end
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !846
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !847
  %12 = load i32, i32* %function.addr, align 4, !dbg !848
  %13 = load i32, i32* %region_offset, align 4, !dbg !849
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !850
  %common_field4 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_field_common*, !dbg !850
  %access_byte_width = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field4, i32 0, i32 7, !dbg !850
  %15 = load i8, i8* %access_byte_width, align 1, !dbg !850
  %conv = zext i8 %15 to i32, !dbg !850
  %shl = shl i32 %conv, 3, !dbg !850
  %16 = load i64*, i64** %value.addr, align 8, !dbg !851
  %call5 = call i32 @acpi_ev_address_space_dispatch(%union.acpi_operand_object* %10, %union.acpi_operand_object* %11, i32 %12, i32 %13, i32 %shl, i64* %16) #9, !dbg !852
  store i32 %call5, i32* %status, align 4, !dbg !853
  %17 = load i32, i32* %status, align 4, !dbg !854
  %tobool6 = icmp ne i32 %17, 0, !dbg !854
  br i1 %tobool6, label %if.then7, label %if.end27, !dbg !856

if.then7:                                         ; preds = %if.end3
  %18 = load i32, i32* %status, align 4, !dbg !857
  %cmp8 = icmp eq i32 %18, 14, !dbg !860
  br i1 %cmp8, label %if.then10, label %if.else15, !dbg !861

if.then10:                                        ; preds = %if.then7
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !862
  %region = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_region*, !dbg !862
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !862
  %20 = load i8, i8* %space_id, align 1, !dbg !862
  %call11 = call i8* @acpi_ut_get_region_name(i8 zeroext %20) #9, !dbg !862
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !862
  %region12 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_region*, !dbg !862
  %space_id13 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region12, i32 0, i32 5, !dbg !862
  %22 = load i8, i8* %space_id13, align 1, !dbg !862
  %conv14 = zext i8 %22 to i32, !dbg !862
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 255, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %call11, i32 %conv14) #9, !dbg !862
  br label %if.end26, !dbg !864

if.else15:                                        ; preds = %if.then7
  %23 = load i32, i32* %status, align 4, !dbg !865
  %cmp16 = icmp eq i32 %23, 6, !dbg !867
  br i1 %cmp16, label %if.then18, label %if.end25, !dbg !868

if.then18:                                        ; preds = %if.else15
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !869
  %region19 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_region*, !dbg !869
  %space_id20 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region19, i32 0, i32 5, !dbg !869
  %25 = load i8, i8* %space_id20, align 1, !dbg !869
  %call21 = call i8* @acpi_ut_get_region_name(i8 zeroext %25) #9, !dbg !869
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !869
  %region22 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_region*, !dbg !869
  %space_id23 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region22, i32 0, i32 5, !dbg !869
  %27 = load i8, i8* %space_id23, align 1, !dbg !869
  %conv24 = zext i8 %27 to i32, !dbg !869
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 261, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %call21, i32 %conv24) #9, !dbg !869
  br label %if.end25, !dbg !871

if.end25:                                         ; preds = %if.then18, %if.else15
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then10
  br label %if.end27, !dbg !872

if.end27:                                         ; preds = %if.end26, %if.end3
  %28 = load i32, i32* %status, align 4, !dbg !873
  store i32 %28, i32* %retval, align 4, !dbg !873
  br label %return, !dbg !873

return:                                           ; preds = %if.end27, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !874
  ret i32 %29, !dbg !874
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ex_setup_region(%union.acpi_operand_object* %obj_desc, i32 %field_datum_byte_offset) #0 !dbg !875 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %field_datum_byte_offset.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %rgn_desc = alloca %union.acpi_operand_object*, align 8
  %space_id = alloca i8, align 1
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !878, metadata !DIExpression()), !dbg !879
  store i32 %field_datum_byte_offset, i32* %field_datum_byte_offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %field_datum_byte_offset.addr, metadata !880, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.declare(metadata i32* %status, metadata !882, metadata !DIExpression()), !dbg !883
  store i32 0, i32* %status, align 4, !dbg !883
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %rgn_desc, metadata !884, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.declare(metadata i8* %space_id, metadata !886, metadata !DIExpression()), !dbg !887
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !888
  %common_field = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_field_common*, !dbg !889
  %region_obj = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 14, !dbg !890
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj, align 8, !dbg !890
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !891
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !892
  %common = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_common*, !dbg !894
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !895
  %3 = load i8, i8* %type, align 1, !dbg !895
  %conv = zext i8 %3 to i32, !dbg !892
  %cmp = icmp ne i32 %conv, 10, !dbg !896
  br i1 %cmp, label %if.then, label %if.end, !dbg !897

if.then:                                          ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !898
  %common2 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_common*, !dbg !898
  %type3 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common2, i32 0, i32 2, !dbg !898
  %5 = load i8, i8* %type3, align 1, !dbg !898
  %conv4 = zext i8 %5 to i32, !dbg !898
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !898
  %call = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %6) #9, !dbg !898
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %conv4, i8* %call) #9, !dbg !898
  store i32 12291, i32* %retval, align 4, !dbg !900
  br label %return, !dbg !900

if.end:                                           ; preds = %entry
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !901
  %region = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_region*, !dbg !902
  %space_id5 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !903
  %8 = load i8, i8* %space_id5, align 1, !dbg !903
  store i8 %8, i8* %space_id, align 1, !dbg !904
  %9 = load i8, i8* %space_id, align 1, !dbg !905
  %call6 = call zeroext i8 @acpi_is_valid_space_id(i8 zeroext %9) #9, !dbg !907
  %tobool = icmp ne i8 %call6, 0, !dbg !907
  br i1 %tobool, label %if.end9, label %if.then7, !dbg !908

if.then7:                                         ; preds = %if.end
  %10 = load i8, i8* %space_id, align 1, !dbg !909
  %conv8 = zext i8 %10 to i32, !dbg !909
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %conv8) #9, !dbg !909
  store i32 12304, i32* %retval, align 4, !dbg !911
  br label %return, !dbg !911

if.end9:                                          ; preds = %if.end
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !912
  %common10 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_common*, !dbg !914
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common10, i32 0, i32 4, !dbg !915
  %12 = load i8, i8* %flags, align 4, !dbg !915
  %conv11 = zext i8 %12 to i32, !dbg !912
  %and = and i32 %conv11, 4, !dbg !916
  %tobool12 = icmp ne i32 %and, 0, !dbg !916
  br i1 %tobool12, label %if.end18, label %if.then13, !dbg !917

if.then13:                                        ; preds = %if.end9
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !918
  %call14 = call i32 @acpi_ds_get_region_arguments(%union.acpi_operand_object* %13) #9, !dbg !920
  store i32 %call14, i32* %status, align 4, !dbg !921
  %14 = load i32, i32* %status, align 4, !dbg !922
  %tobool15 = icmp ne i32 %14, 0, !dbg !922
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !924

if.then16:                                        ; preds = %if.then13
  %15 = load i32, i32* %status, align 4, !dbg !925
  store i32 %15, i32* %retval, align 4, !dbg !925
  br label %return, !dbg !925

if.end17:                                         ; preds = %if.then13
  br label %if.end18, !dbg !927

if.end18:                                         ; preds = %if.end17, %if.end9
  %16 = load i8, i8* %space_id, align 1, !dbg !928
  %conv19 = zext i8 %16 to i32, !dbg !928
  %cmp20 = icmp eq i32 %conv19, 4, !dbg !930
  br i1 %cmp20, label %if.then29, label %lor.lhs.false, !dbg !931

lor.lhs.false:                                    ; preds = %if.end18
  %17 = load i8, i8* %space_id, align 1, !dbg !932
  %conv22 = zext i8 %17 to i32, !dbg !932
  %cmp23 = icmp eq i32 %conv22, 9, !dbg !933
  br i1 %cmp23, label %if.then29, label %lor.lhs.false25, !dbg !934

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %18 = load i8, i8* %space_id, align 1, !dbg !935
  %conv26 = zext i8 %18 to i32, !dbg !935
  %cmp27 = icmp eq i32 %conv26, 7, !dbg !936
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !937

if.then29:                                        ; preds = %lor.lhs.false25, %lor.lhs.false, %if.end18
  store i32 0, i32* %retval, align 4, !dbg !938
  br label %return, !dbg !938

if.end30:                                         ; preds = %lor.lhs.false25
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !940
  %region31 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_region*, !dbg !942
  %length = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region31, i32 0, i32 10, !dbg !943
  %20 = load i32, i32* %length, align 8, !dbg !943
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !944
  %common_field32 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_field_common*, !dbg !945
  %base_byte_offset = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field32, i32 0, i32 10, !dbg !946
  %22 = load i32, i32* %base_byte_offset, align 4, !dbg !946
  %23 = load i32, i32* %field_datum_byte_offset.addr, align 4, !dbg !947
  %add = add i32 %22, %23, !dbg !948
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !949
  %common_field33 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_field_common*, !dbg !950
  %access_byte_width = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field33, i32 0, i32 7, !dbg !951
  %25 = load i8, i8* %access_byte_width, align 1, !dbg !951
  %conv34 = zext i8 %25 to i32, !dbg !949
  %add35 = add i32 %add, %conv34, !dbg !952
  %cmp36 = icmp ult i32 %20, %add35, !dbg !953
  br i1 %cmp36, label %if.then38, label %if.end99, !dbg !954

if.then38:                                        ; preds = %if.end30
  %26 = load i8, i8* @acpi_gbl_enable_interpreter_slack, align 1, !dbg !955
  %tobool39 = icmp ne i8 %26, 0, !dbg !955
  br i1 %tobool39, label %if.then40, label %if.end66, !dbg !958

if.then40:                                        ; preds = %if.then38
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !959
  %region41 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_region*, !dbg !959
  %length42 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region41, i32 0, i32 10, !dbg !959
  %28 = load i32, i32* %length42, align 8, !dbg !959
  %conv43 = zext i32 %28 to i64, !dbg !959
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !959
  %common_field44 = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_field_common*, !dbg !959
  %access_byte_width45 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field44, i32 0, i32 7, !dbg !959
  %30 = load i8, i8* %access_byte_width45, align 1, !dbg !959
  %conv46 = zext i8 %30 to i64, !dbg !959
  %sub = sub i64 %conv46, 1, !dbg !959
  %add47 = add i64 %conv43, %sub, !dbg !959
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !959
  %common_field48 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_field_common*, !dbg !959
  %access_byte_width49 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field48, i32 0, i32 7, !dbg !959
  %32 = load i8, i8* %access_byte_width49, align 1, !dbg !959
  %conv50 = zext i8 %32 to i64, !dbg !959
  %sub51 = sub i64 %conv50, 1, !dbg !959
  %neg = xor i64 %sub51, -1, !dbg !959
  %and52 = and i64 %add47, %neg, !dbg !959
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !962
  %common_field53 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_field_common*, !dbg !963
  %base_byte_offset54 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field53, i32 0, i32 10, !dbg !964
  %34 = load i32, i32* %base_byte_offset54, align 4, !dbg !964
  %conv55 = zext i32 %34 to i64, !dbg !965
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !966
  %common_field56 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_field_common*, !dbg !967
  %access_byte_width57 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field56, i32 0, i32 7, !dbg !968
  %36 = load i8, i8* %access_byte_width57, align 1, !dbg !968
  %conv58 = zext i8 %36 to i64, !dbg !966
  %add59 = add i64 %conv55, %conv58, !dbg !969
  %37 = load i32, i32* %field_datum_byte_offset.addr, align 4, !dbg !970
  %conv60 = zext i32 %37 to i64, !dbg !970
  %add61 = add i64 %add59, %conv60, !dbg !971
  %cmp62 = icmp uge i64 %and52, %add61, !dbg !972
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !973

if.then64:                                        ; preds = %if.then40
  store i32 0, i32* %retval, align 4, !dbg !974
  br label %return, !dbg !974

if.end65:                                         ; preds = %if.then40
  br label %if.end66, !dbg !976

if.end66:                                         ; preds = %if.end65, %if.then38
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !977
  %region67 = bitcast %union.acpi_operand_object* %38 to %struct.acpi_object_region*, !dbg !979
  %length68 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region67, i32 0, i32 10, !dbg !980
  %39 = load i32, i32* %length68, align 8, !dbg !980
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !981
  %common_field69 = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_field_common*, !dbg !982
  %access_byte_width70 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field69, i32 0, i32 7, !dbg !983
  %41 = load i8, i8* %access_byte_width70, align 1, !dbg !983
  %conv71 = zext i8 %41 to i32, !dbg !981
  %cmp72 = icmp ult i32 %39, %conv71, !dbg !984
  br i1 %cmp72, label %if.then74, label %if.end85, !dbg !985

if.then74:                                        ; preds = %if.end66
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !986
  %common_field75 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_field_common*, !dbg !986
  %node = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field75, i32 0, i32 8, !dbg !986
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !986
  %44 = bitcast %struct.acpi_namespace_node* %43 to i8*, !dbg !986
  %call76 = call i8* @acpi_ut_get_node_name(i8* %44) #9, !dbg !986
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !986
  %common_field77 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_field_common*, !dbg !986
  %access_byte_width78 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field77, i32 0, i32 7, !dbg !986
  %46 = load i8, i8* %access_byte_width78, align 1, !dbg !986
  %conv79 = zext i8 %46 to i32, !dbg !986
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !986
  %region80 = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_region*, !dbg !986
  %node81 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region80, i32 0, i32 6, !dbg !986
  %48 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node81, align 8, !dbg !986
  %49 = bitcast %struct.acpi_namespace_node* %48 to i8*, !dbg !986
  %call82 = call i8* @acpi_ut_get_node_name(i8* %49) #9, !dbg !986
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !986
  %region83 = bitcast %union.acpi_operand_object* %50 to %struct.acpi_object_region*, !dbg !986
  %length84 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region83, i32 0, i32 10, !dbg !986
  %51 = load i32, i32* %length84, align 8, !dbg !986
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 148, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i8* %call76, i32 %conv79, i8* %call82, i32 %51) #9, !dbg !986
  br label %if.end85, !dbg !988

if.end85:                                         ; preds = %if.then74, %if.end66
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !989
  %common_field86 = bitcast %union.acpi_operand_object* %52 to %struct.acpi_object_field_common*, !dbg !989
  %node87 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field86, i32 0, i32 8, !dbg !989
  %53 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node87, align 8, !dbg !989
  %54 = bitcast %struct.acpi_namespace_node* %53 to i8*, !dbg !989
  %call88 = call i8* @acpi_ut_get_node_name(i8* %54) #9, !dbg !989
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !989
  %common_field89 = bitcast %union.acpi_operand_object* %55 to %struct.acpi_object_field_common*, !dbg !989
  %base_byte_offset90 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field89, i32 0, i32 10, !dbg !989
  %56 = load i32, i32* %base_byte_offset90, align 4, !dbg !989
  %57 = load i32, i32* %field_datum_byte_offset.addr, align 4, !dbg !989
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !989
  %common_field91 = bitcast %union.acpi_operand_object* %58 to %struct.acpi_object_field_common*, !dbg !989
  %access_byte_width92 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field91, i32 0, i32 7, !dbg !989
  %59 = load i8, i8* %access_byte_width92, align 1, !dbg !989
  %conv93 = zext i8 %59 to i32, !dbg !989
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !989
  %region94 = bitcast %union.acpi_operand_object* %60 to %struct.acpi_object_region*, !dbg !989
  %node95 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region94, i32 0, i32 6, !dbg !989
  %61 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node95, align 8, !dbg !989
  %62 = bitcast %struct.acpi_namespace_node* %61 to i8*, !dbg !989
  %call96 = call i8* @acpi_ut_get_node_name(i8* %62) #9, !dbg !989
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %rgn_desc, align 8, !dbg !989
  %region97 = bitcast %union.acpi_operand_object* %63 to %struct.acpi_object_region*, !dbg !989
  %length98 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region97, i32 0, i32 10, !dbg !989
  %64 = load i32, i32* %length98, align 8, !dbg !989
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 163, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.7, i64 0, i64 0), i8* %call88, i32 %56, i32 %57, i32 %conv93, i8* %call96, i32 %64) #9, !dbg !989
  store i32 12297, i32* %retval, align 4, !dbg !990
  br label %return, !dbg !990

if.end99:                                         ; preds = %if.end30
  store i32 0, i32* %retval, align 4, !dbg !991
  br label %return, !dbg !991

return:                                           ; preds = %if.end99, %if.end85, %if.then64, %if.then29, %if.then16, %if.then7, %if.then
  %65 = load i32, i32* %retval, align 4, !dbg !992
  ret i32 %65, !dbg !992
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_address_space_dispatch(%union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i32, i64*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_region_name(i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_write_with_update_rule(%union.acpi_operand_object* %obj_desc, i64 %mask, i64 %field_value, i32 %field_datum_byte_offset) #0 !dbg !993 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %mask.addr = alloca i64, align 8
  %field_value.addr = alloca i64, align 8
  %field_datum_byte_offset.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %merged_value = alloca i64, align 8
  %current_value = alloca i64, align 8
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !996, metadata !DIExpression()), !dbg !997
  store i64 %mask, i64* %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mask.addr, metadata !998, metadata !DIExpression()), !dbg !999
  store i64 %field_value, i64* %field_value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %field_value.addr, metadata !1000, metadata !DIExpression()), !dbg !1001
  store i32 %field_datum_byte_offset, i32* %field_datum_byte_offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %field_datum_byte_offset.addr, metadata !1002, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1004, metadata !DIExpression()), !dbg !1005
  store i32 0, i32* %status, align 4, !dbg !1005
  call void @llvm.dbg.declare(metadata i64* %merged_value, metadata !1006, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.declare(metadata i64* %current_value, metadata !1008, metadata !DIExpression()), !dbg !1009
  %0 = load i64, i64* %field_value.addr, align 8, !dbg !1010
  store i64 %0, i64* %merged_value, align 8, !dbg !1011
  %1 = load i64, i64* %mask.addr, align 8, !dbg !1012
  %cmp = icmp ne i64 %1, -1, !dbg !1014
  br i1 %cmp, label %if.then, label %if.end20, !dbg !1015

if.then:                                          ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1016
  %common_field = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_field_common*, !dbg !1018
  %field_flags = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 5, !dbg !1019
  %3 = load i8, i8* %field_flags, align 1, !dbg !1019
  %conv = zext i8 %3 to i32, !dbg !1016
  %and = and i32 %conv, 96, !dbg !1020
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 32, label %sw.bb11
    i32 64, label %sw.bb14
  ], !dbg !1021

sw.bb:                                            ; preds = %if.then
  %4 = load i64, i64* %mask.addr, align 8, !dbg !1022
  %neg = xor i64 %4, -1, !dbg !1025
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1026
  %common_field1 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_field_common*, !dbg !1026
  %access_byte_width = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field1, i32 0, i32 7, !dbg !1026
  %6 = load i8, i8* %access_byte_width, align 1, !dbg !1026
  %conv2 = zext i8 %6 to i32, !dbg !1026
  %shl = shl i32 %conv2, 3, !dbg !1026
  %sub = sub i32 64, %shl, !dbg !1027
  %sh_prom = zext i32 %sub to i64, !dbg !1028
  %shl3 = shl i64 %neg, %sh_prom, !dbg !1028
  %cmp4 = icmp ne i64 %shl3, 0, !dbg !1029
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !1030

if.then6:                                         ; preds = %sw.bb
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1031
  %8 = load i32, i32* %field_datum_byte_offset.addr, align 4, !dbg !1033
  %call = call i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %7, i32 %8, i64* %current_value, i32 0) #9, !dbg !1034
  store i32 %call, i32* %status, align 4, !dbg !1035
  %9 = load i32, i32* %status, align 4, !dbg !1036
  %tobool = icmp ne i32 %9, 0, !dbg !1036
  br i1 %tobool, label %if.then7, label %if.end, !dbg !1038

if.then7:                                         ; preds = %if.then6
  %10 = load i32, i32* %status, align 4, !dbg !1039
  store i32 %10, i32* %retval, align 4, !dbg !1039
  br label %return, !dbg !1039

if.end:                                           ; preds = %if.then6
  %11 = load i64, i64* %current_value, align 8, !dbg !1041
  %12 = load i64, i64* %mask.addr, align 8, !dbg !1042
  %neg8 = xor i64 %12, -1, !dbg !1043
  %and9 = and i64 %11, %neg8, !dbg !1044
  %13 = load i64, i64* %merged_value, align 8, !dbg !1045
  %or = or i64 %13, %and9, !dbg !1045
  store i64 %or, i64* %merged_value, align 8, !dbg !1045
  br label %if.end10, !dbg !1046

if.end10:                                         ; preds = %if.end, %sw.bb
  br label %sw.epilog, !dbg !1047

sw.bb11:                                          ; preds = %if.then
  %14 = load i64, i64* %mask.addr, align 8, !dbg !1048
  %neg12 = xor i64 %14, -1, !dbg !1049
  %15 = load i64, i64* %merged_value, align 8, !dbg !1050
  %or13 = or i64 %15, %neg12, !dbg !1050
  store i64 %or13, i64* %merged_value, align 8, !dbg !1050
  br label %sw.epilog, !dbg !1051

sw.bb14:                                          ; preds = %if.then
  %16 = load i64, i64* %mask.addr, align 8, !dbg !1052
  %17 = load i64, i64* %merged_value, align 8, !dbg !1053
  %and15 = and i64 %17, %16, !dbg !1053
  store i64 %and15, i64* %merged_value, align 8, !dbg !1053
  br label %sw.epilog, !dbg !1054

sw.default:                                       ; preds = %if.then
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1055
  %common_field16 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_field_common*, !dbg !1055
  %field_flags17 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field16, i32 0, i32 5, !dbg !1055
  %19 = load i8, i8* %field_flags17, align 1, !dbg !1055
  %conv18 = zext i8 %19 to i32, !dbg !1055
  %and19 = and i32 %conv18, 96, !dbg !1055
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 607, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %and19) #9, !dbg !1055
  store i32 12292, i32* %retval, align 4, !dbg !1056
  br label %return, !dbg !1056

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb11, %if.end10
  br label %if.end20, !dbg !1057

if.end20:                                         ; preds = %sw.epilog, %entry
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1058
  %21 = load i32, i32* %field_datum_byte_offset.addr, align 4, !dbg !1059
  %call21 = call i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %20, i32 %21, i64* %merged_value, i32 1) #9, !dbg !1060
  store i32 %call21, i32* %status, align 4, !dbg !1061
  %22 = load i32, i32* %status, align 4, !dbg !1062
  store i32 %22, i32* %retval, align 4, !dbg !1062
  br label %return, !dbg !1062

return:                                           ; preds = %if.end20, %sw.default, %if.then7
  %23 = load i32, i32* %retval, align 4, !dbg !1063
  ret i32 %23, !dbg !1063
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %obj_desc, i32 %field_datum_byte_offset, i64* %value, i32 %read_write) #0 !dbg !1064 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %field_datum_byte_offset.addr = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %read_write.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %local_value = alloca i64, align 8
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1065, metadata !DIExpression()), !dbg !1066
  store i32 %field_datum_byte_offset, i32* %field_datum_byte_offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %field_datum_byte_offset.addr, metadata !1067, metadata !DIExpression()), !dbg !1068
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !1069, metadata !DIExpression()), !dbg !1070
  store i32 %read_write, i32* %read_write.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %read_write.addr, metadata !1071, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1073, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.declare(metadata i64* %local_value, metadata !1075, metadata !DIExpression()), !dbg !1076
  %0 = load i32, i32* %read_write.addr, align 4, !dbg !1077
  %cmp = icmp eq i32 %0, 0, !dbg !1079
  br i1 %cmp, label %if.then, label %if.end2, !dbg !1080

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** %value.addr, align 8, !dbg !1081
  %tobool = icmp ne i64* %1, null, !dbg !1081
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1084

if.then1:                                         ; preds = %if.then
  store i64 0, i64* %local_value, align 8, !dbg !1085
  store i64* %local_value, i64** %value.addr, align 8, !dbg !1087
  br label %if.end, !dbg !1088

if.end:                                           ; preds = %if.then1, %if.then
  %2 = load i64*, i64** %value.addr, align 8, !dbg !1089
  store i64 0, i64* %2, align 8, !dbg !1090
  br label %if.end2, !dbg !1091

if.end2:                                          ; preds = %if.end, %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1092
  %common = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !1093
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1094
  %4 = load i8, i8* %type, align 1, !dbg !1094
  %conv = zext i8 %4 to i32, !dbg !1092
  switch i32 %conv, label %sw.default [
    i32 14, label %sw.bb
    i32 18, label %sw.bb32
    i32 17, label %sw.bb48
    i32 19, label %sw.bb50
  ], !dbg !1095

sw.bb:                                            ; preds = %if.end2
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1096
  %common3 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_common*, !dbg !1099
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common3, i32 0, i32 4, !dbg !1100
  %6 = load i8, i8* %flags, align 4, !dbg !1100
  %conv4 = zext i8 %6 to i32, !dbg !1096
  %and = and i32 %conv4, 4, !dbg !1101
  %tobool5 = icmp ne i32 %and, 0, !dbg !1101
  br i1 %tobool5, label %if.end10, label %if.then6, !dbg !1102

if.then6:                                         ; preds = %sw.bb
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1103
  %call = call i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object* %7) #9, !dbg !1105
  store i32 %call, i32* %status, align 4, !dbg !1106
  %8 = load i32, i32* %status, align 4, !dbg !1107
  %tobool7 = icmp ne i32 %8, 0, !dbg !1107
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1109

if.then8:                                         ; preds = %if.then6
  %9 = load i32, i32* %status, align 4, !dbg !1110
  store i32 %9, i32* %retval, align 4, !dbg !1110
  br label %return, !dbg !1110

if.end9:                                          ; preds = %if.then6
  br label %if.end10, !dbg !1112

if.end10:                                         ; preds = %if.end9, %sw.bb
  %10 = load i32, i32* %read_write.addr, align 4, !dbg !1113
  %cmp11 = icmp eq i32 %10, 0, !dbg !1115
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !1116

if.then13:                                        ; preds = %if.end10
  %11 = load i64*, i64** %value.addr, align 8, !dbg !1117
  %12 = bitcast i64* %11 to i8*, !dbg !1119
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1120
  %buffer_field = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_buffer_field*, !dbg !1121
  %buffer_obj = getelementptr inbounds %struct.acpi_object_buffer_field, %struct.acpi_object_buffer_field* %buffer_field, i32 0, i32 15, !dbg !1122
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_obj, align 8, !dbg !1122
  %buffer = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_buffer*, !dbg !1123
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 5, !dbg !1124
  %15 = load i8*, i8** %pointer, align 8, !dbg !1124
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1125
  %buffer_field14 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_buffer_field*, !dbg !1126
  %base_byte_offset = getelementptr inbounds %struct.acpi_object_buffer_field, %struct.acpi_object_buffer_field* %buffer_field14, i32 0, i32 10, !dbg !1127
  %17 = load i32, i32* %base_byte_offset, align 4, !dbg !1127
  %idx.ext = zext i32 %17 to i64, !dbg !1128
  %add.ptr = getelementptr i8, i8* %15, i64 %idx.ext, !dbg !1128
  %18 = load i32, i32* %field_datum_byte_offset.addr, align 4, !dbg !1129
  %idx.ext15 = zext i32 %18 to i64, !dbg !1130
  %add.ptr16 = getelementptr i8, i8* %add.ptr, i64 %idx.ext15, !dbg !1130
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1131
  %common_field = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_field_common*, !dbg !1132
  %access_byte_width = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 7, !dbg !1133
  %20 = load i8, i8* %access_byte_width, align 1, !dbg !1133
  %conv17 = zext i8 %20 to i64, !dbg !1131
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 1 %add.ptr16, i64 %conv17, i1 false), !dbg !1119
  br label %if.end31, !dbg !1134

if.else:                                          ; preds = %if.end10
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1135
  %buffer_field18 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_buffer_field*, !dbg !1137
  %buffer_obj19 = getelementptr inbounds %struct.acpi_object_buffer_field, %struct.acpi_object_buffer_field* %buffer_field18, i32 0, i32 15, !dbg !1138
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_obj19, align 8, !dbg !1138
  %buffer20 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_buffer*, !dbg !1139
  %pointer21 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer20, i32 0, i32 5, !dbg !1140
  %23 = load i8*, i8** %pointer21, align 8, !dbg !1140
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1141
  %buffer_field22 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_buffer_field*, !dbg !1142
  %base_byte_offset23 = getelementptr inbounds %struct.acpi_object_buffer_field, %struct.acpi_object_buffer_field* %buffer_field22, i32 0, i32 10, !dbg !1143
  %25 = load i32, i32* %base_byte_offset23, align 4, !dbg !1143
  %idx.ext24 = zext i32 %25 to i64, !dbg !1144
  %add.ptr25 = getelementptr i8, i8* %23, i64 %idx.ext24, !dbg !1144
  %26 = load i32, i32* %field_datum_byte_offset.addr, align 4, !dbg !1145
  %idx.ext26 = zext i32 %26 to i64, !dbg !1146
  %add.ptr27 = getelementptr i8, i8* %add.ptr25, i64 %idx.ext26, !dbg !1146
  %27 = load i64*, i64** %value.addr, align 8, !dbg !1147
  %28 = bitcast i64* %27 to i8*, !dbg !1148
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1149
  %common_field28 = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_field_common*, !dbg !1150
  %access_byte_width29 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field28, i32 0, i32 7, !dbg !1151
  %30 = load i8, i8* %access_byte_width29, align 1, !dbg !1151
  %conv30 = zext i8 %30 to i64, !dbg !1149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr27, i8* align 8 %28, i64 %conv30, i1 false), !dbg !1148
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then13
  store i32 0, i32* %status, align 4, !dbg !1152
  br label %sw.epilog, !dbg !1153

sw.bb32:                                          ; preds = %if.end2
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1154
  %bank_field = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_bank_field*, !dbg !1156
  %bank_obj = getelementptr inbounds %struct.acpi_object_bank_field, %struct.acpi_object_bank_field* %bank_field, i32 0, i32 15, !dbg !1157
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %bank_obj, align 8, !dbg !1157
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1158
  %bank_field33 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_bank_field*, !dbg !1159
  %value34 = getelementptr inbounds %struct.acpi_object_bank_field, %struct.acpi_object_bank_field* %bank_field33, i32 0, i32 11, !dbg !1160
  %34 = load i32, i32* %value34, align 8, !dbg !1160
  %conv35 = zext i32 %34 to i64, !dbg !1161
  %call36 = call zeroext i8 @acpi_ex_register_overflow(%union.acpi_operand_object* %32, i64 %conv35) #9, !dbg !1162
  %tobool37 = icmp ne i8 %call36, 0, !dbg !1162
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !1163

if.then38:                                        ; preds = %sw.bb32
  store i32 12313, i32* %retval, align 4, !dbg !1164
  br label %return, !dbg !1164

if.end39:                                         ; preds = %sw.bb32
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1166
  %bank_field40 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_bank_field*, !dbg !1167
  %bank_obj41 = getelementptr inbounds %struct.acpi_object_bank_field, %struct.acpi_object_bank_field* %bank_field40, i32 0, i32 15, !dbg !1168
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %bank_obj41, align 8, !dbg !1168
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1169
  %bank_field42 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_bank_field*, !dbg !1170
  %value43 = getelementptr inbounds %struct.acpi_object_bank_field, %struct.acpi_object_bank_field* %bank_field42, i32 0, i32 11, !dbg !1171
  %38 = bitcast i32* %value43 to i8*, !dbg !1172
  %call44 = call i32 @acpi_ex_insert_into_field(%union.acpi_operand_object* %36, i8* %38, i32 4) #9, !dbg !1173
  store i32 %call44, i32* %status, align 4, !dbg !1174
  %39 = load i32, i32* %status, align 4, !dbg !1175
  %tobool45 = icmp ne i32 %39, 0, !dbg !1175
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !1177

if.then46:                                        ; preds = %if.end39
  %40 = load i32, i32* %status, align 4, !dbg !1178
  store i32 %40, i32* %retval, align 4, !dbg !1178
  br label %return, !dbg !1178

if.end47:                                         ; preds = %if.end39
  br label %sw.bb48, !dbg !1175

sw.bb48:                                          ; preds = %if.end2, %if.end47
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1180
  %42 = load i32, i32* %field_datum_byte_offset.addr, align 4, !dbg !1181
  %43 = load i64*, i64** %value.addr, align 8, !dbg !1182
  %44 = load i32, i32* %read_write.addr, align 4, !dbg !1183
  %call49 = call i32 @acpi_ex_access_region(%union.acpi_operand_object* %41, i32 %42, i64* %43, i32 %44) #9, !dbg !1184
  store i32 %call49, i32* %status, align 4, !dbg !1185
  br label %sw.epilog, !dbg !1186

sw.bb50:                                          ; preds = %if.end2
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1187
  %index_field = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_index_field*, !dbg !1189
  %index_obj = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field, i32 0, i32 14, !dbg !1190
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %index_obj, align 8, !dbg !1190
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1191
  %index_field51 = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_index_field*, !dbg !1192
  %value52 = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field51, i32 0, i32 11, !dbg !1193
  %48 = load i32, i32* %value52, align 8, !dbg !1193
  %conv53 = zext i32 %48 to i64, !dbg !1194
  %call54 = call zeroext i8 @acpi_ex_register_overflow(%union.acpi_operand_object* %46, i64 %conv53) #9, !dbg !1195
  %tobool55 = icmp ne i8 %call54, 0, !dbg !1195
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !1196

if.then56:                                        ; preds = %sw.bb50
  store i32 12313, i32* %retval, align 4, !dbg !1197
  br label %return, !dbg !1197

if.end57:                                         ; preds = %sw.bb50
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1199
  %index_field58 = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_index_field*, !dbg !1200
  %value59 = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field58, i32 0, i32 11, !dbg !1201
  %50 = load i32, i32* %value59, align 8, !dbg !1201
  %51 = load i32, i32* %field_datum_byte_offset.addr, align 4, !dbg !1202
  %add = add i32 %51, %50, !dbg !1202
  store i32 %add, i32* %field_datum_byte_offset.addr, align 4, !dbg !1202
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1203
  %index_field60 = bitcast %union.acpi_operand_object* %52 to %struct.acpi_object_index_field*, !dbg !1204
  %index_obj61 = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field60, i32 0, i32 14, !dbg !1205
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %index_obj61, align 8, !dbg !1205
  %54 = bitcast i32* %field_datum_byte_offset.addr to i8*, !dbg !1206
  %call62 = call i32 @acpi_ex_insert_into_field(%union.acpi_operand_object* %53, i8* %54, i32 4) #9, !dbg !1207
  store i32 %call62, i32* %status, align 4, !dbg !1208
  %55 = load i32, i32* %status, align 4, !dbg !1209
  %tobool63 = icmp ne i32 %55, 0, !dbg !1209
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !1211

if.then64:                                        ; preds = %if.end57
  %56 = load i32, i32* %status, align 4, !dbg !1212
  store i32 %56, i32* %retval, align 4, !dbg !1212
  br label %return, !dbg !1212

if.end65:                                         ; preds = %if.end57
  %57 = load i32, i32* %read_write.addr, align 4, !dbg !1214
  %cmp66 = icmp eq i32 %57, 0, !dbg !1216
  br i1 %cmp66, label %if.then68, label %if.else71, !dbg !1217

if.then68:                                        ; preds = %if.end65
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1218
  %index_field69 = bitcast %union.acpi_operand_object* %58 to %struct.acpi_object_index_field*, !dbg !1220
  %data_obj = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field69, i32 0, i32 15, !dbg !1221
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %data_obj, align 8, !dbg !1221
  %60 = load i64*, i64** %value.addr, align 8, !dbg !1222
  %61 = bitcast i64* %60 to i8*, !dbg !1222
  %call70 = call i32 @acpi_ex_extract_from_field(%union.acpi_operand_object* %59, i8* %61, i32 8) #9, !dbg !1223
  store i32 %call70, i32* %status, align 4, !dbg !1224
  br label %if.end75, !dbg !1225

if.else71:                                        ; preds = %if.end65
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1226
  %index_field72 = bitcast %union.acpi_operand_object* %62 to %struct.acpi_object_index_field*, !dbg !1228
  %data_obj73 = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field72, i32 0, i32 15, !dbg !1229
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %data_obj73, align 8, !dbg !1229
  %64 = load i64*, i64** %value.addr, align 8, !dbg !1230
  %65 = bitcast i64* %64 to i8*, !dbg !1230
  %call74 = call i32 @acpi_ex_insert_into_field(%union.acpi_operand_object* %63, i8* %65, i32 8) #9, !dbg !1231
  store i32 %call74, i32* %status, align 4, !dbg !1232
  br label %if.end75

if.end75:                                         ; preds = %if.else71, %if.then68
  br label %sw.epilog, !dbg !1233

sw.default:                                       ; preds = %if.end2
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1234
  %common76 = bitcast %union.acpi_operand_object* %66 to %struct.acpi_object_common*, !dbg !1234
  %type77 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common76, i32 0, i32 2, !dbg !1234
  %67 = load i8, i8* %type77, align 1, !dbg !1234
  %conv78 = zext i8 %67 to i32, !dbg !1234
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 503, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %conv78) #9, !dbg !1234
  store i32 12303, i32* %status, align 4, !dbg !1235
  br label %sw.epilog, !dbg !1236

sw.epilog:                                        ; preds = %sw.default, %if.end75, %sw.bb48, %if.end31
  %68 = load i32, i32* %status, align 4, !dbg !1237
  %tobool79 = icmp ne i32 %68, 0, !dbg !1237
  br i1 %tobool79, label %if.end86, label %if.then80, !dbg !1239

if.then80:                                        ; preds = %sw.epilog
  %69 = load i32, i32* %read_write.addr, align 4, !dbg !1240
  %cmp81 = icmp eq i32 %69, 0, !dbg !1243
  br i1 %cmp81, label %if.then83, label %if.else84, !dbg !1244

if.then83:                                        ; preds = %if.then80
  br label %if.end85, !dbg !1245

if.else84:                                        ; preds = %if.then80
  br label %if.end85

if.end85:                                         ; preds = %if.else84, %if.then83
  br label %if.end86, !dbg !1247

if.end86:                                         ; preds = %if.end85, %sw.epilog
  %70 = load i32, i32* %status, align 4, !dbg !1248
  store i32 %70, i32* %retval, align 4, !dbg !1248
  br label %return, !dbg !1248

return:                                           ; preds = %if.end86, %if.then64, %if.then56, %if.then46, %if.then38, %if.then8
  %71 = load i32, i32* %retval, align 4, !dbg !1249
  ret i32 %71, !dbg !1249
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_extract_from_field(%union.acpi_operand_object* %obj_desc, i8* %buffer, i32 %buffer_length) #0 !dbg !1250 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %raw_datum = alloca i64, align 8
  %merged_datum = alloca i64, align 8
  %field_offset = alloca i32, align 4
  %buffer_offset = alloca i32, align 4
  %buffer_tail_bits = alloca i32, align 4
  %datum_count = alloca i32, align 4
  %field_datum_count = alloca i32, align 4
  %access_bit_width = alloca i32, align 4
  %i = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1253, metadata !DIExpression()), !dbg !1254
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1255, metadata !DIExpression()), !dbg !1256
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !1257, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1259, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.declare(metadata i64* %raw_datum, metadata !1261, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.declare(metadata i64* %merged_datum, metadata !1263, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.declare(metadata i32* %field_offset, metadata !1265, metadata !DIExpression()), !dbg !1266
  store i32 0, i32* %field_offset, align 4, !dbg !1266
  call void @llvm.dbg.declare(metadata i32* %buffer_offset, metadata !1267, metadata !DIExpression()), !dbg !1268
  store i32 0, i32* %buffer_offset, align 4, !dbg !1268
  call void @llvm.dbg.declare(metadata i32* %buffer_tail_bits, metadata !1269, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.declare(metadata i32* %datum_count, metadata !1271, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.declare(metadata i32* %field_datum_count, metadata !1273, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.declare(metadata i32* %access_bit_width, metadata !1275, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1277, metadata !DIExpression()), !dbg !1278
  %0 = load i32, i32* %buffer_length.addr, align 4, !dbg !1279
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1281
  %common_field = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_field_common*, !dbg !1281
  %bit_length = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 9, !dbg !1281
  %2 = load i32, i32* %bit_length, align 8, !dbg !1281
  %add = add i32 %2, 7, !dbg !1281
  %shr = lshr i32 %add, 3, !dbg !1281
  %cmp = icmp ult i32 %0, %shr, !dbg !1282
  br i1 %cmp, label %if.then, label %if.end, !dbg !1283

if.then:                                          ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1284
  %common_field1 = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_field_common*, !dbg !1284
  %bit_length2 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field1, i32 0, i32 9, !dbg !1284
  %4 = load i32, i32* %bit_length2, align 8, !dbg !1284
  %5 = load i32, i32* %buffer_length.addr, align 4, !dbg !1284
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 668, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %4, i32 %5) #9, !dbg !1284
  store i32 11, i32* %retval, align 4, !dbg !1286
  br label %return, !dbg !1286

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %buffer.addr, align 8, !dbg !1287
  %7 = load i32, i32* %buffer_length.addr, align 4, !dbg !1288
  %conv = zext i32 %7 to i64, !dbg !1288
  call void @llvm.memset.p0i8.i64(i8* align 1 %6, i8 0, i64 %conv, i1 false), !dbg !1289
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1290
  %common_field3 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_field_common*, !dbg !1290
  %access_byte_width = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field3, i32 0, i32 7, !dbg !1290
  %9 = load i8, i8* %access_byte_width, align 1, !dbg !1290
  %conv4 = zext i8 %9 to i32, !dbg !1290
  %shl = shl i32 %conv4, 3, !dbg !1290
  store i32 %shl, i32* %access_bit_width, align 4, !dbg !1291
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1292
  %common_field5 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_field_common*, !dbg !1294
  %start_field_bit_offset = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field5, i32 0, i32 12, !dbg !1295
  %11 = load i8, i8* %start_field_bit_offset, align 4, !dbg !1295
  %conv6 = zext i8 %11 to i32, !dbg !1292
  %cmp7 = icmp eq i32 %conv6, 0, !dbg !1296
  br i1 %cmp7, label %land.lhs.true, label %if.end21, !dbg !1297

land.lhs.true:                                    ; preds = %if.end
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1298
  %common_field9 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_field_common*, !dbg !1299
  %bit_length10 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field9, i32 0, i32 9, !dbg !1300
  %13 = load i32, i32* %bit_length10, align 8, !dbg !1300
  %14 = load i32, i32* %access_bit_width, align 4, !dbg !1301
  %cmp11 = icmp eq i32 %13, %14, !dbg !1302
  br i1 %cmp11, label %if.then13, label %if.end21, !dbg !1303

if.then13:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %buffer_length.addr, align 4, !dbg !1304
  %conv14 = zext i32 %15 to i64, !dbg !1304
  %cmp15 = icmp uge i64 %conv14, 8, !dbg !1307
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !1308

if.then17:                                        ; preds = %if.then13
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1309
  %17 = load i8*, i8** %buffer.addr, align 8, !dbg !1311
  %18 = bitcast i8* %17 to i64*, !dbg !1311
  %call = call i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %16, i32 0, i64* %18, i32 0) #9, !dbg !1312
  store i32 %call, i32* %status, align 4, !dbg !1313
  br label %if.end20, !dbg !1314

if.else:                                          ; preds = %if.then13
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1315
  %call18 = call i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %19, i32 0, i64* %raw_datum, i32 0) #9, !dbg !1317
  store i32 %call18, i32* %status, align 4, !dbg !1318
  %20 = load i8*, i8** %buffer.addr, align 8, !dbg !1319
  %21 = bitcast i64* %raw_datum to i8*, !dbg !1320
  %22 = load i32, i32* %buffer_length.addr, align 4, !dbg !1321
  %conv19 = zext i32 %22 to i64, !dbg !1321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 8 %21, i64 %conv19, i1 false), !dbg !1320
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  %23 = load i32, i32* %status, align 4, !dbg !1322
  store i32 %23, i32* %retval, align 4, !dbg !1322
  br label %return, !dbg !1322

if.end21:                                         ; preds = %land.lhs.true, %if.end
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1323
  %common_field22 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_field_common*, !dbg !1325
  %access_byte_width23 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field22, i32 0, i32 7, !dbg !1326
  %25 = load i8, i8* %access_byte_width23, align 1, !dbg !1326
  %conv24 = zext i8 %25 to i64, !dbg !1323
  %cmp25 = icmp ugt i64 %conv24, 8, !dbg !1327
  br i1 %cmp25, label %if.then27, label %if.end30, !dbg !1328

if.then27:                                        ; preds = %if.end21
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1329
  %common_field28 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_field_common*, !dbg !1331
  %access_byte_width29 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field28, i32 0, i32 7, !dbg !1332
  store i8 8, i8* %access_byte_width29, align 1, !dbg !1333
  store i32 64, i32* %access_bit_width, align 4, !dbg !1334
  br label %if.end30, !dbg !1335

if.end30:                                         ; preds = %if.then27, %if.end21
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1336
  %common_field31 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_field_common*, !dbg !1336
  %bit_length32 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field31, i32 0, i32 9, !dbg !1336
  %28 = load i32, i32* %bit_length32, align 8, !dbg !1336
  %29 = load i32, i32* %access_bit_width, align 4, !dbg !1336
  %sub = sub i32 %29, 1, !dbg !1336
  %add33 = add i32 %28, %sub, !dbg !1336
  %30 = load i32, i32* %access_bit_width, align 4, !dbg !1336
  %div = udiv i32 %add33, %30, !dbg !1336
  store i32 %div, i32* %datum_count, align 4, !dbg !1337
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1338
  %common_field34 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_field_common*, !dbg !1338
  %bit_length35 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field34, i32 0, i32 9, !dbg !1338
  %32 = load i32, i32* %bit_length35, align 8, !dbg !1338
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1338
  %common_field36 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_field_common*, !dbg !1338
  %start_field_bit_offset37 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field36, i32 0, i32 12, !dbg !1338
  %34 = load i8, i8* %start_field_bit_offset37, align 4, !dbg !1338
  %conv38 = zext i8 %34 to i32, !dbg !1338
  %add39 = add i32 %32, %conv38, !dbg !1338
  %35 = load i32, i32* %access_bit_width, align 4, !dbg !1338
  %sub40 = sub i32 %35, 1, !dbg !1338
  %add41 = add i32 %add39, %sub40, !dbg !1338
  %36 = load i32, i32* %access_bit_width, align 4, !dbg !1338
  %div42 = udiv i32 %add41, %36, !dbg !1338
  store i32 %div42, i32* %field_datum_count, align 4, !dbg !1339
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1340
  %38 = load i32, i32* %field_offset, align 4, !dbg !1341
  %call43 = call i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %37, i32 %38, i64* %raw_datum, i32 0) #9, !dbg !1342
  store i32 %call43, i32* %status, align 4, !dbg !1343
  %39 = load i32, i32* %status, align 4, !dbg !1344
  %tobool = icmp ne i32 %39, 0, !dbg !1344
  br i1 %tobool, label %if.then44, label %if.end45, !dbg !1346

if.then44:                                        ; preds = %if.end30
  %40 = load i32, i32* %status, align 4, !dbg !1347
  store i32 %40, i32* %retval, align 4, !dbg !1347
  br label %return, !dbg !1347

if.end45:                                         ; preds = %if.end30
  %41 = load i64, i64* %raw_datum, align 8, !dbg !1349
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1350
  %common_field46 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_field_common*, !dbg !1351
  %start_field_bit_offset47 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field46, i32 0, i32 12, !dbg !1352
  %43 = load i8, i8* %start_field_bit_offset47, align 4, !dbg !1352
  %conv48 = zext i8 %43 to i32, !dbg !1350
  %sh_prom = zext i32 %conv48 to i64, !dbg !1353
  %shr49 = lshr i64 %41, %sh_prom, !dbg !1353
  store i64 %shr49, i64* %merged_datum, align 8, !dbg !1354
  store i32 1, i32* %i, align 4, !dbg !1355
  br label %for.cond, !dbg !1357

for.cond:                                         ; preds = %for.inc, %if.end45
  %44 = load i32, i32* %i, align 4, !dbg !1358
  %45 = load i32, i32* %field_datum_count, align 4, !dbg !1360
  %cmp50 = icmp ult i32 %44, %45, !dbg !1361
  br i1 %cmp50, label %for.body, label %for.end, !dbg !1362

for.body:                                         ; preds = %for.cond
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1363
  %common_field52 = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_field_common*, !dbg !1365
  %access_byte_width53 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field52, i32 0, i32 7, !dbg !1366
  %47 = load i8, i8* %access_byte_width53, align 1, !dbg !1366
  %conv54 = zext i8 %47 to i32, !dbg !1363
  %48 = load i32, i32* %field_offset, align 4, !dbg !1367
  %add55 = add i32 %48, %conv54, !dbg !1367
  store i32 %add55, i32* %field_offset, align 4, !dbg !1367
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1368
  %50 = load i32, i32* %field_offset, align 4, !dbg !1369
  %call56 = call i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %49, i32 %50, i64* %raw_datum, i32 0) #9, !dbg !1370
  store i32 %call56, i32* %status, align 4, !dbg !1371
  %51 = load i32, i32* %status, align 4, !dbg !1372
  %tobool57 = icmp ne i32 %51, 0, !dbg !1372
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !1374

if.then58:                                        ; preds = %for.body
  %52 = load i32, i32* %status, align 4, !dbg !1375
  store i32 %52, i32* %retval, align 4, !dbg !1375
  br label %return, !dbg !1375

if.end59:                                         ; preds = %for.body
  %53 = load i32, i32* %access_bit_width, align 4, !dbg !1377
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1379
  %common_field60 = bitcast %union.acpi_operand_object* %54 to %struct.acpi_object_field_common*, !dbg !1380
  %start_field_bit_offset61 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field60, i32 0, i32 12, !dbg !1381
  %55 = load i8, i8* %start_field_bit_offset61, align 4, !dbg !1381
  %conv62 = zext i8 %55 to i32, !dbg !1379
  %sub63 = sub i32 %53, %conv62, !dbg !1382
  %cmp64 = icmp ult i32 %sub63, 64, !dbg !1383
  br i1 %cmp64, label %if.then66, label %if.end73, !dbg !1384

if.then66:                                        ; preds = %if.end59
  %56 = load i64, i64* %raw_datum, align 8, !dbg !1385
  %57 = load i32, i32* %access_bit_width, align 4, !dbg !1387
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1388
  %common_field67 = bitcast %union.acpi_operand_object* %58 to %struct.acpi_object_field_common*, !dbg !1389
  %start_field_bit_offset68 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field67, i32 0, i32 12, !dbg !1390
  %59 = load i8, i8* %start_field_bit_offset68, align 4, !dbg !1390
  %conv69 = zext i8 %59 to i32, !dbg !1388
  %sub70 = sub i32 %57, %conv69, !dbg !1391
  %sh_prom71 = zext i32 %sub70 to i64, !dbg !1392
  %shl72 = shl i64 %56, %sh_prom71, !dbg !1392
  %60 = load i64, i64* %merged_datum, align 8, !dbg !1393
  %or = or i64 %60, %shl72, !dbg !1393
  store i64 %or, i64* %merged_datum, align 8, !dbg !1393
  br label %if.end73, !dbg !1394

if.end73:                                         ; preds = %if.then66, %if.end59
  %61 = load i32, i32* %i, align 4, !dbg !1395
  %62 = load i32, i32* %datum_count, align 4, !dbg !1397
  %cmp74 = icmp eq i32 %61, %62, !dbg !1398
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !1399

if.then76:                                        ; preds = %if.end73
  br label %for.end, !dbg !1400

if.end77:                                         ; preds = %if.end73
  %63 = load i8*, i8** %buffer.addr, align 8, !dbg !1402
  %64 = load i32, i32* %buffer_offset, align 4, !dbg !1403
  %idx.ext = zext i32 %64 to i64, !dbg !1404
  %add.ptr = getelementptr i8, i8* %63, i64 %idx.ext, !dbg !1404
  %65 = bitcast i64* %merged_datum to i8*, !dbg !1405
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1406
  %common_field78 = bitcast %union.acpi_operand_object* %66 to %struct.acpi_object_field_common*, !dbg !1406
  %access_byte_width79 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field78, i32 0, i32 7, !dbg !1406
  %67 = load i8, i8* %access_byte_width79, align 1, !dbg !1406
  %conv80 = zext i8 %67 to i32, !dbg !1406
  %68 = load i32, i32* %buffer_length.addr, align 4, !dbg !1406
  %69 = load i32, i32* %buffer_offset, align 4, !dbg !1406
  %sub81 = sub i32 %68, %69, !dbg !1406
  %cmp82 = icmp ult i32 %conv80, %sub81, !dbg !1406
  br i1 %cmp82, label %cond.true, label %cond.false, !dbg !1406

cond.true:                                        ; preds = %if.end77
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1406
  %common_field84 = bitcast %union.acpi_operand_object* %70 to %struct.acpi_object_field_common*, !dbg !1406
  %access_byte_width85 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field84, i32 0, i32 7, !dbg !1406
  %71 = load i8, i8* %access_byte_width85, align 1, !dbg !1406
  %conv86 = zext i8 %71 to i32, !dbg !1406
  br label %cond.end, !dbg !1406

cond.false:                                       ; preds = %if.end77
  %72 = load i32, i32* %buffer_length.addr, align 4, !dbg !1406
  %73 = load i32, i32* %buffer_offset, align 4, !dbg !1406
  %sub87 = sub i32 %72, %73, !dbg !1406
  br label %cond.end, !dbg !1406

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv86, %cond.true ], [ %sub87, %cond.false ], !dbg !1406
  %conv88 = zext i32 %cond to i64, !dbg !1406
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 8 %65, i64 %conv88, i1 false), !dbg !1405
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1407
  %common_field89 = bitcast %union.acpi_operand_object* %74 to %struct.acpi_object_field_common*, !dbg !1408
  %access_byte_width90 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field89, i32 0, i32 7, !dbg !1409
  %75 = load i8, i8* %access_byte_width90, align 1, !dbg !1409
  %conv91 = zext i8 %75 to i32, !dbg !1407
  %76 = load i32, i32* %buffer_offset, align 4, !dbg !1410
  %add92 = add i32 %76, %conv91, !dbg !1410
  store i32 %add92, i32* %buffer_offset, align 4, !dbg !1410
  %77 = load i64, i64* %raw_datum, align 8, !dbg !1411
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1412
  %common_field93 = bitcast %union.acpi_operand_object* %78 to %struct.acpi_object_field_common*, !dbg !1413
  %start_field_bit_offset94 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field93, i32 0, i32 12, !dbg !1414
  %79 = load i8, i8* %start_field_bit_offset94, align 4, !dbg !1414
  %conv95 = zext i8 %79 to i32, !dbg !1412
  %sh_prom96 = zext i32 %conv95 to i64, !dbg !1415
  %shr97 = lshr i64 %77, %sh_prom96, !dbg !1415
  store i64 %shr97, i64* %merged_datum, align 8, !dbg !1416
  br label %for.inc, !dbg !1417

for.inc:                                          ; preds = %cond.end
  %80 = load i32, i32* %i, align 4, !dbg !1418
  %inc = add i32 %80, 1, !dbg !1418
  store i32 %inc, i32* %i, align 4, !dbg !1418
  br label %for.cond, !dbg !1419, !llvm.loop !1420

for.end:                                          ; preds = %if.then76, %for.cond
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1422
  %common_field98 = bitcast %union.acpi_operand_object* %81 to %struct.acpi_object_field_common*, !dbg !1423
  %bit_length99 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field98, i32 0, i32 9, !dbg !1424
  %82 = load i32, i32* %bit_length99, align 8, !dbg !1424
  %83 = load i32, i32* %access_bit_width, align 4, !dbg !1425
  %rem = urem i32 %82, %83, !dbg !1426
  store i32 %rem, i32* %buffer_tail_bits, align 4, !dbg !1427
  %84 = load i32, i32* %buffer_tail_bits, align 4, !dbg !1428
  %tobool100 = icmp ne i32 %84, 0, !dbg !1428
  br i1 %tobool100, label %if.then101, label %if.end104, !dbg !1430

if.then101:                                       ; preds = %for.end
  %85 = load i32, i32* %buffer_tail_bits, align 4, !dbg !1431
  %sh_prom102 = zext i32 %85 to i64, !dbg !1431
  %shl103 = shl i64 -1, %sh_prom102, !dbg !1431
  %neg = xor i64 %shl103, -1, !dbg !1431
  %86 = load i64, i64* %merged_datum, align 8, !dbg !1433
  %and = and i64 %86, %neg, !dbg !1433
  store i64 %and, i64* %merged_datum, align 8, !dbg !1433
  br label %if.end104, !dbg !1434

if.end104:                                        ; preds = %if.then101, %for.end
  %87 = load i8*, i8** %buffer.addr, align 8, !dbg !1435
  %88 = load i32, i32* %buffer_offset, align 4, !dbg !1436
  %idx.ext105 = zext i32 %88 to i64, !dbg !1437
  %add.ptr106 = getelementptr i8, i8* %87, i64 %idx.ext105, !dbg !1437
  %89 = bitcast i64* %merged_datum to i8*, !dbg !1438
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1439
  %common_field107 = bitcast %union.acpi_operand_object* %90 to %struct.acpi_object_field_common*, !dbg !1439
  %access_byte_width108 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field107, i32 0, i32 7, !dbg !1439
  %91 = load i8, i8* %access_byte_width108, align 1, !dbg !1439
  %conv109 = zext i8 %91 to i32, !dbg !1439
  %92 = load i32, i32* %buffer_length.addr, align 4, !dbg !1439
  %93 = load i32, i32* %buffer_offset, align 4, !dbg !1439
  %sub110 = sub i32 %92, %93, !dbg !1439
  %cmp111 = icmp ult i32 %conv109, %sub110, !dbg !1439
  br i1 %cmp111, label %cond.true113, label %cond.false117, !dbg !1439

cond.true113:                                     ; preds = %if.end104
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1439
  %common_field114 = bitcast %union.acpi_operand_object* %94 to %struct.acpi_object_field_common*, !dbg !1439
  %access_byte_width115 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field114, i32 0, i32 7, !dbg !1439
  %95 = load i8, i8* %access_byte_width115, align 1, !dbg !1439
  %conv116 = zext i8 %95 to i32, !dbg !1439
  br label %cond.end119, !dbg !1439

cond.false117:                                    ; preds = %if.end104
  %96 = load i32, i32* %buffer_length.addr, align 4, !dbg !1439
  %97 = load i32, i32* %buffer_offset, align 4, !dbg !1439
  %sub118 = sub i32 %96, %97, !dbg !1439
  br label %cond.end119, !dbg !1439

cond.end119:                                      ; preds = %cond.false117, %cond.true113
  %cond120 = phi i32 [ %conv116, %cond.true113 ], [ %sub118, %cond.false117 ], !dbg !1439
  %conv121 = zext i32 %cond120 to i64, !dbg !1439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr106, i8* align 8 %89, i64 %conv121, i1 false), !dbg !1438
  store i32 0, i32* %retval, align 4, !dbg !1440
  br label %return, !dbg !1440

return:                                           ; preds = %cond.end119, %if.then58, %if.then44, %if.end20, %if.then
  %98 = load i32, i32* %retval, align 4, !dbg !1441
  ret i32 %98, !dbg !1441
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_insert_into_field(%union.acpi_operand_object* %obj_desc, i8* %buffer, i32 %buffer_length) #0 !dbg !1442 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %new_buffer = alloca i8*, align 8
  %status = alloca i32, align 4
  %mask = alloca i64, align 8
  %width_mask = alloca i64, align 8
  %merged_datum = alloca i64, align 8
  %raw_datum = alloca i64, align 8
  %field_offset = alloca i32, align 4
  %buffer_offset = alloca i32, align 4
  %buffer_tail_bits = alloca i32, align 4
  %datum_count = alloca i32, align 4
  %field_datum_count = alloca i32, align 4
  %access_bit_width = alloca i32, align 4
  %required_length = alloca i32, align 4
  %i = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1443, metadata !DIExpression()), !dbg !1444
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1445, metadata !DIExpression()), !dbg !1446
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !1447, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.declare(metadata i8** %new_buffer, metadata !1449, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1451, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !1453, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.declare(metadata i64* %width_mask, metadata !1455, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.declare(metadata i64* %merged_datum, metadata !1457, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.declare(metadata i64* %raw_datum, metadata !1459, metadata !DIExpression()), !dbg !1460
  store i64 0, i64* %raw_datum, align 8, !dbg !1460
  call void @llvm.dbg.declare(metadata i32* %field_offset, metadata !1461, metadata !DIExpression()), !dbg !1462
  store i32 0, i32* %field_offset, align 4, !dbg !1462
  call void @llvm.dbg.declare(metadata i32* %buffer_offset, metadata !1463, metadata !DIExpression()), !dbg !1464
  store i32 0, i32* %buffer_offset, align 4, !dbg !1464
  call void @llvm.dbg.declare(metadata i32* %buffer_tail_bits, metadata !1465, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.declare(metadata i32* %datum_count, metadata !1467, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.declare(metadata i32* %field_datum_count, metadata !1469, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.declare(metadata i32* %access_bit_width, metadata !1471, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.declare(metadata i32* %required_length, metadata !1473, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1475, metadata !DIExpression()), !dbg !1476
  store i8* null, i8** %new_buffer, align 8, !dbg !1477
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1478
  %common_field = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_field_common*, !dbg !1478
  %bit_length = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 9, !dbg !1478
  %1 = load i32, i32* %bit_length, align 8, !dbg !1478
  %add = add i32 %1, 7, !dbg !1478
  %shr = lshr i32 %add, 3, !dbg !1478
  store i32 %shr, i32* %required_length, align 4, !dbg !1479
  %2 = load i32, i32* %buffer_length.addr, align 4, !dbg !1480
  %3 = load i32, i32* %required_length, align 4, !dbg !1482
  %cmp = icmp ult i32 %2, %3, !dbg !1483
  br i1 %cmp, label %if.then, label %if.end3, !dbg !1484

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %required_length, align 4, !dbg !1485
  %conv = zext i32 %4 to i64, !dbg !1485
  %call = call i8* @acpi_os_allocate_zeroed(i64 %conv) #9, !dbg !1485
  store i8* %call, i8** %new_buffer, align 8, !dbg !1487
  %5 = load i8*, i8** %new_buffer, align 8, !dbg !1488
  %tobool = icmp ne i8* %5, null, !dbg !1488
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1490

if.then1:                                         ; preds = %if.then
  store i32 4, i32* %retval, align 4, !dbg !1491
  br label %return, !dbg !1491

if.end:                                           ; preds = %if.then
  %6 = load i8*, i8** %new_buffer, align 8, !dbg !1493
  %7 = load i8*, i8** %buffer.addr, align 8, !dbg !1494
  %8 = load i32, i32* %buffer_length.addr, align 4, !dbg !1495
  %conv2 = zext i32 %8 to i64, !dbg !1495
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %conv2, i1 false), !dbg !1496
  %9 = load i8*, i8** %new_buffer, align 8, !dbg !1497
  store i8* %9, i8** %buffer.addr, align 8, !dbg !1498
  %10 = load i32, i32* %required_length, align 4, !dbg !1499
  store i32 %10, i32* %buffer_length.addr, align 4, !dbg !1500
  br label %if.end3, !dbg !1501

if.end3:                                          ; preds = %if.end, %entry
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1502
  %common_field4 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_field_common*, !dbg !1504
  %access_byte_width = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field4, i32 0, i32 7, !dbg !1505
  %12 = load i8, i8* %access_byte_width, align 1, !dbg !1505
  %conv5 = zext i8 %12 to i64, !dbg !1502
  %cmp6 = icmp ugt i64 %conv5, 8, !dbg !1506
  br i1 %cmp6, label %if.then8, label %if.end11, !dbg !1507

if.then8:                                         ; preds = %if.end3
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1508
  %common_field9 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_field_common*, !dbg !1510
  %access_byte_width10 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field9, i32 0, i32 7, !dbg !1511
  store i8 8, i8* %access_byte_width10, align 1, !dbg !1512
  br label %if.end11, !dbg !1513

if.end11:                                         ; preds = %if.then8, %if.end3
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1514
  %common_field12 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_field_common*, !dbg !1514
  %access_byte_width13 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field12, i32 0, i32 7, !dbg !1514
  %15 = load i8, i8* %access_byte_width13, align 1, !dbg !1514
  %conv14 = zext i8 %15 to i32, !dbg !1514
  %shl = shl i32 %conv14, 3, !dbg !1514
  store i32 %shl, i32* %access_bit_width, align 4, !dbg !1515
  %16 = load i32, i32* %access_bit_width, align 4, !dbg !1516
  %cmp15 = icmp eq i32 %16, 64, !dbg !1516
  br i1 %cmp15, label %cond.true, label %cond.false, !dbg !1516

cond.true:                                        ; preds = %if.end11
  br label %cond.end, !dbg !1516

cond.false:                                       ; preds = %if.end11
  %17 = load i32, i32* %access_bit_width, align 4, !dbg !1516
  %sh_prom = zext i32 %17 to i64, !dbg !1516
  %shl17 = shl i64 -1, %sh_prom, !dbg !1516
  %neg = xor i64 %shl17, -1, !dbg !1516
  br label %cond.end, !dbg !1516

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %neg, %cond.false ], !dbg !1516
  store i64 %cond, i64* %width_mask, align 8, !dbg !1517
  %18 = load i64, i64* %width_mask, align 8, !dbg !1518
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1519
  %common_field18 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_field_common*, !dbg !1519
  %start_field_bit_offset = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field18, i32 0, i32 12, !dbg !1519
  %20 = load i8, i8* %start_field_bit_offset, align 4, !dbg !1519
  %conv19 = zext i8 %20 to i32, !dbg !1519
  %sh_prom20 = zext i32 %conv19 to i64, !dbg !1519
  %shl21 = shl i64 -1, %sh_prom20, !dbg !1519
  %and = and i64 %18, %shl21, !dbg !1520
  store i64 %and, i64* %mask, align 8, !dbg !1521
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1522
  %common_field22 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_field_common*, !dbg !1522
  %bit_length23 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field22, i32 0, i32 9, !dbg !1522
  %22 = load i32, i32* %bit_length23, align 8, !dbg !1522
  %23 = load i32, i32* %access_bit_width, align 4, !dbg !1522
  %sub = sub i32 %23, 1, !dbg !1522
  %add24 = add i32 %22, %sub, !dbg !1522
  %24 = load i32, i32* %access_bit_width, align 4, !dbg !1522
  %div = udiv i32 %add24, %24, !dbg !1522
  store i32 %div, i32* %datum_count, align 4, !dbg !1523
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1524
  %common_field25 = bitcast %union.acpi_operand_object* %25 to %struct.acpi_object_field_common*, !dbg !1524
  %bit_length26 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field25, i32 0, i32 9, !dbg !1524
  %26 = load i32, i32* %bit_length26, align 8, !dbg !1524
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1524
  %common_field27 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_field_common*, !dbg !1524
  %start_field_bit_offset28 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field27, i32 0, i32 12, !dbg !1524
  %28 = load i8, i8* %start_field_bit_offset28, align 4, !dbg !1524
  %conv29 = zext i8 %28 to i32, !dbg !1524
  %add30 = add i32 %26, %conv29, !dbg !1524
  %29 = load i32, i32* %access_bit_width, align 4, !dbg !1524
  %sub31 = sub i32 %29, 1, !dbg !1524
  %add32 = add i32 %add30, %sub31, !dbg !1524
  %30 = load i32, i32* %access_bit_width, align 4, !dbg !1524
  %div33 = udiv i32 %add32, %30, !dbg !1524
  store i32 %div33, i32* %field_datum_count, align 4, !dbg !1525
  %31 = bitcast i64* %raw_datum to i8*, !dbg !1526
  %32 = load i8*, i8** %buffer.addr, align 8, !dbg !1527
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1528
  %common_field34 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_field_common*, !dbg !1528
  %access_byte_width35 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field34, i32 0, i32 7, !dbg !1528
  %34 = load i8, i8* %access_byte_width35, align 1, !dbg !1528
  %conv36 = zext i8 %34 to i32, !dbg !1528
  %35 = load i32, i32* %buffer_length.addr, align 4, !dbg !1528
  %36 = load i32, i32* %buffer_offset, align 4, !dbg !1528
  %sub37 = sub i32 %35, %36, !dbg !1528
  %cmp38 = icmp ult i32 %conv36, %sub37, !dbg !1528
  br i1 %cmp38, label %cond.true40, label %cond.false44, !dbg !1528

cond.true40:                                      ; preds = %cond.end
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1528
  %common_field41 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_field_common*, !dbg !1528
  %access_byte_width42 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field41, i32 0, i32 7, !dbg !1528
  %38 = load i8, i8* %access_byte_width42, align 1, !dbg !1528
  %conv43 = zext i8 %38 to i32, !dbg !1528
  br label %cond.end46, !dbg !1528

cond.false44:                                     ; preds = %cond.end
  %39 = load i32, i32* %buffer_length.addr, align 4, !dbg !1528
  %40 = load i32, i32* %buffer_offset, align 4, !dbg !1528
  %sub45 = sub i32 %39, %40, !dbg !1528
  br label %cond.end46, !dbg !1528

cond.end46:                                       ; preds = %cond.false44, %cond.true40
  %cond47 = phi i32 [ %conv43, %cond.true40 ], [ %sub45, %cond.false44 ], !dbg !1528
  %conv48 = zext i32 %cond47 to i64, !dbg !1528
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 1 %32, i64 %conv48, i1 false), !dbg !1526
  %41 = load i64, i64* %raw_datum, align 8, !dbg !1529
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1530
  %common_field49 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_field_common*, !dbg !1531
  %start_field_bit_offset50 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field49, i32 0, i32 12, !dbg !1532
  %43 = load i8, i8* %start_field_bit_offset50, align 4, !dbg !1532
  %conv51 = zext i8 %43 to i32, !dbg !1530
  %sh_prom52 = zext i32 %conv51 to i64, !dbg !1533
  %shl53 = shl i64 %41, %sh_prom52, !dbg !1533
  store i64 %shl53, i64* %merged_datum, align 8, !dbg !1534
  store i32 1, i32* %i, align 4, !dbg !1535
  br label %for.cond, !dbg !1537

for.cond:                                         ; preds = %for.inc, %cond.end46
  %44 = load i32, i32* %i, align 4, !dbg !1538
  %45 = load i32, i32* %field_datum_count, align 4, !dbg !1540
  %cmp54 = icmp ult i32 %44, %45, !dbg !1541
  br i1 %cmp54, label %for.body, label %for.end, !dbg !1542

for.body:                                         ; preds = %for.cond
  %46 = load i64, i64* %mask, align 8, !dbg !1543
  %47 = load i64, i64* %merged_datum, align 8, !dbg !1545
  %and56 = and i64 %47, %46, !dbg !1545
  store i64 %and56, i64* %merged_datum, align 8, !dbg !1545
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1546
  %49 = load i64, i64* %mask, align 8, !dbg !1547
  %50 = load i64, i64* %merged_datum, align 8, !dbg !1548
  %51 = load i32, i32* %field_offset, align 4, !dbg !1549
  %call57 = call i32 @acpi_ex_write_with_update_rule(%union.acpi_operand_object* %48, i64 %49, i64 %50, i32 %51) #9, !dbg !1550
  store i32 %call57, i32* %status, align 4, !dbg !1551
  %52 = load i32, i32* %status, align 4, !dbg !1552
  %tobool58 = icmp ne i32 %52, 0, !dbg !1552
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !1554

if.then59:                                        ; preds = %for.body
  br label %exit, !dbg !1555

if.end60:                                         ; preds = %for.body
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1557
  %common_field61 = bitcast %union.acpi_operand_object* %53 to %struct.acpi_object_field_common*, !dbg !1558
  %access_byte_width62 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field61, i32 0, i32 7, !dbg !1559
  %54 = load i8, i8* %access_byte_width62, align 1, !dbg !1559
  %conv63 = zext i8 %54 to i32, !dbg !1557
  %55 = load i32, i32* %field_offset, align 4, !dbg !1560
  %add64 = add i32 %55, %conv63, !dbg !1560
  store i32 %add64, i32* %field_offset, align 4, !dbg !1560
  %56 = load i32, i32* %access_bit_width, align 4, !dbg !1561
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1563
  %common_field65 = bitcast %union.acpi_operand_object* %57 to %struct.acpi_object_field_common*, !dbg !1564
  %start_field_bit_offset66 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field65, i32 0, i32 12, !dbg !1565
  %58 = load i8, i8* %start_field_bit_offset66, align 4, !dbg !1565
  %conv67 = zext i8 %58 to i32, !dbg !1563
  %sub68 = sub i32 %56, %conv67, !dbg !1566
  %cmp69 = icmp ult i32 %sub68, 64, !dbg !1567
  br i1 %cmp69, label %if.then71, label %if.else, !dbg !1568

if.then71:                                        ; preds = %if.end60
  %59 = load i64, i64* %raw_datum, align 8, !dbg !1569
  %60 = load i32, i32* %access_bit_width, align 4, !dbg !1571
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1572
  %common_field72 = bitcast %union.acpi_operand_object* %61 to %struct.acpi_object_field_common*, !dbg !1573
  %start_field_bit_offset73 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field72, i32 0, i32 12, !dbg !1574
  %62 = load i8, i8* %start_field_bit_offset73, align 4, !dbg !1574
  %conv74 = zext i8 %62 to i32, !dbg !1572
  %sub75 = sub i32 %60, %conv74, !dbg !1575
  %sh_prom76 = zext i32 %sub75 to i64, !dbg !1576
  %shr77 = lshr i64 %59, %sh_prom76, !dbg !1576
  store i64 %shr77, i64* %merged_datum, align 8, !dbg !1577
  br label %if.end78, !dbg !1578

if.else:                                          ; preds = %if.end60
  store i64 0, i64* %merged_datum, align 8, !dbg !1579
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then71
  %63 = load i64, i64* %width_mask, align 8, !dbg !1581
  store i64 %63, i64* %mask, align 8, !dbg !1582
  %64 = load i32, i32* %i, align 4, !dbg !1583
  %65 = load i32, i32* %datum_count, align 4, !dbg !1585
  %cmp79 = icmp eq i32 %64, %65, !dbg !1586
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !1587

if.then81:                                        ; preds = %if.end78
  br label %for.end, !dbg !1588

if.end82:                                         ; preds = %if.end78
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1590
  %common_field83 = bitcast %union.acpi_operand_object* %66 to %struct.acpi_object_field_common*, !dbg !1591
  %access_byte_width84 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field83, i32 0, i32 7, !dbg !1592
  %67 = load i8, i8* %access_byte_width84, align 1, !dbg !1592
  %conv85 = zext i8 %67 to i32, !dbg !1590
  %68 = load i32, i32* %buffer_offset, align 4, !dbg !1593
  %add86 = add i32 %68, %conv85, !dbg !1593
  store i32 %add86, i32* %buffer_offset, align 4, !dbg !1593
  %69 = bitcast i64* %raw_datum to i8*, !dbg !1594
  %70 = load i8*, i8** %buffer.addr, align 8, !dbg !1595
  %71 = load i32, i32* %buffer_offset, align 4, !dbg !1596
  %idx.ext = zext i32 %71 to i64, !dbg !1597
  %add.ptr = getelementptr i8, i8* %70, i64 %idx.ext, !dbg !1597
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1598
  %common_field87 = bitcast %union.acpi_operand_object* %72 to %struct.acpi_object_field_common*, !dbg !1598
  %access_byte_width88 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field87, i32 0, i32 7, !dbg !1598
  %73 = load i8, i8* %access_byte_width88, align 1, !dbg !1598
  %conv89 = zext i8 %73 to i32, !dbg !1598
  %74 = load i32, i32* %buffer_length.addr, align 4, !dbg !1598
  %75 = load i32, i32* %buffer_offset, align 4, !dbg !1598
  %sub90 = sub i32 %74, %75, !dbg !1598
  %cmp91 = icmp ult i32 %conv89, %sub90, !dbg !1598
  br i1 %cmp91, label %cond.true93, label %cond.false97, !dbg !1598

cond.true93:                                      ; preds = %if.end82
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1598
  %common_field94 = bitcast %union.acpi_operand_object* %76 to %struct.acpi_object_field_common*, !dbg !1598
  %access_byte_width95 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field94, i32 0, i32 7, !dbg !1598
  %77 = load i8, i8* %access_byte_width95, align 1, !dbg !1598
  %conv96 = zext i8 %77 to i32, !dbg !1598
  br label %cond.end99, !dbg !1598

cond.false97:                                     ; preds = %if.end82
  %78 = load i32, i32* %buffer_length.addr, align 4, !dbg !1598
  %79 = load i32, i32* %buffer_offset, align 4, !dbg !1598
  %sub98 = sub i32 %78, %79, !dbg !1598
  br label %cond.end99, !dbg !1598

cond.end99:                                       ; preds = %cond.false97, %cond.true93
  %cond100 = phi i32 [ %conv96, %cond.true93 ], [ %sub98, %cond.false97 ], !dbg !1598
  %conv101 = zext i32 %cond100 to i64, !dbg !1598
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 1 %add.ptr, i64 %conv101, i1 false), !dbg !1594
  %80 = load i64, i64* %raw_datum, align 8, !dbg !1599
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1600
  %common_field102 = bitcast %union.acpi_operand_object* %81 to %struct.acpi_object_field_common*, !dbg !1601
  %start_field_bit_offset103 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field102, i32 0, i32 12, !dbg !1602
  %82 = load i8, i8* %start_field_bit_offset103, align 4, !dbg !1602
  %conv104 = zext i8 %82 to i32, !dbg !1600
  %sh_prom105 = zext i32 %conv104 to i64, !dbg !1603
  %shl106 = shl i64 %80, %sh_prom105, !dbg !1603
  %83 = load i64, i64* %merged_datum, align 8, !dbg !1604
  %or = or i64 %83, %shl106, !dbg !1604
  store i64 %or, i64* %merged_datum, align 8, !dbg !1604
  br label %for.inc, !dbg !1605

for.inc:                                          ; preds = %cond.end99
  %84 = load i32, i32* %i, align 4, !dbg !1606
  %inc = add i32 %84, 1, !dbg !1606
  store i32 %inc, i32* %i, align 4, !dbg !1606
  br label %for.cond, !dbg !1607, !llvm.loop !1608

for.end:                                          ; preds = %if.then81, %for.cond
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1610
  %common_field107 = bitcast %union.acpi_operand_object* %85 to %struct.acpi_object_field_common*, !dbg !1611
  %bit_length108 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field107, i32 0, i32 9, !dbg !1612
  %86 = load i32, i32* %bit_length108, align 8, !dbg !1612
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1613
  %common_field109 = bitcast %union.acpi_operand_object* %87 to %struct.acpi_object_field_common*, !dbg !1614
  %start_field_bit_offset110 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field109, i32 0, i32 12, !dbg !1615
  %88 = load i8, i8* %start_field_bit_offset110, align 4, !dbg !1615
  %conv111 = zext i8 %88 to i32, !dbg !1613
  %add112 = add i32 %86, %conv111, !dbg !1616
  %89 = load i32, i32* %access_bit_width, align 4, !dbg !1617
  %rem = urem i32 %add112, %89, !dbg !1618
  store i32 %rem, i32* %buffer_tail_bits, align 4, !dbg !1619
  %90 = load i32, i32* %buffer_tail_bits, align 4, !dbg !1620
  %tobool113 = icmp ne i32 %90, 0, !dbg !1620
  br i1 %tobool113, label %if.then114, label %if.end119, !dbg !1622

if.then114:                                       ; preds = %for.end
  %91 = load i32, i32* %buffer_tail_bits, align 4, !dbg !1623
  %sh_prom115 = zext i32 %91 to i64, !dbg !1623
  %shl116 = shl i64 -1, %sh_prom115, !dbg !1623
  %neg117 = xor i64 %shl116, -1, !dbg !1623
  %92 = load i64, i64* %mask, align 8, !dbg !1625
  %and118 = and i64 %92, %neg117, !dbg !1625
  store i64 %and118, i64* %mask, align 8, !dbg !1625
  br label %if.end119, !dbg !1626

if.end119:                                        ; preds = %if.then114, %for.end
  %93 = load i64, i64* %mask, align 8, !dbg !1627
  %94 = load i64, i64* %merged_datum, align 8, !dbg !1628
  %and120 = and i64 %94, %93, !dbg !1628
  store i64 %and120, i64* %merged_datum, align 8, !dbg !1628
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1629
  %96 = load i64, i64* %mask, align 8, !dbg !1630
  %97 = load i64, i64* %merged_datum, align 8, !dbg !1631
  %98 = load i32, i32* %field_offset, align 4, !dbg !1632
  %call121 = call i32 @acpi_ex_write_with_update_rule(%union.acpi_operand_object* %95, i64 %96, i64 %97, i32 %98) #9, !dbg !1633
  store i32 %call121, i32* %status, align 4, !dbg !1634
  br label %exit, !dbg !1635

exit:                                             ; preds = %if.end119, %if.then59
  call void @llvm.dbg.label(metadata !1636), !dbg !1637
  %99 = load i8*, i8** %new_buffer, align 8, !dbg !1638
  %tobool122 = icmp ne i8* %99, null, !dbg !1638
  br i1 %tobool122, label %if.then123, label %if.end124, !dbg !1640

if.then123:                                       ; preds = %exit
  %100 = load i8*, i8** %new_buffer, align 8, !dbg !1641
  call void @acpi_os_free(i8* %100) #9, !dbg !1641
  br label %if.end124, !dbg !1643

if.end124:                                        ; preds = %if.then123, %exit
  %101 = load i32, i32* %status, align 4, !dbg !1644
  store i32 %101, i32* %retval, align 4, !dbg !1644
  br label %return, !dbg !1644

return:                                           ; preds = %if.end124, %if.then1
  %102 = load i32, i32* %retval, align 4, !dbg !1645
  ret i32 %102, !dbg !1645
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1646 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1650, metadata !DIExpression()), !dbg !1656
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1660, metadata !DIExpression()), !dbg !1661
  %0 = load i64, i64* %size.addr, align 8, !dbg !1662
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1663, metadata !DIExpression()), !dbg !1664
  br label %do.body, !dbg !1664

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1665, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1669, metadata !DIExpression()), !dbg !1668
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1668
  %conv = zext i1 %cmp to i32, !dbg !1668
  store i32 1, i32* %tmp, align 4, !dbg !1668
  %1 = load i32, i32* %tmp, align 4, !dbg !1668
  %call = call i64 @arch_local_save_flags() #9, !dbg !1670
  store i64 %call, i64* %_flags, align 8, !dbg !1670
  br label %do.end, !dbg !1670

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1671, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1674, metadata !DIExpression()), !dbg !1673
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1673
  %conv6 = zext i1 %cmp5 to i32, !dbg !1673
  store i32 1, i32* %tmp7, align 4, !dbg !1673
  %2 = load i32, i32* %tmp7, align 4, !dbg !1673
  %3 = load i64, i64* %_flags, align 8, !dbg !1675
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1676
  %and.i = and i64 %4, 512, !dbg !1677
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1678
  %lnot.i = xor i1 %tobool.i, true, !dbg !1678
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1678
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1675
  %5 = load i32, i32* %tmp8, align 4, !dbg !1675
  store i32 %5, i32* %tmp1, align 4, !dbg !1670
  %6 = load i32, i32* %tmp1, align 4, !dbg !1664
  %tobool = icmp ne i32 %6, 0, !dbg !1679
  %7 = zext i1 %tobool to i64, !dbg !1679
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1679
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #9, !dbg !1680
  ret i8* %call10, !dbg !1681
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1682 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1685, metadata !DIExpression()), !dbg !1686
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1687
  call void @kfree(i8* %0) #9, !dbg !1688
  ret void, !dbg !1689
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_is_valid_space_id(i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_get_region_arguments(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_node_name(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @acpi_ex_register_overflow(%union.acpi_operand_object* %obj_desc, i64 %value) #0 !dbg !1690 {
entry:
  %retval = alloca i8, align 1
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %value.addr = alloca i64, align 8
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1693, metadata !DIExpression()), !dbg !1694
  store i64 %value, i64* %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !1695, metadata !DIExpression()), !dbg !1696
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1697
  %common_field = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_field_common*, !dbg !1699
  %bit_length = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 9, !dbg !1700
  %1 = load i32, i32* %bit_length, align 8, !dbg !1700
  %cmp = icmp uge i32 %1, 64, !dbg !1701
  br i1 %cmp, label %if.then, label %if.end, !dbg !1702

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !1703
  br label %return, !dbg !1703

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %value.addr, align 8, !dbg !1705
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1707
  %common_field1 = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_field_common*, !dbg !1708
  %bit_length2 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field1, i32 0, i32 9, !dbg !1709
  %4 = load i32, i32* %bit_length2, align 8, !dbg !1709
  %sh_prom = zext i32 %4 to i64, !dbg !1710
  %shl = shl i64 1, %sh_prom, !dbg !1710
  %cmp3 = icmp uge i64 %2, %shl, !dbg !1711
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !1712

if.then4:                                         ; preds = %if.end
  %5 = load i64, i64* %value.addr, align 8, !dbg !1713
  %shr = lshr i64 %5, 32, !dbg !1713
  %conv = trunc i64 %shr to i32, !dbg !1713
  %6 = load i64, i64* %value.addr, align 8, !dbg !1713
  %conv5 = trunc i64 %6 to i32, !dbg !1713
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1713
  %common_field6 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_field_common*, !dbg !1713
  %bit_length7 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field6, i32 0, i32 9, !dbg !1713
  %8 = load i32, i32* %bit_length7, align 8, !dbg !1713
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 306, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 %conv, i32 %conv5, i32 %8) #9, !dbg !1713
  store i8 1, i8* %retval, align 1, !dbg !1715
  br label %return, !dbg !1715

if.end8:                                          ; preds = %if.end
  store i8 0, i8* %retval, align 1, !dbg !1716
  br label %return, !dbg !1716

return:                                           ; preds = %if.end8, %if.then4, %if.then
  %9 = load i8, i8* %retval, align 1, !dbg !1717
  ret i8 %9, !dbg !1717
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1718 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1725, metadata !DIExpression()), !dbg !1732
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1738, metadata !DIExpression()), !dbg !1739
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1740, metadata !DIExpression()), !dbg !1741
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1742, metadata !DIExpression()), !dbg !1743
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1744, metadata !DIExpression()), !dbg !1748
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1750, metadata !DIExpression()), !dbg !1754
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1756, metadata !DIExpression()), !dbg !1760
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1765, metadata !DIExpression()), !dbg !1766
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1767, metadata !DIExpression()), !dbg !1768
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1769, metadata !DIExpression()), !dbg !1770
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1771, metadata !DIExpression()), !dbg !1772
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1773, metadata !DIExpression()), !dbg !1774
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1775, metadata !DIExpression()), !dbg !1776
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1777, metadata !DIExpression()), !dbg !1778
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1779, metadata !DIExpression()), !dbg !1780
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1781, metadata !DIExpression()), !dbg !1782
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1783, metadata !DIExpression()), !dbg !1784
  %0 = load i64, i64* %size.addr, align 8, !dbg !1785
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1786
  %or = or i32 %1, 256, !dbg !1787
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1788
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !1789
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1790

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1791
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1792
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1793

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1794
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1795
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1796
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !1797
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1774
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1798
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1799
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1800
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1801
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1802
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1803
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !1804
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1804
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1804
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1804
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1804
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1805
  br label %kmalloc.exit, !dbg !1805

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1806
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1807
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1807
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1809

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1810
  br label %kmalloc_index.exit.i, !dbg !1810

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1811
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1813
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1814

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1815
  br label %kmalloc_index.exit.i, !dbg !1815

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1816
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1818
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1819

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1820
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1821
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1822

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1823
  br label %kmalloc_index.exit.i, !dbg !1823

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1824
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1826
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1827

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1828
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1829
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1830

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1831
  br label %kmalloc_index.exit.i, !dbg !1831

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1832
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1834
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1835

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1836
  br label %kmalloc_index.exit.i, !dbg !1836

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1837
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1839
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1840

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1841
  br label %kmalloc_index.exit.i, !dbg !1841

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1842
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1844
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1845

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1846
  br label %kmalloc_index.exit.i, !dbg !1846

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1847
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1849
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1850

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1851
  br label %kmalloc_index.exit.i, !dbg !1851

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1852
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1854
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1855

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1856
  br label %kmalloc_index.exit.i, !dbg !1856

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1857
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1859
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1860

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1861
  br label %kmalloc_index.exit.i, !dbg !1861

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1862
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1864
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1865

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1866
  br label %kmalloc_index.exit.i, !dbg !1866

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1867
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1869
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1870

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1871
  br label %kmalloc_index.exit.i, !dbg !1871

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1872
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1874
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1875

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1876
  br label %kmalloc_index.exit.i, !dbg !1876

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1877
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1879
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1880

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1881
  br label %kmalloc_index.exit.i, !dbg !1881

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1882
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1884
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1885

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1886
  br label %kmalloc_index.exit.i, !dbg !1886

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1887
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1889
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1890

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1891
  br label %kmalloc_index.exit.i, !dbg !1891

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1892
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1894
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1895

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1896
  br label %kmalloc_index.exit.i, !dbg !1896

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1897
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1899
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1900

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1901
  br label %kmalloc_index.exit.i, !dbg !1901

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1902
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1904
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1905

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1906
  br label %kmalloc_index.exit.i, !dbg !1906

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1907
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1909
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1910

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1911
  br label %kmalloc_index.exit.i, !dbg !1911

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1912
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1914
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1915

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1916
  br label %kmalloc_index.exit.i, !dbg !1916

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1917
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1919
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1920

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1921
  br label %kmalloc_index.exit.i, !dbg !1921

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1922
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1924
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1925

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1926
  br label %kmalloc_index.exit.i, !dbg !1926

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1927
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1929
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1930

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1931
  br label %kmalloc_index.exit.i, !dbg !1931

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1932
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1934
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1935

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1936
  br label %kmalloc_index.exit.i, !dbg !1936

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1937
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1939
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1940

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1941
  br label %kmalloc_index.exit.i, !dbg !1941

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1942
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1944
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1945

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1946
  br label %kmalloc_index.exit.i, !dbg !1946

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1947
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1949
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1950

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1951
  br label %kmalloc_index.exit.i, !dbg !1951

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1952, !srcloc !1955
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !1956, !srcloc !1959
  unreachable, !dbg !1960

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1961
  store i32 %45, i32* %index.i, align 4, !dbg !1962
  %46 = load i32, i32* %index.i, align 4, !dbg !1963
  %tobool.i = icmp ne i32 %46, 0, !dbg !1963
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1965

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1966
  br label %kmalloc.exit, !dbg !1966

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1967
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1968
  %and.i.i = and i32 %48, 17, !dbg !1968
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1968
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1968
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1968
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1968
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1970

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1971
  br label %kmalloc_type.exit.i, !dbg !1971

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1972
  %and2.i.i = and i32 %49, 1, !dbg !1973
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1972
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1972
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1972
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1974
  br label %kmalloc_type.exit.i, !dbg !1974

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1975
  %idxprom.i = zext i32 %51 to i64, !dbg !1976
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1976
  %52 = load i32, i32* %index.i, align 4, !dbg !1977
  %idxprom6.i = zext i32 %52 to i64, !dbg !1976
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1976
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1976
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1978
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1979
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1980
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1981
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !1982
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1982
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1982
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1982
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1982
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1743
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1983
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1984
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1985
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1986
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !1987
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1988
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1989
  store i8* %62, i8** %retval.i, align 8, !dbg !1990
  br label %kmalloc.exit, !dbg !1990

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1991
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1992
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !1993
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1993
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1993
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1993
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1993
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1994
  br label %kmalloc.exit, !dbg !1994

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1995
  ret i8* %65, !dbg !1996
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1997 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !2001, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2004, metadata !DIExpression()), !dbg !2003
  %0 = load i64, i64* %__edi, align 8, !dbg !2003
  store i64 %0, i64* %__edi, align 8, !dbg !2003
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2005, metadata !DIExpression()), !dbg !2003
  %1 = load i64, i64* %__esi, align 8, !dbg !2003
  store i64 %1, i64* %__esi, align 8, !dbg !2003
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2006, metadata !DIExpression()), !dbg !2003
  %2 = load i64, i64* %__edx, align 8, !dbg !2003
  store i64 %2, i64* %__edx, align 8, !dbg !2003
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2007, metadata !DIExpression()), !dbg !2003
  %3 = load i64, i64* %__ecx, align 8, !dbg !2003
  store i64 %3, i64* %__ecx, align 8, !dbg !2003
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2008, metadata !DIExpression()), !dbg !2003
  %4 = load i64, i64* %__eax, align 8, !dbg !2003
  store i64 %4, i64* %__eax, align 8, !dbg !2003
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !2003
  %6 = call i64 @llvm.read_register.i64(metadata !39), !dbg !2009
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !2009, !srcloc !2012
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2009
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2009
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2009
  call void @llvm.write_register.i64(metadata !39, i64 %asmresult1), !dbg !2009
  %8 = load i64, i64* %__eax, align 8, !dbg !2009
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !2013, metadata !DIExpression()), !dbg !2015
  store i64 -1, i64* %__mask, align 8, !dbg !2015
  %9 = load i64, i64* %__mask, align 8, !dbg !2015
  store i64 %9, i64* %tmp, align 8, !dbg !2015
  %10 = load i64, i64* %tmp, align 8, !dbg !2015
  %and = and i64 %8, %10, !dbg !2009
  store i64 %and, i64* %__ret, align 8, !dbg !2009
  %11 = load i64, i64* %__ret, align 8, !dbg !2003
  store i64 %11, i64* %tmp2, align 8, !dbg !2016
  %12 = load i64, i64* %tmp2, align 8, !dbg !2003
  ret i64 %12, !dbg !2017
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !2018 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2020, metadata !DIExpression()), !dbg !2025
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2027, metadata !DIExpression()), !dbg !2028
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2029, metadata !DIExpression()), !dbg !2030
  %0 = load i64, i64* %size.addr, align 8, !dbg !2031
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2033
  br i1 %1, label %if.then, label %if.end447, !dbg !2034

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2035
  %tobool = icmp ne i64 %2, 0, !dbg !2035
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2038

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2039
  br label %return, !dbg !2039

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2040
  %cmp = icmp ult i64 %3, 4096, !dbg !2042
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2043

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2044
  br label %return, !dbg !2044

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub = sub i64 %4, 1, !dbg !2045
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2045
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2045

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub4 = sub i64 %6, 1, !dbg !2045
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2045
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2045

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub6 = sub i64 %8, 1, !dbg !2045
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2045
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2045

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2045

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub9 = sub i64 %9, 1, !dbg !2045
  %and = and i64 %sub9, -9223372036854775808, !dbg !2045
  %tobool10 = icmp ne i64 %and, 0, !dbg !2045
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2045

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2045

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub13 = sub i64 %10, 1, !dbg !2045
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2045
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2045
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2045

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2045

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub18 = sub i64 %11, 1, !dbg !2045
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2045
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2045
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2045

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2045

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub23 = sub i64 %12, 1, !dbg !2045
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2045
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2045
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2045

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2045

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub28 = sub i64 %13, 1, !dbg !2045
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2045
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2045
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2045

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2045

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub33 = sub i64 %14, 1, !dbg !2045
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2045
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2045
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2045

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2045

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub38 = sub i64 %15, 1, !dbg !2045
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2045
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2045
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2045

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2045

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub43 = sub i64 %16, 1, !dbg !2045
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2045
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2045
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2045

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2045

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub48 = sub i64 %17, 1, !dbg !2045
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2045
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2045
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2045

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2045

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub53 = sub i64 %18, 1, !dbg !2045
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2045
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2045
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2045

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2045

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub58 = sub i64 %19, 1, !dbg !2045
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2045
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2045
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2045

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2045

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub63 = sub i64 %20, 1, !dbg !2045
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2045
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2045
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2045

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2045

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub68 = sub i64 %21, 1, !dbg !2045
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2045
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2045
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2045

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2045

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub73 = sub i64 %22, 1, !dbg !2045
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2045
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2045
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2045

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2045

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub78 = sub i64 %23, 1, !dbg !2045
  %and79 = and i64 %sub78, 562949953421312, !dbg !2045
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2045
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2045

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2045

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub83 = sub i64 %24, 1, !dbg !2045
  %and84 = and i64 %sub83, 281474976710656, !dbg !2045
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2045
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2045

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2045

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub88 = sub i64 %25, 1, !dbg !2045
  %and89 = and i64 %sub88, 140737488355328, !dbg !2045
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2045
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2045

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2045

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub93 = sub i64 %26, 1, !dbg !2045
  %and94 = and i64 %sub93, 70368744177664, !dbg !2045
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2045
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2045

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2045

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub98 = sub i64 %27, 1, !dbg !2045
  %and99 = and i64 %sub98, 35184372088832, !dbg !2045
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2045
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2045

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2045

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub103 = sub i64 %28, 1, !dbg !2045
  %and104 = and i64 %sub103, 17592186044416, !dbg !2045
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2045
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2045

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2045

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub108 = sub i64 %29, 1, !dbg !2045
  %and109 = and i64 %sub108, 8796093022208, !dbg !2045
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2045
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2045

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2045

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub113 = sub i64 %30, 1, !dbg !2045
  %and114 = and i64 %sub113, 4398046511104, !dbg !2045
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2045
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2045

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2045

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub118 = sub i64 %31, 1, !dbg !2045
  %and119 = and i64 %sub118, 2199023255552, !dbg !2045
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2045
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2045

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2045

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub123 = sub i64 %32, 1, !dbg !2045
  %and124 = and i64 %sub123, 1099511627776, !dbg !2045
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2045
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2045

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2045

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub128 = sub i64 %33, 1, !dbg !2045
  %and129 = and i64 %sub128, 549755813888, !dbg !2045
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2045
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2045

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2045

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub133 = sub i64 %34, 1, !dbg !2045
  %and134 = and i64 %sub133, 274877906944, !dbg !2045
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2045
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2045

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2045

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub138 = sub i64 %35, 1, !dbg !2045
  %and139 = and i64 %sub138, 137438953472, !dbg !2045
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2045
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2045

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2045

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub143 = sub i64 %36, 1, !dbg !2045
  %and144 = and i64 %sub143, 68719476736, !dbg !2045
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2045
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2045

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2045

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub148 = sub i64 %37, 1, !dbg !2045
  %and149 = and i64 %sub148, 34359738368, !dbg !2045
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2045
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2045

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2045

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub153 = sub i64 %38, 1, !dbg !2045
  %and154 = and i64 %sub153, 17179869184, !dbg !2045
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2045
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2045

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2045

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub158 = sub i64 %39, 1, !dbg !2045
  %and159 = and i64 %sub158, 8589934592, !dbg !2045
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2045
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2045

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2045

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub163 = sub i64 %40, 1, !dbg !2045
  %and164 = and i64 %sub163, 4294967296, !dbg !2045
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2045
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2045

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2045

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub168 = sub i64 %41, 1, !dbg !2045
  %and169 = and i64 %sub168, 2147483648, !dbg !2045
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2045
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2045

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2045

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub173 = sub i64 %42, 1, !dbg !2045
  %and174 = and i64 %sub173, 1073741824, !dbg !2045
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2045
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2045

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2045

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub178 = sub i64 %43, 1, !dbg !2045
  %and179 = and i64 %sub178, 536870912, !dbg !2045
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2045
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2045

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2045

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub183 = sub i64 %44, 1, !dbg !2045
  %and184 = and i64 %sub183, 268435456, !dbg !2045
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2045
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2045

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2045

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub188 = sub i64 %45, 1, !dbg !2045
  %and189 = and i64 %sub188, 134217728, !dbg !2045
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2045
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2045

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2045

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub193 = sub i64 %46, 1, !dbg !2045
  %and194 = and i64 %sub193, 67108864, !dbg !2045
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2045
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2045

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2045

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub198 = sub i64 %47, 1, !dbg !2045
  %and199 = and i64 %sub198, 33554432, !dbg !2045
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2045
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2045

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2045

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub203 = sub i64 %48, 1, !dbg !2045
  %and204 = and i64 %sub203, 16777216, !dbg !2045
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2045
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2045

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2045

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub208 = sub i64 %49, 1, !dbg !2045
  %and209 = and i64 %sub208, 8388608, !dbg !2045
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2045
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2045

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2045

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub213 = sub i64 %50, 1, !dbg !2045
  %and214 = and i64 %sub213, 4194304, !dbg !2045
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2045
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2045

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2045

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub218 = sub i64 %51, 1, !dbg !2045
  %and219 = and i64 %sub218, 2097152, !dbg !2045
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2045
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2045

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2045

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub223 = sub i64 %52, 1, !dbg !2045
  %and224 = and i64 %sub223, 1048576, !dbg !2045
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2045
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2045

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2045

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub228 = sub i64 %53, 1, !dbg !2045
  %and229 = and i64 %sub228, 524288, !dbg !2045
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2045
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2045

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2045

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub233 = sub i64 %54, 1, !dbg !2045
  %and234 = and i64 %sub233, 262144, !dbg !2045
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2045
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2045

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2045

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub238 = sub i64 %55, 1, !dbg !2045
  %and239 = and i64 %sub238, 131072, !dbg !2045
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2045
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2045

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2045

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub243 = sub i64 %56, 1, !dbg !2045
  %and244 = and i64 %sub243, 65536, !dbg !2045
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2045
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2045

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2045

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub248 = sub i64 %57, 1, !dbg !2045
  %and249 = and i64 %sub248, 32768, !dbg !2045
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2045
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2045

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2045

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub253 = sub i64 %58, 1, !dbg !2045
  %and254 = and i64 %sub253, 16384, !dbg !2045
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2045
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2045

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2045

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub258 = sub i64 %59, 1, !dbg !2045
  %and259 = and i64 %sub258, 8192, !dbg !2045
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2045
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2045

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2045

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub263 = sub i64 %60, 1, !dbg !2045
  %and264 = and i64 %sub263, 4096, !dbg !2045
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2045
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2045

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2045

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub268 = sub i64 %61, 1, !dbg !2045
  %and269 = and i64 %sub268, 2048, !dbg !2045
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2045
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2045

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2045

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub273 = sub i64 %62, 1, !dbg !2045
  %and274 = and i64 %sub273, 1024, !dbg !2045
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2045
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2045

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2045

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub278 = sub i64 %63, 1, !dbg !2045
  %and279 = and i64 %sub278, 512, !dbg !2045
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2045
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2045

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2045

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub283 = sub i64 %64, 1, !dbg !2045
  %and284 = and i64 %sub283, 256, !dbg !2045
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2045
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2045

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2045

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub288 = sub i64 %65, 1, !dbg !2045
  %and289 = and i64 %sub288, 128, !dbg !2045
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2045
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2045

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2045

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub293 = sub i64 %66, 1, !dbg !2045
  %and294 = and i64 %sub293, 64, !dbg !2045
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2045
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2045

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2045

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub298 = sub i64 %67, 1, !dbg !2045
  %and299 = and i64 %sub298, 32, !dbg !2045
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2045
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2045

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2045

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub303 = sub i64 %68, 1, !dbg !2045
  %and304 = and i64 %sub303, 16, !dbg !2045
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2045
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2045

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2045

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub308 = sub i64 %69, 1, !dbg !2045
  %and309 = and i64 %sub308, 8, !dbg !2045
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2045
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2045

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2045

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub313 = sub i64 %70, 1, !dbg !2045
  %and314 = and i64 %sub313, 4, !dbg !2045
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2045
  %71 = zext i1 %tobool315 to i64, !dbg !2045
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2045
  br label %cond.end, !dbg !2045

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2045
  br label %cond.end317, !dbg !2045

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2045
  br label %cond.end319, !dbg !2045

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2045
  br label %cond.end321, !dbg !2045

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2045
  br label %cond.end323, !dbg !2045

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2045
  br label %cond.end325, !dbg !2045

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2045
  br label %cond.end327, !dbg !2045

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2045
  br label %cond.end329, !dbg !2045

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2045
  br label %cond.end331, !dbg !2045

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2045
  br label %cond.end333, !dbg !2045

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2045
  br label %cond.end335, !dbg !2045

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2045
  br label %cond.end337, !dbg !2045

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2045
  br label %cond.end339, !dbg !2045

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2045
  br label %cond.end341, !dbg !2045

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2045
  br label %cond.end343, !dbg !2045

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2045
  br label %cond.end345, !dbg !2045

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2045
  br label %cond.end347, !dbg !2045

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2045
  br label %cond.end349, !dbg !2045

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2045
  br label %cond.end351, !dbg !2045

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2045
  br label %cond.end353, !dbg !2045

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2045
  br label %cond.end355, !dbg !2045

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2045
  br label %cond.end357, !dbg !2045

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2045
  br label %cond.end359, !dbg !2045

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2045
  br label %cond.end361, !dbg !2045

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2045
  br label %cond.end363, !dbg !2045

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2045
  br label %cond.end365, !dbg !2045

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2045
  br label %cond.end367, !dbg !2045

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2045
  br label %cond.end369, !dbg !2045

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2045
  br label %cond.end371, !dbg !2045

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2045
  br label %cond.end373, !dbg !2045

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2045
  br label %cond.end375, !dbg !2045

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2045
  br label %cond.end377, !dbg !2045

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2045
  br label %cond.end379, !dbg !2045

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2045
  br label %cond.end381, !dbg !2045

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2045
  br label %cond.end383, !dbg !2045

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2045
  br label %cond.end385, !dbg !2045

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2045
  br label %cond.end387, !dbg !2045

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2045
  br label %cond.end389, !dbg !2045

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2045
  br label %cond.end391, !dbg !2045

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2045
  br label %cond.end393, !dbg !2045

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2045
  br label %cond.end395, !dbg !2045

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2045
  br label %cond.end397, !dbg !2045

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2045
  br label %cond.end399, !dbg !2045

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2045
  br label %cond.end401, !dbg !2045

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2045
  br label %cond.end403, !dbg !2045

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2045
  br label %cond.end405, !dbg !2045

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2045
  br label %cond.end407, !dbg !2045

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2045
  br label %cond.end409, !dbg !2045

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2045
  br label %cond.end411, !dbg !2045

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2045
  br label %cond.end413, !dbg !2045

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2045
  br label %cond.end415, !dbg !2045

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2045
  br label %cond.end417, !dbg !2045

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2045
  br label %cond.end419, !dbg !2045

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2045
  br label %cond.end421, !dbg !2045

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2045
  br label %cond.end423, !dbg !2045

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2045
  br label %cond.end425, !dbg !2045

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2045
  br label %cond.end427, !dbg !2045

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2045
  br label %cond.end429, !dbg !2045

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2045
  br label %cond.end431, !dbg !2045

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2045
  br label %cond.end433, !dbg !2045

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2045
  br label %cond.end435, !dbg !2045

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2045
  br label %cond.end437, !dbg !2045

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2045
  br label %cond.end440, !dbg !2045

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2045

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2045
  br label %cond.end444, !dbg !2045

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2045
  %sub443 = sub i64 %72, 1, !dbg !2045
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !2045
  br label %cond.end444, !dbg !2045

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2045
  %sub446 = sub i32 %cond445, 12, !dbg !2046
  %add = add i32 %sub446, 1, !dbg !2047
  store i32 %add, i32* %retval, align 4, !dbg !2048
  br label %return, !dbg !2048

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2049
  %dec = add i64 %73, -1, !dbg !2049
  store i64 %dec, i64* %size.addr, align 8, !dbg !2049
  %74 = load i64, i64* %size.addr, align 8, !dbg !2050
  %shr = lshr i64 %74, 12, !dbg !2050
  store i64 %shr, i64* %size.addr, align 8, !dbg !2050
  %75 = load i64, i64* %size.addr, align 8, !dbg !2051
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2028
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2052
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2053
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !2052, !srcloc !2054
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2052
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2055
  %add.i = add i32 %79, 1, !dbg !2056
  store i32 %add.i, i32* %retval, align 4, !dbg !2057
  br label %return, !dbg !2057

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2058
  ret i32 %80, !dbg !2058
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !2059 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2020, metadata !DIExpression()), !dbg !2063
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2027, metadata !DIExpression()), !dbg !2065
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2066, metadata !DIExpression()), !dbg !2067
  %0 = load i64, i64* %n.addr, align 8, !dbg !2068
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2065
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2069
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2070
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !2069, !srcloc !2054
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2069
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2071
  %add.i = add i32 %4, 1, !dbg !2072
  %sub = sub i32 %add.i, 1, !dbg !2073
  ret i32 %sub, !dbg !2074
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2075 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2081, metadata !DIExpression()), !dbg !2082
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2083, metadata !DIExpression()), !dbg !2084
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2085, metadata !DIExpression()), !dbg !2086
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2087, metadata !DIExpression()), !dbg !2088
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2089
  ret i8* %0, !dbg !2090
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
!llvm.named.register.rsp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !35, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !34, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exfldio.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !18, !20, !23, !25, !26, !27, !31, !33}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !7)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !14)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !15, line: 23, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !17, line: 31, baseType: !22)
!22 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !19, line: 127, baseType: !20)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !19, line: 805, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !15, line: 17, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !17, line: 21, baseType: !30)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !32, line: 148, baseType: !7)
!32 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !{!0}
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 64, elements: !37)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!37 = !{!38}
!38 = !DISubrange(count: 8)
!39 = !{!"rsp"}
!40 = !{i32 7, !"Dwarf Version", i32 4}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"Code Model", i32 2}
!44 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!45 = distinct !DISubprogram(name: "acpi_ex_access_region", scope: !3, file: !3, line: 198, type: !46, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!46 = !DISubroutineType(types: !47)
!47 = !{!18, !48, !14, !740, !14}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !50, line: 367, size: 576, elements: !51)
!50 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !63, !76, !86, !122, !136, !145, !456, !473, !488, !501, !579, !591, !605, !615, !633, !655, !674, !693, !712, !725, !751, !768, !781, !795, !804}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !49, file: !50, line: 368, baseType: !53, size: 128)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !50, line: 73, size: 128, elements: !54)
!54 = !{!55, !56, !57, !58, !62}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !53, file: !50, line: 74, baseType: !48, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !53, file: !50, line: 74, baseType: !28, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !50, line: 74, baseType: !28, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !53, file: !50, line: 74, baseType: !59, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !15, line: 19, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !17, line: 24, baseType: !61)
!61 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !50, line: 74, baseType: !28, size: 8, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !49, file: !50, line: 369, baseType: !64, size: 192)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !50, line: 76, size: 192, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !75}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !64, file: !50, line: 77, baseType: !48, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !64, file: !50, line: 77, baseType: !28, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !50, line: 77, baseType: !28, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !64, file: !50, line: 77, baseType: !59, size: 16, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !50, line: 77, baseType: !28, size: 8, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !64, file: !50, line: 77, baseType: !72, size: 24, offset: 104)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 24, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !64, file: !50, line: 78, baseType: !20, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !49, file: !50, line: 370, baseType: !77, size: 256)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !50, line: 93, size: 256, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !85}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !77, file: !50, line: 94, baseType: !48, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !77, file: !50, line: 94, baseType: !28, size: 8, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !50, line: 94, baseType: !28, size: 8, offset: 72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !77, file: !50, line: 94, baseType: !59, size: 16, offset: 80)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !50, line: 94, baseType: !28, size: 8, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !77, file: !50, line: 94, baseType: !23, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !50, line: 94, baseType: !14, size: 32, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !49, file: !50, line: 371, baseType: !87, size: 384)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !50, line: 97, size: 384, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !96, !97, !98, !99}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !87, file: !50, line: 98, baseType: !48, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !87, file: !50, line: 98, baseType: !28, size: 8, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !50, line: 98, baseType: !28, size: 8, offset: 72)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !87, file: !50, line: 98, baseType: !59, size: 16, offset: 80)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !50, line: 98, baseType: !28, size: 8, offset: 96)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !87, file: !50, line: 98, baseType: !95, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !87, file: !50, line: 98, baseType: !14, size: 32, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !87, file: !50, line: 99, baseType: !14, size: 32, offset: 224)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !87, file: !50, line: 100, baseType: !95, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !87, file: !50, line: 101, baseType: !100, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !102, line: 133, size: 384, elements: !103)
!102 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !105, !106, !107, !108, !117, !118, !119, !120}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !101, file: !102, line: 134, baseType: !48, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !101, file: !102, line: 135, baseType: !28, size: 8, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !102, line: 136, baseType: !28, size: 8, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !102, line: 137, baseType: !59, size: 16, offset: 80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !101, file: !102, line: 138, baseType: !109, size: 32, offset: 96)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !110, line: 327, size: 32, elements: !111)
!110 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !109, file: !110, line: 328, baseType: !14, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !109, file: !110, line: 329, baseType: !114, size: 32)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 32, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 4)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !101, file: !102, line: 139, baseType: !100, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !101, file: !102, line: 140, baseType: !100, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !101, file: !102, line: 141, baseType: !100, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !101, file: !102, line: 142, baseType: !121, size: 16, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !59)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !49, file: !50, line: 372, baseType: !123, size: 384)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !50, line: 104, size: 384, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !133, !134, !135}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !50, line: 105, baseType: !48, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !50, line: 105, baseType: !28, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !50, line: 105, baseType: !28, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !50, line: 105, baseType: !59, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !50, line: 105, baseType: !28, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !123, file: !50, line: 105, baseType: !100, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !123, file: !50, line: 106, baseType: !132, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !123, file: !50, line: 107, baseType: !95, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !123, file: !50, line: 108, baseType: !14, size: 32, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !123, file: !50, line: 109, baseType: !14, size: 32, offset: 352)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !49, file: !50, line: 373, baseType: !137, size: 192)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !50, line: 118, size: 192, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !137, file: !50, line: 119, baseType: !48, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !137, file: !50, line: 119, baseType: !28, size: 8, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !50, line: 119, baseType: !28, size: 8, offset: 72)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !137, file: !50, line: 119, baseType: !59, size: 16, offset: 80)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !50, line: 119, baseType: !28, size: 8, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !137, file: !50, line: 119, baseType: !25, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !49, file: !50, line: 374, baseType: !146, size: 448)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !50, line: 143, size: 448, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !453, !454, !455}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !146, file: !50, line: 144, baseType: !48, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !146, file: !50, line: 144, baseType: !28, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !50, line: 144, baseType: !28, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !146, file: !50, line: 144, baseType: !59, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !50, line: 144, baseType: !28, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !146, file: !50, line: 144, baseType: !28, size: 8, offset: 104)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !146, file: !50, line: 145, baseType: !28, size: 8, offset: 112)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !146, file: !50, line: 146, baseType: !28, size: 8, offset: 120)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !146, file: !50, line: 147, baseType: !48, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !146, file: !50, line: 148, baseType: !48, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !146, file: !50, line: 149, baseType: !95, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !146, file: !50, line: 153, baseType: !160, size: 64, offset: 320)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !50, line: 150, size: 64, elements: !161)
!161 = !{!162, !452}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !160, file: !50, line: 151, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !102, line: 248, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!18, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !169, line: 37, size: 9024, elements: !170)
!169 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !398, !399, !400, !401, !402, !406, !408, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !435, !436, !437, !438, !439, !440, !441, !442, !444, !450}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !168, file: !169, line: 38, baseType: !167, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !168, file: !169, line: 39, baseType: !28, size: 8, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !168, file: !169, line: 40, baseType: !28, size: 8, offset: 72)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !168, file: !169, line: 41, baseType: !59, size: 16, offset: 80)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !168, file: !169, line: 42, baseType: !28, size: 8, offset: 96)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !168, file: !169, line: 43, baseType: !28, size: 8, offset: 104)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !168, file: !169, line: 44, baseType: !28, size: 8, offset: 112)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !168, file: !169, line: 45, baseType: !121, size: 16, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !168, file: !169, line: 46, baseType: !28, size: 8, offset: 144)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !168, file: !169, line: 47, baseType: !28, size: 8, offset: 152)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !168, file: !169, line: 48, baseType: !28, size: 8, offset: 160)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !168, file: !169, line: 49, baseType: !28, size: 8, offset: 168)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !168, file: !169, line: 50, baseType: !28, size: 8, offset: 176)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !168, file: !169, line: 51, baseType: !28, size: 8, offset: 184)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !168, file: !169, line: 52, baseType: !28, size: 8, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !168, file: !169, line: 53, baseType: !28, size: 8, offset: 200)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !168, file: !169, line: 54, baseType: !95, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !168, file: !169, line: 55, baseType: !14, size: 32, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !168, file: !169, line: 56, baseType: !14, size: 32, offset: 352)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !168, file: !169, line: 57, baseType: !14, size: 32, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !168, file: !169, line: 58, baseType: !14, size: 32, offset: 416)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !168, file: !169, line: 60, baseType: !193, size: 640, offset: 448)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !102, line: 893, size: 640, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !281, !282, !396, !397}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !193, file: !102, line: 894, baseType: !95, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !193, file: !102, line: 895, baseType: !95, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !193, file: !102, line: 896, baseType: !95, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !193, file: !102, line: 897, baseType: !95, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !193, file: !102, line: 898, baseType: !95, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !193, file: !102, line: 899, baseType: !201, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !102, line: 875, size: 1600, elements: !203)
!203 = !{!204, !224, !240}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !202, file: !102, line: 876, baseType: !205, size: 448)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !102, line: 828, size: 448, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !223}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !205, file: !102, line: 829, baseType: !201, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !205, file: !102, line: 829, baseType: !28, size: 8, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !205, file: !102, line: 829, baseType: !28, size: 8, offset: 72)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !205, file: !102, line: 829, baseType: !59, size: 16, offset: 80)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !205, file: !102, line: 829, baseType: !95, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !102, line: 829, baseType: !201, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !205, file: !102, line: 829, baseType: !100, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !205, file: !102, line: 829, baseType: !215, size: 64, offset: 320)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !102, line: 716, size: 64, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !215, file: !102, line: 717, baseType: !20, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !215, file: !102, line: 718, baseType: !14, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !215, file: !102, line: 719, baseType: !23, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !215, file: !102, line: 720, baseType: !95, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !102, line: 721, baseType: !23, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !215, file: !102, line: 722, baseType: !201, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !205, file: !102, line: 829, baseType: !28, size: 8, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !202, file: !102, line: 877, baseType: !225, size: 640)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !102, line: 835, size: 640, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !102, line: 836, baseType: !201, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !225, file: !102, line: 836, baseType: !28, size: 8, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !102, line: 836, baseType: !28, size: 8, offset: 72)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !225, file: !102, line: 836, baseType: !59, size: 16, offset: 80)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !225, file: !102, line: 836, baseType: !95, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !102, line: 836, baseType: !201, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !225, file: !102, line: 836, baseType: !100, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !225, file: !102, line: 836, baseType: !215, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !225, file: !102, line: 836, baseType: !28, size: 8, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !225, file: !102, line: 836, baseType: !23, size: 64, offset: 448)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !225, file: !102, line: 837, baseType: !95, size: 64, offset: 512)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !225, file: !102, line: 838, baseType: !14, size: 32, offset: 576)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !102, line: 839, baseType: !14, size: 32, offset: 608)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !202, file: !102, line: 878, baseType: !241, size: 1600)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !102, line: 846, size: 1600, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !241, file: !102, line: 847, baseType: !201, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !241, file: !102, line: 847, baseType: !28, size: 8, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !102, line: 847, baseType: !28, size: 8, offset: 72)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !241, file: !102, line: 847, baseType: !59, size: 16, offset: 80)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !241, file: !102, line: 847, baseType: !95, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !102, line: 847, baseType: !201, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !241, file: !102, line: 847, baseType: !100, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !241, file: !102, line: 847, baseType: !215, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !241, file: !102, line: 847, baseType: !28, size: 8, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !241, file: !102, line: 847, baseType: !201, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !241, file: !102, line: 848, baseType: !201, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !241, file: !102, line: 849, baseType: !23, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !241, file: !102, line: 850, baseType: !28, size: 8, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !241, file: !102, line: 851, baseType: !23, size: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !241, file: !102, line: 852, baseType: !23, size: 64, offset: 768)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !241, file: !102, line: 853, baseType: !23, size: 64, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !241, file: !102, line: 854, baseType: !114, size: 32, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !241, file: !102, line: 855, baseType: !14, size: 32, offset: 928)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !241, file: !102, line: 856, baseType: !14, size: 32, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !241, file: !102, line: 857, baseType: !14, size: 32, offset: 992)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !241, file: !102, line: 858, baseType: !14, size: 32, offset: 1024)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !241, file: !102, line: 859, baseType: !14, size: 32, offset: 1056)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !241, file: !102, line: 860, baseType: !14, size: 32, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !241, file: !102, line: 861, baseType: !14, size: 32, offset: 1120)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !241, file: !102, line: 862, baseType: !14, size: 32, offset: 1152)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !241, file: !102, line: 863, baseType: !14, size: 32, offset: 1184)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !241, file: !102, line: 864, baseType: !14, size: 32, offset: 1216)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !241, file: !102, line: 865, baseType: !14, size: 32, offset: 1248)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !241, file: !102, line: 866, baseType: !14, size: 32, offset: 1280)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !241, file: !102, line: 867, baseType: !14, size: 32, offset: 1312)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !241, file: !102, line: 868, baseType: !59, size: 16, offset: 1344)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !241, file: !102, line: 869, baseType: !28, size: 8, offset: 1360)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !241, file: !102, line: 870, baseType: !28, size: 8, offset: 1368)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !241, file: !102, line: 871, baseType: !28, size: 8, offset: 1376)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !241, file: !102, line: 872, baseType: !278, size: 160, offset: 1384)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 160, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 20)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !193, file: !102, line: 900, baseType: !100, size: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !193, file: !102, line: 901, baseType: !283, size: 64, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !102, line: 663, size: 640, elements: !285)
!285 = !{!286, !294, !307, !316, !325, !338, !352, !364, !374}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !284, file: !102, line: 664, baseType: !287, size: 128)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !102, line: 567, size: 128, elements: !288)
!288 = !{!289, !290, !291, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !102, line: 568, baseType: !25, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !102, line: 568, baseType: !28, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !102, line: 568, baseType: !28, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !102, line: 568, baseType: !59, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !102, line: 568, baseType: !59, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !284, file: !102, line: 665, baseType: !295, size: 384)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !102, line: 593, size: 384, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !102, line: 594, baseType: !25, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !295, file: !102, line: 594, baseType: !28, size: 8, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !102, line: 594, baseType: !28, size: 8, offset: 72)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !295, file: !102, line: 594, baseType: !59, size: 16, offset: 80)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !295, file: !102, line: 594, baseType: !59, size: 16, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !295, file: !102, line: 594, baseType: !59, size: 16, offset: 112)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !295, file: !102, line: 595, baseType: !201, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !295, file: !102, line: 596, baseType: !95, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !295, file: !102, line: 597, baseType: !95, size: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !295, file: !102, line: 598, baseType: !20, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !284, file: !102, line: 666, baseType: !308, size: 192)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !102, line: 573, size: 192, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !102, line: 574, baseType: !25, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !308, file: !102, line: 574, baseType: !28, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !102, line: 574, baseType: !28, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !308, file: !102, line: 574, baseType: !59, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !308, file: !102, line: 574, baseType: !59, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !308, file: !102, line: 574, baseType: !48, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !284, file: !102, line: 667, baseType: !317, size: 192)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !102, line: 604, size: 192, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !102, line: 605, baseType: !25, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !317, file: !102, line: 605, baseType: !28, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !102, line: 605, baseType: !28, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !317, file: !102, line: 605, baseType: !59, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !317, file: !102, line: 605, baseType: !59, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !317, file: !102, line: 605, baseType: !100, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !284, file: !102, line: 668, baseType: !326, size: 448)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !102, line: 608, size: 448, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !102, line: 609, baseType: !25, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !326, file: !102, line: 609, baseType: !28, size: 8, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !102, line: 609, baseType: !28, size: 8, offset: 72)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !326, file: !102, line: 609, baseType: !59, size: 16, offset: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !326, file: !102, line: 609, baseType: !59, size: 16, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !326, file: !102, line: 609, baseType: !14, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !326, file: !102, line: 610, baseType: !201, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !326, file: !102, line: 611, baseType: !95, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !326, file: !102, line: 612, baseType: !95, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !326, file: !102, line: 613, baseType: !14, size: 32, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !284, file: !102, line: 669, baseType: !339, size: 512)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !102, line: 580, size: 512, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !102, line: 581, baseType: !25, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !339, file: !102, line: 581, baseType: !28, size: 8, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !102, line: 581, baseType: !28, size: 8, offset: 72)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !339, file: !102, line: 581, baseType: !59, size: 16, offset: 80)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !339, file: !102, line: 581, baseType: !59, size: 16, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !339, file: !102, line: 581, baseType: !14, size: 32, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !339, file: !102, line: 582, baseType: !48, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !339, file: !102, line: 583, baseType: !48, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !339, file: !102, line: 584, baseType: !167, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !339, file: !102, line: 585, baseType: !25, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !339, file: !102, line: 586, baseType: !14, size: 32, offset: 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !284, file: !102, line: 670, baseType: !353, size: 320)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !102, line: 620, size: 320, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !102, line: 621, baseType: !25, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !353, file: !102, line: 621, baseType: !28, size: 8, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !102, line: 621, baseType: !28, size: 8, offset: 72)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !353, file: !102, line: 621, baseType: !59, size: 16, offset: 80)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !353, file: !102, line: 621, baseType: !59, size: 16, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !353, file: !102, line: 621, baseType: !28, size: 8, offset: 112)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !353, file: !102, line: 622, baseType: !167, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !353, file: !102, line: 623, baseType: !48, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !353, file: !102, line: 624, baseType: !20, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !284, file: !102, line: 671, baseType: !365, size: 640)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !102, line: 631, size: 640, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !102, line: 632, baseType: !25, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !365, file: !102, line: 632, baseType: !28, size: 8, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !365, file: !102, line: 632, baseType: !28, size: 8, offset: 72)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !365, file: !102, line: 632, baseType: !59, size: 16, offset: 80)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !365, file: !102, line: 632, baseType: !59, size: 16, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !365, file: !102, line: 633, baseType: !373, size: 512, offset: 128)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 512, elements: !37)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !284, file: !102, line: 672, baseType: !375, size: 320)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !102, line: 654, size: 320, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !385}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !102, line: 655, baseType: !25, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !375, file: !102, line: 655, baseType: !28, size: 8, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !375, file: !102, line: 655, baseType: !28, size: 8, offset: 72)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !375, file: !102, line: 655, baseType: !59, size: 16, offset: 80)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !375, file: !102, line: 655, baseType: !59, size: 16, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !375, file: !102, line: 655, baseType: !28, size: 8, offset: 112)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !375, file: !102, line: 656, baseType: !100, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !375, file: !102, line: 657, baseType: !48, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !375, file: !102, line: 658, baseType: !386, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !102, line: 645, size: 128, elements: !388)
!388 = !{!389, !395}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !387, file: !102, line: 646, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1052, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !394, !14, !25}
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !25)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !387, file: !102, line: 647, baseType: !25, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !193, file: !102, line: 902, baseType: !201, size: 64, offset: 512)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !193, file: !102, line: 903, baseType: !14, size: 32, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !168, file: !169, line: 61, baseType: !14, size: 32, offset: 1088)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !168, file: !169, line: 62, baseType: !14, size: 32, offset: 1120)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !168, file: !169, line: 63, baseType: !59, size: 16, offset: 1152)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !168, file: !169, line: 64, baseType: !28, size: 8, offset: 1168)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !168, file: !169, line: 66, baseType: !403, size: 2688, offset: 1216)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 2688, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 7)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !168, file: !169, line: 67, baseType: !407, size: 3072, offset: 3904)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 3072, elements: !37)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !168, file: !169, line: 68, baseType: !409, size: 576, offset: 6976)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 576, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 9)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !168, file: !169, line: 69, baseType: !132, size: 64, offset: 7552)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !168, file: !169, line: 71, baseType: !95, size: 64, offset: 7616)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !168, file: !169, line: 72, baseType: !132, size: 64, offset: 7680)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !168, file: !169, line: 73, baseType: !283, size: 64, offset: 7744)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !168, file: !169, line: 74, baseType: !100, size: 64, offset: 7808)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !168, file: !169, line: 75, baseType: !48, size: 64, offset: 7872)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !168, file: !169, line: 76, baseType: !100, size: 64, offset: 7936)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !168, file: !169, line: 77, baseType: !201, size: 64, offset: 8000)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !168, file: !169, line: 78, baseType: !48, size: 64, offset: 8064)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !168, file: !169, line: 79, baseType: !100, size: 64, offset: 8128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !168, file: !169, line: 80, baseType: !23, size: 64, offset: 8192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !168, file: !169, line: 81, baseType: !201, size: 64, offset: 8256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !168, file: !169, line: 82, baseType: !425, size: 64, offset: 8320)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !102, line: 702, size: 128, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !427, file: !102, line: 706, baseType: !14, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !427, file: !102, line: 707, baseType: !14, size: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !427, file: !102, line: 708, baseType: !59, size: 16, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !427, file: !102, line: 709, baseType: !28, size: 8, offset: 80)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !427, file: !102, line: 710, baseType: !28, size: 8, offset: 88)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !427, file: !102, line: 711, baseType: !28, size: 8, offset: 96)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !168, file: !169, line: 83, baseType: !201, size: 64, offset: 8384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !168, file: !169, line: 84, baseType: !48, size: 64, offset: 8448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !168, file: !169, line: 85, baseType: !283, size: 64, offset: 8512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !168, file: !169, line: 86, baseType: !48, size: 64, offset: 8576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !168, file: !169, line: 87, baseType: !283, size: 64, offset: 8640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !168, file: !169, line: 88, baseType: !201, size: 64, offset: 8704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !168, file: !169, line: 89, baseType: !201, size: 64, offset: 8768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !168, file: !169, line: 90, baseType: !443, size: 64, offset: 8832)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !168, file: !169, line: 91, baseType: !445, size: 64, offset: 8896)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !102, line: 637, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!18, !167, !449}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !168, file: !169, line: 92, baseType: !451, size: 64, offset: 8960)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !102, line: 641, baseType: !164)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !160, file: !50, line: 152, baseType: !48, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !146, file: !50, line: 155, baseType: !14, size: 32, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !146, file: !50, line: 156, baseType: !121, size: 16, offset: 416)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !146, file: !50, line: 157, baseType: !28, size: 8, offset: 432)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !49, file: !50, line: 375, baseType: !457, size: 576)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !50, line: 122, size: 576, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !457, file: !50, line: 123, baseType: !48, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !457, file: !50, line: 123, baseType: !28, size: 8, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !457, file: !50, line: 123, baseType: !28, size: 8, offset: 72)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !457, file: !50, line: 123, baseType: !59, size: 16, offset: 80)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !457, file: !50, line: 123, baseType: !28, size: 8, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !457, file: !50, line: 123, baseType: !28, size: 8, offset: 104)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !457, file: !50, line: 124, baseType: !59, size: 16, offset: 112)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !457, file: !50, line: 125, baseType: !25, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !457, file: !50, line: 126, baseType: !20, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !457, file: !50, line: 127, baseType: !443, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !457, file: !50, line: 128, baseType: !48, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !50, line: 129, baseType: !48, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !457, file: !50, line: 130, baseType: !100, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !457, file: !50, line: 131, baseType: !28, size: 8, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !49, file: !50, line: 376, baseType: !474, size: 448)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !50, line: 134, size: 448, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !487}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !474, file: !50, line: 135, baseType: !48, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !474, file: !50, line: 135, baseType: !28, size: 8, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !50, line: 135, baseType: !28, size: 8, offset: 72)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !50, line: 135, baseType: !59, size: 16, offset: 80)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !50, line: 135, baseType: !28, size: 8, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !474, file: !50, line: 135, baseType: !28, size: 8, offset: 104)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !474, file: !50, line: 136, baseType: !100, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !474, file: !50, line: 137, baseType: !48, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !474, file: !50, line: 138, baseType: !48, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !474, file: !50, line: 139, baseType: !486, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !20)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !474, file: !50, line: 140, baseType: !14, size: 32, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !49, file: !50, line: 377, baseType: !489, size: 320)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !50, line: 184, size: 320, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !500}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !489, file: !50, line: 185, baseType: !48, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !489, file: !50, line: 185, baseType: !28, size: 8, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !489, file: !50, line: 185, baseType: !28, size: 8, offset: 72)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !489, file: !50, line: 185, baseType: !59, size: 16, offset: 80)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !50, line: 185, baseType: !28, size: 8, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !489, file: !50, line: 185, baseType: !497, size: 128, offset: 128)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 128, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 2)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !489, file: !50, line: 185, baseType: !48, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !49, file: !50, line: 378, baseType: !502, size: 384)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !50, line: 187, size: 384, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !502, file: !50, line: 188, baseType: !48, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !502, file: !50, line: 188, baseType: !28, size: 8, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !502, file: !50, line: 188, baseType: !28, size: 8, offset: 72)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !502, file: !50, line: 188, baseType: !59, size: 16, offset: 80)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !50, line: 188, baseType: !28, size: 8, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !502, file: !50, line: 189, baseType: !497, size: 128, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !502, file: !50, line: 189, baseType: !48, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !502, file: !50, line: 189, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !102, line: 480, size: 576, elements: !514)
!514 = !{!515, !516, !517, !518, !526, !541, !573, !574, !575, !576, !577, !578}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !513, file: !102, line: 481, baseType: !100, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !513, file: !102, line: 482, baseType: !512, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !102, line: 483, baseType: !512, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !513, file: !102, line: 484, baseType: !519, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !102, line: 497, size: 256, elements: !521)
!521 = !{!522, !523, !524, !525}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !520, file: !102, line: 498, baseType: !519, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !102, line: 499, baseType: !519, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !520, file: !102, line: 500, baseType: !512, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !520, file: !102, line: 501, baseType: !14, size: 32, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !513, file: !102, line: 485, baseType: !527, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !102, line: 466, size: 320, elements: !529)
!529 = !{!530, !535, !536, !537, !538, !539, !540}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !528, file: !102, line: 467, baseType: !531, size: 128)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !102, line: 459, size: 128, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !531, file: !102, line: 460, baseType: !28, size: 8)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !531, file: !102, line: 461, baseType: !20, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !528, file: !102, line: 468, baseType: !531, size: 128, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !528, file: !102, line: 469, baseType: !59, size: 16, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !528, file: !102, line: 470, baseType: !28, size: 8, offset: 272)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !528, file: !102, line: 471, baseType: !28, size: 8, offset: 280)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !528, file: !102, line: 472, baseType: !28, size: 8, offset: 288)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !528, file: !102, line: 473, baseType: !28, size: 8, offset: 296)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !513, file: !102, line: 486, baseType: !542, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !102, line: 448, size: 192, elements: !544)
!544 = !{!545, !568, !569, !570, !571, !572}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !543, file: !102, line: 449, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !102, line: 438, size: 64, elements: !547)
!547 = !{!548, !549, !562}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !546, file: !102, line: 439, baseType: !100, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !546, file: !102, line: 440, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !102, line: 419, size: 256, elements: !552)
!552 = !{!553, !558, !559, !560, !561}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !551, file: !102, line: 420, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1049, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!14, !394, !14, !25}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !551, file: !102, line: 421, baseType: !25, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !551, file: !102, line: 422, baseType: !100, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !551, file: !102, line: 423, baseType: !28, size: 8, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !551, file: !102, line: 424, baseType: !28, size: 8, offset: 200)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !546, file: !102, line: 441, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !102, line: 429, size: 128, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !564, file: !102, line: 430, baseType: !100, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !564, file: !102, line: 431, baseType: !563, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !543, file: !102, line: 450, baseType: !527, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !102, line: 451, baseType: !28, size: 8, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !543, file: !102, line: 452, baseType: !28, size: 8, offset: 136)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !543, file: !102, line: 453, baseType: !28, size: 8, offset: 144)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !543, file: !102, line: 454, baseType: !28, size: 8, offset: 152)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !513, file: !102, line: 487, baseType: !20, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !513, file: !102, line: 488, baseType: !14, size: 32, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !513, file: !102, line: 489, baseType: !59, size: 16, offset: 480)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !513, file: !102, line: 490, baseType: !59, size: 16, offset: 496)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !513, file: !102, line: 491, baseType: !28, size: 8, offset: 512)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !513, file: !102, line: 492, baseType: !28, size: 8, offset: 520)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !49, file: !50, line: 379, baseType: !580, size: 384)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !50, line: 192, size: 384, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !580, file: !50, line: 193, baseType: !48, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !580, file: !50, line: 193, baseType: !28, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !50, line: 193, baseType: !28, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !580, file: !50, line: 193, baseType: !59, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !50, line: 193, baseType: !28, size: 8, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !580, file: !50, line: 193, baseType: !497, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !580, file: !50, line: 193, baseType: !48, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !580, file: !50, line: 193, baseType: !14, size: 32, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !580, file: !50, line: 194, baseType: !14, size: 32, offset: 352)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !49, file: !50, line: 380, baseType: !592, size: 384)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !50, line: 197, size: 384, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601, !602, !603}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !592, file: !50, line: 198, baseType: !48, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !592, file: !50, line: 198, baseType: !28, size: 8, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !50, line: 198, baseType: !28, size: 8, offset: 72)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !592, file: !50, line: 198, baseType: !59, size: 16, offset: 80)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !50, line: 198, baseType: !28, size: 8, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !592, file: !50, line: 200, baseType: !28, size: 8, offset: 104)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !592, file: !50, line: 201, baseType: !28, size: 8, offset: 112)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !592, file: !50, line: 202, baseType: !497, size: 128, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !592, file: !50, line: 202, baseType: !48, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !592, file: !50, line: 202, baseType: !604, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !20)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !49, file: !50, line: 381, baseType: !606, size: 320)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !50, line: 205, size: 320, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !606, file: !50, line: 206, baseType: !48, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !606, file: !50, line: 206, baseType: !28, size: 8, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !606, file: !50, line: 206, baseType: !28, size: 8, offset: 72)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !606, file: !50, line: 206, baseType: !59, size: 16, offset: 80)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !606, file: !50, line: 206, baseType: !28, size: 8, offset: 96)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !606, file: !50, line: 206, baseType: !497, size: 128, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !606, file: !50, line: 206, baseType: !48, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !49, file: !50, line: 382, baseType: !616, size: 384)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !50, line: 233, size: 384, elements: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !616, file: !50, line: 234, baseType: !48, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !616, file: !50, line: 234, baseType: !28, size: 8, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !616, file: !50, line: 234, baseType: !28, size: 8, offset: 72)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !616, file: !50, line: 234, baseType: !59, size: 16, offset: 80)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !50, line: 234, baseType: !28, size: 8, offset: 96)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !616, file: !50, line: 234, baseType: !28, size: 8, offset: 104)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !616, file: !50, line: 234, baseType: !28, size: 8, offset: 112)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !616, file: !50, line: 234, baseType: !28, size: 8, offset: 120)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !616, file: !50, line: 234, baseType: !100, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !616, file: !50, line: 234, baseType: !14, size: 32, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !616, file: !50, line: 234, baseType: !14, size: 32, offset: 224)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !616, file: !50, line: 234, baseType: !14, size: 32, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !616, file: !50, line: 234, baseType: !28, size: 8, offset: 288)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !616, file: !50, line: 234, baseType: !28, size: 8, offset: 296)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !616, file: !50, line: 234, baseType: !48, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !49, file: !50, line: 383, baseType: !634, size: 576)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !50, line: 237, size: 576, elements: !635)
!635 = !{!636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !634, file: !50, line: 238, baseType: !48, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !634, file: !50, line: 238, baseType: !28, size: 8, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !634, file: !50, line: 238, baseType: !28, size: 8, offset: 72)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !634, file: !50, line: 238, baseType: !59, size: 16, offset: 80)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !634, file: !50, line: 238, baseType: !28, size: 8, offset: 96)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !634, file: !50, line: 238, baseType: !28, size: 8, offset: 104)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !634, file: !50, line: 238, baseType: !28, size: 8, offset: 112)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !634, file: !50, line: 238, baseType: !28, size: 8, offset: 120)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !634, file: !50, line: 238, baseType: !100, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !634, file: !50, line: 238, baseType: !14, size: 32, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !634, file: !50, line: 238, baseType: !14, size: 32, offset: 224)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !634, file: !50, line: 238, baseType: !14, size: 32, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !634, file: !50, line: 238, baseType: !28, size: 8, offset: 288)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !634, file: !50, line: 238, baseType: !28, size: 8, offset: 296)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !634, file: !50, line: 238, baseType: !59, size: 16, offset: 304)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !634, file: !50, line: 239, baseType: !48, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !634, file: !50, line: 240, baseType: !95, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !634, file: !50, line: 241, baseType: !59, size: 16, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !634, file: !50, line: 242, baseType: !95, size: 64, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !49, file: !50, line: 384, baseType: !656, size: 384)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !50, line: 262, size: 384, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !656, file: !50, line: 263, baseType: !48, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !656, file: !50, line: 263, baseType: !28, size: 8, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !50, line: 263, baseType: !28, size: 8, offset: 72)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !656, file: !50, line: 263, baseType: !59, size: 16, offset: 80)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !50, line: 263, baseType: !28, size: 8, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !656, file: !50, line: 263, baseType: !28, size: 8, offset: 104)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !656, file: !50, line: 263, baseType: !28, size: 8, offset: 112)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !656, file: !50, line: 263, baseType: !28, size: 8, offset: 120)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !656, file: !50, line: 263, baseType: !100, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !656, file: !50, line: 263, baseType: !14, size: 32, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !656, file: !50, line: 263, baseType: !14, size: 32, offset: 224)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !656, file: !50, line: 263, baseType: !14, size: 32, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !656, file: !50, line: 263, baseType: !28, size: 8, offset: 288)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !656, file: !50, line: 263, baseType: !28, size: 8, offset: 296)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !656, file: !50, line: 263, baseType: !28, size: 8, offset: 304)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !656, file: !50, line: 264, baseType: !48, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !49, file: !50, line: 385, baseType: !675, size: 448)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !50, line: 245, size: 448, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !675, file: !50, line: 246, baseType: !48, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !675, file: !50, line: 246, baseType: !28, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !50, line: 246, baseType: !28, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !675, file: !50, line: 246, baseType: !59, size: 16, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !50, line: 246, baseType: !28, size: 8, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !675, file: !50, line: 246, baseType: !28, size: 8, offset: 104)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !675, file: !50, line: 246, baseType: !28, size: 8, offset: 112)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !675, file: !50, line: 246, baseType: !28, size: 8, offset: 120)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !675, file: !50, line: 246, baseType: !100, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !675, file: !50, line: 246, baseType: !14, size: 32, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !675, file: !50, line: 246, baseType: !14, size: 32, offset: 224)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !675, file: !50, line: 246, baseType: !14, size: 32, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !675, file: !50, line: 246, baseType: !28, size: 8, offset: 288)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !675, file: !50, line: 246, baseType: !28, size: 8, offset: 296)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !675, file: !50, line: 246, baseType: !48, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !675, file: !50, line: 247, baseType: !48, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !49, file: !50, line: 386, baseType: !694, size: 448)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !50, line: 250, size: 448, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !694, file: !50, line: 251, baseType: !48, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !694, file: !50, line: 251, baseType: !28, size: 8, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !50, line: 251, baseType: !28, size: 8, offset: 72)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !694, file: !50, line: 251, baseType: !59, size: 16, offset: 80)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !50, line: 251, baseType: !28, size: 8, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !694, file: !50, line: 251, baseType: !28, size: 8, offset: 104)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !694, file: !50, line: 251, baseType: !28, size: 8, offset: 112)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !694, file: !50, line: 251, baseType: !28, size: 8, offset: 120)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !694, file: !50, line: 251, baseType: !100, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !694, file: !50, line: 251, baseType: !14, size: 32, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !694, file: !50, line: 251, baseType: !14, size: 32, offset: 224)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !694, file: !50, line: 251, baseType: !14, size: 32, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !694, file: !50, line: 251, baseType: !28, size: 8, offset: 288)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !694, file: !50, line: 251, baseType: !28, size: 8, offset: 296)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !694, file: !50, line: 256, baseType: !48, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !694, file: !50, line: 257, baseType: !48, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !49, file: !50, line: 387, baseType: !713, size: 512)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !50, line: 273, size: 512, elements: !714)
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !713, file: !50, line: 274, baseType: !48, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !713, file: !50, line: 274, baseType: !28, size: 8, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !50, line: 274, baseType: !28, size: 8, offset: 72)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !713, file: !50, line: 274, baseType: !59, size: 16, offset: 80)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !50, line: 274, baseType: !28, size: 8, offset: 96)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !713, file: !50, line: 274, baseType: !100, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !713, file: !50, line: 275, baseType: !14, size: 32, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !713, file: !50, line: 276, baseType: !390, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !713, file: !50, line: 277, baseType: !25, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !50, line: 278, baseType: !497, size: 128, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !49, file: !50, line: 388, baseType: !726, size: 512)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !50, line: 281, size: 512, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !741, !742, !743, !749, !750}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !726, file: !50, line: 282, baseType: !48, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !726, file: !50, line: 282, baseType: !28, size: 8, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !726, file: !50, line: 282, baseType: !28, size: 8, offset: 72)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !726, file: !50, line: 282, baseType: !59, size: 16, offset: 80)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !726, file: !50, line: 282, baseType: !28, size: 8, offset: 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !726, file: !50, line: 282, baseType: !28, size: 8, offset: 104)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !726, file: !50, line: 283, baseType: !28, size: 8, offset: 112)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !726, file: !50, line: 284, baseType: !736, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1084, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!18, !14, !486, !14, !740, !25, !25}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !726, file: !50, line: 285, baseType: !100, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !726, file: !50, line: 286, baseType: !25, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !726, file: !50, line: 287, baseType: !744, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1102, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!18, !394, !14, !25, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !726, file: !50, line: 288, baseType: !48, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !50, line: 289, baseType: !48, size: 64, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !49, file: !50, line: 389, baseType: !752, size: 512)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !50, line: 307, size: 512, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !752, file: !50, line: 308, baseType: !48, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !752, file: !50, line: 308, baseType: !28, size: 8, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !752, file: !50, line: 308, baseType: !28, size: 8, offset: 72)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !752, file: !50, line: 308, baseType: !59, size: 16, offset: 80)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !50, line: 308, baseType: !28, size: 8, offset: 96)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !752, file: !50, line: 308, baseType: !28, size: 8, offset: 104)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !752, file: !50, line: 309, baseType: !28, size: 8, offset: 112)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !752, file: !50, line: 310, baseType: !28, size: 8, offset: 120)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !752, file: !50, line: 311, baseType: !25, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !752, file: !50, line: 312, baseType: !100, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !752, file: !50, line: 313, baseType: !132, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !752, file: !50, line: 314, baseType: !95, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !752, file: !50, line: 315, baseType: !95, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !752, file: !50, line: 316, baseType: !14, size: 32, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !49, file: !50, line: 390, baseType: !769, size: 448)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !50, line: 340, size: 448, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778, !779, !780}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !769, file: !50, line: 341, baseType: !48, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !769, file: !50, line: 341, baseType: !28, size: 8, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !769, file: !50, line: 341, baseType: !28, size: 8, offset: 72)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !769, file: !50, line: 341, baseType: !59, size: 16, offset: 80)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !50, line: 341, baseType: !28, size: 8, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !769, file: !50, line: 341, baseType: !100, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !769, file: !50, line: 342, baseType: !100, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !769, file: !50, line: 343, baseType: !25, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !769, file: !50, line: 344, baseType: !95, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !769, file: !50, line: 345, baseType: !14, size: 32, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !49, file: !50, line: 391, baseType: !782, size: 256)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !50, line: 350, size: 256, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !794}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !782, file: !50, line: 351, baseType: !48, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !782, file: !50, line: 351, baseType: !28, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !50, line: 351, baseType: !28, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !782, file: !50, line: 351, baseType: !59, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !50, line: 351, baseType: !28, size: 8, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !782, file: !50, line: 351, baseType: !790, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1055, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !394, !25}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !782, file: !50, line: 352, baseType: !25, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !49, file: !50, line: 392, baseType: !796, size: 192)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !50, line: 357, size: 192, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !796, file: !50, line: 358, baseType: !48, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !796, file: !50, line: 358, baseType: !28, size: 8, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !796, file: !50, line: 358, baseType: !28, size: 8, offset: 72)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !796, file: !50, line: 358, baseType: !59, size: 16, offset: 80)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !50, line: 358, baseType: !28, size: 8, offset: 96)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !796, file: !50, line: 358, baseType: !48, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !49, file: !50, line: 399, baseType: !101, size: 384)
!805 = !{}
!806 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !45, file: !3, line: 198, type: !48)
!807 = !DILocation(line: 198, column: 50, scope: !45)
!808 = !DILocalVariable(name: "field_datum_byte_offset", arg: 2, scope: !45, file: !3, line: 199, type: !14)
!809 = !DILocation(line: 199, column: 13, scope: !45)
!810 = !DILocalVariable(name: "value", arg: 3, scope: !45, file: !3, line: 199, type: !740)
!811 = !DILocation(line: 199, column: 43, scope: !45)
!812 = !DILocalVariable(name: "function", arg: 4, scope: !45, file: !3, line: 199, type: !14)
!813 = !DILocation(line: 199, column: 54, scope: !45)
!814 = !DILocalVariable(name: "status", scope: !45, file: !3, line: 201, type: !18)
!815 = !DILocation(line: 201, column: 14, scope: !45)
!816 = !DILocalVariable(name: "rgn_desc", scope: !45, file: !3, line: 202, type: !48)
!817 = !DILocation(line: 202, column: 29, scope: !45)
!818 = !DILocalVariable(name: "region_offset", scope: !45, file: !3, line: 203, type: !14)
!819 = !DILocation(line: 203, column: 6, scope: !45)
!820 = !DILocation(line: 211, column: 32, scope: !45)
!821 = !DILocation(line: 211, column: 42, scope: !45)
!822 = !DILocation(line: 211, column: 11, scope: !45)
!823 = !DILocation(line: 211, column: 9, scope: !45)
!824 = !DILocation(line: 212, column: 6, scope: !825)
!825 = distinct !DILexicalBlock(scope: !45, file: !3, line: 212, column: 6)
!826 = !DILocation(line: 212, column: 6, scope: !45)
!827 = !DILocation(line: 213, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !3, line: 212, column: 28)
!829 = !DILocation(line: 223, column: 13, scope: !45)
!830 = !DILocation(line: 223, column: 23, scope: !45)
!831 = !DILocation(line: 223, column: 36, scope: !45)
!832 = !DILocation(line: 223, column: 11, scope: !45)
!833 = !DILocation(line: 225, column: 6, scope: !45)
!834 = !DILocation(line: 225, column: 16, scope: !45)
!835 = !DILocation(line: 225, column: 29, scope: !45)
!836 = !DILocation(line: 225, column: 48, scope: !45)
!837 = !DILocation(line: 225, column: 46, scope: !45)
!838 = !DILocation(line: 224, column: 16, scope: !45)
!839 = !DILocation(line: 227, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !45, file: !3, line: 227, column: 6)
!841 = !DILocation(line: 227, column: 16, scope: !840)
!842 = !DILocation(line: 227, column: 32, scope: !840)
!843 = !DILocation(line: 227, column: 6, scope: !45)
!844 = !DILocation(line: 229, column: 2, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !3, line: 227, column: 46)
!846 = !DILocation(line: 246, column: 42, scope: !45)
!847 = !DILocation(line: 246, column: 52, scope: !45)
!848 = !DILocation(line: 247, column: 7, scope: !45)
!849 = !DILocation(line: 247, column: 17, scope: !45)
!850 = !DILocation(line: 248, column: 7, scope: !45)
!851 = !DILocation(line: 251, column: 7, scope: !45)
!852 = !DILocation(line: 246, column: 11, scope: !45)
!853 = !DILocation(line: 246, column: 9, scope: !45)
!854 = !DILocation(line: 253, column: 6, scope: !855)
!855 = distinct !DILexicalBlock(scope: !45, file: !3, line: 253, column: 6)
!856 = !DILocation(line: 253, column: 6, scope: !45)
!857 = !DILocation(line: 254, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 254, column: 7)
!859 = distinct !DILexicalBlock(scope: !855, file: !3, line: 253, column: 28)
!860 = !DILocation(line: 254, column: 14, scope: !858)
!861 = !DILocation(line: 254, column: 7, scope: !859)
!862 = !DILocation(line: 255, column: 4, scope: !863)
!863 = distinct !DILexicalBlock(scope: !858, file: !3, line: 254, column: 37)
!864 = !DILocation(line: 260, column: 3, scope: !863)
!865 = !DILocation(line: 260, column: 14, scope: !866)
!866 = distinct !DILexicalBlock(scope: !858, file: !3, line: 260, column: 14)
!867 = !DILocation(line: 260, column: 21, scope: !866)
!868 = !DILocation(line: 260, column: 14, scope: !858)
!869 = !DILocation(line: 261, column: 4, scope: !870)
!870 = distinct !DILexicalBlock(scope: !866, file: !3, line: 260, column: 38)
!871 = !DILocation(line: 266, column: 3, scope: !870)
!872 = !DILocation(line: 267, column: 2, scope: !859)
!873 = !DILocation(line: 269, column: 2, scope: !45)
!874 = !DILocation(line: 270, column: 1, scope: !45)
!875 = distinct !DISubprogram(name: "acpi_ex_setup_region", scope: !3, file: !3, line: 49, type: !876, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!876 = !DISubroutineType(types: !877)
!877 = !{!18, !48, !14}
!878 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !875, file: !3, line: 49, type: !48)
!879 = !DILocation(line: 49, column: 49, scope: !875)
!880 = !DILocalVariable(name: "field_datum_byte_offset", arg: 2, scope: !875, file: !3, line: 50, type: !14)
!881 = !DILocation(line: 50, column: 12, scope: !875)
!882 = !DILocalVariable(name: "status", scope: !875, file: !3, line: 52, type: !18)
!883 = !DILocation(line: 52, column: 14, scope: !875)
!884 = !DILocalVariable(name: "rgn_desc", scope: !875, file: !3, line: 53, type: !48)
!885 = !DILocation(line: 53, column: 29, scope: !875)
!886 = !DILocalVariable(name: "space_id", scope: !875, file: !3, line: 54, type: !28)
!887 = !DILocation(line: 54, column: 5, scope: !875)
!888 = !DILocation(line: 58, column: 13, scope: !875)
!889 = !DILocation(line: 58, column: 23, scope: !875)
!890 = !DILocation(line: 58, column: 36, scope: !875)
!891 = !DILocation(line: 58, column: 11, scope: !875)
!892 = !DILocation(line: 62, column: 6, scope: !893)
!893 = distinct !DILexicalBlock(scope: !875, file: !3, line: 62, column: 6)
!894 = !DILocation(line: 62, column: 16, scope: !893)
!895 = !DILocation(line: 62, column: 23, scope: !893)
!896 = !DILocation(line: 62, column: 28, scope: !893)
!897 = !DILocation(line: 62, column: 6, scope: !875)
!898 = !DILocation(line: 63, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !893, file: !3, line: 62, column: 49)
!900 = !DILocation(line: 67, column: 3, scope: !899)
!901 = !DILocation(line: 70, column: 13, scope: !875)
!902 = !DILocation(line: 70, column: 23, scope: !875)
!903 = !DILocation(line: 70, column: 30, scope: !875)
!904 = !DILocation(line: 70, column: 11, scope: !875)
!905 = !DILocation(line: 74, column: 30, scope: !906)
!906 = distinct !DILexicalBlock(scope: !875, file: !3, line: 74, column: 6)
!907 = !DILocation(line: 74, column: 7, scope: !906)
!908 = !DILocation(line: 74, column: 6, scope: !875)
!909 = !DILocation(line: 75, column: 3, scope: !910)
!910 = distinct !DILexicalBlock(scope: !906, file: !3, line: 74, column: 41)
!911 = !DILocation(line: 78, column: 3, scope: !910)
!912 = !DILocation(line: 85, column: 8, scope: !913)
!913 = distinct !DILexicalBlock(scope: !875, file: !3, line: 85, column: 6)
!914 = !DILocation(line: 85, column: 18, scope: !913)
!915 = !DILocation(line: 85, column: 25, scope: !913)
!916 = !DILocation(line: 85, column: 31, scope: !913)
!917 = !DILocation(line: 85, column: 6, scope: !875)
!918 = !DILocation(line: 86, column: 41, scope: !919)
!919 = distinct !DILexicalBlock(scope: !913, file: !3, line: 85, column: 53)
!920 = !DILocation(line: 86, column: 12, scope: !919)
!921 = !DILocation(line: 86, column: 10, scope: !919)
!922 = !DILocation(line: 87, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !919, file: !3, line: 87, column: 7)
!924 = !DILocation(line: 87, column: 7, scope: !919)
!925 = !DILocation(line: 88, column: 4, scope: !926)
!926 = distinct !DILexicalBlock(scope: !923, file: !3, line: 87, column: 29)
!927 = !DILocation(line: 90, column: 2, scope: !919)
!928 = !DILocation(line: 96, column: 6, scope: !929)
!929 = distinct !DILexicalBlock(scope: !875, file: !3, line: 96, column: 6)
!930 = !DILocation(line: 96, column: 15, scope: !929)
!931 = !DILocation(line: 96, column: 39, scope: !929)
!932 = !DILocation(line: 97, column: 6, scope: !929)
!933 = !DILocation(line: 97, column: 15, scope: !929)
!934 = !DILocation(line: 97, column: 39, scope: !929)
!935 = !DILocation(line: 98, column: 6, scope: !929)
!936 = !DILocation(line: 98, column: 15, scope: !929)
!937 = !DILocation(line: 96, column: 6, scope: !875)
!938 = !DILocation(line: 102, column: 3, scope: !939)
!939 = distinct !DILexicalBlock(scope: !929, file: !3, line: 98, column: 39)
!940 = !DILocation(line: 121, column: 6, scope: !941)
!941 = distinct !DILexicalBlock(scope: !875, file: !3, line: 121, column: 6)
!942 = !DILocation(line: 121, column: 16, scope: !941)
!943 = !DILocation(line: 121, column: 23, scope: !941)
!944 = !DILocation(line: 122, column: 7, scope: !941)
!945 = !DILocation(line: 122, column: 17, scope: !941)
!946 = !DILocation(line: 122, column: 30, scope: !941)
!947 = !DILocation(line: 122, column: 49, scope: !941)
!948 = !DILocation(line: 122, column: 47, scope: !941)
!949 = !DILocation(line: 123, column: 7, scope: !941)
!950 = !DILocation(line: 123, column: 17, scope: !941)
!951 = !DILocation(line: 123, column: 30, scope: !941)
!952 = !DILocation(line: 122, column: 73, scope: !941)
!953 = !DILocation(line: 121, column: 30, scope: !941)
!954 = !DILocation(line: 121, column: 6, scope: !875)
!955 = !DILocation(line: 124, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 124, column: 7)
!957 = distinct !DILexicalBlock(scope: !941, file: !3, line: 123, column: 50)
!958 = !DILocation(line: 124, column: 7, scope: !957)
!959 = !DILocation(line: 130, column: 8, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !3, line: 130, column: 8)
!961 = distinct !DILexicalBlock(scope: !956, file: !3, line: 124, column: 42)
!962 = !DILocation(line: 133, column: 20, scope: !960)
!963 = !DILocation(line: 133, column: 30, scope: !960)
!964 = !DILocation(line: 134, column: 9, scope: !960)
!965 = !DILocation(line: 133, column: 9, scope: !960)
!966 = !DILocation(line: 135, column: 9, scope: !960)
!967 = !DILocation(line: 135, column: 19, scope: !960)
!968 = !DILocation(line: 135, column: 32, scope: !960)
!969 = !DILocation(line: 134, column: 26, scope: !960)
!970 = !DILocation(line: 136, column: 9, scope: !960)
!971 = !DILocation(line: 135, column: 50, scope: !960)
!972 = !DILocation(line: 132, column: 27, scope: !960)
!973 = !DILocation(line: 130, column: 8, scope: !961)
!974 = !DILocation(line: 137, column: 5, scope: !975)
!975 = distinct !DILexicalBlock(scope: !960, file: !3, line: 136, column: 35)
!976 = !DILocation(line: 139, column: 3, scope: !961)
!977 = !DILocation(line: 141, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !957, file: !3, line: 141, column: 7)
!979 = !DILocation(line: 141, column: 17, scope: !978)
!980 = !DILocation(line: 141, column: 24, scope: !978)
!981 = !DILocation(line: 142, column: 7, scope: !978)
!982 = !DILocation(line: 142, column: 17, scope: !978)
!983 = !DILocation(line: 142, column: 30, scope: !978)
!984 = !DILocation(line: 141, column: 31, scope: !978)
!985 = !DILocation(line: 141, column: 7, scope: !957)
!986 = !DILocation(line: 148, column: 4, scope: !987)
!987 = distinct !DILexicalBlock(scope: !978, file: !3, line: 142, column: 49)
!988 = !DILocation(line: 157, column: 3, scope: !987)
!989 = !DILocation(line: 163, column: 3, scope: !957)
!990 = !DILocation(line: 173, column: 3, scope: !957)
!991 = !DILocation(line: 176, column: 2, scope: !875)
!992 = !DILocation(line: 177, column: 1, scope: !875)
!993 = distinct !DISubprogram(name: "acpi_ex_write_with_update_rule", scope: !3, file: !3, line: 544, type: !994, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!994 = !DISubroutineType(types: !995)
!995 = !{!18, !48, !20, !20, !14}
!996 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !993, file: !3, line: 544, type: !48)
!997 = !DILocation(line: 544, column: 59, scope: !993)
!998 = !DILocalVariable(name: "mask", arg: 2, scope: !993, file: !3, line: 545, type: !20)
!999 = !DILocation(line: 545, column: 15, scope: !993)
!1000 = !DILocalVariable(name: "field_value", arg: 3, scope: !993, file: !3, line: 546, type: !20)
!1001 = !DILocation(line: 546, column: 15, scope: !993)
!1002 = !DILocalVariable(name: "field_datum_byte_offset", arg: 4, scope: !993, file: !3, line: 546, type: !14)
!1003 = !DILocation(line: 546, column: 32, scope: !993)
!1004 = !DILocalVariable(name: "status", scope: !993, file: !3, line: 548, type: !18)
!1005 = !DILocation(line: 548, column: 14, scope: !993)
!1006 = !DILocalVariable(name: "merged_value", scope: !993, file: !3, line: 549, type: !20)
!1007 = !DILocation(line: 549, column: 6, scope: !993)
!1008 = !DILocalVariable(name: "current_value", scope: !993, file: !3, line: 550, type: !20)
!1009 = !DILocation(line: 550, column: 6, scope: !993)
!1010 = !DILocation(line: 556, column: 17, scope: !993)
!1011 = !DILocation(line: 556, column: 15, scope: !993)
!1012 = !DILocation(line: 560, column: 6, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !993, file: !3, line: 560, column: 6)
!1014 = !DILocation(line: 560, column: 11, scope: !1013)
!1015 = !DILocation(line: 560, column: 6, scope: !993)
!1016 = !DILocation(line: 564, column: 11, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 560, column: 31)
!1018 = !DILocation(line: 564, column: 21, scope: !1017)
!1019 = !DILocation(line: 565, column: 4, scope: !1017)
!1020 = !DILocation(line: 565, column: 16, scope: !1017)
!1021 = !DILocation(line: 564, column: 3, scope: !1017)
!1022 = !DILocation(line: 571, column: 10, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 571, column: 8)
!1024 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 565, column: 46)
!1025 = !DILocation(line: 571, column: 9, scope: !1023)
!1026 = !DILocation(line: 572, column: 12, scope: !1023)
!1027 = !DILocation(line: 571, column: 44, scope: !1023)
!1028 = !DILocation(line: 571, column: 15, scope: !1023)
!1029 = !DILocation(line: 573, column: 30, scope: !1023)
!1030 = !DILocation(line: 571, column: 8, scope: !1024)
!1031 = !DILocation(line: 579, column: 32, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 573, column: 36)
!1033 = !DILocation(line: 580, column: 11, scope: !1032)
!1034 = !DILocation(line: 579, column: 9, scope: !1032)
!1035 = !DILocation(line: 578, column: 12, scope: !1032)
!1036 = !DILocation(line: 583, column: 9, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 583, column: 9)
!1038 = !DILocation(line: 583, column: 9, scope: !1032)
!1039 = !DILocation(line: 584, column: 6, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 583, column: 31)
!1041 = !DILocation(line: 587, column: 22, scope: !1032)
!1042 = !DILocation(line: 587, column: 39, scope: !1032)
!1043 = !DILocation(line: 587, column: 38, scope: !1032)
!1044 = !DILocation(line: 587, column: 36, scope: !1032)
!1045 = !DILocation(line: 587, column: 18, scope: !1032)
!1046 = !DILocation(line: 588, column: 4, scope: !1032)
!1047 = !DILocation(line: 589, column: 4, scope: !1024)
!1048 = !DILocation(line: 595, column: 21, scope: !1024)
!1049 = !DILocation(line: 595, column: 20, scope: !1024)
!1050 = !DILocation(line: 595, column: 17, scope: !1024)
!1051 = !DILocation(line: 596, column: 4, scope: !1024)
!1052 = !DILocation(line: 602, column: 20, scope: !1024)
!1053 = !DILocation(line: 602, column: 17, scope: !1024)
!1054 = !DILocation(line: 603, column: 4, scope: !1024)
!1055 = !DILocation(line: 607, column: 4, scope: !1024)
!1056 = !DILocation(line: 611, column: 4, scope: !1024)
!1057 = !DILocation(line: 613, column: 2, scope: !1017)
!1058 = !DILocation(line: 627, column: 29, scope: !993)
!1059 = !DILocation(line: 627, column: 39, scope: !993)
!1060 = !DILocation(line: 627, column: 6, scope: !993)
!1061 = !DILocation(line: 626, column: 9, scope: !993)
!1062 = !DILocation(line: 630, column: 2, scope: !993)
!1063 = !DILocation(line: 631, column: 1, scope: !993)
!1064 = distinct !DISubprogram(name: "acpi_ex_field_datum_io", scope: !3, file: !3, line: 338, type: !46, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1065 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1064, file: !3, line: 338, type: !48)
!1066 = !DILocation(line: 338, column: 51, scope: !1064)
!1067 = !DILocalVariable(name: "field_datum_byte_offset", arg: 2, scope: !1064, file: !3, line: 339, type: !14)
!1068 = !DILocation(line: 339, column: 14, scope: !1064)
!1069 = !DILocalVariable(name: "value", arg: 3, scope: !1064, file: !3, line: 339, type: !740)
!1070 = !DILocation(line: 339, column: 44, scope: !1064)
!1071 = !DILocalVariable(name: "read_write", arg: 4, scope: !1064, file: !3, line: 339, type: !14)
!1072 = !DILocation(line: 339, column: 55, scope: !1064)
!1073 = !DILocalVariable(name: "status", scope: !1064, file: !3, line: 341, type: !18)
!1074 = !DILocation(line: 341, column: 14, scope: !1064)
!1075 = !DILocalVariable(name: "local_value", scope: !1064, file: !3, line: 342, type: !20)
!1076 = !DILocation(line: 342, column: 6, scope: !1064)
!1077 = !DILocation(line: 346, column: 6, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 346, column: 6)
!1079 = !DILocation(line: 346, column: 17, scope: !1078)
!1080 = !DILocation(line: 346, column: 6, scope: !1064)
!1081 = !DILocation(line: 347, column: 8, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 347, column: 7)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 346, column: 31)
!1084 = !DILocation(line: 347, column: 7, scope: !1083)
!1085 = !DILocation(line: 348, column: 16, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 347, column: 15)
!1087 = !DILocation(line: 351, column: 10, scope: !1086)
!1088 = !DILocation(line: 352, column: 3, scope: !1086)
!1089 = !DILocation(line: 356, column: 4, scope: !1083)
!1090 = !DILocation(line: 356, column: 10, scope: !1083)
!1091 = !DILocation(line: 357, column: 2, scope: !1083)
!1092 = !DILocation(line: 369, column: 10, scope: !1064)
!1093 = !DILocation(line: 369, column: 20, scope: !1064)
!1094 = !DILocation(line: 369, column: 27, scope: !1064)
!1095 = !DILocation(line: 369, column: 2, scope: !1064)
!1096 = !DILocation(line: 375, column: 9, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 375, column: 7)
!1098 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 369, column: 33)
!1099 = !DILocation(line: 375, column: 19, scope: !1097)
!1100 = !DILocation(line: 375, column: 26, scope: !1097)
!1101 = !DILocation(line: 375, column: 32, scope: !1097)
!1102 = !DILocation(line: 375, column: 7, scope: !1098)
!1103 = !DILocation(line: 376, column: 48, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 375, column: 54)
!1105 = !DILocation(line: 376, column: 13, scope: !1104)
!1106 = !DILocation(line: 376, column: 11, scope: !1104)
!1107 = !DILocation(line: 377, column: 8, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 377, column: 8)
!1109 = !DILocation(line: 377, column: 8, scope: !1104)
!1110 = !DILocation(line: 378, column: 5, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 377, column: 30)
!1112 = !DILocation(line: 380, column: 3, scope: !1104)
!1113 = !DILocation(line: 382, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 382, column: 7)
!1115 = !DILocation(line: 382, column: 18, scope: !1114)
!1116 = !DILocation(line: 382, column: 7, scope: !1098)
!1117 = !DILocation(line: 387, column: 11, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 382, column: 32)
!1119 = !DILocation(line: 387, column: 4, scope: !1118)
!1120 = !DILocation(line: 388, column: 12, scope: !1118)
!1121 = !DILocation(line: 388, column: 22, scope: !1118)
!1122 = !DILocation(line: 388, column: 35, scope: !1118)
!1123 = !DILocation(line: 388, column: 48, scope: !1118)
!1124 = !DILocation(line: 389, column: 11, scope: !1118)
!1125 = !DILocation(line: 390, column: 11, scope: !1118)
!1126 = !DILocation(line: 390, column: 21, scope: !1118)
!1127 = !DILocation(line: 390, column: 34, scope: !1118)
!1128 = !DILocation(line: 389, column: 19, scope: !1118)
!1129 = !DILocation(line: 391, column: 11, scope: !1118)
!1130 = !DILocation(line: 390, column: 51, scope: !1118)
!1131 = !DILocation(line: 392, column: 11, scope: !1118)
!1132 = !DILocation(line: 392, column: 21, scope: !1118)
!1133 = !DILocation(line: 392, column: 34, scope: !1118)
!1134 = !DILocation(line: 393, column: 3, scope: !1118)
!1135 = !DILocation(line: 398, column: 12, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 393, column: 10)
!1137 = !DILocation(line: 398, column: 22, scope: !1136)
!1138 = !DILocation(line: 398, column: 35, scope: !1136)
!1139 = !DILocation(line: 398, column: 48, scope: !1136)
!1140 = !DILocation(line: 399, column: 11, scope: !1136)
!1141 = !DILocation(line: 400, column: 11, scope: !1136)
!1142 = !DILocation(line: 400, column: 21, scope: !1136)
!1143 = !DILocation(line: 400, column: 34, scope: !1136)
!1144 = !DILocation(line: 399, column: 19, scope: !1136)
!1145 = !DILocation(line: 401, column: 11, scope: !1136)
!1146 = !DILocation(line: 400, column: 51, scope: !1136)
!1147 = !DILocation(line: 401, column: 36, scope: !1136)
!1148 = !DILocation(line: 398, column: 4, scope: !1136)
!1149 = !DILocation(line: 402, column: 11, scope: !1136)
!1150 = !DILocation(line: 402, column: 21, scope: !1136)
!1151 = !DILocation(line: 402, column: 34, scope: !1136)
!1152 = !DILocation(line: 405, column: 10, scope: !1098)
!1153 = !DILocation(line: 406, column: 3, scope: !1098)
!1154 = !DILocation(line: 413, column: 33, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 413, column: 7)
!1156 = !DILocation(line: 413, column: 43, scope: !1155)
!1157 = !DILocation(line: 413, column: 54, scope: !1155)
!1158 = !DILocation(line: 414, column: 18, scope: !1155)
!1159 = !DILocation(line: 414, column: 28, scope: !1155)
!1160 = !DILocation(line: 415, column: 12, scope: !1155)
!1161 = !DILocation(line: 414, column: 12, scope: !1155)
!1162 = !DILocation(line: 413, column: 7, scope: !1155)
!1163 = !DILocation(line: 413, column: 7, scope: !1098)
!1164 = !DILocation(line: 416, column: 4, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 415, column: 20)
!1166 = !DILocation(line: 424, column: 33, scope: !1098)
!1167 = !DILocation(line: 424, column: 43, scope: !1098)
!1168 = !DILocation(line: 424, column: 54, scope: !1098)
!1169 = !DILocation(line: 425, column: 13, scope: !1098)
!1170 = !DILocation(line: 425, column: 23, scope: !1098)
!1171 = !DILocation(line: 425, column: 34, scope: !1098)
!1172 = !DILocation(line: 425, column: 12, scope: !1098)
!1173 = !DILocation(line: 424, column: 7, scope: !1098)
!1174 = !DILocation(line: 423, column: 10, scope: !1098)
!1175 = !DILocation(line: 428, column: 7, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 428, column: 7)
!1177 = !DILocation(line: 428, column: 7, scope: !1098)
!1178 = !DILocation(line: 429, column: 4, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 428, column: 29)
!1180 = !DILocation(line: 445, column: 29, scope: !1098)
!1181 = !DILocation(line: 445, column: 39, scope: !1098)
!1182 = !DILocation(line: 446, column: 8, scope: !1098)
!1183 = !DILocation(line: 446, column: 15, scope: !1098)
!1184 = !DILocation(line: 445, column: 7, scope: !1098)
!1185 = !DILocation(line: 444, column: 10, scope: !1098)
!1186 = !DILocation(line: 447, column: 3, scope: !1098)
!1187 = !DILocation(line: 454, column: 33, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 454, column: 7)
!1189 = !DILocation(line: 454, column: 43, scope: !1188)
!1190 = !DILocation(line: 454, column: 55, scope: !1188)
!1191 = !DILocation(line: 455, column: 18, scope: !1188)
!1192 = !DILocation(line: 455, column: 28, scope: !1188)
!1193 = !DILocation(line: 456, column: 12, scope: !1188)
!1194 = !DILocation(line: 455, column: 12, scope: !1188)
!1195 = !DILocation(line: 454, column: 7, scope: !1188)
!1196 = !DILocation(line: 454, column: 7, scope: !1098)
!1197 = !DILocation(line: 457, column: 4, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 456, column: 20)
!1199 = !DILocation(line: 462, column: 30, scope: !1098)
!1200 = !DILocation(line: 462, column: 40, scope: !1098)
!1201 = !DILocation(line: 462, column: 52, scope: !1098)
!1202 = !DILocation(line: 462, column: 27, scope: !1098)
!1203 = !DILocation(line: 469, column: 33, scope: !1098)
!1204 = !DILocation(line: 469, column: 43, scope: !1098)
!1205 = !DILocation(line: 469, column: 55, scope: !1098)
!1206 = !DILocation(line: 470, column: 12, scope: !1098)
!1207 = !DILocation(line: 469, column: 7, scope: !1098)
!1208 = !DILocation(line: 468, column: 10, scope: !1098)
!1209 = !DILocation(line: 472, column: 7, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 472, column: 7)
!1211 = !DILocation(line: 472, column: 7, scope: !1098)
!1212 = !DILocation(line: 473, column: 4, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 472, column: 29)
!1214 = !DILocation(line: 476, column: 7, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 476, column: 7)
!1216 = !DILocation(line: 476, column: 18, scope: !1215)
!1217 = !DILocation(line: 476, column: 7, scope: !1098)
!1218 = !DILocation(line: 484, column: 35, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 476, column: 32)
!1220 = !DILocation(line: 484, column: 45, scope: !1219)
!1221 = !DILocation(line: 485, column: 14, scope: !1219)
!1222 = !DILocation(line: 485, column: 24, scope: !1219)
!1223 = !DILocation(line: 484, column: 8, scope: !1219)
!1224 = !DILocation(line: 483, column: 11, scope: !1219)
!1225 = !DILocation(line: 487, column: 3, scope: !1219)
!1226 = !DILocation(line: 495, column: 34, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 487, column: 10)
!1228 = !DILocation(line: 495, column: 44, scope: !1227)
!1229 = !DILocation(line: 496, column: 13, scope: !1227)
!1230 = !DILocation(line: 496, column: 23, scope: !1227)
!1231 = !DILocation(line: 495, column: 8, scope: !1227)
!1232 = !DILocation(line: 494, column: 11, scope: !1227)
!1233 = !DILocation(line: 499, column: 3, scope: !1098)
!1234 = !DILocation(line: 503, column: 3, scope: !1098)
!1235 = !DILocation(line: 505, column: 10, scope: !1098)
!1236 = !DILocation(line: 506, column: 3, scope: !1098)
!1237 = !DILocation(line: 509, column: 6, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 509, column: 6)
!1239 = !DILocation(line: 509, column: 6, scope: !1064)
!1240 = !DILocation(line: 510, column: 7, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 510, column: 7)
!1242 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 509, column: 28)
!1243 = !DILocation(line: 510, column: 18, scope: !1241)
!1244 = !DILocation(line: 510, column: 7, scope: !1242)
!1245 = !DILocation(line: 516, column: 3, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 510, column: 32)
!1247 = !DILocation(line: 523, column: 2, scope: !1242)
!1248 = !DILocation(line: 525, column: 2, scope: !1064)
!1249 = !DILocation(line: 526, column: 1, scope: !1064)
!1250 = distinct !DISubprogram(name: "acpi_ex_extract_from_field", scope: !3, file: !3, line: 648, type: !1251, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!18, !48, !25, !14}
!1253 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1250, file: !3, line: 648, type: !48)
!1254 = !DILocation(line: 648, column: 55, scope: !1250)
!1255 = !DILocalVariable(name: "buffer", arg: 2, scope: !1250, file: !3, line: 649, type: !25)
!1256 = !DILocation(line: 649, column: 13, scope: !1250)
!1257 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !1250, file: !3, line: 649, type: !14)
!1258 = !DILocation(line: 649, column: 25, scope: !1250)
!1259 = !DILocalVariable(name: "status", scope: !1250, file: !3, line: 651, type: !18)
!1260 = !DILocation(line: 651, column: 14, scope: !1250)
!1261 = !DILocalVariable(name: "raw_datum", scope: !1250, file: !3, line: 652, type: !20)
!1262 = !DILocation(line: 652, column: 6, scope: !1250)
!1263 = !DILocalVariable(name: "merged_datum", scope: !1250, file: !3, line: 653, type: !20)
!1264 = !DILocation(line: 653, column: 6, scope: !1250)
!1265 = !DILocalVariable(name: "field_offset", scope: !1250, file: !3, line: 654, type: !14)
!1266 = !DILocation(line: 654, column: 6, scope: !1250)
!1267 = !DILocalVariable(name: "buffer_offset", scope: !1250, file: !3, line: 655, type: !14)
!1268 = !DILocation(line: 655, column: 6, scope: !1250)
!1269 = !DILocalVariable(name: "buffer_tail_bits", scope: !1250, file: !3, line: 656, type: !14)
!1270 = !DILocation(line: 656, column: 6, scope: !1250)
!1271 = !DILocalVariable(name: "datum_count", scope: !1250, file: !3, line: 657, type: !14)
!1272 = !DILocation(line: 657, column: 6, scope: !1250)
!1273 = !DILocalVariable(name: "field_datum_count", scope: !1250, file: !3, line: 658, type: !14)
!1274 = !DILocation(line: 658, column: 6, scope: !1250)
!1275 = !DILocalVariable(name: "access_bit_width", scope: !1250, file: !3, line: 659, type: !14)
!1276 = !DILocation(line: 659, column: 6, scope: !1250)
!1277 = !DILocalVariable(name: "i", scope: !1250, file: !3, line: 660, type: !14)
!1278 = !DILocation(line: 660, column: 6, scope: !1250)
!1279 = !DILocation(line: 666, column: 6, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 666, column: 6)
!1281 = !DILocation(line: 667, column: 6, scope: !1280)
!1282 = !DILocation(line: 666, column: 20, scope: !1280)
!1283 = !DILocation(line: 666, column: 6, scope: !1250)
!1284 = !DILocation(line: 668, column: 3, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 667, column: 70)
!1286 = !DILocation(line: 672, column: 3, scope: !1285)
!1287 = !DILocation(line: 675, column: 9, scope: !1250)
!1288 = !DILocation(line: 675, column: 20, scope: !1250)
!1289 = !DILocation(line: 675, column: 2, scope: !1250)
!1290 = !DILocation(line: 676, column: 21, scope: !1250)
!1291 = !DILocation(line: 676, column: 19, scope: !1250)
!1292 = !DILocation(line: 680, column: 7, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 680, column: 6)
!1294 = !DILocation(line: 680, column: 17, scope: !1293)
!1295 = !DILocation(line: 680, column: 30, scope: !1293)
!1296 = !DILocation(line: 680, column: 53, scope: !1293)
!1297 = !DILocation(line: 680, column: 59, scope: !1293)
!1298 = !DILocation(line: 681, column: 7, scope: !1293)
!1299 = !DILocation(line: 681, column: 17, scope: !1293)
!1300 = !DILocation(line: 681, column: 30, scope: !1293)
!1301 = !DILocation(line: 681, column: 44, scope: !1293)
!1302 = !DILocation(line: 681, column: 41, scope: !1293)
!1303 = !DILocation(line: 680, column: 6, scope: !1250)
!1304 = !DILocation(line: 682, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 682, column: 7)
!1306 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 681, column: 63)
!1307 = !DILocation(line: 682, column: 21, scope: !1305)
!1308 = !DILocation(line: 682, column: 7, scope: !1306)
!1309 = !DILocation(line: 684, column: 31, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 682, column: 37)
!1311 = !DILocation(line: 684, column: 44, scope: !1310)
!1312 = !DILocation(line: 684, column: 8, scope: !1310)
!1313 = !DILocation(line: 683, column: 11, scope: !1310)
!1314 = !DILocation(line: 686, column: 3, scope: !1310)
!1315 = !DILocation(line: 690, column: 31, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 686, column: 10)
!1317 = !DILocation(line: 690, column: 8, scope: !1316)
!1318 = !DILocation(line: 689, column: 11, scope: !1316)
!1319 = !DILocation(line: 692, column: 11, scope: !1316)
!1320 = !DILocation(line: 692, column: 4, scope: !1316)
!1321 = !DILocation(line: 692, column: 31, scope: !1316)
!1322 = !DILocation(line: 695, column: 3, scope: !1306)
!1323 = !DILocation(line: 702, column: 6, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 702, column: 6)
!1325 = !DILocation(line: 702, column: 16, scope: !1324)
!1326 = !DILocation(line: 702, column: 29, scope: !1324)
!1327 = !DILocation(line: 702, column: 47, scope: !1324)
!1328 = !DILocation(line: 702, column: 6, scope: !1250)
!1329 = !DILocation(line: 703, column: 3, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 702, column: 62)
!1331 = !DILocation(line: 703, column: 13, scope: !1330)
!1332 = !DILocation(line: 703, column: 26, scope: !1330)
!1333 = !DILocation(line: 703, column: 44, scope: !1330)
!1334 = !DILocation(line: 704, column: 20, scope: !1330)
!1335 = !DILocation(line: 705, column: 2, scope: !1330)
!1336 = !DILocation(line: 710, column: 6, scope: !1250)
!1337 = !DILocation(line: 709, column: 14, scope: !1250)
!1338 = !DILocation(line: 713, column: 22, scope: !1250)
!1339 = !DILocation(line: 713, column: 20, scope: !1250)
!1340 = !DILocation(line: 721, column: 29, scope: !1250)
!1341 = !DILocation(line: 721, column: 39, scope: !1250)
!1342 = !DILocation(line: 721, column: 6, scope: !1250)
!1343 = !DILocation(line: 720, column: 9, scope: !1250)
!1344 = !DILocation(line: 723, column: 6, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 723, column: 6)
!1346 = !DILocation(line: 723, column: 6, scope: !1250)
!1347 = !DILocation(line: 724, column: 3, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 723, column: 28)
!1349 = !DILocation(line: 727, column: 6, scope: !1250)
!1350 = !DILocation(line: 727, column: 19, scope: !1250)
!1351 = !DILocation(line: 727, column: 29, scope: !1250)
!1352 = !DILocation(line: 727, column: 42, scope: !1250)
!1353 = !DILocation(line: 727, column: 16, scope: !1250)
!1354 = !DILocation(line: 726, column: 15, scope: !1250)
!1355 = !DILocation(line: 731, column: 9, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 731, column: 2)
!1357 = !DILocation(line: 731, column: 7, scope: !1356)
!1358 = !DILocation(line: 731, column: 14, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 731, column: 2)
!1360 = !DILocation(line: 731, column: 18, scope: !1359)
!1361 = !DILocation(line: 731, column: 16, scope: !1359)
!1362 = !DILocation(line: 731, column: 2, scope: !1356)
!1363 = !DILocation(line: 735, column: 19, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 731, column: 42)
!1365 = !DILocation(line: 735, column: 29, scope: !1364)
!1366 = !DILocation(line: 735, column: 42, scope: !1364)
!1367 = !DILocation(line: 735, column: 16, scope: !1364)
!1368 = !DILocation(line: 737, column: 30, scope: !1364)
!1369 = !DILocation(line: 737, column: 40, scope: !1364)
!1370 = !DILocation(line: 737, column: 7, scope: !1364)
!1371 = !DILocation(line: 736, column: 10, scope: !1364)
!1372 = !DILocation(line: 739, column: 7, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 739, column: 7)
!1374 = !DILocation(line: 739, column: 7, scope: !1364)
!1375 = !DILocation(line: 740, column: 4, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 739, column: 29)
!1377 = !DILocation(line: 751, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 751, column: 7)
!1379 = !DILocation(line: 752, column: 7, scope: !1378)
!1380 = !DILocation(line: 752, column: 17, scope: !1378)
!1381 = !DILocation(line: 752, column: 30, scope: !1378)
!1382 = !DILocation(line: 751, column: 24, scope: !1378)
!1383 = !DILocation(line: 752, column: 53, scope: !1378)
!1384 = !DILocation(line: 751, column: 7, scope: !1364)
!1385 = !DILocation(line: 755, column: 8, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 753, column: 30)
!1387 = !DILocation(line: 755, column: 22, scope: !1386)
!1388 = !DILocation(line: 756, column: 8, scope: !1386)
!1389 = !DILocation(line: 756, column: 18, scope: !1386)
!1390 = !DILocation(line: 757, column: 8, scope: !1386)
!1391 = !DILocation(line: 755, column: 39, scope: !1386)
!1392 = !DILocation(line: 755, column: 18, scope: !1386)
!1393 = !DILocation(line: 754, column: 17, scope: !1386)
!1394 = !DILocation(line: 758, column: 3, scope: !1386)
!1395 = !DILocation(line: 760, column: 7, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 760, column: 7)
!1397 = !DILocation(line: 760, column: 12, scope: !1396)
!1398 = !DILocation(line: 760, column: 9, scope: !1396)
!1399 = !DILocation(line: 760, column: 7, scope: !1364)
!1400 = !DILocation(line: 761, column: 4, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 760, column: 25)
!1402 = !DILocation(line: 766, column: 19, scope: !1364)
!1403 = !DILocation(line: 766, column: 29, scope: !1364)
!1404 = !DILocation(line: 766, column: 27, scope: !1364)
!1405 = !DILocation(line: 766, column: 3, scope: !1364)
!1406 = !DILocation(line: 767, column: 10, scope: !1364)
!1407 = !DILocation(line: 770, column: 20, scope: !1364)
!1408 = !DILocation(line: 770, column: 30, scope: !1364)
!1409 = !DILocation(line: 770, column: 43, scope: !1364)
!1410 = !DILocation(line: 770, column: 17, scope: !1364)
!1411 = !DILocation(line: 772, column: 7, scope: !1364)
!1412 = !DILocation(line: 772, column: 20, scope: !1364)
!1413 = !DILocation(line: 772, column: 30, scope: !1364)
!1414 = !DILocation(line: 772, column: 43, scope: !1364)
!1415 = !DILocation(line: 772, column: 17, scope: !1364)
!1416 = !DILocation(line: 771, column: 16, scope: !1364)
!1417 = !DILocation(line: 773, column: 2, scope: !1364)
!1418 = !DILocation(line: 731, column: 38, scope: !1359)
!1419 = !DILocation(line: 731, column: 2, scope: !1359)
!1420 = distinct !{!1420, !1362, !1421}
!1421 = !DILocation(line: 773, column: 2, scope: !1356)
!1422 = !DILocation(line: 777, column: 21, scope: !1250)
!1423 = !DILocation(line: 777, column: 31, scope: !1250)
!1424 = !DILocation(line: 777, column: 44, scope: !1250)
!1425 = !DILocation(line: 777, column: 57, scope: !1250)
!1426 = !DILocation(line: 777, column: 55, scope: !1250)
!1427 = !DILocation(line: 777, column: 19, scope: !1250)
!1428 = !DILocation(line: 778, column: 6, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 778, column: 6)
!1430 = !DILocation(line: 778, column: 6, scope: !1250)
!1431 = !DILocation(line: 779, column: 19, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 778, column: 24)
!1433 = !DILocation(line: 779, column: 16, scope: !1432)
!1434 = !DILocation(line: 780, column: 2, scope: !1432)
!1435 = !DILocation(line: 784, column: 18, scope: !1250)
!1436 = !DILocation(line: 784, column: 28, scope: !1250)
!1437 = !DILocation(line: 784, column: 26, scope: !1250)
!1438 = !DILocation(line: 784, column: 2, scope: !1250)
!1439 = !DILocation(line: 785, column: 9, scope: !1250)
!1440 = !DILocation(line: 788, column: 2, scope: !1250)
!1441 = !DILocation(line: 789, column: 1, scope: !1250)
!1442 = distinct !DISubprogram(name: "acpi_ex_insert_into_field", scope: !3, file: !3, line: 806, type: !1251, scopeLine: 808, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1443 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1442, file: !3, line: 806, type: !48)
!1444 = !DILocation(line: 806, column: 54, scope: !1442)
!1445 = !DILocalVariable(name: "buffer", arg: 2, scope: !1442, file: !3, line: 807, type: !25)
!1446 = !DILocation(line: 807, column: 12, scope: !1442)
!1447 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !1442, file: !3, line: 807, type: !14)
!1448 = !DILocation(line: 807, column: 24, scope: !1442)
!1449 = !DILocalVariable(name: "new_buffer", scope: !1442, file: !3, line: 809, type: !25)
!1450 = !DILocation(line: 809, column: 8, scope: !1442)
!1451 = !DILocalVariable(name: "status", scope: !1442, file: !3, line: 810, type: !18)
!1452 = !DILocation(line: 810, column: 14, scope: !1442)
!1453 = !DILocalVariable(name: "mask", scope: !1442, file: !3, line: 811, type: !20)
!1454 = !DILocation(line: 811, column: 6, scope: !1442)
!1455 = !DILocalVariable(name: "width_mask", scope: !1442, file: !3, line: 812, type: !20)
!1456 = !DILocation(line: 812, column: 6, scope: !1442)
!1457 = !DILocalVariable(name: "merged_datum", scope: !1442, file: !3, line: 813, type: !20)
!1458 = !DILocation(line: 813, column: 6, scope: !1442)
!1459 = !DILocalVariable(name: "raw_datum", scope: !1442, file: !3, line: 814, type: !20)
!1460 = !DILocation(line: 814, column: 6, scope: !1442)
!1461 = !DILocalVariable(name: "field_offset", scope: !1442, file: !3, line: 815, type: !14)
!1462 = !DILocation(line: 815, column: 6, scope: !1442)
!1463 = !DILocalVariable(name: "buffer_offset", scope: !1442, file: !3, line: 816, type: !14)
!1464 = !DILocation(line: 816, column: 6, scope: !1442)
!1465 = !DILocalVariable(name: "buffer_tail_bits", scope: !1442, file: !3, line: 817, type: !14)
!1466 = !DILocation(line: 817, column: 6, scope: !1442)
!1467 = !DILocalVariable(name: "datum_count", scope: !1442, file: !3, line: 818, type: !14)
!1468 = !DILocation(line: 818, column: 6, scope: !1442)
!1469 = !DILocalVariable(name: "field_datum_count", scope: !1442, file: !3, line: 819, type: !14)
!1470 = !DILocation(line: 819, column: 6, scope: !1442)
!1471 = !DILocalVariable(name: "access_bit_width", scope: !1442, file: !3, line: 820, type: !14)
!1472 = !DILocation(line: 820, column: 6, scope: !1442)
!1473 = !DILocalVariable(name: "required_length", scope: !1442, file: !3, line: 821, type: !14)
!1474 = !DILocation(line: 821, column: 6, scope: !1442)
!1475 = !DILocalVariable(name: "i", scope: !1442, file: !3, line: 822, type: !14)
!1476 = !DILocation(line: 822, column: 6, scope: !1442)
!1477 = !DILocation(line: 828, column: 13, scope: !1442)
!1478 = !DILocation(line: 830, column: 6, scope: !1442)
!1479 = !DILocation(line: 829, column: 18, scope: !1442)
!1480 = !DILocation(line: 838, column: 6, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 838, column: 6)
!1482 = !DILocation(line: 838, column: 22, scope: !1481)
!1483 = !DILocation(line: 838, column: 20, scope: !1481)
!1484 = !DILocation(line: 838, column: 6, scope: !1442)
!1485 = !DILocation(line: 842, column: 16, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 838, column: 39)
!1487 = !DILocation(line: 842, column: 14, scope: !1486)
!1488 = !DILocation(line: 843, column: 8, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 843, column: 7)
!1490 = !DILocation(line: 843, column: 7, scope: !1486)
!1491 = !DILocation(line: 844, column: 4, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 843, column: 20)
!1493 = !DILocation(line: 852, column: 18, scope: !1486)
!1494 = !DILocation(line: 852, column: 38, scope: !1486)
!1495 = !DILocation(line: 852, column: 46, scope: !1486)
!1496 = !DILocation(line: 852, column: 3, scope: !1486)
!1497 = !DILocation(line: 853, column: 12, scope: !1486)
!1498 = !DILocation(line: 853, column: 10, scope: !1486)
!1499 = !DILocation(line: 854, column: 19, scope: !1486)
!1500 = !DILocation(line: 854, column: 17, scope: !1486)
!1501 = !DILocation(line: 855, column: 2, scope: !1486)
!1502 = !DILocation(line: 860, column: 6, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 860, column: 6)
!1504 = !DILocation(line: 860, column: 16, scope: !1503)
!1505 = !DILocation(line: 860, column: 29, scope: !1503)
!1506 = !DILocation(line: 860, column: 47, scope: !1503)
!1507 = !DILocation(line: 860, column: 6, scope: !1442)
!1508 = !DILocation(line: 861, column: 3, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 860, column: 62)
!1510 = !DILocation(line: 861, column: 13, scope: !1509)
!1511 = !DILocation(line: 861, column: 26, scope: !1509)
!1512 = !DILocation(line: 861, column: 44, scope: !1509)
!1513 = !DILocation(line: 862, column: 2, scope: !1509)
!1514 = !DILocation(line: 864, column: 21, scope: !1442)
!1515 = !DILocation(line: 864, column: 19, scope: !1442)
!1516 = !DILocation(line: 868, column: 15, scope: !1442)
!1517 = !DILocation(line: 868, column: 13, scope: !1442)
!1518 = !DILocation(line: 869, column: 9, scope: !1442)
!1519 = !DILocation(line: 870, column: 6, scope: !1442)
!1520 = !DILocation(line: 869, column: 20, scope: !1442)
!1521 = !DILocation(line: 869, column: 7, scope: !1442)
!1522 = !DILocation(line: 874, column: 16, scope: !1442)
!1523 = !DILocation(line: 874, column: 14, scope: !1442)
!1524 = !DILocation(line: 877, column: 22, scope: !1442)
!1525 = !DILocation(line: 877, column: 20, scope: !1442)
!1526 = !DILocation(line: 884, column: 2, scope: !1442)
!1527 = !DILocation(line: 884, column: 21, scope: !1442)
!1528 = !DILocation(line: 885, column: 9, scope: !1442)
!1529 = !DILocation(line: 889, column: 6, scope: !1442)
!1530 = !DILocation(line: 889, column: 19, scope: !1442)
!1531 = !DILocation(line: 889, column: 29, scope: !1442)
!1532 = !DILocation(line: 889, column: 42, scope: !1442)
!1533 = !DILocation(line: 889, column: 16, scope: !1442)
!1534 = !DILocation(line: 888, column: 15, scope: !1442)
!1535 = !DILocation(line: 893, column: 9, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 893, column: 2)
!1537 = !DILocation(line: 893, column: 7, scope: !1536)
!1538 = !DILocation(line: 893, column: 14, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 893, column: 2)
!1540 = !DILocation(line: 893, column: 18, scope: !1539)
!1541 = !DILocation(line: 893, column: 16, scope: !1539)
!1542 = !DILocation(line: 893, column: 2, scope: !1536)
!1543 = !DILocation(line: 897, column: 19, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 893, column: 42)
!1545 = !DILocation(line: 897, column: 16, scope: !1544)
!1546 = !DILocation(line: 899, column: 38, scope: !1544)
!1547 = !DILocation(line: 899, column: 48, scope: !1544)
!1548 = !DILocation(line: 899, column: 54, scope: !1544)
!1549 = !DILocation(line: 900, column: 10, scope: !1544)
!1550 = !DILocation(line: 899, column: 7, scope: !1544)
!1551 = !DILocation(line: 898, column: 10, scope: !1544)
!1552 = !DILocation(line: 901, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 901, column: 7)
!1554 = !DILocation(line: 901, column: 7, scope: !1544)
!1555 = !DILocation(line: 902, column: 4, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 901, column: 29)
!1557 = !DILocation(line: 905, column: 19, scope: !1544)
!1558 = !DILocation(line: 905, column: 29, scope: !1544)
!1559 = !DILocation(line: 905, column: 42, scope: !1544)
!1560 = !DILocation(line: 905, column: 16, scope: !1544)
!1561 = !DILocation(line: 916, column: 8, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 916, column: 7)
!1563 = !DILocation(line: 917, column: 8, scope: !1562)
!1564 = !DILocation(line: 917, column: 18, scope: !1562)
!1565 = !DILocation(line: 917, column: 31, scope: !1562)
!1566 = !DILocation(line: 916, column: 25, scope: !1562)
!1567 = !DILocation(line: 917, column: 55, scope: !1562)
!1568 = !DILocation(line: 916, column: 7, scope: !1544)
!1569 = !DILocation(line: 920, column: 8, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 918, column: 30)
!1571 = !DILocation(line: 920, column: 22, scope: !1570)
!1572 = !DILocation(line: 921, column: 8, scope: !1570)
!1573 = !DILocation(line: 921, column: 18, scope: !1570)
!1574 = !DILocation(line: 922, column: 8, scope: !1570)
!1575 = !DILocation(line: 920, column: 39, scope: !1570)
!1576 = !DILocation(line: 920, column: 18, scope: !1570)
!1577 = !DILocation(line: 919, column: 17, scope: !1570)
!1578 = !DILocation(line: 923, column: 3, scope: !1570)
!1579 = !DILocation(line: 924, column: 17, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 923, column: 10)
!1581 = !DILocation(line: 927, column: 10, scope: !1544)
!1582 = !DILocation(line: 927, column: 8, scope: !1544)
!1583 = !DILocation(line: 929, column: 7, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 929, column: 7)
!1585 = !DILocation(line: 929, column: 12, scope: !1584)
!1586 = !DILocation(line: 929, column: 9, scope: !1584)
!1587 = !DILocation(line: 929, column: 7, scope: !1544)
!1588 = !DILocation(line: 930, column: 4, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 929, column: 25)
!1590 = !DILocation(line: 935, column: 20, scope: !1544)
!1591 = !DILocation(line: 935, column: 30, scope: !1544)
!1592 = !DILocation(line: 935, column: 43, scope: !1544)
!1593 = !DILocation(line: 935, column: 17, scope: !1544)
!1594 = !DILocation(line: 936, column: 3, scope: !1544)
!1595 = !DILocation(line: 936, column: 31, scope: !1544)
!1596 = !DILocation(line: 936, column: 41, scope: !1544)
!1597 = !DILocation(line: 936, column: 39, scope: !1544)
!1598 = !DILocation(line: 937, column: 10, scope: !1544)
!1599 = !DILocation(line: 941, column: 7, scope: !1544)
!1600 = !DILocation(line: 941, column: 20, scope: !1544)
!1601 = !DILocation(line: 941, column: 30, scope: !1544)
!1602 = !DILocation(line: 941, column: 43, scope: !1544)
!1603 = !DILocation(line: 941, column: 17, scope: !1544)
!1604 = !DILocation(line: 940, column: 16, scope: !1544)
!1605 = !DILocation(line: 942, column: 2, scope: !1544)
!1606 = !DILocation(line: 893, column: 38, scope: !1539)
!1607 = !DILocation(line: 893, column: 2, scope: !1539)
!1608 = distinct !{!1608, !1542, !1609}
!1609 = !DILocation(line: 942, column: 2, scope: !1536)
!1610 = !DILocation(line: 946, column: 22, scope: !1442)
!1611 = !DILocation(line: 946, column: 32, scope: !1442)
!1612 = !DILocation(line: 946, column: 45, scope: !1442)
!1613 = !DILocation(line: 947, column: 8, scope: !1442)
!1614 = !DILocation(line: 947, column: 18, scope: !1442)
!1615 = !DILocation(line: 947, column: 31, scope: !1442)
!1616 = !DILocation(line: 946, column: 56, scope: !1442)
!1617 = !DILocation(line: 948, column: 6, scope: !1442)
!1618 = !DILocation(line: 947, column: 55, scope: !1442)
!1619 = !DILocation(line: 946, column: 19, scope: !1442)
!1620 = !DILocation(line: 949, column: 6, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 949, column: 6)
!1622 = !DILocation(line: 949, column: 6, scope: !1442)
!1623 = !DILocation(line: 950, column: 11, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 949, column: 24)
!1625 = !DILocation(line: 950, column: 8, scope: !1624)
!1626 = !DILocation(line: 951, column: 2, scope: !1624)
!1627 = !DILocation(line: 955, column: 18, scope: !1442)
!1628 = !DILocation(line: 955, column: 15, scope: !1442)
!1629 = !DILocation(line: 957, column: 37, scope: !1442)
!1630 = !DILocation(line: 957, column: 47, scope: !1442)
!1631 = !DILocation(line: 957, column: 53, scope: !1442)
!1632 = !DILocation(line: 958, column: 9, scope: !1442)
!1633 = !DILocation(line: 957, column: 6, scope: !1442)
!1634 = !DILocation(line: 956, column: 9, scope: !1442)
!1635 = !DILocation(line: 956, column: 2, scope: !1442)
!1636 = !DILabel(scope: !1442, name: "exit", file: !3, line: 960)
!1637 = !DILocation(line: 960, column: 1, scope: !1442)
!1638 = !DILocation(line: 963, column: 6, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 963, column: 6)
!1640 = !DILocation(line: 963, column: 6, scope: !1442)
!1641 = !DILocation(line: 964, column: 3, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 963, column: 18)
!1643 = !DILocation(line: 965, column: 2, scope: !1642)
!1644 = !DILocation(line: 966, column: 2, scope: !1442)
!1645 = !DILocation(line: 967, column: 1, scope: !1442)
!1646 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1647, file: !1647, line: 55, type: !1648, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1647 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!25, !26}
!1650 = !DILocalVariable(name: "flags", arg: 1, scope: !1651, file: !1652, line: 162, type: !33)
!1651 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1652, file: !1652, line: 162, type: !1653, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1652 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!1655, !33}
!1655 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1656 = !DILocation(line: 162, column: 67, scope: !1651, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 57, column: 23, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !1647, line: 57, column: 23)
!1659 = distinct !DILexicalBlock(scope: !1646, file: !1647, line: 57, column: 23)
!1660 = !DILocalVariable(name: "size", arg: 1, scope: !1646, file: !1647, line: 55, type: !26)
!1661 = !DILocation(line: 55, column: 55, scope: !1646)
!1662 = !DILocation(line: 57, column: 17, scope: !1646)
!1663 = !DILocalVariable(name: "_flags", scope: !1659, file: !1647, line: 57, type: !33)
!1664 = !DILocation(line: 57, column: 23, scope: !1659)
!1665 = !DILocalVariable(name: "__dummy", scope: !1666, file: !1647, line: 57, type: !33)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !1647, line: 57, column: 23)
!1667 = distinct !DILexicalBlock(scope: !1659, file: !1647, line: 57, column: 23)
!1668 = !DILocation(line: 57, column: 23, scope: !1666)
!1669 = !DILocalVariable(name: "__dummy2", scope: !1666, file: !1647, line: 57, type: !33)
!1670 = !DILocation(line: 57, column: 23, scope: !1667)
!1671 = !DILocalVariable(name: "__dummy", scope: !1672, file: !1647, line: 57, type: !33)
!1672 = distinct !DILexicalBlock(scope: !1658, file: !1647, line: 57, column: 23)
!1673 = !DILocation(line: 57, column: 23, scope: !1672)
!1674 = !DILocalVariable(name: "__dummy2", scope: !1672, file: !1647, line: 57, type: !33)
!1675 = !DILocation(line: 57, column: 23, scope: !1658)
!1676 = !DILocation(line: 164, column: 11, scope: !1651, inlinedAt: !1657)
!1677 = !DILocation(line: 164, column: 17, scope: !1651, inlinedAt: !1657)
!1678 = !DILocation(line: 164, column: 9, scope: !1651, inlinedAt: !1657)
!1679 = !DILocation(line: 57, column: 23, scope: !1646)
!1680 = !DILocation(line: 57, column: 9, scope: !1646)
!1681 = !DILocation(line: 57, column: 2, scope: !1646)
!1682 = distinct !DISubprogram(name: "acpi_os_free", scope: !1647, file: !1647, line: 60, type: !1683, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !25}
!1685 = !DILocalVariable(name: "memory", arg: 1, scope: !1682, file: !1647, line: 60, type: !25)
!1686 = !DILocation(line: 60, column: 39, scope: !1682)
!1687 = !DILocation(line: 62, column: 8, scope: !1682)
!1688 = !DILocation(line: 62, column: 2, scope: !1682)
!1689 = !DILocation(line: 63, column: 1, scope: !1682)
!1690 = distinct !DISubprogram(name: "acpi_ex_register_overflow", scope: !3, file: !3, line: 290, type: !1691, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!28, !48, !20}
!1693 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1690, file: !3, line: 290, type: !48)
!1694 = !DILocation(line: 290, column: 54, scope: !1690)
!1695 = !DILocalVariable(name: "value", arg: 2, scope: !1690, file: !3, line: 290, type: !20)
!1696 = !DILocation(line: 290, column: 68, scope: !1690)
!1697 = !DILocation(line: 293, column: 6, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 293, column: 6)
!1699 = !DILocation(line: 293, column: 16, scope: !1698)
!1700 = !DILocation(line: 293, column: 29, scope: !1698)
!1701 = !DILocation(line: 293, column: 40, scope: !1698)
!1702 = !DILocation(line: 293, column: 6, scope: !1690)
!1703 = !DILocation(line: 298, column: 3, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 293, column: 66)
!1705 = !DILocation(line: 301, column: 6, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 301, column: 6)
!1707 = !DILocation(line: 301, column: 27, scope: !1706)
!1708 = !DILocation(line: 301, column: 37, scope: !1706)
!1709 = !DILocation(line: 301, column: 50, scope: !1706)
!1710 = !DILocation(line: 301, column: 24, scope: !1706)
!1711 = !DILocation(line: 301, column: 12, scope: !1706)
!1712 = !DILocation(line: 301, column: 6, scope: !1690)
!1713 = !DILocation(line: 306, column: 3, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 301, column: 63)
!1715 = !DILocation(line: 311, column: 3, scope: !1714)
!1716 = !DILocation(line: 316, column: 2, scope: !1690)
!1717 = !DILocation(line: 317, column: 1, scope: !1690)
!1718 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1719, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!25, !1721, !31}
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 55, baseType: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1723, line: 72, baseType: !1724)
!1723 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1723, line: 16, baseType: !33)
!1725 = !DILocalVariable(name: "s", arg: 1, scope: !1726, file: !6, line: 445, type: !1729)
!1726 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1727, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!25, !1729, !31, !1721}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1731, line: 117, flags: DIFlagFwdDecl)
!1731 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1732 = !DILocation(line: 445, column: 72, scope: !1726, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 552, column: 10, scope: !1734, inlinedAt: !1737)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !6, line: 540, column: 34)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !6, line: 540, column: 6)
!1736 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1719, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1737 = distinct !DILocation(line: 664, column: 9, scope: !1718)
!1738 = !DILocalVariable(name: "flags", arg: 2, scope: !1726, file: !6, line: 446, type: !31)
!1739 = !DILocation(line: 446, column: 9, scope: !1726, inlinedAt: !1733)
!1740 = !DILocalVariable(name: "size", arg: 3, scope: !1726, file: !6, line: 446, type: !1721)
!1741 = !DILocation(line: 446, column: 23, scope: !1726, inlinedAt: !1733)
!1742 = !DILocalVariable(name: "ret", scope: !1726, file: !6, line: 448, type: !25)
!1743 = !DILocation(line: 448, column: 8, scope: !1726, inlinedAt: !1733)
!1744 = !DILocalVariable(name: "flags", arg: 1, scope: !1745, file: !6, line: 318, type: !31)
!1745 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1746, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!5, !31}
!1748 = !DILocation(line: 318, column: 67, scope: !1745, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 553, column: 20, scope: !1734, inlinedAt: !1737)
!1750 = !DILocalVariable(name: "size", arg: 1, scope: !1751, file: !6, line: 346, type: !1721)
!1751 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1752, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!7, !1721}
!1754 = !DILocation(line: 346, column: 58, scope: !1751, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 547, column: 11, scope: !1734, inlinedAt: !1737)
!1756 = !DILocalVariable(name: "size", arg: 1, scope: !1757, file: !6, line: 472, type: !1721)
!1757 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1758, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!25, !1721, !31, !7}
!1760 = !DILocation(line: 472, column: 28, scope: !1757, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 481, column: 9, scope: !1762, inlinedAt: !1763)
!1762 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1719, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1763 = distinct !DILocation(line: 545, column: 11, scope: !1764, inlinedAt: !1737)
!1764 = distinct !DILexicalBlock(scope: !1734, file: !6, line: 544, column: 7)
!1765 = !DILocalVariable(name: "flags", arg: 2, scope: !1757, file: !6, line: 472, type: !31)
!1766 = !DILocation(line: 472, column: 40, scope: !1757, inlinedAt: !1761)
!1767 = !DILocalVariable(name: "order", arg: 3, scope: !1757, file: !6, line: 472, type: !7)
!1768 = !DILocation(line: 472, column: 60, scope: !1757, inlinedAt: !1761)
!1769 = !DILocalVariable(name: "size", arg: 1, scope: !1762, file: !6, line: 478, type: !1721)
!1770 = !DILocation(line: 478, column: 51, scope: !1762, inlinedAt: !1763)
!1771 = !DILocalVariable(name: "flags", arg: 2, scope: !1762, file: !6, line: 478, type: !31)
!1772 = !DILocation(line: 478, column: 63, scope: !1762, inlinedAt: !1763)
!1773 = !DILocalVariable(name: "order", scope: !1762, file: !6, line: 480, type: !7)
!1774 = !DILocation(line: 480, column: 15, scope: !1762, inlinedAt: !1763)
!1775 = !DILocalVariable(name: "size", arg: 1, scope: !1736, file: !6, line: 538, type: !1721)
!1776 = !DILocation(line: 538, column: 45, scope: !1736, inlinedAt: !1737)
!1777 = !DILocalVariable(name: "flags", arg: 2, scope: !1736, file: !6, line: 538, type: !31)
!1778 = !DILocation(line: 538, column: 57, scope: !1736, inlinedAt: !1737)
!1779 = !DILocalVariable(name: "index", scope: !1734, file: !6, line: 542, type: !7)
!1780 = !DILocation(line: 542, column: 16, scope: !1734, inlinedAt: !1737)
!1781 = !DILocalVariable(name: "size", arg: 1, scope: !1718, file: !6, line: 662, type: !1721)
!1782 = !DILocation(line: 662, column: 36, scope: !1718)
!1783 = !DILocalVariable(name: "flags", arg: 2, scope: !1718, file: !6, line: 662, type: !31)
!1784 = !DILocation(line: 662, column: 48, scope: !1718)
!1785 = !DILocation(line: 664, column: 17, scope: !1718)
!1786 = !DILocation(line: 664, column: 23, scope: !1718)
!1787 = !DILocation(line: 664, column: 29, scope: !1718)
!1788 = !DILocation(line: 540, column: 27, scope: !1735, inlinedAt: !1737)
!1789 = !DILocation(line: 540, column: 6, scope: !1735, inlinedAt: !1737)
!1790 = !DILocation(line: 540, column: 6, scope: !1736, inlinedAt: !1737)
!1791 = !DILocation(line: 544, column: 7, scope: !1764, inlinedAt: !1737)
!1792 = !DILocation(line: 544, column: 12, scope: !1764, inlinedAt: !1737)
!1793 = !DILocation(line: 544, column: 7, scope: !1734, inlinedAt: !1737)
!1794 = !DILocation(line: 545, column: 25, scope: !1764, inlinedAt: !1737)
!1795 = !DILocation(line: 545, column: 31, scope: !1764, inlinedAt: !1737)
!1796 = !DILocation(line: 480, column: 33, scope: !1762, inlinedAt: !1763)
!1797 = !DILocation(line: 480, column: 23, scope: !1762, inlinedAt: !1763)
!1798 = !DILocation(line: 481, column: 29, scope: !1762, inlinedAt: !1763)
!1799 = !DILocation(line: 481, column: 35, scope: !1762, inlinedAt: !1763)
!1800 = !DILocation(line: 481, column: 42, scope: !1762, inlinedAt: !1763)
!1801 = !DILocation(line: 474, column: 23, scope: !1757, inlinedAt: !1761)
!1802 = !DILocation(line: 474, column: 29, scope: !1757, inlinedAt: !1761)
!1803 = !DILocation(line: 474, column: 36, scope: !1757, inlinedAt: !1761)
!1804 = !DILocation(line: 474, column: 9, scope: !1757, inlinedAt: !1761)
!1805 = !DILocation(line: 545, column: 4, scope: !1764, inlinedAt: !1737)
!1806 = !DILocation(line: 547, column: 25, scope: !1734, inlinedAt: !1737)
!1807 = !DILocation(line: 348, column: 7, scope: !1808, inlinedAt: !1755)
!1808 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 348, column: 6)
!1809 = !DILocation(line: 348, column: 6, scope: !1751, inlinedAt: !1755)
!1810 = !DILocation(line: 349, column: 3, scope: !1808, inlinedAt: !1755)
!1811 = !DILocation(line: 351, column: 6, scope: !1812, inlinedAt: !1755)
!1812 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 351, column: 6)
!1813 = !DILocation(line: 351, column: 11, scope: !1812, inlinedAt: !1755)
!1814 = !DILocation(line: 351, column: 6, scope: !1751, inlinedAt: !1755)
!1815 = !DILocation(line: 352, column: 3, scope: !1812, inlinedAt: !1755)
!1816 = !DILocation(line: 354, column: 32, scope: !1817, inlinedAt: !1755)
!1817 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 354, column: 6)
!1818 = !DILocation(line: 354, column: 37, scope: !1817, inlinedAt: !1755)
!1819 = !DILocation(line: 354, column: 42, scope: !1817, inlinedAt: !1755)
!1820 = !DILocation(line: 354, column: 45, scope: !1817, inlinedAt: !1755)
!1821 = !DILocation(line: 354, column: 50, scope: !1817, inlinedAt: !1755)
!1822 = !DILocation(line: 354, column: 6, scope: !1751, inlinedAt: !1755)
!1823 = !DILocation(line: 355, column: 3, scope: !1817, inlinedAt: !1755)
!1824 = !DILocation(line: 356, column: 32, scope: !1825, inlinedAt: !1755)
!1825 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 356, column: 6)
!1826 = !DILocation(line: 356, column: 37, scope: !1825, inlinedAt: !1755)
!1827 = !DILocation(line: 356, column: 43, scope: !1825, inlinedAt: !1755)
!1828 = !DILocation(line: 356, column: 46, scope: !1825, inlinedAt: !1755)
!1829 = !DILocation(line: 356, column: 51, scope: !1825, inlinedAt: !1755)
!1830 = !DILocation(line: 356, column: 6, scope: !1751, inlinedAt: !1755)
!1831 = !DILocation(line: 357, column: 3, scope: !1825, inlinedAt: !1755)
!1832 = !DILocation(line: 358, column: 6, scope: !1833, inlinedAt: !1755)
!1833 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 358, column: 6)
!1834 = !DILocation(line: 358, column: 11, scope: !1833, inlinedAt: !1755)
!1835 = !DILocation(line: 358, column: 6, scope: !1751, inlinedAt: !1755)
!1836 = !DILocation(line: 358, column: 26, scope: !1833, inlinedAt: !1755)
!1837 = !DILocation(line: 359, column: 6, scope: !1838, inlinedAt: !1755)
!1838 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 359, column: 6)
!1839 = !DILocation(line: 359, column: 11, scope: !1838, inlinedAt: !1755)
!1840 = !DILocation(line: 359, column: 6, scope: !1751, inlinedAt: !1755)
!1841 = !DILocation(line: 359, column: 26, scope: !1838, inlinedAt: !1755)
!1842 = !DILocation(line: 360, column: 6, scope: !1843, inlinedAt: !1755)
!1843 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 360, column: 6)
!1844 = !DILocation(line: 360, column: 11, scope: !1843, inlinedAt: !1755)
!1845 = !DILocation(line: 360, column: 6, scope: !1751, inlinedAt: !1755)
!1846 = !DILocation(line: 360, column: 26, scope: !1843, inlinedAt: !1755)
!1847 = !DILocation(line: 361, column: 6, scope: !1848, inlinedAt: !1755)
!1848 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 361, column: 6)
!1849 = !DILocation(line: 361, column: 11, scope: !1848, inlinedAt: !1755)
!1850 = !DILocation(line: 361, column: 6, scope: !1751, inlinedAt: !1755)
!1851 = !DILocation(line: 361, column: 26, scope: !1848, inlinedAt: !1755)
!1852 = !DILocation(line: 362, column: 6, scope: !1853, inlinedAt: !1755)
!1853 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 362, column: 6)
!1854 = !DILocation(line: 362, column: 11, scope: !1853, inlinedAt: !1755)
!1855 = !DILocation(line: 362, column: 6, scope: !1751, inlinedAt: !1755)
!1856 = !DILocation(line: 362, column: 26, scope: !1853, inlinedAt: !1755)
!1857 = !DILocation(line: 363, column: 6, scope: !1858, inlinedAt: !1755)
!1858 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 363, column: 6)
!1859 = !DILocation(line: 363, column: 11, scope: !1858, inlinedAt: !1755)
!1860 = !DILocation(line: 363, column: 6, scope: !1751, inlinedAt: !1755)
!1861 = !DILocation(line: 363, column: 26, scope: !1858, inlinedAt: !1755)
!1862 = !DILocation(line: 364, column: 6, scope: !1863, inlinedAt: !1755)
!1863 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 364, column: 6)
!1864 = !DILocation(line: 364, column: 11, scope: !1863, inlinedAt: !1755)
!1865 = !DILocation(line: 364, column: 6, scope: !1751, inlinedAt: !1755)
!1866 = !DILocation(line: 364, column: 26, scope: !1863, inlinedAt: !1755)
!1867 = !DILocation(line: 365, column: 6, scope: !1868, inlinedAt: !1755)
!1868 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 365, column: 6)
!1869 = !DILocation(line: 365, column: 11, scope: !1868, inlinedAt: !1755)
!1870 = !DILocation(line: 365, column: 6, scope: !1751, inlinedAt: !1755)
!1871 = !DILocation(line: 365, column: 26, scope: !1868, inlinedAt: !1755)
!1872 = !DILocation(line: 366, column: 6, scope: !1873, inlinedAt: !1755)
!1873 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 366, column: 6)
!1874 = !DILocation(line: 366, column: 11, scope: !1873, inlinedAt: !1755)
!1875 = !DILocation(line: 366, column: 6, scope: !1751, inlinedAt: !1755)
!1876 = !DILocation(line: 366, column: 26, scope: !1873, inlinedAt: !1755)
!1877 = !DILocation(line: 367, column: 6, scope: !1878, inlinedAt: !1755)
!1878 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 367, column: 6)
!1879 = !DILocation(line: 367, column: 11, scope: !1878, inlinedAt: !1755)
!1880 = !DILocation(line: 367, column: 6, scope: !1751, inlinedAt: !1755)
!1881 = !DILocation(line: 367, column: 26, scope: !1878, inlinedAt: !1755)
!1882 = !DILocation(line: 368, column: 6, scope: !1883, inlinedAt: !1755)
!1883 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 368, column: 6)
!1884 = !DILocation(line: 368, column: 11, scope: !1883, inlinedAt: !1755)
!1885 = !DILocation(line: 368, column: 6, scope: !1751, inlinedAt: !1755)
!1886 = !DILocation(line: 368, column: 26, scope: !1883, inlinedAt: !1755)
!1887 = !DILocation(line: 369, column: 6, scope: !1888, inlinedAt: !1755)
!1888 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 369, column: 6)
!1889 = !DILocation(line: 369, column: 11, scope: !1888, inlinedAt: !1755)
!1890 = !DILocation(line: 369, column: 6, scope: !1751, inlinedAt: !1755)
!1891 = !DILocation(line: 369, column: 26, scope: !1888, inlinedAt: !1755)
!1892 = !DILocation(line: 370, column: 6, scope: !1893, inlinedAt: !1755)
!1893 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 370, column: 6)
!1894 = !DILocation(line: 370, column: 11, scope: !1893, inlinedAt: !1755)
!1895 = !DILocation(line: 370, column: 6, scope: !1751, inlinedAt: !1755)
!1896 = !DILocation(line: 370, column: 26, scope: !1893, inlinedAt: !1755)
!1897 = !DILocation(line: 371, column: 6, scope: !1898, inlinedAt: !1755)
!1898 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 371, column: 6)
!1899 = !DILocation(line: 371, column: 11, scope: !1898, inlinedAt: !1755)
!1900 = !DILocation(line: 371, column: 6, scope: !1751, inlinedAt: !1755)
!1901 = !DILocation(line: 371, column: 26, scope: !1898, inlinedAt: !1755)
!1902 = !DILocation(line: 372, column: 6, scope: !1903, inlinedAt: !1755)
!1903 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 372, column: 6)
!1904 = !DILocation(line: 372, column: 11, scope: !1903, inlinedAt: !1755)
!1905 = !DILocation(line: 372, column: 6, scope: !1751, inlinedAt: !1755)
!1906 = !DILocation(line: 372, column: 26, scope: !1903, inlinedAt: !1755)
!1907 = !DILocation(line: 373, column: 6, scope: !1908, inlinedAt: !1755)
!1908 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 373, column: 6)
!1909 = !DILocation(line: 373, column: 11, scope: !1908, inlinedAt: !1755)
!1910 = !DILocation(line: 373, column: 6, scope: !1751, inlinedAt: !1755)
!1911 = !DILocation(line: 373, column: 26, scope: !1908, inlinedAt: !1755)
!1912 = !DILocation(line: 374, column: 6, scope: !1913, inlinedAt: !1755)
!1913 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 374, column: 6)
!1914 = !DILocation(line: 374, column: 11, scope: !1913, inlinedAt: !1755)
!1915 = !DILocation(line: 374, column: 6, scope: !1751, inlinedAt: !1755)
!1916 = !DILocation(line: 374, column: 26, scope: !1913, inlinedAt: !1755)
!1917 = !DILocation(line: 375, column: 6, scope: !1918, inlinedAt: !1755)
!1918 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 375, column: 6)
!1919 = !DILocation(line: 375, column: 11, scope: !1918, inlinedAt: !1755)
!1920 = !DILocation(line: 375, column: 6, scope: !1751, inlinedAt: !1755)
!1921 = !DILocation(line: 375, column: 27, scope: !1918, inlinedAt: !1755)
!1922 = !DILocation(line: 376, column: 6, scope: !1923, inlinedAt: !1755)
!1923 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 376, column: 6)
!1924 = !DILocation(line: 376, column: 11, scope: !1923, inlinedAt: !1755)
!1925 = !DILocation(line: 376, column: 6, scope: !1751, inlinedAt: !1755)
!1926 = !DILocation(line: 376, column: 32, scope: !1923, inlinedAt: !1755)
!1927 = !DILocation(line: 377, column: 6, scope: !1928, inlinedAt: !1755)
!1928 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 377, column: 6)
!1929 = !DILocation(line: 377, column: 11, scope: !1928, inlinedAt: !1755)
!1930 = !DILocation(line: 377, column: 6, scope: !1751, inlinedAt: !1755)
!1931 = !DILocation(line: 377, column: 32, scope: !1928, inlinedAt: !1755)
!1932 = !DILocation(line: 378, column: 6, scope: !1933, inlinedAt: !1755)
!1933 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 378, column: 6)
!1934 = !DILocation(line: 378, column: 11, scope: !1933, inlinedAt: !1755)
!1935 = !DILocation(line: 378, column: 6, scope: !1751, inlinedAt: !1755)
!1936 = !DILocation(line: 378, column: 32, scope: !1933, inlinedAt: !1755)
!1937 = !DILocation(line: 379, column: 6, scope: !1938, inlinedAt: !1755)
!1938 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 379, column: 6)
!1939 = !DILocation(line: 379, column: 11, scope: !1938, inlinedAt: !1755)
!1940 = !DILocation(line: 379, column: 6, scope: !1751, inlinedAt: !1755)
!1941 = !DILocation(line: 379, column: 33, scope: !1938, inlinedAt: !1755)
!1942 = !DILocation(line: 380, column: 6, scope: !1943, inlinedAt: !1755)
!1943 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 380, column: 6)
!1944 = !DILocation(line: 380, column: 11, scope: !1943, inlinedAt: !1755)
!1945 = !DILocation(line: 380, column: 6, scope: !1751, inlinedAt: !1755)
!1946 = !DILocation(line: 380, column: 33, scope: !1943, inlinedAt: !1755)
!1947 = !DILocation(line: 381, column: 6, scope: !1948, inlinedAt: !1755)
!1948 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 381, column: 6)
!1949 = !DILocation(line: 381, column: 11, scope: !1948, inlinedAt: !1755)
!1950 = !DILocation(line: 381, column: 6, scope: !1751, inlinedAt: !1755)
!1951 = !DILocation(line: 381, column: 33, scope: !1948, inlinedAt: !1755)
!1952 = !DILocation(line: 382, column: 2, scope: !1953, inlinedAt: !1755)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !6, line: 382, column: 2)
!1954 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 382, column: 2)
!1955 = !{i32 -2144092296, i32 -2144092267, i32 -2144092221, i32 -2144092163, i32 -2144092109, i32 -2144092055, i32 -2144092000, i32 -2144091969}
!1956 = !DILocation(line: 382, column: 2, scope: !1957, inlinedAt: !1755)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !6, line: 382, column: 2)
!1958 = distinct !DILexicalBlock(scope: !1954, file: !6, line: 382, column: 2)
!1959 = !{i32 -2144091526, i32 -2144091519, i32 -2144091465, i32 -2144091434, i32 -2144091404}
!1960 = !DILocation(line: 382, column: 2, scope: !1958, inlinedAt: !1755)
!1961 = !DILocation(line: 386, column: 1, scope: !1751, inlinedAt: !1755)
!1962 = !DILocation(line: 547, column: 9, scope: !1734, inlinedAt: !1737)
!1963 = !DILocation(line: 549, column: 8, scope: !1964, inlinedAt: !1737)
!1964 = distinct !DILexicalBlock(scope: !1734, file: !6, line: 549, column: 7)
!1965 = !DILocation(line: 549, column: 7, scope: !1734, inlinedAt: !1737)
!1966 = !DILocation(line: 550, column: 4, scope: !1964, inlinedAt: !1737)
!1967 = !DILocation(line: 553, column: 33, scope: !1734, inlinedAt: !1737)
!1968 = !DILocation(line: 325, column: 6, scope: !1969, inlinedAt: !1749)
!1969 = distinct !DILexicalBlock(scope: !1745, file: !6, line: 325, column: 6)
!1970 = !DILocation(line: 325, column: 6, scope: !1745, inlinedAt: !1749)
!1971 = !DILocation(line: 326, column: 3, scope: !1969, inlinedAt: !1749)
!1972 = !DILocation(line: 332, column: 9, scope: !1745, inlinedAt: !1749)
!1973 = !DILocation(line: 332, column: 15, scope: !1745, inlinedAt: !1749)
!1974 = !DILocation(line: 332, column: 2, scope: !1745, inlinedAt: !1749)
!1975 = !DILocation(line: 336, column: 1, scope: !1745, inlinedAt: !1749)
!1976 = !DILocation(line: 553, column: 5, scope: !1734, inlinedAt: !1737)
!1977 = !DILocation(line: 553, column: 41, scope: !1734, inlinedAt: !1737)
!1978 = !DILocation(line: 554, column: 5, scope: !1734, inlinedAt: !1737)
!1979 = !DILocation(line: 554, column: 12, scope: !1734, inlinedAt: !1737)
!1980 = !DILocation(line: 448, column: 31, scope: !1726, inlinedAt: !1733)
!1981 = !DILocation(line: 448, column: 34, scope: !1726, inlinedAt: !1733)
!1982 = !DILocation(line: 448, column: 14, scope: !1726, inlinedAt: !1733)
!1983 = !DILocation(line: 450, column: 22, scope: !1726, inlinedAt: !1733)
!1984 = !DILocation(line: 450, column: 25, scope: !1726, inlinedAt: !1733)
!1985 = !DILocation(line: 450, column: 30, scope: !1726, inlinedAt: !1733)
!1986 = !DILocation(line: 450, column: 36, scope: !1726, inlinedAt: !1733)
!1987 = !DILocation(line: 450, column: 8, scope: !1726, inlinedAt: !1733)
!1988 = !DILocation(line: 450, column: 6, scope: !1726, inlinedAt: !1733)
!1989 = !DILocation(line: 451, column: 9, scope: !1726, inlinedAt: !1733)
!1990 = !DILocation(line: 552, column: 3, scope: !1734, inlinedAt: !1737)
!1991 = !DILocation(line: 557, column: 19, scope: !1736, inlinedAt: !1737)
!1992 = !DILocation(line: 557, column: 25, scope: !1736, inlinedAt: !1737)
!1993 = !DILocation(line: 557, column: 9, scope: !1736, inlinedAt: !1737)
!1994 = !DILocation(line: 557, column: 2, scope: !1736, inlinedAt: !1737)
!1995 = !DILocation(line: 558, column: 1, scope: !1736, inlinedAt: !1737)
!1996 = !DILocation(line: 664, column: 2, scope: !1718)
!1997 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1998, file: !1998, line: 646, type: !1999, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1998 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!33}
!2001 = !DILocalVariable(name: "__ret", scope: !2002, file: !1998, line: 648, type: !33)
!2002 = distinct !DILexicalBlock(scope: !1997, file: !1998, line: 648, column: 9)
!2003 = !DILocation(line: 648, column: 9, scope: !2002)
!2004 = !DILocalVariable(name: "__edi", scope: !2002, file: !1998, line: 648, type: !33)
!2005 = !DILocalVariable(name: "__esi", scope: !2002, file: !1998, line: 648, type: !33)
!2006 = !DILocalVariable(name: "__edx", scope: !2002, file: !1998, line: 648, type: !33)
!2007 = !DILocalVariable(name: "__ecx", scope: !2002, file: !1998, line: 648, type: !33)
!2008 = !DILocalVariable(name: "__eax", scope: !2002, file: !1998, line: 648, type: !33)
!2009 = !DILocation(line: 648, column: 9, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !1998, line: 648, column: 9)
!2011 = distinct !DILexicalBlock(scope: !2002, file: !1998, line: 648, column: 9)
!2012 = !{i32 -2145765902, i32 -2145763587, i32 -2145763353, i32 -2145763302, i32 -2145763274, i32 -2145763249, i32 -2145763565, i32 -2145763552, i32 -2145763114, i32 -2145762995, i32 -2145763460, i32 -2145763433, i32 -2145763405, i32 -2145763375}
!2013 = !DILocalVariable(name: "__mask", scope: !2014, file: !1998, line: 648, type: !33)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !1998, line: 648, column: 9)
!2015 = !DILocation(line: 648, column: 9, scope: !2014)
!2016 = !DILocation(line: 648, column: 9, scope: !2011)
!2017 = !DILocation(line: 648, column: 2, scope: !1997)
!2018 = distinct !DISubprogram(name: "get_order", scope: !2019, file: !2019, line: 29, type: !1653, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!2019 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2020 = !DILocalVariable(name: "x", arg: 1, scope: !2021, file: !2022, line: 366, type: !21)
!2021 = distinct !DISubprogram(name: "fls64", scope: !2022, file: !2022, line: 366, type: !2023, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!2022 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!1655, !21}
!2025 = !DILocation(line: 366, column: 40, scope: !2021, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 46, column: 9, scope: !2018)
!2027 = !DILocalVariable(name: "bitpos", scope: !2021, file: !2022, line: 368, type: !1655)
!2028 = !DILocation(line: 368, column: 6, scope: !2021, inlinedAt: !2026)
!2029 = !DILocalVariable(name: "size", arg: 1, scope: !2018, file: !2019, line: 29, type: !33)
!2030 = !DILocation(line: 29, column: 63, scope: !2018)
!2031 = !DILocation(line: 31, column: 27, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2018, file: !2019, line: 31, column: 6)
!2033 = !DILocation(line: 31, column: 6, scope: !2032)
!2034 = !DILocation(line: 31, column: 6, scope: !2018)
!2035 = !DILocation(line: 32, column: 8, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !2019, line: 32, column: 7)
!2037 = distinct !DILexicalBlock(scope: !2032, file: !2019, line: 31, column: 34)
!2038 = !DILocation(line: 32, column: 7, scope: !2037)
!2039 = !DILocation(line: 33, column: 4, scope: !2036)
!2040 = !DILocation(line: 35, column: 7, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2037, file: !2019, line: 35, column: 7)
!2042 = !DILocation(line: 35, column: 12, scope: !2041)
!2043 = !DILocation(line: 35, column: 7, scope: !2037)
!2044 = !DILocation(line: 36, column: 4, scope: !2041)
!2045 = !DILocation(line: 38, column: 10, scope: !2037)
!2046 = !DILocation(line: 38, column: 28, scope: !2037)
!2047 = !DILocation(line: 38, column: 41, scope: !2037)
!2048 = !DILocation(line: 38, column: 3, scope: !2037)
!2049 = !DILocation(line: 41, column: 6, scope: !2018)
!2050 = !DILocation(line: 42, column: 7, scope: !2018)
!2051 = !DILocation(line: 46, column: 15, scope: !2018)
!2052 = !DILocation(line: 374, column: 2, scope: !2021, inlinedAt: !2026)
!2053 = !DILocation(line: 376, column: 14, scope: !2021, inlinedAt: !2026)
!2054 = !{i32 678906}
!2055 = !DILocation(line: 377, column: 9, scope: !2021, inlinedAt: !2026)
!2056 = !DILocation(line: 377, column: 16, scope: !2021, inlinedAt: !2026)
!2057 = !DILocation(line: 46, column: 2, scope: !2018)
!2058 = !DILocation(line: 48, column: 1, scope: !2018)
!2059 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2060, file: !2060, line: 30, type: !2061, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!2060 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!1655, !20}
!2063 = !DILocation(line: 366, column: 40, scope: !2021, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 32, column: 9, scope: !2059)
!2065 = !DILocation(line: 368, column: 6, scope: !2021, inlinedAt: !2064)
!2066 = !DILocalVariable(name: "n", arg: 1, scope: !2059, file: !2060, line: 30, type: !20)
!2067 = !DILocation(line: 30, column: 21, scope: !2059)
!2068 = !DILocation(line: 32, column: 15, scope: !2059)
!2069 = !DILocation(line: 374, column: 2, scope: !2021, inlinedAt: !2064)
!2070 = !DILocation(line: 376, column: 14, scope: !2021, inlinedAt: !2064)
!2071 = !DILocation(line: 377, column: 9, scope: !2021, inlinedAt: !2064)
!2072 = !DILocation(line: 377, column: 16, scope: !2021, inlinedAt: !2064)
!2073 = !DILocation(line: 32, column: 18, scope: !2059)
!2074 = !DILocation(line: 32, column: 2, scope: !2059)
!2075 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2076, file: !2076, line: 137, type: !2077, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!2076 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!25, !1729, !2079, !1721, !31}
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2081 = !DILocalVariable(name: "s", arg: 1, scope: !2075, file: !2076, line: 137, type: !1729)
!2082 = !DILocation(line: 137, column: 54, scope: !2075)
!2083 = !DILocalVariable(name: "object", arg: 2, scope: !2075, file: !2076, line: 137, type: !2079)
!2084 = !DILocation(line: 137, column: 69, scope: !2075)
!2085 = !DILocalVariable(name: "size", arg: 3, scope: !2075, file: !2076, line: 138, type: !1721)
!2086 = !DILocation(line: 138, column: 12, scope: !2075)
!2087 = !DILocalVariable(name: "flags", arg: 4, scope: !2075, file: !2076, line: 138, type: !31)
!2088 = !DILocation(line: 138, column: 24, scope: !2075)
!2089 = !DILocation(line: 140, column: 17, scope: !2075)
!2090 = !DILocation(line: 140, column: 2, scope: !2075)
