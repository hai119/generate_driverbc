; ModuleID = '../bcout/drivers/acpi/acpica/nsxfeval.llvm.bc'
source_filename = "drivers/acpi/acpica/nsxfeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_rw_lock = type { i8*, i8*, i32 }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.6, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.9 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i64, i64 }
%union.anon.9 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.30, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.10, [0 x i64] }
%struct.anon.10 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.11, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.11 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.13 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
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
%struct.kernel_siginfo = type { %struct.anon.18 }
%struct.anon.18 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.22 }
%struct.anon.22 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.29, i32, [12 x i8] }
%union.anon.29 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.30 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.31, %union.anon.44, %struct.atomic_t, [8 x i8] }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.44 = type { %struct.atomic_t }
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
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.acpi_buffer = type { i64, i8* }
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
%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }
%struct.acpi_get_devices_info = type { i32 (i8*, i32, i8*, i8**)*, i8*, i8* }
%struct.acpi_pnp_device_id = type { i32, i8* }
%struct.acpi_pnp_device_id_list = type { i32, i32, [0 x %struct.acpi_pnp_device_id] }

@_acpi_module_name = internal constant [9 x i8] c"nsxfeval\00", align 1, !dbg !0
@.str = private unnamed_addr constant [29 x i8] c"%s did not return any object\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Incorrect return type from %s - received [%s], requested [%s]\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Excess arguments (%u) - using only %u\00", align 1
@acpi_gbl_namespace_rw_lock = external dso_local global %struct.acpi_rw_lock, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_evaluate_object_typed(i8* %handle, i8* %pathname, %struct.acpi_object_list* %external_params, %struct.acpi_buffer* %return_buffer, i32 %return_type) #0 !dbg !859 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %pathname.addr = alloca i8*, align 8
  %external_params.addr = alloca %struct.acpi_object_list*, align 8
  %return_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %return_type.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %free_buffer_on_error = alloca i8, align 1
  %target_handle = alloca i8*, align 8
  %full_pathname = alloca i8*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !874, metadata !DIExpression()), !dbg !875
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !876, metadata !DIExpression()), !dbg !877
  store %struct.acpi_object_list* %external_params, %struct.acpi_object_list** %external_params.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list** %external_params.addr, metadata !878, metadata !DIExpression()), !dbg !879
  store %struct.acpi_buffer* %return_buffer, %struct.acpi_buffer** %return_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %return_buffer.addr, metadata !880, metadata !DIExpression()), !dbg !881
  store i32 %return_type, i32* %return_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %return_type.addr, metadata !882, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.declare(metadata i32* %status, metadata !884, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.declare(metadata i8* %free_buffer_on_error, metadata !886, metadata !DIExpression()), !dbg !887
  store i8 0, i8* %free_buffer_on_error, align 1, !dbg !887
  call void @llvm.dbg.declare(metadata i8** %target_handle, metadata !888, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.declare(metadata i8** %full_pathname, metadata !890, metadata !DIExpression()), !dbg !891
  %0 = load %struct.acpi_buffer*, %struct.acpi_buffer** %return_buffer.addr, align 8, !dbg !892
  %tobool = icmp ne %struct.acpi_buffer* %0, null, !dbg !892
  br i1 %tobool, label %if.end, label %if.then, !dbg !894

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !895
  br label %return, !dbg !895

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_buffer*, %struct.acpi_buffer** %return_buffer.addr, align 8, !dbg !897
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %1, i32 0, i32 0, !dbg !899
  %2 = load i64, i64* %length, align 8, !dbg !899
  %cmp = icmp eq i64 %2, -1, !dbg !900
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !901

if.then1:                                         ; preds = %if.end
  store i8 1, i8* %free_buffer_on_error, align 1, !dbg !902
  br label %if.end2, !dbg !904

if.end2:                                          ; preds = %if.then1, %if.end
  %3 = load i8*, i8** %handle.addr, align 8, !dbg !905
  store i8* %3, i8** %target_handle, align 8, !dbg !906
  %4 = load i8*, i8** %pathname.addr, align 8, !dbg !907
  %tobool3 = icmp ne i8* %4, null, !dbg !907
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !909

if.then4:                                         ; preds = %if.end2
  %5 = load i8*, i8** %handle.addr, align 8, !dbg !910
  %6 = load i8*, i8** %pathname.addr, align 8, !dbg !912
  %call = call i32 @acpi_get_handle(i8* %5, i8* %6, i8** %target_handle) #8, !dbg !913
  store i32 %call, i32* %status, align 4, !dbg !914
  %7 = load i32, i32* %status, align 4, !dbg !915
  %tobool5 = icmp ne i32 %7, 0, !dbg !915
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !917

if.then6:                                         ; preds = %if.then4
  %8 = load i32, i32* %status, align 4, !dbg !918
  store i32 %8, i32* %retval, align 4, !dbg !918
  br label %return, !dbg !918

if.end7:                                          ; preds = %if.then4
  br label %if.end8, !dbg !920

if.end8:                                          ; preds = %if.end7, %if.end2
  %9 = load i8*, i8** %target_handle, align 8, !dbg !921
  %10 = bitcast i8* %9 to %struct.acpi_namespace_node*, !dbg !921
  %call9 = call i8* @acpi_ns_get_external_pathname(%struct.acpi_namespace_node* %10) #8, !dbg !922
  store i8* %call9, i8** %full_pathname, align 8, !dbg !923
  %11 = load i8*, i8** %full_pathname, align 8, !dbg !924
  %tobool10 = icmp ne i8* %11, null, !dbg !924
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !926

if.then11:                                        ; preds = %if.end8
  store i32 4, i32* %retval, align 4, !dbg !927
  br label %return, !dbg !927

if.end12:                                         ; preds = %if.end8
  %12 = load i8*, i8** %target_handle, align 8, !dbg !929
  %13 = load %struct.acpi_object_list*, %struct.acpi_object_list** %external_params.addr, align 8, !dbg !930
  %14 = load %struct.acpi_buffer*, %struct.acpi_buffer** %return_buffer.addr, align 8, !dbg !931
  %call13 = call i32 @acpi_evaluate_object(i8* %12, i8* null, %struct.acpi_object_list* %13, %struct.acpi_buffer* %14) #8, !dbg !932
  store i32 %call13, i32* %status, align 4, !dbg !933
  %15 = load i32, i32* %status, align 4, !dbg !934
  %tobool14 = icmp ne i32 %15, 0, !dbg !934
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !936

if.then15:                                        ; preds = %if.end12
  br label %exit, !dbg !937

if.end16:                                         ; preds = %if.end12
  %16 = load i32, i32* %return_type.addr, align 4, !dbg !939
  %cmp17 = icmp eq i32 %16, 0, !dbg !941
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !942

if.then18:                                        ; preds = %if.end16
  br label %exit, !dbg !943

if.end19:                                         ; preds = %if.end16
  %17 = load %struct.acpi_buffer*, %struct.acpi_buffer** %return_buffer.addr, align 8, !dbg !945
  %length20 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %17, i32 0, i32 0, !dbg !947
  %18 = load i64, i64* %length20, align 8, !dbg !947
  %cmp21 = icmp eq i64 %18, 0, !dbg !948
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !949

if.then22:                                        ; preds = %if.end19
  %19 = load i8*, i8** %full_pathname, align 8, !dbg !950
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %19) #8, !dbg !950
  store i32 9, i32* %status, align 4, !dbg !952
  br label %exit, !dbg !953

if.end23:                                         ; preds = %if.end19
  %20 = load %struct.acpi_buffer*, %struct.acpi_buffer** %return_buffer.addr, align 8, !dbg !954
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %20, i32 0, i32 1, !dbg !956
  %21 = load i8*, i8** %pointer, align 8, !dbg !956
  %22 = bitcast i8* %21 to %union.acpi_object*, !dbg !957
  %type = bitcast %union.acpi_object* %22 to i32*, !dbg !958
  %23 = load i32, i32* %type, align 8, !dbg !958
  %24 = load i32, i32* %return_type.addr, align 4, !dbg !959
  %cmp24 = icmp eq i32 %23, %24, !dbg !960
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !961

if.then25:                                        ; preds = %if.end23
  br label %exit, !dbg !962

if.end26:                                         ; preds = %if.end23
  %25 = load i8*, i8** %full_pathname, align 8, !dbg !964
  %26 = load %struct.acpi_buffer*, %struct.acpi_buffer** %return_buffer.addr, align 8, !dbg !964
  %pointer27 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %26, i32 0, i32 1, !dbg !964
  %27 = load i8*, i8** %pointer27, align 8, !dbg !964
  %28 = bitcast i8* %27 to %union.acpi_object*, !dbg !964
  %type28 = bitcast %union.acpi_object* %28 to i32*, !dbg !964
  %29 = load i32, i32* %type28, align 8, !dbg !964
  %call29 = call i8* @acpi_ut_get_type_name(i32 %29) #8, !dbg !964
  %30 = load i32, i32* %return_type.addr, align 4, !dbg !964
  %call30 = call i8* @acpi_ut_get_type_name(i32 %30) #8, !dbg !964
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 114, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %call29, i8* %call30) #8, !dbg !964
  %31 = load i8, i8* %free_buffer_on_error, align 1, !dbg !965
  %tobool31 = icmp ne i8 %31, 0, !dbg !965
  br i1 %tobool31, label %if.then32, label %if.end35, !dbg !967

if.then32:                                        ; preds = %if.end26
  %32 = load %struct.acpi_buffer*, %struct.acpi_buffer** %return_buffer.addr, align 8, !dbg !968
  %pointer33 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %32, i32 0, i32 1, !dbg !970
  %33 = load i8*, i8** %pointer33, align 8, !dbg !970
  call void @acpi_os_free(i8* %33) #8, !dbg !971
  %34 = load %struct.acpi_buffer*, %struct.acpi_buffer** %return_buffer.addr, align 8, !dbg !972
  %pointer34 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %34, i32 0, i32 1, !dbg !973
  store i8* null, i8** %pointer34, align 8, !dbg !974
  br label %if.end35, !dbg !975

if.end35:                                         ; preds = %if.then32, %if.end26
  %35 = load %struct.acpi_buffer*, %struct.acpi_buffer** %return_buffer.addr, align 8, !dbg !976
  %length36 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %35, i32 0, i32 0, !dbg !977
  store i64 0, i64* %length36, align 8, !dbg !978
  store i32 8, i32* %status, align 4, !dbg !979
  br label %exit, !dbg !980

exit:                                             ; preds = %if.end35, %if.then25, %if.then22, %if.then18, %if.then15
  call void @llvm.dbg.label(metadata !981), !dbg !982
  %36 = load i8*, i8** %full_pathname, align 8, !dbg !983
  call void @acpi_os_free(i8* %36) #8, !dbg !983
  %37 = load i32, i32* %status, align 4, !dbg !984
  store i32 %37, i32* %retval, align 4, !dbg !984
  br label %return, !dbg !984

return:                                           ; preds = %exit, %if.then11, %if.then6, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !985
  ret i32 %38, !dbg !985
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_handle(i8*, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ns_get_external_pathname(%struct.acpi_namespace_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_evaluate_object(i8* %handle, i8* %pathname, %struct.acpi_object_list* %external_params, %struct.acpi_buffer* %return_buffer) #0 !dbg !986 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %pathname.addr = alloca i8*, align 8
  %external_params.addr = alloca %struct.acpi_object_list*, align 8
  %return_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_evaluate_info*, align 8
  %buffer_space_needed = alloca i64, align 8
  %i = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !989, metadata !DIExpression()), !dbg !990
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !991, metadata !DIExpression()), !dbg !992
  store %struct.acpi_object_list* %external_params, %struct.acpi_object_list** %external_params.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list** %external_params.addr, metadata !993, metadata !DIExpression()), !dbg !994
  store %struct.acpi_buffer* %return_buffer, %struct.acpi_buffer** %return_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %return_buffer.addr, metadata !995, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.declare(metadata i32* %status, metadata !997, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info, metadata !999, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.declare(metadata i64* %buffer_space_needed, metadata !1066, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1068, metadata !DIExpression()), !dbg !1069
  %call = call i8* @acpi_os_allocate_zeroed(i64 88) #8, !dbg !1070
  %0 = bitcast i8* %call to %struct.acpi_evaluate_info*, !dbg !1070
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %info, align 8, !dbg !1071
  %1 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1072
  %tobool = icmp ne %struct.acpi_evaluate_info* %1, null, !dbg !1072
  br i1 %tobool, label %if.end, label %if.then, !dbg !1074

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !1075
  br label %return, !dbg !1075

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %handle.addr, align 8, !dbg !1077
  %call1 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %2) #8, !dbg !1078
  %3 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1079
  %prefix_node = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %3, i32 0, i32 0, !dbg !1080
  store %struct.acpi_namespace_node* %call1, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1081
  %4 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1082
  %prefix_node2 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %4, i32 0, i32 0, !dbg !1084
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node2, align 8, !dbg !1084
  %tobool3 = icmp ne %struct.acpi_namespace_node* %5, null, !dbg !1082
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1085

if.then4:                                         ; preds = %if.end
  store i32 4097, i32* %status, align 4, !dbg !1086
  br label %cleanup, !dbg !1088

if.end5:                                          ; preds = %if.end
  %6 = load i8*, i8** %pathname.addr, align 8, !dbg !1089
  %tobool6 = icmp ne i8* %6, null, !dbg !1091
  br i1 %tobool6, label %land.lhs.true, label %if.else, !dbg !1092

land.lhs.true:                                    ; preds = %if.end5
  %7 = load i8*, i8** %pathname.addr, align 8, !dbg !1093
  %arrayidx = getelementptr i8, i8* %7, i64 0, !dbg !1093
  %8 = load i8, i8* %arrayidx, align 1, !dbg !1093
  %conv = sext i8 %8 to i32, !dbg !1093
  %cmp = icmp eq i32 %conv, 92, !dbg !1093
  br i1 %cmp, label %if.then8, label %if.else, !dbg !1094

if.then8:                                         ; preds = %land.lhs.true
  %9 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1095
  %prefix_node9 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %9, i32 0, i32 0, !dbg !1097
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %prefix_node9, align 8, !dbg !1098
  br label %if.end17, !dbg !1099

if.else:                                          ; preds = %land.lhs.true, %if.end5
  %10 = load i8*, i8** %handle.addr, align 8, !dbg !1100
  %tobool10 = icmp ne i8* %10, null, !dbg !1100
  br i1 %tobool10, label %if.end16, label %if.then11, !dbg !1102

if.then11:                                        ; preds = %if.else
  %11 = load i8*, i8** %pathname.addr, align 8, !dbg !1103
  %tobool12 = icmp ne i8* %11, null, !dbg !1103
  br i1 %tobool12, label %if.else14, label %if.then13, !dbg !1106

if.then13:                                        ; preds = %if.then11
  br label %if.end15, !dbg !1107

if.else14:                                        ; preds = %if.then11
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.then13
  store i32 4097, i32* %status, align 4, !dbg !1109
  br label %cleanup, !dbg !1110

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then8
  %12 = load i8*, i8** %pathname.addr, align 8, !dbg !1111
  %13 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1112
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %13, i32 0, i32 1, !dbg !1113
  store i8* %12, i8** %relative_pathname, align 8, !dbg !1114
  %14 = load %struct.acpi_object_list*, %struct.acpi_object_list** %external_params.addr, align 8, !dbg !1115
  %tobool18 = icmp ne %struct.acpi_object_list* %14, null, !dbg !1115
  br i1 %tobool18, label %land.lhs.true19, label %if.end56, !dbg !1117

land.lhs.true19:                                  ; preds = %if.end17
  %15 = load %struct.acpi_object_list*, %struct.acpi_object_list** %external_params.addr, align 8, !dbg !1118
  %count = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %15, i32 0, i32 0, !dbg !1119
  %16 = load i32, i32* %count, align 8, !dbg !1119
  %tobool20 = icmp ne i32 %16, 0, !dbg !1118
  br i1 %tobool20, label %if.then21, label %if.end56, !dbg !1120

if.then21:                                        ; preds = %land.lhs.true19
  %17 = load %struct.acpi_object_list*, %struct.acpi_object_list** %external_params.addr, align 8, !dbg !1121
  %count22 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %17, i32 0, i32 0, !dbg !1123
  %18 = load i32, i32* %count22, align 8, !dbg !1123
  %conv23 = trunc i32 %18 to i16, !dbg !1124
  %19 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1125
  %param_count = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %19, i32 0, i32 11, !dbg !1126
  store i16 %conv23, i16* %param_count, align 8, !dbg !1127
  %20 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1128
  %param_count24 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %20, i32 0, i32 11, !dbg !1130
  %21 = load i16, i16* %param_count24, align 8, !dbg !1130
  %conv25 = zext i16 %21 to i32, !dbg !1128
  %cmp26 = icmp sgt i32 %conv25, 7, !dbg !1131
  br i1 %cmp26, label %if.then28, label %if.end32, !dbg !1132

if.then28:                                        ; preds = %if.then21
  %22 = load i8*, i8** %pathname.addr, align 8, !dbg !1133
  %23 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1133
  %param_count29 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %23, i32 0, i32 11, !dbg !1133
  %24 = load i16, i16* %param_count29, align 8, !dbg !1133
  %conv30 = zext i16 %24 to i32, !dbg !1133
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 234, i8* %22, i16 zeroext 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %conv30, i32 7) #8, !dbg !1133
  %25 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1135
  %param_count31 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %25, i32 0, i32 11, !dbg !1136
  store i16 7, i16* %param_count31, align 8, !dbg !1137
  br label %if.end32, !dbg !1138

if.end32:                                         ; preds = %if.then28, %if.then21
  %26 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1139
  %param_count33 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %26, i32 0, i32 11, !dbg !1139
  %27 = load i16, i16* %param_count33, align 8, !dbg !1139
  %conv34 = zext i16 %27 to i64, !dbg !1139
  %add = add i64 %conv34, 1, !dbg !1139
  %mul = mul i64 %add, 8, !dbg !1139
  %call35 = call i8* @acpi_os_allocate_zeroed(i64 %mul) #8, !dbg !1139
  %28 = bitcast i8* %call35 to %union.acpi_operand_object**, !dbg !1139
  %29 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1140
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %29, i32 0, i32 2, !dbg !1141
  store %union.acpi_operand_object** %28, %union.acpi_operand_object*** %parameters, align 8, !dbg !1142
  %30 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1143
  %parameters36 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %30, i32 0, i32 2, !dbg !1145
  %31 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %parameters36, align 8, !dbg !1145
  %tobool37 = icmp ne %union.acpi_operand_object** %31, null, !dbg !1143
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !1146

if.then38:                                        ; preds = %if.end32
  store i32 4, i32* %status, align 4, !dbg !1147
  br label %cleanup, !dbg !1149

if.end39:                                         ; preds = %if.end32
  store i32 0, i32* %i, align 4, !dbg !1150
  br label %for.cond, !dbg !1152

for.cond:                                         ; preds = %for.inc, %if.end39
  %32 = load i32, i32* %i, align 4, !dbg !1153
  %33 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1155
  %param_count40 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %33, i32 0, i32 11, !dbg !1156
  %34 = load i16, i16* %param_count40, align 8, !dbg !1156
  %conv41 = zext i16 %34 to i32, !dbg !1155
  %cmp42 = icmp ult i32 %32, %conv41, !dbg !1157
  br i1 %cmp42, label %for.body, label %for.end, !dbg !1158

for.body:                                         ; preds = %for.cond
  %35 = load %struct.acpi_object_list*, %struct.acpi_object_list** %external_params.addr, align 8, !dbg !1159
  %pointer = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %35, i32 0, i32 1, !dbg !1161
  %36 = load %union.acpi_object*, %union.acpi_object** %pointer, align 8, !dbg !1161
  %37 = load i32, i32* %i, align 4, !dbg !1162
  %idxprom = zext i32 %37 to i64, !dbg !1159
  %arrayidx44 = getelementptr %union.acpi_object, %union.acpi_object* %36, i64 %idxprom, !dbg !1159
  %38 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1163
  %parameters45 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %38, i32 0, i32 2, !dbg !1164
  %39 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %parameters45, align 8, !dbg !1164
  %40 = load i32, i32* %i, align 4, !dbg !1165
  %idxprom46 = zext i32 %40 to i64, !dbg !1163
  %arrayidx47 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %39, i64 %idxprom46, !dbg !1163
  %call48 = call i32 @acpi_ut_copy_eobject_to_iobject(%union.acpi_object* %arrayidx44, %union.acpi_operand_object** %arrayidx47) #8, !dbg !1166
  store i32 %call48, i32* %status, align 4, !dbg !1167
  %41 = load i32, i32* %status, align 4, !dbg !1168
  %tobool49 = icmp ne i32 %41, 0, !dbg !1168
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !1170

if.then50:                                        ; preds = %for.body
  br label %cleanup, !dbg !1171

if.end51:                                         ; preds = %for.body
  br label %for.inc, !dbg !1173

for.inc:                                          ; preds = %if.end51
  %42 = load i32, i32* %i, align 4, !dbg !1174
  %inc = add i32 %42, 1, !dbg !1174
  store i32 %inc, i32* %i, align 4, !dbg !1174
  br label %for.cond, !dbg !1175, !llvm.loop !1176

for.end:                                          ; preds = %for.cond
  %43 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1178
  %parameters52 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %43, i32 0, i32 2, !dbg !1179
  %44 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %parameters52, align 8, !dbg !1179
  %45 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1180
  %param_count53 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %45, i32 0, i32 11, !dbg !1181
  %46 = load i16, i16* %param_count53, align 8, !dbg !1181
  %idxprom54 = zext i16 %46 to i64, !dbg !1178
  %arrayidx55 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %44, i64 %idxprom54, !dbg !1178
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx55, align 8, !dbg !1182
  br label %if.end56, !dbg !1183

if.end56:                                         ; preds = %for.end, %land.lhs.true19, %if.end17
  %47 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1184
  %call57 = call i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info* %47) #8, !dbg !1185
  store i32 %call57, i32* %status, align 4, !dbg !1186
  %48 = load %struct.acpi_buffer*, %struct.acpi_buffer** %return_buffer.addr, align 8, !dbg !1187
  %tobool58 = icmp ne %struct.acpi_buffer* %48, null, !dbg !1187
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !1189

if.then59:                                        ; preds = %if.end56
  br label %cleanup_return_object, !dbg !1190

if.end60:                                         ; preds = %if.end56
  %49 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1192
  %return_object = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %49, i32 0, i32 7, !dbg !1194
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1194
  %tobool61 = icmp ne %union.acpi_operand_object* %50, null, !dbg !1192
  br i1 %tobool61, label %if.end63, label %if.then62, !dbg !1195

if.then62:                                        ; preds = %if.end60
  %51 = load %struct.acpi_buffer*, %struct.acpi_buffer** %return_buffer.addr, align 8, !dbg !1196
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %51, i32 0, i32 0, !dbg !1198
  store i64 0, i64* %length, align 8, !dbg !1199
  br label %cleanup, !dbg !1200

if.end63:                                         ; preds = %if.end60
  %52 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1201
  %return_object64 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %52, i32 0, i32 7, !dbg !1201
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object64, align 8, !dbg !1201
  %54 = bitcast %union.acpi_operand_object* %53 to i8*, !dbg !1201
  %55 = bitcast i8* %54 to %union.acpi_descriptor*, !dbg !1201
  %common = bitcast %union.acpi_descriptor* %55 to %struct.acpi_common_descriptor*, !dbg !1201
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !1201
  %56 = load i8, i8* %descriptor_type, align 8, !dbg !1201
  %conv65 = zext i8 %56 to i32, !dbg !1201
  %cmp66 = icmp eq i32 %conv65, 15, !dbg !1203
  br i1 %cmp66, label %if.then68, label %if.end71, !dbg !1204

if.then68:                                        ; preds = %if.end63
  store i32 8, i32* %status, align 4, !dbg !1205
  %57 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1207
  %return_object69 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %57, i32 0, i32 7, !dbg !1208
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_object69, align 8, !dbg !1209
  %58 = load %struct.acpi_buffer*, %struct.acpi_buffer** %return_buffer.addr, align 8, !dbg !1210
  %length70 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %58, i32 0, i32 0, !dbg !1211
  store i64 0, i64* %length70, align 8, !dbg !1212
  br label %if.end71, !dbg !1213

if.end71:                                         ; preds = %if.then68, %if.end63
  %59 = load i32, i32* %status, align 4, !dbg !1214
  %tobool72 = icmp ne i32 %59, 0, !dbg !1214
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !1216

if.then73:                                        ; preds = %if.end71
  br label %cleanup_return_object, !dbg !1217

if.end74:                                         ; preds = %if.end71
  %60 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1219
  call void @acpi_ns_resolve_references(%struct.acpi_evaluate_info* %60) #8, !dbg !1220
  %61 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1221
  %return_object75 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %61, i32 0, i32 7, !dbg !1222
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object75, align 8, !dbg !1222
  %call76 = call i32 @acpi_ut_get_object_size(%union.acpi_operand_object* %62, i64* %buffer_space_needed) #8, !dbg !1223
  store i32 %call76, i32* %status, align 4, !dbg !1224
  %63 = load i32, i32* %status, align 4, !dbg !1225
  %tobool77 = icmp ne i32 %63, 0, !dbg !1225
  br i1 %tobool77, label %if.end86, label %if.then78, !dbg !1227

if.then78:                                        ; preds = %if.end74
  %64 = load %struct.acpi_buffer*, %struct.acpi_buffer** %return_buffer.addr, align 8, !dbg !1228
  %65 = load i64, i64* %buffer_space_needed, align 8, !dbg !1230
  %call79 = call i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer* %64, i64 %65) #8, !dbg !1231
  store i32 %call79, i32* %status, align 4, !dbg !1232
  %66 = load i32, i32* %status, align 4, !dbg !1233
  %tobool80 = icmp ne i32 %66, 0, !dbg !1233
  br i1 %tobool80, label %if.then81, label %if.else82, !dbg !1235

if.then81:                                        ; preds = %if.then78
  br label %if.end85, !dbg !1236

if.else82:                                        ; preds = %if.then78
  %67 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1238
  %return_object83 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %67, i32 0, i32 7, !dbg !1240
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object83, align 8, !dbg !1240
  %69 = load %struct.acpi_buffer*, %struct.acpi_buffer** %return_buffer.addr, align 8, !dbg !1241
  %call84 = call i32 @acpi_ut_copy_iobject_to_eobject(%union.acpi_operand_object* %68, %struct.acpi_buffer* %69) #8, !dbg !1242
  store i32 %call84, i32* %status, align 4, !dbg !1243
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then81
  br label %if.end86, !dbg !1244

if.end86:                                         ; preds = %if.end85, %if.end74
  br label %cleanup_return_object, !dbg !1225

cleanup_return_object:                            ; preds = %if.end86, %if.then73, %if.then59
  call void @llvm.dbg.label(metadata !1245), !dbg !1246
  %70 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1247
  %return_object87 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %70, i32 0, i32 7, !dbg !1249
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object87, align 8, !dbg !1249
  %tobool88 = icmp ne %union.acpi_operand_object* %71, null, !dbg !1247
  br i1 %tobool88, label %if.then89, label %if.end91, !dbg !1250

if.then89:                                        ; preds = %cleanup_return_object
  call void @acpi_ex_enter_interpreter() #8, !dbg !1251
  %72 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1253
  %return_object90 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %72, i32 0, i32 7, !dbg !1254
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object90, align 8, !dbg !1254
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %73) #8, !dbg !1255
  call void @acpi_ex_exit_interpreter() #8, !dbg !1256
  br label %if.end91, !dbg !1257

if.end91:                                         ; preds = %if.then89, %cleanup_return_object
  br label %cleanup, !dbg !1249

cleanup:                                          ; preds = %if.end91, %if.then62, %if.then50, %if.then38, %if.end15, %if.then4
  call void @llvm.dbg.label(metadata !1258), !dbg !1259
  %74 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1260
  %parameters92 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %74, i32 0, i32 2, !dbg !1262
  %75 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %parameters92, align 8, !dbg !1262
  %tobool93 = icmp ne %union.acpi_operand_object** %75, null, !dbg !1260
  br i1 %tobool93, label %if.then94, label %if.end96, !dbg !1263

if.then94:                                        ; preds = %cleanup
  %76 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1264
  %parameters95 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %76, i32 0, i32 2, !dbg !1266
  %77 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %parameters95, align 8, !dbg !1266
  call void @acpi_ut_delete_internal_object_list(%union.acpi_operand_object** %77) #8, !dbg !1267
  br label %if.end96, !dbg !1268

