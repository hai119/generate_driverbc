; ModuleID = '../bcout/drivers/acpi/acpica/exregion.llvm.bc'
source_filename = "drivers/acpi/acpica/exregion.c"
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.1 }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.anon.1 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.22, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.2, [0 x i64] }
%struct.anon.2 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.3, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.3 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
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
%struct.kernel_siginfo = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.14 }
%struct.anon.14 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.21, i32, [12 x i8] }
%union.anon.21 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.22 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.23, %union.anon.36, %struct.atomic_t, [8 x i8] }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.36 = type { %struct.atomic_t }
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
%struct.acpi_pci_id = type { i16, i16, i16, i16 }

@_acpi_module_name = internal constant [9 x i8] c"exregion\00", align 1, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"Invalid SystemMemory width %u\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Unable to save memory mapping at 0x%8.8X%8.8X, size %u\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Could not map memory at 0x%8.8X%8.8X, size %u\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_system_memory_space_handler(i32 %function, i64 %address, i32 %bit_width, i64* %value, i8* %handler_context, i8* %region_context) #0 !dbg !59 {
entry:
  %retval = alloca i32, align 4
  %function.addr = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %handler_context.addr = alloca i8*, align 8
  %region_context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %logical_addr_ptr = alloca i8*, align 8
  %mem_info = alloca %struct.acpi_mem_space_context*, align 8
  %mm = alloca %struct.acpi_mem_mapping*, align 8
  %length = alloca i32, align 4
  %map_length = alloca i64, align 8
  %page_boundary_map_length = alloca i64, align 8
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !64, metadata !DIExpression()), !dbg !65
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !66, metadata !DIExpression()), !dbg !67
  store i32 %bit_width, i32* %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bit_width.addr, metadata !68, metadata !DIExpression()), !dbg !69
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !70, metadata !DIExpression()), !dbg !71
  store i8* %handler_context, i8** %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handler_context.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store i8* %region_context, i8** %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %region_context.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %status, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 0, i32* %status, align 4, !dbg !77
  call void @llvm.dbg.declare(metadata i8** %logical_addr_ptr, metadata !78, metadata !DIExpression()), !dbg !79
  store i8* null, i8** %logical_addr_ptr, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata %struct.acpi_mem_space_context** %mem_info, metadata !80, metadata !DIExpression()), !dbg !95
  %0 = load i8*, i8** %region_context.addr, align 8, !dbg !96
  %1 = bitcast i8* %0 to %struct.acpi_mem_space_context*, !dbg !96
  store %struct.acpi_mem_space_context* %1, %struct.acpi_mem_space_context** %mem_info, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata %struct.acpi_mem_mapping** %mm, metadata !97, metadata !DIExpression()), !dbg !98
  %2 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %mem_info, align 8, !dbg !99
  %cur_mm = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %2, i32 0, i32 2, !dbg !100
  %3 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %cur_mm, align 8, !dbg !100
  store %struct.acpi_mem_mapping* %3, %struct.acpi_mem_mapping** %mm, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %length, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i64* %map_length, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i64* %page_boundary_map_length, metadata !105, metadata !DIExpression()), !dbg !106
  %4 = load i32, i32* %bit_width.addr, align 4, !dbg !107
  switch i32 %4, label %sw.default [
    i32 8, label %sw.bb
    i32 16, label %sw.bb1
    i32 32, label %sw.bb2
    i32 64, label %sw.bb3
  ], !dbg !108

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %length, align 4, !dbg !109
  br label %sw.epilog, !dbg !111

sw.bb1:                                           ; preds = %entry
  store i32 2, i32* %length, align 4, !dbg !112
  br label %sw.epilog, !dbg !113

sw.bb2:                                           ; preds = %entry
  store i32 4, i32* %length, align 4, !dbg !114
  br label %sw.epilog, !dbg !115

sw.bb3:                                           ; preds = %entry
  store i32 8, i32* %length, align 4, !dbg !116
  br label %sw.epilog, !dbg !117

sw.default:                                       ; preds = %entry
  %5 = load i32, i32* %bit_width.addr, align 4, !dbg !118
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %5) #9, !dbg !118
  store i32 12292, i32* %retval, align 4, !dbg !119
  br label %return, !dbg !119

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %6 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !120
  %tobool = icmp ne %struct.acpi_mem_mapping* %6, null, !dbg !120
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !122

lor.lhs.false:                                    ; preds = %sw.epilog
  %7 = load i64, i64* %address.addr, align 8, !dbg !123
  %8 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !124
  %physical_address = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %8, i32 0, i32 0, !dbg !125
  %9 = load i64, i64* %physical_address, align 8, !dbg !125
  %cmp = icmp ult i64 %7, %9, !dbg !126
  br i1 %cmp, label %if.then, label %lor.lhs.false4, !dbg !127

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %10 = load i64, i64* %address.addr, align 8, !dbg !128
  %11 = load i32, i32* %length, align 4, !dbg !129
  %conv = zext i32 %11 to i64, !dbg !129
  %add = add i64 %10, %conv, !dbg !130
  %12 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !131
  %physical_address5 = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %12, i32 0, i32 0, !dbg !132
  %13 = load i64, i64* %physical_address5, align 8, !dbg !132
  %14 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !133
  %length6 = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %14, i32 0, i32 2, !dbg !134
  %15 = load i64, i64* %length6, align 8, !dbg !134
  %add7 = add i64 %13, %15, !dbg !135
  %cmp8 = icmp ugt i64 %add, %add7, !dbg !136
  br i1 %cmp8, label %if.then, label %if.end63, !dbg !137

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %sw.epilog
  %16 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %mem_info, align 8, !dbg !138
  %first_mm = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %16, i32 0, i32 3, !dbg !141
  %17 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %first_mm, align 8, !dbg !141
  store %struct.acpi_mem_mapping* %17, %struct.acpi_mem_mapping** %mm, align 8, !dbg !142
  br label %for.cond, !dbg !143

for.cond:                                         ; preds = %for.inc, %if.then
  %18 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !144
  %tobool10 = icmp ne %struct.acpi_mem_mapping* %18, null, !dbg !146
  br i1 %tobool10, label %for.body, label %for.end, !dbg !146

for.body:                                         ; preds = %for.cond
  %19 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !147
  %20 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %mem_info, align 8, !dbg !150
  %cur_mm11 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %20, i32 0, i32 2, !dbg !151
  %21 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %cur_mm11, align 8, !dbg !151
  %cmp12 = icmp eq %struct.acpi_mem_mapping* %19, %21, !dbg !152
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !153

if.then14:                                        ; preds = %for.body
  br label %for.inc, !dbg !154

if.end:                                           ; preds = %for.body
  %22 = load i64, i64* %address.addr, align 8, !dbg !155
  %23 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !157
  %physical_address15 = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %23, i32 0, i32 0, !dbg !158
  %24 = load i64, i64* %physical_address15, align 8, !dbg !158
  %cmp16 = icmp ult i64 %22, %24, !dbg !159
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !160

if.then18:                                        ; preds = %if.end
  br label %for.inc, !dbg !161

if.end19:                                         ; preds = %if.end
  %25 = load i64, i64* %address.addr, align 8, !dbg !162
  %26 = load i32, i32* %length, align 4, !dbg !164
  %conv20 = zext i32 %26 to i64, !dbg !164
  %add21 = add i64 %25, %conv20, !dbg !165
  %27 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !166
  %physical_address22 = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %27, i32 0, i32 0, !dbg !167
  %28 = load i64, i64* %physical_address22, align 8, !dbg !167
  %29 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !168
  %length23 = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %29, i32 0, i32 2, !dbg !169
  %30 = load i64, i64* %length23, align 8, !dbg !169
  %add24 = add i64 %28, %30, !dbg !170
  %cmp25 = icmp ugt i64 %add21, %add24, !dbg !171
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !172

if.then27:                                        ; preds = %if.end19
  br label %for.inc, !dbg !173

if.end28:                                         ; preds = %if.end19
  %31 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !174
  %32 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %mem_info, align 8, !dbg !175
  %cur_mm29 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %32, i32 0, i32 2, !dbg !176
  store %struct.acpi_mem_mapping* %31, %struct.acpi_mem_mapping** %cur_mm29, align 8, !dbg !177
  br label %access, !dbg !178

for.inc:                                          ; preds = %if.then27, %if.then18, %if.then14
  %33 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !179
  %next_mm = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %33, i32 0, i32 3, !dbg !180
  %34 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %next_mm, align 8, !dbg !180
  store %struct.acpi_mem_mapping* %34, %struct.acpi_mem_mapping** %mm, align 8, !dbg !181
  br label %for.cond, !dbg !182, !llvm.loop !183

for.end:                                          ; preds = %for.cond
  %call = call i8* @acpi_os_allocate_zeroed(i64 32) #9, !dbg !185
  %35 = bitcast i8* %call to %struct.acpi_mem_mapping*, !dbg !185
  store %struct.acpi_mem_mapping* %35, %struct.acpi_mem_mapping** %mm, align 8, !dbg !186
  %36 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !187
  %tobool30 = icmp ne %struct.acpi_mem_mapping* %36, null, !dbg !187
  br i1 %tobool30, label %if.end34, label %if.then31, !dbg !189

if.then31:                                        ; preds = %for.end
  %37 = load i64, i64* %address.addr, align 8, !dbg !190
  %shr = lshr i64 %37, 32, !dbg !190
  %conv32 = trunc i64 %shr to i32, !dbg !190
  %38 = load i64, i64* %address.addr, align 8, !dbg !190
  %conv33 = trunc i64 %38 to i32, !dbg !190
  %39 = load i32, i32* %length, align 4, !dbg !190
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 127, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %conv32, i32 %conv33, i32 %39) #9, !dbg !190
  store i32 4, i32* %retval, align 4, !dbg !192
  br label %return, !dbg !192

if.end34:                                         ; preds = %for.end
  %40 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %mem_info, align 8, !dbg !193
  %address35 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %40, i32 0, i32 1, !dbg !194
  %41 = load i64, i64* %address35, align 8, !dbg !194
  %42 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %mem_info, align 8, !dbg !195
  %length36 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %42, i32 0, i32 0, !dbg !196
  %43 = load i32, i32* %length36, align 8, !dbg !196
  %conv37 = zext i32 %43 to i64, !dbg !195
  %add38 = add i64 %41, %conv37, !dbg !197
  %44 = load i64, i64* %address.addr, align 8, !dbg !198
  %sub = sub i64 %add38, %44, !dbg !199
  store i64 %sub, i64* %map_length, align 8, !dbg !200
  %45 = load i64, i64* %address.addr, align 8, !dbg !201
  %add39 = add i64 %45, 4095, !dbg !201
  %and = and i64 %add39, -4096, !dbg !201
  %46 = load i64, i64* %address.addr, align 8, !dbg !202
  %sub40 = sub i64 %and, %46, !dbg !203
  store i64 %sub40, i64* %page_boundary_map_length, align 8, !dbg !204
  %47 = load i64, i64* %page_boundary_map_length, align 8, !dbg !205
  %cmp41 = icmp eq i64 %47, 0, !dbg !207
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !208

if.then43:                                        ; preds = %if.end34
  store i64 4096, i64* %page_boundary_map_length, align 8, !dbg !209
  br label %if.end44, !dbg !211

if.end44:                                         ; preds = %if.then43, %if.end34
  %48 = load i64, i64* %map_length, align 8, !dbg !212
  %49 = load i64, i64* %page_boundary_map_length, align 8, !dbg !214
  %cmp45 = icmp ugt i64 %48, %49, !dbg !215
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !216

if.then47:                                        ; preds = %if.end44
  %50 = load i64, i64* %page_boundary_map_length, align 8, !dbg !217
  store i64 %50, i64* %map_length, align 8, !dbg !219
  br label %if.end48, !dbg !220

if.end48:                                         ; preds = %if.then47, %if.end44
  %51 = load i64, i64* %address.addr, align 8, !dbg !221
  %52 = load i64, i64* %map_length, align 8, !dbg !222
  %call49 = call i8* @acpi_os_map_memory(i64 %51, i64 %52) #9, !dbg !223
  store i8* %call49, i8** %logical_addr_ptr, align 8, !dbg !224
  %53 = load i8*, i8** %logical_addr_ptr, align 8, !dbg !225
  %tobool50 = icmp ne i8* %53, null, !dbg !225
  br i1 %tobool50, label %if.end56, label %if.then51, !dbg !227

if.then51:                                        ; preds = %if.end48
  %54 = load i64, i64* %address.addr, align 8, !dbg !228
  %shr52 = lshr i64 %54, 32, !dbg !228
  %conv53 = trunc i64 %shr52 to i32, !dbg !228
  %55 = load i64, i64* %address.addr, align 8, !dbg !228
  %conv54 = trunc i64 %55 to i32, !dbg !228
  %56 = load i64, i64* %map_length, align 8, !dbg !228
  %conv55 = trunc i64 %56 to i32, !dbg !228
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 166, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %conv53, i32 %conv54, i32 %conv55) #9, !dbg !228
  %57 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !230
  %58 = bitcast %struct.acpi_mem_mapping* %57 to i8*, !dbg !230
  call void @acpi_os_free(i8* %58) #9, !dbg !230
  store i32 4, i32* %retval, align 4, !dbg !231
  br label %return, !dbg !231

if.end56:                                         ; preds = %if.end48
  %59 = load i8*, i8** %logical_addr_ptr, align 8, !dbg !232
  %60 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !233
  %logical_address = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %60, i32 0, i32 1, !dbg !234
  store i8* %59, i8** %logical_address, align 8, !dbg !235
  %61 = load i64, i64* %address.addr, align 8, !dbg !236
  %62 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !237
  %physical_address57 = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %62, i32 0, i32 0, !dbg !238
  store i64 %61, i64* %physical_address57, align 8, !dbg !239
  %63 = load i64, i64* %map_length, align 8, !dbg !240
  %64 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !241
  %length58 = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %64, i32 0, i32 2, !dbg !242
  store i64 %63, i64* %length58, align 8, !dbg !243
  %65 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %mem_info, align 8, !dbg !244
  %first_mm59 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %65, i32 0, i32 3, !dbg !245
  %66 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %first_mm59, align 8, !dbg !245
  %67 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !246
  %next_mm60 = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %67, i32 0, i32 3, !dbg !247
  store %struct.acpi_mem_mapping* %66, %struct.acpi_mem_mapping** %next_mm60, align 8, !dbg !248
  %68 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !249
  %69 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %mem_info, align 8, !dbg !250
  %first_mm61 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %69, i32 0, i32 3, !dbg !251
  store %struct.acpi_mem_mapping* %68, %struct.acpi_mem_mapping** %first_mm61, align 8, !dbg !252
  %70 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !253
  %71 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %mem_info, align 8, !dbg !254
  %cur_mm62 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %71, i32 0, i32 2, !dbg !255
  store %struct.acpi_mem_mapping* %70, %struct.acpi_mem_mapping** %cur_mm62, align 8, !dbg !256
  br label %if.end63, !dbg !257

if.end63:                                         ; preds = %if.end56, %lor.lhs.false4
  br label %access, !dbg !258

access:                                           ; preds = %if.end63, %if.end28
  call void @llvm.dbg.label(metadata !259), !dbg !260
  %72 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !261
  %logical_address64 = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %72, i32 0, i32 1, !dbg !262
  %73 = load i8*, i8** %logical_address64, align 8, !dbg !262
  %74 = load i64, i64* %address.addr, align 8, !dbg !263
  %75 = load %struct.acpi_mem_mapping*, %struct.acpi_mem_mapping** %mm, align 8, !dbg !264
  %physical_address65 = getelementptr inbounds %struct.acpi_mem_mapping, %struct.acpi_mem_mapping* %75, i32 0, i32 0, !dbg !265
  %76 = load i64, i64* %physical_address65, align 8, !dbg !265
  %sub66 = sub i64 %74, %76, !dbg !266
  %add.ptr = getelementptr i8, i8* %73, i64 %sub66, !dbg !267
  store i8* %add.ptr, i8** %logical_addr_ptr, align 8, !dbg !268
  %77 = load i32, i32* %function.addr, align 4, !dbg !269
  switch i32 %77, label %sw.default87 [
    i32 0, label %sw.bb67
    i32 1, label %sw.bb77
  ], !dbg !270

