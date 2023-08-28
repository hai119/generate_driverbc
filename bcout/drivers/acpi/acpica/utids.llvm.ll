; ModuleID = '../bcout/drivers/acpi/acpica/utids.llvm.bc'
source_filename = "drivers/acpi/acpica/utids.c"
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
%struct.acpi_pnp_device_id = type { i32, i8* }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_pnp_device_id_list = type { i32, i32, [0 x %struct.acpi_pnp_device_id] }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"_HID\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_UID\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_CID\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_CLS\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_execute_HID(%struct.acpi_namespace_node* %device_node, %struct.acpi_pnp_device_id** %return_id) #0 !dbg !38 {
entry:
  %retval = alloca i32, align 4
  %device_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %return_id.addr = alloca %struct.acpi_pnp_device_id**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %hid = alloca %struct.acpi_pnp_device_id*, align 8
  %length = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_namespace_node* %device_node, %struct.acpi_namespace_node** %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %device_node.addr, metadata !806, metadata !DIExpression()), !dbg !807
  store %struct.acpi_pnp_device_id** %return_id, %struct.acpi_pnp_device_id*** %return_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id*** %return_id.addr, metadata !808, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !810, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id** %hid, metadata !812, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.declare(metadata i32* %length, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata i32* %status, metadata !816, metadata !DIExpression()), !dbg !817
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node.addr, align 8, !dbg !818
  %call = call i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 3, %union.acpi_operand_object** %obj_desc) #9, !dbg !819
  store i32 %call, i32* %status, align 4, !dbg !820
  %1 = load i32, i32* %status, align 4, !dbg !821
  %tobool = icmp ne i32 %1, 0, !dbg !821
  br i1 %tobool, label %if.then, label %if.end, !dbg !823

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !824
  store i32 %2, i32* %retval, align 4, !dbg !824
  br label %return, !dbg !824

if.end:                                           ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !826
  %common = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !828
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !829
  %4 = load i8, i8* %type, align 1, !dbg !829
  %conv = zext i8 %4 to i32, !dbg !826
  %cmp = icmp eq i32 %conv, 1, !dbg !830
  br i1 %cmp, label %if.then2, label %if.else, !dbg !831

if.then2:                                         ; preds = %if.end
  store i32 8, i32* %length, align 4, !dbg !832
  br label %if.end4, !dbg !834

if.else:                                          ; preds = %if.end
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !835
  %string = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_string*, !dbg !837
  %length3 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 6, !dbg !838
  %6 = load i32, i32* %length3, align 8, !dbg !838
  %add = add i32 %6, 1, !dbg !839
  store i32 %add, i32* %length, align 4, !dbg !840
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %7 = load i32, i32* %length, align 4, !dbg !841
  %conv5 = zext i32 %7 to i64, !dbg !841
  %add6 = add i64 16, %conv5, !dbg !841
  %call7 = call i8* @acpi_os_allocate_zeroed(i64 %add6) #9, !dbg !841
  %8 = bitcast i8* %call7 to %struct.acpi_pnp_device_id*, !dbg !841
  store %struct.acpi_pnp_device_id* %8, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !842
  %9 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !843
  %tobool8 = icmp ne %struct.acpi_pnp_device_id* %9, null, !dbg !843
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !845

if.then9:                                         ; preds = %if.end4
  store i32 4, i32* %status, align 4, !dbg !846
  br label %cleanup, !dbg !848

if.end10:                                         ; preds = %if.end4
  %10 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !849
  %11 = bitcast %struct.acpi_pnp_device_id* %10 to i8*, !dbg !849
  %add.ptr = getelementptr i8, i8* %11, i64 16, !dbg !849
  %12 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !850
  %string11 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %12, i32 0, i32 1, !dbg !851
  store i8* %add.ptr, i8** %string11, align 8, !dbg !852
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !853
  %common12 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_common*, !dbg !855
  %type13 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common12, i32 0, i32 2, !dbg !856
  %14 = load i8, i8* %type13, align 1, !dbg !856
  %conv14 = zext i8 %14 to i32, !dbg !853
  %cmp15 = icmp eq i32 %conv14, 1, !dbg !857
  br i1 %cmp15, label %if.then17, label %if.else19, !dbg !858

if.then17:                                        ; preds = %if.end10
  %15 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !859
  %string18 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %15, i32 0, i32 1, !dbg !861
  %16 = load i8*, i8** %string18, align 8, !dbg !861
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !862
  %integer = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_integer*, !dbg !863
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !864
  %18 = load i64, i64* %value, align 8, !dbg !864
  call void @acpi_ex_eisa_id_to_string(i8* %16, i64 %18) #9, !dbg !865
  br label %if.end23, !dbg !866

if.else19:                                        ; preds = %if.end10
  %19 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !867
  %string20 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %19, i32 0, i32 1, !dbg !869
  %20 = load i8*, i8** %string20, align 8, !dbg !869
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !870
  %string21 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_string*, !dbg !871
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string21, i32 0, i32 5, !dbg !872
  %22 = load i8*, i8** %pointer, align 8, !dbg !872
  %call22 = call i8* @strcpy(i8* %20, i8* %22) #9, !dbg !873
  br label %if.end23

if.end23:                                         ; preds = %if.else19, %if.then17
  %23 = load i32, i32* %length, align 4, !dbg !874
  %24 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !875
  %length24 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %24, i32 0, i32 0, !dbg !876
  store i32 %23, i32* %length24, align 8, !dbg !877
  %25 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !878
  %26 = load %struct.acpi_pnp_device_id**, %struct.acpi_pnp_device_id*** %return_id.addr, align 8, !dbg !879
  store %struct.acpi_pnp_device_id* %25, %struct.acpi_pnp_device_id** %26, align 8, !dbg !880
  br label %cleanup, !dbg !881

cleanup:                                          ; preds = %if.end23, %if.then9
  call void @llvm.dbg.label(metadata !882), !dbg !883
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !884
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %27) #9, !dbg !885
  %28 = load i32, i32* %status, align 4, !dbg !886
  store i32 %28, i32* %retval, align 4, !dbg !886
  br label %return, !dbg !886

return:                                           ; preds = %cleanup, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !887
  ret i32 %29, !dbg !887
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node*, i8*, i32, %union.acpi_operand_object**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !888 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !892, metadata !DIExpression()), !dbg !898
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !902, metadata !DIExpression()), !dbg !903
  %0 = load i64, i64* %size.addr, align 8, !dbg !904
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !905, metadata !DIExpression()), !dbg !906
  br label %do.body, !dbg !906

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !907, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !911, metadata !DIExpression()), !dbg !910
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !910
  %conv = zext i1 %cmp to i32, !dbg !910
  store i32 1, i32* %tmp, align 4, !dbg !910
  %1 = load i32, i32* %tmp, align 4, !dbg !910
  %call = call i64 @arch_local_save_flags() #9, !dbg !912
  store i64 %call, i64* %_flags, align 8, !dbg !912
  br label %do.end, !dbg !912

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !913, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !916, metadata !DIExpression()), !dbg !915
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !915
  %conv6 = zext i1 %cmp5 to i32, !dbg !915
  store i32 1, i32* %tmp7, align 4, !dbg !915
  %2 = load i32, i32* %tmp7, align 4, !dbg !915
  %3 = load i64, i64* %_flags, align 8, !dbg !917
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !918
  %and.i = and i64 %4, 512, !dbg !919
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !920
  %lnot.i = xor i1 %tobool.i, true, !dbg !920
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !920
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !917
  %5 = load i32, i32* %tmp8, align 4, !dbg !917
  store i32 %5, i32* %tmp1, align 4, !dbg !912
  %6 = load i32, i32* %tmp1, align 4, !dbg !906
  %tobool = icmp ne i32 %6, 0, !dbg !921
  %7 = zext i1 %tobool to i64, !dbg !921
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !921
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #9, !dbg !922
  ret i8* %call10, !dbg !923
}

; Function Attrs: noredzone
declare dso_local void @acpi_ex_eisa_id_to_string(i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_execute_UID(%struct.acpi_namespace_node* %device_node, %struct.acpi_pnp_device_id** %return_id) #0 !dbg !924 {
entry:
  %retval = alloca i32, align 4
  %device_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %return_id.addr = alloca %struct.acpi_pnp_device_id**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %uid = alloca %struct.acpi_pnp_device_id*, align 8
  %length = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_namespace_node* %device_node, %struct.acpi_namespace_node** %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %device_node.addr, metadata !925, metadata !DIExpression()), !dbg !926
  store %struct.acpi_pnp_device_id** %return_id, %struct.acpi_pnp_device_id*** %return_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id*** %return_id.addr, metadata !927, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !929, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id** %uid, metadata !931, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.declare(metadata i32* %length, metadata !933, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.declare(metadata i32* %status, metadata !935, metadata !DIExpression()), !dbg !936
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node.addr, align 8, !dbg !937
  %call = call i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 3, %union.acpi_operand_object** %obj_desc) #9, !dbg !938
  store i32 %call, i32* %status, align 4, !dbg !939
  %1 = load i32, i32* %status, align 4, !dbg !940
  %tobool = icmp ne i32 %1, 0, !dbg !940
  br i1 %tobool, label %if.then, label %if.end, !dbg !942

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !943
  store i32 %2, i32* %retval, align 4, !dbg !943
  br label %return, !dbg !943

if.end:                                           ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !945
  %common = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !947
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !948
  %4 = load i8, i8* %type, align 1, !dbg !948
  %conv = zext i8 %4 to i32, !dbg !945
  %cmp = icmp eq i32 %conv, 1, !dbg !949
  br i1 %cmp, label %if.then2, label %if.else, !dbg !950

if.then2:                                         ; preds = %if.end
  store i32 21, i32* %length, align 4, !dbg !951
  br label %if.end4, !dbg !953

if.else:                                          ; preds = %if.end
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !954
  %string = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_string*, !dbg !956
  %length3 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 6, !dbg !957
  %6 = load i32, i32* %length3, align 8, !dbg !957
  %add = add i32 %6, 1, !dbg !958
  store i32 %add, i32* %length, align 4, !dbg !959
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %7 = load i32, i32* %length, align 4, !dbg !960
  %conv5 = zext i32 %7 to i64, !dbg !960
  %add6 = add i64 16, %conv5, !dbg !960
  %call7 = call i8* @acpi_os_allocate_zeroed(i64 %add6) #9, !dbg !960
  %8 = bitcast i8* %call7 to %struct.acpi_pnp_device_id*, !dbg !960
  store %struct.acpi_pnp_device_id* %8, %struct.acpi_pnp_device_id** %uid, align 8, !dbg !961
  %9 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %uid, align 8, !dbg !962
  %tobool8 = icmp ne %struct.acpi_pnp_device_id* %9, null, !dbg !962
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !964

if.then9:                                         ; preds = %if.end4
  store i32 4, i32* %status, align 4, !dbg !965
  br label %cleanup, !dbg !967

if.end10:                                         ; preds = %if.end4
  %10 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %uid, align 8, !dbg !968
  %11 = bitcast %struct.acpi_pnp_device_id* %10 to i8*, !dbg !968
  %add.ptr = getelementptr i8, i8* %11, i64 16, !dbg !968
  %12 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %uid, align 8, !dbg !969
  %string11 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %12, i32 0, i32 1, !dbg !970
  store i8* %add.ptr, i8** %string11, align 8, !dbg !971
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !972
  %common12 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_common*, !dbg !974
  %type13 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common12, i32 0, i32 2, !dbg !975
  %14 = load i8, i8* %type13, align 1, !dbg !975
  %conv14 = zext i8 %14 to i32, !dbg !972
  %cmp15 = icmp eq i32 %conv14, 1, !dbg !976
  br i1 %cmp15, label %if.then17, label %if.else19, !dbg !977

if.then17:                                        ; preds = %if.end10
  %15 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %uid, align 8, !dbg !978
  %string18 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %15, i32 0, i32 1, !dbg !980
  %16 = load i8*, i8** %string18, align 8, !dbg !980
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !981
  %integer = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_integer*, !dbg !982
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !983
  %18 = load i64, i64* %value, align 8, !dbg !983
  call void @acpi_ex_integer_to_string(i8* %16, i64 %18) #9, !dbg !984
  br label %if.end23, !dbg !985

if.else19:                                        ; preds = %if.end10
  %19 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %uid, align 8, !dbg !986
  %string20 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %19, i32 0, i32 1, !dbg !988
  %20 = load i8*, i8** %string20, align 8, !dbg !988
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !989
  %string21 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_string*, !dbg !990
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string21, i32 0, i32 5, !dbg !991
  %22 = load i8*, i8** %pointer, align 8, !dbg !991
  %call22 = call i8* @strcpy(i8* %20, i8* %22) #9, !dbg !992
  br label %if.end23

if.end23:                                         ; preds = %if.else19, %if.then17
  %23 = load i32, i32* %length, align 4, !dbg !993
  %24 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %uid, align 8, !dbg !994
  %length24 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %24, i32 0, i32 0, !dbg !995
  store i32 %23, i32* %length24, align 8, !dbg !996
  %25 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %uid, align 8, !dbg !997
  %26 = load %struct.acpi_pnp_device_id**, %struct.acpi_pnp_device_id*** %return_id.addr, align 8, !dbg !998
  store %struct.acpi_pnp_device_id* %25, %struct.acpi_pnp_device_id** %26, align 8, !dbg !999
  br label %cleanup, !dbg !1000

cleanup:                                          ; preds = %if.end23, %if.then9
  call void @llvm.dbg.label(metadata !1001), !dbg !1002
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1003
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %27) #9, !dbg !1004
  %28 = load i32, i32* %status, align 4, !dbg !1005
  store i32 %28, i32* %retval, align 4, !dbg !1005
  br label %return, !dbg !1005

return:                                           ; preds = %cleanup, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !1006
  ret i32 %29, !dbg !1006
}