if.end96:                                         ; preds = %if.then94, %cleanup
  %78 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1269
  %79 = bitcast %struct.acpi_evaluate_info* %78 to i8*, !dbg !1269
  call void @acpi_os_free(i8* %79) #8, !dbg !1269
  %80 = load i32, i32* %status, align 4, !dbg !1270
  store i32 %80, i32* %retval, align 4, !dbg !1270
  br label %return, !dbg !1270

return:                                           ; preds = %if.end96, %if.then
  %81 = load i32, i32* %retval, align 4, !dbg !1271
  ret i32 %81, !dbg !1271
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1272 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1276, metadata !DIExpression()), !dbg !1277
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1278
  call void @kfree(i8* %0) #8, !dbg !1279
  ret void, !dbg !1280
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1281 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1284, metadata !DIExpression()), !dbg !1290
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1294, metadata !DIExpression()), !dbg !1295
  %0 = load i64, i64* %size.addr, align 8, !dbg !1296
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1297, metadata !DIExpression()), !dbg !1298
  br label %do.body, !dbg !1298

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1299, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1303, metadata !DIExpression()), !dbg !1302
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1302
  %conv = zext i1 %cmp to i32, !dbg !1302
  store i32 1, i32* %tmp, align 4, !dbg !1302
  %1 = load i32, i32* %tmp, align 4, !dbg !1302
  %call = call i64 @arch_local_save_flags() #8, !dbg !1304
  store i64 %call, i64* %_flags, align 8, !dbg !1304
  br label %do.end, !dbg !1304

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1305, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1308, metadata !DIExpression()), !dbg !1307
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1307
  %conv6 = zext i1 %cmp5 to i32, !dbg !1307
  store i32 1, i32* %tmp7, align 4, !dbg !1307
  %2 = load i32, i32* %tmp7, align 4, !dbg !1307
  %3 = load i64, i64* %_flags, align 8, !dbg !1309
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1310
  %and.i = and i64 %4, 512, !dbg !1311
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1312
  %lnot.i = xor i1 %tobool.i, true, !dbg !1312
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1312
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1309
  %5 = load i32, i32* %tmp8, align 4, !dbg !1309
  store i32 %5, i32* %tmp1, align 4, !dbg !1304
  %6 = load i32, i32* %tmp1, align 4, !dbg !1298
  %tobool = icmp ne i32 %6, 0, !dbg !1313
  %7 = zext i1 %tobool to i64, !dbg !1313
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1313
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1314
  ret i8* %call10, !dbg !1315
}

; Function Attrs: noredzone
declare dso_local %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_predefined_warning(i8*, i32, i8*, i16 zeroext, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_copy_eobject_to_iobject(%union.acpi_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ns_resolve_references(%struct.acpi_evaluate_info* %info) #0 !dbg !1316 {
entry:
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1319, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1321, metadata !DIExpression()), !dbg !1322
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1322
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1323, metadata !DIExpression()), !dbg !1324
  %0 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1325
  %return_object = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %0, i32 0, i32 7, !dbg !1327
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1327
  %common = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_common*, !dbg !1328
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1329
  %2 = load i8, i8* %type, align 1, !dbg !1329
  %conv = zext i8 %2 to i32, !dbg !1330
  %cmp = icmp ne i32 %conv, 20, !dbg !1331
  br i1 %cmp, label %if.then, label %if.end, !dbg !1332

if.then:                                          ; preds = %entry
  br label %return, !dbg !1333

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1335
  %return_object2 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %3, i32 0, i32 7, !dbg !1336
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object2, align 8, !dbg !1336
  %reference = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_reference*, !dbg !1337
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1338
  %5 = load i8, i8* %class, align 1, !dbg !1338
  %conv3 = zext i8 %5 to i32, !dbg !1335
  switch i32 %conv3, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb6
  ], !dbg !1339

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1340
  %return_object4 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %6, i32 0, i32 7, !dbg !1342
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object4, align 8, !dbg !1342
  %reference5 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_reference*, !dbg !1343
  %where = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference5, i32 0, i32 10, !dbg !1344
  %8 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %where, align 8, !dbg !1344
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8, !dbg !1345
  store %union.acpi_operand_object* %9, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1346
  br label %sw.epilog, !dbg !1347

sw.bb6:                                           ; preds = %if.end
  %10 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1348
  %return_object7 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %10, i32 0, i32 7, !dbg !1349
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object7, align 8, !dbg !1349
  %reference8 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_reference*, !dbg !1350
  %object = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference8, i32 0, i32 8, !dbg !1351
  %12 = load i8*, i8** %object, align 8, !dbg !1351
  %13 = bitcast i8* %12 to %struct.acpi_namespace_node*, !dbg !1348
  store %struct.acpi_namespace_node* %13, %struct.acpi_namespace_node** %node, align 8, !dbg !1352
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1353
  %tobool = icmp ne %struct.acpi_namespace_node* %14, null, !dbg !1353
  br i1 %tobool, label %if.then9, label %if.end11, !dbg !1355

if.then9:                                         ; preds = %sw.bb6
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1356
  %object10 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %15, i32 0, i32 0, !dbg !1358
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object10, align 8, !dbg !1358
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1359
  br label %if.end11, !dbg !1360

if.end11:                                         ; preds = %if.then9, %sw.bb6
  br label %sw.epilog, !dbg !1361

sw.default:                                       ; preds = %if.end
  br label %return, !dbg !1362

sw.epilog:                                        ; preds = %if.end11, %sw.bb
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1363
  %tobool12 = icmp ne %union.acpi_operand_object* %17, null, !dbg !1363
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !1365

if.then13:                                        ; preds = %sw.epilog
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1366
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %18) #8, !dbg !1368
  %19 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1369
  %return_object14 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %19, i32 0, i32 7, !dbg !1370
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object14, align 8, !dbg !1370
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %20) #8, !dbg !1371
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1372
  %22 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1373
  %return_object15 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %22, i32 0, i32 7, !dbg !1374
  store %union.acpi_operand_object* %21, %union.acpi_operand_object** %return_object15, align 8, !dbg !1375
  br label %if.end16, !dbg !1376

if.end16:                                         ; preds = %if.then13, %sw.epilog
  br label %return, !dbg !1377

return:                                           ; preds = %if.end16, %sw.default, %if.then
  ret void, !dbg !1378
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_get_object_size(%union.acpi_operand_object*, i64*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_copy_iobject_to_eobject(%union.acpi_operand_object*, %struct.acpi_buffer*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_enter_interpreter() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_exit_interpreter() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_internal_object_list(%union.acpi_operand_object**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_walk_namespace(i32 %type, i8* %start_object, i32 %max_depth, i32 (i8*, i32, i8*, i8**)* %descending_callback, i32 (i8*, i32, i8*, i8**)* %ascending_callback, i8* %context, i8** %return_value) #0 !dbg !1379 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %start_object.addr = alloca i8*, align 8
  %max_depth.addr = alloca i32, align 4
  %descending_callback.addr = alloca i32 (i8*, i32, i8*, i8**)*, align 8
  %ascending_callback.addr = alloca i32 (i8*, i32, i8*, i8**)*, align 8
  %context.addr = alloca i8*, align 8
  %return_value.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !1383, metadata !DIExpression()), !dbg !1384
  store i8* %start_object, i8** %start_object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %start_object.addr, metadata !1385, metadata !DIExpression()), !dbg !1386
  store i32 %max_depth, i32* %max_depth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_depth.addr, metadata !1387, metadata !DIExpression()), !dbg !1388
  store i32 (i8*, i32, i8*, i8**)* %descending_callback, i32 (i8*, i32, i8*, i8**)** %descending_callback.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i8*, i8**)** %descending_callback.addr, metadata !1389, metadata !DIExpression()), !dbg !1390
  store i32 (i8*, i32, i8*, i8**)* %ascending_callback, i32 (i8*, i32, i8*, i8**)** %ascending_callback.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i8*, i8**)** %ascending_callback.addr, metadata !1391, metadata !DIExpression()), !dbg !1392
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1393, metadata !DIExpression()), !dbg !1394
  store i8** %return_value, i8*** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %return_value.addr, metadata !1395, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1397, metadata !DIExpression()), !dbg !1398
  %0 = load i32, i32* %type.addr, align 4, !dbg !1399
  %cmp = icmp ugt i32 %0, 29, !dbg !1401
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1402

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %max_depth.addr, align 4, !dbg !1403
  %tobool = icmp ne i32 %1, 0, !dbg !1403
  br i1 %tobool, label %lor.lhs.false1, label %if.then, !dbg !1404

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %descending_callback.addr, align 8, !dbg !1405
  %tobool2 = icmp ne i32 (i8*, i32, i8*, i8**)* %2, null, !dbg !1405
  br i1 %tobool2, label %if.end, label %land.lhs.true, !dbg !1406

land.lhs.true:                                    ; preds = %lor.lhs.false1
  %3 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %ascending_callback.addr, align 8, !dbg !1407
  %tobool3 = icmp ne i32 (i8*, i32, i8*, i8**)* %3, null, !dbg !1407
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1408

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1409
  br label %return, !dbg !1409

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false1
  %call = call i32 @acpi_ut_acquire_read_lock(%struct.acpi_rw_lock* @acpi_gbl_namespace_rw_lock) #8, !dbg !1411
  store i32 %call, i32* %status, align 4, !dbg !1412
  %4 = load i32, i32* %status, align 4, !dbg !1413
  %tobool4 = icmp ne i32 %4, 0, !dbg !1413
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1415

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* %status, align 4, !dbg !1416
  store i32 %5, i32* %retval, align 4, !dbg !1416
  br label %return, !dbg !1416

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !1418
  store i32 %call7, i32* %status, align 4, !dbg !1419
  %6 = load i32, i32* %status, align 4, !dbg !1420
  %tobool8 = icmp ne i32 %6, 0, !dbg !1420
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1422

if.then9:                                         ; preds = %if.end6
  br label %unlock_and_exit, !dbg !1423

if.end10:                                         ; preds = %if.end6
  %7 = load i8*, i8** %start_object.addr, align 8, !dbg !1425
  %call11 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %7) #8, !dbg !1427
  %tobool12 = icmp ne %struct.acpi_namespace_node* %call11, null, !dbg !1427
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1428

if.then13:                                        ; preds = %if.end10
  store i32 4097, i32* %status, align 4, !dbg !1429
  br label %unlock_and_exit2, !dbg !1431

if.end14:                                         ; preds = %if.end10
  %8 = load i32, i32* %type.addr, align 4, !dbg !1432
  %9 = load i8*, i8** %start_object.addr, align 8, !dbg !1433
  %10 = load i32, i32* %max_depth.addr, align 4, !dbg !1434
  %11 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %descending_callback.addr, align 8, !dbg !1435
  %12 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %ascending_callback.addr, align 8, !dbg !1436
  %13 = load i8*, i8** %context.addr, align 8, !dbg !1437
  %14 = load i8**, i8*** %return_value.addr, align 8, !dbg !1438
  %call15 = call i32 @acpi_ns_walk_namespace(i32 %8, i8* %9, i32 %10, i32 1, i32 (i8*, i32, i8*, i8**)* %11, i32 (i8*, i32, i8*, i8**)* %12, i8* %13, i8** %14) #8, !dbg !1439
  store i32 %call15, i32* %status, align 4, !dbg !1440
  br label %unlock_and_exit2, !dbg !1441

unlock_and_exit2:                                 ; preds = %if.end14, %if.then13
  call void @llvm.dbg.label(metadata !1442), !dbg !1443
  %call16 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !1444
  br label %unlock_and_exit, !dbg !1445

unlock_and_exit:                                  ; preds = %unlock_and_exit2, %if.then9
  call void @llvm.dbg.label(metadata !1446), !dbg !1447
  %call17 = call i32 @acpi_ut_release_read_lock(%struct.acpi_rw_lock* @acpi_gbl_namespace_rw_lock) #8, !dbg !1448
  %15 = load i32, i32* %status, align 4, !dbg !1449
  store i32 %15, i32* %retval, align 4, !dbg !1449
  br label %return, !dbg !1449

return:                                           ; preds = %unlock_and_exit, %if.then5, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !1450
  ret i32 %16, !dbg !1450
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_read_lock(%struct.acpi_rw_lock*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_walk_namespace(i32, i8*, i32, i32, i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_read_lock(%struct.acpi_rw_lock*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_devices(i8* %HID, i32 (i8*, i32, i8*, i8**)* %user_function, i8* %context, i8** %return_value) #0 !dbg !1451 {
entry:
  %retval = alloca i32, align 4
  %HID.addr = alloca i8*, align 8
  %user_function.addr = alloca i32 (i8*, i32, i8*, i8**)*, align 8
  %context.addr = alloca i8*, align 8
  %return_value.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_get_devices_info, align 8
  store i8* %HID, i8** %HID.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %HID.addr, metadata !1454, metadata !DIExpression()), !dbg !1455
  store i32 (i8*, i32, i8*, i8**)* %user_function, i32 (i8*, i32, i8*, i8**)** %user_function.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i8*, i8**)** %user_function.addr, metadata !1456, metadata !DIExpression()), !dbg !1457
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1458, metadata !DIExpression()), !dbg !1459
  store i8** %return_value, i8*** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %return_value.addr, metadata !1460, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1462, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.declare(metadata %struct.acpi_get_devices_info* %info, metadata !1464, metadata !DIExpression()), !dbg !1470
  %0 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %user_function.addr, align 8, !dbg !1471
  %tobool = icmp ne i32 (i8*, i32, i8*, i8**)* %0, null, !dbg !1471
  br i1 %tobool, label %if.end, label %if.then, !dbg !1473

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1474
  br label %return, !dbg !1474

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %HID.addr, align 8, !dbg !1476
  %hid = getelementptr inbounds %struct.acpi_get_devices_info, %struct.acpi_get_devices_info* %info, i32 0, i32 2, !dbg !1477
  store i8* %1, i8** %hid, align 8, !dbg !1478
  %2 = load i8*, i8** %context.addr, align 8, !dbg !1479
  %context1 = getelementptr inbounds %struct.acpi_get_devices_info, %struct.acpi_get_devices_info* %info, i32 0, i32 1, !dbg !1480
  store i8* %2, i8** %context1, align 8, !dbg !1481
  %3 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %user_function.addr, align 8, !dbg !1482
  %user_function2 = getelementptr inbounds %struct.acpi_get_devices_info, %struct.acpi_get_devices_info* %info, i32 0, i32 0, !dbg !1483
  store i32 (i8*, i32, i8*, i8**)* %3, i32 (i8*, i32, i8*, i8**)** %user_function2, align 8, !dbg !1484
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !1485
  store i32 %call, i32* %status, align 4, !dbg !1486
  %4 = load i32, i32* %status, align 4, !dbg !1487
  %tobool3 = icmp ne i32 %4, 0, !dbg !1487
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1489

if.then4:                                         ; preds = %if.end
  %5 = load i32, i32* %status, align 4, !dbg !1490
  store i32 %5, i32* %retval, align 4, !dbg !1490
  br label %return, !dbg !1490

if.end5:                                          ; preds = %if.end
  %6 = bitcast %struct.acpi_get_devices_info* %info to i8*, !dbg !1492
  %7 = load i8**, i8*** %return_value.addr, align 8, !dbg !1493
  %call6 = call i32 @acpi_ns_walk_namespace(i32 6, i8* inttoptr (i64 -1 to i8*), i32 -1, i32 1, i32 (i8*, i32, i8*, i8**)* @acpi_ns_get_device_callback, i32 (i8*, i32, i8*, i8**)* null, i8* %6, i8** %7) #8, !dbg !1494
  store i32 %call6, i32* %status, align 4, !dbg !1495
  %call7 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !1496
  %8 = load i32, i32* %status, align 4, !dbg !1497
  store i32 %8, i32* %retval, align 4, !dbg !1497
  br label %return, !dbg !1497

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !1498
  ret i32 %9, !dbg !1498
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_get_device_callback(i8* %obj_handle, i32 %nesting_level, i8* %context, i8** %return_value) #0 !dbg !1499 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca i8*, align 8
  %nesting_level.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %return_value.addr = alloca i8**, align 8
  %info = alloca %struct.acpi_get_devices_info*, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  %flags = alloca i32, align 4
  %hid = alloca %struct.acpi_pnp_device_id*, align 8
  %cid = alloca %struct.acpi_pnp_device_id_list*, align 8
  %i = alloca i32, align 4
  %found = alloca i8, align 1
  %no_match = alloca i32, align 4
  store i8* %obj_handle, i8** %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj_handle.addr, metadata !1500, metadata !DIExpression()), !dbg !1501
  store i32 %nesting_level, i32* %nesting_level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nesting_level.addr, metadata !1502, metadata !DIExpression()), !dbg !1503
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1504, metadata !DIExpression()), !dbg !1505
  store i8** %return_value, i8*** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %return_value.addr, metadata !1506, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.declare(metadata %struct.acpi_get_devices_info** %info, metadata !1508, metadata !DIExpression()), !dbg !1510
  %0 = load i8*, i8** %context.addr, align 8, !dbg !1511
  %1 = bitcast i8* %0 to %struct.acpi_get_devices_info*, !dbg !1511
  store %struct.acpi_get_devices_info* %1, %struct.acpi_get_devices_info** %info, align 8, !dbg !1510
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1512, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1514, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !1516, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id** %hid, metadata !1518, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id_list** %cid, metadata !1525, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1536, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.declare(metadata i8* %found, metadata !1538, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.declare(metadata i32* %no_match, metadata !1540, metadata !DIExpression()), !dbg !1541
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !1542
  store i32 %call, i32* %status, align 4, !dbg !1543
  %2 = load i32, i32* %status, align 4, !dbg !1544
  %tobool = icmp ne i32 %2, 0, !dbg !1544
  br i1 %tobool, label %if.then, label %if.end, !dbg !1546

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !1547
  store i32 %3, i32* %retval, align 4, !dbg !1549
  br label %return, !dbg !1549

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1550
  %call1 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %4) #8, !dbg !1551
  store %struct.acpi_namespace_node* %call1, %struct.acpi_namespace_node** %node, align 8, !dbg !1552
  %call2 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !1553
  store i32 %call2, i32* %status, align 4, !dbg !1554
  %5 = load i32, i32* %status, align 4, !dbg !1555
  %tobool3 = icmp ne i32 %5, 0, !dbg !1555
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1557

if.then4:                                         ; preds = %if.end
  %6 = load i32, i32* %status, align 4, !dbg !1558
  store i32 %6, i32* %retval, align 4, !dbg !1560
  br label %return, !dbg !1560

if.end5:                                          ; preds = %if.end
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1561
  %tobool6 = icmp ne %struct.acpi_namespace_node* %7, null, !dbg !1561
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1563

if.then7:                                         ; preds = %if.end5
  store i32 4097, i32* %retval, align 4, !dbg !1564
  br label %return, !dbg !1564

if.end8:                                          ; preds = %if.end5
  %8 = load %struct.acpi_get_devices_info*, %struct.acpi_get_devices_info** %info, align 8, !dbg !1566
  %hid9 = getelementptr inbounds %struct.acpi_get_devices_info, %struct.acpi_get_devices_info* %8, i32 0, i32 2, !dbg !1568
  %9 = load i8*, i8** %hid9, align 8, !dbg !1568
  %cmp = icmp ne i8* %9, null, !dbg !1569
  br i1 %cmp, label %if.then10, label %if.end41, !dbg !1570

if.then10:                                        ; preds = %if.end8
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1571
  %call11 = call i32 @acpi_ut_execute_HID(%struct.acpi_namespace_node* %10, %struct.acpi_pnp_device_id** %hid) #8, !dbg !1573
  store i32 %call11, i32* %status, align 4, !dbg !1574
  %11 = load i32, i32* %status, align 4, !dbg !1575
  %cmp12 = icmp eq i32 %11, 5, !dbg !1577
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !1578

if.then13:                                        ; preds = %if.then10
  store i32 0, i32* %retval, align 4, !dbg !1579
  br label %return, !dbg !1579

if.else:                                          ; preds = %if.then10
  %12 = load i32, i32* %status, align 4, !dbg !1581
  %tobool14 = icmp ne i32 %12, 0, !dbg !1581
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1583

if.then15:                                        ; preds = %if.else
  store i32 16390, i32* %retval, align 4, !dbg !1584
  br label %return, !dbg !1584

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  %13 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !1586
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %13, i32 0, i32 1, !dbg !1587
  %14 = load i8*, i8** %string, align 8, !dbg !1587
  %15 = load %struct.acpi_get_devices_info*, %struct.acpi_get_devices_info** %info, align 8, !dbg !1588
  %hid18 = getelementptr inbounds %struct.acpi_get_devices_info, %struct.acpi_get_devices_info* %15, i32 0, i32 2, !dbg !1589
  %16 = load i8*, i8** %hid18, align 8, !dbg !1589
  %call19 = call i32 @strcmp(i8* %14, i8* %16) #8, !dbg !1590
  store i32 %call19, i32* %no_match, align 4, !dbg !1591
  %17 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !1592
  %18 = bitcast %struct.acpi_pnp_device_id* %17 to i8*, !dbg !1592
  call void @acpi_os_free(i8* %18) #8, !dbg !1592
  %19 = load i32, i32* %no_match, align 4, !dbg !1593
  %tobool20 = icmp ne i32 %19, 0, !dbg !1593
  br i1 %tobool20, label %if.then21, label %if.end40, !dbg !1595

if.then21:                                        ; preds = %if.end17
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1596
  %call22 = call i32 @acpi_ut_execute_CID(%struct.acpi_namespace_node* %20, %struct.acpi_pnp_device_id_list** %cid) #8, !dbg !1598
  store i32 %call22, i32* %status, align 4, !dbg !1599
  %21 = load i32, i32* %status, align 4, !dbg !1600
  %cmp23 = icmp eq i32 %21, 5, !dbg !1602
  br i1 %cmp23, label %if.then24, label %if.else25, !dbg !1603

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %retval, align 4, !dbg !1604
  br label %return, !dbg !1604

if.else25:                                        ; preds = %if.then21
  %22 = load i32, i32* %status, align 4, !dbg !1606
  %tobool26 = icmp ne i32 %22, 0, !dbg !1606
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !1608

if.then27:                                        ; preds = %if.else25
  store i32 16390, i32* %retval, align 4, !dbg !1609
  br label %return, !dbg !1609

if.end28:                                         ; preds = %if.else25
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  store i8 0, i8* %found, align 1, !dbg !1611
  store i32 0, i32* %i, align 4, !dbg !1612
  br label %for.cond, !dbg !1614

for.cond:                                         ; preds = %for.inc, %if.end29
  %23 = load i32, i32* %i, align 4, !dbg !1615
  %24 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid, align 8, !dbg !1617
  %count = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %24, i32 0, i32 0, !dbg !1618
  %25 = load i32, i32* %count, align 8, !dbg !1618
  %cmp30 = icmp ult i32 %23, %25, !dbg !1619
  br i1 %cmp30, label %for.body, label %for.end, !dbg !1620

for.body:                                         ; preds = %for.cond
  %26 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid, align 8, !dbg !1621
  %ids = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %26, i32 0, i32 2, !dbg !1624
  %27 = load i32, i32* %i, align 4, !dbg !1625
  %idxprom = zext i32 %27 to i64, !dbg !1621
  %arrayidx = getelementptr [0 x %struct.acpi_pnp_device_id], [0 x %struct.acpi_pnp_device_id]* %ids, i64 0, i64 %idxprom, !dbg !1621
  %string31 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %arrayidx, i32 0, i32 1, !dbg !1626
  %28 = load i8*, i8** %string31, align 8, !dbg !1626
  %29 = load %struct.acpi_get_devices_info*, %struct.acpi_get_devices_info** %info, align 8, !dbg !1627
  %hid32 = getelementptr inbounds %struct.acpi_get_devices_info, %struct.acpi_get_devices_info* %29, i32 0, i32 2, !dbg !1628
  %30 = load i8*, i8** %hid32, align 8, !dbg !1628
  %call33 = call i32 @strcmp(i8* %28, i8* %30) #8, !dbg !1629
  %cmp34 = icmp eq i32 %call33, 0, !dbg !1630
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !1631

if.then35:                                        ; preds = %for.body
  store i8 1, i8* %found, align 1, !dbg !1632
  br label %for.end, !dbg !1634

if.end36:                                         ; preds = %for.body
  br label %for.inc, !dbg !1635

for.inc:                                          ; preds = %if.end36
  %31 = load i32, i32* %i, align 4, !dbg !1636
  %inc = add i32 %31, 1, !dbg !1636
  store i32 %inc, i32* %i, align 4, !dbg !1636
  br label %for.cond, !dbg !1637, !llvm.loop !1638

for.end:                                          ; preds = %if.then35, %for.cond
  %32 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid, align 8, !dbg !1640
  %33 = bitcast %struct.acpi_pnp_device_id_list* %32 to i8*, !dbg !1640
  call void @acpi_os_free(i8* %33) #8, !dbg !1640
  %34 = load i8, i8* %found, align 1, !dbg !1641
  %tobool37 = icmp ne i8 %34, 0, !dbg !1641
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !1643

if.then38:                                        ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !1644
  br label %return, !dbg !1644

if.end39:                                         ; preds = %for.end
  br label %if.end40, !dbg !1646

if.end40:                                         ; preds = %if.end39, %if.end17
  br label %if.end41, !dbg !1647

if.end41:                                         ; preds = %if.end40, %if.end8
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1648
  %call42 = call i32 @acpi_ut_execute_STA(%struct.acpi_namespace_node* %35, i32* %flags) #8, !dbg !1649
  store i32 %call42, i32* %status, align 4, !dbg !1650
  %36 = load i32, i32* %status, align 4, !dbg !1651
  %tobool43 = icmp ne i32 %36, 0, !dbg !1651
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !1653

if.then44:                                        ; preds = %if.end41
  store i32 16390, i32* %retval, align 4, !dbg !1654
  br label %return, !dbg !1654

if.end45:                                         ; preds = %if.end41
  %37 = load i32, i32* %flags, align 4, !dbg !1656
  %and = and i32 %37, 1, !dbg !1658
  %tobool46 = icmp ne i32 %and, 0, !dbg !1658
  br i1 %tobool46, label %if.end50, label %land.lhs.true, !dbg !1659

land.lhs.true:                                    ; preds = %if.end45
  %38 = load i32, i32* %flags, align 4, !dbg !1660
  %and47 = and i32 %38, 8, !dbg !1661
  %tobool48 = icmp ne i32 %and47, 0, !dbg !1661
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !1662

if.then49:                                        ; preds = %land.lhs.true
  store i32 16390, i32* %retval, align 4, !dbg !1663
  br label %return, !dbg !1663

if.end50:                                         ; preds = %land.lhs.true, %if.end45
  %39 = load %struct.acpi_get_devices_info*, %struct.acpi_get_devices_info** %info, align 8, !dbg !1665
  %user_function = getelementptr inbounds %struct.acpi_get_devices_info, %struct.acpi_get_devices_info* %39, i32 0, i32 0, !dbg !1666
  %40 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %user_function, align 8, !dbg !1666
  %41 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1667
  %42 = load i32, i32* %nesting_level.addr, align 4, !dbg !1668
  %43 = load %struct.acpi_get_devices_info*, %struct.acpi_get_devices_info** %info, align 8, !dbg !1669
  %context51 = getelementptr inbounds %struct.acpi_get_devices_info, %struct.acpi_get_devices_info* %43, i32 0, i32 1, !dbg !1670
  %44 = load i8*, i8** %context51, align 8, !dbg !1670
  %45 = load i8**, i8*** %return_value.addr, align 8, !dbg !1671
  %call52 = call i32 %40(i8* %41, i32 %42, i8* %44, i8** %45) #8, !dbg !1665
  store i32 %call52, i32* %status, align 4, !dbg !1672
  %46 = load i32, i32* %status, align 4, !dbg !1673
  store i32 %46, i32* %retval, align 4, !dbg !1674
  br label %return, !dbg !1674