sw.bb67:                                          ; preds = %access
  %78 = load i64*, i64** %value.addr, align 8, !dbg !271
  store i64 0, i64* %78, align 8, !dbg !273
  %79 = load i32, i32* %bit_width.addr, align 4, !dbg !274
  switch i32 %79, label %sw.default75 [
    i32 8, label %sw.bb68
    i32 16, label %sw.bb70
    i32 32, label %sw.bb72
    i32 64, label %sw.bb74
  ], !dbg !275

sw.bb68:                                          ; preds = %sw.bb67
  %80 = load i8*, i8** %logical_addr_ptr, align 8, !dbg !276
  %81 = load i8, i8* %80, align 1, !dbg !276
  %conv69 = zext i8 %81 to i64, !dbg !278
  %82 = load i64*, i64** %value.addr, align 8, !dbg !279
  store i64 %conv69, i64* %82, align 8, !dbg !280
  br label %sw.epilog76, !dbg !281

sw.bb70:                                          ; preds = %sw.bb67
  %83 = load i8*, i8** %logical_addr_ptr, align 8, !dbg !282
  %84 = bitcast i8* %83 to i16*, !dbg !282
  %85 = load i16, i16* %84, align 2, !dbg !282
  %conv71 = zext i16 %85 to i64, !dbg !283
  %86 = load i64*, i64** %value.addr, align 8, !dbg !284
  store i64 %conv71, i64* %86, align 8, !dbg !285
  br label %sw.epilog76, !dbg !286

sw.bb72:                                          ; preds = %sw.bb67
  %87 = load i8*, i8** %logical_addr_ptr, align 8, !dbg !287
  %88 = bitcast i8* %87 to i32*, !dbg !287
  %89 = load i32, i32* %88, align 4, !dbg !287
  %conv73 = zext i32 %89 to i64, !dbg !288
  %90 = load i64*, i64** %value.addr, align 8, !dbg !289
  store i64 %conv73, i64* %90, align 8, !dbg !290
  br label %sw.epilog76, !dbg !291

sw.bb74:                                          ; preds = %sw.bb67
  %91 = load i8*, i8** %logical_addr_ptr, align 8, !dbg !292
  %92 = bitcast i8* %91 to i64*, !dbg !292
  %93 = load i64, i64* %92, align 8, !dbg !292
  %94 = load i64*, i64** %value.addr, align 8, !dbg !293
  store i64 %93, i64* %94, align 8, !dbg !294
  br label %sw.epilog76, !dbg !295

sw.default75:                                     ; preds = %sw.bb67
  br label %sw.epilog76, !dbg !296

sw.epilog76:                                      ; preds = %sw.default75, %sw.bb74, %sw.bb72, %sw.bb70, %sw.bb68
  br label %sw.epilog88, !dbg !297

sw.bb77:                                          ; preds = %access
  %95 = load i32, i32* %bit_width.addr, align 4, !dbg !298
  switch i32 %95, label %sw.default85 [
    i32 8, label %sw.bb78
    i32 16, label %sw.bb80
    i32 32, label %sw.bb82
    i32 64, label %sw.bb84
  ], !dbg !299

sw.bb78:                                          ; preds = %sw.bb77
  %96 = load i64*, i64** %value.addr, align 8, !dbg !300
  %97 = load i64, i64* %96, align 8, !dbg !300
  %conv79 = trunc i64 %97 to i8, !dbg !300
  %98 = load i8*, i8** %logical_addr_ptr, align 8, !dbg !300
  store i8 %conv79, i8* %98, align 1, !dbg !300
  br label %sw.epilog86, !dbg !302

sw.bb80:                                          ; preds = %sw.bb77
  %99 = load i64*, i64** %value.addr, align 8, !dbg !303
  %100 = load i64, i64* %99, align 8, !dbg !303
  %conv81 = trunc i64 %100 to i16, !dbg !303
  %101 = load i8*, i8** %logical_addr_ptr, align 8, !dbg !303
  %102 = bitcast i8* %101 to i16*, !dbg !303
  store i16 %conv81, i16* %102, align 2, !dbg !303
  br label %sw.epilog86, !dbg !304

sw.bb82:                                          ; preds = %sw.bb77
  %103 = load i64*, i64** %value.addr, align 8, !dbg !305
  %104 = load i64, i64* %103, align 8, !dbg !305
  %conv83 = trunc i64 %104 to i32, !dbg !305
  %105 = load i8*, i8** %logical_addr_ptr, align 8, !dbg !305
  %106 = bitcast i8* %105 to i32*, !dbg !305
  store i32 %conv83, i32* %106, align 4, !dbg !305
  br label %sw.epilog86, !dbg !306

sw.bb84:                                          ; preds = %sw.bb77
  %107 = load i64*, i64** %value.addr, align 8, !dbg !307
  %108 = load i64, i64* %107, align 8, !dbg !307
  %109 = load i8*, i8** %logical_addr_ptr, align 8, !dbg !307
  %110 = bitcast i8* %109 to i64*, !dbg !307
  store i64 %108, i64* %110, align 8, !dbg !307
  br label %sw.epilog86, !dbg !308

sw.default85:                                     ; preds = %sw.bb77
  br label %sw.epilog86, !dbg !309

sw.epilog86:                                      ; preds = %sw.default85, %sw.bb84, %sw.bb82, %sw.bb80, %sw.bb78
  br label %sw.epilog88, !dbg !310

sw.default87:                                     ; preds = %access
  store i32 4097, i32* %status, align 4, !dbg !311
  br label %sw.epilog88, !dbg !312

sw.epilog88:                                      ; preds = %sw.default87, %sw.epilog86, %sw.epilog76
  %111 = load i32, i32* %status, align 4, !dbg !313
  store i32 %111, i32* %retval, align 4, !dbg !313
  br label %return, !dbg !313

return:                                           ; preds = %sw.epilog88, %if.then51, %if.then31, %sw.default
  %112 = load i32, i32* %retval, align 4, !dbg !314
  ret i32 %112, !dbg !314
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !315 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !319, metadata !DIExpression()), !dbg !325
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load i64, i64* %size.addr, align 8, !dbg !331
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !332, metadata !DIExpression()), !dbg !333
  br label %do.body, !dbg !333

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !334, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !338, metadata !DIExpression()), !dbg !337
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !337
  %conv = zext i1 %cmp to i32, !dbg !337
  store i32 1, i32* %tmp, align 4, !dbg !337
  %1 = load i32, i32* %tmp, align 4, !dbg !337
  %call = call i64 @arch_local_save_flags() #9, !dbg !339
  store i64 %call, i64* %_flags, align 8, !dbg !339
  br label %do.end, !dbg !339

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !340, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !343, metadata !DIExpression()), !dbg !342
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !342
  %conv6 = zext i1 %cmp5 to i32, !dbg !342
  store i32 1, i32* %tmp7, align 4, !dbg !342
  %2 = load i32, i32* %tmp7, align 4, !dbg !342
  %3 = load i64, i64* %_flags, align 8, !dbg !344
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !345
  %and.i = and i64 %4, 512, !dbg !346
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !347
  %lnot.i = xor i1 %tobool.i, true, !dbg !347
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !347
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !344
  %5 = load i32, i32* %tmp8, align 4, !dbg !344
  store i32 %5, i32* %tmp1, align 4, !dbg !339
  %6 = load i32, i32* %tmp1, align 4, !dbg !333
  %tobool = icmp ne i32 %6, 0, !dbg !348
  %7 = zext i1 %tobool to i64, !dbg !348
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !348
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #9, !dbg !349
  ret i8* %call10, !dbg !350
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_os_map_memory(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !351 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !354, metadata !DIExpression()), !dbg !355
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !356
  call void @kfree(i8* %0) #9, !dbg !357
  ret void, !dbg !358
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_system_io_space_handler(i32 %function, i64 %address, i32 %bit_width, i64* %value, i8* %handler_context, i8* %region_context) #0 !dbg !359 {
entry:
  %function.addr = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %handler_context.addr = alloca i8*, align 8
  %region_context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %value32 = alloca i32, align 4
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !360, metadata !DIExpression()), !dbg !361
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !362, metadata !DIExpression()), !dbg !363
  store i32 %bit_width, i32* %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bit_width.addr, metadata !364, metadata !DIExpression()), !dbg !365
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !366, metadata !DIExpression()), !dbg !367
  store i8* %handler_context, i8** %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handler_context.addr, metadata !368, metadata !DIExpression()), !dbg !369
  store i8* %region_context, i8** %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %region_context.addr, metadata !370, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata i32* %status, metadata !372, metadata !DIExpression()), !dbg !373
  store i32 0, i32* %status, align 4, !dbg !373
  call void @llvm.dbg.declare(metadata i32* %value32, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i32, i32* %function.addr, align 4, !dbg !376
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !377

sw.bb:                                            ; preds = %entry
  %1 = load i64, i64* %address.addr, align 8, !dbg !378
  %2 = load i32, i32* %bit_width.addr, align 4, !dbg !380
  %call = call i32 @acpi_hw_read_port(i64 %1, i32* %value32, i32 %2) #9, !dbg !381
  store i32 %call, i32* %status, align 4, !dbg !382
  %3 = load i32, i32* %value32, align 4, !dbg !383
  %conv = zext i32 %3 to i64, !dbg !383
  %4 = load i64*, i64** %value.addr, align 8, !dbg !384
  store i64 %conv, i64* %4, align 8, !dbg !385
  br label %sw.epilog, !dbg !386

sw.bb1:                                           ; preds = %entry
  %5 = load i64, i64* %address.addr, align 8, !dbg !387
  %6 = load i64*, i64** %value.addr, align 8, !dbg !388
  %7 = load i64, i64* %6, align 8, !dbg !389
  %conv2 = trunc i64 %7 to i32, !dbg !390
  %8 = load i32, i32* %bit_width.addr, align 4, !dbg !391
  %call3 = call i32 @acpi_hw_write_port(i64 %5, i32 %conv2, i32 %8) #9, !dbg !392
  store i32 %call3, i32* %status, align 4, !dbg !393
  br label %sw.epilog, !dbg !394

sw.default:                                       ; preds = %entry
  store i32 4097, i32* %status, align 4, !dbg !395
  br label %sw.epilog, !dbg !396

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %9 = load i32, i32* %status, align 4, !dbg !397
  ret i32 %9, !dbg !397
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_read_port(i64, i32*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_write_port(i64, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_pci_config_space_handler(i32 %function, i64 %address, i32 %bit_width, i64* %value, i8* %handler_context, i8* %region_context) #0 !dbg !398 {
entry:
  %function.addr = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %handler_context.addr = alloca i8*, align 8
  %region_context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %pci_id = alloca %struct.acpi_pci_id*, align 8
  %pci_register = alloca i16, align 2
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !399, metadata !DIExpression()), !dbg !400
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !401, metadata !DIExpression()), !dbg !402
  store i32 %bit_width, i32* %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bit_width.addr, metadata !403, metadata !DIExpression()), !dbg !404
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !405, metadata !DIExpression()), !dbg !406
  store i8* %handler_context, i8** %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handler_context.addr, metadata !407, metadata !DIExpression()), !dbg !408
  store i8* %region_context, i8** %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %region_context.addr, metadata !409, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata i32* %status, metadata !411, metadata !DIExpression()), !dbg !412
  store i32 0, i32* %status, align 4, !dbg !412
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_id** %pci_id, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata i16* %pci_register, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load i8*, i8** %region_context.addr, align 8, !dbg !417
  %1 = bitcast i8* %0 to %struct.acpi_pci_id*, !dbg !418
  store %struct.acpi_pci_id* %1, %struct.acpi_pci_id** %pci_id, align 8, !dbg !419
  %2 = load i64, i64* %address.addr, align 8, !dbg !420
  %conv = trunc i64 %2 to i32, !dbg !421
  %conv1 = trunc i32 %conv to i16, !dbg !422
  store i16 %conv1, i16* %pci_register, align 2, !dbg !423
  %3 = load i32, i32* %function.addr, align 4, !dbg !424
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ], !dbg !425

sw.bb:                                            ; preds = %entry
  %4 = load i64*, i64** %value.addr, align 8, !dbg !426
  store i64 0, i64* %4, align 8, !dbg !428
  %5 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id, align 8, !dbg !429
  %6 = load i16, i16* %pci_register, align 2, !dbg !430
  %conv2 = zext i16 %6 to i32, !dbg !430
  %7 = load i64*, i64** %value.addr, align 8, !dbg !431
  %8 = load i32, i32* %bit_width.addr, align 4, !dbg !432
  %call = call i32 @acpi_os_read_pci_configuration(%struct.acpi_pci_id* %5, i32 %conv2, i64* %7, i32 %8) #9, !dbg !433
  store i32 %call, i32* %status, align 4, !dbg !434
  br label %sw.epilog, !dbg !435

sw.bb3:                                           ; preds = %entry
  %9 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id, align 8, !dbg !436
  %10 = load i16, i16* %pci_register, align 2, !dbg !437
  %conv4 = zext i16 %10 to i32, !dbg !437
  %11 = load i64*, i64** %value.addr, align 8, !dbg !438
  %12 = load i64, i64* %11, align 8, !dbg !439
  %13 = load i32, i32* %bit_width.addr, align 4, !dbg !440
  %call5 = call i32 @acpi_os_write_pci_configuration(%struct.acpi_pci_id* %9, i32 %conv4, i64 %12, i32 %13) #9, !dbg !441
  store i32 %call5, i32* %status, align 4, !dbg !442
  br label %sw.epilog, !dbg !443

sw.default:                                       ; preds = %entry
  store i32 4097, i32* %status, align 4, !dbg !444
  br label %sw.epilog, !dbg !445

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %14 = load i32, i32* %status, align 4, !dbg !446
  ret i32 %14, !dbg !446
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_read_pci_configuration(%struct.acpi_pci_id*, i32, i64*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_write_pci_configuration(%struct.acpi_pci_id*, i32, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_cmos_space_handler(i32 %function, i64 %address, i32 %bit_width, i64* %value, i8* %handler_context, i8* %region_context) #0 !dbg !447 {
entry:
  %function.addr = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %handler_context.addr = alloca i8*, align 8
  %region_context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !448, metadata !DIExpression()), !dbg !449
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !450, metadata !DIExpression()), !dbg !451
  store i32 %bit_width, i32* %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bit_width.addr, metadata !452, metadata !DIExpression()), !dbg !453
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !454, metadata !DIExpression()), !dbg !455
  store i8* %handler_context, i8** %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handler_context.addr, metadata !456, metadata !DIExpression()), !dbg !457
  store i8* %region_context, i8** %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %region_context.addr, metadata !458, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata i32* %status, metadata !460, metadata !DIExpression()), !dbg !461
  store i32 0, i32* %status, align 4, !dbg !461
  %0 = load i32, i32* %status, align 4, !dbg !462
  ret i32 %0, !dbg !462
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_pci_bar_space_handler(i32 %function, i64 %address, i32 %bit_width, i64* %value, i8* %handler_context, i8* %region_context) #0 !dbg !463 {
entry:
  %function.addr = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %handler_context.addr = alloca i8*, align 8
  %region_context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !464, metadata !DIExpression()), !dbg !465
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !466, metadata !DIExpression()), !dbg !467
  store i32 %bit_width, i32* %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bit_width.addr, metadata !468, metadata !DIExpression()), !dbg !469
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !470, metadata !DIExpression()), !dbg !471
  store i8* %handler_context, i8** %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handler_context.addr, metadata !472, metadata !DIExpression()), !dbg !473
  store i8* %region_context, i8** %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %region_context.addr, metadata !474, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.declare(metadata i32* %status, metadata !476, metadata !DIExpression()), !dbg !477
  store i32 0, i32* %status, align 4, !dbg !477
  %0 = load i32, i32* %status, align 4, !dbg !478
  ret i32 %0, !dbg !478
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_data_table_space_handler(i32 %function, i64 %address, i32 %bit_width, i64* %value, i8* %handler_context, i8* %region_context) #0 !dbg !479 {
entry:
  %retval = alloca i32, align 4
  %function.addr = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %handler_context.addr = alloca i8*, align 8
  %region_context.addr = alloca i8*, align 8
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !480, metadata !DIExpression()), !dbg !481
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !482, metadata !DIExpression()), !dbg !483
  store i32 %bit_width, i32* %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bit_width.addr, metadata !484, metadata !DIExpression()), !dbg !485
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !486, metadata !DIExpression()), !dbg !487
  store i8* %handler_context, i8** %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handler_context.addr, metadata !488, metadata !DIExpression()), !dbg !489
  store i8* %region_context, i8** %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %region_context.addr, metadata !490, metadata !DIExpression()), !dbg !491
  %0 = load i32, i32* %function.addr, align 4, !dbg !492
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !493