; Function Attrs: noredzone
declare dso_local void @acpi_ex_integer_to_string(i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_execute_CID(%struct.acpi_namespace_node* %device_node, %struct.acpi_pnp_device_id_list** %return_cid_list) #0 !dbg !1007 {
entry:
  %retval = alloca i32, align 4
  %device_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %return_cid_list.addr = alloca %struct.acpi_pnp_device_id_list**, align 8
  %cid_objects = alloca %union.acpi_operand_object**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %cid_list = alloca %struct.acpi_pnp_device_id_list*, align 8
  %next_id_string = alloca i8*, align 8
  %string_area_size = alloca i32, align 4
  %length = alloca i32, align 4
  %cid_list_size = alloca i32, align 4
  %status = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.acpi_namespace_node* %device_node, %struct.acpi_namespace_node** %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %device_node.addr, metadata !1020, metadata !DIExpression()), !dbg !1021
  store %struct.acpi_pnp_device_id_list** %return_cid_list, %struct.acpi_pnp_device_id_list*** %return_cid_list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id_list*** %return_cid_list.addr, metadata !1022, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %cid_objects, metadata !1024, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1026, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id_list** %cid_list, metadata !1028, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.declare(metadata i8** %next_id_string, metadata !1030, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.declare(metadata i32* %string_area_size, metadata !1032, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.declare(metadata i32* %length, metadata !1034, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.declare(metadata i32* %cid_list_size, metadata !1036, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1038, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.declare(metadata i32* %count, metadata !1040, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1042, metadata !DIExpression()), !dbg !1043
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node.addr, align 8, !dbg !1044
  %call = call i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 11, %union.acpi_operand_object** %obj_desc) #9, !dbg !1045
  store i32 %call, i32* %status, align 4, !dbg !1046
  %1 = load i32, i32* %status, align 4, !dbg !1047
  %tobool = icmp ne i32 %1, 0, !dbg !1047
  br i1 %tobool, label %if.then, label %if.end, !dbg !1049

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !1050
  store i32 %2, i32* %retval, align 4, !dbg !1050
  br label %return, !dbg !1050

if.end:                                           ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1052
  %common = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !1054
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1055
  %4 = load i8, i8* %type, align 1, !dbg !1055
  %conv = zext i8 %4 to i32, !dbg !1052
  %cmp = icmp eq i32 %conv, 4, !dbg !1056
  br i1 %cmp, label %if.then2, label %if.else, !dbg !1057

if.then2:                                         ; preds = %if.end
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1058
  %package = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_package*, !dbg !1060
  %count3 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 9, !dbg !1061
  %6 = load i32, i32* %count3, align 4, !dbg !1061
  store i32 %6, i32* %count, align 4, !dbg !1062
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1063
  %package4 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_package*, !dbg !1064
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package4, i32 0, i32 6, !dbg !1065
  %8 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1065
  store %union.acpi_operand_object** %8, %union.acpi_operand_object*** %cid_objects, align 8, !dbg !1066
  br label %if.end5, !dbg !1067

if.else:                                          ; preds = %if.end
  store i32 1, i32* %count, align 4, !dbg !1068
  store %union.acpi_operand_object** %obj_desc, %union.acpi_operand_object*** %cid_objects, align 8, !dbg !1070
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  store i32 0, i32* %string_area_size, align 4, !dbg !1071
  store i32 0, i32* %i, align 4, !dbg !1072
  br label %for.cond, !dbg !1074

for.cond:                                         ; preds = %for.inc, %if.end5
  %9 = load i32, i32* %i, align 4, !dbg !1075
  %10 = load i32, i32* %count, align 4, !dbg !1077
  %cmp6 = icmp ult i32 %9, %10, !dbg !1078
  br i1 %cmp6, label %for.body, label %for.end, !dbg !1079

for.body:                                         ; preds = %for.cond
  %11 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %cid_objects, align 8, !dbg !1080
  %12 = load i32, i32* %i, align 4, !dbg !1082
  %idxprom = zext i32 %12 to i64, !dbg !1080
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %11, i64 %idxprom, !dbg !1080
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !1080
  %common8 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_common*, !dbg !1083
  %type9 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common8, i32 0, i32 2, !dbg !1084
  %14 = load i8, i8* %type9, align 1, !dbg !1084
  %conv10 = zext i8 %14 to i32, !dbg !1080
  switch i32 %conv10, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ], !dbg !1085

sw.bb:                                            ; preds = %for.body
  %15 = load i32, i32* %string_area_size, align 4, !dbg !1086
  %add = add i32 %15, 8, !dbg !1086
  store i32 %add, i32* %string_area_size, align 4, !dbg !1086
  br label %sw.epilog, !dbg !1088

sw.bb11:                                          ; preds = %for.body
  %16 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %cid_objects, align 8, !dbg !1089
  %17 = load i32, i32* %i, align 4, !dbg !1090
  %idxprom12 = zext i32 %17 to i64, !dbg !1089
  %arrayidx13 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %16, i64 %idxprom12, !dbg !1089
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx13, align 8, !dbg !1089
  %string = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_string*, !dbg !1091
  %length14 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 6, !dbg !1092
  %19 = load i32, i32* %length14, align 8, !dbg !1092
  %add15 = add i32 %19, 1, !dbg !1093
  %20 = load i32, i32* %string_area_size, align 4, !dbg !1094
  %add16 = add i32 %20, %add15, !dbg !1094
  store i32 %add16, i32* %string_area_size, align 4, !dbg !1094
  br label %sw.epilog, !dbg !1095

sw.default:                                       ; preds = %for.body
  store i32 8, i32* %status, align 4, !dbg !1096
  br label %cleanup, !dbg !1097

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb
  br label %for.inc, !dbg !1098

for.inc:                                          ; preds = %sw.epilog
  %21 = load i32, i32* %i, align 4, !dbg !1099
  %inc = add i32 %21, 1, !dbg !1099
  store i32 %inc, i32* %i, align 4, !dbg !1099
  br label %for.cond, !dbg !1100, !llvm.loop !1101

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %count, align 4, !dbg !1103
  %conv17 = zext i32 %22 to i64, !dbg !1103
  %mul = mul i64 %conv17, 16, !dbg !1104
  %add18 = add i64 8, %mul, !dbg !1105
  %23 = load i32, i32* %string_area_size, align 4, !dbg !1106
  %conv19 = zext i32 %23 to i64, !dbg !1106
  %add20 = add i64 %add18, %conv19, !dbg !1107
  %conv21 = trunc i64 %add20 to i32, !dbg !1108
  store i32 %conv21, i32* %cid_list_size, align 4, !dbg !1109
  %24 = load i32, i32* %cid_list_size, align 4, !dbg !1110
  %conv22 = zext i32 %24 to i64, !dbg !1110
  %call23 = call i8* @acpi_os_allocate_zeroed(i64 %conv22) #9, !dbg !1110
  %25 = bitcast i8* %call23 to %struct.acpi_pnp_device_id_list*, !dbg !1110
  store %struct.acpi_pnp_device_id_list* %25, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1111
  %26 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1112
  %tobool24 = icmp ne %struct.acpi_pnp_device_id_list* %26, null, !dbg !1112
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !1114

if.then25:                                        ; preds = %for.end
  store i32 4, i32* %status, align 4, !dbg !1115
  br label %cleanup, !dbg !1117

if.end26:                                         ; preds = %for.end
  %27 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1118
  %ids = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %27, i32 0, i32 2, !dbg !1118
  %arraydecay = getelementptr inbounds [0 x %struct.acpi_pnp_device_id], [0 x %struct.acpi_pnp_device_id]* %ids, i64 0, i64 0, !dbg !1118
  %28 = bitcast %struct.acpi_pnp_device_id* %arraydecay to i8*, !dbg !1118
  %29 = load i32, i32* %count, align 4, !dbg !1119
  %conv27 = zext i32 %29 to i64, !dbg !1120
  %mul28 = mul i64 %conv27, 16, !dbg !1121
  %add.ptr = getelementptr i8, i8* %28, i64 %mul28, !dbg !1122
  store i8* %add.ptr, i8** %next_id_string, align 8, !dbg !1123
  store i32 0, i32* %i, align 4, !dbg !1124
  br label %for.cond29, !dbg !1126

for.cond29:                                       ; preds = %for.inc63, %if.end26
  %30 = load i32, i32* %i, align 4, !dbg !1127
  %31 = load i32, i32* %count, align 4, !dbg !1129
  %cmp30 = icmp ult i32 %30, %31, !dbg !1130
  br i1 %cmp30, label %for.body32, label %for.end65, !dbg !1131

for.body32:                                       ; preds = %for.cond29
  %32 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %cid_objects, align 8, !dbg !1132
  %33 = load i32, i32* %i, align 4, !dbg !1135
  %idxprom33 = zext i32 %33 to i64, !dbg !1132
  %arrayidx34 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %32, i64 %idxprom33, !dbg !1132
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx34, align 8, !dbg !1132
  %common35 = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_common*, !dbg !1136
  %type36 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common35, i32 0, i32 2, !dbg !1137
  %35 = load i8, i8* %type36, align 1, !dbg !1137
  %conv37 = zext i8 %35 to i32, !dbg !1132
  %cmp38 = icmp eq i32 %conv37, 1, !dbg !1138
  br i1 %cmp38, label %if.then40, label %if.else43, !dbg !1139

if.then40:                                        ; preds = %for.body32
  %36 = load i8*, i8** %next_id_string, align 8, !dbg !1140
  %37 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %cid_objects, align 8, !dbg !1142
  %38 = load i32, i32* %i, align 4, !dbg !1143
  %idxprom41 = zext i32 %38 to i64, !dbg !1142
  %arrayidx42 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %37, i64 %idxprom41, !dbg !1142
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx42, align 8, !dbg !1142
  %integer = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_integer*, !dbg !1144
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1145
  %40 = load i64, i64* %value, align 8, !dbg !1145
  call void @acpi_ex_eisa_id_to_string(i8* %36, i64 %40) #9, !dbg !1146
  store i32 8, i32* %length, align 4, !dbg !1147
  br label %if.end53, !dbg !1148

if.else43:                                        ; preds = %for.body32
  %41 = load i8*, i8** %next_id_string, align 8, !dbg !1149
  %42 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %cid_objects, align 8, !dbg !1151
  %43 = load i32, i32* %i, align 4, !dbg !1152
  %idxprom44 = zext i32 %43 to i64, !dbg !1151
  %arrayidx45 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %42, i64 %idxprom44, !dbg !1151
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx45, align 8, !dbg !1151
  %string46 = bitcast %union.acpi_operand_object* %44 to %struct.acpi_object_string*, !dbg !1153
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string46, i32 0, i32 5, !dbg !1154
  %45 = load i8*, i8** %pointer, align 8, !dbg !1154
  %call47 = call i8* @strcpy(i8* %41, i8* %45) #9, !dbg !1155
  %46 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %cid_objects, align 8, !dbg !1156
  %47 = load i32, i32* %i, align 4, !dbg !1157
  %idxprom48 = zext i32 %47 to i64, !dbg !1156
  %arrayidx49 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %46, i64 %idxprom48, !dbg !1156
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx49, align 8, !dbg !1156
  %string50 = bitcast %union.acpi_operand_object* %48 to %struct.acpi_object_string*, !dbg !1158
  %length51 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string50, i32 0, i32 6, !dbg !1159
  %49 = load i32, i32* %length51, align 8, !dbg !1159
  %add52 = add i32 %49, 1, !dbg !1160
  store i32 %add52, i32* %length, align 4, !dbg !1161
  br label %if.end53

if.end53:                                         ; preds = %if.else43, %if.then40
  %50 = load i8*, i8** %next_id_string, align 8, !dbg !1162
  %51 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1163
  %ids54 = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %51, i32 0, i32 2, !dbg !1164
  %52 = load i32, i32* %i, align 4, !dbg !1165
  %idxprom55 = zext i32 %52 to i64, !dbg !1163
  %arrayidx56 = getelementptr [0 x %struct.acpi_pnp_device_id], [0 x %struct.acpi_pnp_device_id]* %ids54, i64 0, i64 %idxprom55, !dbg !1163
  %string57 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %arrayidx56, i32 0, i32 1, !dbg !1166
  store i8* %50, i8** %string57, align 8, !dbg !1167
  %53 = load i32, i32* %length, align 4, !dbg !1168
  %54 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1169
  %ids58 = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %54, i32 0, i32 2, !dbg !1170
  %55 = load i32, i32* %i, align 4, !dbg !1171
  %idxprom59 = zext i32 %55 to i64, !dbg !1169
  %arrayidx60 = getelementptr [0 x %struct.acpi_pnp_device_id], [0 x %struct.acpi_pnp_device_id]* %ids58, i64 0, i64 %idxprom59, !dbg !1169
  %length61 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %arrayidx60, i32 0, i32 0, !dbg !1172
  store i32 %53, i32* %length61, align 8, !dbg !1173
  %56 = load i32, i32* %length, align 4, !dbg !1174
  %57 = load i8*, i8** %next_id_string, align 8, !dbg !1175
  %idx.ext = zext i32 %56 to i64, !dbg !1175
  %add.ptr62 = getelementptr i8, i8* %57, i64 %idx.ext, !dbg !1175
  store i8* %add.ptr62, i8** %next_id_string, align 8, !dbg !1175
  br label %for.inc63, !dbg !1176

for.inc63:                                        ; preds = %if.end53
  %58 = load i32, i32* %i, align 4, !dbg !1177
  %inc64 = add i32 %58, 1, !dbg !1177
  store i32 %inc64, i32* %i, align 4, !dbg !1177
  br label %for.cond29, !dbg !1178, !llvm.loop !1179

for.end65:                                        ; preds = %for.cond29
  %59 = load i32, i32* %count, align 4, !dbg !1181
  %60 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1182
  %count66 = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %60, i32 0, i32 0, !dbg !1183
  store i32 %59, i32* %count66, align 8, !dbg !1184
  %61 = load i32, i32* %cid_list_size, align 4, !dbg !1185
  %62 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1186
  %list_size = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %62, i32 0, i32 1, !dbg !1187
  store i32 %61, i32* %list_size, align 4, !dbg !1188
  %63 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1189
  %64 = load %struct.acpi_pnp_device_id_list**, %struct.acpi_pnp_device_id_list*** %return_cid_list.addr, align 8, !dbg !1190
  store %struct.acpi_pnp_device_id_list* %63, %struct.acpi_pnp_device_id_list** %64, align 8, !dbg !1191
  br label %cleanup, !dbg !1192

cleanup:                                          ; preds = %for.end65, %if.then25, %sw.default
  call void @llvm.dbg.label(metadata !1193), !dbg !1194
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1195
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %65) #9, !dbg !1196
  %66 = load i32, i32* %status, align 4, !dbg !1197
  store i32 %66, i32* %retval, align 4, !dbg !1197
  br label %return, !dbg !1197

return:                                           ; preds = %cleanup, %if.then
  %67 = load i32, i32* %retval, align 4, !dbg !1198
  ret i32 %67, !dbg !1198
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_execute_CLS(%struct.acpi_namespace_node* %device_node, %struct.acpi_pnp_device_id** %return_id) #0 !dbg !1199 {
entry:
  %retval = alloca i32, align 4
  %device_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %return_id.addr = alloca %struct.acpi_pnp_device_id**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %cls_objects = alloca %union.acpi_operand_object**, align 8
  %count = alloca i32, align 4
  %cls = alloca %struct.acpi_pnp_device_id*, align 8
  %length = alloca i32, align 4
  %status = alloca i32, align 4
  %class_code = alloca [3 x i8], align 1
  store %struct.acpi_namespace_node* %device_node, %struct.acpi_namespace_node** %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %device_node.addr, metadata !1200, metadata !DIExpression()), !dbg !1201
  store %struct.acpi_pnp_device_id** %return_id, %struct.acpi_pnp_device_id*** %return_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id*** %return_id.addr, metadata !1202, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1204, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %cls_objects, metadata !1206, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.declare(metadata i32* %count, metadata !1208, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id** %cls, metadata !1210, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.declare(metadata i32* %length, metadata !1212, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1214, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.declare(metadata [3 x i8]* %class_code, metadata !1216, metadata !DIExpression()), !dbg !1217
  %0 = bitcast [3 x i8]* %class_code to i8*, !dbg !1217
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 3, i1 false), !dbg !1217
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node.addr, align 8, !dbg !1218
  %call = call i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 8, %union.acpi_operand_object** %obj_desc) #9, !dbg !1219
  store i32 %call, i32* %status, align 4, !dbg !1220
  %2 = load i32, i32* %status, align 4, !dbg !1221
  %tobool = icmp ne i32 %2, 0, !dbg !1221
  br i1 %tobool, label %if.then, label %if.end, !dbg !1223

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !1224
  store i32 %3, i32* %retval, align 4, !dbg !1224
  br label %return, !dbg !1224

if.end:                                           ; preds = %entry
  store i32 7, i32* %length, align 4, !dbg !1226
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1227
  %package = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_package*, !dbg !1228
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 6, !dbg !1229
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1229
  store %union.acpi_operand_object** %5, %union.acpi_operand_object*** %cls_objects, align 8, !dbg !1230
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1231
  %package1 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_package*, !dbg !1232
  %count2 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package1, i32 0, i32 9, !dbg !1233
  %7 = load i32, i32* %count2, align 4, !dbg !1233
  store i32 %7, i32* %count, align 4, !dbg !1234
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1235
  %common = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_common*, !dbg !1237
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1238
  %9 = load i8, i8* %type, align 1, !dbg !1238
  %conv = zext i8 %9 to i32, !dbg !1235
  %cmp = icmp eq i32 %conv, 4, !dbg !1239
  br i1 %cmp, label %if.then4, label %if.end49, !dbg !1240

if.then4:                                         ; preds = %if.end
  %10 = load i32, i32* %count, align 4, !dbg !1241
  %cmp5 = icmp ugt i32 %10, 0, !dbg !1244
  br i1 %cmp5, label %land.lhs.true, label %if.end16, !dbg !1245

land.lhs.true:                                    ; preds = %if.then4
  %11 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %cls_objects, align 8, !dbg !1246
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %11, i64 0, !dbg !1246
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !1246
  %common7 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_common*, !dbg !1247
  %type8 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common7, i32 0, i32 2, !dbg !1248
  %13 = load i8, i8* %type8, align 1, !dbg !1248
  %conv9 = zext i8 %13 to i32, !dbg !1246
  %cmp10 = icmp eq i32 %conv9, 1, !dbg !1249
  br i1 %cmp10, label %if.then12, label %if.end16, !dbg !1250

if.then12:                                        ; preds = %land.lhs.true
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %cls_objects, align 8, !dbg !1251
  %arrayidx13 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %14, i64 0, !dbg !1251
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx13, align 8, !dbg !1251
  %integer = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_integer*, !dbg !1253
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1254
  %16 = load i64, i64* %value, align 8, !dbg !1254
  %conv14 = trunc i64 %16 to i8, !dbg !1255
  %arrayidx15 = getelementptr [3 x i8], [3 x i8]* %class_code, i64 0, i64 0, !dbg !1256
  store i8 %conv14, i8* %arrayidx15, align 1, !dbg !1257
  br label %if.end16, !dbg !1258

if.end16:                                         ; preds = %if.then12, %land.lhs.true, %if.then4
  %17 = load i32, i32* %count, align 4, !dbg !1259
  %cmp17 = icmp ugt i32 %17, 1, !dbg !1261
  br i1 %cmp17, label %land.lhs.true19, label %if.end32, !dbg !1262

land.lhs.true19:                                  ; preds = %if.end16
  %18 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %cls_objects, align 8, !dbg !1263
  %arrayidx20 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %18, i64 1, !dbg !1263
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx20, align 8, !dbg !1263
  %common21 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_common*, !dbg !1264
  %type22 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common21, i32 0, i32 2, !dbg !1265
  %20 = load i8, i8* %type22, align 1, !dbg !1265
  %conv23 = zext i8 %20 to i32, !dbg !1263
  %cmp24 = icmp eq i32 %conv23, 1, !dbg !1266
  br i1 %cmp24, label %if.then26, label %if.end32, !dbg !1267

if.then26:                                        ; preds = %land.lhs.true19
  %21 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %cls_objects, align 8, !dbg !1268
  %arrayidx27 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %21, i64 1, !dbg !1268
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx27, align 8, !dbg !1268
  %integer28 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_integer*, !dbg !1270
  %value29 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer28, i32 0, i32 6, !dbg !1271
  %23 = load i64, i64* %value29, align 8, !dbg !1271
  %conv30 = trunc i64 %23 to i8, !dbg !1272
  %arrayidx31 = getelementptr [3 x i8], [3 x i8]* %class_code, i64 0, i64 1, !dbg !1273
  store i8 %conv30, i8* %arrayidx31, align 1, !dbg !1274
  br label %if.end32, !dbg !1275

if.end32:                                         ; preds = %if.then26, %land.lhs.true19, %if.end16
  %24 = load i32, i32* %count, align 4, !dbg !1276
  %cmp33 = icmp ugt i32 %24, 2, !dbg !1278
  br i1 %cmp33, label %land.lhs.true35, label %if.end48, !dbg !1279

land.lhs.true35:                                  ; preds = %if.end32
  %25 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %cls_objects, align 8, !dbg !1280
  %arrayidx36 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %25, i64 2, !dbg !1280
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx36, align 8, !dbg !1280
  %common37 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_common*, !dbg !1281
  %type38 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common37, i32 0, i32 2, !dbg !1282
  %27 = load i8, i8* %type38, align 1, !dbg !1282
  %conv39 = zext i8 %27 to i32, !dbg !1280
  %cmp40 = icmp eq i32 %conv39, 1, !dbg !1283
  br i1 %cmp40, label %if.then42, label %if.end48, !dbg !1284

if.then42:                                        ; preds = %land.lhs.true35
  %28 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %cls_objects, align 8, !dbg !1285
  %arrayidx43 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %28, i64 2, !dbg !1285
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx43, align 8, !dbg !1285
  %integer44 = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_integer*, !dbg !1287
  %value45 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer44, i32 0, i32 6, !dbg !1288
  %30 = load i64, i64* %value45, align 8, !dbg !1288
  %conv46 = trunc i64 %30 to i8, !dbg !1289
  %arrayidx47 = getelementptr [3 x i8], [3 x i8]* %class_code, i64 0, i64 2, !dbg !1290
  store i8 %conv46, i8* %arrayidx47, align 1, !dbg !1291
  br label %if.end48, !dbg !1292

if.end48:                                         ; preds = %if.then42, %land.lhs.true35, %if.end32
  br label %if.end49, !dbg !1293

if.end49:                                         ; preds = %if.end48, %if.end
  %31 = load i32, i32* %length, align 4, !dbg !1294
  %conv50 = zext i32 %31 to i64, !dbg !1294
  %add = add i64 16, %conv50, !dbg !1294
  %call51 = call i8* @acpi_os_allocate_zeroed(i64 %add) #9, !dbg !1294
  %32 = bitcast i8* %call51 to %struct.acpi_pnp_device_id*, !dbg !1294
  store %struct.acpi_pnp_device_id* %32, %struct.acpi_pnp_device_id** %cls, align 8, !dbg !1295
  %33 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %cls, align 8, !dbg !1296
  %tobool52 = icmp ne %struct.acpi_pnp_device_id* %33, null, !dbg !1296
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !1298

if.then53:                                        ; preds = %if.end49
  store i32 4, i32* %status, align 4, !dbg !1299
  br label %cleanup, !dbg !1301

if.end54:                                         ; preds = %if.end49
  %34 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %cls, align 8, !dbg !1302
  %35 = bitcast %struct.acpi_pnp_device_id* %34 to i8*, !dbg !1302
  %add.ptr = getelementptr i8, i8* %35, i64 16, !dbg !1302
  %36 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %cls, align 8, !dbg !1303
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %36, i32 0, i32 1, !dbg !1304
  store i8* %add.ptr, i8** %string, align 8, !dbg !1305
  %37 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %cls, align 8, !dbg !1306
  %string55 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %37, i32 0, i32 1, !dbg !1307
  %38 = load i8*, i8** %string55, align 8, !dbg !1307
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %class_code, i64 0, i64 0, !dbg !1308
  call void @acpi_ex_pci_cls_to_string(i8* %38, i8* %arraydecay) #9, !dbg !1309
  %39 = load i32, i32* %length, align 4, !dbg !1310
  %40 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %cls, align 8, !dbg !1311
  %length56 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %40, i32 0, i32 0, !dbg !1312
  store i32 %39, i32* %length56, align 8, !dbg !1313
  %41 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %cls, align 8, !dbg !1314
  %42 = load %struct.acpi_pnp_device_id**, %struct.acpi_pnp_device_id*** %return_id.addr, align 8, !dbg !1315
  store %struct.acpi_pnp_device_id* %41, %struct.acpi_pnp_device_id** %42, align 8, !dbg !1316
  br label %cleanup, !dbg !1317

cleanup:                                          ; preds = %if.end54, %if.then53
  call void @llvm.dbg.label(metadata !1318), !dbg !1319
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1320
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %43) #9, !dbg !1321
  %44 = load i32, i32* %status, align 4, !dbg !1322
  store i32 %44, i32* %retval, align 4, !dbg !1322
  br label %return, !dbg !1322