return:                                           ; preds = %if.end50, %if.then49, %if.then44, %if.then38, %if.then27, %if.then24, %if.then15, %if.then13, %if.then7, %if.then4, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !1675
  ret i32 %47, !dbg !1675
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_attach_data(i8* %obj_handle, void (i8*, i8*)* %handler, i8* %data) #0 !dbg !1676 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca i8*, align 8
  %handler.addr = alloca void (i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store i8* %obj_handle, i8** %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj_handle.addr, metadata !1679, metadata !DIExpression()), !dbg !1680
  store void (i8*, i8*)* %handler, void (i8*, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %handler.addr, metadata !1681, metadata !DIExpression()), !dbg !1682
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !1683, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1685, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1687, metadata !DIExpression()), !dbg !1688
  %0 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1689
  %tobool = icmp ne i8* %0, null, !dbg !1689
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1691

lor.lhs.false:                                    ; preds = %entry
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %handler.addr, align 8, !dbg !1692
  %tobool1 = icmp ne void (i8*, i8*)* %1, null, !dbg !1692
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1693

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %data.addr, align 8, !dbg !1694
  %tobool3 = icmp ne i8* %2, null, !dbg !1694
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1695

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1696
  br label %return, !dbg !1696

if.end:                                           ; preds = %lor.lhs.false2
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !1698
  store i32 %call, i32* %status, align 4, !dbg !1699
  %3 = load i32, i32* %status, align 4, !dbg !1700
  %tobool4 = icmp ne i32 %3, 0, !dbg !1700
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1702

if.then5:                                         ; preds = %if.end
  %4 = load i32, i32* %status, align 4, !dbg !1703
  store i32 %4, i32* %retval, align 4, !dbg !1705
  br label %return, !dbg !1705

if.end6:                                          ; preds = %if.end
  %5 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1706
  %call7 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %5) #8, !dbg !1707
  store %struct.acpi_namespace_node* %call7, %struct.acpi_namespace_node** %node, align 8, !dbg !1708
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1709
  %tobool8 = icmp ne %struct.acpi_namespace_node* %6, null, !dbg !1709
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1711

if.then9:                                         ; preds = %if.end6
  store i32 4097, i32* %status, align 4, !dbg !1712
  br label %unlock_and_exit, !dbg !1714

if.end10:                                         ; preds = %if.end6
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1715
  %8 = load void (i8*, i8*)*, void (i8*, i8*)** %handler.addr, align 8, !dbg !1716
  %9 = load i8*, i8** %data.addr, align 8, !dbg !1717
  %call11 = call i32 @acpi_ns_attach_data(%struct.acpi_namespace_node* %7, void (i8*, i8*)* %8, i8* %9) #8, !dbg !1718
  store i32 %call11, i32* %status, align 4, !dbg !1719
  br label %unlock_and_exit, !dbg !1720

unlock_and_exit:                                  ; preds = %if.end10, %if.then9
  call void @llvm.dbg.label(metadata !1721), !dbg !1722
  %call12 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !1723
  %10 = load i32, i32* %status, align 4, !dbg !1724
  store i32 %10, i32* %retval, align 4, !dbg !1725
  br label %return, !dbg !1725

return:                                           ; preds = %unlock_and_exit, %if.then5, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !1726
  ret i32 %11, !dbg !1726
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_attach_data(%struct.acpi_namespace_node*, void (i8*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_detach_data(i8* %obj_handle, void (i8*, i8*)* %handler) #0 !dbg !1727 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca i8*, align 8
  %handler.addr = alloca void (i8*, i8*)*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store i8* %obj_handle, i8** %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj_handle.addr, metadata !1730, metadata !DIExpression()), !dbg !1731
  store void (i8*, i8*)* %handler, void (i8*, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %handler.addr, metadata !1732, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1734, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1736, metadata !DIExpression()), !dbg !1737
  %0 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1738
  %tobool = icmp ne i8* %0, null, !dbg !1738
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1740

lor.lhs.false:                                    ; preds = %entry
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %handler.addr, align 8, !dbg !1741
  %tobool1 = icmp ne void (i8*, i8*)* %1, null, !dbg !1741
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1742

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1743
  br label %return, !dbg !1743

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !1745
  store i32 %call, i32* %status, align 4, !dbg !1746
  %2 = load i32, i32* %status, align 4, !dbg !1747
  %tobool2 = icmp ne i32 %2, 0, !dbg !1747
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1749

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %status, align 4, !dbg !1750
  store i32 %3, i32* %retval, align 4, !dbg !1752
  br label %return, !dbg !1752

if.end4:                                          ; preds = %if.end
  %4 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1753
  %call5 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %4) #8, !dbg !1754
  store %struct.acpi_namespace_node* %call5, %struct.acpi_namespace_node** %node, align 8, !dbg !1755
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1756
  %tobool6 = icmp ne %struct.acpi_namespace_node* %5, null, !dbg !1756
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1758

if.then7:                                         ; preds = %if.end4
  store i32 4097, i32* %status, align 4, !dbg !1759
  br label %unlock_and_exit, !dbg !1761

if.end8:                                          ; preds = %if.end4
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1762
  %7 = load void (i8*, i8*)*, void (i8*, i8*)** %handler.addr, align 8, !dbg !1763
  %call9 = call i32 @acpi_ns_detach_data(%struct.acpi_namespace_node* %6, void (i8*, i8*)* %7) #8, !dbg !1764
  store i32 %call9, i32* %status, align 4, !dbg !1765
  br label %unlock_and_exit, !dbg !1766

unlock_and_exit:                                  ; preds = %if.end8, %if.then7
  call void @llvm.dbg.label(metadata !1767), !dbg !1768
  %call10 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !1769
  %8 = load i32, i32* %status, align 4, !dbg !1770
  store i32 %8, i32* %retval, align 4, !dbg !1771
  br label %return, !dbg !1771

return:                                           ; preds = %unlock_and_exit, %if.then3, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !1772
  ret i32 %9, !dbg !1772
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_detach_data(%struct.acpi_namespace_node*, void (i8*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_data_full(i8* %obj_handle, void (i8*, i8*)* %handler, i8** %data, void (i8*)* %callback) #0 !dbg !1773 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca i8*, align 8
  %handler.addr = alloca void (i8*, i8*)*, align 8
  %data.addr = alloca i8**, align 8
  %callback.addr = alloca void (i8*)*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store i8* %obj_handle, i8** %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj_handle.addr, metadata !1777, metadata !DIExpression()), !dbg !1778
  store void (i8*, i8*)* %handler, void (i8*, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %handler.addr, metadata !1779, metadata !DIExpression()), !dbg !1780
  store i8** %data, i8*** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %data.addr, metadata !1781, metadata !DIExpression()), !dbg !1782
  store void (i8*)* %callback, void (i8*)** %callback.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %callback.addr, metadata !1783, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1785, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1787, metadata !DIExpression()), !dbg !1788
  %0 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1789
  %tobool = icmp ne i8* %0, null, !dbg !1789
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1791

lor.lhs.false:                                    ; preds = %entry
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %handler.addr, align 8, !dbg !1792
  %tobool1 = icmp ne void (i8*, i8*)* %1, null, !dbg !1792
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1793

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8**, i8*** %data.addr, align 8, !dbg !1794
  %tobool3 = icmp ne i8** %2, null, !dbg !1794
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1795

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1796
  br label %return, !dbg !1796

if.end:                                           ; preds = %lor.lhs.false2
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !1798
  store i32 %call, i32* %status, align 4, !dbg !1799
  %3 = load i32, i32* %status, align 4, !dbg !1800
  %tobool4 = icmp ne i32 %3, 0, !dbg !1800
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1802

if.then5:                                         ; preds = %if.end
  %4 = load i32, i32* %status, align 4, !dbg !1803
  store i32 %4, i32* %retval, align 4, !dbg !1805
  br label %return, !dbg !1805

if.end6:                                          ; preds = %if.end
  %5 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1806
  %call7 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %5) #8, !dbg !1807
  store %struct.acpi_namespace_node* %call7, %struct.acpi_namespace_node** %node, align 8, !dbg !1808
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1809
  %tobool8 = icmp ne %struct.acpi_namespace_node* %6, null, !dbg !1809
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1811

if.then9:                                         ; preds = %if.end6
  store i32 4097, i32* %status, align 4, !dbg !1812
  br label %unlock_and_exit, !dbg !1814

if.end10:                                         ; preds = %if.end6
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1815
  %8 = load void (i8*, i8*)*, void (i8*, i8*)** %handler.addr, align 8, !dbg !1816
  %9 = load i8**, i8*** %data.addr, align 8, !dbg !1817
  %call11 = call i32 @acpi_ns_get_attached_data(%struct.acpi_namespace_node* %7, void (i8*, i8*)* %8, i8** %9) #8, !dbg !1818
  store i32 %call11, i32* %status, align 4, !dbg !1819
  %10 = load i32, i32* %status, align 4, !dbg !1820
  %tobool12 = icmp ne i32 %10, 0, !dbg !1820
  br i1 %tobool12, label %if.end15, label %land.lhs.true, !dbg !1822

land.lhs.true:                                    ; preds = %if.end10
  %11 = load void (i8*)*, void (i8*)** %callback.addr, align 8, !dbg !1823
  %tobool13 = icmp ne void (i8*)* %11, null, !dbg !1823
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1824

if.then14:                                        ; preds = %land.lhs.true
  %12 = load void (i8*)*, void (i8*)** %callback.addr, align 8, !dbg !1825
  %13 = load i8**, i8*** %data.addr, align 8, !dbg !1827
  %14 = load i8*, i8** %13, align 8, !dbg !1828
  call void %12(i8* %14) #8, !dbg !1825
  br label %if.end15, !dbg !1829

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %if.end10
  br label %unlock_and_exit, !dbg !1823

unlock_and_exit:                                  ; preds = %if.end15, %if.then9
  call void @llvm.dbg.label(metadata !1830), !dbg !1831
  %call16 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !1832
  %15 = load i32, i32* %status, align 4, !dbg !1833
  store i32 %15, i32* %retval, align 4, !dbg !1834
  br label %return, !dbg !1834