sw.bb:                                            ; preds = %entry
  %1 = load i64*, i64** %value.addr, align 8, !dbg !494
  %2 = bitcast i64* %1 to i8*, !dbg !494
  %3 = load i64, i64* %address.addr, align 8, !dbg !496
  %4 = inttoptr i64 %3 to i8*, !dbg !496
  %5 = load i32, i32* %bit_width.addr, align 4, !dbg !497
  %shr = lshr i32 %5, 3, !dbg !497
  %conv = zext i32 %shr to i64, !dbg !497
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %4, i64 %conv, i1 false), !dbg !498
  br label %sw.epilog, !dbg !499

sw.bb1:                                           ; preds = %entry
  %6 = load i64, i64* %address.addr, align 8, !dbg !500
  %7 = inttoptr i64 %6 to i8*, !dbg !500
  %8 = load i64*, i64** %value.addr, align 8, !dbg !501
  %9 = bitcast i64* %8 to i8*, !dbg !501
  %10 = load i32, i32* %bit_width.addr, align 4, !dbg !502
  %shr2 = lshr i32 %10, 3, !dbg !502
  %conv3 = zext i32 %shr2 to i64, !dbg !502
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %9, i64 %conv3, i1 false), !dbg !503
  br label %sw.epilog, !dbg !504

sw.default:                                       ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !505
  br label %return, !dbg !505

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !506
  br label %return, !dbg !506