return:                                           ; preds = %cleanup, %if.then
  %45 = load i32, i32* %retval, align 4, !dbg !1323
  ret i32 %45, !dbg !1323
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local void @acpi_ex_pci_cls_to_string(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1324 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1331, metadata !DIExpression()), !dbg !1338
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1344, metadata !DIExpression()), !dbg !1345
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1346, metadata !DIExpression()), !dbg !1347
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1348, metadata !DIExpression()), !dbg !1349
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1350, metadata !DIExpression()), !dbg !1354
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1356, metadata !DIExpression()), !dbg !1360
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1362, metadata !DIExpression()), !dbg !1366
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1371, metadata !DIExpression()), !dbg !1372
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1373, metadata !DIExpression()), !dbg !1374
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1375, metadata !DIExpression()), !dbg !1376
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1377, metadata !DIExpression()), !dbg !1378
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1379, metadata !DIExpression()), !dbg !1380
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1381, metadata !DIExpression()), !dbg !1382
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1383, metadata !DIExpression()), !dbg !1384
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1385, metadata !DIExpression()), !dbg !1386
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1387, metadata !DIExpression()), !dbg !1388
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1389, metadata !DIExpression()), !dbg !1390
  %0 = load i64, i64* %size.addr, align 8, !dbg !1391
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1392
  %or = or i32 %1, 256, !dbg !1393
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1394
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !1395
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1396

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1397
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1398
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1399

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1400
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1401
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1402
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !1403
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1380
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1404
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1405
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1406
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1407
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1408
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1409
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !1410
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1410
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1410
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1410
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1410
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1411
  br label %kmalloc.exit, !dbg !1411

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1412
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1413
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1413
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1415

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1416
  br label %kmalloc_index.exit.i, !dbg !1416

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1417
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1419
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1420

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1421
  br label %kmalloc_index.exit.i, !dbg !1421

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1422
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1424
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1425

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1426
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1427
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1428

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1429
  br label %kmalloc_index.exit.i, !dbg !1429

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1430
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1432
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1433

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1434
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1435
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1436

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1437
  br label %kmalloc_index.exit.i, !dbg !1437

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1438
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1440
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1441

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1442
  br label %kmalloc_index.exit.i, !dbg !1442

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1443
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1445
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1446

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1447
  br label %kmalloc_index.exit.i, !dbg !1447

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1448
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1450
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1451

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1452
  br label %kmalloc_index.exit.i, !dbg !1452

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1453
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1455
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1456

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1457
  br label %kmalloc_index.exit.i, !dbg !1457

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1458
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1460
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1461

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1462
  br label %kmalloc_index.exit.i, !dbg !1462

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1463
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1465
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1466

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1467
  br label %kmalloc_index.exit.i, !dbg !1467

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1468
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1470
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1471

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1472
  br label %kmalloc_index.exit.i, !dbg !1472

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1473
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1475
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1476

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1477
  br label %kmalloc_index.exit.i, !dbg !1477

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1478
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1480
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1481

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1482
  br label %kmalloc_index.exit.i, !dbg !1482

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1483
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1485
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1486

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1487
  br label %kmalloc_index.exit.i, !dbg !1487

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1488
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1490
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1491

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1492
  br label %kmalloc_index.exit.i, !dbg !1492

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1493
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1495
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1496

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1497
  br label %kmalloc_index.exit.i, !dbg !1497

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1498
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1500
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1501

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1502
  br label %kmalloc_index.exit.i, !dbg !1502

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1503
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1505
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1506

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1507
  br label %kmalloc_index.exit.i, !dbg !1507

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1508
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1510
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1511

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1512
  br label %kmalloc_index.exit.i, !dbg !1512

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1513
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1515
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1516

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1517
  br label %kmalloc_index.exit.i, !dbg !1517

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1518
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1520
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1521

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1522
  br label %kmalloc_index.exit.i, !dbg !1522

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1523
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1525
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1526

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1527
  br label %kmalloc_index.exit.i, !dbg !1527

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1528
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1530
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1531

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1532
  br label %kmalloc_index.exit.i, !dbg !1532

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1533
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1535
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1536

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1537
  br label %kmalloc_index.exit.i, !dbg !1537

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1538
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1540
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1541

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1542
  br label %kmalloc_index.exit.i, !dbg !1542

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1543
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1545
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1546

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1547
  br label %kmalloc_index.exit.i, !dbg !1547

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1548
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1550
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1551

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1552
  br label %kmalloc_index.exit.i, !dbg !1552

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1553
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1555
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1556

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1557
  br label %kmalloc_index.exit.i, !dbg !1557

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1558, !srcloc !1561
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !1562, !srcloc !1565
  unreachable, !dbg !1566

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1567
  store i32 %45, i32* %index.i, align 4, !dbg !1568
  %46 = load i32, i32* %index.i, align 4, !dbg !1569
  %tobool.i = icmp ne i32 %46, 0, !dbg !1569
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1571

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1572
  br label %kmalloc.exit, !dbg !1572

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1573
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1574
  %and.i.i = and i32 %48, 17, !dbg !1574
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1574
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1574
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1574
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1574
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1576

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1577
  br label %kmalloc_type.exit.i, !dbg !1577

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1578
  %and2.i.i = and i32 %49, 1, !dbg !1579
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1578
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1578
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1578
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1580
  br label %kmalloc_type.exit.i, !dbg !1580

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1581
  %idxprom.i = zext i32 %51 to i64, !dbg !1582
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1582
  %52 = load i32, i32* %index.i, align 4, !dbg !1583
  %idxprom6.i = zext i32 %52 to i64, !dbg !1582
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1582
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1582
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1584
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1585
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1586
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1587
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !1588
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1588
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1588
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1588
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1588
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1349
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1589
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1590
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1591
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1592
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !1593
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1594
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1595
  store i8* %62, i8** %retval.i, align 8, !dbg !1596
  br label %kmalloc.exit, !dbg !1596

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1597
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1598
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !1599
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1599
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1599
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1599
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1599
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1600
  br label %kmalloc.exit, !dbg !1600

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1601
  ret i8* %65, !dbg !1602
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1603 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1607, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1610, metadata !DIExpression()), !dbg !1609
  %0 = load i64, i64* %__edi, align 8, !dbg !1609
  store i64 %0, i64* %__edi, align 8, !dbg !1609
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1611, metadata !DIExpression()), !dbg !1609
  %1 = load i64, i64* %__esi, align 8, !dbg !1609
  store i64 %1, i64* %__esi, align 8, !dbg !1609
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1612, metadata !DIExpression()), !dbg !1609
  %2 = load i64, i64* %__edx, align 8, !dbg !1609
  store i64 %2, i64* %__edx, align 8, !dbg !1609
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1613, metadata !DIExpression()), !dbg !1609
  %3 = load i64, i64* %__ecx, align 8, !dbg !1609
  store i64 %3, i64* %__ecx, align 8, !dbg !1609
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1614, metadata !DIExpression()), !dbg !1609
  %4 = load i64, i64* %__eax, align 8, !dbg !1609
  store i64 %4, i64* %__eax, align 8, !dbg !1609
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1609
  %6 = call i64 @llvm.read_register.i64(metadata !32), !dbg !1615
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !1615, !srcloc !1618
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1615
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1615
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1615
  call void @llvm.write_register.i64(metadata !32, i64 %asmresult1), !dbg !1615
  %8 = load i64, i64* %__eax, align 8, !dbg !1615
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1619, metadata !DIExpression()), !dbg !1621
  store i64 -1, i64* %__mask, align 8, !dbg !1621
  %9 = load i64, i64* %__mask, align 8, !dbg !1621
  store i64 %9, i64* %tmp, align 8, !dbg !1621
  %10 = load i64, i64* %tmp, align 8, !dbg !1621
  %and = and i64 %8, %10, !dbg !1615
  store i64 %and, i64* %__ret, align 8, !dbg !1615
  %11 = load i64, i64* %__ret, align 8, !dbg !1609
  store i64 %11, i64* %tmp2, align 8, !dbg !1622
  %12 = load i64, i64* %tmp2, align 8, !dbg !1609
  ret i64 %12, !dbg !1623
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !1624 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1626, metadata !DIExpression()), !dbg !1631
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1633, metadata !DIExpression()), !dbg !1634
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1635, metadata !DIExpression()), !dbg !1636
  %0 = load i64, i64* %size.addr, align 8, !dbg !1637
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1639
  br i1 %1, label %if.then, label %if.end447, !dbg !1640

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1641
  %tobool = icmp ne i64 %2, 0, !dbg !1641
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1644

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1645
  br label %return, !dbg !1645

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1646
  %cmp = icmp ult i64 %3, 4096, !dbg !1648
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1649

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1650
  br label %return, !dbg !1650

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub = sub i64 %4, 1, !dbg !1651
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1651
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1651

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub4 = sub i64 %6, 1, !dbg !1651
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1651
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1651

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub6 = sub i64 %8, 1, !dbg !1651
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1651
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1651

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1651

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub9 = sub i64 %9, 1, !dbg !1651
  %and = and i64 %sub9, -9223372036854775808, !dbg !1651
  %tobool10 = icmp ne i64 %and, 0, !dbg !1651
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1651

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1651

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub13 = sub i64 %10, 1, !dbg !1651
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1651
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1651
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1651

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1651

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub18 = sub i64 %11, 1, !dbg !1651
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1651
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1651
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1651

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1651

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub23 = sub i64 %12, 1, !dbg !1651
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1651
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1651
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1651

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1651

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub28 = sub i64 %13, 1, !dbg !1651
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1651
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1651
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1651

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1651

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub33 = sub i64 %14, 1, !dbg !1651
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1651
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1651
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1651

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1651

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub38 = sub i64 %15, 1, !dbg !1651
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1651
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1651
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1651

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1651

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub43 = sub i64 %16, 1, !dbg !1651
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1651
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1651
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1651

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1651

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub48 = sub i64 %17, 1, !dbg !1651
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1651
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1651
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1651

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1651

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub53 = sub i64 %18, 1, !dbg !1651
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1651
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1651
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1651

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1651

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub58 = sub i64 %19, 1, !dbg !1651
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1651
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1651
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1651

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1651

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub63 = sub i64 %20, 1, !dbg !1651
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1651
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1651
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1651

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1651

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub68 = sub i64 %21, 1, !dbg !1651
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1651
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1651
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1651

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1651

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub73 = sub i64 %22, 1, !dbg !1651
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1651
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1651
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1651

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1651

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub78 = sub i64 %23, 1, !dbg !1651
  %and79 = and i64 %sub78, 562949953421312, !dbg !1651
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1651
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1651

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1651

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub83 = sub i64 %24, 1, !dbg !1651
  %and84 = and i64 %sub83, 281474976710656, !dbg !1651
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1651
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1651

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1651

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub88 = sub i64 %25, 1, !dbg !1651
  %and89 = and i64 %sub88, 140737488355328, !dbg !1651
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1651
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1651

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1651

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub93 = sub i64 %26, 1, !dbg !1651
  %and94 = and i64 %sub93, 70368744177664, !dbg !1651
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1651
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1651

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1651

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub98 = sub i64 %27, 1, !dbg !1651
  %and99 = and i64 %sub98, 35184372088832, !dbg !1651
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1651
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1651

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1651

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub103 = sub i64 %28, 1, !dbg !1651
  %and104 = and i64 %sub103, 17592186044416, !dbg !1651
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1651
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1651

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1651

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub108 = sub i64 %29, 1, !dbg !1651
  %and109 = and i64 %sub108, 8796093022208, !dbg !1651
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1651
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1651

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1651

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub113 = sub i64 %30, 1, !dbg !1651
  %and114 = and i64 %sub113, 4398046511104, !dbg !1651
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1651
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1651

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1651

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub118 = sub i64 %31, 1, !dbg !1651
  %and119 = and i64 %sub118, 2199023255552, !dbg !1651
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1651
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1651

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1651

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub123 = sub i64 %32, 1, !dbg !1651
  %and124 = and i64 %sub123, 1099511627776, !dbg !1651
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1651
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1651

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1651

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub128 = sub i64 %33, 1, !dbg !1651
  %and129 = and i64 %sub128, 549755813888, !dbg !1651
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1651
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1651

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1651

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub133 = sub i64 %34, 1, !dbg !1651
  %and134 = and i64 %sub133, 274877906944, !dbg !1651
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1651
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1651

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1651

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub138 = sub i64 %35, 1, !dbg !1651
  %and139 = and i64 %sub138, 137438953472, !dbg !1651
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1651
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1651

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1651

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub143 = sub i64 %36, 1, !dbg !1651
  %and144 = and i64 %sub143, 68719476736, !dbg !1651
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1651
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1651

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1651

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub148 = sub i64 %37, 1, !dbg !1651
  %and149 = and i64 %sub148, 34359738368, !dbg !1651
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1651
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1651

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1651

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub153 = sub i64 %38, 1, !dbg !1651
  %and154 = and i64 %sub153, 17179869184, !dbg !1651
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1651
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1651

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1651

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub158 = sub i64 %39, 1, !dbg !1651
  %and159 = and i64 %sub158, 8589934592, !dbg !1651
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1651
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1651

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1651

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub163 = sub i64 %40, 1, !dbg !1651
  %and164 = and i64 %sub163, 4294967296, !dbg !1651
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1651
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1651

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1651

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub168 = sub i64 %41, 1, !dbg !1651
  %and169 = and i64 %sub168, 2147483648, !dbg !1651
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1651
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1651

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1651

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub173 = sub i64 %42, 1, !dbg !1651
  %and174 = and i64 %sub173, 1073741824, !dbg !1651
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1651
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1651

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1651

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub178 = sub i64 %43, 1, !dbg !1651
  %and179 = and i64 %sub178, 536870912, !dbg !1651
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1651
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1651

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1651

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub183 = sub i64 %44, 1, !dbg !1651
  %and184 = and i64 %sub183, 268435456, !dbg !1651
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1651
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1651

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1651

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub188 = sub i64 %45, 1, !dbg !1651
  %and189 = and i64 %sub188, 134217728, !dbg !1651
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1651
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1651

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1651

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub193 = sub i64 %46, 1, !dbg !1651
  %and194 = and i64 %sub193, 67108864, !dbg !1651
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1651
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1651

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1651

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub198 = sub i64 %47, 1, !dbg !1651
  %and199 = and i64 %sub198, 33554432, !dbg !1651
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1651
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1651

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1651

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub203 = sub i64 %48, 1, !dbg !1651
  %and204 = and i64 %sub203, 16777216, !dbg !1651
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1651
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1651

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1651

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub208 = sub i64 %49, 1, !dbg !1651
  %and209 = and i64 %sub208, 8388608, !dbg !1651
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1651
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1651

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1651

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub213 = sub i64 %50, 1, !dbg !1651
  %and214 = and i64 %sub213, 4194304, !dbg !1651
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1651
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1651

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1651

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub218 = sub i64 %51, 1, !dbg !1651
  %and219 = and i64 %sub218, 2097152, !dbg !1651
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1651
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1651

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1651

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub223 = sub i64 %52, 1, !dbg !1651
  %and224 = and i64 %sub223, 1048576, !dbg !1651
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1651
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1651

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1651

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub228 = sub i64 %53, 1, !dbg !1651
  %and229 = and i64 %sub228, 524288, !dbg !1651
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1651
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1651

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1651

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub233 = sub i64 %54, 1, !dbg !1651
  %and234 = and i64 %sub233, 262144, !dbg !1651
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1651
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1651

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1651

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub238 = sub i64 %55, 1, !dbg !1651
  %and239 = and i64 %sub238, 131072, !dbg !1651
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1651
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1651

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1651

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub243 = sub i64 %56, 1, !dbg !1651
  %and244 = and i64 %sub243, 65536, !dbg !1651
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1651
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1651

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1651

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub248 = sub i64 %57, 1, !dbg !1651
  %and249 = and i64 %sub248, 32768, !dbg !1651
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1651
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1651

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1651

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub253 = sub i64 %58, 1, !dbg !1651
  %and254 = and i64 %sub253, 16384, !dbg !1651
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1651
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1651

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1651

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub258 = sub i64 %59, 1, !dbg !1651
  %and259 = and i64 %sub258, 8192, !dbg !1651
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1651
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1651

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1651

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub263 = sub i64 %60, 1, !dbg !1651
  %and264 = and i64 %sub263, 4096, !dbg !1651
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1651
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1651

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1651

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub268 = sub i64 %61, 1, !dbg !1651
  %and269 = and i64 %sub268, 2048, !dbg !1651
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1651
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1651

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1651

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub273 = sub i64 %62, 1, !dbg !1651
  %and274 = and i64 %sub273, 1024, !dbg !1651
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1651
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1651

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1651

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub278 = sub i64 %63, 1, !dbg !1651
  %and279 = and i64 %sub278, 512, !dbg !1651
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1651
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1651

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1651

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub283 = sub i64 %64, 1, !dbg !1651
  %and284 = and i64 %sub283, 256, !dbg !1651
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1651
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1651

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1651

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub288 = sub i64 %65, 1, !dbg !1651
  %and289 = and i64 %sub288, 128, !dbg !1651
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1651
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1651

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1651

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub293 = sub i64 %66, 1, !dbg !1651
  %and294 = and i64 %sub293, 64, !dbg !1651
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1651
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1651

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1651

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub298 = sub i64 %67, 1, !dbg !1651
  %and299 = and i64 %sub298, 32, !dbg !1651
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1651
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1651

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1651

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub303 = sub i64 %68, 1, !dbg !1651
  %and304 = and i64 %sub303, 16, !dbg !1651
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1651
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1651

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1651

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub308 = sub i64 %69, 1, !dbg !1651
  %and309 = and i64 %sub308, 8, !dbg !1651
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1651
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1651

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1651

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub313 = sub i64 %70, 1, !dbg !1651
  %and314 = and i64 %sub313, 4, !dbg !1651
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1651
  %71 = zext i1 %tobool315 to i64, !dbg !1651
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1651
  br label %cond.end, !dbg !1651

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1651
  br label %cond.end317, !dbg !1651

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1651
  br label %cond.end319, !dbg !1651

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1651
  br label %cond.end321, !dbg !1651

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1651
  br label %cond.end323, !dbg !1651

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1651
  br label %cond.end325, !dbg !1651

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1651
  br label %cond.end327, !dbg !1651

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1651
  br label %cond.end329, !dbg !1651

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1651
  br label %cond.end331, !dbg !1651

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1651
  br label %cond.end333, !dbg !1651

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1651
  br label %cond.end335, !dbg !1651

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1651
  br label %cond.end337, !dbg !1651

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1651
  br label %cond.end339, !dbg !1651

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1651
  br label %cond.end341, !dbg !1651

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1651
  br label %cond.end343, !dbg !1651

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1651
  br label %cond.end345, !dbg !1651

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1651
  br label %cond.end347, !dbg !1651

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1651
  br label %cond.end349, !dbg !1651

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1651
  br label %cond.end351, !dbg !1651

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1651
  br label %cond.end353, !dbg !1651

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1651
  br label %cond.end355, !dbg !1651

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1651
  br label %cond.end357, !dbg !1651

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1651
  br label %cond.end359, !dbg !1651

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1651
  br label %cond.end361, !dbg !1651

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1651
  br label %cond.end363, !dbg !1651

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1651
  br label %cond.end365, !dbg !1651

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1651
  br label %cond.end367, !dbg !1651

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1651
  br label %cond.end369, !dbg !1651

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1651
  br label %cond.end371, !dbg !1651

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1651
  br label %cond.end373, !dbg !1651

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1651
  br label %cond.end375, !dbg !1651

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1651
  br label %cond.end377, !dbg !1651

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1651
  br label %cond.end379, !dbg !1651

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1651
  br label %cond.end381, !dbg !1651

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1651
  br label %cond.end383, !dbg !1651

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1651
  br label %cond.end385, !dbg !1651

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1651
  br label %cond.end387, !dbg !1651

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1651
  br label %cond.end389, !dbg !1651

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1651
  br label %cond.end391, !dbg !1651

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1651
  br label %cond.end393, !dbg !1651

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1651
  br label %cond.end395, !dbg !1651

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1651
  br label %cond.end397, !dbg !1651

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1651
  br label %cond.end399, !dbg !1651

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1651
  br label %cond.end401, !dbg !1651

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1651
  br label %cond.end403, !dbg !1651

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1651
  br label %cond.end405, !dbg !1651

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1651
  br label %cond.end407, !dbg !1651

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1651
  br label %cond.end409, !dbg !1651

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1651
  br label %cond.end411, !dbg !1651

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1651
  br label %cond.end413, !dbg !1651

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1651
  br label %cond.end415, !dbg !1651

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1651
  br label %cond.end417, !dbg !1651

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1651
  br label %cond.end419, !dbg !1651

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1651
  br label %cond.end421, !dbg !1651

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1651
  br label %cond.end423, !dbg !1651

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1651
  br label %cond.end425, !dbg !1651

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1651
  br label %cond.end427, !dbg !1651

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1651
  br label %cond.end429, !dbg !1651

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1651
  br label %cond.end431, !dbg !1651

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1651
  br label %cond.end433, !dbg !1651

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1651
  br label %cond.end435, !dbg !1651

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1651
  br label %cond.end437, !dbg !1651

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1651
  br label %cond.end440, !dbg !1651

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1651

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1651
  br label %cond.end444, !dbg !1651

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1651
  %sub443 = sub i64 %72, 1, !dbg !1651
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !1651
  br label %cond.end444, !dbg !1651

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1651
  %sub446 = sub i32 %cond445, 12, !dbg !1652
  %add = add i32 %sub446, 1, !dbg !1653
  store i32 %add, i32* %retval, align 4, !dbg !1654
  br label %return, !dbg !1654

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1655
  %dec = add i64 %73, -1, !dbg !1655
  store i64 %dec, i64* %size.addr, align 8, !dbg !1655
  %74 = load i64, i64* %size.addr, align 8, !dbg !1656
  %shr = lshr i64 %74, 12, !dbg !1656
  store i64 %shr, i64* %size.addr, align 8, !dbg !1656
  %75 = load i64, i64* %size.addr, align 8, !dbg !1657
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1634
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1658
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1659
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !1658, !srcloc !1660
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1658
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1661
  %add.i = add i32 %79, 1, !dbg !1662
  store i32 %add.i, i32* %retval, align 4, !dbg !1663
  br label %return, !dbg !1663

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1664
  ret i32 %80, !dbg !1664
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1665 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1626, metadata !DIExpression()), !dbg !1669
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1633, metadata !DIExpression()), !dbg !1671
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1672, metadata !DIExpression()), !dbg !1673
  %0 = load i64, i64* %n.addr, align 8, !dbg !1674
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1671
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1675
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1676
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !1675, !srcloc !1660
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1675
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1677
  %add.i = add i32 %4, 1, !dbg !1678
  %sub = sub i32 %add.i, 1, !dbg !1679
  ret i32 %sub, !dbg !1680
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1681 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1687, metadata !DIExpression()), !dbg !1688
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1689, metadata !DIExpression()), !dbg !1690
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1691, metadata !DIExpression()), !dbg !1692
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1693, metadata !DIExpression()), !dbg !1694
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1695
  ret i8* %0, !dbg !1696
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

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

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utids.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4, line: 305, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!11 = !{!12, !19, !22, !24, !25, !26, !29, !31}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !13, line: 127, baseType: !14)
!13 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !15, line: 23, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !17, line: 31, baseType: !18)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !13, line: 421, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !5)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !15, line: 17, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !17, line: 21, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !30, line: 148, baseType: !5)
!30 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !{!"rsp"}
!33 = !{i32 7, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"Code Model", i32 2}
!37 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!38 = distinct !DISubprogram(name: "acpi_ut_execute_HID", scope: !1, file: !1, line: 35, type: !39, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !805)
!39 = !DISubroutineType(types: !40)
!40 = !{!19, !41, !799}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !43, line: 133, size: 384, elements: !44)
!43 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !786, !787, !788, !789, !795, !796, !797, !798}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !42, file: !43, line: 134, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !48, line: 367, size: 576, elements: !49)
!48 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !61, !74, !84, !97, !111, !120, !437, !454, !469, !482, !560, !572, !586, !596, !614, !636, !655, !674, !693, !706, !732, !749, !762, !776, !785}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !47, file: !48, line: 368, baseType: !51, size: 128)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !48, line: 73, size: 128, elements: !52)
!52 = !{!53, !54, !55, !56, !60}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !51, file: !48, line: 74, baseType: !46, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !51, file: !48, line: 74, baseType: !26, size: 8, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !48, line: 74, baseType: !26, size: 8, offset: 72)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !51, file: !48, line: 74, baseType: !57, size: 16, offset: 80)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !15, line: 19, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !17, line: 24, baseType: !59)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !48, line: 74, baseType: !26, size: 8, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !47, file: !48, line: 369, baseType: !62, size: 192)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !48, line: 76, size: 192, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69, !73}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !62, file: !48, line: 77, baseType: !46, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !62, file: !48, line: 77, baseType: !26, size: 8, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !48, line: 77, baseType: !26, size: 8, offset: 72)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !62, file: !48, line: 77, baseType: !57, size: 16, offset: 80)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !48, line: 77, baseType: !26, size: 8, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !62, file: !48, line: 77, baseType: !70, size: 24, offset: 104)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !62, file: !48, line: 78, baseType: !14, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !47, file: !48, line: 370, baseType: !75, size: 256)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !48, line: 93, size: 256, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !83}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !75, file: !48, line: 94, baseType: !46, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !48, line: 94, baseType: !26, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !48, line: 94, baseType: !26, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !75, file: !48, line: 94, baseType: !57, size: 16, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !48, line: 94, baseType: !26, size: 8, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !75, file: !48, line: 94, baseType: !22, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !75, file: !48, line: 94, baseType: !20, size: 32, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !47, file: !48, line: 371, baseType: !85, size: 384)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !48, line: 97, size: 384, elements: !86)
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !85, file: !48, line: 98, baseType: !46, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !85, file: !48, line: 98, baseType: !26, size: 8, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !85, file: !48, line: 98, baseType: !26, size: 8, offset: 72)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !85, file: !48, line: 98, baseType: !57, size: 16, offset: 80)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !85, file: !48, line: 98, baseType: !26, size: 8, offset: 96)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !85, file: !48, line: 98, baseType: !25, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !85, file: !48, line: 98, baseType: !20, size: 32, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !85, file: !48, line: 99, baseType: !20, size: 32, offset: 224)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !85, file: !48, line: 100, baseType: !25, size: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !85, file: !48, line: 101, baseType: !41, size: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !47, file: !48, line: 372, baseType: !98, size: 384)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !48, line: 104, size: 384, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !108, !109, !110}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !98, file: !48, line: 105, baseType: !46, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !98, file: !48, line: 105, baseType: !26, size: 8, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !48, line: 105, baseType: !26, size: 8, offset: 72)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !98, file: !48, line: 105, baseType: !57, size: 16, offset: 80)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !48, line: 105, baseType: !26, size: 8, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !98, file: !48, line: 105, baseType: !41, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !98, file: !48, line: 106, baseType: !107, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !98, file: !48, line: 107, baseType: !25, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !98, file: !48, line: 108, baseType: !20, size: 32, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !98, file: !48, line: 109, baseType: !20, size: 32, offset: 352)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !47, file: !48, line: 373, baseType: !112, size: 192)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !48, line: 118, size: 192, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !112, file: !48, line: 119, baseType: !46, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !112, file: !48, line: 119, baseType: !26, size: 8, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !48, line: 119, baseType: !26, size: 8, offset: 72)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !112, file: !48, line: 119, baseType: !57, size: 16, offset: 80)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !48, line: 119, baseType: !26, size: 8, offset: 96)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !112, file: !48, line: 119, baseType: !24, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !47, file: !48, line: 374, baseType: !121, size: 448)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !48, line: 143, size: 448, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !434, !435, !436}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !121, file: !48, line: 144, baseType: !46, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !121, file: !48, line: 144, baseType: !26, size: 8, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !121, file: !48, line: 144, baseType: !26, size: 8, offset: 72)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !121, file: !48, line: 144, baseType: !57, size: 16, offset: 80)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !121, file: !48, line: 144, baseType: !26, size: 8, offset: 96)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !121, file: !48, line: 144, baseType: !26, size: 8, offset: 104)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !121, file: !48, line: 145, baseType: !26, size: 8, offset: 112)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !121, file: !48, line: 146, baseType: !26, size: 8, offset: 120)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !121, file: !48, line: 147, baseType: !46, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !121, file: !48, line: 148, baseType: !46, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !121, file: !48, line: 149, baseType: !25, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !121, file: !48, line: 153, baseType: !135, size: 64, offset: 320)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !121, file: !48, line: 150, size: 64, elements: !136)
!136 = !{!137, !433}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !135, file: !48, line: 151, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !43, line: 248, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!19, !142}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !144, line: 37, size: 9024, elements: !145)
!144 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !379, !380, !381, !382, !383, !387, !389, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !416, !417, !418, !419, !420, !421, !422, !423, !425, !431}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !144, line: 38, baseType: !142, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !143, file: !144, line: 39, baseType: !26, size: 8, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !143, file: !144, line: 40, baseType: !26, size: 8, offset: 72)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !143, file: !144, line: 41, baseType: !57, size: 16, offset: 80)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !143, file: !144, line: 42, baseType: !26, size: 8, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !143, file: !144, line: 43, baseType: !26, size: 8, offset: 104)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !143, file: !144, line: 44, baseType: !26, size: 8, offset: 112)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !143, file: !144, line: 45, baseType: !154, size: 16, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !13, line: 445, baseType: !57)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !143, file: !144, line: 46, baseType: !26, size: 8, offset: 144)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !143, file: !144, line: 47, baseType: !26, size: 8, offset: 152)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !143, file: !144, line: 48, baseType: !26, size: 8, offset: 160)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !143, file: !144, line: 49, baseType: !26, size: 8, offset: 168)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !143, file: !144, line: 50, baseType: !26, size: 8, offset: 176)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !143, file: !144, line: 51, baseType: !26, size: 8, offset: 184)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !143, file: !144, line: 52, baseType: !26, size: 8, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !143, file: !144, line: 53, baseType: !26, size: 8, offset: 200)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !143, file: !144, line: 54, baseType: !25, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !143, file: !144, line: 55, baseType: !20, size: 32, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !143, file: !144, line: 56, baseType: !20, size: 32, offset: 352)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !143, file: !144, line: 57, baseType: !20, size: 32, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !143, file: !144, line: 58, baseType: !20, size: 32, offset: 416)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !143, file: !144, line: 60, baseType: !169, size: 640, offset: 448)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !43, line: 893, size: 640, elements: !170)
!170 = !{!171, !172, !173, !174, !175, !176, !260, !261, !377, !378}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !169, file: !43, line: 894, baseType: !25, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !169, file: !43, line: 895, baseType: !25, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !169, file: !43, line: 896, baseType: !25, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !169, file: !43, line: 897, baseType: !25, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !169, file: !43, line: 898, baseType: !25, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !169, file: !43, line: 899, baseType: !177, size: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !43, line: 875, size: 1600, elements: !179)
!179 = !{!180, !200, !216}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !178, file: !43, line: 876, baseType: !181, size: 448)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !43, line: 828, size: 448, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !199}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !181, file: !43, line: 829, baseType: !177, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !181, file: !43, line: 829, baseType: !26, size: 8, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !43, line: 829, baseType: !26, size: 8, offset: 72)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !181, file: !43, line: 829, baseType: !57, size: 16, offset: 80)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !181, file: !43, line: 829, baseType: !25, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !43, line: 829, baseType: !177, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !181, file: !43, line: 829, baseType: !41, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !181, file: !43, line: 829, baseType: !191, size: 64, offset: 320)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !43, line: 716, size: 64, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !191, file: !43, line: 717, baseType: !14, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !191, file: !43, line: 718, baseType: !20, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !191, file: !43, line: 719, baseType: !22, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !191, file: !43, line: 720, baseType: !25, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !43, line: 721, baseType: !22, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !191, file: !43, line: 722, baseType: !177, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !181, file: !43, line: 829, baseType: !26, size: 8, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !178, file: !43, line: 877, baseType: !201, size: 640)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !43, line: 835, size: 640, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !201, file: !43, line: 836, baseType: !177, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !201, file: !43, line: 836, baseType: !26, size: 8, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !201, file: !43, line: 836, baseType: !26, size: 8, offset: 72)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !201, file: !43, line: 836, baseType: !57, size: 16, offset: 80)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !201, file: !43, line: 836, baseType: !25, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !43, line: 836, baseType: !177, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !201, file: !43, line: 836, baseType: !41, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !201, file: !43, line: 836, baseType: !191, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !201, file: !43, line: 836, baseType: !26, size: 8, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !201, file: !43, line: 836, baseType: !22, size: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !201, file: !43, line: 837, baseType: !25, size: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !201, file: !43, line: 838, baseType: !20, size: 32, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !43, line: 839, baseType: !20, size: 32, offset: 608)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !178, file: !43, line: 878, baseType: !217, size: 1600)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !43, line: 846, size: 1600, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !217, file: !43, line: 847, baseType: !177, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !217, file: !43, line: 847, baseType: !26, size: 8, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !217, file: !43, line: 847, baseType: !26, size: 8, offset: 72)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !217, file: !43, line: 847, baseType: !57, size: 16, offset: 80)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !217, file: !43, line: 847, baseType: !25, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !43, line: 847, baseType: !177, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !217, file: !43, line: 847, baseType: !41, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !217, file: !43, line: 847, baseType: !191, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !217, file: !43, line: 847, baseType: !26, size: 8, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !217, file: !43, line: 847, baseType: !177, size: 64, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !217, file: !43, line: 848, baseType: !177, size: 64, offset: 512)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !217, file: !43, line: 849, baseType: !22, size: 64, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !217, file: !43, line: 850, baseType: !26, size: 8, offset: 640)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !217, file: !43, line: 851, baseType: !22, size: 64, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !217, file: !43, line: 852, baseType: !22, size: 64, offset: 768)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !217, file: !43, line: 853, baseType: !22, size: 64, offset: 832)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !217, file: !43, line: 854, baseType: !236, size: 32, offset: 896)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 4)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !217, file: !43, line: 855, baseType: !20, size: 32, offset: 928)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !217, file: !43, line: 856, baseType: !20, size: 32, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !217, file: !43, line: 857, baseType: !20, size: 32, offset: 992)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !217, file: !43, line: 858, baseType: !20, size: 32, offset: 1024)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !217, file: !43, line: 859, baseType: !20, size: 32, offset: 1056)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !217, file: !43, line: 860, baseType: !20, size: 32, offset: 1088)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !217, file: !43, line: 861, baseType: !20, size: 32, offset: 1120)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !217, file: !43, line: 862, baseType: !20, size: 32, offset: 1152)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !217, file: !43, line: 863, baseType: !20, size: 32, offset: 1184)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !217, file: !43, line: 864, baseType: !20, size: 32, offset: 1216)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !217, file: !43, line: 865, baseType: !20, size: 32, offset: 1248)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !217, file: !43, line: 866, baseType: !20, size: 32, offset: 1280)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !217, file: !43, line: 867, baseType: !20, size: 32, offset: 1312)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !217, file: !43, line: 868, baseType: !57, size: 16, offset: 1344)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !217, file: !43, line: 869, baseType: !26, size: 8, offset: 1360)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !217, file: !43, line: 870, baseType: !26, size: 8, offset: 1368)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !217, file: !43, line: 871, baseType: !26, size: 8, offset: 1376)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !217, file: !43, line: 872, baseType: !257, size: 160, offset: 1384)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 20)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !169, file: !43, line: 900, baseType: !41, size: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !169, file: !43, line: 901, baseType: !262, size: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !43, line: 663, size: 640, elements: !264)
!264 = !{!265, !273, !286, !295, !304, !317, !331, !343, !355}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !263, file: !43, line: 664, baseType: !266, size: 128)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !43, line: 567, size: 128, elements: !267)
!267 = !{!268, !269, !270, !271, !272}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !43, line: 568, baseType: !24, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !266, file: !43, line: 568, baseType: !26, size: 8, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !43, line: 568, baseType: !26, size: 8, offset: 72)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !266, file: !43, line: 568, baseType: !57, size: 16, offset: 80)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !266, file: !43, line: 568, baseType: !57, size: 16, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !263, file: !43, line: 665, baseType: !274, size: 384)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !43, line: 593, size: 384, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !43, line: 594, baseType: !24, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !274, file: !43, line: 594, baseType: !26, size: 8, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !43, line: 594, baseType: !26, size: 8, offset: 72)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !274, file: !43, line: 594, baseType: !57, size: 16, offset: 80)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !274, file: !43, line: 594, baseType: !57, size: 16, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !274, file: !43, line: 594, baseType: !57, size: 16, offset: 112)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !274, file: !43, line: 595, baseType: !177, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !274, file: !43, line: 596, baseType: !25, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !274, file: !43, line: 597, baseType: !25, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !274, file: !43, line: 598, baseType: !14, size: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !263, file: !43, line: 666, baseType: !287, size: 192)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !43, line: 573, size: 192, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !43, line: 574, baseType: !24, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !43, line: 574, baseType: !26, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !43, line: 574, baseType: !26, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !43, line: 574, baseType: !57, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !43, line: 574, baseType: !57, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !287, file: !43, line: 574, baseType: !46, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !263, file: !43, line: 667, baseType: !296, size: 192)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !43, line: 604, size: 192, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !43, line: 605, baseType: !24, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !43, line: 605, baseType: !26, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !43, line: 605, baseType: !26, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !43, line: 605, baseType: !57, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !43, line: 605, baseType: !57, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !296, file: !43, line: 605, baseType: !41, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !263, file: !43, line: 668, baseType: !305, size: 448)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !43, line: 608, size: 448, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !43, line: 609, baseType: !24, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !43, line: 609, baseType: !26, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !43, line: 609, baseType: !26, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !43, line: 609, baseType: !57, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !43, line: 609, baseType: !57, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !305, file: !43, line: 609, baseType: !20, size: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !305, file: !43, line: 610, baseType: !177, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !305, file: !43, line: 611, baseType: !25, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !305, file: !43, line: 612, baseType: !25, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !305, file: !43, line: 613, baseType: !20, size: 32, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !263, file: !43, line: 669, baseType: !318, size: 512)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !43, line: 580, size: 512, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !43, line: 581, baseType: !24, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !43, line: 581, baseType: !26, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !43, line: 581, baseType: !26, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !43, line: 581, baseType: !57, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !318, file: !43, line: 581, baseType: !57, size: 16, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !318, file: !43, line: 581, baseType: !20, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !318, file: !43, line: 582, baseType: !46, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !318, file: !43, line: 583, baseType: !46, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !318, file: !43, line: 584, baseType: !142, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !318, file: !43, line: 585, baseType: !24, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !318, file: !43, line: 586, baseType: !20, size: 32, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !263, file: !43, line: 670, baseType: !332, size: 320)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !43, line: 620, size: 320, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !43, line: 621, baseType: !24, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !43, line: 621, baseType: !26, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !43, line: 621, baseType: !26, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !43, line: 621, baseType: !57, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !43, line: 621, baseType: !57, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !332, file: !43, line: 621, baseType: !26, size: 8, offset: 112)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !332, file: !43, line: 622, baseType: !142, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !332, file: !43, line: 623, baseType: !46, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !332, file: !43, line: 624, baseType: !14, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !263, file: !43, line: 671, baseType: !344, size: 640)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !43, line: 631, size: 640, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !43, line: 632, baseType: !24, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !344, file: !43, line: 632, baseType: !26, size: 8, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !43, line: 632, baseType: !26, size: 8, offset: 72)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !344, file: !43, line: 632, baseType: !57, size: 16, offset: 80)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !344, file: !43, line: 632, baseType: !57, size: 16, offset: 96)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !344, file: !43, line: 633, baseType: !352, size: 512, offset: 128)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 512, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 8)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !263, file: !43, line: 672, baseType: !356, size: 320)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !43, line: 654, size: 320, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !43, line: 655, baseType: !24, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !356, file: !43, line: 655, baseType: !26, size: 8, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !43, line: 655, baseType: !26, size: 8, offset: 72)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !356, file: !43, line: 655, baseType: !57, size: 16, offset: 80)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !356, file: !43, line: 655, baseType: !57, size: 16, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !356, file: !43, line: 655, baseType: !26, size: 8, offset: 112)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !356, file: !43, line: 656, baseType: !41, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !356, file: !43, line: 657, baseType: !46, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !356, file: !43, line: 658, baseType: !367, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !43, line: 645, size: 128, elements: !369)
!369 = !{!370, !376}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !368, file: !43, line: 646, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !13, line: 1052, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375, !20, !24}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !13, line: 424, baseType: !24)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !368, file: !43, line: 647, baseType: !24, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !169, file: !43, line: 902, baseType: !177, size: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !169, file: !43, line: 903, baseType: !20, size: 32, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !143, file: !144, line: 61, baseType: !20, size: 32, offset: 1088)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !143, file: !144, line: 62, baseType: !20, size: 32, offset: 1120)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !143, file: !144, line: 63, baseType: !57, size: 16, offset: 1152)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !143, file: !144, line: 64, baseType: !26, size: 8, offset: 1168)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !143, file: !144, line: 66, baseType: !384, size: 2688, offset: 1216)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2688, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 7)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !143, file: !144, line: 67, baseType: !388, size: 3072, offset: 3904)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 3072, elements: !353)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !143, file: !144, line: 68, baseType: !390, size: 576, offset: 6976)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 576, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 9)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !143, file: !144, line: 69, baseType: !107, size: 64, offset: 7552)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !143, file: !144, line: 71, baseType: !25, size: 64, offset: 7616)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !143, file: !144, line: 72, baseType: !107, size: 64, offset: 7680)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !143, file: !144, line: 73, baseType: !262, size: 64, offset: 7744)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !143, file: !144, line: 74, baseType: !41, size: 64, offset: 7808)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !143, file: !144, line: 75, baseType: !46, size: 64, offset: 7872)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !143, file: !144, line: 76, baseType: !41, size: 64, offset: 7936)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !143, file: !144, line: 77, baseType: !177, size: 64, offset: 8000)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !143, file: !144, line: 78, baseType: !46, size: 64, offset: 8064)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !143, file: !144, line: 79, baseType: !41, size: 64, offset: 8128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !143, file: !144, line: 80, baseType: !22, size: 64, offset: 8192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !143, file: !144, line: 81, baseType: !177, size: 64, offset: 8256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !143, file: !144, line: 82, baseType: !406, size: 64, offset: 8320)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !43, line: 702, size: 128, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !415}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !408, file: !43, line: 706, baseType: !20, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !408, file: !43, line: 707, baseType: !20, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !43, line: 708, baseType: !57, size: 16, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !408, file: !43, line: 709, baseType: !26, size: 8, offset: 80)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !408, file: !43, line: 710, baseType: !26, size: 8, offset: 88)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !408, file: !43, line: 711, baseType: !26, size: 8, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !143, file: !144, line: 83, baseType: !177, size: 64, offset: 8384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !143, file: !144, line: 84, baseType: !46, size: 64, offset: 8448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !143, file: !144, line: 85, baseType: !262, size: 64, offset: 8512)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !143, file: !144, line: 86, baseType: !46, size: 64, offset: 8576)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !143, file: !144, line: 87, baseType: !262, size: 64, offset: 8640)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !143, file: !144, line: 88, baseType: !177, size: 64, offset: 8704)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !143, file: !144, line: 89, baseType: !177, size: 64, offset: 8768)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !143, file: !144, line: 90, baseType: !424, size: 64, offset: 8832)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !143, file: !144, line: 91, baseType: !426, size: 64, offset: 8896)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !43, line: 637, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!19, !142, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !143, file: !144, line: 92, baseType: !432, size: 64, offset: 8960)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !43, line: 641, baseType: !139)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !135, file: !48, line: 152, baseType: !46, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !121, file: !48, line: 155, baseType: !20, size: 32, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !121, file: !48, line: 156, baseType: !154, size: 16, offset: 416)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !121, file: !48, line: 157, baseType: !26, size: 8, offset: 432)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !47, file: !48, line: 375, baseType: !438, size: 576)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !48, line: 122, size: 576, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !438, file: !48, line: 123, baseType: !46, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !438, file: !48, line: 123, baseType: !26, size: 8, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !438, file: !48, line: 123, baseType: !26, size: 8, offset: 72)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !438, file: !48, line: 123, baseType: !57, size: 16, offset: 80)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !438, file: !48, line: 123, baseType: !26, size: 8, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !438, file: !48, line: 123, baseType: !26, size: 8, offset: 104)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !438, file: !48, line: 124, baseType: !57, size: 16, offset: 112)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !438, file: !48, line: 125, baseType: !24, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !438, file: !48, line: 126, baseType: !14, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !438, file: !48, line: 127, baseType: !424, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !438, file: !48, line: 128, baseType: !46, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !438, file: !48, line: 129, baseType: !46, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !438, file: !48, line: 130, baseType: !41, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !438, file: !48, line: 131, baseType: !26, size: 8, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !47, file: !48, line: 376, baseType: !455, size: 448)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !48, line: 134, size: 448, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !468}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !455, file: !48, line: 135, baseType: !46, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !455, file: !48, line: 135, baseType: !26, size: 8, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !455, file: !48, line: 135, baseType: !26, size: 8, offset: 72)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !455, file: !48, line: 135, baseType: !57, size: 16, offset: 80)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !48, line: 135, baseType: !26, size: 8, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !455, file: !48, line: 135, baseType: !26, size: 8, offset: 104)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !455, file: !48, line: 136, baseType: !41, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !455, file: !48, line: 137, baseType: !46, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !48, line: 138, baseType: !46, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !455, file: !48, line: 139, baseType: !467, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !13, line: 129, baseType: !14)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !455, file: !48, line: 140, baseType: !20, size: 32, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !47, file: !48, line: 377, baseType: !470, size: 320)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !48, line: 184, size: 320, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !481}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !470, file: !48, line: 185, baseType: !46, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !470, file: !48, line: 185, baseType: !26, size: 8, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !48, line: 185, baseType: !26, size: 8, offset: 72)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !470, file: !48, line: 185, baseType: !57, size: 16, offset: 80)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !48, line: 185, baseType: !26, size: 8, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !470, file: !48, line: 185, baseType: !478, size: 128, offset: 128)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 2)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !470, file: !48, line: 185, baseType: !46, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !47, file: !48, line: 378, baseType: !483, size: 384)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !48, line: 187, size: 384, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !491, !492}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !483, file: !48, line: 188, baseType: !46, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !483, file: !48, line: 188, baseType: !26, size: 8, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !483, file: !48, line: 188, baseType: !26, size: 8, offset: 72)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !483, file: !48, line: 188, baseType: !57, size: 16, offset: 80)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !48, line: 188, baseType: !26, size: 8, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !483, file: !48, line: 189, baseType: !478, size: 128, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !483, file: !48, line: 189, baseType: !46, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !483, file: !48, line: 189, baseType: !493, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !43, line: 480, size: 576, elements: !495)
!495 = !{!496, !497, !498, !499, !507, !522, !554, !555, !556, !557, !558, !559}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !494, file: !43, line: 481, baseType: !41, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !494, file: !43, line: 482, baseType: !493, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !43, line: 483, baseType: !493, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !494, file: !43, line: 484, baseType: !500, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !43, line: 497, size: 256, elements: !502)
!502 = !{!503, !504, !505, !506}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !501, file: !43, line: 498, baseType: !500, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !501, file: !43, line: 499, baseType: !500, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !501, file: !43, line: 500, baseType: !493, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !501, file: !43, line: 501, baseType: !20, size: 32, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !494, file: !43, line: 485, baseType: !508, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !43, line: 466, size: 320, elements: !510)
!510 = !{!511, !516, !517, !518, !519, !520, !521}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !509, file: !43, line: 467, baseType: !512, size: 128)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !43, line: 459, size: 128, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !512, file: !43, line: 460, baseType: !26, size: 8)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !512, file: !43, line: 461, baseType: !14, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !509, file: !43, line: 468, baseType: !512, size: 128, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !509, file: !43, line: 469, baseType: !57, size: 16, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !509, file: !43, line: 470, baseType: !26, size: 8, offset: 272)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !509, file: !43, line: 471, baseType: !26, size: 8, offset: 280)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !509, file: !43, line: 472, baseType: !26, size: 8, offset: 288)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !509, file: !43, line: 473, baseType: !26, size: 8, offset: 296)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !494, file: !43, line: 486, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !43, line: 448, size: 192, elements: !525)
!525 = !{!526, !549, !550, !551, !552, !553}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !524, file: !43, line: 449, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !43, line: 438, size: 64, elements: !528)
!528 = !{!529, !530, !543}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !527, file: !43, line: 439, baseType: !41, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !527, file: !43, line: 440, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !43, line: 419, size: 256, elements: !533)
!533 = !{!534, !539, !540, !541, !542}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !532, file: !43, line: 420, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !13, line: 1049, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!20, !375, !20, !24}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !532, file: !43, line: 421, baseType: !24, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !532, file: !43, line: 422, baseType: !41, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !532, file: !43, line: 423, baseType: !26, size: 8, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !532, file: !43, line: 424, baseType: !26, size: 8, offset: 200)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !527, file: !43, line: 441, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !43, line: 429, size: 128, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !545, file: !43, line: 430, baseType: !41, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !545, file: !43, line: 431, baseType: !544, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !524, file: !43, line: 450, baseType: !508, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !524, file: !43, line: 451, baseType: !26, size: 8, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !524, file: !43, line: 452, baseType: !26, size: 8, offset: 136)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !524, file: !43, line: 453, baseType: !26, size: 8, offset: 144)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !524, file: !43, line: 454, baseType: !26, size: 8, offset: 152)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !494, file: !43, line: 487, baseType: !14, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !494, file: !43, line: 488, baseType: !20, size: 32, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !494, file: !43, line: 489, baseType: !57, size: 16, offset: 480)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !494, file: !43, line: 490, baseType: !57, size: 16, offset: 496)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !494, file: !43, line: 491, baseType: !26, size: 8, offset: 512)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !494, file: !43, line: 492, baseType: !26, size: 8, offset: 520)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !47, file: !48, line: 379, baseType: !561, size: 384)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !48, line: 192, size: 384, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !561, file: !48, line: 193, baseType: !46, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !561, file: !48, line: 193, baseType: !26, size: 8, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !561, file: !48, line: 193, baseType: !26, size: 8, offset: 72)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !561, file: !48, line: 193, baseType: !57, size: 16, offset: 80)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !48, line: 193, baseType: !26, size: 8, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !561, file: !48, line: 193, baseType: !478, size: 128, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !561, file: !48, line: 193, baseType: !46, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !561, file: !48, line: 193, baseType: !20, size: 32, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !561, file: !48, line: 194, baseType: !20, size: 32, offset: 352)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !47, file: !48, line: 380, baseType: !573, size: 384)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !48, line: 197, size: 384, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !583, !584}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !573, file: !48, line: 198, baseType: !46, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !573, file: !48, line: 198, baseType: !26, size: 8, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !573, file: !48, line: 198, baseType: !26, size: 8, offset: 72)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !573, file: !48, line: 198, baseType: !57, size: 16, offset: 80)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !48, line: 198, baseType: !26, size: 8, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !573, file: !48, line: 200, baseType: !26, size: 8, offset: 104)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !573, file: !48, line: 201, baseType: !26, size: 8, offset: 112)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !573, file: !48, line: 202, baseType: !478, size: 128, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !573, file: !48, line: 202, baseType: !46, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !573, file: !48, line: 202, baseType: !585, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !13, line: 128, baseType: !14)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !47, file: !48, line: 381, baseType: !587, size: 320)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !48, line: 205, size: 320, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !48, line: 206, baseType: !46, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !48, line: 206, baseType: !26, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !48, line: 206, baseType: !26, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !48, line: 206, baseType: !57, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !48, line: 206, baseType: !26, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !587, file: !48, line: 206, baseType: !478, size: 128, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !587, file: !48, line: 206, baseType: !46, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !47, file: !48, line: 382, baseType: !597, size: 384)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !48, line: 233, size: 384, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !48, line: 234, baseType: !46, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !48, line: 234, baseType: !26, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !48, line: 234, baseType: !26, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !48, line: 234, baseType: !57, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !48, line: 234, baseType: !26, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !597, file: !48, line: 234, baseType: !26, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !597, file: !48, line: 234, baseType: !26, size: 8, offset: 112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !597, file: !48, line: 234, baseType: !26, size: 8, offset: 120)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !48, line: 234, baseType: !41, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !597, file: !48, line: 234, baseType: !20, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !597, file: !48, line: 234, baseType: !20, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !48, line: 234, baseType: !20, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !597, file: !48, line: 234, baseType: !26, size: 8, offset: 288)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !597, file: !48, line: 234, baseType: !26, size: 8, offset: 296)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !597, file: !48, line: 234, baseType: !46, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !47, file: !48, line: 383, baseType: !615, size: 576)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !48, line: 237, size: 576, elements: !616)
!616 = !{!617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !615, file: !48, line: 238, baseType: !46, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !615, file: !48, line: 238, baseType: !26, size: 8, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !615, file: !48, line: 238, baseType: !26, size: 8, offset: 72)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !615, file: !48, line: 238, baseType: !57, size: 16, offset: 80)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !615, file: !48, line: 238, baseType: !26, size: 8, offset: 96)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !615, file: !48, line: 238, baseType: !26, size: 8, offset: 104)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !615, file: !48, line: 238, baseType: !26, size: 8, offset: 112)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !615, file: !48, line: 238, baseType: !26, size: 8, offset: 120)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !615, file: !48, line: 238, baseType: !41, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !615, file: !48, line: 238, baseType: !20, size: 32, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !615, file: !48, line: 238, baseType: !20, size: 32, offset: 224)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !615, file: !48, line: 238, baseType: !20, size: 32, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !615, file: !48, line: 238, baseType: !26, size: 8, offset: 288)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !615, file: !48, line: 238, baseType: !26, size: 8, offset: 296)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !615, file: !48, line: 238, baseType: !57, size: 16, offset: 304)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !615, file: !48, line: 239, baseType: !46, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !615, file: !48, line: 240, baseType: !25, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !615, file: !48, line: 241, baseType: !57, size: 16, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !615, file: !48, line: 242, baseType: !25, size: 64, offset: 512)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !47, file: !48, line: 384, baseType: !637, size: 384)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !48, line: 262, size: 384, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !637, file: !48, line: 263, baseType: !46, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !637, file: !48, line: 263, baseType: !26, size: 8, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !637, file: !48, line: 263, baseType: !26, size: 8, offset: 72)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !637, file: !48, line: 263, baseType: !57, size: 16, offset: 80)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !637, file: !48, line: 263, baseType: !26, size: 8, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !637, file: !48, line: 263, baseType: !26, size: 8, offset: 104)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !637, file: !48, line: 263, baseType: !26, size: 8, offset: 112)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !637, file: !48, line: 263, baseType: !26, size: 8, offset: 120)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !637, file: !48, line: 263, baseType: !41, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !637, file: !48, line: 263, baseType: !20, size: 32, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !637, file: !48, line: 263, baseType: !20, size: 32, offset: 224)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !637, file: !48, line: 263, baseType: !20, size: 32, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !637, file: !48, line: 263, baseType: !26, size: 8, offset: 288)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !637, file: !48, line: 263, baseType: !26, size: 8, offset: 296)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !637, file: !48, line: 263, baseType: !26, size: 8, offset: 304)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !637, file: !48, line: 264, baseType: !46, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !47, file: !48, line: 385, baseType: !656, size: 448)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !48, line: 245, size: 448, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !656, file: !48, line: 246, baseType: !46, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !656, file: !48, line: 246, baseType: !26, size: 8, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !48, line: 246, baseType: !26, size: 8, offset: 72)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !656, file: !48, line: 246, baseType: !57, size: 16, offset: 80)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !48, line: 246, baseType: !26, size: 8, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !656, file: !48, line: 246, baseType: !26, size: 8, offset: 104)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !656, file: !48, line: 246, baseType: !26, size: 8, offset: 112)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !656, file: !48, line: 246, baseType: !26, size: 8, offset: 120)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !656, file: !48, line: 246, baseType: !41, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !656, file: !48, line: 246, baseType: !20, size: 32, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !656, file: !48, line: 246, baseType: !20, size: 32, offset: 224)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !656, file: !48, line: 246, baseType: !20, size: 32, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !656, file: !48, line: 246, baseType: !26, size: 8, offset: 288)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !656, file: !48, line: 246, baseType: !26, size: 8, offset: 296)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !656, file: !48, line: 246, baseType: !46, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !656, file: !48, line: 247, baseType: !46, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !47, file: !48, line: 386, baseType: !675, size: 448)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !48, line: 250, size: 448, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !675, file: !48, line: 251, baseType: !46, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !675, file: !48, line: 251, baseType: !26, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !48, line: 251, baseType: !26, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !675, file: !48, line: 251, baseType: !57, size: 16, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !48, line: 251, baseType: !26, size: 8, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !675, file: !48, line: 251, baseType: !26, size: 8, offset: 104)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !675, file: !48, line: 251, baseType: !26, size: 8, offset: 112)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !675, file: !48, line: 251, baseType: !26, size: 8, offset: 120)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !675, file: !48, line: 251, baseType: !41, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !675, file: !48, line: 251, baseType: !20, size: 32, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !675, file: !48, line: 251, baseType: !20, size: 32, offset: 224)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !675, file: !48, line: 251, baseType: !20, size: 32, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !675, file: !48, line: 251, baseType: !26, size: 8, offset: 288)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !675, file: !48, line: 251, baseType: !26, size: 8, offset: 296)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !675, file: !48, line: 256, baseType: !46, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !675, file: !48, line: 257, baseType: !46, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !47, file: !48, line: 387, baseType: !694, size: 512)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !48, line: 273, size: 512, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !694, file: !48, line: 274, baseType: !46, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !694, file: !48, line: 274, baseType: !26, size: 8, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !48, line: 274, baseType: !26, size: 8, offset: 72)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !694, file: !48, line: 274, baseType: !57, size: 16, offset: 80)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !48, line: 274, baseType: !26, size: 8, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !694, file: !48, line: 274, baseType: !41, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !694, file: !48, line: 275, baseType: !20, size: 32, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !694, file: !48, line: 276, baseType: !371, size: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !694, file: !48, line: 277, baseType: !24, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !48, line: 278, baseType: !478, size: 128, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !47, file: !48, line: 388, baseType: !707, size: 512)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !48, line: 281, size: 512, elements: !708)
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !722, !723, !724, !730, !731}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !707, file: !48, line: 282, baseType: !46, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !707, file: !48, line: 282, baseType: !26, size: 8, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !707, file: !48, line: 282, baseType: !26, size: 8, offset: 72)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !707, file: !48, line: 282, baseType: !57, size: 16, offset: 80)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !48, line: 282, baseType: !26, size: 8, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !707, file: !48, line: 282, baseType: !26, size: 8, offset: 104)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !707, file: !48, line: 283, baseType: !26, size: 8, offset: 112)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !707, file: !48, line: 284, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !13, line: 1084, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!19, !20, !467, !20, !721, !24, !24}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !707, file: !48, line: 285, baseType: !41, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !707, file: !48, line: 286, baseType: !24, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !707, file: !48, line: 287, baseType: !725, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !13, line: 1102, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!19, !375, !20, !24, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !707, file: !48, line: 288, baseType: !46, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !707, file: !48, line: 289, baseType: !46, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !47, file: !48, line: 389, baseType: !733, size: 512)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !48, line: 307, size: 512, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !733, file: !48, line: 308, baseType: !46, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !733, file: !48, line: 308, baseType: !26, size: 8, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !733, file: !48, line: 308, baseType: !26, size: 8, offset: 72)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !733, file: !48, line: 308, baseType: !57, size: 16, offset: 80)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !48, line: 308, baseType: !26, size: 8, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !733, file: !48, line: 308, baseType: !26, size: 8, offset: 104)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !733, file: !48, line: 309, baseType: !26, size: 8, offset: 112)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !733, file: !48, line: 310, baseType: !26, size: 8, offset: 120)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !733, file: !48, line: 311, baseType: !24, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !733, file: !48, line: 312, baseType: !41, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !733, file: !48, line: 313, baseType: !107, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !733, file: !48, line: 314, baseType: !25, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !733, file: !48, line: 315, baseType: !25, size: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !733, file: !48, line: 316, baseType: !20, size: 32, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !47, file: !48, line: 390, baseType: !750, size: 448)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !48, line: 340, size: 448, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !760, !761}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !750, file: !48, line: 341, baseType: !46, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !750, file: !48, line: 341, baseType: !26, size: 8, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !750, file: !48, line: 341, baseType: !26, size: 8, offset: 72)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !750, file: !48, line: 341, baseType: !57, size: 16, offset: 80)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !48, line: 341, baseType: !26, size: 8, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !750, file: !48, line: 341, baseType: !41, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !750, file: !48, line: 342, baseType: !41, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !750, file: !48, line: 343, baseType: !24, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !750, file: !48, line: 344, baseType: !25, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !750, file: !48, line: 345, baseType: !20, size: 32, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !47, file: !48, line: 391, baseType: !763, size: 256)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !48, line: 350, size: 256, elements: !764)
!764 = !{!765, !766, !767, !768, !769, !770, !775}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !763, file: !48, line: 351, baseType: !46, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !763, file: !48, line: 351, baseType: !26, size: 8, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !763, file: !48, line: 351, baseType: !26, size: 8, offset: 72)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !763, file: !48, line: 351, baseType: !57, size: 16, offset: 80)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !763, file: !48, line: 351, baseType: !26, size: 8, offset: 96)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !763, file: !48, line: 351, baseType: !771, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !13, line: 1055, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !375, !24}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !763, file: !48, line: 352, baseType: !24, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !47, file: !48, line: 392, baseType: !777, size: 192)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !48, line: 357, size: 192, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !777, file: !48, line: 358, baseType: !46, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !777, file: !48, line: 358, baseType: !26, size: 8, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !777, file: !48, line: 358, baseType: !26, size: 8, offset: 72)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !777, file: !48, line: 358, baseType: !57, size: 16, offset: 80)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !48, line: 358, baseType: !26, size: 8, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !48, line: 358, baseType: !46, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !47, file: !48, line: 399, baseType: !42, size: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !42, file: !43, line: 135, baseType: !26, size: 8, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !43, line: 136, baseType: !26, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !42, file: !43, line: 137, baseType: !57, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !42, file: !43, line: 138, baseType: !790, size: 32, offset: 96)
!790 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !791, line: 327, size: 32, elements: !792)
!791 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !790, file: !791, line: 328, baseType: !20, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !790, file: !791, line: 329, baseType: !236, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !42, file: !43, line: 139, baseType: !41, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !42, file: !43, line: 140, baseType: !41, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !42, file: !43, line: 141, baseType: !41, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !42, file: !43, line: 142, baseType: !154, size: 16, offset: 320)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id", file: !13, line: 1141, size: 128, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !801, file: !13, line: 1142, baseType: !20, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !801, file: !13, line: 1143, baseType: !22, size: 64, offset: 64)
!805 = !{}
!806 = !DILocalVariable(name: "device_node", arg: 1, scope: !38, file: !1, line: 35, type: !41)
!807 = !DILocation(line: 35, column: 49, scope: !38)
!808 = !DILocalVariable(name: "return_id", arg: 2, scope: !38, file: !1, line: 36, type: !799)
!809 = !DILocation(line: 36, column: 35, scope: !38)
!810 = !DILocalVariable(name: "obj_desc", scope: !38, file: !1, line: 38, type: !46)
!811 = !DILocation(line: 38, column: 29, scope: !38)
!812 = !DILocalVariable(name: "hid", scope: !38, file: !1, line: 39, type: !800)
!813 = !DILocation(line: 39, column: 29, scope: !38)
!814 = !DILocalVariable(name: "length", scope: !38, file: !1, line: 40, type: !20)
!815 = !DILocation(line: 40, column: 6, scope: !38)
!816 = !DILocalVariable(name: "status", scope: !38, file: !1, line: 41, type: !19)
!817 = !DILocation(line: 41, column: 14, scope: !38)
!818 = !DILocation(line: 45, column: 35, scope: !38)
!819 = !DILocation(line: 45, column: 11, scope: !38)
!820 = !DILocation(line: 45, column: 9, scope: !38)
!821 = !DILocation(line: 48, column: 6, scope: !822)
!822 = distinct !DILexicalBlock(scope: !38, file: !1, line: 48, column: 6)
!823 = !DILocation(line: 48, column: 6, scope: !38)
!824 = !DILocation(line: 49, column: 3, scope: !825)
!825 = distinct !DILexicalBlock(scope: !822, file: !1, line: 48, column: 28)
!826 = !DILocation(line: 54, column: 6, scope: !827)
!827 = distinct !DILexicalBlock(scope: !38, file: !1, line: 54, column: 6)
!828 = !DILocation(line: 54, column: 16, scope: !827)
!829 = !DILocation(line: 54, column: 23, scope: !827)
!830 = !DILocation(line: 54, column: 28, scope: !827)
!831 = !DILocation(line: 54, column: 6, scope: !38)
!832 = !DILocation(line: 55, column: 10, scope: !833)
!833 = distinct !DILexicalBlock(scope: !827, file: !1, line: 54, column: 50)
!834 = !DILocation(line: 56, column: 2, scope: !833)
!835 = !DILocation(line: 57, column: 12, scope: !836)
!836 = distinct !DILexicalBlock(scope: !827, file: !1, line: 56, column: 9)
!837 = !DILocation(line: 57, column: 22, scope: !836)
!838 = !DILocation(line: 57, column: 29, scope: !836)
!839 = !DILocation(line: 57, column: 36, scope: !836)
!840 = !DILocation(line: 57, column: 10, scope: !836)
!841 = !DILocation(line: 63, column: 6, scope: !38)
!842 = !DILocation(line: 62, column: 6, scope: !38)
!843 = !DILocation(line: 65, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !38, file: !1, line: 65, column: 6)
!845 = !DILocation(line: 65, column: 6, scope: !38)
!846 = !DILocation(line: 66, column: 10, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !1, line: 65, column: 12)
!848 = !DILocation(line: 67, column: 3, scope: !847)
!849 = !DILocation(line: 73, column: 6, scope: !38)
!850 = !DILocation(line: 72, column: 2, scope: !38)
!851 = !DILocation(line: 72, column: 7, scope: !38)
!852 = !DILocation(line: 72, column: 14, scope: !38)
!853 = !DILocation(line: 77, column: 6, scope: !854)
!854 = distinct !DILexicalBlock(scope: !38, file: !1, line: 77, column: 6)
!855 = !DILocation(line: 77, column: 16, scope: !854)
!856 = !DILocation(line: 77, column: 23, scope: !854)
!857 = !DILocation(line: 77, column: 28, scope: !854)
!858 = !DILocation(line: 77, column: 6, scope: !38)
!859 = !DILocation(line: 78, column: 29, scope: !860)
!860 = distinct !DILexicalBlock(scope: !854, file: !1, line: 77, column: 50)
!861 = !DILocation(line: 78, column: 34, scope: !860)
!862 = !DILocation(line: 78, column: 42, scope: !860)
!863 = !DILocation(line: 78, column: 52, scope: !860)
!864 = !DILocation(line: 78, column: 60, scope: !860)
!865 = !DILocation(line: 78, column: 3, scope: !860)
!866 = !DILocation(line: 79, column: 2, scope: !860)
!867 = !DILocation(line: 80, column: 10, scope: !868)
!868 = distinct !DILexicalBlock(scope: !854, file: !1, line: 79, column: 9)
!869 = !DILocation(line: 80, column: 15, scope: !868)
!870 = !DILocation(line: 80, column: 23, scope: !868)
!871 = !DILocation(line: 80, column: 33, scope: !868)
!872 = !DILocation(line: 80, column: 40, scope: !868)
!873 = !DILocation(line: 80, column: 3, scope: !868)
!874 = !DILocation(line: 83, column: 16, scope: !38)
!875 = !DILocation(line: 83, column: 2, scope: !38)
!876 = !DILocation(line: 83, column: 7, scope: !38)
!877 = !DILocation(line: 83, column: 14, scope: !38)
!878 = !DILocation(line: 84, column: 15, scope: !38)
!879 = !DILocation(line: 84, column: 3, scope: !38)
!880 = !DILocation(line: 84, column: 13, scope: !38)
!881 = !DILocation(line: 84, column: 2, scope: !38)
!882 = !DILabel(scope: !38, name: "cleanup", file: !1, line: 86)
!883 = !DILocation(line: 86, column: 1, scope: !38)
!884 = !DILocation(line: 90, column: 27, scope: !38)
!885 = !DILocation(line: 90, column: 2, scope: !38)
!886 = !DILocation(line: 91, column: 2, scope: !38)
!887 = !DILocation(line: 92, column: 1, scope: !38)
!888 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !889, file: !889, line: 55, type: !890, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !805)
!889 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!890 = !DISubroutineType(types: !891)
!891 = !{!24, !12}
!892 = !DILocalVariable(name: "flags", arg: 1, scope: !893, file: !894, line: 162, type: !31)
!893 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !894, file: !894, line: 162, type: !895, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !805)
!894 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!895 = !DISubroutineType(types: !896)
!896 = !{!897, !31}
!897 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!898 = !DILocation(line: 162, column: 67, scope: !893, inlinedAt: !899)
!899 = distinct !DILocation(line: 57, column: 23, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !889, line: 57, column: 23)
!901 = distinct !DILexicalBlock(scope: !888, file: !889, line: 57, column: 23)
!902 = !DILocalVariable(name: "size", arg: 1, scope: !888, file: !889, line: 55, type: !12)
!903 = !DILocation(line: 55, column: 55, scope: !888)
!904 = !DILocation(line: 57, column: 17, scope: !888)
!905 = !DILocalVariable(name: "_flags", scope: !901, file: !889, line: 57, type: !31)
!906 = !DILocation(line: 57, column: 23, scope: !901)
!907 = !DILocalVariable(name: "__dummy", scope: !908, file: !889, line: 57, type: !31)
!908 = distinct !DILexicalBlock(scope: !909, file: !889, line: 57, column: 23)
!909 = distinct !DILexicalBlock(scope: !901, file: !889, line: 57, column: 23)
!910 = !DILocation(line: 57, column: 23, scope: !908)
!911 = !DILocalVariable(name: "__dummy2", scope: !908, file: !889, line: 57, type: !31)
!912 = !DILocation(line: 57, column: 23, scope: !909)
!913 = !DILocalVariable(name: "__dummy", scope: !914, file: !889, line: 57, type: !31)
!914 = distinct !DILexicalBlock(scope: !900, file: !889, line: 57, column: 23)
!915 = !DILocation(line: 57, column: 23, scope: !914)
!916 = !DILocalVariable(name: "__dummy2", scope: !914, file: !889, line: 57, type: !31)
!917 = !DILocation(line: 57, column: 23, scope: !900)
!918 = !DILocation(line: 164, column: 11, scope: !893, inlinedAt: !899)
!919 = !DILocation(line: 164, column: 17, scope: !893, inlinedAt: !899)
!920 = !DILocation(line: 164, column: 9, scope: !893, inlinedAt: !899)
!921 = !DILocation(line: 57, column: 23, scope: !888)
!922 = !DILocation(line: 57, column: 9, scope: !888)
!923 = !DILocation(line: 57, column: 2, scope: !888)
!924 = distinct !DISubprogram(name: "acpi_ut_execute_UID", scope: !1, file: !1, line: 113, type: !39, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !805)
!925 = !DILocalVariable(name: "device_node", arg: 1, scope: !924, file: !1, line: 113, type: !41)
!926 = !DILocation(line: 113, column: 49, scope: !924)
!927 = !DILocalVariable(name: "return_id", arg: 2, scope: !924, file: !1, line: 114, type: !799)
!928 = !DILocation(line: 114, column: 35, scope: !924)
!929 = !DILocalVariable(name: "obj_desc", scope: !924, file: !1, line: 116, type: !46)
!930 = !DILocation(line: 116, column: 29, scope: !924)
!931 = !DILocalVariable(name: "uid", scope: !924, file: !1, line: 117, type: !800)
!932 = !DILocation(line: 117, column: 29, scope: !924)
!933 = !DILocalVariable(name: "length", scope: !924, file: !1, line: 118, type: !20)
!934 = !DILocation(line: 118, column: 6, scope: !924)
!935 = !DILocalVariable(name: "status", scope: !924, file: !1, line: 119, type: !19)
!936 = !DILocation(line: 119, column: 14, scope: !924)
!937 = !DILocation(line: 123, column: 35, scope: !924)
!938 = !DILocation(line: 123, column: 11, scope: !924)
!939 = !DILocation(line: 123, column: 9, scope: !924)
!940 = !DILocation(line: 126, column: 6, scope: !941)
!941 = distinct !DILexicalBlock(scope: !924, file: !1, line: 126, column: 6)
!942 = !DILocation(line: 126, column: 6, scope: !924)
!943 = !DILocation(line: 127, column: 3, scope: !944)
!944 = distinct !DILexicalBlock(scope: !941, file: !1, line: 126, column: 28)
!945 = !DILocation(line: 132, column: 6, scope: !946)
!946 = distinct !DILexicalBlock(scope: !924, file: !1, line: 132, column: 6)
!947 = !DILocation(line: 132, column: 16, scope: !946)
!948 = !DILocation(line: 132, column: 23, scope: !946)
!949 = !DILocation(line: 132, column: 28, scope: !946)
!950 = !DILocation(line: 132, column: 6, scope: !924)
!951 = !DILocation(line: 133, column: 10, scope: !952)
!952 = distinct !DILexicalBlock(scope: !946, file: !1, line: 132, column: 50)
!953 = !DILocation(line: 134, column: 2, scope: !952)
!954 = !DILocation(line: 135, column: 12, scope: !955)
!955 = distinct !DILexicalBlock(scope: !946, file: !1, line: 134, column: 9)
!956 = !DILocation(line: 135, column: 22, scope: !955)
!957 = !DILocation(line: 135, column: 29, scope: !955)
!958 = !DILocation(line: 135, column: 36, scope: !955)
!959 = !DILocation(line: 135, column: 10, scope: !955)
!960 = !DILocation(line: 141, column: 6, scope: !924)
!961 = !DILocation(line: 140, column: 6, scope: !924)
!962 = !DILocation(line: 143, column: 7, scope: !963)
!963 = distinct !DILexicalBlock(scope: !924, file: !1, line: 143, column: 6)
!964 = !DILocation(line: 143, column: 6, scope: !924)
!965 = !DILocation(line: 144, column: 10, scope: !966)
!966 = distinct !DILexicalBlock(scope: !963, file: !1, line: 143, column: 12)
!967 = !DILocation(line: 145, column: 3, scope: !966)
!968 = !DILocation(line: 151, column: 6, scope: !924)
!969 = !DILocation(line: 150, column: 2, scope: !924)
!970 = !DILocation(line: 150, column: 7, scope: !924)
!971 = !DILocation(line: 150, column: 14, scope: !924)
!972 = !DILocation(line: 155, column: 6, scope: !973)
!973 = distinct !DILexicalBlock(scope: !924, file: !1, line: 155, column: 6)
!974 = !DILocation(line: 155, column: 16, scope: !973)
!975 = !DILocation(line: 155, column: 23, scope: !973)
!976 = !DILocation(line: 155, column: 28, scope: !973)
!977 = !DILocation(line: 155, column: 6, scope: !924)
!978 = !DILocation(line: 156, column: 29, scope: !979)
!979 = distinct !DILexicalBlock(scope: !973, file: !1, line: 155, column: 50)
!980 = !DILocation(line: 156, column: 34, scope: !979)
!981 = !DILocation(line: 156, column: 42, scope: !979)
!982 = !DILocation(line: 156, column: 52, scope: !979)
!983 = !DILocation(line: 156, column: 60, scope: !979)
!984 = !DILocation(line: 156, column: 3, scope: !979)
!985 = !DILocation(line: 157, column: 2, scope: !979)
!986 = !DILocation(line: 158, column: 10, scope: !987)
!987 = distinct !DILexicalBlock(scope: !973, file: !1, line: 157, column: 9)
!988 = !DILocation(line: 158, column: 15, scope: !987)
!989 = !DILocation(line: 158, column: 23, scope: !987)
!990 = !DILocation(line: 158, column: 33, scope: !987)
!991 = !DILocation(line: 158, column: 40, scope: !987)
!992 = !DILocation(line: 158, column: 3, scope: !987)
!993 = !DILocation(line: 161, column: 16, scope: !924)
!994 = !DILocation(line: 161, column: 2, scope: !924)
!995 = !DILocation(line: 161, column: 7, scope: !924)
!996 = !DILocation(line: 161, column: 14, scope: !924)
!997 = !DILocation(line: 162, column: 15, scope: !924)
!998 = !DILocation(line: 162, column: 3, scope: !924)
!999 = !DILocation(line: 162, column: 13, scope: !924)
!1000 = !DILocation(line: 162, column: 2, scope: !924)
!1001 = !DILabel(scope: !924, name: "cleanup", file: !1, line: 164)
!1002 = !DILocation(line: 164, column: 1, scope: !924)
!1003 = !DILocation(line: 168, column: 27, scope: !924)
!1004 = !DILocation(line: 168, column: 2, scope: !924)
!1005 = !DILocation(line: 169, column: 2, scope: !924)
!1006 = !DILocation(line: 170, column: 1, scope: !924)
!1007 = distinct !DISubprogram(name: "acpi_ut_execute_CID", scope: !1, file: !1, line: 196, type: !1008, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !805)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!19, !41, !1010}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id_list", file: !13, line: 1146, size: 64, elements: !1013)
!1013 = !{!1014, !1015, !1016}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1012, file: !13, line: 1147, baseType: !20, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "list_size", scope: !1012, file: !13, line: 1148, baseType: !20, size: 32, offset: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1012, file: !13, line: 1149, baseType: !1017, offset: 64)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, elements: !1018)
!1018 = !{!1019}
!1019 = !DISubrange(count: -1)
!1020 = !DILocalVariable(name: "device_node", arg: 1, scope: !1007, file: !1, line: 196, type: !41)
!1021 = !DILocation(line: 196, column: 49, scope: !1007)
!1022 = !DILocalVariable(name: "return_cid_list", arg: 2, scope: !1007, file: !1, line: 197, type: !1010)
!1023 = !DILocation(line: 197, column: 40, scope: !1007)
!1024 = !DILocalVariable(name: "cid_objects", scope: !1007, file: !1, line: 199, type: !107)
!1025 = !DILocation(line: 199, column: 30, scope: !1007)
!1026 = !DILocalVariable(name: "obj_desc", scope: !1007, file: !1, line: 200, type: !46)
!1027 = !DILocation(line: 200, column: 29, scope: !1007)
!1028 = !DILocalVariable(name: "cid_list", scope: !1007, file: !1, line: 201, type: !1011)
!1029 = !DILocation(line: 201, column: 34, scope: !1007)
!1030 = !DILocalVariable(name: "next_id_string", scope: !1007, file: !1, line: 202, type: !22)
!1031 = !DILocation(line: 202, column: 8, scope: !1007)
!1032 = !DILocalVariable(name: "string_area_size", scope: !1007, file: !1, line: 203, type: !20)
!1033 = !DILocation(line: 203, column: 6, scope: !1007)
!1034 = !DILocalVariable(name: "length", scope: !1007, file: !1, line: 204, type: !20)
!1035 = !DILocation(line: 204, column: 6, scope: !1007)
!1036 = !DILocalVariable(name: "cid_list_size", scope: !1007, file: !1, line: 205, type: !20)
!1037 = !DILocation(line: 205, column: 6, scope: !1007)
!1038 = !DILocalVariable(name: "status", scope: !1007, file: !1, line: 206, type: !19)
!1039 = !DILocation(line: 206, column: 14, scope: !1007)
!1040 = !DILocalVariable(name: "count", scope: !1007, file: !1, line: 207, type: !20)
!1041 = !DILocation(line: 207, column: 6, scope: !1007)
!1042 = !DILocalVariable(name: "i", scope: !1007, file: !1, line: 208, type: !20)
!1043 = !DILocation(line: 208, column: 6, scope: !1007)
!1044 = !DILocation(line: 214, column: 35, scope: !1007)
!1045 = !DILocation(line: 214, column: 11, scope: !1007)
!1046 = !DILocation(line: 214, column: 9, scope: !1007)
!1047 = !DILocation(line: 217, column: 6, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 217, column: 6)
!1049 = !DILocation(line: 217, column: 6, scope: !1007)
!1050 = !DILocation(line: 218, column: 3, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 217, column: 28)
!1052 = !DILocation(line: 227, column: 6, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 227, column: 6)
!1054 = !DILocation(line: 227, column: 16, scope: !1053)
!1055 = !DILocation(line: 227, column: 23, scope: !1053)
!1056 = !DILocation(line: 227, column: 28, scope: !1053)
!1057 = !DILocation(line: 227, column: 6, scope: !1007)
!1058 = !DILocation(line: 228, column: 11, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 227, column: 50)
!1060 = !DILocation(line: 228, column: 21, scope: !1059)
!1061 = !DILocation(line: 228, column: 29, scope: !1059)
!1062 = !DILocation(line: 228, column: 9, scope: !1059)
!1063 = !DILocation(line: 229, column: 17, scope: !1059)
!1064 = !DILocation(line: 229, column: 27, scope: !1059)
!1065 = !DILocation(line: 229, column: 35, scope: !1059)
!1066 = !DILocation(line: 229, column: 15, scope: !1059)
!1067 = !DILocation(line: 230, column: 2, scope: !1059)
!1068 = !DILocation(line: 232, column: 9, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 230, column: 9)
!1070 = !DILocation(line: 233, column: 15, scope: !1069)
!1071 = !DILocation(line: 236, column: 19, scope: !1007)
!1072 = !DILocation(line: 237, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 237, column: 2)
!1074 = !DILocation(line: 237, column: 7, scope: !1073)
!1075 = !DILocation(line: 237, column: 14, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !1, line: 237, column: 2)
!1077 = !DILocation(line: 237, column: 18, scope: !1076)
!1078 = !DILocation(line: 237, column: 16, scope: !1076)
!1079 = !DILocation(line: 237, column: 2, scope: !1073)
!1080 = !DILocation(line: 241, column: 11, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !1, line: 237, column: 30)
!1082 = !DILocation(line: 241, column: 23, scope: !1081)
!1083 = !DILocation(line: 241, column: 27, scope: !1081)
!1084 = !DILocation(line: 241, column: 34, scope: !1081)
!1085 = !DILocation(line: 241, column: 3, scope: !1081)
!1086 = !DILocation(line: 244, column: 21, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 241, column: 40)
!1088 = !DILocation(line: 245, column: 4, scope: !1087)
!1089 = !DILocation(line: 249, column: 24, scope: !1087)
!1090 = !DILocation(line: 249, column: 36, scope: !1087)
!1091 = !DILocation(line: 249, column: 40, scope: !1087)
!1092 = !DILocation(line: 249, column: 47, scope: !1087)
!1093 = !DILocation(line: 249, column: 54, scope: !1087)
!1094 = !DILocation(line: 249, column: 21, scope: !1087)
!1095 = !DILocation(line: 250, column: 4, scope: !1087)
!1096 = !DILocation(line: 254, column: 11, scope: !1087)
!1097 = !DILocation(line: 255, column: 4, scope: !1087)
!1098 = !DILocation(line: 257, column: 2, scope: !1081)
!1099 = !DILocation(line: 237, column: 26, scope: !1076)
!1100 = !DILocation(line: 237, column: 2, scope: !1076)
!1101 = distinct !{!1101, !1079, !1102}
!1102 = !DILocation(line: 257, column: 2, scope: !1073)
!1103 = !DILocation(line: 266, column: 7, scope: !1007)
!1104 = !DILocation(line: 266, column: 13, scope: !1007)
!1105 = !DILocation(line: 265, column: 57, scope: !1007)
!1106 = !DILocation(line: 266, column: 52, scope: !1007)
!1107 = !DILocation(line: 266, column: 50, scope: !1007)
!1108 = !DILocation(line: 265, column: 18, scope: !1007)
!1109 = !DILocation(line: 265, column: 16, scope: !1007)
!1110 = !DILocation(line: 268, column: 13, scope: !1007)
!1111 = !DILocation(line: 268, column: 11, scope: !1007)
!1112 = !DILocation(line: 269, column: 7, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 269, column: 6)
!1114 = !DILocation(line: 269, column: 6, scope: !1007)
!1115 = !DILocation(line: 270, column: 10, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 269, column: 17)
!1117 = !DILocation(line: 271, column: 3, scope: !1116)
!1118 = !DILocation(line: 276, column: 19, scope: !1007)
!1119 = !DILocation(line: 277, column: 18, scope: !1007)
!1120 = !DILocation(line: 277, column: 7, scope: !1007)
!1121 = !DILocation(line: 277, column: 24, scope: !1007)
!1122 = !DILocation(line: 276, column: 54, scope: !1007)
!1123 = !DILocation(line: 276, column: 17, scope: !1007)
!1124 = !DILocation(line: 281, column: 9, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 281, column: 2)
!1126 = !DILocation(line: 281, column: 7, scope: !1125)
!1127 = !DILocation(line: 281, column: 14, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !1, line: 281, column: 2)
!1129 = !DILocation(line: 281, column: 18, scope: !1128)
!1130 = !DILocation(line: 281, column: 16, scope: !1128)
!1131 = !DILocation(line: 281, column: 2, scope: !1125)
!1132 = !DILocation(line: 282, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 282, column: 7)
!1134 = distinct !DILexicalBlock(scope: !1128, file: !1, line: 281, column: 30)
!1135 = !DILocation(line: 282, column: 19, scope: !1133)
!1136 = !DILocation(line: 282, column: 23, scope: !1133)
!1137 = !DILocation(line: 282, column: 30, scope: !1133)
!1138 = !DILocation(line: 282, column: 35, scope: !1133)
!1139 = !DILocation(line: 282, column: 7, scope: !1134)
!1140 = !DILocation(line: 286, column: 30, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 282, column: 57)
!1142 = !DILocation(line: 287, column: 9, scope: !1141)
!1143 = !DILocation(line: 287, column: 21, scope: !1141)
!1144 = !DILocation(line: 287, column: 25, scope: !1141)
!1145 = !DILocation(line: 288, column: 9, scope: !1141)
!1146 = !DILocation(line: 286, column: 4, scope: !1141)
!1147 = !DILocation(line: 289, column: 11, scope: !1141)
!1148 = !DILocation(line: 290, column: 3, scope: !1141)
!1149 = !DILocation(line: 292, column: 11, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 290, column: 10)
!1151 = !DILocation(line: 292, column: 27, scope: !1150)
!1152 = !DILocation(line: 292, column: 39, scope: !1150)
!1153 = !DILocation(line: 292, column: 43, scope: !1150)
!1154 = !DILocation(line: 292, column: 50, scope: !1150)
!1155 = !DILocation(line: 292, column: 4, scope: !1150)
!1156 = !DILocation(line: 293, column: 13, scope: !1150)
!1157 = !DILocation(line: 293, column: 25, scope: !1150)
!1158 = !DILocation(line: 293, column: 29, scope: !1150)
!1159 = !DILocation(line: 293, column: 36, scope: !1150)
!1160 = !DILocation(line: 293, column: 43, scope: !1150)
!1161 = !DILocation(line: 293, column: 11, scope: !1150)
!1162 = !DILocation(line: 296, column: 29, scope: !1134)
!1163 = !DILocation(line: 296, column: 3, scope: !1134)
!1164 = !DILocation(line: 296, column: 13, scope: !1134)
!1165 = !DILocation(line: 296, column: 17, scope: !1134)
!1166 = !DILocation(line: 296, column: 20, scope: !1134)
!1167 = !DILocation(line: 296, column: 27, scope: !1134)
!1168 = !DILocation(line: 297, column: 29, scope: !1134)
!1169 = !DILocation(line: 297, column: 3, scope: !1134)
!1170 = !DILocation(line: 297, column: 13, scope: !1134)
!1171 = !DILocation(line: 297, column: 17, scope: !1134)
!1172 = !DILocation(line: 297, column: 20, scope: !1134)
!1173 = !DILocation(line: 297, column: 27, scope: !1134)
!1174 = !DILocation(line: 298, column: 21, scope: !1134)
!1175 = !DILocation(line: 298, column: 18, scope: !1134)
!1176 = !DILocation(line: 299, column: 2, scope: !1134)
!1177 = !DILocation(line: 281, column: 26, scope: !1128)
!1178 = !DILocation(line: 281, column: 2, scope: !1128)
!1179 = distinct !{!1179, !1131, !1180}
!1180 = !DILocation(line: 299, column: 2, scope: !1125)
!1181 = !DILocation(line: 303, column: 20, scope: !1007)
!1182 = !DILocation(line: 303, column: 2, scope: !1007)
!1183 = !DILocation(line: 303, column: 12, scope: !1007)
!1184 = !DILocation(line: 303, column: 18, scope: !1007)
!1185 = !DILocation(line: 304, column: 24, scope: !1007)
!1186 = !DILocation(line: 304, column: 2, scope: !1007)
!1187 = !DILocation(line: 304, column: 12, scope: !1007)
!1188 = !DILocation(line: 304, column: 22, scope: !1007)
!1189 = !DILocation(line: 305, column: 21, scope: !1007)
!1190 = !DILocation(line: 305, column: 3, scope: !1007)
!1191 = !DILocation(line: 305, column: 19, scope: !1007)
!1192 = !DILocation(line: 305, column: 2, scope: !1007)
!1193 = !DILabel(scope: !1007, name: "cleanup", file: !1, line: 307)
!1194 = !DILocation(line: 307, column: 1, scope: !1007)
!1195 = !DILocation(line: 311, column: 27, scope: !1007)
!1196 = !DILocation(line: 311, column: 2, scope: !1007)
!1197 = !DILocation(line: 312, column: 2, scope: !1007)
!1198 = !DILocation(line: 313, column: 1, scope: !1007)
!1199 = distinct !DISubprogram(name: "acpi_ut_execute_CLS", scope: !1, file: !1, line: 335, type: !39, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !805)
!1200 = !DILocalVariable(name: "device_node", arg: 1, scope: !1199, file: !1, line: 335, type: !41)
!1201 = !DILocation(line: 335, column: 49, scope: !1199)
!1202 = !DILocalVariable(name: "return_id", arg: 2, scope: !1199, file: !1, line: 336, type: !799)
!1203 = !DILocation(line: 336, column: 35, scope: !1199)
!1204 = !DILocalVariable(name: "obj_desc", scope: !1199, file: !1, line: 338, type: !46)
!1205 = !DILocation(line: 338, column: 29, scope: !1199)
!1206 = !DILocalVariable(name: "cls_objects", scope: !1199, file: !1, line: 339, type: !107)
!1207 = !DILocation(line: 339, column: 30, scope: !1199)
!1208 = !DILocalVariable(name: "count", scope: !1199, file: !1, line: 340, type: !20)
!1209 = !DILocation(line: 340, column: 6, scope: !1199)
!1210 = !DILocalVariable(name: "cls", scope: !1199, file: !1, line: 341, type: !800)
!1211 = !DILocation(line: 341, column: 29, scope: !1199)
!1212 = !DILocalVariable(name: "length", scope: !1199, file: !1, line: 342, type: !20)
!1213 = !DILocation(line: 342, column: 6, scope: !1199)
!1214 = !DILocalVariable(name: "status", scope: !1199, file: !1, line: 343, type: !19)
!1215 = !DILocation(line: 343, column: 14, scope: !1199)
!1216 = !DILocalVariable(name: "class_code", scope: !1199, file: !1, line: 344, type: !70)
!1217 = !DILocation(line: 344, column: 5, scope: !1199)
!1218 = !DILocation(line: 348, column: 35, scope: !1199)
!1219 = !DILocation(line: 348, column: 11, scope: !1199)
!1220 = !DILocation(line: 348, column: 9, scope: !1199)
!1221 = !DILocation(line: 350, column: 6, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 350, column: 6)
!1223 = !DILocation(line: 350, column: 6, scope: !1199)
!1224 = !DILocation(line: 351, column: 3, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 350, column: 28)
!1226 = !DILocation(line: 356, column: 9, scope: !1199)
!1227 = !DILocation(line: 357, column: 16, scope: !1199)
!1228 = !DILocation(line: 357, column: 26, scope: !1199)
!1229 = !DILocation(line: 357, column: 34, scope: !1199)
!1230 = !DILocation(line: 357, column: 14, scope: !1199)
!1231 = !DILocation(line: 358, column: 10, scope: !1199)
!1232 = !DILocation(line: 358, column: 20, scope: !1199)
!1233 = !DILocation(line: 358, column: 28, scope: !1199)
!1234 = !DILocation(line: 358, column: 8, scope: !1199)
!1235 = !DILocation(line: 360, column: 6, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 360, column: 6)
!1237 = !DILocation(line: 360, column: 16, scope: !1236)
!1238 = !DILocation(line: 360, column: 23, scope: !1236)
!1239 = !DILocation(line: 360, column: 28, scope: !1236)
!1240 = !DILocation(line: 360, column: 6, scope: !1199)
!1241 = !DILocation(line: 361, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !1, line: 361, column: 7)
!1243 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 360, column: 50)
!1244 = !DILocation(line: 361, column: 13, scope: !1242)
!1245 = !DILocation(line: 362, column: 7, scope: !1242)
!1246 = !DILocation(line: 362, column: 10, scope: !1242)
!1247 = !DILocation(line: 362, column: 26, scope: !1242)
!1248 = !DILocation(line: 362, column: 33, scope: !1242)
!1249 = !DILocation(line: 362, column: 38, scope: !1242)
!1250 = !DILocation(line: 361, column: 7, scope: !1243)
!1251 = !DILocation(line: 363, column: 24, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 362, column: 60)
!1253 = !DILocation(line: 363, column: 40, scope: !1252)
!1254 = !DILocation(line: 363, column: 48, scope: !1252)
!1255 = !DILocation(line: 363, column: 20, scope: !1252)
!1256 = !DILocation(line: 363, column: 4, scope: !1252)
!1257 = !DILocation(line: 363, column: 18, scope: !1252)
!1258 = !DILocation(line: 364, column: 3, scope: !1252)
!1259 = !DILocation(line: 365, column: 7, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1243, file: !1, line: 365, column: 7)
!1261 = !DILocation(line: 365, column: 13, scope: !1260)
!1262 = !DILocation(line: 366, column: 7, scope: !1260)
!1263 = !DILocation(line: 366, column: 10, scope: !1260)
!1264 = !DILocation(line: 366, column: 26, scope: !1260)
!1265 = !DILocation(line: 366, column: 33, scope: !1260)
!1266 = !DILocation(line: 366, column: 38, scope: !1260)
!1267 = !DILocation(line: 365, column: 7, scope: !1243)
!1268 = !DILocation(line: 367, column: 24, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 366, column: 60)
!1270 = !DILocation(line: 367, column: 40, scope: !1269)
!1271 = !DILocation(line: 367, column: 48, scope: !1269)
!1272 = !DILocation(line: 367, column: 20, scope: !1269)
!1273 = !DILocation(line: 367, column: 4, scope: !1269)
!1274 = !DILocation(line: 367, column: 18, scope: !1269)
!1275 = !DILocation(line: 368, column: 3, scope: !1269)
!1276 = !DILocation(line: 369, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1243, file: !1, line: 369, column: 7)
!1278 = !DILocation(line: 369, column: 13, scope: !1277)
!1279 = !DILocation(line: 370, column: 7, scope: !1277)
!1280 = !DILocation(line: 370, column: 10, scope: !1277)
!1281 = !DILocation(line: 370, column: 26, scope: !1277)
!1282 = !DILocation(line: 370, column: 33, scope: !1277)
!1283 = !DILocation(line: 370, column: 38, scope: !1277)
!1284 = !DILocation(line: 369, column: 7, scope: !1243)
!1285 = !DILocation(line: 371, column: 24, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 370, column: 60)
!1287 = !DILocation(line: 371, column: 40, scope: !1286)
!1288 = !DILocation(line: 371, column: 48, scope: !1286)
!1289 = !DILocation(line: 371, column: 20, scope: !1286)
!1290 = !DILocation(line: 371, column: 4, scope: !1286)
!1291 = !DILocation(line: 371, column: 18, scope: !1286)
!1292 = !DILocation(line: 372, column: 3, scope: !1286)
!1293 = !DILocation(line: 373, column: 2, scope: !1243)
!1294 = !DILocation(line: 378, column: 6, scope: !1199)
!1295 = !DILocation(line: 377, column: 6, scope: !1199)
!1296 = !DILocation(line: 380, column: 7, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 380, column: 6)
!1298 = !DILocation(line: 380, column: 6, scope: !1199)
!1299 = !DILocation(line: 381, column: 10, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 380, column: 12)
!1301 = !DILocation(line: 382, column: 3, scope: !1300)
!1302 = !DILocation(line: 388, column: 6, scope: !1199)
!1303 = !DILocation(line: 387, column: 2, scope: !1199)
!1304 = !DILocation(line: 387, column: 7, scope: !1199)
!1305 = !DILocation(line: 387, column: 14, scope: !1199)
!1306 = !DILocation(line: 392, column: 28, scope: !1199)
!1307 = !DILocation(line: 392, column: 33, scope: !1199)
!1308 = !DILocation(line: 392, column: 41, scope: !1199)
!1309 = !DILocation(line: 392, column: 2, scope: !1199)
!1310 = !DILocation(line: 393, column: 16, scope: !1199)
!1311 = !DILocation(line: 393, column: 2, scope: !1199)
!1312 = !DILocation(line: 393, column: 7, scope: !1199)
!1313 = !DILocation(line: 393, column: 14, scope: !1199)
!1314 = !DILocation(line: 394, column: 15, scope: !1199)
!1315 = !DILocation(line: 394, column: 3, scope: !1199)
!1316 = !DILocation(line: 394, column: 13, scope: !1199)
!1317 = !DILocation(line: 394, column: 2, scope: !1199)
!1318 = !DILabel(scope: !1199, name: "cleanup", file: !1, line: 396)
!1319 = !DILocation(line: 396, column: 1, scope: !1199)
!1320 = !DILocation(line: 400, column: 27, scope: !1199)
!1321 = !DILocation(line: 400, column: 2, scope: !1199)
!1322 = !DILocation(line: 401, column: 2, scope: !1199)
!1323 = !DILocation(line: 402, column: 1, scope: !1199)
!1324 = distinct !DISubprogram(name: "kzalloc", scope: !4, file: !4, line: 662, type: !1325, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !805)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!24, !1327, !29}
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 55, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1329, line: 72, baseType: !1330)
!1329 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1329, line: 16, baseType: !31)
!1331 = !DILocalVariable(name: "s", arg: 1, scope: !1332, file: !4, line: 445, type: !1335)
!1332 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !4, file: !4, line: 445, type: !1333, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !805)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!24, !1335, !29, !1327}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1337, line: 117, flags: DIFlagFwdDecl)
!1337 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1338 = !DILocation(line: 445, column: 72, scope: !1332, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 552, column: 10, scope: !1340, inlinedAt: !1343)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !4, line: 540, column: 34)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !4, line: 540, column: 6)
!1342 = distinct !DISubprogram(name: "kmalloc", scope: !4, file: !4, line: 538, type: !1325, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !805)
!1343 = distinct !DILocation(line: 664, column: 9, scope: !1324)
!1344 = !DILocalVariable(name: "flags", arg: 2, scope: !1332, file: !4, line: 446, type: !29)
!1345 = !DILocation(line: 446, column: 9, scope: !1332, inlinedAt: !1339)
!1346 = !DILocalVariable(name: "size", arg: 3, scope: !1332, file: !4, line: 446, type: !1327)
!1347 = !DILocation(line: 446, column: 23, scope: !1332, inlinedAt: !1339)
!1348 = !DILocalVariable(name: "ret", scope: !1332, file: !4, line: 448, type: !24)
!1349 = !DILocation(line: 448, column: 8, scope: !1332, inlinedAt: !1339)
!1350 = !DILocalVariable(name: "flags", arg: 1, scope: !1351, file: !4, line: 318, type: !29)
!1351 = distinct !DISubprogram(name: "kmalloc_type", scope: !4, file: !4, line: 318, type: !1352, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !805)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!3, !29}
!1354 = !DILocation(line: 318, column: 67, scope: !1351, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 553, column: 20, scope: !1340, inlinedAt: !1343)
!1356 = !DILocalVariable(name: "size", arg: 1, scope: !1357, file: !4, line: 346, type: !1327)
!1357 = distinct !DISubprogram(name: "kmalloc_index", scope: !4, file: !4, line: 346, type: !1358, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !805)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!5, !1327}
!1360 = !DILocation(line: 346, column: 58, scope: !1357, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 547, column: 11, scope: !1340, inlinedAt: !1343)
!1362 = !DILocalVariable(name: "size", arg: 1, scope: !1363, file: !4, line: 472, type: !1327)
!1363 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !4, file: !4, line: 472, type: !1364, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !805)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!24, !1327, !29, !5}
!1366 = !DILocation(line: 472, column: 28, scope: !1363, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 481, column: 9, scope: !1368, inlinedAt: !1369)
!1368 = distinct !DISubprogram(name: "kmalloc_large", scope: !4, file: !4, line: 478, type: !1325, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !805)
!1369 = distinct !DILocation(line: 545, column: 11, scope: !1370, inlinedAt: !1343)
!1370 = distinct !DILexicalBlock(scope: !1340, file: !4, line: 544, column: 7)
!1371 = !DILocalVariable(name: "flags", arg: 2, scope: !1363, file: !4, line: 472, type: !29)
!1372 = !DILocation(line: 472, column: 40, scope: !1363, inlinedAt: !1367)
!1373 = !DILocalVariable(name: "order", arg: 3, scope: !1363, file: !4, line: 472, type: !5)
!1374 = !DILocation(line: 472, column: 60, scope: !1363, inlinedAt: !1367)
!1375 = !DILocalVariable(name: "size", arg: 1, scope: !1368, file: !4, line: 478, type: !1327)
!1376 = !DILocation(line: 478, column: 51, scope: !1368, inlinedAt: !1369)
!1377 = !DILocalVariable(name: "flags", arg: 2, scope: !1368, file: !4, line: 478, type: !29)
!1378 = !DILocation(line: 478, column: 63, scope: !1368, inlinedAt: !1369)
!1379 = !DILocalVariable(name: "order", scope: !1368, file: !4, line: 480, type: !5)
!1380 = !DILocation(line: 480, column: 15, scope: !1368, inlinedAt: !1369)
!1381 = !DILocalVariable(name: "size", arg: 1, scope: !1342, file: !4, line: 538, type: !1327)
!1382 = !DILocation(line: 538, column: 45, scope: !1342, inlinedAt: !1343)
!1383 = !DILocalVariable(name: "flags", arg: 2, scope: !1342, file: !4, line: 538, type: !29)
!1384 = !DILocation(line: 538, column: 57, scope: !1342, inlinedAt: !1343)
!1385 = !DILocalVariable(name: "index", scope: !1340, file: !4, line: 542, type: !5)
!1386 = !DILocation(line: 542, column: 16, scope: !1340, inlinedAt: !1343)
!1387 = !DILocalVariable(name: "size", arg: 1, scope: !1324, file: !4, line: 662, type: !1327)
!1388 = !DILocation(line: 662, column: 36, scope: !1324)
!1389 = !DILocalVariable(name: "flags", arg: 2, scope: !1324, file: !4, line: 662, type: !29)
!1390 = !DILocation(line: 662, column: 48, scope: !1324)
!1391 = !DILocation(line: 664, column: 17, scope: !1324)
!1392 = !DILocation(line: 664, column: 23, scope: !1324)
!1393 = !DILocation(line: 664, column: 29, scope: !1324)
!1394 = !DILocation(line: 540, column: 27, scope: !1341, inlinedAt: !1343)
!1395 = !DILocation(line: 540, column: 6, scope: !1341, inlinedAt: !1343)
!1396 = !DILocation(line: 540, column: 6, scope: !1342, inlinedAt: !1343)
!1397 = !DILocation(line: 544, column: 7, scope: !1370, inlinedAt: !1343)
!1398 = !DILocation(line: 544, column: 12, scope: !1370, inlinedAt: !1343)
!1399 = !DILocation(line: 544, column: 7, scope: !1340, inlinedAt: !1343)
!1400 = !DILocation(line: 545, column: 25, scope: !1370, inlinedAt: !1343)
!1401 = !DILocation(line: 545, column: 31, scope: !1370, inlinedAt: !1343)
!1402 = !DILocation(line: 480, column: 33, scope: !1368, inlinedAt: !1369)
!1403 = !DILocation(line: 480, column: 23, scope: !1368, inlinedAt: !1369)
!1404 = !DILocation(line: 481, column: 29, scope: !1368, inlinedAt: !1369)
!1405 = !DILocation(line: 481, column: 35, scope: !1368, inlinedAt: !1369)
!1406 = !DILocation(line: 481, column: 42, scope: !1368, inlinedAt: !1369)
!1407 = !DILocation(line: 474, column: 23, scope: !1363, inlinedAt: !1367)
!1408 = !DILocation(line: 474, column: 29, scope: !1363, inlinedAt: !1367)
!1409 = !DILocation(line: 474, column: 36, scope: !1363, inlinedAt: !1367)
!1410 = !DILocation(line: 474, column: 9, scope: !1363, inlinedAt: !1367)
!1411 = !DILocation(line: 545, column: 4, scope: !1370, inlinedAt: !1343)
!1412 = !DILocation(line: 547, column: 25, scope: !1340, inlinedAt: !1343)
!1413 = !DILocation(line: 348, column: 7, scope: !1414, inlinedAt: !1361)
!1414 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 348, column: 6)
!1415 = !DILocation(line: 348, column: 6, scope: !1357, inlinedAt: !1361)
!1416 = !DILocation(line: 349, column: 3, scope: !1414, inlinedAt: !1361)
!1417 = !DILocation(line: 351, column: 6, scope: !1418, inlinedAt: !1361)
!1418 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 351, column: 6)
!1419 = !DILocation(line: 351, column: 11, scope: !1418, inlinedAt: !1361)
!1420 = !DILocation(line: 351, column: 6, scope: !1357, inlinedAt: !1361)
!1421 = !DILocation(line: 352, column: 3, scope: !1418, inlinedAt: !1361)
!1422 = !DILocation(line: 354, column: 32, scope: !1423, inlinedAt: !1361)
!1423 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 354, column: 6)
!1424 = !DILocation(line: 354, column: 37, scope: !1423, inlinedAt: !1361)
!1425 = !DILocation(line: 354, column: 42, scope: !1423, inlinedAt: !1361)
!1426 = !DILocation(line: 354, column: 45, scope: !1423, inlinedAt: !1361)
!1427 = !DILocation(line: 354, column: 50, scope: !1423, inlinedAt: !1361)
!1428 = !DILocation(line: 354, column: 6, scope: !1357, inlinedAt: !1361)
!1429 = !DILocation(line: 355, column: 3, scope: !1423, inlinedAt: !1361)
!1430 = !DILocation(line: 356, column: 32, scope: !1431, inlinedAt: !1361)
!1431 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 356, column: 6)
!1432 = !DILocation(line: 356, column: 37, scope: !1431, inlinedAt: !1361)
!1433 = !DILocation(line: 356, column: 43, scope: !1431, inlinedAt: !1361)
!1434 = !DILocation(line: 356, column: 46, scope: !1431, inlinedAt: !1361)
!1435 = !DILocation(line: 356, column: 51, scope: !1431, inlinedAt: !1361)
!1436 = !DILocation(line: 356, column: 6, scope: !1357, inlinedAt: !1361)
!1437 = !DILocation(line: 357, column: 3, scope: !1431, inlinedAt: !1361)
!1438 = !DILocation(line: 358, column: 6, scope: !1439, inlinedAt: !1361)
!1439 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 358, column: 6)
!1440 = !DILocation(line: 358, column: 11, scope: !1439, inlinedAt: !1361)
!1441 = !DILocation(line: 358, column: 6, scope: !1357, inlinedAt: !1361)
!1442 = !DILocation(line: 358, column: 26, scope: !1439, inlinedAt: !1361)
!1443 = !DILocation(line: 359, column: 6, scope: !1444, inlinedAt: !1361)
!1444 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 359, column: 6)
!1445 = !DILocation(line: 359, column: 11, scope: !1444, inlinedAt: !1361)
!1446 = !DILocation(line: 359, column: 6, scope: !1357, inlinedAt: !1361)
!1447 = !DILocation(line: 359, column: 26, scope: !1444, inlinedAt: !1361)
!1448 = !DILocation(line: 360, column: 6, scope: !1449, inlinedAt: !1361)
!1449 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 360, column: 6)
!1450 = !DILocation(line: 360, column: 11, scope: !1449, inlinedAt: !1361)
!1451 = !DILocation(line: 360, column: 6, scope: !1357, inlinedAt: !1361)
!1452 = !DILocation(line: 360, column: 26, scope: !1449, inlinedAt: !1361)
!1453 = !DILocation(line: 361, column: 6, scope: !1454, inlinedAt: !1361)
!1454 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 361, column: 6)
!1455 = !DILocation(line: 361, column: 11, scope: !1454, inlinedAt: !1361)
!1456 = !DILocation(line: 361, column: 6, scope: !1357, inlinedAt: !1361)
!1457 = !DILocation(line: 361, column: 26, scope: !1454, inlinedAt: !1361)
!1458 = !DILocation(line: 362, column: 6, scope: !1459, inlinedAt: !1361)
!1459 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 362, column: 6)
!1460 = !DILocation(line: 362, column: 11, scope: !1459, inlinedAt: !1361)
!1461 = !DILocation(line: 362, column: 6, scope: !1357, inlinedAt: !1361)
!1462 = !DILocation(line: 362, column: 26, scope: !1459, inlinedAt: !1361)
!1463 = !DILocation(line: 363, column: 6, scope: !1464, inlinedAt: !1361)
!1464 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 363, column: 6)
!1465 = !DILocation(line: 363, column: 11, scope: !1464, inlinedAt: !1361)
!1466 = !DILocation(line: 363, column: 6, scope: !1357, inlinedAt: !1361)
!1467 = !DILocation(line: 363, column: 26, scope: !1464, inlinedAt: !1361)
!1468 = !DILocation(line: 364, column: 6, scope: !1469, inlinedAt: !1361)
!1469 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 364, column: 6)
!1470 = !DILocation(line: 364, column: 11, scope: !1469, inlinedAt: !1361)
!1471 = !DILocation(line: 364, column: 6, scope: !1357, inlinedAt: !1361)
!1472 = !DILocation(line: 364, column: 26, scope: !1469, inlinedAt: !1361)
!1473 = !DILocation(line: 365, column: 6, scope: !1474, inlinedAt: !1361)
!1474 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 365, column: 6)
!1475 = !DILocation(line: 365, column: 11, scope: !1474, inlinedAt: !1361)
!1476 = !DILocation(line: 365, column: 6, scope: !1357, inlinedAt: !1361)
!1477 = !DILocation(line: 365, column: 26, scope: !1474, inlinedAt: !1361)
!1478 = !DILocation(line: 366, column: 6, scope: !1479, inlinedAt: !1361)
!1479 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 366, column: 6)
!1480 = !DILocation(line: 366, column: 11, scope: !1479, inlinedAt: !1361)
!1481 = !DILocation(line: 366, column: 6, scope: !1357, inlinedAt: !1361)
!1482 = !DILocation(line: 366, column: 26, scope: !1479, inlinedAt: !1361)
!1483 = !DILocation(line: 367, column: 6, scope: !1484, inlinedAt: !1361)
!1484 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 367, column: 6)
!1485 = !DILocation(line: 367, column: 11, scope: !1484, inlinedAt: !1361)
!1486 = !DILocation(line: 367, column: 6, scope: !1357, inlinedAt: !1361)
!1487 = !DILocation(line: 367, column: 26, scope: !1484, inlinedAt: !1361)
!1488 = !DILocation(line: 368, column: 6, scope: !1489, inlinedAt: !1361)
!1489 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 368, column: 6)
!1490 = !DILocation(line: 368, column: 11, scope: !1489, inlinedAt: !1361)
!1491 = !DILocation(line: 368, column: 6, scope: !1357, inlinedAt: !1361)
!1492 = !DILocation(line: 368, column: 26, scope: !1489, inlinedAt: !1361)
!1493 = !DILocation(line: 369, column: 6, scope: !1494, inlinedAt: !1361)
!1494 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 369, column: 6)
!1495 = !DILocation(line: 369, column: 11, scope: !1494, inlinedAt: !1361)
!1496 = !DILocation(line: 369, column: 6, scope: !1357, inlinedAt: !1361)
!1497 = !DILocation(line: 369, column: 26, scope: !1494, inlinedAt: !1361)
!1498 = !DILocation(line: 370, column: 6, scope: !1499, inlinedAt: !1361)
!1499 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 370, column: 6)
!1500 = !DILocation(line: 370, column: 11, scope: !1499, inlinedAt: !1361)
!1501 = !DILocation(line: 370, column: 6, scope: !1357, inlinedAt: !1361)
!1502 = !DILocation(line: 370, column: 26, scope: !1499, inlinedAt: !1361)
!1503 = !DILocation(line: 371, column: 6, scope: !1504, inlinedAt: !1361)
!1504 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 371, column: 6)
!1505 = !DILocation(line: 371, column: 11, scope: !1504, inlinedAt: !1361)
!1506 = !DILocation(line: 371, column: 6, scope: !1357, inlinedAt: !1361)
!1507 = !DILocation(line: 371, column: 26, scope: !1504, inlinedAt: !1361)
!1508 = !DILocation(line: 372, column: 6, scope: !1509, inlinedAt: !1361)
!1509 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 372, column: 6)
!1510 = !DILocation(line: 372, column: 11, scope: !1509, inlinedAt: !1361)
!1511 = !DILocation(line: 372, column: 6, scope: !1357, inlinedAt: !1361)
!1512 = !DILocation(line: 372, column: 26, scope: !1509, inlinedAt: !1361)
!1513 = !DILocation(line: 373, column: 6, scope: !1514, inlinedAt: !1361)
!1514 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 373, column: 6)
!1515 = !DILocation(line: 373, column: 11, scope: !1514, inlinedAt: !1361)
!1516 = !DILocation(line: 373, column: 6, scope: !1357, inlinedAt: !1361)
!1517 = !DILocation(line: 373, column: 26, scope: !1514, inlinedAt: !1361)
!1518 = !DILocation(line: 374, column: 6, scope: !1519, inlinedAt: !1361)
!1519 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 374, column: 6)
!1520 = !DILocation(line: 374, column: 11, scope: !1519, inlinedAt: !1361)
!1521 = !DILocation(line: 374, column: 6, scope: !1357, inlinedAt: !1361)
!1522 = !DILocation(line: 374, column: 26, scope: !1519, inlinedAt: !1361)
!1523 = !DILocation(line: 375, column: 6, scope: !1524, inlinedAt: !1361)
!1524 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 375, column: 6)
!1525 = !DILocation(line: 375, column: 11, scope: !1524, inlinedAt: !1361)
!1526 = !DILocation(line: 375, column: 6, scope: !1357, inlinedAt: !1361)
!1527 = !DILocation(line: 375, column: 27, scope: !1524, inlinedAt: !1361)
!1528 = !DILocation(line: 376, column: 6, scope: !1529, inlinedAt: !1361)
!1529 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 376, column: 6)
!1530 = !DILocation(line: 376, column: 11, scope: !1529, inlinedAt: !1361)
!1531 = !DILocation(line: 376, column: 6, scope: !1357, inlinedAt: !1361)
!1532 = !DILocation(line: 376, column: 32, scope: !1529, inlinedAt: !1361)
!1533 = !DILocation(line: 377, column: 6, scope: !1534, inlinedAt: !1361)
!1534 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 377, column: 6)
!1535 = !DILocation(line: 377, column: 11, scope: !1534, inlinedAt: !1361)
!1536 = !DILocation(line: 377, column: 6, scope: !1357, inlinedAt: !1361)
!1537 = !DILocation(line: 377, column: 32, scope: !1534, inlinedAt: !1361)
!1538 = !DILocation(line: 378, column: 6, scope: !1539, inlinedAt: !1361)
!1539 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 378, column: 6)
!1540 = !DILocation(line: 378, column: 11, scope: !1539, inlinedAt: !1361)
!1541 = !DILocation(line: 378, column: 6, scope: !1357, inlinedAt: !1361)
!1542 = !DILocation(line: 378, column: 32, scope: !1539, inlinedAt: !1361)
!1543 = !DILocation(line: 379, column: 6, scope: !1544, inlinedAt: !1361)
!1544 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 379, column: 6)
!1545 = !DILocation(line: 379, column: 11, scope: !1544, inlinedAt: !1361)
!1546 = !DILocation(line: 379, column: 6, scope: !1357, inlinedAt: !1361)
!1547 = !DILocation(line: 379, column: 33, scope: !1544, inlinedAt: !1361)
!1548 = !DILocation(line: 380, column: 6, scope: !1549, inlinedAt: !1361)
!1549 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 380, column: 6)
!1550 = !DILocation(line: 380, column: 11, scope: !1549, inlinedAt: !1361)
!1551 = !DILocation(line: 380, column: 6, scope: !1357, inlinedAt: !1361)
!1552 = !DILocation(line: 380, column: 33, scope: !1549, inlinedAt: !1361)
!1553 = !DILocation(line: 381, column: 6, scope: !1554, inlinedAt: !1361)
!1554 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 381, column: 6)
!1555 = !DILocation(line: 381, column: 11, scope: !1554, inlinedAt: !1361)
!1556 = !DILocation(line: 381, column: 6, scope: !1357, inlinedAt: !1361)
!1557 = !DILocation(line: 381, column: 33, scope: !1554, inlinedAt: !1361)
!1558 = !DILocation(line: 382, column: 2, scope: !1559, inlinedAt: !1361)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !4, line: 382, column: 2)
!1560 = distinct !DILexicalBlock(scope: !1357, file: !4, line: 382, column: 2)
!1561 = !{i32 -2144108842, i32 -2144108813, i32 -2144108767, i32 -2144108709, i32 -2144108655, i32 -2144108601, i32 -2144108546, i32 -2144108515}
!1562 = !DILocation(line: 382, column: 2, scope: !1563, inlinedAt: !1361)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !4, line: 382, column: 2)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !4, line: 382, column: 2)
!1565 = !{i32 -2144108072, i32 -2144108065, i32 -2144108011, i32 -2144107980, i32 -2144107950}
!1566 = !DILocation(line: 382, column: 2, scope: !1564, inlinedAt: !1361)
!1567 = !DILocation(line: 386, column: 1, scope: !1357, inlinedAt: !1361)
!1568 = !DILocation(line: 547, column: 9, scope: !1340, inlinedAt: !1343)
!1569 = !DILocation(line: 549, column: 8, scope: !1570, inlinedAt: !1343)
!1570 = distinct !DILexicalBlock(scope: !1340, file: !4, line: 549, column: 7)
!1571 = !DILocation(line: 549, column: 7, scope: !1340, inlinedAt: !1343)
!1572 = !DILocation(line: 550, column: 4, scope: !1570, inlinedAt: !1343)
!1573 = !DILocation(line: 553, column: 33, scope: !1340, inlinedAt: !1343)
!1574 = !DILocation(line: 325, column: 6, scope: !1575, inlinedAt: !1355)
!1575 = distinct !DILexicalBlock(scope: !1351, file: !4, line: 325, column: 6)
!1576 = !DILocation(line: 325, column: 6, scope: !1351, inlinedAt: !1355)
!1577 = !DILocation(line: 326, column: 3, scope: !1575, inlinedAt: !1355)
!1578 = !DILocation(line: 332, column: 9, scope: !1351, inlinedAt: !1355)
!1579 = !DILocation(line: 332, column: 15, scope: !1351, inlinedAt: !1355)
!1580 = !DILocation(line: 332, column: 2, scope: !1351, inlinedAt: !1355)
!1581 = !DILocation(line: 336, column: 1, scope: !1351, inlinedAt: !1355)
!1582 = !DILocation(line: 553, column: 5, scope: !1340, inlinedAt: !1343)
!1583 = !DILocation(line: 553, column: 41, scope: !1340, inlinedAt: !1343)
!1584 = !DILocation(line: 554, column: 5, scope: !1340, inlinedAt: !1343)
!1585 = !DILocation(line: 554, column: 12, scope: !1340, inlinedAt: !1343)
!1586 = !DILocation(line: 448, column: 31, scope: !1332, inlinedAt: !1339)
!1587 = !DILocation(line: 448, column: 34, scope: !1332, inlinedAt: !1339)
!1588 = !DILocation(line: 448, column: 14, scope: !1332, inlinedAt: !1339)
!1589 = !DILocation(line: 450, column: 22, scope: !1332, inlinedAt: !1339)
!1590 = !DILocation(line: 450, column: 25, scope: !1332, inlinedAt: !1339)
!1591 = !DILocation(line: 450, column: 30, scope: !1332, inlinedAt: !1339)
!1592 = !DILocation(line: 450, column: 36, scope: !1332, inlinedAt: !1339)
!1593 = !DILocation(line: 450, column: 8, scope: !1332, inlinedAt: !1339)
!1594 = !DILocation(line: 450, column: 6, scope: !1332, inlinedAt: !1339)
!1595 = !DILocation(line: 451, column: 9, scope: !1332, inlinedAt: !1339)
!1596 = !DILocation(line: 552, column: 3, scope: !1340, inlinedAt: !1343)
!1597 = !DILocation(line: 557, column: 19, scope: !1342, inlinedAt: !1343)
!1598 = !DILocation(line: 557, column: 25, scope: !1342, inlinedAt: !1343)
!1599 = !DILocation(line: 557, column: 9, scope: !1342, inlinedAt: !1343)
!1600 = !DILocation(line: 557, column: 2, scope: !1342, inlinedAt: !1343)
!1601 = !DILocation(line: 558, column: 1, scope: !1342, inlinedAt: !1343)
!1602 = !DILocation(line: 664, column: 2, scope: !1324)
!1603 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1604, file: !1604, line: 646, type: !1605, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !805)
!1604 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!31}
!1607 = !DILocalVariable(name: "__ret", scope: !1608, file: !1604, line: 648, type: !31)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !1604, line: 648, column: 9)
!1609 = !DILocation(line: 648, column: 9, scope: !1608)
!1610 = !DILocalVariable(name: "__edi", scope: !1608, file: !1604, line: 648, type: !31)
!1611 = !DILocalVariable(name: "__esi", scope: !1608, file: !1604, line: 648, type: !31)
!1612 = !DILocalVariable(name: "__edx", scope: !1608, file: !1604, line: 648, type: !31)
!1613 = !DILocalVariable(name: "__ecx", scope: !1608, file: !1604, line: 648, type: !31)
!1614 = !DILocalVariable(name: "__eax", scope: !1608, file: !1604, line: 648, type: !31)
!1615 = !DILocation(line: 648, column: 9, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !1604, line: 648, column: 9)
!1617 = distinct !DILexicalBlock(scope: !1608, file: !1604, line: 648, column: 9)
!1618 = !{i32 -2145782448, i32 -2145780133, i32 -2145779899, i32 -2145779848, i32 -2145779820, i32 -2145779795, i32 -2145780111, i32 -2145780098, i32 -2145779660, i32 -2145779541, i32 -2145780006, i32 -2145779979, i32 -2145779951, i32 -2145779921}
!1619 = !DILocalVariable(name: "__mask", scope: !1620, file: !1604, line: 648, type: !31)
!1620 = distinct !DILexicalBlock(scope: !1616, file: !1604, line: 648, column: 9)
!1621 = !DILocation(line: 648, column: 9, scope: !1620)
!1622 = !DILocation(line: 648, column: 9, scope: !1617)
!1623 = !DILocation(line: 648, column: 2, scope: !1603)
!1624 = distinct !DISubprogram(name: "get_order", scope: !1625, file: !1625, line: 29, type: !895, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !805)
!1625 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1626 = !DILocalVariable(name: "x", arg: 1, scope: !1627, file: !1628, line: 366, type: !16)
!1627 = distinct !DISubprogram(name: "fls64", scope: !1628, file: !1628, line: 366, type: !1629, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !805)
!1628 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!897, !16}
!1631 = !DILocation(line: 366, column: 40, scope: !1627, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 46, column: 9, scope: !1624)
!1633 = !DILocalVariable(name: "bitpos", scope: !1627, file: !1628, line: 368, type: !897)
!1634 = !DILocation(line: 368, column: 6, scope: !1627, inlinedAt: !1632)
!1635 = !DILocalVariable(name: "size", arg: 1, scope: !1624, file: !1625, line: 29, type: !31)
!1636 = !DILocation(line: 29, column: 63, scope: !1624)
!1637 = !DILocation(line: 31, column: 27, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1624, file: !1625, line: 31, column: 6)
!1639 = !DILocation(line: 31, column: 6, scope: !1638)
!1640 = !DILocation(line: 31, column: 6, scope: !1624)
!1641 = !DILocation(line: 32, column: 8, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !1625, line: 32, column: 7)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !1625, line: 31, column: 34)
!1644 = !DILocation(line: 32, column: 7, scope: !1643)
!1645 = !DILocation(line: 33, column: 4, scope: !1642)
!1646 = !DILocation(line: 35, column: 7, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !1625, line: 35, column: 7)
!1648 = !DILocation(line: 35, column: 12, scope: !1647)
!1649 = !DILocation(line: 35, column: 7, scope: !1643)
!1650 = !DILocation(line: 36, column: 4, scope: !1647)
!1651 = !DILocation(line: 38, column: 10, scope: !1643)
!1652 = !DILocation(line: 38, column: 28, scope: !1643)
!1653 = !DILocation(line: 38, column: 41, scope: !1643)
!1654 = !DILocation(line: 38, column: 3, scope: !1643)
!1655 = !DILocation(line: 41, column: 6, scope: !1624)
!1656 = !DILocation(line: 42, column: 7, scope: !1624)
!1657 = !DILocation(line: 46, column: 15, scope: !1624)
!1658 = !DILocation(line: 374, column: 2, scope: !1627, inlinedAt: !1632)
!1659 = !DILocation(line: 376, column: 14, scope: !1627, inlinedAt: !1632)
!1660 = !{i32 662360}
!1661 = !DILocation(line: 377, column: 9, scope: !1627, inlinedAt: !1632)
!1662 = !DILocation(line: 377, column: 16, scope: !1627, inlinedAt: !1632)
!1663 = !DILocation(line: 46, column: 2, scope: !1624)
!1664 = !DILocation(line: 48, column: 1, scope: !1624)
!1665 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1666, file: !1666, line: 30, type: !1667, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !805)
!1666 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!897, !14}
!1669 = !DILocation(line: 366, column: 40, scope: !1627, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 32, column: 9, scope: !1665)
!1671 = !DILocation(line: 368, column: 6, scope: !1627, inlinedAt: !1670)
!1672 = !DILocalVariable(name: "n", arg: 1, scope: !1665, file: !1666, line: 30, type: !14)
!1673 = !DILocation(line: 30, column: 21, scope: !1665)
!1674 = !DILocation(line: 32, column: 15, scope: !1665)
!1675 = !DILocation(line: 374, column: 2, scope: !1627, inlinedAt: !1670)
!1676 = !DILocation(line: 376, column: 14, scope: !1627, inlinedAt: !1670)
!1677 = !DILocation(line: 377, column: 9, scope: !1627, inlinedAt: !1670)
!1678 = !DILocation(line: 377, column: 16, scope: !1627, inlinedAt: !1670)
!1679 = !DILocation(line: 32, column: 18, scope: !1665)
!1680 = !DILocation(line: 32, column: 2, scope: !1665)
!1681 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1682, file: !1682, line: 137, type: !1683, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !805)
!1682 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!24, !1335, !1685, !1327, !29}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1687 = !DILocalVariable(name: "s", arg: 1, scope: !1681, file: !1682, line: 137, type: !1335)
!1688 = !DILocation(line: 137, column: 54, scope: !1681)
!1689 = !DILocalVariable(name: "object", arg: 2, scope: !1681, file: !1682, line: 137, type: !1685)
!1690 = !DILocation(line: 137, column: 69, scope: !1681)
!1691 = !DILocalVariable(name: "size", arg: 3, scope: !1681, file: !1682, line: 138, type: !1327)
!1692 = !DILocation(line: 138, column: 12, scope: !1681)
!1693 = !DILocalVariable(name: "flags", arg: 4, scope: !1681, file: !1682, line: 138, type: !29)
!1694 = !DILocation(line: 138, column: 24, scope: !1681)
!1695 = !DILocation(line: 140, column: 17, scope: !1681)
!1696 = !DILocation(line: 140, column: 2, scope: !1681)