return:                                           ; preds = %unlock_and_exit, %if.then5, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !1835
  ret i32 %16, !dbg !1835
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_attached_data(%struct.acpi_namespace_node*, void (i8*, i8*)*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_data(i8* %obj_handle, void (i8*, i8*)* %handler, i8** %data) #0 !dbg !1836 {
entry:
  %obj_handle.addr = alloca i8*, align 8
  %handler.addr = alloca void (i8*, i8*)*, align 8
  %data.addr = alloca i8**, align 8
  store i8* %obj_handle, i8** %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj_handle.addr, metadata !1839, metadata !DIExpression()), !dbg !1840
  store void (i8*, i8*)* %handler, void (i8*, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %handler.addr, metadata !1841, metadata !DIExpression()), !dbg !1842
  store i8** %data, i8*** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %data.addr, metadata !1843, metadata !DIExpression()), !dbg !1844
  %0 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1845
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %handler.addr, align 8, !dbg !1846
  %2 = load i8**, i8*** %data.addr, align 8, !dbg !1847
  %call = call i32 @acpi_get_data_full(i8* %0, void (i8*, i8*)* %1, i8** %2, void (i8*)* null) #8, !dbg !1848
  ret i32 %call, !dbg !1849
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1850 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1857, metadata !DIExpression()), !dbg !1864
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1870, metadata !DIExpression()), !dbg !1871
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1872, metadata !DIExpression()), !dbg !1873
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1874, metadata !DIExpression()), !dbg !1875
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1876, metadata !DIExpression()), !dbg !1880
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1882, metadata !DIExpression()), !dbg !1886
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1888, metadata !DIExpression()), !dbg !1892
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1897, metadata !DIExpression()), !dbg !1898
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1899, metadata !DIExpression()), !dbg !1900
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1901, metadata !DIExpression()), !dbg !1902
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1903, metadata !DIExpression()), !dbg !1904
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1905, metadata !DIExpression()), !dbg !1906
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1907, metadata !DIExpression()), !dbg !1908
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1909, metadata !DIExpression()), !dbg !1910
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1911, metadata !DIExpression()), !dbg !1912
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1913, metadata !DIExpression()), !dbg !1914
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1915, metadata !DIExpression()), !dbg !1916
  %0 = load i64, i64* %size.addr, align 8, !dbg !1917
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1918
  %or = or i32 %1, 256, !dbg !1919
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1920
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1921
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1922

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1923
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1924
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1925

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1926
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1927
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1928
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1929
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1906
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1930
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1931
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1932
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1933
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1934
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1935
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1936
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1936
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1936
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1936
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1936
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1937
  br label %kmalloc.exit, !dbg !1937

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1938
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1939
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1939
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1941

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1942
  br label %kmalloc_index.exit.i, !dbg !1942

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1943
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1945
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1946

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1947
  br label %kmalloc_index.exit.i, !dbg !1947

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1948
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1950
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1951

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1952
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1953
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1954

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1955
  br label %kmalloc_index.exit.i, !dbg !1955

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1956
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1958
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1959

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1960
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1961
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1962

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1963
  br label %kmalloc_index.exit.i, !dbg !1963

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1964
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1966
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1967

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1968
  br label %kmalloc_index.exit.i, !dbg !1968

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1969
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1971
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1972

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1973
  br label %kmalloc_index.exit.i, !dbg !1973

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1974
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1976
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1977

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1978
  br label %kmalloc_index.exit.i, !dbg !1978

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1979
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1981
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1982

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1983
  br label %kmalloc_index.exit.i, !dbg !1983

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1984
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1986
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1987

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1988
  br label %kmalloc_index.exit.i, !dbg !1988

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1989
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1991
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1992

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1993
  br label %kmalloc_index.exit.i, !dbg !1993

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1994
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1996
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1997

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1998
  br label %kmalloc_index.exit.i, !dbg !1998

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1999
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2001
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2002

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2003
  br label %kmalloc_index.exit.i, !dbg !2003

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2004
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2006
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2007

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2008
  br label %kmalloc_index.exit.i, !dbg !2008

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2009
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2011
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2012

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2013
  br label %kmalloc_index.exit.i, !dbg !2013

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2014
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2016
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2017

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2018
  br label %kmalloc_index.exit.i, !dbg !2018

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2019
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2021
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2022

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2023
  br label %kmalloc_index.exit.i, !dbg !2023

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2024
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2026
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2027

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2028
  br label %kmalloc_index.exit.i, !dbg !2028

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2029
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2031
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2032

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2033
  br label %kmalloc_index.exit.i, !dbg !2033

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2034
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2036
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2037

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2038
  br label %kmalloc_index.exit.i, !dbg !2038

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2039
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2041
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2042

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2043
  br label %kmalloc_index.exit.i, !dbg !2043

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2044
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2046
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2047

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2048
  br label %kmalloc_index.exit.i, !dbg !2048

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2049
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2051
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2052

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2053
  br label %kmalloc_index.exit.i, !dbg !2053

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2054
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2056
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2057

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2058
  br label %kmalloc_index.exit.i, !dbg !2058

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2059
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2061
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2062

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2063
  br label %kmalloc_index.exit.i, !dbg !2063

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2064
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2066
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2067

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2068
  br label %kmalloc_index.exit.i, !dbg !2068

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2069
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2071
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2072

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2073
  br label %kmalloc_index.exit.i, !dbg !2073

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2074
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2076
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2077

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2078
  br label %kmalloc_index.exit.i, !dbg !2078

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2079
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2081
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2082

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2083
  br label %kmalloc_index.exit.i, !dbg !2083

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !2084, !srcloc !2087
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !2088, !srcloc !2091
  unreachable, !dbg !2092

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2093
  store i32 %45, i32* %index.i, align 4, !dbg !2094
  %46 = load i32, i32* %index.i, align 4, !dbg !2095
  %tobool.i = icmp ne i32 %46, 0, !dbg !2095
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2097

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2098
  br label %kmalloc.exit, !dbg !2098

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2099
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2100
  %and.i.i = and i32 %48, 17, !dbg !2100
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2100
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2100
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2100
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2100
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2102

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2103
  br label %kmalloc_type.exit.i, !dbg !2103

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2104
  %and2.i.i = and i32 %49, 1, !dbg !2105
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2104
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2104
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2104
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2106
  br label %kmalloc_type.exit.i, !dbg !2106

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2107
  %idxprom.i = zext i32 %51 to i64, !dbg !2108
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2108
  %52 = load i32, i32* %index.i, align 4, !dbg !2109
  %idxprom6.i = zext i32 %52 to i64, !dbg !2108
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2108
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2108
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2110
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2111
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2112
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2113
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !2114
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2114
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2114
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2114
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !2114
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1875
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2115
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2116
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2117
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2118
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !2119
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2120
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2121
  store i8* %62, i8** %retval.i, align 8, !dbg !2122
  br label %kmalloc.exit, !dbg !2122

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2123
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2124
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !2125
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2125
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2125
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2125
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !2125
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2126
  br label %kmalloc.exit, !dbg !2126

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2127
  ret i8* %65, !dbg !2128
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !2129 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !2133, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2136, metadata !DIExpression()), !dbg !2135
  %0 = load i64, i64* %__edi, align 8, !dbg !2135
  store i64 %0, i64* %__edi, align 8, !dbg !2135
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2137, metadata !DIExpression()), !dbg !2135
  %1 = load i64, i64* %__esi, align 8, !dbg !2135
  store i64 %1, i64* %__esi, align 8, !dbg !2135
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2138, metadata !DIExpression()), !dbg !2135
  %2 = load i64, i64* %__edx, align 8, !dbg !2135
  store i64 %2, i64* %__edx, align 8, !dbg !2135
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2139, metadata !DIExpression()), !dbg !2135
  %3 = load i64, i64* %__ecx, align 8, !dbg !2135
  store i64 %3, i64* %__ecx, align 8, !dbg !2135
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2140, metadata !DIExpression()), !dbg !2135
  %4 = load i64, i64* %__eax, align 8, !dbg !2135
  store i64 %4, i64* %__eax, align 8, !dbg !2135
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !2135
  %6 = call i64 @llvm.read_register.i64(metadata !853), !dbg !2141
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !2141, !srcloc !2144
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2141
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2141
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2141
  call void @llvm.write_register.i64(metadata !853, i64 %asmresult1), !dbg !2141
  %8 = load i64, i64* %__eax, align 8, !dbg !2141
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !2145, metadata !DIExpression()), !dbg !2147
  store i64 -1, i64* %__mask, align 8, !dbg !2147
  %9 = load i64, i64* %__mask, align 8, !dbg !2147
  store i64 %9, i64* %tmp, align 8, !dbg !2147
  %10 = load i64, i64* %tmp, align 8, !dbg !2147
  %and = and i64 %8, %10, !dbg !2141
  store i64 %and, i64* %__ret, align 8, !dbg !2141
  %11 = load i64, i64* %__ret, align 8, !dbg !2135
  store i64 %11, i64* %tmp2, align 8, !dbg !2148
  %12 = load i64, i64* %tmp2, align 8, !dbg !2135
  ret i64 %12, !dbg !2149
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !2150 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2152, metadata !DIExpression()), !dbg !2157
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2159, metadata !DIExpression()), !dbg !2160
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2161, metadata !DIExpression()), !dbg !2162
  %0 = load i64, i64* %size.addr, align 8, !dbg !2163
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2165
  br i1 %1, label %if.then, label %if.end447, !dbg !2166

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2167
  %tobool = icmp ne i64 %2, 0, !dbg !2167
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2170

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2171
  br label %return, !dbg !2171

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2172
  %cmp = icmp ult i64 %3, 4096, !dbg !2174
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2175

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2176
  br label %return, !dbg !2176

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub = sub i64 %4, 1, !dbg !2177
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2177
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2177

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub4 = sub i64 %6, 1, !dbg !2177
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2177
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2177

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub6 = sub i64 %8, 1, !dbg !2177
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2177
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2177

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2177

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub9 = sub i64 %9, 1, !dbg !2177
  %and = and i64 %sub9, -9223372036854775808, !dbg !2177
  %tobool10 = icmp ne i64 %and, 0, !dbg !2177
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2177

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2177

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub13 = sub i64 %10, 1, !dbg !2177
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2177
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2177
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2177

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2177

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub18 = sub i64 %11, 1, !dbg !2177
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2177
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2177
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2177

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2177

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub23 = sub i64 %12, 1, !dbg !2177
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2177
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2177
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2177

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2177

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub28 = sub i64 %13, 1, !dbg !2177
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2177
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2177
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2177

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2177

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub33 = sub i64 %14, 1, !dbg !2177
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2177
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2177
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2177

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2177

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub38 = sub i64 %15, 1, !dbg !2177
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2177
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2177
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2177

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2177

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub43 = sub i64 %16, 1, !dbg !2177
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2177
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2177
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2177

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2177

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub48 = sub i64 %17, 1, !dbg !2177
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2177
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2177
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2177

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2177

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub53 = sub i64 %18, 1, !dbg !2177
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2177
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2177
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2177

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2177

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub58 = sub i64 %19, 1, !dbg !2177
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2177
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2177
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2177

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2177

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub63 = sub i64 %20, 1, !dbg !2177
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2177
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2177
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2177

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2177

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub68 = sub i64 %21, 1, !dbg !2177
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2177
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2177
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2177

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2177

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub73 = sub i64 %22, 1, !dbg !2177
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2177
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2177
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2177

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2177

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub78 = sub i64 %23, 1, !dbg !2177
  %and79 = and i64 %sub78, 562949953421312, !dbg !2177
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2177
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2177

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2177

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub83 = sub i64 %24, 1, !dbg !2177
  %and84 = and i64 %sub83, 281474976710656, !dbg !2177
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2177
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2177

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2177

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub88 = sub i64 %25, 1, !dbg !2177
  %and89 = and i64 %sub88, 140737488355328, !dbg !2177
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2177
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2177

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2177

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub93 = sub i64 %26, 1, !dbg !2177
  %and94 = and i64 %sub93, 70368744177664, !dbg !2177
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2177
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2177

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2177

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub98 = sub i64 %27, 1, !dbg !2177
  %and99 = and i64 %sub98, 35184372088832, !dbg !2177
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2177
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2177

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2177

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub103 = sub i64 %28, 1, !dbg !2177
  %and104 = and i64 %sub103, 17592186044416, !dbg !2177
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2177
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2177

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2177

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub108 = sub i64 %29, 1, !dbg !2177
  %and109 = and i64 %sub108, 8796093022208, !dbg !2177
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2177
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2177

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2177

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub113 = sub i64 %30, 1, !dbg !2177
  %and114 = and i64 %sub113, 4398046511104, !dbg !2177
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2177
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2177

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2177

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub118 = sub i64 %31, 1, !dbg !2177
  %and119 = and i64 %sub118, 2199023255552, !dbg !2177
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2177
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2177

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2177

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub123 = sub i64 %32, 1, !dbg !2177
  %and124 = and i64 %sub123, 1099511627776, !dbg !2177
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2177
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2177

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2177

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub128 = sub i64 %33, 1, !dbg !2177
  %and129 = and i64 %sub128, 549755813888, !dbg !2177
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2177
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2177

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2177

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub133 = sub i64 %34, 1, !dbg !2177
  %and134 = and i64 %sub133, 274877906944, !dbg !2177
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2177
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2177

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2177

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub138 = sub i64 %35, 1, !dbg !2177
  %and139 = and i64 %sub138, 137438953472, !dbg !2177
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2177
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2177

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2177

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub143 = sub i64 %36, 1, !dbg !2177
  %and144 = and i64 %sub143, 68719476736, !dbg !2177
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2177
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2177

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2177

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub148 = sub i64 %37, 1, !dbg !2177
  %and149 = and i64 %sub148, 34359738368, !dbg !2177
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2177
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2177

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2177

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub153 = sub i64 %38, 1, !dbg !2177
  %and154 = and i64 %sub153, 17179869184, !dbg !2177
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2177
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2177

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2177

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub158 = sub i64 %39, 1, !dbg !2177
  %and159 = and i64 %sub158, 8589934592, !dbg !2177
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2177
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2177

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2177

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub163 = sub i64 %40, 1, !dbg !2177
  %and164 = and i64 %sub163, 4294967296, !dbg !2177
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2177
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2177

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2177

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub168 = sub i64 %41, 1, !dbg !2177
  %and169 = and i64 %sub168, 2147483648, !dbg !2177
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2177
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2177

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2177

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub173 = sub i64 %42, 1, !dbg !2177
  %and174 = and i64 %sub173, 1073741824, !dbg !2177
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2177
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2177

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2177

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub178 = sub i64 %43, 1, !dbg !2177
  %and179 = and i64 %sub178, 536870912, !dbg !2177
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2177
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2177

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2177

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub183 = sub i64 %44, 1, !dbg !2177
  %and184 = and i64 %sub183, 268435456, !dbg !2177
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2177
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2177

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2177

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub188 = sub i64 %45, 1, !dbg !2177
  %and189 = and i64 %sub188, 134217728, !dbg !2177
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2177
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2177

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2177

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub193 = sub i64 %46, 1, !dbg !2177
  %and194 = and i64 %sub193, 67108864, !dbg !2177
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2177
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2177

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2177

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub198 = sub i64 %47, 1, !dbg !2177
  %and199 = and i64 %sub198, 33554432, !dbg !2177
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2177
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2177

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2177

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub203 = sub i64 %48, 1, !dbg !2177
  %and204 = and i64 %sub203, 16777216, !dbg !2177
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2177
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2177

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2177

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub208 = sub i64 %49, 1, !dbg !2177
  %and209 = and i64 %sub208, 8388608, !dbg !2177
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2177
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2177

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2177

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub213 = sub i64 %50, 1, !dbg !2177
  %and214 = and i64 %sub213, 4194304, !dbg !2177
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2177
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2177

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2177

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub218 = sub i64 %51, 1, !dbg !2177
  %and219 = and i64 %sub218, 2097152, !dbg !2177
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2177
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2177

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2177

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub223 = sub i64 %52, 1, !dbg !2177
  %and224 = and i64 %sub223, 1048576, !dbg !2177
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2177
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2177

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2177

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub228 = sub i64 %53, 1, !dbg !2177
  %and229 = and i64 %sub228, 524288, !dbg !2177
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2177
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2177

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2177

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub233 = sub i64 %54, 1, !dbg !2177
  %and234 = and i64 %sub233, 262144, !dbg !2177
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2177
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2177

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2177

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub238 = sub i64 %55, 1, !dbg !2177
  %and239 = and i64 %sub238, 131072, !dbg !2177
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2177
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2177

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2177

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub243 = sub i64 %56, 1, !dbg !2177
  %and244 = and i64 %sub243, 65536, !dbg !2177
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2177
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2177

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2177

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub248 = sub i64 %57, 1, !dbg !2177
  %and249 = and i64 %sub248, 32768, !dbg !2177
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2177
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2177

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2177

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub253 = sub i64 %58, 1, !dbg !2177
  %and254 = and i64 %sub253, 16384, !dbg !2177
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2177
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2177

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2177

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub258 = sub i64 %59, 1, !dbg !2177
  %and259 = and i64 %sub258, 8192, !dbg !2177
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2177
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2177

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2177

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub263 = sub i64 %60, 1, !dbg !2177
  %and264 = and i64 %sub263, 4096, !dbg !2177
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2177
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2177

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2177

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub268 = sub i64 %61, 1, !dbg !2177
  %and269 = and i64 %sub268, 2048, !dbg !2177
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2177
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2177

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2177

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub273 = sub i64 %62, 1, !dbg !2177
  %and274 = and i64 %sub273, 1024, !dbg !2177
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2177
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2177

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2177

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub278 = sub i64 %63, 1, !dbg !2177
  %and279 = and i64 %sub278, 512, !dbg !2177
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2177
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2177

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2177

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub283 = sub i64 %64, 1, !dbg !2177
  %and284 = and i64 %sub283, 256, !dbg !2177
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2177
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2177

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2177

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub288 = sub i64 %65, 1, !dbg !2177
  %and289 = and i64 %sub288, 128, !dbg !2177
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2177
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2177

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2177

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub293 = sub i64 %66, 1, !dbg !2177
  %and294 = and i64 %sub293, 64, !dbg !2177
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2177
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2177

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2177

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub298 = sub i64 %67, 1, !dbg !2177
  %and299 = and i64 %sub298, 32, !dbg !2177
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2177
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2177

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2177

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub303 = sub i64 %68, 1, !dbg !2177
  %and304 = and i64 %sub303, 16, !dbg !2177
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2177
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2177

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2177

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub308 = sub i64 %69, 1, !dbg !2177
  %and309 = and i64 %sub308, 8, !dbg !2177
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2177
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2177

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2177

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub313 = sub i64 %70, 1, !dbg !2177
  %and314 = and i64 %sub313, 4, !dbg !2177
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2177
  %71 = zext i1 %tobool315 to i64, !dbg !2177
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2177
  br label %cond.end, !dbg !2177

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2177
  br label %cond.end317, !dbg !2177

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2177
  br label %cond.end319, !dbg !2177

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2177
  br label %cond.end321, !dbg !2177

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2177
  br label %cond.end323, !dbg !2177

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2177
  br label %cond.end325, !dbg !2177

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2177
  br label %cond.end327, !dbg !2177

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2177
  br label %cond.end329, !dbg !2177

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2177
  br label %cond.end331, !dbg !2177

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2177
  br label %cond.end333, !dbg !2177

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2177
  br label %cond.end335, !dbg !2177

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2177
  br label %cond.end337, !dbg !2177

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2177
  br label %cond.end339, !dbg !2177

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2177
  br label %cond.end341, !dbg !2177

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2177
  br label %cond.end343, !dbg !2177

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2177
  br label %cond.end345, !dbg !2177

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2177
  br label %cond.end347, !dbg !2177

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2177
  br label %cond.end349, !dbg !2177

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2177
  br label %cond.end351, !dbg !2177

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2177
  br label %cond.end353, !dbg !2177

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2177
  br label %cond.end355, !dbg !2177

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2177
  br label %cond.end357, !dbg !2177

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2177
  br label %cond.end359, !dbg !2177

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2177
  br label %cond.end361, !dbg !2177

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2177
  br label %cond.end363, !dbg !2177

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2177
  br label %cond.end365, !dbg !2177

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2177
  br label %cond.end367, !dbg !2177

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2177
  br label %cond.end369, !dbg !2177

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2177
  br label %cond.end371, !dbg !2177

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2177
  br label %cond.end373, !dbg !2177

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2177
  br label %cond.end375, !dbg !2177

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2177
  br label %cond.end377, !dbg !2177

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2177
  br label %cond.end379, !dbg !2177

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2177
  br label %cond.end381, !dbg !2177

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2177
  br label %cond.end383, !dbg !2177

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2177
  br label %cond.end385, !dbg !2177

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2177
  br label %cond.end387, !dbg !2177

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2177
  br label %cond.end389, !dbg !2177

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2177
  br label %cond.end391, !dbg !2177

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2177
  br label %cond.end393, !dbg !2177

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2177
  br label %cond.end395, !dbg !2177

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2177
  br label %cond.end397, !dbg !2177

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2177
  br label %cond.end399, !dbg !2177

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2177
  br label %cond.end401, !dbg !2177

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2177
  br label %cond.end403, !dbg !2177

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2177
  br label %cond.end405, !dbg !2177

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2177
  br label %cond.end407, !dbg !2177

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2177
  br label %cond.end409, !dbg !2177

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2177
  br label %cond.end411, !dbg !2177

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2177
  br label %cond.end413, !dbg !2177

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2177
  br label %cond.end415, !dbg !2177

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2177
  br label %cond.end417, !dbg !2177

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2177
  br label %cond.end419, !dbg !2177

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2177
  br label %cond.end421, !dbg !2177

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2177
  br label %cond.end423, !dbg !2177

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2177
  br label %cond.end425, !dbg !2177

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2177
  br label %cond.end427, !dbg !2177

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2177
  br label %cond.end429, !dbg !2177

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2177
  br label %cond.end431, !dbg !2177

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2177
  br label %cond.end433, !dbg !2177

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2177
  br label %cond.end435, !dbg !2177

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2177
  br label %cond.end437, !dbg !2177

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2177
  br label %cond.end440, !dbg !2177

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2177

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2177
  br label %cond.end444, !dbg !2177

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2177
  %sub443 = sub i64 %72, 1, !dbg !2177
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !2177
  br label %cond.end444, !dbg !2177

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2177
  %sub446 = sub i32 %cond445, 12, !dbg !2178
  %add = add i32 %sub446, 1, !dbg !2179
  store i32 %add, i32* %retval, align 4, !dbg !2180
  br label %return, !dbg !2180

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2181
  %dec = add i64 %73, -1, !dbg !2181
  store i64 %dec, i64* %size.addr, align 8, !dbg !2181
  %74 = load i64, i64* %size.addr, align 8, !dbg !2182
  %shr = lshr i64 %74, 12, !dbg !2182
  store i64 %shr, i64* %size.addr, align 8, !dbg !2182
  %75 = load i64, i64* %size.addr, align 8, !dbg !2183
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2160
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2184
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2185
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !2184, !srcloc !2186
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2184
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2187
  %add.i = add i32 %79, 1, !dbg !2188
  store i32 %add.i, i32* %retval, align 4, !dbg !2189
  br label %return, !dbg !2189

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2190
  ret i32 %80, !dbg !2190
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !2191 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2152, metadata !DIExpression()), !dbg !2195
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2159, metadata !DIExpression()), !dbg !2197
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2198, metadata !DIExpression()), !dbg !2199
  %0 = load i64, i64* %n.addr, align 8, !dbg !2200
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2197
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2201
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2202
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !2201, !srcloc !2186
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2201
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2203
  %add.i = add i32 %4, 1, !dbg !2204
  %sub = sub i32 %add.i, 1, !dbg !2205
  ret i32 %sub, !dbg !2206
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2207 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2213, metadata !DIExpression()), !dbg !2214
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2215, metadata !DIExpression()), !dbg !2216
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2217, metadata !DIExpression()), !dbg !2218
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2219, metadata !DIExpression()), !dbg !2220
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2221
  ret i8* %0, !dbg !2222
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_execute_HID(%struct.acpi_namespace_node*, %struct.acpi_pnp_device_id**) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_execute_CID(%struct.acpi_namespace_node*, %struct.acpi_pnp_device_id_list**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_execute_STA(%struct.acpi_namespace_node*, i32*) #2

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
!llvm.named.register.rsp = !{!853}
!llvm.module.flags = !{!854, !855, !856, !857}
!llvm.ident = !{!858}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !851, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !850, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsxfeval.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !20, !24, !65, !49, !80, !83, !64, !21, !16, !847, !849}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !16)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !19, line: 27, baseType: !7)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !15, line: 127, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !17, line: 23, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !19, line: 31, baseType: !23)
!23 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !15, line: 899, size: 192, elements: !26)
!26 = !{!27, !29, !34, !42, !52, !58, !66, !74}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !15, line: 900, baseType: !28, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !15, line: 635, baseType: !16)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !25, file: !15, line: 904, baseType: !30, size: 128)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !25, file: !15, line: 901, size: 128, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !30, file: !15, line: 902, baseType: !28, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !30, file: !15, line: 903, baseType: !21, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !25, file: !15, line: 910, baseType: !35, size: 128)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !25, file: !15, line: 906, size: 128, elements: !36)
!36 = !{!37, !38, !39}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !35, file: !15, line: 907, baseType: !28, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !35, file: !15, line: 908, baseType: !16, size: 32, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !35, file: !15, line: 909, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !25, file: !15, line: 916, baseType: !43, size: 128)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !25, file: !15, line: 912, size: 128, elements: !44)
!44 = !{!45, !46, !47}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !43, file: !15, line: 913, baseType: !28, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !43, file: !15, line: 914, baseType: !16, size: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !43, file: !15, line: 915, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !51)
!51 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !25, file: !15, line: 922, baseType: !53, size: 128)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !25, file: !15, line: 918, size: 128, elements: !54)
!54 = !{!55, !56, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !15, line: 919, baseType: !28, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !53, file: !15, line: 920, baseType: !16, size: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !53, file: !15, line: 921, baseType: !24, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !25, file: !15, line: 928, baseType: !59, size: 128)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !25, file: !15, line: 924, size: 128, elements: !60)
!60 = !{!61, !62, !63}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !15, line: 925, baseType: !28, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !59, file: !15, line: 926, baseType: !28, size: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !59, file: !15, line: 927, baseType: !64, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !15, line: 424, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !25, file: !15, line: 935, baseType: !67, size: 192)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !25, file: !15, line: 930, size: 192, elements: !68)
!68 = !{!69, !70, !71, !73}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !15, line: 931, baseType: !28, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !67, file: !15, line: 932, baseType: !16, size: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !67, file: !15, line: 933, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !15, line: 128, baseType: !21)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !67, file: !15, line: 934, baseType: !16, size: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !25, file: !15, line: 941, baseType: !75, size: 96)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !25, file: !15, line: 937, size: 96, elements: !76)
!76 = !{!77, !78, !79}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !15, line: 938, baseType: !28, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !75, file: !15, line: 939, baseType: !16, size: 32, offset: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !75, file: !15, line: 940, baseType: !16, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !82)
!82 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !85, line: 432, size: 1600, elements: !86)
!85 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !92, !845, !846}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !84, file: !85, line: 433, baseType: !88, size: 128)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !85, line: 427, size: 128, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !88, file: !85, line: 428, baseType: !65, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !88, file: !85, line: 429, baseType: !49, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !84, file: !85, line: 434, baseType: !93, size: 576)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !85, line: 367, size: 576, elements: !94)
!94 = !{!95, !104, !117, !127, !162, !176, !185, !497, !514, !529, !542, !620, !632, !645, !655, !673, !695, !714, !733, !752, !765, !791, !808, !821, !835, !844}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !93, file: !85, line: 368, baseType: !96, size: 128)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !85, line: 73, size: 128, elements: !97)
!97 = !{!98, !100, !101, !102, !103}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !96, file: !85, line: 74, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !96, file: !85, line: 74, baseType: !49, size: 8, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !85, line: 74, baseType: !49, size: 8, offset: 72)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !96, file: !85, line: 74, baseType: !80, size: 16, offset: 80)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !85, line: 74, baseType: !49, size: 8, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !93, file: !85, line: 369, baseType: !105, size: 192)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !85, line: 76, size: 192, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !116}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !105, file: !85, line: 77, baseType: !99, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !85, line: 77, baseType: !49, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !85, line: 77, baseType: !49, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !105, file: !85, line: 77, baseType: !80, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !85, line: 77, baseType: !49, size: 8, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !105, file: !85, line: 77, baseType: !113, size: 24, offset: 104)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 24, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 3)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !105, file: !85, line: 78, baseType: !21, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !93, file: !85, line: 370, baseType: !118, size: 256)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !85, line: 93, size: 256, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !126}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !118, file: !85, line: 94, baseType: !99, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !118, file: !85, line: 94, baseType: !49, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !85, line: 94, baseType: !49, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !118, file: !85, line: 94, baseType: !80, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !85, line: 94, baseType: !49, size: 8, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !118, file: !85, line: 94, baseType: !40, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !118, file: !85, line: 94, baseType: !16, size: 32, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !93, file: !85, line: 371, baseType: !128, size: 384)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !85, line: 97, size: 384, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !128, file: !85, line: 98, baseType: !99, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !128, file: !85, line: 98, baseType: !49, size: 8, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !85, line: 98, baseType: !49, size: 8, offset: 72)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !128, file: !85, line: 98, baseType: !80, size: 16, offset: 80)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !85, line: 98, baseType: !49, size: 8, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !128, file: !85, line: 98, baseType: !48, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !128, file: !85, line: 98, baseType: !16, size: 32, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !128, file: !85, line: 99, baseType: !16, size: 32, offset: 224)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !128, file: !85, line: 100, baseType: !48, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !128, file: !85, line: 101, baseType: !140, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !142, line: 133, size: 384, elements: !143)
!142 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!143 = !{!144, !145, !146, !147, !148, !157, !158, !159, !160}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !141, file: !142, line: 134, baseType: !99, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !141, file: !142, line: 135, baseType: !49, size: 8, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !141, file: !142, line: 136, baseType: !49, size: 8, offset: 72)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !141, file: !142, line: 137, baseType: !80, size: 16, offset: 80)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !142, line: 138, baseType: !149, size: 32, offset: 96)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !150, line: 327, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !149, file: !150, line: 328, baseType: !16, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !149, file: !150, line: 329, baseType: !154, size: 32)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 4)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !141, file: !142, line: 139, baseType: !140, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !141, file: !142, line: 140, baseType: !140, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !141, file: !142, line: 141, baseType: !140, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !141, file: !142, line: 142, baseType: !161, size: 16, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !15, line: 445, baseType: !80)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !93, file: !85, line: 372, baseType: !163, size: 384)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !85, line: 104, size: 384, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !173, !174, !175}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !163, file: !85, line: 105, baseType: !99, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !163, file: !85, line: 105, baseType: !49, size: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !85, line: 105, baseType: !49, size: 8, offset: 72)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !163, file: !85, line: 105, baseType: !80, size: 16, offset: 80)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !85, line: 105, baseType: !49, size: 8, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !163, file: !85, line: 105, baseType: !140, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !163, file: !85, line: 106, baseType: !172, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !163, file: !85, line: 107, baseType: !48, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !163, file: !85, line: 108, baseType: !16, size: 32, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !163, file: !85, line: 109, baseType: !16, size: 32, offset: 352)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !93, file: !85, line: 373, baseType: !177, size: 192)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !85, line: 118, size: 192, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !177, file: !85, line: 119, baseType: !99, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !177, file: !85, line: 119, baseType: !49, size: 8, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !85, line: 119, baseType: !49, size: 8, offset: 72)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !177, file: !85, line: 119, baseType: !80, size: 16, offset: 80)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !177, file: !85, line: 119, baseType: !49, size: 8, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !177, file: !85, line: 119, baseType: !65, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !93, file: !85, line: 374, baseType: !186, size: 448)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !85, line: 143, size: 448, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !494, !495, !496}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !186, file: !85, line: 144, baseType: !99, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !186, file: !85, line: 144, baseType: !49, size: 8, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !186, file: !85, line: 144, baseType: !49, size: 8, offset: 72)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !186, file: !85, line: 144, baseType: !80, size: 16, offset: 80)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !85, line: 144, baseType: !49, size: 8, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !186, file: !85, line: 144, baseType: !49, size: 8, offset: 104)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !186, file: !85, line: 145, baseType: !49, size: 8, offset: 112)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !186, file: !85, line: 146, baseType: !49, size: 8, offset: 120)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !186, file: !85, line: 147, baseType: !99, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !186, file: !85, line: 148, baseType: !99, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !186, file: !85, line: 149, baseType: !48, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !186, file: !85, line: 153, baseType: !200, size: 64, offset: 320)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !186, file: !85, line: 150, size: 64, elements: !201)
!201 = !{!202, !493}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !200, file: !85, line: 151, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !142, line: 248, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!14, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !209, line: 37, size: 9024, elements: !210)
!209 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !439, !440, !441, !442, !443, !447, !449, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !476, !477, !478, !479, !480, !481, !482, !483, !485, !491}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !209, line: 38, baseType: !207, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !208, file: !209, line: 39, baseType: !49, size: 8, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !208, file: !209, line: 40, baseType: !49, size: 8, offset: 72)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !208, file: !209, line: 41, baseType: !80, size: 16, offset: 80)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !208, file: !209, line: 42, baseType: !49, size: 8, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !208, file: !209, line: 43, baseType: !49, size: 8, offset: 104)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !208, file: !209, line: 44, baseType: !49, size: 8, offset: 112)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !208, file: !209, line: 45, baseType: !161, size: 16, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !208, file: !209, line: 46, baseType: !49, size: 8, offset: 144)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !208, file: !209, line: 47, baseType: !49, size: 8, offset: 152)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !208, file: !209, line: 48, baseType: !49, size: 8, offset: 160)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !208, file: !209, line: 49, baseType: !49, size: 8, offset: 168)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !208, file: !209, line: 50, baseType: !49, size: 8, offset: 176)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !208, file: !209, line: 51, baseType: !49, size: 8, offset: 184)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !208, file: !209, line: 52, baseType: !49, size: 8, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !208, file: !209, line: 53, baseType: !49, size: 8, offset: 200)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !208, file: !209, line: 54, baseType: !48, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !208, file: !209, line: 55, baseType: !16, size: 32, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !208, file: !209, line: 56, baseType: !16, size: 32, offset: 352)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !208, file: !209, line: 57, baseType: !16, size: 32, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !208, file: !209, line: 58, baseType: !16, size: 32, offset: 416)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !208, file: !209, line: 60, baseType: !233, size: 640, offset: 448)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !142, line: 893, size: 640, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !321, !322, !437, !438}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !233, file: !142, line: 894, baseType: !48, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !233, file: !142, line: 895, baseType: !48, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !233, file: !142, line: 896, baseType: !48, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !233, file: !142, line: 897, baseType: !48, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !233, file: !142, line: 898, baseType: !48, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !233, file: !142, line: 899, baseType: !241, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !142, line: 875, size: 1600, elements: !243)
!243 = !{!244, !264, !280}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !242, file: !142, line: 876, baseType: !245, size: 448)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !142, line: 828, size: 448, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !263}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !142, line: 829, baseType: !241, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !245, file: !142, line: 829, baseType: !49, size: 8, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !245, file: !142, line: 829, baseType: !49, size: 8, offset: 72)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !245, file: !142, line: 829, baseType: !80, size: 16, offset: 80)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !245, file: !142, line: 829, baseType: !48, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !142, line: 829, baseType: !241, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !245, file: !142, line: 829, baseType: !140, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !245, file: !142, line: 829, baseType: !255, size: 64, offset: 320)
!255 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !142, line: 716, size: 64, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !255, file: !142, line: 717, baseType: !21, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !255, file: !142, line: 718, baseType: !16, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !255, file: !142, line: 719, baseType: !40, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !255, file: !142, line: 720, baseType: !48, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !142, line: 721, baseType: !40, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !255, file: !142, line: 722, baseType: !241, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !245, file: !142, line: 829, baseType: !49, size: 8, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !242, file: !142, line: 877, baseType: !265, size: 640)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !142, line: 835, size: 640, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !265, file: !142, line: 836, baseType: !241, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !265, file: !142, line: 836, baseType: !49, size: 8, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !142, line: 836, baseType: !49, size: 8, offset: 72)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !265, file: !142, line: 836, baseType: !80, size: 16, offset: 80)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !265, file: !142, line: 836, baseType: !48, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !142, line: 836, baseType: !241, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !265, file: !142, line: 836, baseType: !140, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !265, file: !142, line: 836, baseType: !255, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !265, file: !142, line: 836, baseType: !49, size: 8, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !265, file: !142, line: 836, baseType: !40, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !265, file: !142, line: 837, baseType: !48, size: 64, offset: 512)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !265, file: !142, line: 838, baseType: !16, size: 32, offset: 576)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !142, line: 839, baseType: !16, size: 32, offset: 608)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !242, file: !142, line: 878, baseType: !281, size: 1600)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !142, line: 846, size: 1600, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !281, file: !142, line: 847, baseType: !241, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !281, file: !142, line: 847, baseType: !49, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !142, line: 847, baseType: !49, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !281, file: !142, line: 847, baseType: !80, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !281, file: !142, line: 847, baseType: !48, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !142, line: 847, baseType: !241, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !281, file: !142, line: 847, baseType: !140, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !281, file: !142, line: 847, baseType: !255, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !281, file: !142, line: 847, baseType: !49, size: 8, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !281, file: !142, line: 847, baseType: !241, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !281, file: !142, line: 848, baseType: !241, size: 64, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !281, file: !142, line: 849, baseType: !40, size: 64, offset: 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !281, file: !142, line: 850, baseType: !49, size: 8, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !281, file: !142, line: 851, baseType: !40, size: 64, offset: 704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !281, file: !142, line: 852, baseType: !40, size: 64, offset: 768)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !281, file: !142, line: 853, baseType: !40, size: 64, offset: 832)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !281, file: !142, line: 854, baseType: !154, size: 32, offset: 896)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !281, file: !142, line: 855, baseType: !16, size: 32, offset: 928)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !281, file: !142, line: 856, baseType: !16, size: 32, offset: 960)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !281, file: !142, line: 857, baseType: !16, size: 32, offset: 992)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !281, file: !142, line: 858, baseType: !16, size: 32, offset: 1024)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !281, file: !142, line: 859, baseType: !16, size: 32, offset: 1056)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !281, file: !142, line: 860, baseType: !16, size: 32, offset: 1088)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !281, file: !142, line: 861, baseType: !16, size: 32, offset: 1120)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !281, file: !142, line: 862, baseType: !16, size: 32, offset: 1152)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !281, file: !142, line: 863, baseType: !16, size: 32, offset: 1184)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !281, file: !142, line: 864, baseType: !16, size: 32, offset: 1216)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !281, file: !142, line: 865, baseType: !16, size: 32, offset: 1248)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !281, file: !142, line: 866, baseType: !16, size: 32, offset: 1280)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !281, file: !142, line: 867, baseType: !16, size: 32, offset: 1312)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !281, file: !142, line: 868, baseType: !80, size: 16, offset: 1344)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !281, file: !142, line: 869, baseType: !49, size: 8, offset: 1360)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !281, file: !142, line: 870, baseType: !49, size: 8, offset: 1368)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !281, file: !142, line: 871, baseType: !49, size: 8, offset: 1376)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !281, file: !142, line: 872, baseType: !318, size: 160, offset: 1384)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 160, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 20)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !233, file: !142, line: 900, baseType: !140, size: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !233, file: !142, line: 901, baseType: !323, size: 64, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !142, line: 663, size: 640, elements: !325)
!325 = !{!326, !334, !347, !356, !365, !378, !392, !404, !416}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !324, file: !142, line: 664, baseType: !327, size: 128)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !142, line: 567, size: 128, elements: !328)
!328 = !{!329, !330, !331, !332, !333}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !142, line: 568, baseType: !65, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !142, line: 568, baseType: !49, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !142, line: 568, baseType: !49, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !142, line: 568, baseType: !80, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !142, line: 568, baseType: !80, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !324, file: !142, line: 665, baseType: !335, size: 384)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !142, line: 593, size: 384, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !142, line: 594, baseType: !65, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !335, file: !142, line: 594, baseType: !49, size: 8, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !142, line: 594, baseType: !49, size: 8, offset: 72)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !335, file: !142, line: 594, baseType: !80, size: 16, offset: 80)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !335, file: !142, line: 594, baseType: !80, size: 16, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !335, file: !142, line: 594, baseType: !80, size: 16, offset: 112)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !335, file: !142, line: 595, baseType: !241, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !335, file: !142, line: 596, baseType: !48, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !335, file: !142, line: 597, baseType: !48, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !335, file: !142, line: 598, baseType: !21, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !324, file: !142, line: 666, baseType: !348, size: 192)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !142, line: 573, size: 192, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !142, line: 574, baseType: !65, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !142, line: 574, baseType: !49, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !142, line: 574, baseType: !49, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !142, line: 574, baseType: !80, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !142, line: 574, baseType: !80, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !348, file: !142, line: 574, baseType: !99, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !324, file: !142, line: 667, baseType: !357, size: 192)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !142, line: 604, size: 192, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !142, line: 605, baseType: !65, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !357, file: !142, line: 605, baseType: !49, size: 8, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !142, line: 605, baseType: !49, size: 8, offset: 72)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !357, file: !142, line: 605, baseType: !80, size: 16, offset: 80)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !357, file: !142, line: 605, baseType: !80, size: 16, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !357, file: !142, line: 605, baseType: !140, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !324, file: !142, line: 668, baseType: !366, size: 448)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !142, line: 608, size: 448, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !142, line: 609, baseType: !65, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !142, line: 609, baseType: !49, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !142, line: 609, baseType: !49, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !366, file: !142, line: 609, baseType: !80, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !142, line: 609, baseType: !80, size: 16, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !366, file: !142, line: 609, baseType: !16, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !366, file: !142, line: 610, baseType: !241, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !366, file: !142, line: 611, baseType: !48, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !366, file: !142, line: 612, baseType: !48, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !366, file: !142, line: 613, baseType: !16, size: 32, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !324, file: !142, line: 669, baseType: !379, size: 512)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !142, line: 580, size: 512, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !142, line: 581, baseType: !65, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !379, file: !142, line: 581, baseType: !49, size: 8, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !379, file: !142, line: 581, baseType: !49, size: 8, offset: 72)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !379, file: !142, line: 581, baseType: !80, size: 16, offset: 80)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !379, file: !142, line: 581, baseType: !80, size: 16, offset: 96)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !379, file: !142, line: 581, baseType: !16, size: 32, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !379, file: !142, line: 582, baseType: !99, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !379, file: !142, line: 583, baseType: !99, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !379, file: !142, line: 584, baseType: !207, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !379, file: !142, line: 585, baseType: !65, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !379, file: !142, line: 586, baseType: !16, size: 32, offset: 448)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !324, file: !142, line: 670, baseType: !393, size: 320)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !142, line: 620, size: 320, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !142, line: 621, baseType: !65, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !393, file: !142, line: 621, baseType: !49, size: 8, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !142, line: 621, baseType: !49, size: 8, offset: 72)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !393, file: !142, line: 621, baseType: !80, size: 16, offset: 80)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !393, file: !142, line: 621, baseType: !80, size: 16, offset: 96)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !393, file: !142, line: 621, baseType: !49, size: 8, offset: 112)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !393, file: !142, line: 622, baseType: !207, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !393, file: !142, line: 623, baseType: !99, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !393, file: !142, line: 624, baseType: !21, size: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !324, file: !142, line: 671, baseType: !405, size: 640)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !142, line: 631, size: 640, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !142, line: 632, baseType: !65, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !405, file: !142, line: 632, baseType: !49, size: 8, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !142, line: 632, baseType: !49, size: 8, offset: 72)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !405, file: !142, line: 632, baseType: !80, size: 16, offset: 80)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !405, file: !142, line: 632, baseType: !80, size: 16, offset: 96)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !405, file: !142, line: 633, baseType: !413, size: 512, offset: 128)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 512, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 8)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !324, file: !142, line: 672, baseType: !417, size: 320)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !142, line: 654, size: 320, elements: !418)
!418 = !{!419, !420, !421, !422, !423, !424, !425, !426, !427}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !142, line: 655, baseType: !65, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !417, file: !142, line: 655, baseType: !49, size: 8, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !417, file: !142, line: 655, baseType: !49, size: 8, offset: 72)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !417, file: !142, line: 655, baseType: !80, size: 16, offset: 80)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !417, file: !142, line: 655, baseType: !80, size: 16, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !417, file: !142, line: 655, baseType: !49, size: 8, offset: 112)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !417, file: !142, line: 656, baseType: !140, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !417, file: !142, line: 657, baseType: !99, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !417, file: !142, line: 658, baseType: !428, size: 64, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !142, line: 645, size: 128, elements: !430)
!430 = !{!431, !436}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !429, file: !142, line: 646, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !15, line: 1052, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !64, !16, !65}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !429, file: !142, line: 647, baseType: !65, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !233, file: !142, line: 902, baseType: !241, size: 64, offset: 512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !233, file: !142, line: 903, baseType: !16, size: 32, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !208, file: !209, line: 61, baseType: !16, size: 32, offset: 1088)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !208, file: !209, line: 62, baseType: !16, size: 32, offset: 1120)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !208, file: !209, line: 63, baseType: !80, size: 16, offset: 1152)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !208, file: !209, line: 64, baseType: !49, size: 8, offset: 1168)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !208, file: !209, line: 66, baseType: !444, size: 2688, offset: 1216)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 2688, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 7)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !208, file: !209, line: 67, baseType: !448, size: 3072, offset: 3904)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 3072, elements: !414)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !208, file: !209, line: 68, baseType: !450, size: 576, offset: 6976)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 576, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 9)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !208, file: !209, line: 69, baseType: !172, size: 64, offset: 7552)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !208, file: !209, line: 71, baseType: !48, size: 64, offset: 7616)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !208, file: !209, line: 72, baseType: !172, size: 64, offset: 7680)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !208, file: !209, line: 73, baseType: !323, size: 64, offset: 7744)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !208, file: !209, line: 74, baseType: !140, size: 64, offset: 7808)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !208, file: !209, line: 75, baseType: !99, size: 64, offset: 7872)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !208, file: !209, line: 76, baseType: !140, size: 64, offset: 7936)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !208, file: !209, line: 77, baseType: !241, size: 64, offset: 8000)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !208, file: !209, line: 78, baseType: !99, size: 64, offset: 8064)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !208, file: !209, line: 79, baseType: !140, size: 64, offset: 8128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !208, file: !209, line: 80, baseType: !40, size: 64, offset: 8192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !208, file: !209, line: 81, baseType: !241, size: 64, offset: 8256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !208, file: !209, line: 82, baseType: !466, size: 64, offset: 8320)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !142, line: 702, size: 128, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !468, file: !142, line: 706, baseType: !16, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !468, file: !142, line: 707, baseType: !16, size: 32, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !142, line: 708, baseType: !80, size: 16, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !468, file: !142, line: 709, baseType: !49, size: 8, offset: 80)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !468, file: !142, line: 710, baseType: !49, size: 8, offset: 88)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !468, file: !142, line: 711, baseType: !49, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !208, file: !209, line: 83, baseType: !241, size: 64, offset: 8384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !208, file: !209, line: 84, baseType: !99, size: 64, offset: 8448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !208, file: !209, line: 85, baseType: !323, size: 64, offset: 8512)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !208, file: !209, line: 86, baseType: !99, size: 64, offset: 8576)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !208, file: !209, line: 87, baseType: !323, size: 64, offset: 8640)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !208, file: !209, line: 88, baseType: !241, size: 64, offset: 8704)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !208, file: !209, line: 89, baseType: !241, size: 64, offset: 8768)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !208, file: !209, line: 90, baseType: !484, size: 64, offset: 8832)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !208, file: !209, line: 91, baseType: !486, size: 64, offset: 8896)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !142, line: 637, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!14, !207, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !208, file: !209, line: 92, baseType: !492, size: 64, offset: 8960)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !142, line: 641, baseType: !204)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !200, file: !85, line: 152, baseType: !99, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !186, file: !85, line: 155, baseType: !16, size: 32, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !186, file: !85, line: 156, baseType: !161, size: 16, offset: 416)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !186, file: !85, line: 157, baseType: !49, size: 8, offset: 432)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !93, file: !85, line: 375, baseType: !498, size: 576)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !85, line: 122, size: 576, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !498, file: !85, line: 123, baseType: !99, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !498, file: !85, line: 123, baseType: !49, size: 8, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !498, file: !85, line: 123, baseType: !49, size: 8, offset: 72)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !498, file: !85, line: 123, baseType: !80, size: 16, offset: 80)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !498, file: !85, line: 123, baseType: !49, size: 8, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !498, file: !85, line: 123, baseType: !49, size: 8, offset: 104)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !498, file: !85, line: 124, baseType: !80, size: 16, offset: 112)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !498, file: !85, line: 125, baseType: !65, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !498, file: !85, line: 126, baseType: !21, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !498, file: !85, line: 127, baseType: !484, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !498, file: !85, line: 128, baseType: !99, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !498, file: !85, line: 129, baseType: !99, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !498, file: !85, line: 130, baseType: !140, size: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !498, file: !85, line: 131, baseType: !49, size: 8, offset: 512)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !93, file: !85, line: 376, baseType: !515, size: 448)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !85, line: 134, size: 448, elements: !516)
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !528}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !515, file: !85, line: 135, baseType: !99, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !515, file: !85, line: 135, baseType: !49, size: 8, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !515, file: !85, line: 135, baseType: !49, size: 8, offset: 72)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !515, file: !85, line: 135, baseType: !80, size: 16, offset: 80)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !515, file: !85, line: 135, baseType: !49, size: 8, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !515, file: !85, line: 135, baseType: !49, size: 8, offset: 104)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !515, file: !85, line: 136, baseType: !140, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !515, file: !85, line: 137, baseType: !99, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !515, file: !85, line: 138, baseType: !99, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !515, file: !85, line: 139, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !15, line: 129, baseType: !21)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !515, file: !85, line: 140, baseType: !16, size: 32, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !93, file: !85, line: 377, baseType: !530, size: 320)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !85, line: 184, size: 320, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !541}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !530, file: !85, line: 185, baseType: !99, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !530, file: !85, line: 185, baseType: !49, size: 8, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !530, file: !85, line: 185, baseType: !49, size: 8, offset: 72)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !530, file: !85, line: 185, baseType: !80, size: 16, offset: 80)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !530, file: !85, line: 185, baseType: !49, size: 8, offset: 96)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !530, file: !85, line: 185, baseType: !538, size: 128, offset: 128)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 128, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 2)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !530, file: !85, line: 185, baseType: !99, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !93, file: !85, line: 378, baseType: !543, size: 384)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !85, line: 187, size: 384, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !543, file: !85, line: 188, baseType: !99, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !543, file: !85, line: 188, baseType: !49, size: 8, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !543, file: !85, line: 188, baseType: !49, size: 8, offset: 72)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !543, file: !85, line: 188, baseType: !80, size: 16, offset: 80)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !85, line: 188, baseType: !49, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !543, file: !85, line: 189, baseType: !538, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !85, line: 189, baseType: !99, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !543, file: !85, line: 189, baseType: !553, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !142, line: 480, size: 576, elements: !555)
!555 = !{!556, !557, !558, !559, !567, !582, !614, !615, !616, !617, !618, !619}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !554, file: !142, line: 481, baseType: !140, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !554, file: !142, line: 482, baseType: !553, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !142, line: 483, baseType: !553, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !554, file: !142, line: 484, baseType: !560, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !142, line: 497, size: 256, elements: !562)
!562 = !{!563, !564, !565, !566}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !561, file: !142, line: 498, baseType: !560, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !561, file: !142, line: 499, baseType: !560, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !561, file: !142, line: 500, baseType: !553, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !561, file: !142, line: 501, baseType: !16, size: 32, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !554, file: !142, line: 485, baseType: !568, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !142, line: 466, size: 320, elements: !570)
!570 = !{!571, !576, !577, !578, !579, !580, !581}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !569, file: !142, line: 467, baseType: !572, size: 128)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !142, line: 459, size: 128, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !572, file: !142, line: 460, baseType: !49, size: 8)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !572, file: !142, line: 461, baseType: !21, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !569, file: !142, line: 468, baseType: !572, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !569, file: !142, line: 469, baseType: !80, size: 16, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !569, file: !142, line: 470, baseType: !49, size: 8, offset: 272)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !569, file: !142, line: 471, baseType: !49, size: 8, offset: 280)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !569, file: !142, line: 472, baseType: !49, size: 8, offset: 288)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !569, file: !142, line: 473, baseType: !49, size: 8, offset: 296)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !554, file: !142, line: 486, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !142, line: 448, size: 192, elements: !585)
!585 = !{!586, !609, !610, !611, !612, !613}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !584, file: !142, line: 449, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !142, line: 438, size: 64, elements: !588)
!588 = !{!589, !590, !603}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !587, file: !142, line: 439, baseType: !140, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !587, file: !142, line: 440, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !142, line: 419, size: 256, elements: !593)
!593 = !{!594, !599, !600, !601, !602}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !592, file: !142, line: 420, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !15, line: 1049, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!16, !64, !16, !65}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !592, file: !142, line: 421, baseType: !65, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !592, file: !142, line: 422, baseType: !140, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !592, file: !142, line: 423, baseType: !49, size: 8, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !592, file: !142, line: 424, baseType: !49, size: 8, offset: 200)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !587, file: !142, line: 441, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !142, line: 429, size: 128, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !605, file: !142, line: 430, baseType: !140, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !605, file: !142, line: 431, baseType: !604, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !584, file: !142, line: 450, baseType: !568, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !142, line: 451, baseType: !49, size: 8, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !584, file: !142, line: 452, baseType: !49, size: 8, offset: 136)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !584, file: !142, line: 453, baseType: !49, size: 8, offset: 144)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !584, file: !142, line: 454, baseType: !49, size: 8, offset: 152)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !554, file: !142, line: 487, baseType: !21, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !554, file: !142, line: 488, baseType: !16, size: 32, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !554, file: !142, line: 489, baseType: !80, size: 16, offset: 480)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !554, file: !142, line: 490, baseType: !80, size: 16, offset: 496)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !554, file: !142, line: 491, baseType: !49, size: 8, offset: 512)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !554, file: !142, line: 492, baseType: !49, size: 8, offset: 520)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !93, file: !85, line: 379, baseType: !621, size: 384)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !85, line: 192, size: 384, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630, !631}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !621, file: !85, line: 193, baseType: !99, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !621, file: !85, line: 193, baseType: !49, size: 8, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !621, file: !85, line: 193, baseType: !49, size: 8, offset: 72)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !621, file: !85, line: 193, baseType: !80, size: 16, offset: 80)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !85, line: 193, baseType: !49, size: 8, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !621, file: !85, line: 193, baseType: !538, size: 128, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !621, file: !85, line: 193, baseType: !99, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !621, file: !85, line: 193, baseType: !16, size: 32, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !621, file: !85, line: 194, baseType: !16, size: 32, offset: 352)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !93, file: !85, line: 380, baseType: !633, size: 384)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !85, line: 197, size: 384, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !85, line: 198, baseType: !99, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !85, line: 198, baseType: !49, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !85, line: 198, baseType: !49, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !85, line: 198, baseType: !80, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !85, line: 198, baseType: !49, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !633, file: !85, line: 200, baseType: !49, size: 8, offset: 104)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !633, file: !85, line: 201, baseType: !49, size: 8, offset: 112)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !633, file: !85, line: 202, baseType: !538, size: 128, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !633, file: !85, line: 202, baseType: !99, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !633, file: !85, line: 202, baseType: !72, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !93, file: !85, line: 381, baseType: !646, size: 320)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !85, line: 205, size: 320, elements: !647)
!647 = !{!648, !649, !650, !651, !652, !653, !654}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !646, file: !85, line: 206, baseType: !99, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !646, file: !85, line: 206, baseType: !49, size: 8, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !646, file: !85, line: 206, baseType: !49, size: 8, offset: 72)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !646, file: !85, line: 206, baseType: !80, size: 16, offset: 80)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !646, file: !85, line: 206, baseType: !49, size: 8, offset: 96)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !646, file: !85, line: 206, baseType: !538, size: 128, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !646, file: !85, line: 206, baseType: !99, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !93, file: !85, line: 382, baseType: !656, size: 384)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !85, line: 233, size: 384, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !656, file: !85, line: 234, baseType: !99, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !656, file: !85, line: 234, baseType: !49, size: 8, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !85, line: 234, baseType: !49, size: 8, offset: 72)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !656, file: !85, line: 234, baseType: !80, size: 16, offset: 80)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !85, line: 234, baseType: !49, size: 8, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !656, file: !85, line: 234, baseType: !49, size: 8, offset: 104)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !656, file: !85, line: 234, baseType: !49, size: 8, offset: 112)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !656, file: !85, line: 234, baseType: !49, size: 8, offset: 120)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !656, file: !85, line: 234, baseType: !140, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !656, file: !85, line: 234, baseType: !16, size: 32, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !656, file: !85, line: 234, baseType: !16, size: 32, offset: 224)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !656, file: !85, line: 234, baseType: !16, size: 32, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !656, file: !85, line: 234, baseType: !49, size: 8, offset: 288)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !656, file: !85, line: 234, baseType: !49, size: 8, offset: 296)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !656, file: !85, line: 234, baseType: !99, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !93, file: !85, line: 383, baseType: !674, size: 576)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !85, line: 237, size: 576, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !674, file: !85, line: 238, baseType: !99, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !674, file: !85, line: 238, baseType: !49, size: 8, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !674, file: !85, line: 238, baseType: !49, size: 8, offset: 72)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !674, file: !85, line: 238, baseType: !80, size: 16, offset: 80)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !85, line: 238, baseType: !49, size: 8, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !674, file: !85, line: 238, baseType: !49, size: 8, offset: 104)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !674, file: !85, line: 238, baseType: !49, size: 8, offset: 112)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !674, file: !85, line: 238, baseType: !49, size: 8, offset: 120)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !674, file: !85, line: 238, baseType: !140, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !674, file: !85, line: 238, baseType: !16, size: 32, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !674, file: !85, line: 238, baseType: !16, size: 32, offset: 224)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !674, file: !85, line: 238, baseType: !16, size: 32, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !674, file: !85, line: 238, baseType: !49, size: 8, offset: 288)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !674, file: !85, line: 238, baseType: !49, size: 8, offset: 296)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !674, file: !85, line: 238, baseType: !80, size: 16, offset: 304)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !674, file: !85, line: 239, baseType: !99, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !674, file: !85, line: 240, baseType: !48, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !674, file: !85, line: 241, baseType: !80, size: 16, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !674, file: !85, line: 242, baseType: !48, size: 64, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !93, file: !85, line: 384, baseType: !696, size: 384)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !85, line: 262, size: 384, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !85, line: 263, baseType: !99, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !85, line: 263, baseType: !49, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !85, line: 263, baseType: !49, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !85, line: 263, baseType: !80, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !85, line: 263, baseType: !49, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !696, file: !85, line: 263, baseType: !49, size: 8, offset: 104)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !696, file: !85, line: 263, baseType: !49, size: 8, offset: 112)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !696, file: !85, line: 263, baseType: !49, size: 8, offset: 120)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !85, line: 263, baseType: !140, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !696, file: !85, line: 263, baseType: !16, size: 32, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !696, file: !85, line: 263, baseType: !16, size: 32, offset: 224)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !696, file: !85, line: 263, baseType: !16, size: 32, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !696, file: !85, line: 263, baseType: !49, size: 8, offset: 288)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !696, file: !85, line: 263, baseType: !49, size: 8, offset: 296)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !696, file: !85, line: 263, baseType: !49, size: 8, offset: 304)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !696, file: !85, line: 264, baseType: !99, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !93, file: !85, line: 385, baseType: !715, size: 448)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !85, line: 245, size: 448, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !85, line: 246, baseType: !99, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !85, line: 246, baseType: !49, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !85, line: 246, baseType: !49, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !85, line: 246, baseType: !80, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !85, line: 246, baseType: !49, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !715, file: !85, line: 246, baseType: !49, size: 8, offset: 104)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !715, file: !85, line: 246, baseType: !49, size: 8, offset: 112)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !715, file: !85, line: 246, baseType: !49, size: 8, offset: 120)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !85, line: 246, baseType: !140, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !715, file: !85, line: 246, baseType: !16, size: 32, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !715, file: !85, line: 246, baseType: !16, size: 32, offset: 224)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !715, file: !85, line: 246, baseType: !16, size: 32, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !715, file: !85, line: 246, baseType: !49, size: 8, offset: 288)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !715, file: !85, line: 246, baseType: !49, size: 8, offset: 296)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !715, file: !85, line: 246, baseType: !99, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !715, file: !85, line: 247, baseType: !99, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !93, file: !85, line: 386, baseType: !734, size: 448)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !85, line: 250, size: 448, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !734, file: !85, line: 251, baseType: !99, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !734, file: !85, line: 251, baseType: !49, size: 8, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !85, line: 251, baseType: !49, size: 8, offset: 72)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !734, file: !85, line: 251, baseType: !80, size: 16, offset: 80)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !734, file: !85, line: 251, baseType: !49, size: 8, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !734, file: !85, line: 251, baseType: !49, size: 8, offset: 104)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !734, file: !85, line: 251, baseType: !49, size: 8, offset: 112)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !734, file: !85, line: 251, baseType: !49, size: 8, offset: 120)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !734, file: !85, line: 251, baseType: !140, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !734, file: !85, line: 251, baseType: !16, size: 32, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !734, file: !85, line: 251, baseType: !16, size: 32, offset: 224)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !734, file: !85, line: 251, baseType: !16, size: 32, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !734, file: !85, line: 251, baseType: !49, size: 8, offset: 288)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !734, file: !85, line: 251, baseType: !49, size: 8, offset: 296)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !734, file: !85, line: 256, baseType: !99, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !734, file: !85, line: 257, baseType: !99, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !93, file: !85, line: 387, baseType: !753, size: 512)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !85, line: 273, size: 512, elements: !754)
!754 = !{!755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !753, file: !85, line: 274, baseType: !99, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !753, file: !85, line: 274, baseType: !49, size: 8, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !85, line: 274, baseType: !49, size: 8, offset: 72)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !753, file: !85, line: 274, baseType: !80, size: 16, offset: 80)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !85, line: 274, baseType: !49, size: 8, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !753, file: !85, line: 274, baseType: !140, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !753, file: !85, line: 275, baseType: !16, size: 32, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !753, file: !85, line: 276, baseType: !432, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !753, file: !85, line: 277, baseType: !65, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !753, file: !85, line: 278, baseType: !538, size: 128, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !93, file: !85, line: 388, baseType: !766, size: 512)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !85, line: 281, size: 512, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !781, !782, !783, !789, !790}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !85, line: 282, baseType: !99, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !85, line: 282, baseType: !49, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !85, line: 282, baseType: !49, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !85, line: 282, baseType: !80, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !85, line: 282, baseType: !49, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !766, file: !85, line: 282, baseType: !49, size: 8, offset: 104)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !766, file: !85, line: 283, baseType: !49, size: 8, offset: 112)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !766, file: !85, line: 284, baseType: !776, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !15, line: 1084, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!14, !16, !527, !16, !780, !65, !65}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !766, file: !85, line: 285, baseType: !140, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !766, file: !85, line: 286, baseType: !65, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !766, file: !85, line: 287, baseType: !784, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !15, line: 1102, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!14, !64, !16, !65, !788}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !766, file: !85, line: 288, baseType: !99, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !766, file: !85, line: 289, baseType: !99, size: 64, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !93, file: !85, line: 389, baseType: !792, size: 512)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !85, line: 307, size: 512, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !792, file: !85, line: 308, baseType: !99, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !792, file: !85, line: 308, baseType: !49, size: 8, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !792, file: !85, line: 308, baseType: !49, size: 8, offset: 72)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !792, file: !85, line: 308, baseType: !80, size: 16, offset: 80)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !792, file: !85, line: 308, baseType: !49, size: 8, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !792, file: !85, line: 308, baseType: !49, size: 8, offset: 104)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !792, file: !85, line: 309, baseType: !49, size: 8, offset: 112)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !792, file: !85, line: 310, baseType: !49, size: 8, offset: 120)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !792, file: !85, line: 311, baseType: !65, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !792, file: !85, line: 312, baseType: !140, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !792, file: !85, line: 313, baseType: !172, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !792, file: !85, line: 314, baseType: !48, size: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !792, file: !85, line: 315, baseType: !48, size: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !792, file: !85, line: 316, baseType: !16, size: 32, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !93, file: !85, line: 390, baseType: !809, size: 448)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !85, line: 340, size: 448, elements: !810)
!810 = !{!811, !812, !813, !814, !815, !816, !817, !818, !819, !820}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !809, file: !85, line: 341, baseType: !99, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !809, file: !85, line: 341, baseType: !49, size: 8, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !809, file: !85, line: 341, baseType: !49, size: 8, offset: 72)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !809, file: !85, line: 341, baseType: !80, size: 16, offset: 80)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !809, file: !85, line: 341, baseType: !49, size: 8, offset: 96)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !809, file: !85, line: 341, baseType: !140, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !809, file: !85, line: 342, baseType: !140, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !809, file: !85, line: 343, baseType: !65, size: 64, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !809, file: !85, line: 344, baseType: !48, size: 64, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !809, file: !85, line: 345, baseType: !16, size: 32, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !93, file: !85, line: 391, baseType: !822, size: 256)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !85, line: 350, size: 256, elements: !823)
!823 = !{!824, !825, !826, !827, !828, !829, !834}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !822, file: !85, line: 351, baseType: !99, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !822, file: !85, line: 351, baseType: !49, size: 8, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !822, file: !85, line: 351, baseType: !49, size: 8, offset: 72)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !822, file: !85, line: 351, baseType: !80, size: 16, offset: 80)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !822, file: !85, line: 351, baseType: !49, size: 8, offset: 96)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !822, file: !85, line: 351, baseType: !830, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !15, line: 1055, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !64, !65}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !822, file: !85, line: 352, baseType: !65, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !93, file: !85, line: 392, baseType: !836, size: 192)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !85, line: 357, size: 192, elements: !837)
!837 = !{!838, !839, !840, !841, !842, !843}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !836, file: !85, line: 358, baseType: !99, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !836, file: !85, line: 358, baseType: !49, size: 8, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !836, file: !85, line: 358, baseType: !49, size: 8, offset: 72)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !836, file: !85, line: 358, baseType: !80, size: 16, offset: 80)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !836, file: !85, line: 358, baseType: !49, size: 8, offset: 96)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !836, file: !85, line: 358, baseType: !99, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !93, file: !85, line: 399, baseType: !141, size: 384)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !84, file: !85, line: 435, baseType: !141, size: 384)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !84, file: !85, line: 436, baseType: !242, size: 1600)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !848, line: 148, baseType: !7)
!848 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!849 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!850 = !{!0}
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 72, elements: !451)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!853 = !{!"rsp"}
!854 = !{i32 7, !"Dwarf Version", i32 4}
!855 = !{i32 2, !"Debug Info Version", i32 3}
!856 = !{i32 1, !"wchar_size", i32 2}
!857 = !{i32 1, !"Code Model", i32 2}
!858 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!859 = distinct !DISubprogram(name: "acpi_evaluate_object_typed", scope: !3, file: !3, line: 44, type: !860, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !873)
!860 = !DISubroutineType(types: !861)
!861 = !{!14, !64, !862, !863, !868, !28}
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !15, line: 423, baseType: !40)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !15, line: 947, size: 128, elements: !865)
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !864, file: !15, line: 948, baseType: !16, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !864, file: !15, line: 949, baseType: !24, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !15, line: 969, size: 128, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !869, file: !15, line: 970, baseType: !20, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !869, file: !15, line: 971, baseType: !65, size: 64, offset: 64)
!873 = !{}
!874 = !DILocalVariable(name: "handle", arg: 1, scope: !859, file: !3, line: 44, type: !64)
!875 = !DILocation(line: 44, column: 40, scope: !859)
!876 = !DILocalVariable(name: "pathname", arg: 2, scope: !859, file: !3, line: 45, type: !862)
!877 = !DILocation(line: 45, column: 19, scope: !859)
!878 = !DILocalVariable(name: "external_params", arg: 3, scope: !859, file: !3, line: 46, type: !863)
!879 = !DILocation(line: 46, column: 32, scope: !859)
!880 = !DILocalVariable(name: "return_buffer", arg: 4, scope: !859, file: !3, line: 47, type: !868)
!881 = !DILocation(line: 47, column: 27, scope: !859)
!882 = !DILocalVariable(name: "return_type", arg: 5, scope: !859, file: !3, line: 48, type: !28)
!883 = !DILocation(line: 48, column: 24, scope: !859)
!884 = !DILocalVariable(name: "status", scope: !859, file: !3, line: 50, type: !14)
!885 = !DILocation(line: 50, column: 14, scope: !859)
!886 = !DILocalVariable(name: "free_buffer_on_error", scope: !859, file: !3, line: 51, type: !49)
!887 = !DILocation(line: 51, column: 5, scope: !859)
!888 = !DILocalVariable(name: "target_handle", scope: !859, file: !3, line: 52, type: !64)
!889 = !DILocation(line: 52, column: 14, scope: !859)
!890 = !DILocalVariable(name: "full_pathname", scope: !859, file: !3, line: 53, type: !40)
!891 = !DILocation(line: 53, column: 8, scope: !859)
!892 = !DILocation(line: 59, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !859, file: !3, line: 59, column: 6)
!894 = !DILocation(line: 59, column: 6, scope: !859)
!895 = !DILocation(line: 60, column: 3, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 59, column: 22)
!897 = !DILocation(line: 63, column: 6, scope: !898)
!898 = distinct !DILexicalBlock(scope: !859, file: !3, line: 63, column: 6)
!899 = !DILocation(line: 63, column: 21, scope: !898)
!900 = !DILocation(line: 63, column: 28, scope: !898)
!901 = !DILocation(line: 63, column: 6, scope: !859)
!902 = !DILocation(line: 64, column: 24, scope: !903)
!903 = distinct !DILexicalBlock(scope: !898, file: !3, line: 63, column: 53)
!904 = !DILocation(line: 65, column: 2, scope: !903)
!905 = !DILocation(line: 69, column: 18, scope: !859)
!906 = !DILocation(line: 69, column: 16, scope: !859)
!907 = !DILocation(line: 70, column: 6, scope: !908)
!908 = distinct !DILexicalBlock(scope: !859, file: !3, line: 70, column: 6)
!909 = !DILocation(line: 70, column: 6, scope: !859)
!910 = !DILocation(line: 71, column: 28, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !3, line: 70, column: 16)
!912 = !DILocation(line: 71, column: 36, scope: !911)
!913 = !DILocation(line: 71, column: 12, scope: !911)
!914 = !DILocation(line: 71, column: 10, scope: !911)
!915 = !DILocation(line: 72, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !911, file: !3, line: 72, column: 7)
!917 = !DILocation(line: 72, column: 7, scope: !911)
!918 = !DILocation(line: 73, column: 4, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !3, line: 72, column: 29)
!920 = !DILocation(line: 75, column: 2, scope: !911)
!921 = !DILocation(line: 77, column: 48, scope: !859)
!922 = !DILocation(line: 77, column: 18, scope: !859)
!923 = !DILocation(line: 77, column: 16, scope: !859)
!924 = !DILocation(line: 78, column: 7, scope: !925)
!925 = distinct !DILexicalBlock(scope: !859, file: !3, line: 78, column: 6)
!926 = !DILocation(line: 78, column: 6, scope: !859)
!927 = !DILocation(line: 79, column: 3, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !3, line: 78, column: 22)
!929 = !DILocation(line: 84, column: 32, scope: !859)
!930 = !DILocation(line: 84, column: 53, scope: !859)
!931 = !DILocation(line: 85, column: 11, scope: !859)
!932 = !DILocation(line: 84, column: 11, scope: !859)
!933 = !DILocation(line: 84, column: 9, scope: !859)
!934 = !DILocation(line: 86, column: 6, scope: !935)
!935 = distinct !DILexicalBlock(scope: !859, file: !3, line: 86, column: 6)
!936 = !DILocation(line: 86, column: 6, scope: !859)
!937 = !DILocation(line: 87, column: 3, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 86, column: 28)
!939 = !DILocation(line: 92, column: 6, scope: !940)
!940 = distinct !DILexicalBlock(scope: !859, file: !3, line: 92, column: 6)
!941 = !DILocation(line: 92, column: 18, scope: !940)
!942 = !DILocation(line: 92, column: 6, scope: !859)
!943 = !DILocation(line: 93, column: 3, scope: !944)
!944 = distinct !DILexicalBlock(scope: !940, file: !3, line: 92, column: 36)
!945 = !DILocation(line: 96, column: 6, scope: !946)
!946 = distinct !DILexicalBlock(scope: !859, file: !3, line: 96, column: 6)
!947 = !DILocation(line: 96, column: 21, scope: !946)
!948 = !DILocation(line: 96, column: 28, scope: !946)
!949 = !DILocation(line: 96, column: 6, scope: !859)
!950 = !DILocation(line: 100, column: 3, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !3, line: 96, column: 34)
!952 = !DILocation(line: 102, column: 10, scope: !951)
!953 = !DILocation(line: 103, column: 3, scope: !951)
!954 = !DILocation(line: 108, column: 28, scope: !955)
!955 = distinct !DILexicalBlock(scope: !859, file: !3, line: 108, column: 6)
!956 = !DILocation(line: 108, column: 43, scope: !955)
!957 = !DILocation(line: 108, column: 7, scope: !955)
!958 = !DILocation(line: 108, column: 53, scope: !955)
!959 = !DILocation(line: 108, column: 61, scope: !955)
!960 = !DILocation(line: 108, column: 58, scope: !955)
!961 = !DILocation(line: 108, column: 6, scope: !859)
!962 = !DILocation(line: 109, column: 3, scope: !963)
!963 = distinct !DILexicalBlock(scope: !955, file: !3, line: 108, column: 74)
!964 = !DILocation(line: 114, column: 2, scope: !859)
!965 = !DILocation(line: 121, column: 6, scope: !966)
!966 = distinct !DILexicalBlock(scope: !859, file: !3, line: 121, column: 6)
!967 = !DILocation(line: 121, column: 6, scope: !859)
!968 = !DILocation(line: 129, column: 16, scope: !969)
!969 = distinct !DILexicalBlock(scope: !966, file: !3, line: 121, column: 28)
!970 = !DILocation(line: 129, column: 31, scope: !969)
!971 = !DILocation(line: 129, column: 3, scope: !969)
!972 = !DILocation(line: 130, column: 3, scope: !969)
!973 = !DILocation(line: 130, column: 18, scope: !969)
!974 = !DILocation(line: 130, column: 26, scope: !969)
!975 = !DILocation(line: 131, column: 2, scope: !969)
!976 = !DILocation(line: 133, column: 2, scope: !859)
!977 = !DILocation(line: 133, column: 17, scope: !859)
!978 = !DILocation(line: 133, column: 24, scope: !859)
!979 = !DILocation(line: 134, column: 9, scope: !859)
!980 = !DILocation(line: 134, column: 2, scope: !859)
!981 = !DILabel(scope: !859, name: "exit", file: !3, line: 136)
!982 = !DILocation(line: 136, column: 1, scope: !859)
!983 = !DILocation(line: 137, column: 2, scope: !859)
!984 = !DILocation(line: 138, column: 2, scope: !859)
!985 = !DILocation(line: 139, column: 1, scope: !859)
!986 = distinct !DISubprogram(name: "acpi_evaluate_object", scope: !3, file: !3, line: 163, type: !987, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !873)
!987 = !DISubroutineType(types: !988)
!988 = !{!14, !64, !862, !863, !868}
!989 = !DILocalVariable(name: "handle", arg: 1, scope: !986, file: !3, line: 163, type: !64)
!990 = !DILocation(line: 163, column: 34, scope: !986)
!991 = !DILocalVariable(name: "pathname", arg: 2, scope: !986, file: !3, line: 164, type: !862)
!992 = !DILocation(line: 164, column: 20, scope: !986)
!993 = !DILocalVariable(name: "external_params", arg: 3, scope: !986, file: !3, line: 165, type: !863)
!994 = !DILocation(line: 165, column: 33, scope: !986)
!995 = !DILocalVariable(name: "return_buffer", arg: 4, scope: !986, file: !3, line: 166, type: !868)
!996 = !DILocation(line: 166, column: 28, scope: !986)
!997 = !DILocalVariable(name: "status", scope: !986, file: !3, line: 168, type: !14)
!998 = !DILocation(line: 168, column: 14, scope: !986)
!999 = !DILocalVariable(name: "info", scope: !986, file: !3, line: 169, type: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !209, line: 152, size: 704, elements: !1002)
!1002 = !{!1003, !1004, !1006, !1007, !1008, !1009, !1010, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !1001, file: !209, line: 155, baseType: !140, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !1001, file: !209, line: 156, baseType: !1005, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1001, file: !209, line: 157, baseType: !172, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1001, file: !209, line: 159, baseType: !140, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1001, file: !209, line: 160, baseType: !99, size: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !1001, file: !209, line: 161, baseType: !40, size: 64, offset: 320)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !1001, file: !209, line: 163, baseType: !1011, size: 64, offset: 384)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !142, line: 351, size: 56, elements: !1014)
!1014 = !{!1015, !1021, !1030, !1038, !1047}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1013, file: !142, line: 352, baseType: !1016, size: 56)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !142, line: 295, size: 56, elements: !1017)
!1017 = !{!1018, !1019, !1020}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1016, file: !142, line: 296, baseType: !154, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !1016, file: !142, line: 297, baseType: !80, size: 16, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !1016, file: !142, line: 298, baseType: !49, size: 8, offset: 48)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !1013, file: !142, line: 353, baseType: !1022, size: 56)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !142, line: 314, size: 56, elements: !1023)
!1023 = !{!1024, !1025, !1026, !1027, !1028, !1029}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1022, file: !142, line: 315, baseType: !49, size: 8)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1022, file: !142, line: 316, baseType: !49, size: 8, offset: 8)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1022, file: !142, line: 317, baseType: !49, size: 8, offset: 16)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !1022, file: !142, line: 318, baseType: !49, size: 8, offset: 24)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !1022, file: !142, line: 319, baseType: !49, size: 8, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1022, file: !142, line: 320, baseType: !80, size: 16, offset: 40)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !1013, file: !142, line: 354, baseType: !1031, size: 56)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !142, line: 325, size: 56, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1037}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1031, file: !142, line: 326, baseType: !49, size: 8)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1031, file: !142, line: 327, baseType: !49, size: 8, offset: 8)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1031, file: !142, line: 328, baseType: !1036, size: 32, offset: 16)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 32, elements: !155)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1031, file: !142, line: 329, baseType: !49, size: 8, offset: 48)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !1013, file: !142, line: 355, baseType: !1039, size: 56)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !142, line: 334, size: 56, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1045, !1046}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1039, file: !142, line: 335, baseType: !49, size: 8)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1039, file: !142, line: 336, baseType: !49, size: 8, offset: 8)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1039, file: !142, line: 337, baseType: !1044, size: 16, offset: 16)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 16, elements: !539)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !1039, file: !142, line: 338, baseType: !49, size: 8, offset: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1039, file: !142, line: 339, baseType: !80, size: 16, offset: 40)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !1013, file: !142, line: 356, baseType: !1048, size: 56)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !142, line: 342, size: 56, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1048, file: !142, line: 343, baseType: !49, size: 8)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1048, file: !142, line: 344, baseType: !49, size: 8, offset: 8)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1048, file: !142, line: 345, baseType: !49, size: 8, offset: 16)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !1048, file: !142, line: 346, baseType: !49, size: 8, offset: 24)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !1048, file: !142, line: 347, baseType: !49, size: 8, offset: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1048, file: !142, line: 348, baseType: !80, size: 16, offset: 40)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !1001, file: !209, line: 164, baseType: !99, size: 64, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !1001, file: !209, line: 165, baseType: !99, size: 64, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !1001, file: !209, line: 167, baseType: !16, size: 32, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !1001, file: !209, line: 168, baseType: !16, size: 32, offset: 608)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1001, file: !209, line: 169, baseType: !80, size: 16, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !1001, file: !209, line: 170, baseType: !80, size: 16, offset: 656)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !1001, file: !209, line: 171, baseType: !49, size: 8, offset: 672)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !1001, file: !209, line: 172, baseType: !49, size: 8, offset: 680)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !209, line: 173, baseType: !49, size: 8, offset: 688)
!1065 = !DILocation(line: 169, column: 29, scope: !986)
!1066 = !DILocalVariable(name: "buffer_space_needed", scope: !986, file: !3, line: 170, type: !20)
!1067 = !DILocation(line: 170, column: 12, scope: !986)
!1068 = !DILocalVariable(name: "i", scope: !986, file: !3, line: 171, type: !16)
!1069 = !DILocation(line: 171, column: 6, scope: !986)
!1070 = !DILocation(line: 177, column: 9, scope: !986)
!1071 = !DILocation(line: 177, column: 7, scope: !986)
!1072 = !DILocation(line: 178, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !986, file: !3, line: 178, column: 6)
!1074 = !DILocation(line: 178, column: 6, scope: !986)
!1075 = !DILocation(line: 179, column: 3, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 178, column: 13)
!1077 = !DILocation(line: 184, column: 46, scope: !986)
!1078 = !DILocation(line: 184, column: 22, scope: !986)
!1079 = !DILocation(line: 184, column: 2, scope: !986)
!1080 = !DILocation(line: 184, column: 8, scope: !986)
!1081 = !DILocation(line: 184, column: 20, scope: !986)
!1082 = !DILocation(line: 185, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !986, file: !3, line: 185, column: 6)
!1084 = !DILocation(line: 185, column: 13, scope: !1083)
!1085 = !DILocation(line: 185, column: 6, scope: !986)
!1086 = !DILocation(line: 186, column: 10, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 185, column: 26)
!1088 = !DILocation(line: 187, column: 3, scope: !1087)
!1089 = !DILocation(line: 198, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !986, file: !3, line: 198, column: 6)
!1091 = !DILocation(line: 198, column: 6, scope: !1090)
!1092 = !DILocation(line: 198, column: 17, scope: !1090)
!1093 = !DILocation(line: 198, column: 21, scope: !1090)
!1094 = !DILocation(line: 198, column: 6, scope: !986)
!1095 = !DILocation(line: 202, column: 3, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 198, column: 56)
!1097 = !DILocation(line: 202, column: 9, scope: !1096)
!1098 = !DILocation(line: 202, column: 21, scope: !1096)
!1099 = !DILocation(line: 203, column: 2, scope: !1096)
!1100 = !DILocation(line: 203, column: 14, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 203, column: 13)
!1102 = !DILocation(line: 203, column: 13, scope: !1090)
!1103 = !DILocation(line: 209, column: 8, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 209, column: 7)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 203, column: 22)
!1106 = !DILocation(line: 209, column: 7, scope: !1105)
!1107 = !DILocation(line: 212, column: 3, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 209, column: 18)
!1109 = !DILocation(line: 218, column: 10, scope: !1105)
!1110 = !DILocation(line: 219, column: 3, scope: !1105)
!1111 = !DILocation(line: 222, column: 28, scope: !986)
!1112 = !DILocation(line: 222, column: 2, scope: !986)
!1113 = !DILocation(line: 222, column: 8, scope: !986)
!1114 = !DILocation(line: 222, column: 26, scope: !986)
!1115 = !DILocation(line: 228, column: 6, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !986, file: !3, line: 228, column: 6)
!1117 = !DILocation(line: 228, column: 22, scope: !1116)
!1118 = !DILocation(line: 228, column: 25, scope: !1116)
!1119 = !DILocation(line: 228, column: 42, scope: !1116)
!1120 = !DILocation(line: 228, column: 6, scope: !986)
!1121 = !DILocation(line: 229, column: 28, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 228, column: 49)
!1123 = !DILocation(line: 229, column: 45, scope: !1122)
!1124 = !DILocation(line: 229, column: 23, scope: !1122)
!1125 = !DILocation(line: 229, column: 3, scope: !1122)
!1126 = !DILocation(line: 229, column: 9, scope: !1122)
!1127 = !DILocation(line: 229, column: 21, scope: !1122)
!1128 = !DILocation(line: 233, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 233, column: 7)
!1130 = !DILocation(line: 233, column: 13, scope: !1129)
!1131 = !DILocation(line: 233, column: 25, scope: !1129)
!1132 = !DILocation(line: 233, column: 7, scope: !1122)
!1133 = !DILocation(line: 234, column: 4, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 233, column: 49)
!1135 = !DILocation(line: 240, column: 4, scope: !1134)
!1136 = !DILocation(line: 240, column: 10, scope: !1134)
!1137 = !DILocation(line: 240, column: 22, scope: !1134)
!1138 = !DILocation(line: 241, column: 3, scope: !1134)
!1139 = !DILocation(line: 247, column: 22, scope: !1122)
!1140 = !DILocation(line: 247, column: 3, scope: !1122)
!1141 = !DILocation(line: 247, column: 9, scope: !1122)
!1142 = !DILocation(line: 247, column: 20, scope: !1122)
!1143 = !DILocation(line: 250, column: 8, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 250, column: 7)
!1145 = !DILocation(line: 250, column: 14, scope: !1144)
!1146 = !DILocation(line: 250, column: 7, scope: !1122)
!1147 = !DILocation(line: 251, column: 11, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 250, column: 26)
!1149 = !DILocation(line: 252, column: 4, scope: !1148)
!1150 = !DILocation(line: 257, column: 10, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 257, column: 3)
!1152 = !DILocation(line: 257, column: 8, scope: !1151)
!1153 = !DILocation(line: 257, column: 15, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 257, column: 3)
!1155 = !DILocation(line: 257, column: 19, scope: !1154)
!1156 = !DILocation(line: 257, column: 25, scope: !1154)
!1157 = !DILocation(line: 257, column: 17, scope: !1154)
!1158 = !DILocation(line: 257, column: 3, scope: !1151)
!1159 = !DILocation(line: 259, column: 41, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 257, column: 43)
!1161 = !DILocation(line: 260, column: 12, scope: !1160)
!1162 = !DILocation(line: 260, column: 20, scope: !1160)
!1163 = !DILocation(line: 261, column: 13, scope: !1160)
!1164 = !DILocation(line: 262, column: 12, scope: !1160)
!1165 = !DILocation(line: 262, column: 23, scope: !1160)
!1166 = !DILocation(line: 259, column: 8, scope: !1160)
!1167 = !DILocation(line: 258, column: 11, scope: !1160)
!1168 = !DILocation(line: 263, column: 8, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 263, column: 8)
!1170 = !DILocation(line: 263, column: 8, scope: !1160)
!1171 = !DILocation(line: 264, column: 5, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 263, column: 30)
!1173 = !DILocation(line: 266, column: 3, scope: !1160)
!1174 = !DILocation(line: 257, column: 39, scope: !1154)
!1175 = !DILocation(line: 257, column: 3, scope: !1154)
!1176 = distinct !{!1176, !1158, !1177}
!1177 = !DILocation(line: 266, column: 3, scope: !1151)
!1178 = !DILocation(line: 268, column: 3, scope: !1122)
!1179 = !DILocation(line: 268, column: 9, scope: !1122)
!1180 = !DILocation(line: 268, column: 20, scope: !1122)
!1181 = !DILocation(line: 268, column: 26, scope: !1122)
!1182 = !DILocation(line: 268, column: 39, scope: !1122)
!1183 = !DILocation(line: 269, column: 2, scope: !1122)
!1184 = !DILocation(line: 354, column: 28, scope: !986)
!1185 = !DILocation(line: 354, column: 11, scope: !986)
!1186 = !DILocation(line: 354, column: 9, scope: !986)
!1187 = !DILocation(line: 360, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !986, file: !3, line: 360, column: 6)
!1189 = !DILocation(line: 360, column: 6, scope: !986)
!1190 = !DILocation(line: 361, column: 3, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 360, column: 22)
!1192 = !DILocation(line: 364, column: 7, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !986, file: !3, line: 364, column: 6)
!1194 = !DILocation(line: 364, column: 13, scope: !1193)
!1195 = !DILocation(line: 364, column: 6, scope: !986)
!1196 = !DILocation(line: 365, column: 3, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 364, column: 28)
!1198 = !DILocation(line: 365, column: 18, scope: !1197)
!1199 = !DILocation(line: 365, column: 25, scope: !1197)
!1200 = !DILocation(line: 366, column: 3, scope: !1197)
!1201 = !DILocation(line: 369, column: 6, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !986, file: !3, line: 369, column: 6)
!1203 = !DILocation(line: 369, column: 52, scope: !1202)
!1204 = !DILocation(line: 369, column: 6, scope: !986)
!1205 = !DILocation(line: 379, column: 10, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 370, column: 28)
!1207 = !DILocation(line: 380, column: 3, scope: !1206)
!1208 = !DILocation(line: 380, column: 9, scope: !1206)
!1209 = !DILocation(line: 380, column: 23, scope: !1206)
!1210 = !DILocation(line: 381, column: 3, scope: !1206)
!1211 = !DILocation(line: 381, column: 18, scope: !1206)
!1212 = !DILocation(line: 381, column: 25, scope: !1206)
!1213 = !DILocation(line: 382, column: 2, scope: !1206)
!1214 = !DILocation(line: 384, column: 6, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !986, file: !3, line: 384, column: 6)
!1216 = !DILocation(line: 384, column: 6, scope: !986)
!1217 = !DILocation(line: 385, column: 3, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 384, column: 28)
!1219 = !DILocation(line: 390, column: 29, scope: !986)
!1220 = !DILocation(line: 390, column: 2, scope: !986)
!1221 = !DILocation(line: 394, column: 35, scope: !986)
!1222 = !DILocation(line: 394, column: 41, scope: !986)
!1223 = !DILocation(line: 394, column: 11, scope: !986)
!1224 = !DILocation(line: 394, column: 9, scope: !986)
!1225 = !DILocation(line: 396, column: 6, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !986, file: !3, line: 396, column: 6)
!1227 = !DILocation(line: 396, column: 6, scope: !986)
!1228 = !DILocation(line: 400, column: 38, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 396, column: 28)
!1230 = !DILocation(line: 401, column: 10, scope: !1229)
!1231 = !DILocation(line: 400, column: 12, scope: !1229)
!1232 = !DILocation(line: 400, column: 10, scope: !1229)
!1233 = !DILocation(line: 402, column: 7, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 402, column: 7)
!1235 = !DILocation(line: 402, column: 7, scope: !1229)
!1236 = !DILocation(line: 411, column: 3, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 402, column: 29)
!1238 = !DILocation(line: 415, column: 40, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 411, column: 10)
!1240 = !DILocation(line: 415, column: 46, scope: !1239)
!1241 = !DILocation(line: 416, column: 12, scope: !1239)
!1242 = !DILocation(line: 415, column: 8, scope: !1239)
!1243 = !DILocation(line: 414, column: 11, scope: !1239)
!1244 = !DILocation(line: 418, column: 2, scope: !1229)
!1245 = !DILabel(scope: !986, name: "cleanup_return_object", file: !3, line: 420)
!1246 = !DILocation(line: 420, column: 1, scope: !986)
!1247 = !DILocation(line: 422, column: 6, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !986, file: !3, line: 422, column: 6)
!1249 = !DILocation(line: 422, column: 12, scope: !1248)
!1250 = !DILocation(line: 422, column: 6, scope: !986)
!1251 = !DILocation(line: 427, column: 3, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 422, column: 27)
!1253 = !DILocation(line: 431, column: 28, scope: !1252)
!1254 = !DILocation(line: 431, column: 34, scope: !1252)
!1255 = !DILocation(line: 431, column: 3, scope: !1252)
!1256 = !DILocation(line: 432, column: 3, scope: !1252)
!1257 = !DILocation(line: 433, column: 2, scope: !1252)
!1258 = !DILabel(scope: !986, name: "cleanup", file: !3, line: 435)
!1259 = !DILocation(line: 435, column: 1, scope: !986)
!1260 = !DILocation(line: 439, column: 6, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !986, file: !3, line: 439, column: 6)
!1262 = !DILocation(line: 439, column: 12, scope: !1261)
!1263 = !DILocation(line: 439, column: 6, scope: !986)
!1264 = !DILocation(line: 443, column: 39, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 439, column: 24)
!1266 = !DILocation(line: 443, column: 45, scope: !1265)
!1267 = !DILocation(line: 443, column: 3, scope: !1265)
!1268 = !DILocation(line: 444, column: 2, scope: !1265)
!1269 = !DILocation(line: 446, column: 2, scope: !986)
!1270 = !DILocation(line: 447, column: 2, scope: !986)
!1271 = !DILocation(line: 448, column: 1, scope: !986)
!1272 = distinct !DISubprogram(name: "acpi_os_free", scope: !1273, file: !1273, line: 60, type: !1274, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1273 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !65}
!1276 = !DILocalVariable(name: "memory", arg: 1, scope: !1272, file: !1273, line: 60, type: !65)
!1277 = !DILocation(line: 60, column: 39, scope: !1272)
!1278 = !DILocation(line: 62, column: 8, scope: !1272)
!1279 = !DILocation(line: 62, column: 2, scope: !1272)
!1280 = !DILocation(line: 63, column: 1, scope: !1272)
!1281 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1273, file: !1273, line: 55, type: !1282, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!65, !20}
!1284 = !DILocalVariable(name: "flags", arg: 1, scope: !1285, file: !1286, line: 162, type: !849)
!1285 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1286, file: !1286, line: 162, type: !1287, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1286 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!1289, !849}
!1289 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1290 = !DILocation(line: 162, column: 67, scope: !1285, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 57, column: 23, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !1273, line: 57, column: 23)
!1293 = distinct !DILexicalBlock(scope: !1281, file: !1273, line: 57, column: 23)
!1294 = !DILocalVariable(name: "size", arg: 1, scope: !1281, file: !1273, line: 55, type: !20)
!1295 = !DILocation(line: 55, column: 55, scope: !1281)
!1296 = !DILocation(line: 57, column: 17, scope: !1281)
!1297 = !DILocalVariable(name: "_flags", scope: !1293, file: !1273, line: 57, type: !849)
!1298 = !DILocation(line: 57, column: 23, scope: !1293)
!1299 = !DILocalVariable(name: "__dummy", scope: !1300, file: !1273, line: 57, type: !849)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !1273, line: 57, column: 23)
!1301 = distinct !DILexicalBlock(scope: !1293, file: !1273, line: 57, column: 23)
!1302 = !DILocation(line: 57, column: 23, scope: !1300)
!1303 = !DILocalVariable(name: "__dummy2", scope: !1300, file: !1273, line: 57, type: !849)
!1304 = !DILocation(line: 57, column: 23, scope: !1301)
!1305 = !DILocalVariable(name: "__dummy", scope: !1306, file: !1273, line: 57, type: !849)
!1306 = distinct !DILexicalBlock(scope: !1292, file: !1273, line: 57, column: 23)
!1307 = !DILocation(line: 57, column: 23, scope: !1306)
!1308 = !DILocalVariable(name: "__dummy2", scope: !1306, file: !1273, line: 57, type: !849)
!1309 = !DILocation(line: 57, column: 23, scope: !1292)
!1310 = !DILocation(line: 164, column: 11, scope: !1285, inlinedAt: !1291)
!1311 = !DILocation(line: 164, column: 17, scope: !1285, inlinedAt: !1291)
!1312 = !DILocation(line: 164, column: 9, scope: !1285, inlinedAt: !1291)
!1313 = !DILocation(line: 57, column: 23, scope: !1281)
!1314 = !DILocation(line: 57, column: 9, scope: !1281)
!1315 = !DILocation(line: 57, column: 2, scope: !1281)
!1316 = distinct !DISubprogram(name: "acpi_ns_resolve_references", scope: !3, file: !3, line: 472, type: !1317, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !1000}
!1319 = !DILocalVariable(name: "info", arg: 1, scope: !1316, file: !3, line: 472, type: !1000)
!1320 = !DILocation(line: 472, column: 67, scope: !1316)
!1321 = !DILocalVariable(name: "obj_desc", scope: !1316, file: !3, line: 474, type: !99)
!1322 = !DILocation(line: 474, column: 29, scope: !1316)
!1323 = !DILocalVariable(name: "node", scope: !1316, file: !3, line: 475, type: !140)
!1324 = !DILocation(line: 475, column: 30, scope: !1316)
!1325 = !DILocation(line: 479, column: 7, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 479, column: 6)
!1327 = !DILocation(line: 479, column: 13, scope: !1326)
!1328 = !DILocation(line: 479, column: 29, scope: !1326)
!1329 = !DILocation(line: 479, column: 36, scope: !1326)
!1330 = !DILocation(line: 479, column: 6, scope: !1326)
!1331 = !DILocation(line: 479, column: 41, scope: !1326)
!1332 = !DILocation(line: 479, column: 6, scope: !1316)
!1333 = !DILocation(line: 480, column: 3, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 479, column: 71)
!1335 = !DILocation(line: 490, column: 10, scope: !1316)
!1336 = !DILocation(line: 490, column: 16, scope: !1316)
!1337 = !DILocation(line: 490, column: 31, scope: !1316)
!1338 = !DILocation(line: 490, column: 41, scope: !1316)
!1339 = !DILocation(line: 490, column: 2, scope: !1316)
!1340 = !DILocation(line: 493, column: 16, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 490, column: 48)
!1342 = !DILocation(line: 493, column: 22, scope: !1341)
!1343 = !DILocation(line: 493, column: 37, scope: !1341)
!1344 = !DILocation(line: 493, column: 47, scope: !1341)
!1345 = !DILocation(line: 493, column: 14, scope: !1341)
!1346 = !DILocation(line: 493, column: 12, scope: !1341)
!1347 = !DILocation(line: 494, column: 3, scope: !1341)
!1348 = !DILocation(line: 498, column: 10, scope: !1341)
!1349 = !DILocation(line: 498, column: 16, scope: !1341)
!1350 = !DILocation(line: 498, column: 31, scope: !1341)
!1351 = !DILocation(line: 498, column: 41, scope: !1341)
!1352 = !DILocation(line: 498, column: 8, scope: !1341)
!1353 = !DILocation(line: 499, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 499, column: 7)
!1355 = !DILocation(line: 499, column: 7, scope: !1341)
!1356 = !DILocation(line: 500, column: 15, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 499, column: 13)
!1358 = !DILocation(line: 500, column: 21, scope: !1357)
!1359 = !DILocation(line: 500, column: 13, scope: !1357)
!1360 = !DILocation(line: 501, column: 3, scope: !1357)
!1361 = !DILocation(line: 502, column: 3, scope: !1341)
!1362 = !DILocation(line: 506, column: 3, scope: !1341)
!1363 = !DILocation(line: 511, column: 6, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 511, column: 6)
!1365 = !DILocation(line: 511, column: 6, scope: !1316)
!1366 = !DILocation(line: 512, column: 25, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 511, column: 16)
!1368 = !DILocation(line: 512, column: 3, scope: !1367)
!1369 = !DILocation(line: 513, column: 28, scope: !1367)
!1370 = !DILocation(line: 513, column: 34, scope: !1367)
!1371 = !DILocation(line: 513, column: 3, scope: !1367)
!1372 = !DILocation(line: 514, column: 25, scope: !1367)
!1373 = !DILocation(line: 514, column: 3, scope: !1367)
!1374 = !DILocation(line: 514, column: 9, scope: !1367)
!1375 = !DILocation(line: 514, column: 23, scope: !1367)
!1376 = !DILocation(line: 515, column: 2, scope: !1367)
!1377 = !DILocation(line: 517, column: 2, scope: !1316)
!1378 = !DILocation(line: 518, column: 1, scope: !1316)
!1379 = distinct !DISubprogram(name: "acpi_walk_namespace", scope: !3, file: !3, line: 554, type: !1380, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!14, !28, !64, !16, !1382, !1382, !65, !788}
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !15, line: 1111, baseType: !785)
!1383 = !DILocalVariable(name: "type", arg: 1, scope: !1379, file: !3, line: 554, type: !28)
!1384 = !DILocation(line: 554, column: 38, scope: !1379)
!1385 = !DILocalVariable(name: "start_object", arg: 2, scope: !1379, file: !3, line: 555, type: !64)
!1386 = !DILocation(line: 555, column: 19, scope: !1379)
!1387 = !DILocalVariable(name: "max_depth", arg: 3, scope: !1379, file: !3, line: 556, type: !16)
!1388 = !DILocation(line: 556, column: 11, scope: !1379)
!1389 = !DILocalVariable(name: "descending_callback", arg: 4, scope: !1379, file: !3, line: 557, type: !1382)
!1390 = !DILocation(line: 557, column: 26, scope: !1379)
!1391 = !DILocalVariable(name: "ascending_callback", arg: 5, scope: !1379, file: !3, line: 558, type: !1382)
!1392 = !DILocation(line: 558, column: 26, scope: !1379)
!1393 = !DILocalVariable(name: "context", arg: 6, scope: !1379, file: !3, line: 559, type: !65)
!1394 = !DILocation(line: 559, column: 13, scope: !1379)
!1395 = !DILocalVariable(name: "return_value", arg: 7, scope: !1379, file: !3, line: 559, type: !788)
!1396 = !DILocation(line: 559, column: 29, scope: !1379)
!1397 = !DILocalVariable(name: "status", scope: !1379, file: !3, line: 561, type: !14)
!1398 = !DILocation(line: 561, column: 14, scope: !1379)
!1399 = !DILocation(line: 567, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 567, column: 6)
!1401 = !DILocation(line: 567, column: 12, scope: !1400)
!1402 = !DILocation(line: 567, column: 35, scope: !1400)
!1403 = !DILocation(line: 568, column: 8, scope: !1400)
!1404 = !DILocation(line: 568, column: 19, scope: !1400)
!1405 = !DILocation(line: 568, column: 24, scope: !1400)
!1406 = !DILocation(line: 568, column: 44, scope: !1400)
!1407 = !DILocation(line: 568, column: 48, scope: !1400)
!1408 = !DILocation(line: 567, column: 6, scope: !1379)
!1409 = !DILocation(line: 569, column: 3, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 568, column: 69)
!1411 = !DILocation(line: 583, column: 11, scope: !1379)
!1412 = !DILocation(line: 583, column: 9, scope: !1379)
!1413 = !DILocation(line: 584, column: 6, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 584, column: 6)
!1415 = !DILocation(line: 584, column: 6, scope: !1379)
!1416 = !DILocation(line: 585, column: 3, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 584, column: 28)
!1418 = !DILocation(line: 594, column: 11, scope: !1379)
!1419 = !DILocation(line: 594, column: 9, scope: !1379)
!1420 = !DILocation(line: 595, column: 6, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 595, column: 6)
!1422 = !DILocation(line: 595, column: 6, scope: !1379)
!1423 = !DILocation(line: 596, column: 3, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 595, column: 28)
!1425 = !DILocation(line: 601, column: 31, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 601, column: 6)
!1427 = !DILocation(line: 601, column: 7, scope: !1426)
!1428 = !DILocation(line: 601, column: 6, scope: !1379)
!1429 = !DILocation(line: 602, column: 10, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 601, column: 46)
!1431 = !DILocation(line: 603, column: 3, scope: !1430)
!1432 = !DILocation(line: 606, column: 34, scope: !1379)
!1433 = !DILocation(line: 606, column: 40, scope: !1379)
!1434 = !DILocation(line: 606, column: 54, scope: !1379)
!1435 = !DILocation(line: 608, column: 6, scope: !1379)
!1436 = !DILocation(line: 608, column: 27, scope: !1379)
!1437 = !DILocation(line: 609, column: 6, scope: !1379)
!1438 = !DILocation(line: 609, column: 15, scope: !1379)
!1439 = !DILocation(line: 606, column: 11, scope: !1379)
!1440 = !DILocation(line: 606, column: 9, scope: !1379)
!1441 = !DILocation(line: 606, column: 2, scope: !1379)
!1442 = !DILabel(scope: !1379, name: "unlock_and_exit2", file: !3, line: 611)
!1443 = !DILocation(line: 611, column: 1, scope: !1379)
!1444 = !DILocation(line: 612, column: 8, scope: !1379)
!1445 = !DILocation(line: 612, column: 2, scope: !1379)
!1446 = !DILabel(scope: !1379, name: "unlock_and_exit", file: !3, line: 614)
!1447 = !DILocation(line: 614, column: 1, scope: !1379)
!1448 = !DILocation(line: 615, column: 8, scope: !1379)
!1449 = !DILocation(line: 616, column: 2, scope: !1379)
!1450 = !DILocation(line: 617, column: 1, scope: !1379)
!1451 = distinct !DISubprogram(name: "acpi_get_devices", scope: !3, file: !3, line: 771, type: !1452, scopeLine: 774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!14, !1005, !1382, !65, !788}
!1454 = !DILocalVariable(name: "HID", arg: 1, scope: !1451, file: !3, line: 771, type: !1005)
!1455 = !DILocation(line: 771, column: 30, scope: !1451)
!1456 = !DILocalVariable(name: "user_function", arg: 2, scope: !1451, file: !3, line: 772, type: !1382)
!1457 = !DILocation(line: 772, column: 23, scope: !1451)
!1458 = !DILocalVariable(name: "context", arg: 3, scope: !1451, file: !3, line: 773, type: !65)
!1459 = !DILocation(line: 773, column: 10, scope: !1451)
!1460 = !DILocalVariable(name: "return_value", arg: 4, scope: !1451, file: !3, line: 773, type: !788)
!1461 = !DILocation(line: 773, column: 26, scope: !1451)
!1462 = !DILocalVariable(name: "status", scope: !1451, file: !3, line: 775, type: !14)
!1463 = !DILocation(line: 775, column: 14, scope: !1451)
!1464 = !DILocalVariable(name: "info", scope: !1451, file: !3, line: 776, type: !1465)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_get_devices_info", file: !209, line: 116, size: 192, elements: !1466)
!1466 = !{!1467, !1468, !1469}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "user_function", scope: !1465, file: !209, line: 117, baseType: !1382, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1465, file: !209, line: 118, baseType: !65, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "hid", scope: !1465, file: !209, line: 119, baseType: !1005, size: 64, offset: 128)
!1470 = !DILocation(line: 776, column: 31, scope: !1451)
!1471 = !DILocation(line: 782, column: 7, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 782, column: 6)
!1473 = !DILocation(line: 782, column: 6, scope: !1451)
!1474 = !DILocation(line: 783, column: 3, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 782, column: 22)
!1476 = !DILocation(line: 790, column: 13, scope: !1451)
!1477 = !DILocation(line: 790, column: 7, scope: !1451)
!1478 = !DILocation(line: 790, column: 11, scope: !1451)
!1479 = !DILocation(line: 791, column: 17, scope: !1451)
!1480 = !DILocation(line: 791, column: 7, scope: !1451)
!1481 = !DILocation(line: 791, column: 15, scope: !1451)
!1482 = !DILocation(line: 792, column: 23, scope: !1451)
!1483 = !DILocation(line: 792, column: 7, scope: !1451)
!1484 = !DILocation(line: 792, column: 21, scope: !1451)
!1485 = !DILocation(line: 800, column: 11, scope: !1451)
!1486 = !DILocation(line: 800, column: 9, scope: !1451)
!1487 = !DILocation(line: 801, column: 6, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 801, column: 6)
!1489 = !DILocation(line: 801, column: 6, scope: !1451)
!1490 = !DILocation(line: 802, column: 3, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 801, column: 28)
!1492 = !DILocation(line: 808, column: 6, scope: !1451)
!1493 = !DILocation(line: 808, column: 13, scope: !1451)
!1494 = !DILocation(line: 805, column: 11, scope: !1451)
!1495 = !DILocation(line: 805, column: 9, scope: !1451)
!1496 = !DILocation(line: 810, column: 8, scope: !1451)
!1497 = !DILocation(line: 811, column: 2, scope: !1451)
!1498 = !DILocation(line: 812, column: 1, scope: !1451)
!1499 = distinct !DISubprogram(name: "acpi_ns_get_device_callback", scope: !3, file: !3, line: 635, type: !786, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1500 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1499, file: !3, line: 635, type: !64)
!1501 = !DILocation(line: 635, column: 41, scope: !1499)
!1502 = !DILocalVariable(name: "nesting_level", arg: 2, scope: !1499, file: !3, line: 636, type: !16)
!1503 = !DILocation(line: 636, column: 12, scope: !1499)
!1504 = !DILocalVariable(name: "context", arg: 3, scope: !1499, file: !3, line: 637, type: !65)
!1505 = !DILocation(line: 637, column: 14, scope: !1499)
!1506 = !DILocalVariable(name: "return_value", arg: 4, scope: !1499, file: !3, line: 637, type: !788)
!1507 = !DILocation(line: 637, column: 30, scope: !1499)
!1508 = !DILocalVariable(name: "info", scope: !1499, file: !3, line: 639, type: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1510 = !DILocation(line: 639, column: 32, scope: !1499)
!1511 = !DILocation(line: 639, column: 39, scope: !1499)
!1512 = !DILocalVariable(name: "status", scope: !1499, file: !3, line: 640, type: !14)
!1513 = !DILocation(line: 640, column: 14, scope: !1499)
!1514 = !DILocalVariable(name: "node", scope: !1499, file: !3, line: 641, type: !140)
!1515 = !DILocation(line: 641, column: 30, scope: !1499)
!1516 = !DILocalVariable(name: "flags", scope: !1499, file: !3, line: 642, type: !16)
!1517 = !DILocation(line: 642, column: 6, scope: !1499)
!1518 = !DILocalVariable(name: "hid", scope: !1499, file: !3, line: 643, type: !1519)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id", file: !15, line: 1141, size: 128, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1520, file: !15, line: 1142, baseType: !16, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1520, file: !15, line: 1143, baseType: !40, size: 64, offset: 64)
!1524 = !DILocation(line: 643, column: 29, scope: !1499)
!1525 = !DILocalVariable(name: "cid", scope: !1499, file: !3, line: 644, type: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id_list", file: !15, line: 1146, size: 64, elements: !1528)
!1528 = !{!1529, !1530, !1531}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1527, file: !15, line: 1147, baseType: !16, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "list_size", scope: !1527, file: !15, line: 1148, baseType: !16, size: 32, offset: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1527, file: !15, line: 1149, baseType: !1532, offset: 64)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1520, elements: !1533)
!1533 = !{!1534}
!1534 = !DISubrange(count: -1)
!1535 = !DILocation(line: 644, column: 34, scope: !1499)
!1536 = !DILocalVariable(name: "i", scope: !1499, file: !3, line: 645, type: !16)
!1537 = !DILocation(line: 645, column: 6, scope: !1499)
!1538 = !DILocalVariable(name: "found", scope: !1499, file: !3, line: 646, type: !49)
!1539 = !DILocation(line: 646, column: 5, scope: !1499)
!1540 = !DILocalVariable(name: "no_match", scope: !1499, file: !3, line: 647, type: !1289)
!1541 = !DILocation(line: 647, column: 6, scope: !1499)
!1542 = !DILocation(line: 649, column: 11, scope: !1499)
!1543 = !DILocation(line: 649, column: 9, scope: !1499)
!1544 = !DILocation(line: 650, column: 6, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 650, column: 6)
!1546 = !DILocation(line: 650, column: 6, scope: !1499)
!1547 = !DILocation(line: 651, column: 11, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 650, column: 28)
!1549 = !DILocation(line: 651, column: 3, scope: !1548)
!1550 = !DILocation(line: 654, column: 33, scope: !1499)
!1551 = !DILocation(line: 654, column: 9, scope: !1499)
!1552 = !DILocation(line: 654, column: 7, scope: !1499)
!1553 = !DILocation(line: 655, column: 11, scope: !1499)
!1554 = !DILocation(line: 655, column: 9, scope: !1499)
!1555 = !DILocation(line: 656, column: 6, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 656, column: 6)
!1557 = !DILocation(line: 656, column: 6, scope: !1499)
!1558 = !DILocation(line: 657, column: 11, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 656, column: 28)
!1560 = !DILocation(line: 657, column: 3, scope: !1559)
!1561 = !DILocation(line: 660, column: 7, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 660, column: 6)
!1563 = !DILocation(line: 660, column: 6, scope: !1499)
!1564 = !DILocation(line: 661, column: 3, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 660, column: 13)
!1566 = !DILocation(line: 678, column: 6, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 678, column: 6)
!1568 = !DILocation(line: 678, column: 12, scope: !1567)
!1569 = !DILocation(line: 678, column: 16, scope: !1567)
!1570 = !DILocation(line: 678, column: 6, scope: !1499)
!1571 = !DILocation(line: 679, column: 32, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 678, column: 25)
!1573 = !DILocation(line: 679, column: 12, scope: !1572)
!1574 = !DILocation(line: 679, column: 10, scope: !1572)
!1575 = !DILocation(line: 680, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 680, column: 7)
!1577 = !DILocation(line: 680, column: 14, scope: !1576)
!1578 = !DILocation(line: 680, column: 7, scope: !1572)
!1579 = !DILocation(line: 681, column: 4, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 680, column: 31)
!1581 = !DILocation(line: 682, column: 14, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 682, column: 14)
!1583 = !DILocation(line: 682, column: 14, scope: !1576)
!1584 = !DILocation(line: 683, column: 4, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 682, column: 36)
!1586 = !DILocation(line: 686, column: 21, scope: !1572)
!1587 = !DILocation(line: 686, column: 26, scope: !1572)
!1588 = !DILocation(line: 686, column: 34, scope: !1572)
!1589 = !DILocation(line: 686, column: 40, scope: !1572)
!1590 = !DILocation(line: 686, column: 14, scope: !1572)
!1591 = !DILocation(line: 686, column: 12, scope: !1572)
!1592 = !DILocation(line: 687, column: 3, scope: !1572)
!1593 = !DILocation(line: 689, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 689, column: 7)
!1595 = !DILocation(line: 689, column: 7, scope: !1572)
!1596 = !DILocation(line: 694, column: 33, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 689, column: 17)
!1598 = !DILocation(line: 694, column: 13, scope: !1597)
!1599 = !DILocation(line: 694, column: 11, scope: !1597)
!1600 = !DILocation(line: 695, column: 8, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 695, column: 8)
!1602 = !DILocation(line: 695, column: 15, scope: !1601)
!1603 = !DILocation(line: 695, column: 8, scope: !1597)
!1604 = !DILocation(line: 696, column: 5, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 695, column: 32)
!1606 = !DILocation(line: 697, column: 15, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 697, column: 15)
!1608 = !DILocation(line: 697, column: 15, scope: !1601)
!1609 = !DILocation(line: 698, column: 5, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 697, column: 37)
!1611 = !DILocation(line: 703, column: 10, scope: !1597)
!1612 = !DILocation(line: 704, column: 11, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 704, column: 4)
!1614 = !DILocation(line: 704, column: 9, scope: !1613)
!1615 = !DILocation(line: 704, column: 16, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 704, column: 4)
!1617 = !DILocation(line: 704, column: 20, scope: !1616)
!1618 = !DILocation(line: 704, column: 25, scope: !1616)
!1619 = !DILocation(line: 704, column: 18, scope: !1616)
!1620 = !DILocation(line: 704, column: 4, scope: !1613)
!1621 = !DILocation(line: 705, column: 16, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 705, column: 9)
!1623 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 704, column: 37)
!1624 = !DILocation(line: 705, column: 21, scope: !1622)
!1625 = !DILocation(line: 705, column: 25, scope: !1622)
!1626 = !DILocation(line: 705, column: 28, scope: !1622)
!1627 = !DILocation(line: 705, column: 36, scope: !1622)
!1628 = !DILocation(line: 705, column: 42, scope: !1622)
!1629 = !DILocation(line: 705, column: 9, scope: !1622)
!1630 = !DILocation(line: 705, column: 47, scope: !1622)
!1631 = !DILocation(line: 705, column: 9, scope: !1623)
!1632 = !DILocation(line: 709, column: 12, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 705, column: 53)
!1634 = !DILocation(line: 710, column: 6, scope: !1633)
!1635 = !DILocation(line: 712, column: 4, scope: !1623)
!1636 = !DILocation(line: 704, column: 33, scope: !1616)
!1637 = !DILocation(line: 704, column: 4, scope: !1616)
!1638 = distinct !{!1638, !1620, !1639}
!1639 = !DILocation(line: 712, column: 4, scope: !1613)
!1640 = !DILocation(line: 714, column: 4, scope: !1597)
!1641 = !DILocation(line: 715, column: 9, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 715, column: 8)
!1643 = !DILocation(line: 715, column: 8, scope: !1597)
!1644 = !DILocation(line: 716, column: 5, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 715, column: 16)
!1646 = !DILocation(line: 718, column: 3, scope: !1597)
!1647 = !DILocation(line: 719, column: 2, scope: !1572)
!1648 = !DILocation(line: 723, column: 31, scope: !1499)
!1649 = !DILocation(line: 723, column: 11, scope: !1499)
!1650 = !DILocation(line: 723, column: 9, scope: !1499)
!1651 = !DILocation(line: 724, column: 6, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 724, column: 6)
!1653 = !DILocation(line: 724, column: 6, scope: !1499)
!1654 = !DILocation(line: 725, column: 3, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 724, column: 28)
!1656 = !DILocation(line: 728, column: 8, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 728, column: 6)
!1658 = !DILocation(line: 728, column: 14, scope: !1657)
!1659 = !DILocation(line: 728, column: 41, scope: !1657)
!1660 = !DILocation(line: 729, column: 8, scope: !1657)
!1661 = !DILocation(line: 729, column: 14, scope: !1657)
!1662 = !DILocation(line: 728, column: 6, scope: !1499)
!1663 = !DILocation(line: 735, column: 3, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 729, column: 46)
!1665 = !DILocation(line: 740, column: 11, scope: !1499)
!1666 = !DILocation(line: 740, column: 17, scope: !1499)
!1667 = !DILocation(line: 740, column: 31, scope: !1499)
!1668 = !DILocation(line: 740, column: 43, scope: !1499)
!1669 = !DILocation(line: 741, column: 10, scope: !1499)
!1670 = !DILocation(line: 741, column: 16, scope: !1499)
!1671 = !DILocation(line: 741, column: 25, scope: !1499)
!1672 = !DILocation(line: 740, column: 9, scope: !1499)
!1673 = !DILocation(line: 742, column: 10, scope: !1499)
!1674 = !DILocation(line: 742, column: 2, scope: !1499)
!1675 = !DILocation(line: 743, column: 1, scope: !1499)
!1676 = distinct !DISubprogram(name: "acpi_attach_data", scope: !3, file: !3, line: 830, type: !1677, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!14, !64, !830, !65}
!1679 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1676, file: !3, line: 830, type: !64)
!1680 = !DILocation(line: 830, column: 30, scope: !1676)
!1681 = !DILocalVariable(name: "handler", arg: 2, scope: !1676, file: !3, line: 831, type: !830)
!1682 = !DILocation(line: 831, column: 24, scope: !1676)
!1683 = !DILocalVariable(name: "data", arg: 3, scope: !1676, file: !3, line: 831, type: !65)
!1684 = !DILocation(line: 831, column: 39, scope: !1676)
!1685 = !DILocalVariable(name: "node", scope: !1676, file: !3, line: 833, type: !140)
!1686 = !DILocation(line: 833, column: 30, scope: !1676)
!1687 = !DILocalVariable(name: "status", scope: !1676, file: !3, line: 834, type: !14)
!1688 = !DILocation(line: 834, column: 14, scope: !1676)
!1689 = !DILocation(line: 838, column: 7, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 838, column: 6)
!1691 = !DILocation(line: 838, column: 18, scope: !1690)
!1692 = !DILocation(line: 838, column: 22, scope: !1690)
!1693 = !DILocation(line: 838, column: 30, scope: !1690)
!1694 = !DILocation(line: 838, column: 34, scope: !1690)
!1695 = !DILocation(line: 838, column: 6, scope: !1676)
!1696 = !DILocation(line: 839, column: 3, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 838, column: 40)
!1698 = !DILocation(line: 842, column: 11, scope: !1676)
!1699 = !DILocation(line: 842, column: 9, scope: !1676)
!1700 = !DILocation(line: 843, column: 6, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 843, column: 6)
!1702 = !DILocation(line: 843, column: 6, scope: !1676)
!1703 = !DILocation(line: 844, column: 11, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 843, column: 28)
!1705 = !DILocation(line: 844, column: 3, scope: !1704)
!1706 = !DILocation(line: 849, column: 33, scope: !1676)
!1707 = !DILocation(line: 849, column: 9, scope: !1676)
!1708 = !DILocation(line: 849, column: 7, scope: !1676)
!1709 = !DILocation(line: 850, column: 7, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 850, column: 6)
!1711 = !DILocation(line: 850, column: 6, scope: !1676)
!1712 = !DILocation(line: 851, column: 10, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 850, column: 13)
!1714 = !DILocation(line: 852, column: 3, scope: !1713)
!1715 = !DILocation(line: 855, column: 31, scope: !1676)
!1716 = !DILocation(line: 855, column: 37, scope: !1676)
!1717 = !DILocation(line: 855, column: 46, scope: !1676)
!1718 = !DILocation(line: 855, column: 11, scope: !1676)
!1719 = !DILocation(line: 855, column: 9, scope: !1676)
!1720 = !DILocation(line: 855, column: 2, scope: !1676)
!1721 = !DILabel(scope: !1676, name: "unlock_and_exit", file: !3, line: 857)
!1722 = !DILocation(line: 857, column: 1, scope: !1676)
!1723 = !DILocation(line: 858, column: 8, scope: !1676)
!1724 = !DILocation(line: 859, column: 10, scope: !1676)
!1725 = !DILocation(line: 859, column: 2, scope: !1676)
!1726 = !DILocation(line: 860, column: 1, scope: !1676)
!1727 = distinct !DISubprogram(name: "acpi_detach_data", scope: !3, file: !3, line: 877, type: !1728, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!14, !64, !830}
!1730 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1727, file: !3, line: 877, type: !64)
!1731 = !DILocation(line: 877, column: 30, scope: !1727)
!1732 = !DILocalVariable(name: "handler", arg: 2, scope: !1727, file: !3, line: 877, type: !830)
!1733 = !DILocation(line: 877, column: 62, scope: !1727)
!1734 = !DILocalVariable(name: "node", scope: !1727, file: !3, line: 879, type: !140)
!1735 = !DILocation(line: 879, column: 30, scope: !1727)
!1736 = !DILocalVariable(name: "status", scope: !1727, file: !3, line: 880, type: !14)
!1737 = !DILocation(line: 880, column: 14, scope: !1727)
!1738 = !DILocation(line: 884, column: 7, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 884, column: 6)
!1740 = !DILocation(line: 884, column: 18, scope: !1739)
!1741 = !DILocation(line: 884, column: 22, scope: !1739)
!1742 = !DILocation(line: 884, column: 6, scope: !1727)
!1743 = !DILocation(line: 885, column: 3, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 884, column: 31)
!1745 = !DILocation(line: 888, column: 11, scope: !1727)
!1746 = !DILocation(line: 888, column: 9, scope: !1727)
!1747 = !DILocation(line: 889, column: 6, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 889, column: 6)
!1749 = !DILocation(line: 889, column: 6, scope: !1727)
!1750 = !DILocation(line: 890, column: 11, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 889, column: 28)
!1752 = !DILocation(line: 890, column: 3, scope: !1751)
!1753 = !DILocation(line: 895, column: 33, scope: !1727)
!1754 = !DILocation(line: 895, column: 9, scope: !1727)
!1755 = !DILocation(line: 895, column: 7, scope: !1727)
!1756 = !DILocation(line: 896, column: 7, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 896, column: 6)
!1758 = !DILocation(line: 896, column: 6, scope: !1727)
!1759 = !DILocation(line: 897, column: 10, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 896, column: 13)
!1761 = !DILocation(line: 898, column: 3, scope: !1760)
!1762 = !DILocation(line: 901, column: 31, scope: !1727)
!1763 = !DILocation(line: 901, column: 37, scope: !1727)
!1764 = !DILocation(line: 901, column: 11, scope: !1727)
!1765 = !DILocation(line: 901, column: 9, scope: !1727)
!1766 = !DILocation(line: 901, column: 2, scope: !1727)
!1767 = !DILabel(scope: !1727, name: "unlock_and_exit", file: !3, line: 903)
!1768 = !DILocation(line: 903, column: 1, scope: !1727)
!1769 = !DILocation(line: 904, column: 8, scope: !1727)
!1770 = !DILocation(line: 905, column: 10, scope: !1727)
!1771 = !DILocation(line: 905, column: 2, scope: !1727)
!1772 = !DILocation(line: 906, column: 1, scope: !1727)
!1773 = distinct !DISubprogram(name: "acpi_get_data_full", scope: !3, file: !3, line: 926, type: !1774, scopeLine: 928, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!14, !64, !830, !788, !1776}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1777 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1773, file: !3, line: 926, type: !64)
!1778 = !DILocation(line: 926, column: 32, scope: !1773)
!1779 = !DILocalVariable(name: "handler", arg: 2, scope: !1773, file: !3, line: 926, type: !830)
!1780 = !DILocation(line: 926, column: 64, scope: !1773)
!1781 = !DILocalVariable(name: "data", arg: 3, scope: !1773, file: !3, line: 927, type: !788)
!1782 = !DILocation(line: 927, column: 13, scope: !1773)
!1783 = !DILocalVariable(name: "callback", arg: 4, scope: !1773, file: !3, line: 927, type: !1776)
!1784 = !DILocation(line: 927, column: 26, scope: !1773)
!1785 = !DILocalVariable(name: "node", scope: !1773, file: !3, line: 929, type: !140)
!1786 = !DILocation(line: 929, column: 30, scope: !1773)
!1787 = !DILocalVariable(name: "status", scope: !1773, file: !3, line: 930, type: !14)
!1788 = !DILocation(line: 930, column: 14, scope: !1773)
!1789 = !DILocation(line: 934, column: 7, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 934, column: 6)
!1791 = !DILocation(line: 934, column: 18, scope: !1790)
!1792 = !DILocation(line: 934, column: 22, scope: !1790)
!1793 = !DILocation(line: 934, column: 30, scope: !1790)
!1794 = !DILocation(line: 934, column: 34, scope: !1790)
!1795 = !DILocation(line: 934, column: 6, scope: !1773)
!1796 = !DILocation(line: 935, column: 3, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 934, column: 40)
!1798 = !DILocation(line: 938, column: 11, scope: !1773)
!1799 = !DILocation(line: 938, column: 9, scope: !1773)
!1800 = !DILocation(line: 939, column: 6, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 939, column: 6)
!1802 = !DILocation(line: 939, column: 6, scope: !1773)
!1803 = !DILocation(line: 940, column: 11, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 939, column: 28)
!1805 = !DILocation(line: 940, column: 3, scope: !1804)
!1806 = !DILocation(line: 945, column: 33, scope: !1773)
!1807 = !DILocation(line: 945, column: 9, scope: !1773)
!1808 = !DILocation(line: 945, column: 7, scope: !1773)
!1809 = !DILocation(line: 946, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 946, column: 6)
!1811 = !DILocation(line: 946, column: 6, scope: !1773)
!1812 = !DILocation(line: 947, column: 10, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 946, column: 13)
!1814 = !DILocation(line: 948, column: 3, scope: !1813)
!1815 = !DILocation(line: 951, column: 37, scope: !1773)
!1816 = !DILocation(line: 951, column: 43, scope: !1773)
!1817 = !DILocation(line: 951, column: 52, scope: !1773)
!1818 = !DILocation(line: 951, column: 11, scope: !1773)
!1819 = !DILocation(line: 951, column: 9, scope: !1773)
!1820 = !DILocation(line: 952, column: 6, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 952, column: 6)
!1822 = !DILocation(line: 952, column: 27, scope: !1821)
!1823 = !DILocation(line: 952, column: 30, scope: !1821)
!1824 = !DILocation(line: 952, column: 6, scope: !1773)
!1825 = !DILocation(line: 953, column: 3, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 952, column: 40)
!1827 = !DILocation(line: 953, column: 13, scope: !1826)
!1828 = !DILocation(line: 953, column: 12, scope: !1826)
!1829 = !DILocation(line: 954, column: 2, scope: !1826)
!1830 = !DILabel(scope: !1773, name: "unlock_and_exit", file: !3, line: 956)
!1831 = !DILocation(line: 956, column: 1, scope: !1773)
!1832 = !DILocation(line: 957, column: 8, scope: !1773)
!1833 = !DILocation(line: 958, column: 10, scope: !1773)
!1834 = !DILocation(line: 958, column: 2, scope: !1773)
!1835 = !DILocation(line: 959, column: 1, scope: !1773)
!1836 = distinct !DISubprogram(name: "acpi_get_data", scope: !3, file: !3, line: 977, type: !1837, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!14, !64, !830, !788}
!1839 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1836, file: !3, line: 977, type: !64)
!1840 = !DILocation(line: 977, column: 27, scope: !1836)
!1841 = !DILocalVariable(name: "handler", arg: 2, scope: !1836, file: !3, line: 977, type: !830)
!1842 = !DILocation(line: 977, column: 59, scope: !1836)
!1843 = !DILocalVariable(name: "data", arg: 3, scope: !1836, file: !3, line: 977, type: !788)
!1844 = !DILocation(line: 977, column: 75, scope: !1836)
!1845 = !DILocation(line: 979, column: 28, scope: !1836)
!1846 = !DILocation(line: 979, column: 40, scope: !1836)
!1847 = !DILocation(line: 979, column: 49, scope: !1836)
!1848 = !DILocation(line: 979, column: 9, scope: !1836)
!1849 = !DILocation(line: 979, column: 2, scope: !1836)
!1850 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1851, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!65, !1853, !847}
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !848, line: 55, baseType: !1854)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1855, line: 72, baseType: !1856)
!1855 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1855, line: 16, baseType: !849)
!1857 = !DILocalVariable(name: "s", arg: 1, scope: !1858, file: !6, line: 445, type: !1861)
!1858 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1859, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!65, !1861, !847, !1853}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1863, line: 117, flags: DIFlagFwdDecl)
!1863 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1864 = !DILocation(line: 445, column: 72, scope: !1858, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 552, column: 10, scope: !1866, inlinedAt: !1869)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !6, line: 540, column: 34)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !6, line: 540, column: 6)
!1868 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1851, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1869 = distinct !DILocation(line: 664, column: 9, scope: !1850)
!1870 = !DILocalVariable(name: "flags", arg: 2, scope: !1858, file: !6, line: 446, type: !847)
!1871 = !DILocation(line: 446, column: 9, scope: !1858, inlinedAt: !1865)
!1872 = !DILocalVariable(name: "size", arg: 3, scope: !1858, file: !6, line: 446, type: !1853)
!1873 = !DILocation(line: 446, column: 23, scope: !1858, inlinedAt: !1865)
!1874 = !DILocalVariable(name: "ret", scope: !1858, file: !6, line: 448, type: !65)
!1875 = !DILocation(line: 448, column: 8, scope: !1858, inlinedAt: !1865)
!1876 = !DILocalVariable(name: "flags", arg: 1, scope: !1877, file: !6, line: 318, type: !847)
!1877 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1878, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!5, !847}
!1880 = !DILocation(line: 318, column: 67, scope: !1877, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 553, column: 20, scope: !1866, inlinedAt: !1869)
!1882 = !DILocalVariable(name: "size", arg: 1, scope: !1883, file: !6, line: 346, type: !1853)
!1883 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1884, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!7, !1853}
!1886 = !DILocation(line: 346, column: 58, scope: !1883, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 547, column: 11, scope: !1866, inlinedAt: !1869)
!1888 = !DILocalVariable(name: "size", arg: 1, scope: !1889, file: !6, line: 472, type: !1853)
!1889 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1890, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!65, !1853, !847, !7}
!1892 = !DILocation(line: 472, column: 28, scope: !1889, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 481, column: 9, scope: !1894, inlinedAt: !1895)
!1894 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1851, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!1895 = distinct !DILocation(line: 545, column: 11, scope: !1896, inlinedAt: !1869)
!1896 = distinct !DILexicalBlock(scope: !1866, file: !6, line: 544, column: 7)
!1897 = !DILocalVariable(name: "flags", arg: 2, scope: !1889, file: !6, line: 472, type: !847)
!1898 = !DILocation(line: 472, column: 40, scope: !1889, inlinedAt: !1893)
!1899 = !DILocalVariable(name: "order", arg: 3, scope: !1889, file: !6, line: 472, type: !7)
!1900 = !DILocation(line: 472, column: 60, scope: !1889, inlinedAt: !1893)
!1901 = !DILocalVariable(name: "size", arg: 1, scope: !1894, file: !6, line: 478, type: !1853)
!1902 = !DILocation(line: 478, column: 51, scope: !1894, inlinedAt: !1895)
!1903 = !DILocalVariable(name: "flags", arg: 2, scope: !1894, file: !6, line: 478, type: !847)
!1904 = !DILocation(line: 478, column: 63, scope: !1894, inlinedAt: !1895)
!1905 = !DILocalVariable(name: "order", scope: !1894, file: !6, line: 480, type: !7)
!1906 = !DILocation(line: 480, column: 15, scope: !1894, inlinedAt: !1895)
!1907 = !DILocalVariable(name: "size", arg: 1, scope: !1868, file: !6, line: 538, type: !1853)
!1908 = !DILocation(line: 538, column: 45, scope: !1868, inlinedAt: !1869)
!1909 = !DILocalVariable(name: "flags", arg: 2, scope: !1868, file: !6, line: 538, type: !847)
!1910 = !DILocation(line: 538, column: 57, scope: !1868, inlinedAt: !1869)
!1911 = !DILocalVariable(name: "index", scope: !1866, file: !6, line: 542, type: !7)
!1912 = !DILocation(line: 542, column: 16, scope: !1866, inlinedAt: !1869)
!1913 = !DILocalVariable(name: "size", arg: 1, scope: !1850, file: !6, line: 662, type: !1853)
!1914 = !DILocation(line: 662, column: 36, scope: !1850)
!1915 = !DILocalVariable(name: "flags", arg: 2, scope: !1850, file: !6, line: 662, type: !847)
!1916 = !DILocation(line: 662, column: 48, scope: !1850)
!1917 = !DILocation(line: 664, column: 17, scope: !1850)
!1918 = !DILocation(line: 664, column: 23, scope: !1850)
!1919 = !DILocation(line: 664, column: 29, scope: !1850)
!1920 = !DILocation(line: 540, column: 27, scope: !1867, inlinedAt: !1869)
!1921 = !DILocation(line: 540, column: 6, scope: !1867, inlinedAt: !1869)
!1922 = !DILocation(line: 540, column: 6, scope: !1868, inlinedAt: !1869)
!1923 = !DILocation(line: 544, column: 7, scope: !1896, inlinedAt: !1869)
!1924 = !DILocation(line: 544, column: 12, scope: !1896, inlinedAt: !1869)
!1925 = !DILocation(line: 544, column: 7, scope: !1866, inlinedAt: !1869)
!1926 = !DILocation(line: 545, column: 25, scope: !1896, inlinedAt: !1869)
!1927 = !DILocation(line: 545, column: 31, scope: !1896, inlinedAt: !1869)
!1928 = !DILocation(line: 480, column: 33, scope: !1894, inlinedAt: !1895)
!1929 = !DILocation(line: 480, column: 23, scope: !1894, inlinedAt: !1895)
!1930 = !DILocation(line: 481, column: 29, scope: !1894, inlinedAt: !1895)
!1931 = !DILocation(line: 481, column: 35, scope: !1894, inlinedAt: !1895)
!1932 = !DILocation(line: 481, column: 42, scope: !1894, inlinedAt: !1895)
!1933 = !DILocation(line: 474, column: 23, scope: !1889, inlinedAt: !1893)
!1934 = !DILocation(line: 474, column: 29, scope: !1889, inlinedAt: !1893)
!1935 = !DILocation(line: 474, column: 36, scope: !1889, inlinedAt: !1893)
!1936 = !DILocation(line: 474, column: 9, scope: !1889, inlinedAt: !1893)
!1937 = !DILocation(line: 545, column: 4, scope: !1896, inlinedAt: !1869)
!1938 = !DILocation(line: 547, column: 25, scope: !1866, inlinedAt: !1869)
!1939 = !DILocation(line: 348, column: 7, scope: !1940, inlinedAt: !1887)
!1940 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 348, column: 6)
!1941 = !DILocation(line: 348, column: 6, scope: !1883, inlinedAt: !1887)
!1942 = !DILocation(line: 349, column: 3, scope: !1940, inlinedAt: !1887)
!1943 = !DILocation(line: 351, column: 6, scope: !1944, inlinedAt: !1887)
!1944 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 351, column: 6)
!1945 = !DILocation(line: 351, column: 11, scope: !1944, inlinedAt: !1887)
!1946 = !DILocation(line: 351, column: 6, scope: !1883, inlinedAt: !1887)
!1947 = !DILocation(line: 352, column: 3, scope: !1944, inlinedAt: !1887)
!1948 = !DILocation(line: 354, column: 32, scope: !1949, inlinedAt: !1887)
!1949 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 354, column: 6)
!1950 = !DILocation(line: 354, column: 37, scope: !1949, inlinedAt: !1887)
!1951 = !DILocation(line: 354, column: 42, scope: !1949, inlinedAt: !1887)
!1952 = !DILocation(line: 354, column: 45, scope: !1949, inlinedAt: !1887)
!1953 = !DILocation(line: 354, column: 50, scope: !1949, inlinedAt: !1887)
!1954 = !DILocation(line: 354, column: 6, scope: !1883, inlinedAt: !1887)
!1955 = !DILocation(line: 355, column: 3, scope: !1949, inlinedAt: !1887)
!1956 = !DILocation(line: 356, column: 32, scope: !1957, inlinedAt: !1887)
!1957 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 356, column: 6)
!1958 = !DILocation(line: 356, column: 37, scope: !1957, inlinedAt: !1887)
!1959 = !DILocation(line: 356, column: 43, scope: !1957, inlinedAt: !1887)
!1960 = !DILocation(line: 356, column: 46, scope: !1957, inlinedAt: !1887)
!1961 = !DILocation(line: 356, column: 51, scope: !1957, inlinedAt: !1887)
!1962 = !DILocation(line: 356, column: 6, scope: !1883, inlinedAt: !1887)
!1963 = !DILocation(line: 357, column: 3, scope: !1957, inlinedAt: !1887)
!1964 = !DILocation(line: 358, column: 6, scope: !1965, inlinedAt: !1887)
!1965 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 358, column: 6)
!1966 = !DILocation(line: 358, column: 11, scope: !1965, inlinedAt: !1887)
!1967 = !DILocation(line: 358, column: 6, scope: !1883, inlinedAt: !1887)
!1968 = !DILocation(line: 358, column: 26, scope: !1965, inlinedAt: !1887)
!1969 = !DILocation(line: 359, column: 6, scope: !1970, inlinedAt: !1887)
!1970 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 359, column: 6)
!1971 = !DILocation(line: 359, column: 11, scope: !1970, inlinedAt: !1887)
!1972 = !DILocation(line: 359, column: 6, scope: !1883, inlinedAt: !1887)
!1973 = !DILocation(line: 359, column: 26, scope: !1970, inlinedAt: !1887)
!1974 = !DILocation(line: 360, column: 6, scope: !1975, inlinedAt: !1887)
!1975 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 360, column: 6)
!1976 = !DILocation(line: 360, column: 11, scope: !1975, inlinedAt: !1887)
!1977 = !DILocation(line: 360, column: 6, scope: !1883, inlinedAt: !1887)
!1978 = !DILocation(line: 360, column: 26, scope: !1975, inlinedAt: !1887)
!1979 = !DILocation(line: 361, column: 6, scope: !1980, inlinedAt: !1887)
!1980 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 361, column: 6)
!1981 = !DILocation(line: 361, column: 11, scope: !1980, inlinedAt: !1887)
!1982 = !DILocation(line: 361, column: 6, scope: !1883, inlinedAt: !1887)
!1983 = !DILocation(line: 361, column: 26, scope: !1980, inlinedAt: !1887)
!1984 = !DILocation(line: 362, column: 6, scope: !1985, inlinedAt: !1887)
!1985 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 362, column: 6)
!1986 = !DILocation(line: 362, column: 11, scope: !1985, inlinedAt: !1887)
!1987 = !DILocation(line: 362, column: 6, scope: !1883, inlinedAt: !1887)
!1988 = !DILocation(line: 362, column: 26, scope: !1985, inlinedAt: !1887)
!1989 = !DILocation(line: 363, column: 6, scope: !1990, inlinedAt: !1887)
!1990 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 363, column: 6)
!1991 = !DILocation(line: 363, column: 11, scope: !1990, inlinedAt: !1887)
!1992 = !DILocation(line: 363, column: 6, scope: !1883, inlinedAt: !1887)
!1993 = !DILocation(line: 363, column: 26, scope: !1990, inlinedAt: !1887)
!1994 = !DILocation(line: 364, column: 6, scope: !1995, inlinedAt: !1887)
!1995 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 364, column: 6)
!1996 = !DILocation(line: 364, column: 11, scope: !1995, inlinedAt: !1887)
!1997 = !DILocation(line: 364, column: 6, scope: !1883, inlinedAt: !1887)
!1998 = !DILocation(line: 364, column: 26, scope: !1995, inlinedAt: !1887)
!1999 = !DILocation(line: 365, column: 6, scope: !2000, inlinedAt: !1887)
!2000 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 365, column: 6)
!2001 = !DILocation(line: 365, column: 11, scope: !2000, inlinedAt: !1887)
!2002 = !DILocation(line: 365, column: 6, scope: !1883, inlinedAt: !1887)
!2003 = !DILocation(line: 365, column: 26, scope: !2000, inlinedAt: !1887)
!2004 = !DILocation(line: 366, column: 6, scope: !2005, inlinedAt: !1887)
!2005 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 366, column: 6)
!2006 = !DILocation(line: 366, column: 11, scope: !2005, inlinedAt: !1887)
!2007 = !DILocation(line: 366, column: 6, scope: !1883, inlinedAt: !1887)
!2008 = !DILocation(line: 366, column: 26, scope: !2005, inlinedAt: !1887)
!2009 = !DILocation(line: 367, column: 6, scope: !2010, inlinedAt: !1887)
!2010 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 367, column: 6)
!2011 = !DILocation(line: 367, column: 11, scope: !2010, inlinedAt: !1887)
!2012 = !DILocation(line: 367, column: 6, scope: !1883, inlinedAt: !1887)
!2013 = !DILocation(line: 367, column: 26, scope: !2010, inlinedAt: !1887)
!2014 = !DILocation(line: 368, column: 6, scope: !2015, inlinedAt: !1887)
!2015 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 368, column: 6)
!2016 = !DILocation(line: 368, column: 11, scope: !2015, inlinedAt: !1887)
!2017 = !DILocation(line: 368, column: 6, scope: !1883, inlinedAt: !1887)
!2018 = !DILocation(line: 368, column: 26, scope: !2015, inlinedAt: !1887)
!2019 = !DILocation(line: 369, column: 6, scope: !2020, inlinedAt: !1887)
!2020 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 369, column: 6)
!2021 = !DILocation(line: 369, column: 11, scope: !2020, inlinedAt: !1887)
!2022 = !DILocation(line: 369, column: 6, scope: !1883, inlinedAt: !1887)
!2023 = !DILocation(line: 369, column: 26, scope: !2020, inlinedAt: !1887)
!2024 = !DILocation(line: 370, column: 6, scope: !2025, inlinedAt: !1887)
!2025 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 370, column: 6)
!2026 = !DILocation(line: 370, column: 11, scope: !2025, inlinedAt: !1887)
!2027 = !DILocation(line: 370, column: 6, scope: !1883, inlinedAt: !1887)
!2028 = !DILocation(line: 370, column: 26, scope: !2025, inlinedAt: !1887)
!2029 = !DILocation(line: 371, column: 6, scope: !2030, inlinedAt: !1887)
!2030 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 371, column: 6)
!2031 = !DILocation(line: 371, column: 11, scope: !2030, inlinedAt: !1887)
!2032 = !DILocation(line: 371, column: 6, scope: !1883, inlinedAt: !1887)
!2033 = !DILocation(line: 371, column: 26, scope: !2030, inlinedAt: !1887)
!2034 = !DILocation(line: 372, column: 6, scope: !2035, inlinedAt: !1887)
!2035 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 372, column: 6)
!2036 = !DILocation(line: 372, column: 11, scope: !2035, inlinedAt: !1887)
!2037 = !DILocation(line: 372, column: 6, scope: !1883, inlinedAt: !1887)
!2038 = !DILocation(line: 372, column: 26, scope: !2035, inlinedAt: !1887)
!2039 = !DILocation(line: 373, column: 6, scope: !2040, inlinedAt: !1887)
!2040 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 373, column: 6)
!2041 = !DILocation(line: 373, column: 11, scope: !2040, inlinedAt: !1887)
!2042 = !DILocation(line: 373, column: 6, scope: !1883, inlinedAt: !1887)
!2043 = !DILocation(line: 373, column: 26, scope: !2040, inlinedAt: !1887)
!2044 = !DILocation(line: 374, column: 6, scope: !2045, inlinedAt: !1887)
!2045 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 374, column: 6)
!2046 = !DILocation(line: 374, column: 11, scope: !2045, inlinedAt: !1887)
!2047 = !DILocation(line: 374, column: 6, scope: !1883, inlinedAt: !1887)
!2048 = !DILocation(line: 374, column: 26, scope: !2045, inlinedAt: !1887)
!2049 = !DILocation(line: 375, column: 6, scope: !2050, inlinedAt: !1887)
!2050 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 375, column: 6)
!2051 = !DILocation(line: 375, column: 11, scope: !2050, inlinedAt: !1887)
!2052 = !DILocation(line: 375, column: 6, scope: !1883, inlinedAt: !1887)
!2053 = !DILocation(line: 375, column: 27, scope: !2050, inlinedAt: !1887)
!2054 = !DILocation(line: 376, column: 6, scope: !2055, inlinedAt: !1887)
!2055 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 376, column: 6)
!2056 = !DILocation(line: 376, column: 11, scope: !2055, inlinedAt: !1887)
!2057 = !DILocation(line: 376, column: 6, scope: !1883, inlinedAt: !1887)
!2058 = !DILocation(line: 376, column: 32, scope: !2055, inlinedAt: !1887)
!2059 = !DILocation(line: 377, column: 6, scope: !2060, inlinedAt: !1887)
!2060 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 377, column: 6)
!2061 = !DILocation(line: 377, column: 11, scope: !2060, inlinedAt: !1887)
!2062 = !DILocation(line: 377, column: 6, scope: !1883, inlinedAt: !1887)
!2063 = !DILocation(line: 377, column: 32, scope: !2060, inlinedAt: !1887)
!2064 = !DILocation(line: 378, column: 6, scope: !2065, inlinedAt: !1887)
!2065 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 378, column: 6)
!2066 = !DILocation(line: 378, column: 11, scope: !2065, inlinedAt: !1887)
!2067 = !DILocation(line: 378, column: 6, scope: !1883, inlinedAt: !1887)
!2068 = !DILocation(line: 378, column: 32, scope: !2065, inlinedAt: !1887)
!2069 = !DILocation(line: 379, column: 6, scope: !2070, inlinedAt: !1887)
!2070 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 379, column: 6)
!2071 = !DILocation(line: 379, column: 11, scope: !2070, inlinedAt: !1887)
!2072 = !DILocation(line: 379, column: 6, scope: !1883, inlinedAt: !1887)
!2073 = !DILocation(line: 379, column: 33, scope: !2070, inlinedAt: !1887)
!2074 = !DILocation(line: 380, column: 6, scope: !2075, inlinedAt: !1887)
!2075 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 380, column: 6)
!2076 = !DILocation(line: 380, column: 11, scope: !2075, inlinedAt: !1887)
!2077 = !DILocation(line: 380, column: 6, scope: !1883, inlinedAt: !1887)
!2078 = !DILocation(line: 380, column: 33, scope: !2075, inlinedAt: !1887)
!2079 = !DILocation(line: 381, column: 6, scope: !2080, inlinedAt: !1887)
!2080 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 381, column: 6)
!2081 = !DILocation(line: 381, column: 11, scope: !2080, inlinedAt: !1887)
!2082 = !DILocation(line: 381, column: 6, scope: !1883, inlinedAt: !1887)
!2083 = !DILocation(line: 381, column: 33, scope: !2080, inlinedAt: !1887)
!2084 = !DILocation(line: 382, column: 2, scope: !2085, inlinedAt: !1887)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !6, line: 382, column: 2)
!2086 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 382, column: 2)
!2087 = !{i32 -2144091733, i32 -2144091704, i32 -2144091658, i32 -2144091600, i32 -2144091546, i32 -2144091492, i32 -2144091437, i32 -2144091406}
!2088 = !DILocation(line: 382, column: 2, scope: !2089, inlinedAt: !1887)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !6, line: 382, column: 2)
!2090 = distinct !DILexicalBlock(scope: !2086, file: !6, line: 382, column: 2)
!2091 = !{i32 -2144090963, i32 -2144090956, i32 -2144090902, i32 -2144090871, i32 -2144090841}
!2092 = !DILocation(line: 382, column: 2, scope: !2090, inlinedAt: !1887)
!2093 = !DILocation(line: 386, column: 1, scope: !1883, inlinedAt: !1887)
!2094 = !DILocation(line: 547, column: 9, scope: !1866, inlinedAt: !1869)
!2095 = !DILocation(line: 549, column: 8, scope: !2096, inlinedAt: !1869)
!2096 = distinct !DILexicalBlock(scope: !1866, file: !6, line: 549, column: 7)
!2097 = !DILocation(line: 549, column: 7, scope: !1866, inlinedAt: !1869)
!2098 = !DILocation(line: 550, column: 4, scope: !2096, inlinedAt: !1869)
!2099 = !DILocation(line: 553, column: 33, scope: !1866, inlinedAt: !1869)
!2100 = !DILocation(line: 325, column: 6, scope: !2101, inlinedAt: !1881)
!2101 = distinct !DILexicalBlock(scope: !1877, file: !6, line: 325, column: 6)
!2102 = !DILocation(line: 325, column: 6, scope: !1877, inlinedAt: !1881)
!2103 = !DILocation(line: 326, column: 3, scope: !2101, inlinedAt: !1881)
!2104 = !DILocation(line: 332, column: 9, scope: !1877, inlinedAt: !1881)
!2105 = !DILocation(line: 332, column: 15, scope: !1877, inlinedAt: !1881)
!2106 = !DILocation(line: 332, column: 2, scope: !1877, inlinedAt: !1881)
!2107 = !DILocation(line: 336, column: 1, scope: !1877, inlinedAt: !1881)
!2108 = !DILocation(line: 553, column: 5, scope: !1866, inlinedAt: !1869)
!2109 = !DILocation(line: 553, column: 41, scope: !1866, inlinedAt: !1869)
!2110 = !DILocation(line: 554, column: 5, scope: !1866, inlinedAt: !1869)
!2111 = !DILocation(line: 554, column: 12, scope: !1866, inlinedAt: !1869)
!2112 = !DILocation(line: 448, column: 31, scope: !1858, inlinedAt: !1865)
!2113 = !DILocation(line: 448, column: 34, scope: !1858, inlinedAt: !1865)
!2114 = !DILocation(line: 448, column: 14, scope: !1858, inlinedAt: !1865)
!2115 = !DILocation(line: 450, column: 22, scope: !1858, inlinedAt: !1865)
!2116 = !DILocation(line: 450, column: 25, scope: !1858, inlinedAt: !1865)
!2117 = !DILocation(line: 450, column: 30, scope: !1858, inlinedAt: !1865)
!2118 = !DILocation(line: 450, column: 36, scope: !1858, inlinedAt: !1865)
!2119 = !DILocation(line: 450, column: 8, scope: !1858, inlinedAt: !1865)
!2120 = !DILocation(line: 450, column: 6, scope: !1858, inlinedAt: !1865)
!2121 = !DILocation(line: 451, column: 9, scope: !1858, inlinedAt: !1865)
!2122 = !DILocation(line: 552, column: 3, scope: !1866, inlinedAt: !1869)
!2123 = !DILocation(line: 557, column: 19, scope: !1868, inlinedAt: !1869)
!2124 = !DILocation(line: 557, column: 25, scope: !1868, inlinedAt: !1869)
!2125 = !DILocation(line: 557, column: 9, scope: !1868, inlinedAt: !1869)
!2126 = !DILocation(line: 557, column: 2, scope: !1868, inlinedAt: !1869)
!2127 = !DILocation(line: 558, column: 1, scope: !1868, inlinedAt: !1869)
!2128 = !DILocation(line: 664, column: 2, scope: !1850)
!2129 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2130, file: !2130, line: 646, type: !2131, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!2130 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!849}
!2133 = !DILocalVariable(name: "__ret", scope: !2134, file: !2130, line: 648, type: !849)
!2134 = distinct !DILexicalBlock(scope: !2129, file: !2130, line: 648, column: 9)
!2135 = !DILocation(line: 648, column: 9, scope: !2134)
!2136 = !DILocalVariable(name: "__edi", scope: !2134, file: !2130, line: 648, type: !849)
!2137 = !DILocalVariable(name: "__esi", scope: !2134, file: !2130, line: 648, type: !849)
!2138 = !DILocalVariable(name: "__edx", scope: !2134, file: !2130, line: 648, type: !849)
!2139 = !DILocalVariable(name: "__ecx", scope: !2134, file: !2130, line: 648, type: !849)
!2140 = !DILocalVariable(name: "__eax", scope: !2134, file: !2130, line: 648, type: !849)
!2141 = !DILocation(line: 648, column: 9, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !2130, line: 648, column: 9)
!2143 = distinct !DILexicalBlock(scope: !2134, file: !2130, line: 648, column: 9)
!2144 = !{i32 -2145765339, i32 -2145763024, i32 -2145762790, i32 -2145762739, i32 -2145762711, i32 -2145762686, i32 -2145763002, i32 -2145762989, i32 -2145762551, i32 -2145762432, i32 -2145762897, i32 -2145762870, i32 -2145762842, i32 -2145762812}
!2145 = !DILocalVariable(name: "__mask", scope: !2146, file: !2130, line: 648, type: !849)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !2130, line: 648, column: 9)
!2147 = !DILocation(line: 648, column: 9, scope: !2146)
!2148 = !DILocation(line: 648, column: 9, scope: !2143)
!2149 = !DILocation(line: 648, column: 2, scope: !2129)
!2150 = distinct !DISubprogram(name: "get_order", scope: !2151, file: !2151, line: 29, type: !1287, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!2151 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2152 = !DILocalVariable(name: "x", arg: 1, scope: !2153, file: !2154, line: 366, type: !22)
!2153 = distinct !DISubprogram(name: "fls64", scope: !2154, file: !2154, line: 366, type: !2155, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!2154 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!1289, !22}
!2157 = !DILocation(line: 366, column: 40, scope: !2153, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 46, column: 9, scope: !2150)
!2159 = !DILocalVariable(name: "bitpos", scope: !2153, file: !2154, line: 368, type: !1289)
!2160 = !DILocation(line: 368, column: 6, scope: !2153, inlinedAt: !2158)
!2161 = !DILocalVariable(name: "size", arg: 1, scope: !2150, file: !2151, line: 29, type: !849)
!2162 = !DILocation(line: 29, column: 63, scope: !2150)
!2163 = !DILocation(line: 31, column: 27, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2150, file: !2151, line: 31, column: 6)
!2165 = !DILocation(line: 31, column: 6, scope: !2164)
!2166 = !DILocation(line: 31, column: 6, scope: !2150)
!2167 = !DILocation(line: 32, column: 8, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !2151, line: 32, column: 7)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !2151, line: 31, column: 34)
!2170 = !DILocation(line: 32, column: 7, scope: !2169)
!2171 = !DILocation(line: 33, column: 4, scope: !2168)
!2172 = !DILocation(line: 35, column: 7, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !2151, line: 35, column: 7)
!2174 = !DILocation(line: 35, column: 12, scope: !2173)
!2175 = !DILocation(line: 35, column: 7, scope: !2169)
!2176 = !DILocation(line: 36, column: 4, scope: !2173)
!2177 = !DILocation(line: 38, column: 10, scope: !2169)
!2178 = !DILocation(line: 38, column: 28, scope: !2169)
!2179 = !DILocation(line: 38, column: 41, scope: !2169)
!2180 = !DILocation(line: 38, column: 3, scope: !2169)
!2181 = !DILocation(line: 41, column: 6, scope: !2150)
!2182 = !DILocation(line: 42, column: 7, scope: !2150)
!2183 = !DILocation(line: 46, column: 15, scope: !2150)
!2184 = !DILocation(line: 374, column: 2, scope: !2153, inlinedAt: !2158)
!2185 = !DILocation(line: 376, column: 14, scope: !2153, inlinedAt: !2158)
!2186 = !{i32 679469}
!2187 = !DILocation(line: 377, column: 9, scope: !2153, inlinedAt: !2158)
!2188 = !DILocation(line: 377, column: 16, scope: !2153, inlinedAt: !2158)
!2189 = !DILocation(line: 46, column: 2, scope: !2150)
!2190 = !DILocation(line: 48, column: 1, scope: !2150)
!2191 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2192, file: !2192, line: 30, type: !2193, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!2192 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!1289, !21}
!2195 = !DILocation(line: 366, column: 40, scope: !2153, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 32, column: 9, scope: !2191)
!2197 = !DILocation(line: 368, column: 6, scope: !2153, inlinedAt: !2196)
!2198 = !DILocalVariable(name: "n", arg: 1, scope: !2191, file: !2192, line: 30, type: !21)
!2199 = !DILocation(line: 30, column: 21, scope: !2191)
!2200 = !DILocation(line: 32, column: 15, scope: !2191)
!2201 = !DILocation(line: 374, column: 2, scope: !2153, inlinedAt: !2196)
!2202 = !DILocation(line: 376, column: 14, scope: !2153, inlinedAt: !2196)
!2203 = !DILocation(line: 377, column: 9, scope: !2153, inlinedAt: !2196)
!2204 = !DILocation(line: 377, column: 16, scope: !2153, inlinedAt: !2196)
!2205 = !DILocation(line: 32, column: 18, scope: !2191)
!2206 = !DILocation(line: 32, column: 2, scope: !2191)
!2207 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2208, file: !2208, line: 137, type: !2209, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !873)
!2208 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!65, !1861, !2211, !1853, !847}
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2213 = !DILocalVariable(name: "s", arg: 1, scope: !2207, file: !2208, line: 137, type: !1861)
!2214 = !DILocation(line: 137, column: 54, scope: !2207)
!2215 = !DILocalVariable(name: "object", arg: 2, scope: !2207, file: !2208, line: 137, type: !2211)
!2216 = !DILocation(line: 137, column: 69, scope: !2207)
!2217 = !DILocalVariable(name: "size", arg: 3, scope: !2207, file: !2208, line: 138, type: !1853)
!2218 = !DILocation(line: 138, column: 12, scope: !2207)
!2219 = !DILocalVariable(name: "flags", arg: 4, scope: !2207, file: !2208, line: 138, type: !847)
!2220 = !DILocation(line: 138, column: 24, scope: !2207)
!2221 = !DILocation(line: 140, column: 17, scope: !2207)
!2222 = !DILocation(line: 140, column: 2, scope: !2207)