return:                                           ; preds = %sw.epilog, %sw.default
  %11 = load i32, i32* %retval, align 4, !dbg !507
  ret i32 %11, !dbg !507
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !508 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !515, metadata !DIExpression()), !dbg !522
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !528, metadata !DIExpression()), !dbg !529
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !530, metadata !DIExpression()), !dbg !531
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !532, metadata !DIExpression()), !dbg !533
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !534, metadata !DIExpression()), !dbg !538
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !540, metadata !DIExpression()), !dbg !544
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !546, metadata !DIExpression()), !dbg !550
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !555, metadata !DIExpression()), !dbg !556
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !557, metadata !DIExpression()), !dbg !558
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !559, metadata !DIExpression()), !dbg !560
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !561, metadata !DIExpression()), !dbg !562
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !563, metadata !DIExpression()), !dbg !564
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !565, metadata !DIExpression()), !dbg !566
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !567, metadata !DIExpression()), !dbg !568
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !569, metadata !DIExpression()), !dbg !570
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !571, metadata !DIExpression()), !dbg !572
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !573, metadata !DIExpression()), !dbg !574
  %0 = load i64, i64* %size.addr, align 8, !dbg !575
  %1 = load i32, i32* %flags.addr, align 4, !dbg !576
  %or = or i32 %1, 256, !dbg !577
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !578
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !579
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !580

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !581
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !582
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !583

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !584
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !585
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !586
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !587
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !564
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !588
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !589
  %10 = load i32, i32* %order.i.i, align 4, !dbg !590
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !591
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !592
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !593
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !594
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !594
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !594
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !594
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !594
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !595
  br label %kmalloc.exit, !dbg !595

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !596
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !597
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !597
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !599

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !600
  br label %kmalloc_index.exit.i, !dbg !600

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !601
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !603
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !604

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !605
  br label %kmalloc_index.exit.i, !dbg !605

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !606
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !608
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !609

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !610
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !611
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !612

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !613
  br label %kmalloc_index.exit.i, !dbg !613

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !614
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !616
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !617

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !618
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !619
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !620

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !621
  br label %kmalloc_index.exit.i, !dbg !621

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !622
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !624
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !625

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !626
  br label %kmalloc_index.exit.i, !dbg !626

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !627
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !629
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !630

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !631
  br label %kmalloc_index.exit.i, !dbg !631

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !632
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !634
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !635

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !636
  br label %kmalloc_index.exit.i, !dbg !636

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !637
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !639
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !640

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !641
  br label %kmalloc_index.exit.i, !dbg !641

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !642
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !644
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !645

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !646
  br label %kmalloc_index.exit.i, !dbg !646

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !647
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !649
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !650

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !651
  br label %kmalloc_index.exit.i, !dbg !651

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !652
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !654
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !655

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !656
  br label %kmalloc_index.exit.i, !dbg !656

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !657
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !659
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !660

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !661
  br label %kmalloc_index.exit.i, !dbg !661

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !662
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !664
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !665

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !666
  br label %kmalloc_index.exit.i, !dbg !666

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !667
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !669
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !670

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !671
  br label %kmalloc_index.exit.i, !dbg !671

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !672
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !674
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !675

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !676
  br label %kmalloc_index.exit.i, !dbg !676

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !677
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !679
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !680

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !681
  br label %kmalloc_index.exit.i, !dbg !681

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !682
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !684
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !685

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !686
  br label %kmalloc_index.exit.i, !dbg !686

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !687
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !689
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !690

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !691
  br label %kmalloc_index.exit.i, !dbg !691

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !692
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !694
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !695

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !696
  br label %kmalloc_index.exit.i, !dbg !696

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !697
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !699
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !700

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !701
  br label %kmalloc_index.exit.i, !dbg !701

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !702
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !704
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !705

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !706
  br label %kmalloc_index.exit.i, !dbg !706

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !707
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !709
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !710

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !711
  br label %kmalloc_index.exit.i, !dbg !711

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !712
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !714
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !715

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !716
  br label %kmalloc_index.exit.i, !dbg !716

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !717
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !719
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !720

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !721
  br label %kmalloc_index.exit.i, !dbg !721

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !722
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !724
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !725

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !726
  br label %kmalloc_index.exit.i, !dbg !726

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !727
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !729
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !730

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !731
  br label %kmalloc_index.exit.i, !dbg !731

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !732
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !734
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !735

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !736
  br label %kmalloc_index.exit.i, !dbg !736

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !737
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !739
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !740

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !741
  br label %kmalloc_index.exit.i, !dbg !741

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !742, !srcloc !745
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !746, !srcloc !749
  unreachable, !dbg !750

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !751
  store i32 %45, i32* %index.i, align 4, !dbg !752
  %46 = load i32, i32* %index.i, align 4, !dbg !753
  %tobool.i = icmp ne i32 %46, 0, !dbg !753
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !755

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !756
  br label %kmalloc.exit, !dbg !756

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !757
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !758
  %and.i.i = and i32 %48, 17, !dbg !758
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !758
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !758
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !758
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !758
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !760

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !761
  br label %kmalloc_type.exit.i, !dbg !761

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !762
  %and2.i.i = and i32 %49, 1, !dbg !763
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !762
  %50 = zext i1 %tobool3.i.i to i64, !dbg !762
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !762
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !764
  br label %kmalloc_type.exit.i, !dbg !764

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !765
  %idxprom.i = zext i32 %51 to i64, !dbg !766
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !766
  %52 = load i32, i32* %index.i, align 4, !dbg !767
  %idxprom6.i = zext i32 %52 to i64, !dbg !766
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !766
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !766
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !768
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !769
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !770
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !771
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !772
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !772
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !772
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !772
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !772
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !533
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !773
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !774
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !775
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !776
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !777
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !778
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !779
  store i8* %62, i8** %retval.i, align 8, !dbg !780
  br label %kmalloc.exit, !dbg !780

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !781
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !782
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !783
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !783
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !783
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !783
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !783
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !784
  br label %kmalloc.exit, !dbg !784

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !785
  ret i8* %65, !dbg !786
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !787 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !791, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !794, metadata !DIExpression()), !dbg !793
  %0 = load i64, i64* %__edi, align 8, !dbg !793
  store i64 %0, i64* %__edi, align 8, !dbg !793
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !795, metadata !DIExpression()), !dbg !793
  %1 = load i64, i64* %__esi, align 8, !dbg !793
  store i64 %1, i64* %__esi, align 8, !dbg !793
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !796, metadata !DIExpression()), !dbg !793
  %2 = load i64, i64* %__edx, align 8, !dbg !793
  store i64 %2, i64* %__edx, align 8, !dbg !793
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !797, metadata !DIExpression()), !dbg !793
  %3 = load i64, i64* %__ecx, align 8, !dbg !793
  store i64 %3, i64* %__ecx, align 8, !dbg !793
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !798, metadata !DIExpression()), !dbg !793
  %4 = load i64, i64* %__eax, align 8, !dbg !793
  store i64 %4, i64* %__eax, align 8, !dbg !793
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !793
  %6 = call i64 @llvm.read_register.i64(metadata !53), !dbg !799
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !799, !srcloc !802
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !799
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !799
  store i64 %asmresult, i64* %__eax, align 8, !dbg !799
  call void @llvm.write_register.i64(metadata !53, i64 %asmresult1), !dbg !799
  %8 = load i64, i64* %__eax, align 8, !dbg !799
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !803, metadata !DIExpression()), !dbg !805
  store i64 -1, i64* %__mask, align 8, !dbg !805
  %9 = load i64, i64* %__mask, align 8, !dbg !805
  store i64 %9, i64* %tmp, align 8, !dbg !805
  %10 = load i64, i64* %tmp, align 8, !dbg !805
  %and = and i64 %8, %10, !dbg !799
  store i64 %and, i64* %__ret, align 8, !dbg !799
  %11 = load i64, i64* %__ret, align 8, !dbg !793
  store i64 %11, i64* %tmp2, align 8, !dbg !806
  %12 = load i64, i64* %tmp2, align 8, !dbg !793
  ret i64 %12, !dbg !807
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !808 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !810, metadata !DIExpression()), !dbg !815
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !817, metadata !DIExpression()), !dbg !818
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !819, metadata !DIExpression()), !dbg !820
  %0 = load i64, i64* %size.addr, align 8, !dbg !821
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !823
  br i1 %1, label %if.then, label %if.end447, !dbg !824

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !825
  %tobool = icmp ne i64 %2, 0, !dbg !825
  br i1 %tobool, label %if.end, label %if.then1, !dbg !828

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !829
  br label %return, !dbg !829

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !830
  %cmp = icmp ult i64 %3, 4096, !dbg !832
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !833

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !834
  br label %return, !dbg !834

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub = sub i64 %4, 1, !dbg !835
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !835
  br i1 %5, label %cond.true, label %cond.false442, !dbg !835

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub4 = sub i64 %6, 1, !dbg !835
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !835
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !835

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub6 = sub i64 %8, 1, !dbg !835
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !835
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !835

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !835

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub9 = sub i64 %9, 1, !dbg !835
  %and = and i64 %sub9, -9223372036854775808, !dbg !835
  %tobool10 = icmp ne i64 %and, 0, !dbg !835
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !835

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !835

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub13 = sub i64 %10, 1, !dbg !835
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !835
  %tobool15 = icmp ne i64 %and14, 0, !dbg !835
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !835

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !835

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub18 = sub i64 %11, 1, !dbg !835
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !835
  %tobool20 = icmp ne i64 %and19, 0, !dbg !835
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !835

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !835

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub23 = sub i64 %12, 1, !dbg !835
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !835
  %tobool25 = icmp ne i64 %and24, 0, !dbg !835
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !835

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !835

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub28 = sub i64 %13, 1, !dbg !835
  %and29 = and i64 %sub28, 576460752303423488, !dbg !835
  %tobool30 = icmp ne i64 %and29, 0, !dbg !835
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !835

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !835

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub33 = sub i64 %14, 1, !dbg !835
  %and34 = and i64 %sub33, 288230376151711744, !dbg !835
  %tobool35 = icmp ne i64 %and34, 0, !dbg !835
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !835

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !835

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub38 = sub i64 %15, 1, !dbg !835
  %and39 = and i64 %sub38, 144115188075855872, !dbg !835
  %tobool40 = icmp ne i64 %and39, 0, !dbg !835
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !835

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !835

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub43 = sub i64 %16, 1, !dbg !835
  %and44 = and i64 %sub43, 72057594037927936, !dbg !835
  %tobool45 = icmp ne i64 %and44, 0, !dbg !835
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !835

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !835

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub48 = sub i64 %17, 1, !dbg !835
  %and49 = and i64 %sub48, 36028797018963968, !dbg !835
  %tobool50 = icmp ne i64 %and49, 0, !dbg !835
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !835

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !835

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub53 = sub i64 %18, 1, !dbg !835
  %and54 = and i64 %sub53, 18014398509481984, !dbg !835
  %tobool55 = icmp ne i64 %and54, 0, !dbg !835
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !835

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !835

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub58 = sub i64 %19, 1, !dbg !835
  %and59 = and i64 %sub58, 9007199254740992, !dbg !835
  %tobool60 = icmp ne i64 %and59, 0, !dbg !835
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !835

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !835

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub63 = sub i64 %20, 1, !dbg !835
  %and64 = and i64 %sub63, 4503599627370496, !dbg !835
  %tobool65 = icmp ne i64 %and64, 0, !dbg !835
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !835

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !835

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub68 = sub i64 %21, 1, !dbg !835
  %and69 = and i64 %sub68, 2251799813685248, !dbg !835
  %tobool70 = icmp ne i64 %and69, 0, !dbg !835
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !835

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !835

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub73 = sub i64 %22, 1, !dbg !835
  %and74 = and i64 %sub73, 1125899906842624, !dbg !835
  %tobool75 = icmp ne i64 %and74, 0, !dbg !835
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !835

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !835

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub78 = sub i64 %23, 1, !dbg !835
  %and79 = and i64 %sub78, 562949953421312, !dbg !835
  %tobool80 = icmp ne i64 %and79, 0, !dbg !835
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !835

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !835

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub83 = sub i64 %24, 1, !dbg !835
  %and84 = and i64 %sub83, 281474976710656, !dbg !835
  %tobool85 = icmp ne i64 %and84, 0, !dbg !835
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !835

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !835

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub88 = sub i64 %25, 1, !dbg !835
  %and89 = and i64 %sub88, 140737488355328, !dbg !835
  %tobool90 = icmp ne i64 %and89, 0, !dbg !835
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !835

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !835

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub93 = sub i64 %26, 1, !dbg !835
  %and94 = and i64 %sub93, 70368744177664, !dbg !835
  %tobool95 = icmp ne i64 %and94, 0, !dbg !835
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !835

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !835

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub98 = sub i64 %27, 1, !dbg !835
  %and99 = and i64 %sub98, 35184372088832, !dbg !835
  %tobool100 = icmp ne i64 %and99, 0, !dbg !835
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !835

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !835

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub103 = sub i64 %28, 1, !dbg !835
  %and104 = and i64 %sub103, 17592186044416, !dbg !835
  %tobool105 = icmp ne i64 %and104, 0, !dbg !835
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !835

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !835

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub108 = sub i64 %29, 1, !dbg !835
  %and109 = and i64 %sub108, 8796093022208, !dbg !835
  %tobool110 = icmp ne i64 %and109, 0, !dbg !835
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !835

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !835

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub113 = sub i64 %30, 1, !dbg !835
  %and114 = and i64 %sub113, 4398046511104, !dbg !835
  %tobool115 = icmp ne i64 %and114, 0, !dbg !835
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !835

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !835

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub118 = sub i64 %31, 1, !dbg !835
  %and119 = and i64 %sub118, 2199023255552, !dbg !835
  %tobool120 = icmp ne i64 %and119, 0, !dbg !835
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !835

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !835

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub123 = sub i64 %32, 1, !dbg !835
  %and124 = and i64 %sub123, 1099511627776, !dbg !835
  %tobool125 = icmp ne i64 %and124, 0, !dbg !835
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !835

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !835

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub128 = sub i64 %33, 1, !dbg !835
  %and129 = and i64 %sub128, 549755813888, !dbg !835
  %tobool130 = icmp ne i64 %and129, 0, !dbg !835
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !835

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !835

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub133 = sub i64 %34, 1, !dbg !835
  %and134 = and i64 %sub133, 274877906944, !dbg !835
  %tobool135 = icmp ne i64 %and134, 0, !dbg !835
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !835

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !835

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub138 = sub i64 %35, 1, !dbg !835
  %and139 = and i64 %sub138, 137438953472, !dbg !835
  %tobool140 = icmp ne i64 %and139, 0, !dbg !835
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !835

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !835

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub143 = sub i64 %36, 1, !dbg !835
  %and144 = and i64 %sub143, 68719476736, !dbg !835
  %tobool145 = icmp ne i64 %and144, 0, !dbg !835
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !835

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !835

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub148 = sub i64 %37, 1, !dbg !835
  %and149 = and i64 %sub148, 34359738368, !dbg !835
  %tobool150 = icmp ne i64 %and149, 0, !dbg !835
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !835

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !835

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub153 = sub i64 %38, 1, !dbg !835
  %and154 = and i64 %sub153, 17179869184, !dbg !835
  %tobool155 = icmp ne i64 %and154, 0, !dbg !835
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !835

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !835

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub158 = sub i64 %39, 1, !dbg !835
  %and159 = and i64 %sub158, 8589934592, !dbg !835
  %tobool160 = icmp ne i64 %and159, 0, !dbg !835
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !835

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !835

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub163 = sub i64 %40, 1, !dbg !835
  %and164 = and i64 %sub163, 4294967296, !dbg !835
  %tobool165 = icmp ne i64 %and164, 0, !dbg !835
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !835

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !835

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub168 = sub i64 %41, 1, !dbg !835
  %and169 = and i64 %sub168, 2147483648, !dbg !835
  %tobool170 = icmp ne i64 %and169, 0, !dbg !835
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !835

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !835

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub173 = sub i64 %42, 1, !dbg !835
  %and174 = and i64 %sub173, 1073741824, !dbg !835
  %tobool175 = icmp ne i64 %and174, 0, !dbg !835
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !835

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !835

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub178 = sub i64 %43, 1, !dbg !835
  %and179 = and i64 %sub178, 536870912, !dbg !835
  %tobool180 = icmp ne i64 %and179, 0, !dbg !835
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !835

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !835

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub183 = sub i64 %44, 1, !dbg !835
  %and184 = and i64 %sub183, 268435456, !dbg !835
  %tobool185 = icmp ne i64 %and184, 0, !dbg !835
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !835

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !835

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub188 = sub i64 %45, 1, !dbg !835
  %and189 = and i64 %sub188, 134217728, !dbg !835
  %tobool190 = icmp ne i64 %and189, 0, !dbg !835
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !835

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !835

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub193 = sub i64 %46, 1, !dbg !835
  %and194 = and i64 %sub193, 67108864, !dbg !835
  %tobool195 = icmp ne i64 %and194, 0, !dbg !835
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !835

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !835

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub198 = sub i64 %47, 1, !dbg !835
  %and199 = and i64 %sub198, 33554432, !dbg !835
  %tobool200 = icmp ne i64 %and199, 0, !dbg !835
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !835

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !835

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub203 = sub i64 %48, 1, !dbg !835
  %and204 = and i64 %sub203, 16777216, !dbg !835
  %tobool205 = icmp ne i64 %and204, 0, !dbg !835
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !835

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !835

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub208 = sub i64 %49, 1, !dbg !835
  %and209 = and i64 %sub208, 8388608, !dbg !835
  %tobool210 = icmp ne i64 %and209, 0, !dbg !835
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !835

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !835

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub213 = sub i64 %50, 1, !dbg !835
  %and214 = and i64 %sub213, 4194304, !dbg !835
  %tobool215 = icmp ne i64 %and214, 0, !dbg !835
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !835

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !835

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub218 = sub i64 %51, 1, !dbg !835
  %and219 = and i64 %sub218, 2097152, !dbg !835
  %tobool220 = icmp ne i64 %and219, 0, !dbg !835
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !835

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !835

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub223 = sub i64 %52, 1, !dbg !835
  %and224 = and i64 %sub223, 1048576, !dbg !835
  %tobool225 = icmp ne i64 %and224, 0, !dbg !835
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !835

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !835

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub228 = sub i64 %53, 1, !dbg !835
  %and229 = and i64 %sub228, 524288, !dbg !835
  %tobool230 = icmp ne i64 %and229, 0, !dbg !835
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !835

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !835

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub233 = sub i64 %54, 1, !dbg !835
  %and234 = and i64 %sub233, 262144, !dbg !835
  %tobool235 = icmp ne i64 %and234, 0, !dbg !835
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !835

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !835

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub238 = sub i64 %55, 1, !dbg !835
  %and239 = and i64 %sub238, 131072, !dbg !835
  %tobool240 = icmp ne i64 %and239, 0, !dbg !835
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !835

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !835

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub243 = sub i64 %56, 1, !dbg !835
  %and244 = and i64 %sub243, 65536, !dbg !835
  %tobool245 = icmp ne i64 %and244, 0, !dbg !835
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !835

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !835

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub248 = sub i64 %57, 1, !dbg !835
  %and249 = and i64 %sub248, 32768, !dbg !835
  %tobool250 = icmp ne i64 %and249, 0, !dbg !835
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !835

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !835

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub253 = sub i64 %58, 1, !dbg !835
  %and254 = and i64 %sub253, 16384, !dbg !835
  %tobool255 = icmp ne i64 %and254, 0, !dbg !835
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !835

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !835

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub258 = sub i64 %59, 1, !dbg !835
  %and259 = and i64 %sub258, 8192, !dbg !835
  %tobool260 = icmp ne i64 %and259, 0, !dbg !835
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !835

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !835

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub263 = sub i64 %60, 1, !dbg !835
  %and264 = and i64 %sub263, 4096, !dbg !835
  %tobool265 = icmp ne i64 %and264, 0, !dbg !835
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !835

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !835

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub268 = sub i64 %61, 1, !dbg !835
  %and269 = and i64 %sub268, 2048, !dbg !835
  %tobool270 = icmp ne i64 %and269, 0, !dbg !835
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !835

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !835

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub273 = sub i64 %62, 1, !dbg !835
  %and274 = and i64 %sub273, 1024, !dbg !835
  %tobool275 = icmp ne i64 %and274, 0, !dbg !835
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !835

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !835

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub278 = sub i64 %63, 1, !dbg !835
  %and279 = and i64 %sub278, 512, !dbg !835
  %tobool280 = icmp ne i64 %and279, 0, !dbg !835
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !835

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !835

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub283 = sub i64 %64, 1, !dbg !835
  %and284 = and i64 %sub283, 256, !dbg !835
  %tobool285 = icmp ne i64 %and284, 0, !dbg !835
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !835

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !835

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub288 = sub i64 %65, 1, !dbg !835
  %and289 = and i64 %sub288, 128, !dbg !835
  %tobool290 = icmp ne i64 %and289, 0, !dbg !835
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !835

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !835

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub293 = sub i64 %66, 1, !dbg !835
  %and294 = and i64 %sub293, 64, !dbg !835
  %tobool295 = icmp ne i64 %and294, 0, !dbg !835
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !835

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !835

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub298 = sub i64 %67, 1, !dbg !835
  %and299 = and i64 %sub298, 32, !dbg !835
  %tobool300 = icmp ne i64 %and299, 0, !dbg !835
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !835

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !835

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub303 = sub i64 %68, 1, !dbg !835
  %and304 = and i64 %sub303, 16, !dbg !835
  %tobool305 = icmp ne i64 %and304, 0, !dbg !835
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !835

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !835

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub308 = sub i64 %69, 1, !dbg !835
  %and309 = and i64 %sub308, 8, !dbg !835
  %tobool310 = icmp ne i64 %and309, 0, !dbg !835
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !835

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !835

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub313 = sub i64 %70, 1, !dbg !835
  %and314 = and i64 %sub313, 4, !dbg !835
  %tobool315 = icmp ne i64 %and314, 0, !dbg !835
  %71 = zext i1 %tobool315 to i64, !dbg !835
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !835
  br label %cond.end, !dbg !835

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !835
  br label %cond.end317, !dbg !835

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !835
  br label %cond.end319, !dbg !835

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !835
  br label %cond.end321, !dbg !835

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !835
  br label %cond.end323, !dbg !835

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !835
  br label %cond.end325, !dbg !835

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !835
  br label %cond.end327, !dbg !835

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !835
  br label %cond.end329, !dbg !835

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !835
  br label %cond.end331, !dbg !835

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !835
  br label %cond.end333, !dbg !835

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !835
  br label %cond.end335, !dbg !835

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !835
  br label %cond.end337, !dbg !835

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !835
  br label %cond.end339, !dbg !835

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !835
  br label %cond.end341, !dbg !835

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !835
  br label %cond.end343, !dbg !835

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !835
  br label %cond.end345, !dbg !835

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !835
  br label %cond.end347, !dbg !835

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !835
  br label %cond.end349, !dbg !835

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !835
  br label %cond.end351, !dbg !835

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !835
  br label %cond.end353, !dbg !835

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !835
  br label %cond.end355, !dbg !835

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !835
  br label %cond.end357, !dbg !835

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !835
  br label %cond.end359, !dbg !835

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !835
  br label %cond.end361, !dbg !835

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !835
  br label %cond.end363, !dbg !835

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !835
  br label %cond.end365, !dbg !835

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !835
  br label %cond.end367, !dbg !835

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !835
  br label %cond.end369, !dbg !835

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !835
  br label %cond.end371, !dbg !835

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !835
  br label %cond.end373, !dbg !835

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !835
  br label %cond.end375, !dbg !835

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !835
  br label %cond.end377, !dbg !835

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !835
  br label %cond.end379, !dbg !835

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !835
  br label %cond.end381, !dbg !835

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !835
  br label %cond.end383, !dbg !835

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !835
  br label %cond.end385, !dbg !835

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !835
  br label %cond.end387, !dbg !835

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !835
  br label %cond.end389, !dbg !835

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !835
  br label %cond.end391, !dbg !835

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !835
  br label %cond.end393, !dbg !835

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !835
  br label %cond.end395, !dbg !835

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !835
  br label %cond.end397, !dbg !835

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !835
  br label %cond.end399, !dbg !835

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !835
  br label %cond.end401, !dbg !835

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !835
  br label %cond.end403, !dbg !835

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !835
  br label %cond.end405, !dbg !835

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !835
  br label %cond.end407, !dbg !835

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !835
  br label %cond.end409, !dbg !835

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !835
  br label %cond.end411, !dbg !835

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !835
  br label %cond.end413, !dbg !835

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !835
  br label %cond.end415, !dbg !835

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !835
  br label %cond.end417, !dbg !835

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !835
  br label %cond.end419, !dbg !835

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !835
  br label %cond.end421, !dbg !835

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !835
  br label %cond.end423, !dbg !835

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !835
  br label %cond.end425, !dbg !835

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !835
  br label %cond.end427, !dbg !835

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !835
  br label %cond.end429, !dbg !835

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !835
  br label %cond.end431, !dbg !835

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !835
  br label %cond.end433, !dbg !835

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !835
  br label %cond.end435, !dbg !835

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !835
  br label %cond.end437, !dbg !835

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !835
  br label %cond.end440, !dbg !835

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !835

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !835
  br label %cond.end444, !dbg !835

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !835
  %sub443 = sub i64 %72, 1, !dbg !835
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !835
  br label %cond.end444, !dbg !835

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !835
  %sub446 = sub i32 %cond445, 12, !dbg !836
  %add = add i32 %sub446, 1, !dbg !837
  store i32 %add, i32* %retval, align 4, !dbg !838
  br label %return, !dbg !838

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !839
  %dec = add i64 %73, -1, !dbg !839
  store i64 %dec, i64* %size.addr, align 8, !dbg !839
  %74 = load i64, i64* %size.addr, align 8, !dbg !840
  %shr = lshr i64 %74, 12, !dbg !840
  store i64 %shr, i64* %size.addr, align 8, !dbg !840
  %75 = load i64, i64* %size.addr, align 8, !dbg !841
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !818
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !842
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !843
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !842, !srcloc !844
  store i32 %78, i32* %bitpos.i, align 4, !dbg !842
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !845
  %add.i = add i32 %79, 1, !dbg !846
  store i32 %add.i, i32* %retval, align 4, !dbg !847
  br label %return, !dbg !847

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !848
  ret i32 %80, !dbg !848
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !849 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !810, metadata !DIExpression()), !dbg !853
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !817, metadata !DIExpression()), !dbg !855
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !856, metadata !DIExpression()), !dbg !857
  %0 = load i64, i64* %n.addr, align 8, !dbg !858
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !855
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !859
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !860
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !859, !srcloc !844
  store i32 %3, i32* %bitpos.i, align 4, !dbg !859
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !861
  %add.i = add i32 %4, 1, !dbg !862
  %sub = sub i32 %add.i, 1, !dbg !863
  ret i32 %sub, !dbg !864
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !865 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !871, metadata !DIExpression()), !dbg !872
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !873, metadata !DIExpression()), !dbg !874
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !875, metadata !DIExpression()), !dbg !876
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !877, metadata !DIExpression()), !dbg !878
  %0 = load i8*, i8** %object.addr, align 8, !dbg !879
  ret i8* %0, !dbg !880
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
!llvm.named.register.rsp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !49, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !48, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exregion.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !20, !21, !24, !16, !25, !29, !33, !34, !26, !30, !35, !36, !43, !45, !47}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !16)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !19, line: 27, baseType: !7)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !17, line: 23, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !19, line: 31, baseType: !23)
!23 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !15, line: 127, baseType: !21)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !32)
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !15, line: 128, baseType: !21)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_id", file: !15, line: 1197, size: 64, elements: !38)
!38 = !{!39, !40, !41, !42}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !37, file: !15, line: 1198, baseType: !30, size: 16)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !37, file: !15, line: 1199, baseType: !30, size: 16, offset: 16)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !37, file: !15, line: 1200, baseType: !30, size: 16, offset: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !37, file: !15, line: 1201, baseType: !30, size: 16, offset: 48)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !46, line: 148, baseType: !7)
!46 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!47 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!48 = !{!0}
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 72, elements: !51)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!51 = !{!52}
!52 = !DISubrange(count: 9)
!53 = !{!"rsp"}
!54 = !{i32 7, !"Dwarf Version", i32 4}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"Code Model", i32 2}
!58 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!59 = distinct !DISubprogram(name: "acpi_ex_system_memory_space_handler", scope: !3, file: !3, line: 35, type: !60, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !63)
!60 = !DISubroutineType(types: !61)
!61 = !{!14, !16, !62, !16, !34, !20, !20}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !15, line: 129, baseType: !21)
!63 = !{}
!64 = !DILocalVariable(name: "function", arg: 1, scope: !59, file: !3, line: 35, type: !16)
!65 = !DILocation(line: 35, column: 41, scope: !59)
!66 = !DILocalVariable(name: "address", arg: 2, scope: !59, file: !3, line: 36, type: !62)
!67 = !DILocation(line: 36, column: 31, scope: !59)
!68 = !DILocalVariable(name: "bit_width", arg: 3, scope: !59, file: !3, line: 37, type: !16)
!69 = !DILocation(line: 37, column: 13, scope: !59)
!70 = !DILocalVariable(name: "value", arg: 4, scope: !59, file: !3, line: 38, type: !34)
!71 = !DILocation(line: 38, column: 14, scope: !59)
!72 = !DILocalVariable(name: "handler_context", arg: 5, scope: !59, file: !3, line: 39, type: !20)
!73 = !DILocation(line: 39, column: 15, scope: !59)
!74 = !DILocalVariable(name: "region_context", arg: 6, scope: !59, file: !3, line: 39, type: !20)
!75 = !DILocation(line: 39, column: 38, scope: !59)
!76 = !DILocalVariable(name: "status", scope: !59, file: !3, line: 41, type: !14)
!77 = !DILocation(line: 41, column: 14, scope: !59)
!78 = !DILocalVariable(name: "logical_addr_ptr", scope: !59, file: !3, line: 42, type: !20)
!79 = !DILocation(line: 42, column: 8, scope: !59)
!80 = !DILocalVariable(name: "mem_info", scope: !59, file: !3, line: 43, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_mem_space_context", file: !15, line: 1211, size: 256, elements: !83)
!83 = !{!84, !85, !86, !94}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !82, file: !15, line: 1212, baseType: !16, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !82, file: !15, line: 1213, baseType: !62, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "cur_mm", scope: !82, file: !15, line: 1214, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_mem_mapping", file: !15, line: 1204, size: 256, elements: !89)
!89 = !{!90, !91, !92, !93}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "physical_address", scope: !88, file: !15, line: 1205, baseType: !62, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "logical_address", scope: !88, file: !15, line: 1206, baseType: !25, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !88, file: !15, line: 1207, baseType: !24, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next_mm", scope: !88, file: !15, line: 1208, baseType: !87, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "first_mm", scope: !82, file: !15, line: 1215, baseType: !87, size: 64, offset: 192)
!95 = !DILocation(line: 43, column: 33, scope: !59)
!96 = !DILocation(line: 43, column: 44, scope: !59)
!97 = !DILocalVariable(name: "mm", scope: !59, file: !3, line: 44, type: !87)
!98 = !DILocation(line: 44, column: 27, scope: !59)
!99 = !DILocation(line: 44, column: 32, scope: !59)
!100 = !DILocation(line: 44, column: 42, scope: !59)
!101 = !DILocalVariable(name: "length", scope: !59, file: !3, line: 45, type: !16)
!102 = !DILocation(line: 45, column: 6, scope: !59)
!103 = !DILocalVariable(name: "map_length", scope: !59, file: !3, line: 46, type: !24)
!104 = !DILocation(line: 46, column: 12, scope: !59)
!105 = !DILocalVariable(name: "page_boundary_map_length", scope: !59, file: !3, line: 47, type: !24)
!106 = !DILocation(line: 47, column: 12, scope: !59)
!107 = !DILocation(line: 56, column: 10, scope: !59)
!108 = !DILocation(line: 56, column: 2, scope: !59)
!109 = !DILocation(line: 59, column: 10, scope: !110)
!110 = distinct !DILexicalBlock(scope: !59, file: !3, line: 56, column: 21)
!111 = !DILocation(line: 60, column: 3, scope: !110)
!112 = !DILocation(line: 64, column: 10, scope: !110)
!113 = !DILocation(line: 65, column: 3, scope: !110)
!114 = !DILocation(line: 69, column: 10, scope: !110)
!115 = !DILocation(line: 70, column: 3, scope: !110)
!116 = !DILocation(line: 74, column: 10, scope: !110)
!117 = !DILocation(line: 75, column: 3, scope: !110)
!118 = !DILocation(line: 79, column: 3, scope: !110)
!119 = !DILocation(line: 81, column: 3, scope: !110)
!120 = !DILocation(line: 100, column: 7, scope: !121)
!121 = distinct !DILexicalBlock(scope: !59, file: !3, line: 100, column: 6)
!122 = !DILocation(line: 100, column: 10, scope: !121)
!123 = !DILocation(line: 100, column: 14, scope: !121)
!124 = !DILocation(line: 100, column: 24, scope: !121)
!125 = !DILocation(line: 100, column: 28, scope: !121)
!126 = !DILocation(line: 100, column: 22, scope: !121)
!127 = !DILocation(line: 100, column: 46, scope: !121)
!128 = !DILocation(line: 101, column: 13, scope: !121)
!129 = !DILocation(line: 101, column: 23, scope: !121)
!130 = !DILocation(line: 101, column: 21, scope: !121)
!131 = !DILocation(line: 101, column: 38, scope: !121)
!132 = !DILocation(line: 101, column: 42, scope: !121)
!133 = !DILocation(line: 101, column: 61, scope: !121)
!134 = !DILocation(line: 101, column: 65, scope: !121)
!135 = !DILocation(line: 101, column: 59, scope: !121)
!136 = !DILocation(line: 101, column: 30, scope: !121)
!137 = !DILocation(line: 100, column: 6, scope: !59)
!138 = !DILocation(line: 109, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !3, line: 109, column: 3)
!140 = distinct !DILexicalBlock(scope: !121, file: !3, line: 101, column: 74)
!141 = !DILocation(line: 109, column: 23, scope: !139)
!142 = !DILocation(line: 109, column: 11, scope: !139)
!143 = !DILocation(line: 109, column: 8, scope: !139)
!144 = !DILocation(line: 109, column: 33, scope: !145)
!145 = distinct !DILexicalBlock(scope: !139, file: !3, line: 109, column: 3)
!146 = !DILocation(line: 109, column: 3, scope: !139)
!147 = !DILocation(line: 110, column: 8, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 110, column: 8)
!149 = distinct !DILexicalBlock(scope: !145, file: !3, line: 109, column: 55)
!150 = !DILocation(line: 110, column: 14, scope: !148)
!151 = !DILocation(line: 110, column: 24, scope: !148)
!152 = !DILocation(line: 110, column: 11, scope: !148)
!153 = !DILocation(line: 110, column: 8, scope: !149)
!154 = !DILocation(line: 111, column: 5, scope: !148)
!155 = !DILocation(line: 113, column: 8, scope: !156)
!156 = distinct !DILexicalBlock(scope: !149, file: !3, line: 113, column: 8)
!157 = !DILocation(line: 113, column: 18, scope: !156)
!158 = !DILocation(line: 113, column: 22, scope: !156)
!159 = !DILocation(line: 113, column: 16, scope: !156)
!160 = !DILocation(line: 113, column: 8, scope: !149)
!161 = !DILocation(line: 114, column: 5, scope: !156)
!162 = !DILocation(line: 116, column: 14, scope: !163)
!163 = distinct !DILexicalBlock(scope: !149, file: !3, line: 116, column: 8)
!164 = !DILocation(line: 116, column: 24, scope: !163)
!165 = !DILocation(line: 116, column: 22, scope: !163)
!166 = !DILocation(line: 117, column: 12, scope: !163)
!167 = !DILocation(line: 117, column: 16, scope: !163)
!168 = !DILocation(line: 117, column: 35, scope: !163)
!169 = !DILocation(line: 117, column: 39, scope: !163)
!170 = !DILocation(line: 117, column: 33, scope: !163)
!171 = !DILocation(line: 116, column: 31, scope: !163)
!172 = !DILocation(line: 116, column: 8, scope: !149)
!173 = !DILocation(line: 118, column: 5, scope: !163)
!174 = !DILocation(line: 120, column: 23, scope: !149)
!175 = !DILocation(line: 120, column: 4, scope: !149)
!176 = !DILocation(line: 120, column: 14, scope: !149)
!177 = !DILocation(line: 120, column: 21, scope: !149)
!178 = !DILocation(line: 121, column: 4, scope: !149)
!179 = !DILocation(line: 109, column: 42, scope: !145)
!180 = !DILocation(line: 109, column: 46, scope: !145)
!181 = !DILocation(line: 109, column: 40, scope: !145)
!182 = !DILocation(line: 109, column: 3, scope: !145)
!183 = distinct !{!183, !146, !184}
!184 = !DILocation(line: 122, column: 3, scope: !139)
!185 = !DILocation(line: 125, column: 8, scope: !140)
!186 = !DILocation(line: 125, column: 6, scope: !140)
!187 = !DILocation(line: 126, column: 8, scope: !188)
!188 = distinct !DILexicalBlock(scope: !140, file: !3, line: 126, column: 7)
!189 = !DILocation(line: 126, column: 7, scope: !140)
!190 = !DILocation(line: 127, column: 4, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 126, column: 12)
!192 = !DILocation(line: 130, column: 4, scope: !191)
!193 = !DILocation(line: 139, column: 9, scope: !140)
!194 = !DILocation(line: 139, column: 19, scope: !140)
!195 = !DILocation(line: 139, column: 29, scope: !140)
!196 = !DILocation(line: 139, column: 39, scope: !140)
!197 = !DILocation(line: 139, column: 27, scope: !140)
!198 = !DILocation(line: 139, column: 49, scope: !140)
!199 = !DILocation(line: 139, column: 47, scope: !140)
!200 = !DILocation(line: 138, column: 14, scope: !140)
!201 = !DILocation(line: 153, column: 8, scope: !140)
!202 = !DILocation(line: 153, column: 57, scope: !140)
!203 = !DILocation(line: 153, column: 55, scope: !140)
!204 = !DILocation(line: 152, column: 28, scope: !140)
!205 = !DILocation(line: 154, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !140, file: !3, line: 154, column: 7)
!207 = !DILocation(line: 154, column: 32, scope: !206)
!208 = !DILocation(line: 154, column: 7, scope: !140)
!209 = !DILocation(line: 155, column: 29, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !3, line: 154, column: 38)
!211 = !DILocation(line: 156, column: 3, scope: !210)
!212 = !DILocation(line: 158, column: 7, scope: !213)
!213 = distinct !DILexicalBlock(scope: !140, file: !3, line: 158, column: 7)
!214 = !DILocation(line: 158, column: 20, scope: !213)
!215 = !DILocation(line: 158, column: 18, scope: !213)
!216 = !DILocation(line: 158, column: 7, scope: !140)
!217 = !DILocation(line: 159, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !3, line: 158, column: 46)
!219 = !DILocation(line: 159, column: 15, scope: !218)
!220 = !DILocation(line: 160, column: 3, scope: !218)
!221 = !DILocation(line: 164, column: 41, scope: !140)
!222 = !DILocation(line: 164, column: 50, scope: !140)
!223 = !DILocation(line: 164, column: 22, scope: !140)
!224 = !DILocation(line: 164, column: 20, scope: !140)
!225 = !DILocation(line: 165, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !140, file: !3, line: 165, column: 7)
!227 = !DILocation(line: 165, column: 7, scope: !140)
!228 = !DILocation(line: 166, column: 4, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 165, column: 26)
!230 = !DILocation(line: 170, column: 4, scope: !229)
!231 = !DILocation(line: 171, column: 4, scope: !229)
!232 = !DILocation(line: 176, column: 25, scope: !140)
!233 = !DILocation(line: 176, column: 3, scope: !140)
!234 = !DILocation(line: 176, column: 7, scope: !140)
!235 = !DILocation(line: 176, column: 23, scope: !140)
!236 = !DILocation(line: 177, column: 26, scope: !140)
!237 = !DILocation(line: 177, column: 3, scope: !140)
!238 = !DILocation(line: 177, column: 7, scope: !140)
!239 = !DILocation(line: 177, column: 24, scope: !140)
!240 = !DILocation(line: 178, column: 16, scope: !140)
!241 = !DILocation(line: 178, column: 3, scope: !140)
!242 = !DILocation(line: 178, column: 7, scope: !140)
!243 = !DILocation(line: 178, column: 14, scope: !140)
!244 = !DILocation(line: 184, column: 17, scope: !140)
!245 = !DILocation(line: 184, column: 27, scope: !140)
!246 = !DILocation(line: 184, column: 3, scope: !140)
!247 = !DILocation(line: 184, column: 7, scope: !140)
!248 = !DILocation(line: 184, column: 15, scope: !140)
!249 = !DILocation(line: 185, column: 24, scope: !140)
!250 = !DILocation(line: 185, column: 3, scope: !140)
!251 = !DILocation(line: 185, column: 13, scope: !140)
!252 = !DILocation(line: 185, column: 22, scope: !140)
!253 = !DILocation(line: 187, column: 22, scope: !140)
!254 = !DILocation(line: 187, column: 3, scope: !140)
!255 = !DILocation(line: 187, column: 13, scope: !140)
!256 = !DILocation(line: 187, column: 20, scope: !140)
!257 = !DILocation(line: 188, column: 2, scope: !140)
!258 = !DILocation(line: 101, column: 71, scope: !121)
!259 = !DILabel(scope: !59, name: "access", file: !3, line: 190)
!260 = !DILocation(line: 190, column: 1, scope: !59)
!261 = !DILocation(line: 195, column: 21, scope: !59)
!262 = !DILocation(line: 195, column: 25, scope: !59)
!263 = !DILocation(line: 196, column: 10, scope: !59)
!264 = !DILocation(line: 196, column: 26, scope: !59)
!265 = !DILocation(line: 196, column: 30, scope: !59)
!266 = !DILocation(line: 196, column: 18, scope: !59)
!267 = !DILocation(line: 195, column: 41, scope: !59)
!268 = !DILocation(line: 195, column: 19, scope: !59)
!269 = !DILocation(line: 210, column: 10, scope: !59)
!270 = !DILocation(line: 210, column: 2, scope: !59)
!271 = !DILocation(line: 213, column: 4, scope: !272)
!272 = distinct !DILexicalBlock(scope: !59, file: !3, line: 210, column: 20)
!273 = !DILocation(line: 213, column: 10, scope: !272)
!274 = !DILocation(line: 214, column: 11, scope: !272)
!275 = !DILocation(line: 214, column: 3, scope: !272)
!276 = !DILocation(line: 217, column: 18, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !3, line: 214, column: 22)
!278 = !DILocation(line: 217, column: 13, scope: !277)
!279 = !DILocation(line: 217, column: 5, scope: !277)
!280 = !DILocation(line: 217, column: 11, scope: !277)
!281 = !DILocation(line: 218, column: 4, scope: !277)
!282 = !DILocation(line: 222, column: 18, scope: !277)
!283 = !DILocation(line: 222, column: 13, scope: !277)
!284 = !DILocation(line: 222, column: 5, scope: !277)
!285 = !DILocation(line: 222, column: 11, scope: !277)
!286 = !DILocation(line: 223, column: 4, scope: !277)
!287 = !DILocation(line: 227, column: 18, scope: !277)
!288 = !DILocation(line: 227, column: 13, scope: !277)
!289 = !DILocation(line: 227, column: 5, scope: !277)
!290 = !DILocation(line: 227, column: 11, scope: !277)
!291 = !DILocation(line: 228, column: 4, scope: !277)
!292 = !DILocation(line: 232, column: 18, scope: !277)
!293 = !DILocation(line: 232, column: 5, scope: !277)
!294 = !DILocation(line: 232, column: 11, scope: !277)
!295 = !DILocation(line: 233, column: 4, scope: !277)
!296 = !DILocation(line: 239, column: 4, scope: !277)
!297 = !DILocation(line: 241, column: 3, scope: !272)
!298 = !DILocation(line: 245, column: 11, scope: !272)
!299 = !DILocation(line: 245, column: 3, scope: !272)
!300 = !DILocation(line: 248, column: 4, scope: !301)
!301 = distinct !DILexicalBlock(scope: !272, file: !3, line: 245, column: 22)
!302 = !DILocation(line: 249, column: 4, scope: !301)
!303 = !DILocation(line: 253, column: 4, scope: !301)
!304 = !DILocation(line: 254, column: 4, scope: !301)
!305 = !DILocation(line: 258, column: 4, scope: !301)
!306 = !DILocation(line: 259, column: 4, scope: !301)
!307 = !DILocation(line: 263, column: 4, scope: !301)
!308 = !DILocation(line: 264, column: 4, scope: !301)
!309 = !DILocation(line: 270, column: 4, scope: !301)
!310 = !DILocation(line: 272, column: 3, scope: !272)
!311 = !DILocation(line: 276, column: 10, scope: !272)
!312 = !DILocation(line: 277, column: 3, scope: !272)
!313 = !DILocation(line: 280, column: 2, scope: !59)
!314 = !DILocation(line: 281, column: 1, scope: !59)
!315 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !316, file: !316, line: 55, type: !317, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!316 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!317 = !DISubroutineType(types: !318)
!318 = !{!20, !24}
!319 = !DILocalVariable(name: "flags", arg: 1, scope: !320, file: !321, line: 162, type: !47)
!320 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !321, file: !321, line: 162, type: !322, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!321 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!322 = !DISubroutineType(types: !323)
!323 = !{!324, !47}
!324 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!325 = !DILocation(line: 162, column: 67, scope: !320, inlinedAt: !326)
!326 = distinct !DILocation(line: 57, column: 23, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !316, line: 57, column: 23)
!328 = distinct !DILexicalBlock(scope: !315, file: !316, line: 57, column: 23)
!329 = !DILocalVariable(name: "size", arg: 1, scope: !315, file: !316, line: 55, type: !24)
!330 = !DILocation(line: 55, column: 55, scope: !315)
!331 = !DILocation(line: 57, column: 17, scope: !315)
!332 = !DILocalVariable(name: "_flags", scope: !328, file: !316, line: 57, type: !47)
!333 = !DILocation(line: 57, column: 23, scope: !328)
!334 = !DILocalVariable(name: "__dummy", scope: !335, file: !316, line: 57, type: !47)
!335 = distinct !DILexicalBlock(scope: !336, file: !316, line: 57, column: 23)
!336 = distinct !DILexicalBlock(scope: !328, file: !316, line: 57, column: 23)
!337 = !DILocation(line: 57, column: 23, scope: !335)
!338 = !DILocalVariable(name: "__dummy2", scope: !335, file: !316, line: 57, type: !47)
!339 = !DILocation(line: 57, column: 23, scope: !336)
!340 = !DILocalVariable(name: "__dummy", scope: !341, file: !316, line: 57, type: !47)
!341 = distinct !DILexicalBlock(scope: !327, file: !316, line: 57, column: 23)
!342 = !DILocation(line: 57, column: 23, scope: !341)
!343 = !DILocalVariable(name: "__dummy2", scope: !341, file: !316, line: 57, type: !47)
!344 = !DILocation(line: 57, column: 23, scope: !327)
!345 = !DILocation(line: 164, column: 11, scope: !320, inlinedAt: !326)
!346 = !DILocation(line: 164, column: 17, scope: !320, inlinedAt: !326)
!347 = !DILocation(line: 164, column: 9, scope: !320, inlinedAt: !326)
!348 = !DILocation(line: 57, column: 23, scope: !315)
!349 = !DILocation(line: 57, column: 9, scope: !315)
!350 = !DILocation(line: 57, column: 2, scope: !315)
!351 = distinct !DISubprogram(name: "acpi_os_free", scope: !316, file: !316, line: 60, type: !352, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !20}
!354 = !DILocalVariable(name: "memory", arg: 1, scope: !351, file: !316, line: 60, type: !20)
!355 = !DILocation(line: 60, column: 39, scope: !351)
!356 = !DILocation(line: 62, column: 8, scope: !351)
!357 = !DILocation(line: 62, column: 2, scope: !351)
!358 = !DILocation(line: 63, column: 1, scope: !351)
!359 = distinct !DISubprogram(name: "acpi_ex_system_io_space_handler", scope: !3, file: !3, line: 302, type: !60, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !63)
!360 = !DILocalVariable(name: "function", arg: 1, scope: !359, file: !3, line: 302, type: !16)
!361 = !DILocation(line: 302, column: 37, scope: !359)
!362 = !DILocalVariable(name: "address", arg: 2, scope: !359, file: !3, line: 303, type: !62)
!363 = !DILocation(line: 303, column: 27, scope: !359)
!364 = !DILocalVariable(name: "bit_width", arg: 3, scope: !359, file: !3, line: 304, type: !16)
!365 = !DILocation(line: 304, column: 9, scope: !359)
!366 = !DILocalVariable(name: "value", arg: 4, scope: !359, file: !3, line: 305, type: !34)
!367 = !DILocation(line: 305, column: 10, scope: !359)
!368 = !DILocalVariable(name: "handler_context", arg: 5, scope: !359, file: !3, line: 306, type: !20)
!369 = !DILocation(line: 306, column: 11, scope: !359)
!370 = !DILocalVariable(name: "region_context", arg: 6, scope: !359, file: !3, line: 306, type: !20)
!371 = !DILocation(line: 306, column: 34, scope: !359)
!372 = !DILocalVariable(name: "status", scope: !359, file: !3, line: 308, type: !14)
!373 = !DILocation(line: 308, column: 14, scope: !359)
!374 = !DILocalVariable(name: "value32", scope: !359, file: !3, line: 309, type: !16)
!375 = !DILocation(line: 309, column: 6, scope: !359)
!376 = !DILocation(line: 319, column: 10, scope: !359)
!377 = !DILocation(line: 319, column: 2, scope: !359)
!378 = !DILocation(line: 322, column: 47, scope: !379)
!379 = distinct !DILexicalBlock(scope: !359, file: !3, line: 319, column: 20)
!380 = !DILocation(line: 323, column: 19, scope: !379)
!381 = !DILocation(line: 322, column: 12, scope: !379)
!382 = !DILocation(line: 322, column: 10, scope: !379)
!383 = !DILocation(line: 324, column: 12, scope: !379)
!384 = !DILocation(line: 324, column: 4, scope: !379)
!385 = !DILocation(line: 324, column: 10, scope: !379)
!386 = !DILocation(line: 325, column: 3, scope: !379)
!387 = !DILocation(line: 329, column: 48, scope: !379)
!388 = !DILocation(line: 330, column: 16, scope: !379)
!389 = !DILocation(line: 330, column: 15, scope: !379)
!390 = !DILocation(line: 330, column: 10, scope: !379)
!391 = !DILocation(line: 330, column: 23, scope: !379)
!392 = !DILocation(line: 329, column: 12, scope: !379)
!393 = !DILocation(line: 329, column: 10, scope: !379)
!394 = !DILocation(line: 331, column: 3, scope: !379)
!395 = !DILocation(line: 335, column: 10, scope: !379)
!396 = !DILocation(line: 336, column: 3, scope: !379)
!397 = !DILocation(line: 339, column: 2, scope: !359)
!398 = distinct !DISubprogram(name: "acpi_ex_pci_config_space_handler", scope: !3, file: !3, line: 362, type: !60, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !63)
!399 = !DILocalVariable(name: "function", arg: 1, scope: !398, file: !3, line: 362, type: !16)
!400 = !DILocation(line: 362, column: 38, scope: !398)
!401 = !DILocalVariable(name: "address", arg: 2, scope: !398, file: !3, line: 363, type: !62)
!402 = !DILocation(line: 363, column: 28, scope: !398)
!403 = !DILocalVariable(name: "bit_width", arg: 3, scope: !398, file: !3, line: 364, type: !16)
!404 = !DILocation(line: 364, column: 10, scope: !398)
!405 = !DILocalVariable(name: "value", arg: 4, scope: !398, file: !3, line: 365, type: !34)
!406 = !DILocation(line: 365, column: 11, scope: !398)
!407 = !DILocalVariable(name: "handler_context", arg: 5, scope: !398, file: !3, line: 366, type: !20)
!408 = !DILocation(line: 366, column: 12, scope: !398)
!409 = !DILocalVariable(name: "region_context", arg: 6, scope: !398, file: !3, line: 366, type: !20)
!410 = !DILocation(line: 366, column: 35, scope: !398)
!411 = !DILocalVariable(name: "status", scope: !398, file: !3, line: 368, type: !14)
!412 = !DILocation(line: 368, column: 14, scope: !398)
!413 = !DILocalVariable(name: "pci_id", scope: !398, file: !3, line: 369, type: !36)
!414 = !DILocation(line: 369, column: 22, scope: !398)
!415 = !DILocalVariable(name: "pci_register", scope: !398, file: !3, line: 370, type: !30)
!416 = !DILocation(line: 370, column: 6, scope: !398)
!417 = !DILocation(line: 386, column: 33, scope: !398)
!418 = !DILocation(line: 386, column: 11, scope: !398)
!419 = !DILocation(line: 386, column: 9, scope: !398)
!420 = !DILocation(line: 387, column: 29, scope: !398)
!421 = !DILocation(line: 387, column: 23, scope: !398)
!422 = !DILocation(line: 387, column: 17, scope: !398)
!423 = !DILocation(line: 387, column: 15, scope: !398)
!424 = !DILocation(line: 395, column: 10, scope: !398)
!425 = !DILocation(line: 395, column: 2, scope: !398)
!426 = !DILocation(line: 398, column: 4, scope: !427)
!427 = distinct !DILexicalBlock(scope: !398, file: !3, line: 395, column: 20)
!428 = !DILocation(line: 398, column: 10, scope: !427)
!429 = !DILocation(line: 400, column: 38, scope: !427)
!430 = !DILocation(line: 400, column: 46, scope: !427)
!431 = !DILocation(line: 400, column: 60, scope: !427)
!432 = !DILocation(line: 401, column: 10, scope: !427)
!433 = !DILocation(line: 400, column: 7, scope: !427)
!434 = !DILocation(line: 399, column: 10, scope: !427)
!435 = !DILocation(line: 402, column: 3, scope: !427)
!436 = !DILocation(line: 407, column: 39, scope: !427)
!437 = !DILocation(line: 407, column: 47, scope: !427)
!438 = !DILocation(line: 408, column: 12, scope: !427)
!439 = !DILocation(line: 408, column: 11, scope: !427)
!440 = !DILocation(line: 408, column: 19, scope: !427)
!441 = !DILocation(line: 407, column: 7, scope: !427)
!442 = !DILocation(line: 406, column: 10, scope: !427)
!443 = !DILocation(line: 409, column: 3, scope: !427)
!444 = !DILocation(line: 413, column: 10, scope: !427)
!445 = !DILocation(line: 414, column: 3, scope: !427)
!446 = !DILocation(line: 417, column: 2, scope: !398)
!447 = distinct !DISubprogram(name: "acpi_ex_cmos_space_handler", scope: !3, file: !3, line: 440, type: !60, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !63)
!448 = !DILocalVariable(name: "function", arg: 1, scope: !447, file: !3, line: 440, type: !16)
!449 = !DILocation(line: 440, column: 32, scope: !447)
!450 = !DILocalVariable(name: "address", arg: 2, scope: !447, file: !3, line: 441, type: !62)
!451 = !DILocation(line: 441, column: 29, scope: !447)
!452 = !DILocalVariable(name: "bit_width", arg: 3, scope: !447, file: !3, line: 442, type: !16)
!453 = !DILocation(line: 442, column: 11, scope: !447)
!454 = !DILocalVariable(name: "value", arg: 4, scope: !447, file: !3, line: 443, type: !34)
!455 = !DILocation(line: 443, column: 12, scope: !447)
!456 = !DILocalVariable(name: "handler_context", arg: 5, scope: !447, file: !3, line: 444, type: !20)
!457 = !DILocation(line: 444, column: 13, scope: !447)
!458 = !DILocalVariable(name: "region_context", arg: 6, scope: !447, file: !3, line: 444, type: !20)
!459 = !DILocation(line: 444, column: 36, scope: !447)
!460 = !DILocalVariable(name: "status", scope: !447, file: !3, line: 446, type: !14)
!461 = !DILocation(line: 446, column: 14, scope: !447)
!462 = !DILocation(line: 450, column: 2, scope: !447)
!463 = distinct !DISubprogram(name: "acpi_ex_pci_bar_space_handler", scope: !3, file: !3, line: 473, type: !60, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !63)
!464 = !DILocalVariable(name: "function", arg: 1, scope: !463, file: !3, line: 473, type: !16)
!465 = !DILocation(line: 473, column: 35, scope: !463)
!466 = !DILocalVariable(name: "address", arg: 2, scope: !463, file: !3, line: 474, type: !62)
!467 = !DILocation(line: 474, column: 32, scope: !463)
!468 = !DILocalVariable(name: "bit_width", arg: 3, scope: !463, file: !3, line: 475, type: !16)
!469 = !DILocation(line: 475, column: 14, scope: !463)
!470 = !DILocalVariable(name: "value", arg: 4, scope: !463, file: !3, line: 476, type: !34)
!471 = !DILocation(line: 476, column: 15, scope: !463)
!472 = !DILocalVariable(name: "handler_context", arg: 5, scope: !463, file: !3, line: 477, type: !20)
!473 = !DILocation(line: 477, column: 16, scope: !463)
!474 = !DILocalVariable(name: "region_context", arg: 6, scope: !463, file: !3, line: 477, type: !20)
!475 = !DILocation(line: 477, column: 39, scope: !463)
!476 = !DILocalVariable(name: "status", scope: !463, file: !3, line: 479, type: !14)
!477 = !DILocation(line: 479, column: 14, scope: !463)
!478 = !DILocation(line: 483, column: 2, scope: !463)
!479 = distinct !DISubprogram(name: "acpi_ex_data_table_space_handler", scope: !3, file: !3, line: 506, type: !60, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !63)
!480 = !DILocalVariable(name: "function", arg: 1, scope: !479, file: !3, line: 506, type: !16)
!481 = !DILocation(line: 506, column: 38, scope: !479)
!482 = !DILocalVariable(name: "address", arg: 2, scope: !479, file: !3, line: 507, type: !62)
!483 = !DILocation(line: 507, column: 28, scope: !479)
!484 = !DILocalVariable(name: "bit_width", arg: 3, scope: !479, file: !3, line: 508, type: !16)
!485 = !DILocation(line: 508, column: 10, scope: !479)
!486 = !DILocalVariable(name: "value", arg: 4, scope: !479, file: !3, line: 509, type: !34)
!487 = !DILocation(line: 509, column: 11, scope: !479)
!488 = !DILocalVariable(name: "handler_context", arg: 5, scope: !479, file: !3, line: 510, type: !20)
!489 = !DILocation(line: 510, column: 12, scope: !479)
!490 = !DILocalVariable(name: "region_context", arg: 6, scope: !479, file: !3, line: 510, type: !20)
!491 = !DILocation(line: 510, column: 35, scope: !479)
!492 = !DILocation(line: 518, column: 10, scope: !479)
!493 = !DILocation(line: 518, column: 2, scope: !479)
!494 = !DILocation(line: 521, column: 10, scope: !495)
!495 = distinct !DILexicalBlock(scope: !479, file: !3, line: 518, column: 20)
!496 = !DILocation(line: 522, column: 10, scope: !495)
!497 = !DILocation(line: 522, column: 41, scope: !495)
!498 = !DILocation(line: 521, column: 3, scope: !495)
!499 = !DILocation(line: 523, column: 3, scope: !495)
!500 = !DILocation(line: 527, column: 10, scope: !495)
!501 = !DILocation(line: 528, column: 10, scope: !495)
!502 = !DILocation(line: 528, column: 38, scope: !495)
!503 = !DILocation(line: 527, column: 3, scope: !495)
!504 = !DILocation(line: 529, column: 3, scope: !495)
!505 = !DILocation(line: 533, column: 3, scope: !495)
!506 = !DILocation(line: 536, column: 2, scope: !479)
!507 = !DILocation(line: 537, column: 1, scope: !479)
!508 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !509, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!509 = !DISubroutineType(types: !510)
!510 = !{!20, !511, !45}
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 55, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !513, line: 72, baseType: !514)
!513 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !513, line: 16, baseType: !47)
!515 = !DILocalVariable(name: "s", arg: 1, scope: !516, file: !6, line: 445, type: !519)
!516 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !517, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!517 = !DISubroutineType(types: !518)
!518 = !{!20, !519, !45, !511}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !521, line: 117, flags: DIFlagFwdDecl)
!521 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!522 = !DILocation(line: 445, column: 72, scope: !516, inlinedAt: !523)
!523 = distinct !DILocation(line: 552, column: 10, scope: !524, inlinedAt: !527)
!524 = distinct !DILexicalBlock(scope: !525, file: !6, line: 540, column: 34)
!525 = distinct !DILexicalBlock(scope: !526, file: !6, line: 540, column: 6)
!526 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !509, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!527 = distinct !DILocation(line: 664, column: 9, scope: !508)
!528 = !DILocalVariable(name: "flags", arg: 2, scope: !516, file: !6, line: 446, type: !45)
!529 = !DILocation(line: 446, column: 9, scope: !516, inlinedAt: !523)
!530 = !DILocalVariable(name: "size", arg: 3, scope: !516, file: !6, line: 446, type: !511)
!531 = !DILocation(line: 446, column: 23, scope: !516, inlinedAt: !523)
!532 = !DILocalVariable(name: "ret", scope: !516, file: !6, line: 448, type: !20)
!533 = !DILocation(line: 448, column: 8, scope: !516, inlinedAt: !523)
!534 = !DILocalVariable(name: "flags", arg: 1, scope: !535, file: !6, line: 318, type: !45)
!535 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !536, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!536 = !DISubroutineType(types: !537)
!537 = !{!5, !45}
!538 = !DILocation(line: 318, column: 67, scope: !535, inlinedAt: !539)
!539 = distinct !DILocation(line: 553, column: 20, scope: !524, inlinedAt: !527)
!540 = !DILocalVariable(name: "size", arg: 1, scope: !541, file: !6, line: 346, type: !511)
!541 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !542, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!542 = !DISubroutineType(types: !543)
!543 = !{!7, !511}
!544 = !DILocation(line: 346, column: 58, scope: !541, inlinedAt: !545)
!545 = distinct !DILocation(line: 547, column: 11, scope: !524, inlinedAt: !527)
!546 = !DILocalVariable(name: "size", arg: 1, scope: !547, file: !6, line: 472, type: !511)
!547 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !548, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!548 = !DISubroutineType(types: !549)
!549 = !{!20, !511, !45, !7}
!550 = !DILocation(line: 472, column: 28, scope: !547, inlinedAt: !551)
!551 = distinct !DILocation(line: 481, column: 9, scope: !552, inlinedAt: !553)
!552 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !509, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!553 = distinct !DILocation(line: 545, column: 11, scope: !554, inlinedAt: !527)
!554 = distinct !DILexicalBlock(scope: !524, file: !6, line: 544, column: 7)
!555 = !DILocalVariable(name: "flags", arg: 2, scope: !547, file: !6, line: 472, type: !45)
!556 = !DILocation(line: 472, column: 40, scope: !547, inlinedAt: !551)
!557 = !DILocalVariable(name: "order", arg: 3, scope: !547, file: !6, line: 472, type: !7)
!558 = !DILocation(line: 472, column: 60, scope: !547, inlinedAt: !551)
!559 = !DILocalVariable(name: "size", arg: 1, scope: !552, file: !6, line: 478, type: !511)
!560 = !DILocation(line: 478, column: 51, scope: !552, inlinedAt: !553)
!561 = !DILocalVariable(name: "flags", arg: 2, scope: !552, file: !6, line: 478, type: !45)
!562 = !DILocation(line: 478, column: 63, scope: !552, inlinedAt: !553)
!563 = !DILocalVariable(name: "order", scope: !552, file: !6, line: 480, type: !7)
!564 = !DILocation(line: 480, column: 15, scope: !552, inlinedAt: !553)
!565 = !DILocalVariable(name: "size", arg: 1, scope: !526, file: !6, line: 538, type: !511)
!566 = !DILocation(line: 538, column: 45, scope: !526, inlinedAt: !527)
!567 = !DILocalVariable(name: "flags", arg: 2, scope: !526, file: !6, line: 538, type: !45)
!568 = !DILocation(line: 538, column: 57, scope: !526, inlinedAt: !527)
!569 = !DILocalVariable(name: "index", scope: !524, file: !6, line: 542, type: !7)
!570 = !DILocation(line: 542, column: 16, scope: !524, inlinedAt: !527)
!571 = !DILocalVariable(name: "size", arg: 1, scope: !508, file: !6, line: 662, type: !511)
!572 = !DILocation(line: 662, column: 36, scope: !508)
!573 = !DILocalVariable(name: "flags", arg: 2, scope: !508, file: !6, line: 662, type: !45)
!574 = !DILocation(line: 662, column: 48, scope: !508)
!575 = !DILocation(line: 664, column: 17, scope: !508)
!576 = !DILocation(line: 664, column: 23, scope: !508)
!577 = !DILocation(line: 664, column: 29, scope: !508)
!578 = !DILocation(line: 540, column: 27, scope: !525, inlinedAt: !527)
!579 = !DILocation(line: 540, column: 6, scope: !525, inlinedAt: !527)
!580 = !DILocation(line: 540, column: 6, scope: !526, inlinedAt: !527)
!581 = !DILocation(line: 544, column: 7, scope: !554, inlinedAt: !527)
!582 = !DILocation(line: 544, column: 12, scope: !554, inlinedAt: !527)
!583 = !DILocation(line: 544, column: 7, scope: !524, inlinedAt: !527)
!584 = !DILocation(line: 545, column: 25, scope: !554, inlinedAt: !527)
!585 = !DILocation(line: 545, column: 31, scope: !554, inlinedAt: !527)
!586 = !DILocation(line: 480, column: 33, scope: !552, inlinedAt: !553)
!587 = !DILocation(line: 480, column: 23, scope: !552, inlinedAt: !553)
!588 = !DILocation(line: 481, column: 29, scope: !552, inlinedAt: !553)
!589 = !DILocation(line: 481, column: 35, scope: !552, inlinedAt: !553)
!590 = !DILocation(line: 481, column: 42, scope: !552, inlinedAt: !553)
!591 = !DILocation(line: 474, column: 23, scope: !547, inlinedAt: !551)
!592 = !DILocation(line: 474, column: 29, scope: !547, inlinedAt: !551)
!593 = !DILocation(line: 474, column: 36, scope: !547, inlinedAt: !551)
!594 = !DILocation(line: 474, column: 9, scope: !547, inlinedAt: !551)
!595 = !DILocation(line: 545, column: 4, scope: !554, inlinedAt: !527)
!596 = !DILocation(line: 547, column: 25, scope: !524, inlinedAt: !527)
!597 = !DILocation(line: 348, column: 7, scope: !598, inlinedAt: !545)
!598 = distinct !DILexicalBlock(scope: !541, file: !6, line: 348, column: 6)
!599 = !DILocation(line: 348, column: 6, scope: !541, inlinedAt: !545)
!600 = !DILocation(line: 349, column: 3, scope: !598, inlinedAt: !545)
!601 = !DILocation(line: 351, column: 6, scope: !602, inlinedAt: !545)
!602 = distinct !DILexicalBlock(scope: !541, file: !6, line: 351, column: 6)
!603 = !DILocation(line: 351, column: 11, scope: !602, inlinedAt: !545)
!604 = !DILocation(line: 351, column: 6, scope: !541, inlinedAt: !545)
!605 = !DILocation(line: 352, column: 3, scope: !602, inlinedAt: !545)
!606 = !DILocation(line: 354, column: 32, scope: !607, inlinedAt: !545)
!607 = distinct !DILexicalBlock(scope: !541, file: !6, line: 354, column: 6)
!608 = !DILocation(line: 354, column: 37, scope: !607, inlinedAt: !545)
!609 = !DILocation(line: 354, column: 42, scope: !607, inlinedAt: !545)
!610 = !DILocation(line: 354, column: 45, scope: !607, inlinedAt: !545)
!611 = !DILocation(line: 354, column: 50, scope: !607, inlinedAt: !545)
!612 = !DILocation(line: 354, column: 6, scope: !541, inlinedAt: !545)
!613 = !DILocation(line: 355, column: 3, scope: !607, inlinedAt: !545)
!614 = !DILocation(line: 356, column: 32, scope: !615, inlinedAt: !545)
!615 = distinct !DILexicalBlock(scope: !541, file: !6, line: 356, column: 6)
!616 = !DILocation(line: 356, column: 37, scope: !615, inlinedAt: !545)
!617 = !DILocation(line: 356, column: 43, scope: !615, inlinedAt: !545)
!618 = !DILocation(line: 356, column: 46, scope: !615, inlinedAt: !545)
!619 = !DILocation(line: 356, column: 51, scope: !615, inlinedAt: !545)
!620 = !DILocation(line: 356, column: 6, scope: !541, inlinedAt: !545)
!621 = !DILocation(line: 357, column: 3, scope: !615, inlinedAt: !545)
!622 = !DILocation(line: 358, column: 6, scope: !623, inlinedAt: !545)
!623 = distinct !DILexicalBlock(scope: !541, file: !6, line: 358, column: 6)
!624 = !DILocation(line: 358, column: 11, scope: !623, inlinedAt: !545)
!625 = !DILocation(line: 358, column: 6, scope: !541, inlinedAt: !545)
!626 = !DILocation(line: 358, column: 26, scope: !623, inlinedAt: !545)
!627 = !DILocation(line: 359, column: 6, scope: !628, inlinedAt: !545)
!628 = distinct !DILexicalBlock(scope: !541, file: !6, line: 359, column: 6)
!629 = !DILocation(line: 359, column: 11, scope: !628, inlinedAt: !545)
!630 = !DILocation(line: 359, column: 6, scope: !541, inlinedAt: !545)
!631 = !DILocation(line: 359, column: 26, scope: !628, inlinedAt: !545)
!632 = !DILocation(line: 360, column: 6, scope: !633, inlinedAt: !545)
!633 = distinct !DILexicalBlock(scope: !541, file: !6, line: 360, column: 6)
!634 = !DILocation(line: 360, column: 11, scope: !633, inlinedAt: !545)
!635 = !DILocation(line: 360, column: 6, scope: !541, inlinedAt: !545)
!636 = !DILocation(line: 360, column: 26, scope: !633, inlinedAt: !545)
!637 = !DILocation(line: 361, column: 6, scope: !638, inlinedAt: !545)
!638 = distinct !DILexicalBlock(scope: !541, file: !6, line: 361, column: 6)
!639 = !DILocation(line: 361, column: 11, scope: !638, inlinedAt: !545)
!640 = !DILocation(line: 361, column: 6, scope: !541, inlinedAt: !545)
!641 = !DILocation(line: 361, column: 26, scope: !638, inlinedAt: !545)
!642 = !DILocation(line: 362, column: 6, scope: !643, inlinedAt: !545)
!643 = distinct !DILexicalBlock(scope: !541, file: !6, line: 362, column: 6)
!644 = !DILocation(line: 362, column: 11, scope: !643, inlinedAt: !545)
!645 = !DILocation(line: 362, column: 6, scope: !541, inlinedAt: !545)
!646 = !DILocation(line: 362, column: 26, scope: !643, inlinedAt: !545)
!647 = !DILocation(line: 363, column: 6, scope: !648, inlinedAt: !545)
!648 = distinct !DILexicalBlock(scope: !541, file: !6, line: 363, column: 6)
!649 = !DILocation(line: 363, column: 11, scope: !648, inlinedAt: !545)
!650 = !DILocation(line: 363, column: 6, scope: !541, inlinedAt: !545)
!651 = !DILocation(line: 363, column: 26, scope: !648, inlinedAt: !545)
!652 = !DILocation(line: 364, column: 6, scope: !653, inlinedAt: !545)
!653 = distinct !DILexicalBlock(scope: !541, file: !6, line: 364, column: 6)
!654 = !DILocation(line: 364, column: 11, scope: !653, inlinedAt: !545)
!655 = !DILocation(line: 364, column: 6, scope: !541, inlinedAt: !545)
!656 = !DILocation(line: 364, column: 26, scope: !653, inlinedAt: !545)
!657 = !DILocation(line: 365, column: 6, scope: !658, inlinedAt: !545)
!658 = distinct !DILexicalBlock(scope: !541, file: !6, line: 365, column: 6)
!659 = !DILocation(line: 365, column: 11, scope: !658, inlinedAt: !545)
!660 = !DILocation(line: 365, column: 6, scope: !541, inlinedAt: !545)
!661 = !DILocation(line: 365, column: 26, scope: !658, inlinedAt: !545)
!662 = !DILocation(line: 366, column: 6, scope: !663, inlinedAt: !545)
!663 = distinct !DILexicalBlock(scope: !541, file: !6, line: 366, column: 6)
!664 = !DILocation(line: 366, column: 11, scope: !663, inlinedAt: !545)
!665 = !DILocation(line: 366, column: 6, scope: !541, inlinedAt: !545)
!666 = !DILocation(line: 366, column: 26, scope: !663, inlinedAt: !545)
!667 = !DILocation(line: 367, column: 6, scope: !668, inlinedAt: !545)
!668 = distinct !DILexicalBlock(scope: !541, file: !6, line: 367, column: 6)
!669 = !DILocation(line: 367, column: 11, scope: !668, inlinedAt: !545)
!670 = !DILocation(line: 367, column: 6, scope: !541, inlinedAt: !545)
!671 = !DILocation(line: 367, column: 26, scope: !668, inlinedAt: !545)
!672 = !DILocation(line: 368, column: 6, scope: !673, inlinedAt: !545)
!673 = distinct !DILexicalBlock(scope: !541, file: !6, line: 368, column: 6)
!674 = !DILocation(line: 368, column: 11, scope: !673, inlinedAt: !545)
!675 = !DILocation(line: 368, column: 6, scope: !541, inlinedAt: !545)
!676 = !DILocation(line: 368, column: 26, scope: !673, inlinedAt: !545)
!677 = !DILocation(line: 369, column: 6, scope: !678, inlinedAt: !545)
!678 = distinct !DILexicalBlock(scope: !541, file: !6, line: 369, column: 6)
!679 = !DILocation(line: 369, column: 11, scope: !678, inlinedAt: !545)
!680 = !DILocation(line: 369, column: 6, scope: !541, inlinedAt: !545)
!681 = !DILocation(line: 369, column: 26, scope: !678, inlinedAt: !545)
!682 = !DILocation(line: 370, column: 6, scope: !683, inlinedAt: !545)
!683 = distinct !DILexicalBlock(scope: !541, file: !6, line: 370, column: 6)
!684 = !DILocation(line: 370, column: 11, scope: !683, inlinedAt: !545)
!685 = !DILocation(line: 370, column: 6, scope: !541, inlinedAt: !545)
!686 = !DILocation(line: 370, column: 26, scope: !683, inlinedAt: !545)
!687 = !DILocation(line: 371, column: 6, scope: !688, inlinedAt: !545)
!688 = distinct !DILexicalBlock(scope: !541, file: !6, line: 371, column: 6)
!689 = !DILocation(line: 371, column: 11, scope: !688, inlinedAt: !545)
!690 = !DILocation(line: 371, column: 6, scope: !541, inlinedAt: !545)
!691 = !DILocation(line: 371, column: 26, scope: !688, inlinedAt: !545)
!692 = !DILocation(line: 372, column: 6, scope: !693, inlinedAt: !545)
!693 = distinct !DILexicalBlock(scope: !541, file: !6, line: 372, column: 6)
!694 = !DILocation(line: 372, column: 11, scope: !693, inlinedAt: !545)
!695 = !DILocation(line: 372, column: 6, scope: !541, inlinedAt: !545)
!696 = !DILocation(line: 372, column: 26, scope: !693, inlinedAt: !545)
!697 = !DILocation(line: 373, column: 6, scope: !698, inlinedAt: !545)
!698 = distinct !DILexicalBlock(scope: !541, file: !6, line: 373, column: 6)
!699 = !DILocation(line: 373, column: 11, scope: !698, inlinedAt: !545)
!700 = !DILocation(line: 373, column: 6, scope: !541, inlinedAt: !545)
!701 = !DILocation(line: 373, column: 26, scope: !698, inlinedAt: !545)
!702 = !DILocation(line: 374, column: 6, scope: !703, inlinedAt: !545)
!703 = distinct !DILexicalBlock(scope: !541, file: !6, line: 374, column: 6)
!704 = !DILocation(line: 374, column: 11, scope: !703, inlinedAt: !545)
!705 = !DILocation(line: 374, column: 6, scope: !541, inlinedAt: !545)
!706 = !DILocation(line: 374, column: 26, scope: !703, inlinedAt: !545)
!707 = !DILocation(line: 375, column: 6, scope: !708, inlinedAt: !545)
!708 = distinct !DILexicalBlock(scope: !541, file: !6, line: 375, column: 6)
!709 = !DILocation(line: 375, column: 11, scope: !708, inlinedAt: !545)
!710 = !DILocation(line: 375, column: 6, scope: !541, inlinedAt: !545)
!711 = !DILocation(line: 375, column: 27, scope: !708, inlinedAt: !545)
!712 = !DILocation(line: 376, column: 6, scope: !713, inlinedAt: !545)
!713 = distinct !DILexicalBlock(scope: !541, file: !6, line: 376, column: 6)
!714 = !DILocation(line: 376, column: 11, scope: !713, inlinedAt: !545)
!715 = !DILocation(line: 376, column: 6, scope: !541, inlinedAt: !545)
!716 = !DILocation(line: 376, column: 32, scope: !713, inlinedAt: !545)
!717 = !DILocation(line: 377, column: 6, scope: !718, inlinedAt: !545)
!718 = distinct !DILexicalBlock(scope: !541, file: !6, line: 377, column: 6)
!719 = !DILocation(line: 377, column: 11, scope: !718, inlinedAt: !545)
!720 = !DILocation(line: 377, column: 6, scope: !541, inlinedAt: !545)
!721 = !DILocation(line: 377, column: 32, scope: !718, inlinedAt: !545)
!722 = !DILocation(line: 378, column: 6, scope: !723, inlinedAt: !545)
!723 = distinct !DILexicalBlock(scope: !541, file: !6, line: 378, column: 6)
!724 = !DILocation(line: 378, column: 11, scope: !723, inlinedAt: !545)
!725 = !DILocation(line: 378, column: 6, scope: !541, inlinedAt: !545)
!726 = !DILocation(line: 378, column: 32, scope: !723, inlinedAt: !545)
!727 = !DILocation(line: 379, column: 6, scope: !728, inlinedAt: !545)
!728 = distinct !DILexicalBlock(scope: !541, file: !6, line: 379, column: 6)
!729 = !DILocation(line: 379, column: 11, scope: !728, inlinedAt: !545)
!730 = !DILocation(line: 379, column: 6, scope: !541, inlinedAt: !545)
!731 = !DILocation(line: 379, column: 33, scope: !728, inlinedAt: !545)
!732 = !DILocation(line: 380, column: 6, scope: !733, inlinedAt: !545)
!733 = distinct !DILexicalBlock(scope: !541, file: !6, line: 380, column: 6)
!734 = !DILocation(line: 380, column: 11, scope: !733, inlinedAt: !545)
!735 = !DILocation(line: 380, column: 6, scope: !541, inlinedAt: !545)
!736 = !DILocation(line: 380, column: 33, scope: !733, inlinedAt: !545)
!737 = !DILocation(line: 381, column: 6, scope: !738, inlinedAt: !545)
!738 = distinct !DILexicalBlock(scope: !541, file: !6, line: 381, column: 6)
!739 = !DILocation(line: 381, column: 11, scope: !738, inlinedAt: !545)
!740 = !DILocation(line: 381, column: 6, scope: !541, inlinedAt: !545)
!741 = !DILocation(line: 381, column: 33, scope: !738, inlinedAt: !545)
!742 = !DILocation(line: 382, column: 2, scope: !743, inlinedAt: !545)
!743 = distinct !DILexicalBlock(scope: !744, file: !6, line: 382, column: 2)
!744 = distinct !DILexicalBlock(scope: !541, file: !6, line: 382, column: 2)
!745 = !{i32 -2144105713, i32 -2144105684, i32 -2144105638, i32 -2144105580, i32 -2144105526, i32 -2144105472, i32 -2144105417, i32 -2144105386}
!746 = !DILocation(line: 382, column: 2, scope: !747, inlinedAt: !545)
!747 = distinct !DILexicalBlock(scope: !748, file: !6, line: 382, column: 2)
!748 = distinct !DILexicalBlock(scope: !744, file: !6, line: 382, column: 2)
!749 = !{i32 -2144104943, i32 -2144104936, i32 -2144104882, i32 -2144104851, i32 -2144104821}
!750 = !DILocation(line: 382, column: 2, scope: !748, inlinedAt: !545)
!751 = !DILocation(line: 386, column: 1, scope: !541, inlinedAt: !545)
!752 = !DILocation(line: 547, column: 9, scope: !524, inlinedAt: !527)
!753 = !DILocation(line: 549, column: 8, scope: !754, inlinedAt: !527)
!754 = distinct !DILexicalBlock(scope: !524, file: !6, line: 549, column: 7)
!755 = !DILocation(line: 549, column: 7, scope: !524, inlinedAt: !527)
!756 = !DILocation(line: 550, column: 4, scope: !754, inlinedAt: !527)
!757 = !DILocation(line: 553, column: 33, scope: !524, inlinedAt: !527)
!758 = !DILocation(line: 325, column: 6, scope: !759, inlinedAt: !539)
!759 = distinct !DILexicalBlock(scope: !535, file: !6, line: 325, column: 6)
!760 = !DILocation(line: 325, column: 6, scope: !535, inlinedAt: !539)
!761 = !DILocation(line: 326, column: 3, scope: !759, inlinedAt: !539)
!762 = !DILocation(line: 332, column: 9, scope: !535, inlinedAt: !539)
!763 = !DILocation(line: 332, column: 15, scope: !535, inlinedAt: !539)
!764 = !DILocation(line: 332, column: 2, scope: !535, inlinedAt: !539)
!765 = !DILocation(line: 336, column: 1, scope: !535, inlinedAt: !539)
!766 = !DILocation(line: 553, column: 5, scope: !524, inlinedAt: !527)
!767 = !DILocation(line: 553, column: 41, scope: !524, inlinedAt: !527)
!768 = !DILocation(line: 554, column: 5, scope: !524, inlinedAt: !527)
!769 = !DILocation(line: 554, column: 12, scope: !524, inlinedAt: !527)
!770 = !DILocation(line: 448, column: 31, scope: !516, inlinedAt: !523)
!771 = !DILocation(line: 448, column: 34, scope: !516, inlinedAt: !523)
!772 = !DILocation(line: 448, column: 14, scope: !516, inlinedAt: !523)
!773 = !DILocation(line: 450, column: 22, scope: !516, inlinedAt: !523)
!774 = !DILocation(line: 450, column: 25, scope: !516, inlinedAt: !523)
!775 = !DILocation(line: 450, column: 30, scope: !516, inlinedAt: !523)
!776 = !DILocation(line: 450, column: 36, scope: !516, inlinedAt: !523)
!777 = !DILocation(line: 450, column: 8, scope: !516, inlinedAt: !523)
!778 = !DILocation(line: 450, column: 6, scope: !516, inlinedAt: !523)
!779 = !DILocation(line: 451, column: 9, scope: !516, inlinedAt: !523)
!780 = !DILocation(line: 552, column: 3, scope: !524, inlinedAt: !527)
!781 = !DILocation(line: 557, column: 19, scope: !526, inlinedAt: !527)
!782 = !DILocation(line: 557, column: 25, scope: !526, inlinedAt: !527)
!783 = !DILocation(line: 557, column: 9, scope: !526, inlinedAt: !527)
!784 = !DILocation(line: 557, column: 2, scope: !526, inlinedAt: !527)
!785 = !DILocation(line: 558, column: 1, scope: !526, inlinedAt: !527)
!786 = !DILocation(line: 664, column: 2, scope: !508)
!787 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !788, file: !788, line: 646, type: !789, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!788 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!789 = !DISubroutineType(types: !790)
!790 = !{!47}
!791 = !DILocalVariable(name: "__ret", scope: !792, file: !788, line: 648, type: !47)
!792 = distinct !DILexicalBlock(scope: !787, file: !788, line: 648, column: 9)
!793 = !DILocation(line: 648, column: 9, scope: !792)
!794 = !DILocalVariable(name: "__edi", scope: !792, file: !788, line: 648, type: !47)
!795 = !DILocalVariable(name: "__esi", scope: !792, file: !788, line: 648, type: !47)
!796 = !DILocalVariable(name: "__edx", scope: !792, file: !788, line: 648, type: !47)
!797 = !DILocalVariable(name: "__ecx", scope: !792, file: !788, line: 648, type: !47)
!798 = !DILocalVariable(name: "__eax", scope: !792, file: !788, line: 648, type: !47)
!799 = !DILocation(line: 648, column: 9, scope: !800)
!800 = distinct !DILexicalBlock(scope: !801, file: !788, line: 648, column: 9)
!801 = distinct !DILexicalBlock(scope: !792, file: !788, line: 648, column: 9)
!802 = !{i32 -2145779319, i32 -2145777004, i32 -2145776770, i32 -2145776719, i32 -2145776691, i32 -2145776666, i32 -2145776982, i32 -2145776969, i32 -2145776531, i32 -2145776412, i32 -2145776877, i32 -2145776850, i32 -2145776822, i32 -2145776792}
!803 = !DILocalVariable(name: "__mask", scope: !804, file: !788, line: 648, type: !47)
!804 = distinct !DILexicalBlock(scope: !800, file: !788, line: 648, column: 9)
!805 = !DILocation(line: 648, column: 9, scope: !804)
!806 = !DILocation(line: 648, column: 9, scope: !801)
!807 = !DILocation(line: 648, column: 2, scope: !787)
!808 = distinct !DISubprogram(name: "get_order", scope: !809, file: !809, line: 29, type: !322, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!809 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!810 = !DILocalVariable(name: "x", arg: 1, scope: !811, file: !812, line: 366, type: !22)
!811 = distinct !DISubprogram(name: "fls64", scope: !812, file: !812, line: 366, type: !813, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!812 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!813 = !DISubroutineType(types: !814)
!814 = !{!324, !22}
!815 = !DILocation(line: 366, column: 40, scope: !811, inlinedAt: !816)
!816 = distinct !DILocation(line: 46, column: 9, scope: !808)
!817 = !DILocalVariable(name: "bitpos", scope: !811, file: !812, line: 368, type: !324)
!818 = !DILocation(line: 368, column: 6, scope: !811, inlinedAt: !816)
!819 = !DILocalVariable(name: "size", arg: 1, scope: !808, file: !809, line: 29, type: !47)
!820 = !DILocation(line: 29, column: 63, scope: !808)
!821 = !DILocation(line: 31, column: 27, scope: !822)
!822 = distinct !DILexicalBlock(scope: !808, file: !809, line: 31, column: 6)
!823 = !DILocation(line: 31, column: 6, scope: !822)
!824 = !DILocation(line: 31, column: 6, scope: !808)
!825 = !DILocation(line: 32, column: 8, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !809, line: 32, column: 7)
!827 = distinct !DILexicalBlock(scope: !822, file: !809, line: 31, column: 34)
!828 = !DILocation(line: 32, column: 7, scope: !827)
!829 = !DILocation(line: 33, column: 4, scope: !826)
!830 = !DILocation(line: 35, column: 7, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !809, line: 35, column: 7)
!832 = !DILocation(line: 35, column: 12, scope: !831)
!833 = !DILocation(line: 35, column: 7, scope: !827)
!834 = !DILocation(line: 36, column: 4, scope: !831)
!835 = !DILocation(line: 38, column: 10, scope: !827)
!836 = !DILocation(line: 38, column: 28, scope: !827)
!837 = !DILocation(line: 38, column: 41, scope: !827)
!838 = !DILocation(line: 38, column: 3, scope: !827)
!839 = !DILocation(line: 41, column: 6, scope: !808)
!840 = !DILocation(line: 42, column: 7, scope: !808)
!841 = !DILocation(line: 46, column: 15, scope: !808)
!842 = !DILocation(line: 374, column: 2, scope: !811, inlinedAt: !816)
!843 = !DILocation(line: 376, column: 14, scope: !811, inlinedAt: !816)
!844 = !{i32 665489}
!845 = !DILocation(line: 377, column: 9, scope: !811, inlinedAt: !816)
!846 = !DILocation(line: 377, column: 16, scope: !811, inlinedAt: !816)
!847 = !DILocation(line: 46, column: 2, scope: !808)
!848 = !DILocation(line: 48, column: 1, scope: !808)
!849 = distinct !DISubprogram(name: "__ilog2_u64", scope: !850, file: !850, line: 30, type: !851, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!850 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!851 = !DISubroutineType(types: !852)
!852 = !{!324, !21}
!853 = !DILocation(line: 366, column: 40, scope: !811, inlinedAt: !854)
!854 = distinct !DILocation(line: 32, column: 9, scope: !849)
!855 = !DILocation(line: 368, column: 6, scope: !811, inlinedAt: !854)
!856 = !DILocalVariable(name: "n", arg: 1, scope: !849, file: !850, line: 30, type: !21)
!857 = !DILocation(line: 30, column: 21, scope: !849)
!858 = !DILocation(line: 32, column: 15, scope: !849)
!859 = !DILocation(line: 374, column: 2, scope: !811, inlinedAt: !854)
!860 = !DILocation(line: 376, column: 14, scope: !811, inlinedAt: !854)
!861 = !DILocation(line: 377, column: 9, scope: !811, inlinedAt: !854)
!862 = !DILocation(line: 377, column: 16, scope: !811, inlinedAt: !854)
!863 = !DILocation(line: 32, column: 18, scope: !849)
!864 = !DILocation(line: 32, column: 2, scope: !849)
!865 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !866, file: !866, line: 137, type: !867, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!866 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!867 = !DISubroutineType(types: !868)
!868 = !{!20, !519, !869, !511, !45}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!871 = !DILocalVariable(name: "s", arg: 1, scope: !865, file: !866, line: 137, type: !519)
!872 = !DILocation(line: 137, column: 54, scope: !865)
!873 = !DILocalVariable(name: "object", arg: 2, scope: !865, file: !866, line: 137, type: !869)
!874 = !DILocation(line: 137, column: 69, scope: !865)
!875 = !DILocalVariable(name: "size", arg: 3, scope: !865, file: !866, line: 138, type: !511)
!876 = !DILocation(line: 138, column: 12, scope: !865)
!877 = !DILocalVariable(name: "flags", arg: 4, scope: !865, file: !866, line: 138, type: !45)
!878 = !DILocation(line: 138, column: 24, scope: !865)
!879 = !DILocation(line: 140, column: 17, scope: !865)
!880 = !DILocation(line: 140, column: 2, scope: !865)
