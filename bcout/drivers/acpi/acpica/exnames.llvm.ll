; ModuleID = '../bcout/drivers/acpi/acpica/exnames.llvm.bc'
source_filename = "drivers/acpi/acpica/exnames.c"
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

@_acpi_module_name = internal constant [8 x i8] c"exnames\00", align 1, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"Malformed Name at %p\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not allocate size %u\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Invalid leading digit: %c\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Bad character 0x%02x in name, at %p\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_get_name_string(i32 %data_type, i8* %in_aml_address, i8** %out_name_string, i32* %out_name_length) #0 !dbg !47 {
entry:
  %retval = alloca i32, align 4
  %data_type.addr = alloca i32, align 4
  %in_aml_address.addr = alloca i8*, align 8
  %out_name_string.addr = alloca i8**, align 8
  %out_name_length.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %aml_address = alloca i8*, align 8
  %name_string = alloca i8*, align 8
  %num_segments = alloca i32, align 4
  %prefix_count = alloca i32, align 4
  %has_prefix = alloca i8, align 1
  store i32 %data_type, i32* %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data_type.addr, metadata !55, metadata !DIExpression()), !dbg !56
  store i8* %in_aml_address, i8** %in_aml_address.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %in_aml_address.addr, metadata !57, metadata !DIExpression()), !dbg !58
  store i8** %out_name_string, i8*** %out_name_string.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %out_name_string.addr, metadata !59, metadata !DIExpression()), !dbg !60
  store i32* %out_name_length, i32** %out_name_length.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_name_length.addr, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %status, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 0, i32* %status, align 4, !dbg !64
  call void @llvm.dbg.declare(metadata i8** %aml_address, metadata !65, metadata !DIExpression()), !dbg !66
  %0 = load i8*, i8** %in_aml_address.addr, align 8, !dbg !67
  store i8* %0, i8** %aml_address, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i8** %name_string, metadata !68, metadata !DIExpression()), !dbg !69
  store i8* null, i8** %name_string, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %num_segments, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %prefix_count, metadata !72, metadata !DIExpression()), !dbg !73
  store i32 0, i32* %prefix_count, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i8* %has_prefix, metadata !74, metadata !DIExpression()), !dbg !75
  store i8 0, i8* %has_prefix, align 1, !dbg !75
  %1 = load i32, i32* %data_type.addr, align 4, !dbg !76
  %cmp = icmp eq i32 17, %1, !dbg !78
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !79

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %data_type.addr, align 4, !dbg !80
  %cmp1 = icmp eq i32 18, %2, !dbg !81
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !82

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %data_type.addr, align 4, !dbg !83
  %cmp3 = icmp eq i32 19, %3, !dbg !84
  br i1 %cmp3, label %if.then, label %if.else6, !dbg !85

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %call = call i8* @acpi_ex_allocate_name_string(i32 0, i32 1) #8, !dbg !86
  store i8* %call, i8** %name_string, align 8, !dbg !88
  %4 = load i8*, i8** %name_string, align 8, !dbg !89
  %tobool = icmp ne i8* %4, null, !dbg !89
  br i1 %tobool, label %if.else, label %if.then4, !dbg !91

if.then4:                                         ; preds = %if.then
  store i32 4, i32* %status, align 4, !dbg !92
  br label %if.end, !dbg !94

if.else:                                          ; preds = %if.then
  %5 = load i8*, i8** %name_string, align 8, !dbg !95
  %call5 = call i32 @acpi_ex_name_segment(i8** %aml_address, i8* %5) #8, !dbg !97
  store i32 %call5, i32* %status, align 4, !dbg !98
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end53, !dbg !99

if.else6:                                         ; preds = %lor.lhs.false2
  %6 = load i8*, i8** %aml_address, align 8, !dbg !100
  %7 = load i8, i8* %6, align 1, !dbg !102
  %conv = zext i8 %7 to i32, !dbg !102
  switch i32 %conv, label %sw.default [
    i32 92, label %sw.bb
    i32 94, label %sw.bb7
  ], !dbg !103

sw.bb:                                            ; preds = %if.else6
  %8 = load i8*, i8** %aml_address, align 8, !dbg !104
  %incdec.ptr = getelementptr i8, i8* %8, i32 1, !dbg !104
  store i8* %incdec.ptr, i8** %aml_address, align 8, !dbg !104
  store i32 -1, i32* %prefix_count, align 4, !dbg !106
  store i8 1, i8* %has_prefix, align 1, !dbg !107
  br label %sw.epilog, !dbg !108

sw.bb7:                                           ; preds = %if.else6
  br label %do.body, !dbg !109

do.body:                                          ; preds = %do.cond, %sw.bb7
  %9 = load i8*, i8** %aml_address, align 8, !dbg !110
  %incdec.ptr8 = getelementptr i8, i8* %9, i32 1, !dbg !110
  store i8* %incdec.ptr8, i8** %aml_address, align 8, !dbg !110
  %10 = load i32, i32* %prefix_count, align 4, !dbg !112
  %inc = add i32 %10, 1, !dbg !112
  store i32 %inc, i32* %prefix_count, align 4, !dbg !112
  br label %do.cond, !dbg !113

do.cond:                                          ; preds = %do.body
  %11 = load i8*, i8** %aml_address, align 8, !dbg !114
  %12 = load i8, i8* %11, align 1, !dbg !115
  %conv9 = zext i8 %12 to i32, !dbg !115
  %cmp10 = icmp eq i32 %conv9, 94, !dbg !116
  br i1 %cmp10, label %do.body, label %do.end, !dbg !113, !llvm.loop !117

do.end:                                           ; preds = %do.cond
  store i8 1, i8* %has_prefix, align 1, !dbg !119
  br label %sw.epilog, !dbg !120

sw.default:                                       ; preds = %if.else6
  br label %sw.epilog, !dbg !121

sw.epilog:                                        ; preds = %sw.default, %do.end, %sw.bb
  %13 = load i8*, i8** %aml_address, align 8, !dbg !122
  %14 = load i8, i8* %13, align 1, !dbg !123
  %conv12 = zext i8 %14 to i32, !dbg !123
  switch i32 %conv12, label %sw.default46 [
    i32 46, label %sw.bb13
    i32 47, label %sw.bb24
    i32 0, label %sw.bb36
  ], !dbg !124

sw.bb13:                                          ; preds = %sw.epilog
  %15 = load i8*, i8** %aml_address, align 8, !dbg !125
  %incdec.ptr14 = getelementptr i8, i8* %15, i32 1, !dbg !125
  store i8* %incdec.ptr14, i8** %aml_address, align 8, !dbg !125
  %16 = load i32, i32* %prefix_count, align 4, !dbg !127
  %call15 = call i8* @acpi_ex_allocate_name_string(i32 %16, i32 2) #8, !dbg !128
  store i8* %call15, i8** %name_string, align 8, !dbg !129
  %17 = load i8*, i8** %name_string, align 8, !dbg !130
  %tobool16 = icmp ne i8* %17, null, !dbg !130
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !132

if.then17:                                        ; preds = %sw.bb13
  store i32 4, i32* %status, align 4, !dbg !133
  br label %sw.epilog52, !dbg !135

if.end18:                                         ; preds = %sw.bb13
  store i8 1, i8* %has_prefix, align 1, !dbg !136
  %18 = load i8*, i8** %name_string, align 8, !dbg !137
  %call19 = call i32 @acpi_ex_name_segment(i8** %aml_address, i8* %18) #8, !dbg !138
  store i32 %call19, i32* %status, align 4, !dbg !139
  %19 = load i32, i32* %status, align 4, !dbg !140
  %tobool20 = icmp ne i32 %19, 0, !dbg !140
  br i1 %tobool20, label %if.end23, label %if.then21, !dbg !142

if.then21:                                        ; preds = %if.end18
  %20 = load i8*, i8** %name_string, align 8, !dbg !143
  %call22 = call i32 @acpi_ex_name_segment(i8** %aml_address, i8* %20) #8, !dbg !145
  store i32 %call22, i32* %status, align 4, !dbg !146
  br label %if.end23, !dbg !147

if.end23:                                         ; preds = %if.then21, %if.end18
  br label %sw.epilog52, !dbg !148

sw.bb24:                                          ; preds = %sw.epilog
  %21 = load i8*, i8** %aml_address, align 8, !dbg !149
  %incdec.ptr25 = getelementptr i8, i8* %21, i32 1, !dbg !149
  store i8* %incdec.ptr25, i8** %aml_address, align 8, !dbg !149
  %22 = load i8*, i8** %aml_address, align 8, !dbg !150
  %23 = load i8, i8* %22, align 1, !dbg !151
  %conv26 = zext i8 %23 to i32, !dbg !151
  store i32 %conv26, i32* %num_segments, align 4, !dbg !152
  %24 = load i32, i32* %prefix_count, align 4, !dbg !153
  %25 = load i32, i32* %num_segments, align 4, !dbg !154
  %call27 = call i8* @acpi_ex_allocate_name_string(i32 %24, i32 %25) #8, !dbg !155
  store i8* %call27, i8** %name_string, align 8, !dbg !156
  %26 = load i8*, i8** %name_string, align 8, !dbg !157
  %tobool28 = icmp ne i8* %26, null, !dbg !157
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !159

if.then29:                                        ; preds = %sw.bb24
  store i32 4, i32* %status, align 4, !dbg !160
  br label %sw.epilog52, !dbg !162

if.end30:                                         ; preds = %sw.bb24
  %27 = load i8*, i8** %aml_address, align 8, !dbg !163
  %incdec.ptr31 = getelementptr i8, i8* %27, i32 1, !dbg !163
  store i8* %incdec.ptr31, i8** %aml_address, align 8, !dbg !163
  store i8 1, i8* %has_prefix, align 1, !dbg !164
  br label %while.cond, !dbg !165

while.cond:                                       ; preds = %while.body, %if.end30
  %28 = load i32, i32* %num_segments, align 4, !dbg !166
  %tobool32 = icmp ne i32 %28, 0, !dbg !166
  br i1 %tobool32, label %land.rhs, label %land.end, !dbg !167

land.rhs:                                         ; preds = %while.cond
  %29 = load i8*, i8** %name_string, align 8, !dbg !168
  %call33 = call i32 @acpi_ex_name_segment(i8** %aml_address, i8* %29) #8, !dbg !169
  store i32 %call33, i32* %status, align 4, !dbg !170
  %cmp34 = icmp eq i32 %call33, 0, !dbg !171
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %cmp34, %land.rhs ], !dbg !172
  br i1 %30, label %while.body, label %while.end, !dbg !165

while.body:                                       ; preds = %land.end
  %31 = load i32, i32* %num_segments, align 4, !dbg !173
  %dec = add i32 %31, -1, !dbg !173
  store i32 %dec, i32* %num_segments, align 4, !dbg !173
  br label %while.cond, !dbg !165, !llvm.loop !175

while.end:                                        ; preds = %land.end
  br label %sw.epilog52, !dbg !177

sw.bb36:                                          ; preds = %sw.epilog
  %32 = load i32, i32* %prefix_count, align 4, !dbg !178
  %cmp37 = icmp eq i32 %32, -1, !dbg !180
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !181

if.then39:                                        ; preds = %sw.bb36
  br label %if.end40, !dbg !182

if.end40:                                         ; preds = %if.then39, %sw.bb36
  %33 = load i8*, i8** %aml_address, align 8, !dbg !184
  %incdec.ptr41 = getelementptr i8, i8* %33, i32 1, !dbg !184
  store i8* %incdec.ptr41, i8** %aml_address, align 8, !dbg !184
  %34 = load i32, i32* %prefix_count, align 4, !dbg !185
  %call42 = call i8* @acpi_ex_allocate_name_string(i32 %34, i32 0) #8, !dbg !186
  store i8* %call42, i8** %name_string, align 8, !dbg !187
  %35 = load i8*, i8** %name_string, align 8, !dbg !188
  %tobool43 = icmp ne i8* %35, null, !dbg !188
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !190

if.then44:                                        ; preds = %if.end40
  store i32 4, i32* %status, align 4, !dbg !191
  br label %sw.epilog52, !dbg !193

if.end45:                                         ; preds = %if.end40
  br label %sw.epilog52, !dbg !194

sw.default46:                                     ; preds = %sw.epilog
  %36 = load i32, i32* %prefix_count, align 4, !dbg !195
  %call47 = call i8* @acpi_ex_allocate_name_string(i32 %36, i32 1) #8, !dbg !196
  store i8* %call47, i8** %name_string, align 8, !dbg !197
  %37 = load i8*, i8** %name_string, align 8, !dbg !198
  %tobool48 = icmp ne i8* %37, null, !dbg !198
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !200

if.then49:                                        ; preds = %sw.default46
  store i32 4, i32* %status, align 4, !dbg !201
  br label %sw.epilog52, !dbg !203

if.end50:                                         ; preds = %sw.default46
  %38 = load i8*, i8** %name_string, align 8, !dbg !204
  %call51 = call i32 @acpi_ex_name_segment(i8** %aml_address, i8* %38) #8, !dbg !205
  store i32 %call51, i32* %status, align 4, !dbg !206
  br label %sw.epilog52, !dbg !207

sw.epilog52:                                      ; preds = %if.end50, %if.then49, %if.end45, %if.then44, %while.end, %if.then29, %if.end23, %if.then17
  br label %if.end53

if.end53:                                         ; preds = %sw.epilog52, %if.end
  %39 = load i32, i32* %status, align 4, !dbg !208
  %cmp54 = icmp eq i32 16386, %39, !dbg !210
  br i1 %cmp54, label %land.lhs.true, label %if.end59, !dbg !211

land.lhs.true:                                    ; preds = %if.end53
  %40 = load i8, i8* %has_prefix, align 1, !dbg !212
  %conv56 = zext i8 %40 to i32, !dbg !212
  %tobool57 = icmp ne i32 %conv56, 0, !dbg !212
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !213

if.then58:                                        ; preds = %land.lhs.true
  %41 = load i8*, i8** %name_string, align 8, !dbg !214
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %41) #8, !dbg !214
  store i32 12301, i32* %status, align 4, !dbg !216
  br label %if.end59, !dbg !217

if.end59:                                         ; preds = %if.then58, %land.lhs.true, %if.end53
  %42 = load i32, i32* %status, align 4, !dbg !218
  %tobool60 = icmp ne i32 %42, 0, !dbg !218
  br i1 %tobool60, label %if.then61, label %if.end65, !dbg !220

if.then61:                                        ; preds = %if.end59
  %43 = load i8*, i8** %name_string, align 8, !dbg !221
  %tobool62 = icmp ne i8* %43, null, !dbg !221
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !224

if.then63:                                        ; preds = %if.then61
  %44 = load i8*, i8** %name_string, align 8, !dbg !225
  call void @acpi_os_free(i8* %44) #8, !dbg !225
  br label %if.end64, !dbg !227

if.end64:                                         ; preds = %if.then63, %if.then61
  %45 = load i32, i32* %status, align 4, !dbg !228
  store i32 %45, i32* %retval, align 4, !dbg !228
  br label %return, !dbg !228

if.end65:                                         ; preds = %if.end59
  %46 = load i8*, i8** %name_string, align 8, !dbg !229
  %47 = load i8**, i8*** %out_name_string.addr, align 8, !dbg !230
  store i8* %46, i8** %47, align 8, !dbg !231
  %48 = load i8*, i8** %aml_address, align 8, !dbg !232
  %49 = load i8*, i8** %in_aml_address.addr, align 8, !dbg !233
  %sub.ptr.lhs.cast = ptrtoint i8* %48 to i64, !dbg !234
  %sub.ptr.rhs.cast = ptrtoint i8* %49 to i64, !dbg !234
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !234
  %conv66 = trunc i64 %sub.ptr.sub to i32, !dbg !235
  %50 = load i32*, i32** %out_name_length.addr, align 8, !dbg !236
  store i32 %conv66, i32* %50, align 4, !dbg !237
  %51 = load i32, i32* %status, align 4, !dbg !238
  store i32 %51, i32* %retval, align 4, !dbg !238
  br label %return, !dbg !238

return:                                           ; preds = %if.end65, %if.end64
  %52 = load i32, i32* %retval, align 4, !dbg !239
  ret i32 %52, !dbg !239
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_ex_allocate_name_string(i32 %prefix_count, i32 %num_name_segs) #0 !dbg !240 {
entry:
  %retval = alloca i8*, align 8
  %prefix_count.addr = alloca i32, align 4
  %num_name_segs.addr = alloca i32, align 4
  %temp_ptr = alloca i8*, align 8
  %name_string = alloca i8*, align 8
  %size_needed = alloca i32, align 4
  store i32 %prefix_count, i32* %prefix_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %prefix_count.addr, metadata !243, metadata !DIExpression()), !dbg !244
  store i32 %num_name_segs, i32* %num_name_segs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_name_segs.addr, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i8** %temp_ptr, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i8** %name_string, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata i32* %size_needed, metadata !251, metadata !DIExpression()), !dbg !252
  %0 = load i32, i32* %prefix_count.addr, align 4, !dbg !253
  %cmp = icmp eq i32 %0, -1, !dbg !255
  br i1 %cmp, label %if.then, label %if.else, !dbg !256

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %num_name_segs.addr, align 4, !dbg !257
  %mul = mul i32 4, %1, !dbg !259
  %add = add i32 1, %mul, !dbg !260
  %add1 = add i32 %add, 2, !dbg !261
  %add2 = add i32 %add1, 1, !dbg !262
  store i32 %add2, i32* %size_needed, align 4, !dbg !263
  br label %if.end, !dbg !264

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %prefix_count.addr, align 4, !dbg !265
  %3 = load i32, i32* %num_name_segs.addr, align 4, !dbg !267
  %mul3 = mul i32 4, %3, !dbg !268
  %add4 = add i32 %2, %mul3, !dbg !269
  %add5 = add i32 %add4, 2, !dbg !270
  %add6 = add i32 %add5, 1, !dbg !271
  store i32 %add6, i32* %size_needed, align 4, !dbg !272
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %size_needed, align 4, !dbg !273
  %conv = zext i32 %4 to i64, !dbg !273
  %call = call i8* @acpi_os_allocate(i64 %conv) #8, !dbg !273
  store i8* %call, i8** %name_string, align 8, !dbg !274
  %5 = load i8*, i8** %name_string, align 8, !dbg !275
  %tobool = icmp ne i8* %5, null, !dbg !275
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !277

if.then7:                                         ; preds = %if.end
  %6 = load i32, i32* %size_needed, align 4, !dbg !278
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %6) #8, !dbg !278
  store i8* null, i8** %retval, align 8, !dbg !280
  br label %return, !dbg !280

if.end8:                                          ; preds = %if.end
  %7 = load i8*, i8** %name_string, align 8, !dbg !281
  store i8* %7, i8** %temp_ptr, align 8, !dbg !282
  %8 = load i32, i32* %prefix_count.addr, align 4, !dbg !283
  %cmp9 = icmp eq i32 %8, -1, !dbg !285
  br i1 %cmp9, label %if.then11, label %if.else12, !dbg !286

if.then11:                                        ; preds = %if.end8
  %9 = load i8*, i8** %temp_ptr, align 8, !dbg !287
  %incdec.ptr = getelementptr i8, i8* %9, i32 1, !dbg !287
  store i8* %incdec.ptr, i8** %temp_ptr, align 8, !dbg !287
  store i8 92, i8* %9, align 1, !dbg !289
  br label %if.end15, !dbg !290

if.else12:                                        ; preds = %if.end8
  br label %while.cond, !dbg !291

while.cond:                                       ; preds = %while.body, %if.else12
  %10 = load i32, i32* %prefix_count.addr, align 4, !dbg !293
  %dec = add i32 %10, -1, !dbg !293
  store i32 %dec, i32* %prefix_count.addr, align 4, !dbg !293
  %tobool13 = icmp ne i32 %10, 0, !dbg !291
  br i1 %tobool13, label %while.body, label %while.end, !dbg !291

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %temp_ptr, align 8, !dbg !294
  %incdec.ptr14 = getelementptr i8, i8* %11, i32 1, !dbg !294
  store i8* %incdec.ptr14, i8** %temp_ptr, align 8, !dbg !294
  store i8 94, i8* %11, align 1, !dbg !296
  br label %while.cond, !dbg !291, !llvm.loop !297

while.end:                                        ; preds = %while.cond
  br label %if.end15

if.end15:                                         ; preds = %while.end, %if.then11
  %12 = load i32, i32* %num_name_segs.addr, align 4, !dbg !299
  %cmp16 = icmp ugt i32 %12, 2, !dbg !301
  br i1 %cmp16, label %if.then18, label %if.else22, !dbg !302

if.then18:                                        ; preds = %if.end15
  %13 = load i8*, i8** %temp_ptr, align 8, !dbg !303
  %incdec.ptr19 = getelementptr i8, i8* %13, i32 1, !dbg !303
  store i8* %incdec.ptr19, i8** %temp_ptr, align 8, !dbg !303
  store i8 47, i8* %13, align 1, !dbg !305
  %14 = load i32, i32* %num_name_segs.addr, align 4, !dbg !306
  %conv20 = trunc i32 %14 to i8, !dbg !307
  %15 = load i8*, i8** %temp_ptr, align 8, !dbg !308
  %incdec.ptr21 = getelementptr i8, i8* %15, i32 1, !dbg !308
  store i8* %incdec.ptr21, i8** %temp_ptr, align 8, !dbg !308
  store i8 %conv20, i8* %15, align 1, !dbg !309
  br label %if.end28, !dbg !310

if.else22:                                        ; preds = %if.end15
  %16 = load i32, i32* %num_name_segs.addr, align 4, !dbg !311
  %cmp23 = icmp eq i32 2, %16, !dbg !313
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !314

if.then25:                                        ; preds = %if.else22
  %17 = load i8*, i8** %temp_ptr, align 8, !dbg !315
  %incdec.ptr26 = getelementptr i8, i8* %17, i32 1, !dbg !315
  store i8* %incdec.ptr26, i8** %temp_ptr, align 8, !dbg !315
  store i8 46, i8* %17, align 1, !dbg !317
  br label %if.end27, !dbg !318

if.end27:                                         ; preds = %if.then25, %if.else22
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then18
  %18 = load i8*, i8** %temp_ptr, align 8, !dbg !319
  store i8 0, i8* %18, align 1, !dbg !320
  %19 = load i8*, i8** %name_string, align 8, !dbg !321
  store i8* %19, i8** %retval, align 8, !dbg !321
  br label %return, !dbg !321

return:                                           ; preds = %if.end28, %if.then7
  %20 = load i8*, i8** %retval, align 8, !dbg !322
  ret i8* %20, !dbg !322
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ex_name_segment(i8** %in_aml_address, i8* %name_string) #0 !dbg !323 {
entry:
  %retval = alloca i32, align 4
  %in_aml_address.addr = alloca i8**, align 8
  %name_string.addr = alloca i8*, align 8
  %aml_address = alloca i8*, align 8
  %status = alloca i32, align 4
  %index = alloca i32, align 4
  %char_buf = alloca [5 x i8], align 1
  store i8** %in_aml_address, i8*** %in_aml_address.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %in_aml_address.addr, metadata !327, metadata !DIExpression()), !dbg !328
  store i8* %name_string, i8** %name_string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name_string.addr, metadata !329, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.declare(metadata i8** %aml_address, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i8**, i8*** %in_aml_address.addr, align 8, !dbg !333
  %1 = load i8*, i8** %0, align 8, !dbg !334
  store i8* %1, i8** %aml_address, align 8, !dbg !332
  call void @llvm.dbg.declare(metadata i32* %status, metadata !335, metadata !DIExpression()), !dbg !336
  store i32 0, i32* %status, align 4, !dbg !336
  call void @llvm.dbg.declare(metadata i32* %index, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata [5 x i8]* %char_buf, metadata !339, metadata !DIExpression()), !dbg !343
  %2 = load i8*, i8** %aml_address, align 8, !dbg !344
  %3 = load i8, i8* %2, align 1, !dbg !345
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %char_buf, i64 0, i64 0, !dbg !346
  store i8 %3, i8* %arrayidx, align 1, !dbg !347
  %arrayidx1 = getelementptr [5 x i8], [5 x i8]* %char_buf, i64 0, i64 0, !dbg !348
  %4 = load i8, i8* %arrayidx1, align 1, !dbg !348
  %conv = sext i8 %4 to i32, !dbg !348
  %cmp = icmp sle i32 48, %conv, !dbg !350
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !351

land.lhs.true:                                    ; preds = %entry
  %arrayidx3 = getelementptr [5 x i8], [5 x i8]* %char_buf, i64 0, i64 0, !dbg !352
  %5 = load i8, i8* %arrayidx3, align 1, !dbg !352
  %conv4 = sext i8 %5 to i32, !dbg !352
  %cmp5 = icmp sle i32 %conv4, 57, !dbg !353
  br i1 %cmp5, label %if.then, label %if.end, !dbg !354

if.then:                                          ; preds = %land.lhs.true
  %arrayidx7 = getelementptr [5 x i8], [5 x i8]* %char_buf, i64 0, i64 0, !dbg !355
  %6 = load i8, i8* %arrayidx7, align 1, !dbg !355
  %conv8 = sext i8 %6 to i32, !dbg !355
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %conv8) #8, !dbg !355
  store i32 16386, i32* %retval, align 4, !dbg !357
  br label %return, !dbg !357

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %index, align 4, !dbg !358
  br label %for.cond, !dbg !360

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %index, align 4, !dbg !361
  %cmp9 = icmp ult i32 %7, 4, !dbg !363
  br i1 %cmp9, label %land.rhs, label %land.end, !dbg !364

land.rhs:                                         ; preds = %for.cond
  %8 = load i8*, i8** %aml_address, align 8, !dbg !365
  %9 = load i8, i8* %8, align 1, !dbg !366
  %call = call zeroext i8 @acpi_ut_valid_name_char(i8 signext %9, i32 0) #8, !dbg !367
  %conv11 = zext i8 %call to i32, !dbg !368
  %tobool = icmp ne i32 %conv11, 0, !dbg !364
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ], !dbg !369
  br i1 %10, label %for.body, label %for.end, !dbg !370

for.body:                                         ; preds = %land.end
  %11 = load i8*, i8** %aml_address, align 8, !dbg !371
  %incdec.ptr = getelementptr i8, i8* %11, i32 1, !dbg !371
  store i8* %incdec.ptr, i8** %aml_address, align 8, !dbg !371
  %12 = load i8, i8* %11, align 1, !dbg !373
  %13 = load i32, i32* %index, align 4, !dbg !374
  %idxprom = zext i32 %13 to i64, !dbg !375
  %arrayidx12 = getelementptr [5 x i8], [5 x i8]* %char_buf, i64 0, i64 %idxprom, !dbg !375
  store i8 %12, i8* %arrayidx12, align 1, !dbg !376
  br label %for.inc, !dbg !377

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %index, align 4, !dbg !378
  %inc = add i32 %14, 1, !dbg !378
  store i32 %inc, i32* %index, align 4, !dbg !378
  br label %for.cond, !dbg !379, !llvm.loop !380

for.end:                                          ; preds = %land.end
  %15 = load i32, i32* %index, align 4, !dbg !382
  %cmp13 = icmp eq i32 %15, 4, !dbg !384
  br i1 %cmp13, label %if.then15, label %if.else21, !dbg !385

if.then15:                                        ; preds = %for.end
  %arrayidx16 = getelementptr [5 x i8], [5 x i8]* %char_buf, i64 0, i64 4, !dbg !386
  store i8 0, i8* %arrayidx16, align 1, !dbg !388
  %16 = load i8*, i8** %name_string.addr, align 8, !dbg !389
  %tobool17 = icmp ne i8* %16, null, !dbg !389
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !391

if.then18:                                        ; preds = %if.then15
  %17 = load i8*, i8** %name_string.addr, align 8, !dbg !392
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %char_buf, i64 0, i64 0, !dbg !394
  %call19 = call i8* @strcat(i8* %17, i8* %arraydecay) #8, !dbg !395
  br label %if.end20, !dbg !396

if.else:                                          ; preds = %if.then15
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then18
  br label %if.end28, !dbg !397

if.else21:                                        ; preds = %for.end
  %18 = load i32, i32* %index, align 4, !dbg !398
  %cmp22 = icmp eq i32 %18, 0, !dbg !400
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !401

if.then24:                                        ; preds = %if.else21
  store i32 16386, i32* %status, align 4, !dbg !402
  br label %if.end27, !dbg !404

if.else25:                                        ; preds = %if.else21
  store i32 12301, i32* %status, align 4, !dbg !405
  %19 = load i8*, i8** %aml_address, align 8, !dbg !407
  %20 = load i8, i8* %19, align 1, !dbg !407
  %conv26 = sext i8 %20 to i32, !dbg !407
  %21 = load i8*, i8** %aml_address, align 8, !dbg !407
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 180, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %conv26, i8* %21) #8, !dbg !407
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then24
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end20
  %22 = load i8*, i8** %aml_address, align 8, !dbg !408
  %23 = load i8**, i8*** %in_aml_address.addr, align 8, !dbg !409
  store i8* %22, i8** %23, align 8, !dbg !410
  %24 = load i32, i32* %status, align 4, !dbg !411
  store i32 %24, i32* %retval, align 4, !dbg !411
  br label %return, !dbg !411

return:                                           ; preds = %if.end28, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !412
  ret i32 %25, !dbg !412
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !413 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !419
  call void @kfree(i8* %0) #8, !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate(i64 %size) #0 !dbg !422 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !425, metadata !DIExpression()), !dbg !436
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !444, metadata !DIExpression()), !dbg !445
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !446, metadata !DIExpression()), !dbg !447
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !448, metadata !DIExpression()), !dbg !449
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !450, metadata !DIExpression()), !dbg !454
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !456, metadata !DIExpression()), !dbg !460
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !462, metadata !DIExpression()), !dbg !466
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !471, metadata !DIExpression()), !dbg !472
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !473, metadata !DIExpression()), !dbg !474
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !475, metadata !DIExpression()), !dbg !476
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !477, metadata !DIExpression()), !dbg !478
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !479, metadata !DIExpression()), !dbg !480
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !481, metadata !DIExpression()), !dbg !482
  %flags.addr.i11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i11, metadata !483, metadata !DIExpression()), !dbg !484
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !485, metadata !DIExpression()), !dbg !486
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !487, metadata !DIExpression()), !dbg !493
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load i64, i64* %size.addr, align 8, !dbg !499
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !500, metadata !DIExpression()), !dbg !501
  br label %do.body, !dbg !501

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !502, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !506, metadata !DIExpression()), !dbg !505
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !505
  %conv = zext i1 %cmp to i32, !dbg !505
  store i32 1, i32* %tmp, align 4, !dbg !505
  %1 = load i32, i32* %tmp, align 4, !dbg !505
  %call = call i64 @arch_local_save_flags() #8, !dbg !507
  store i64 %call, i64* %_flags, align 8, !dbg !507
  br label %do.end, !dbg !507

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !508, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !511, metadata !DIExpression()), !dbg !510
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !510
  %conv6 = zext i1 %cmp5 to i32, !dbg !510
  store i32 1, i32* %tmp7, align 4, !dbg !510
  %2 = load i32, i32* %tmp7, align 4, !dbg !510
  %3 = load i64, i64* %_flags, align 8, !dbg !512
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !513
  %and.i = and i64 %4, 512, !dbg !514
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !515
  %lnot.i = xor i1 %tobool.i, true, !dbg !515
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !515
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !512
  %5 = load i32, i32* %tmp8, align 4, !dbg !512
  store i32 %5, i32* %tmp1, align 4, !dbg !507
  %6 = load i32, i32* %tmp1, align 4, !dbg !501
  %tobool = icmp ne i32 %6, 0, !dbg !516
  %7 = zext i1 %tobool to i64, !dbg !516
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !516
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %cond, i32* %flags.addr.i11, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !517
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #7, !dbg !518
  br i1 %9, label %if.then.i, label %if.end9.i, !dbg !519

if.then.i:                                        ; preds = %do.end
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !520
  %cmp.i = icmp ugt i64 %10, 8192, !dbg !521
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !522

if.then1.i:                                       ; preds = %if.then.i
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !523
  %12 = load i32, i32* %flags.addr.i11, align 4, !dbg !524
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !525
  %call.i.i = call i32 @get_order(i64 %13) #9, !dbg !526
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !480
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !527
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !528
  %16 = load i32, i32* %order.i.i, align 4, !dbg !529
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !530
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !531
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !532
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #10, !dbg !533
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !533
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !533
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !533
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !533
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !534
  br label %kmalloc.exit, !dbg !534

if.end.i:                                         ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !535
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !536
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !536
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !538

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !539
  br label %kmalloc_index.exit.i, !dbg !539

if.end.i.i:                                       ; preds = %if.end.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !540
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !542
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !543

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !544
  br label %kmalloc_index.exit.i, !dbg !544

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !545
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !547
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !548

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !549
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !550
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !551

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !552
  br label %kmalloc_index.exit.i, !dbg !552

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !553
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !555
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !556

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !557
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !558
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !559

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !560
  br label %kmalloc_index.exit.i, !dbg !560

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !561
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !563
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !564

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !565
  br label %kmalloc_index.exit.i, !dbg !565

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !566
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !568
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !569

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !570
  br label %kmalloc_index.exit.i, !dbg !570

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !571
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !573
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !574

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !575
  br label %kmalloc_index.exit.i, !dbg !575

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !576
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !578
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !579

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !580
  br label %kmalloc_index.exit.i, !dbg !580

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !581
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !583
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !584

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !585
  br label %kmalloc_index.exit.i, !dbg !585

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !586
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !588
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !589

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !590
  br label %kmalloc_index.exit.i, !dbg !590

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !591
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !593
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !594

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !595
  br label %kmalloc_index.exit.i, !dbg !595

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !596
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !598
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !599

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !600
  br label %kmalloc_index.exit.i, !dbg !600

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !601
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !603
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !604

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !605
  br label %kmalloc_index.exit.i, !dbg !605

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !606
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !608
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !609

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !610
  br label %kmalloc_index.exit.i, !dbg !610

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !611
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !613
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !614

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !615
  br label %kmalloc_index.exit.i, !dbg !615

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !616
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !618
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !619

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !620
  br label %kmalloc_index.exit.i, !dbg !620

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !621
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !623
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !624

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !625
  br label %kmalloc_index.exit.i, !dbg !625

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !626
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !628
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !629

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !630
  br label %kmalloc_index.exit.i, !dbg !630

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !631
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !633
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !634

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !635
  br label %kmalloc_index.exit.i, !dbg !635

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !636
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !638
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !639

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !640
  br label %kmalloc_index.exit.i, !dbg !640

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !641
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !643
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !644

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !645
  br label %kmalloc_index.exit.i, !dbg !645

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !646
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !648
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !649

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !650
  br label %kmalloc_index.exit.i, !dbg !650

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !651
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !653
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !654

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !655
  br label %kmalloc_index.exit.i, !dbg !655

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !656
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !658
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !659

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !660
  br label %kmalloc_index.exit.i, !dbg !660

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !661
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !663
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !664

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !665
  br label %kmalloc_index.exit.i, !dbg !665

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !666
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !668
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !669

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !670
  br label %kmalloc_index.exit.i, !dbg !670

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !671
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !673
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !674

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !675
  br label %kmalloc_index.exit.i, !dbg !675

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !676
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !678
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !679

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !680
  br label %kmalloc_index.exit.i, !dbg !680

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !681, !srcloc !684
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !685, !srcloc !688
  unreachable, !dbg !689

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !690
  store i32 %51, i32* %index.i, align 4, !dbg !691
  %52 = load i32, i32* %index.i, align 4, !dbg !692
  %tobool.i12 = icmp ne i32 %52, 0, !dbg !692
  br i1 %tobool.i12, label %if.end4.i, label %if.then3.i, !dbg !694

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !695
  br label %kmalloc.exit, !dbg !695

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i11, align 4, !dbg !696
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !697
  %and.i.i = and i32 %54, 17, !dbg !697
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !697
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !697
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !697
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !697
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !699

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !700
  br label %kmalloc_type.exit.i, !dbg !700

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !701
  %and2.i.i = and i32 %55, 1, !dbg !702
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !701
  %56 = zext i1 %tobool3.i.i to i64, !dbg !701
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !701
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !703
  br label %kmalloc_type.exit.i, !dbg !703

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !704
  %idxprom.i = zext i32 %57 to i64, !dbg !705
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !705
  %58 = load i32, i32* %index.i, align 4, !dbg !706
  %idxprom6.i = zext i32 %58 to i64, !dbg !705
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !705
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !705
  %60 = load i32, i32* %flags.addr.i11, align 4, !dbg !707
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !708
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !709
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !710
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #10, !dbg !711
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !711
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !711
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !711
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !711
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !449
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !712
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !713
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !714
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !715
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #10, !dbg !716
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !717
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !718
  store i8* %68, i8** %retval.i, align 8, !dbg !719
  br label %kmalloc.exit, !dbg !719

if.end9.i:                                        ; preds = %do.end
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !720
  %70 = load i32, i32* %flags.addr.i11, align 4, !dbg !721
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #10, !dbg !722
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !722
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !722
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !722
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !722
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !723
  br label %kmalloc.exit, !dbg !723

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i, align 8, !dbg !724
  ret i8* %71, !dbg !725
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !726 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !730, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !733, metadata !DIExpression()), !dbg !732
  %0 = load i64, i64* %__edi, align 8, !dbg !732
  store i64 %0, i64* %__edi, align 8, !dbg !732
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !734, metadata !DIExpression()), !dbg !732
  %1 = load i64, i64* %__esi, align 8, !dbg !732
  store i64 %1, i64* %__esi, align 8, !dbg !732
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !735, metadata !DIExpression()), !dbg !732
  %2 = load i64, i64* %__edx, align 8, !dbg !732
  store i64 %2, i64* %__edx, align 8, !dbg !732
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !736, metadata !DIExpression()), !dbg !732
  %3 = load i64, i64* %__ecx, align 8, !dbg !732
  store i64 %3, i64* %__ecx, align 8, !dbg !732
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !737, metadata !DIExpression()), !dbg !732
  %4 = load i64, i64* %__eax, align 8, !dbg !732
  store i64 %4, i64* %__eax, align 8, !dbg !732
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !732
  %6 = call i64 @llvm.read_register.i64(metadata !41), !dbg !738
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !738, !srcloc !741
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !738
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !738
  store i64 %asmresult, i64* %__eax, align 8, !dbg !738
  call void @llvm.write_register.i64(metadata !41, i64 %asmresult1), !dbg !738
  %8 = load i64, i64* %__eax, align 8, !dbg !738
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !742, metadata !DIExpression()), !dbg !744
  store i64 -1, i64* %__mask, align 8, !dbg !744
  %9 = load i64, i64* %__mask, align 8, !dbg !744
  store i64 %9, i64* %tmp, align 8, !dbg !744
  %10 = load i64, i64* %tmp, align 8, !dbg !744
  %and = and i64 %8, %10, !dbg !738
  store i64 %and, i64* %__ret, align 8, !dbg !738
  %11 = load i64, i64* %__ret, align 8, !dbg !732
  store i64 %11, i64* %tmp2, align 8, !dbg !745
  %12 = load i64, i64* %tmp2, align 8, !dbg !732
  ret i64 %12, !dbg !746
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !747 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !749, metadata !DIExpression()), !dbg !754
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !756, metadata !DIExpression()), !dbg !757
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !758, metadata !DIExpression()), !dbg !759
  %0 = load i64, i64* %size.addr, align 8, !dbg !760
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !762
  br i1 %1, label %if.then, label %if.end447, !dbg !763

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !764
  %tobool = icmp ne i64 %2, 0, !dbg !764
  br i1 %tobool, label %if.end, label %if.then1, !dbg !767

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !768
  br label %return, !dbg !768

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !769
  %cmp = icmp ult i64 %3, 4096, !dbg !771
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !772

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !773
  br label %return, !dbg !773

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub = sub i64 %4, 1, !dbg !774
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !774
  br i1 %5, label %cond.true, label %cond.false442, !dbg !774

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub4 = sub i64 %6, 1, !dbg !774
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !774
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !774

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub6 = sub i64 %8, 1, !dbg !774
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !774
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !774

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !774

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub9 = sub i64 %9, 1, !dbg !774
  %and = and i64 %sub9, -9223372036854775808, !dbg !774
  %tobool10 = icmp ne i64 %and, 0, !dbg !774
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !774

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !774

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub13 = sub i64 %10, 1, !dbg !774
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !774
  %tobool15 = icmp ne i64 %and14, 0, !dbg !774
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !774

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !774

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub18 = sub i64 %11, 1, !dbg !774
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !774
  %tobool20 = icmp ne i64 %and19, 0, !dbg !774
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !774

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !774

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub23 = sub i64 %12, 1, !dbg !774
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !774
  %tobool25 = icmp ne i64 %and24, 0, !dbg !774
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !774

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !774

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub28 = sub i64 %13, 1, !dbg !774
  %and29 = and i64 %sub28, 576460752303423488, !dbg !774
  %tobool30 = icmp ne i64 %and29, 0, !dbg !774
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !774

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !774

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub33 = sub i64 %14, 1, !dbg !774
  %and34 = and i64 %sub33, 288230376151711744, !dbg !774
  %tobool35 = icmp ne i64 %and34, 0, !dbg !774
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !774

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !774

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub38 = sub i64 %15, 1, !dbg !774
  %and39 = and i64 %sub38, 144115188075855872, !dbg !774
  %tobool40 = icmp ne i64 %and39, 0, !dbg !774
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !774

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !774

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub43 = sub i64 %16, 1, !dbg !774
  %and44 = and i64 %sub43, 72057594037927936, !dbg !774
  %tobool45 = icmp ne i64 %and44, 0, !dbg !774
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !774

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !774

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub48 = sub i64 %17, 1, !dbg !774
  %and49 = and i64 %sub48, 36028797018963968, !dbg !774
  %tobool50 = icmp ne i64 %and49, 0, !dbg !774
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !774

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !774

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub53 = sub i64 %18, 1, !dbg !774
  %and54 = and i64 %sub53, 18014398509481984, !dbg !774
  %tobool55 = icmp ne i64 %and54, 0, !dbg !774
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !774

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !774

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub58 = sub i64 %19, 1, !dbg !774
  %and59 = and i64 %sub58, 9007199254740992, !dbg !774
  %tobool60 = icmp ne i64 %and59, 0, !dbg !774
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !774

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !774

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub63 = sub i64 %20, 1, !dbg !774
  %and64 = and i64 %sub63, 4503599627370496, !dbg !774
  %tobool65 = icmp ne i64 %and64, 0, !dbg !774
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !774

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !774

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub68 = sub i64 %21, 1, !dbg !774
  %and69 = and i64 %sub68, 2251799813685248, !dbg !774
  %tobool70 = icmp ne i64 %and69, 0, !dbg !774
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !774

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !774

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub73 = sub i64 %22, 1, !dbg !774
  %and74 = and i64 %sub73, 1125899906842624, !dbg !774
  %tobool75 = icmp ne i64 %and74, 0, !dbg !774
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !774

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !774

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub78 = sub i64 %23, 1, !dbg !774
  %and79 = and i64 %sub78, 562949953421312, !dbg !774
  %tobool80 = icmp ne i64 %and79, 0, !dbg !774
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !774

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !774

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub83 = sub i64 %24, 1, !dbg !774
  %and84 = and i64 %sub83, 281474976710656, !dbg !774
  %tobool85 = icmp ne i64 %and84, 0, !dbg !774
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !774

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !774

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub88 = sub i64 %25, 1, !dbg !774
  %and89 = and i64 %sub88, 140737488355328, !dbg !774
  %tobool90 = icmp ne i64 %and89, 0, !dbg !774
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !774

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !774

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub93 = sub i64 %26, 1, !dbg !774
  %and94 = and i64 %sub93, 70368744177664, !dbg !774
  %tobool95 = icmp ne i64 %and94, 0, !dbg !774
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !774

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !774

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub98 = sub i64 %27, 1, !dbg !774
  %and99 = and i64 %sub98, 35184372088832, !dbg !774
  %tobool100 = icmp ne i64 %and99, 0, !dbg !774
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !774

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !774

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub103 = sub i64 %28, 1, !dbg !774
  %and104 = and i64 %sub103, 17592186044416, !dbg !774
  %tobool105 = icmp ne i64 %and104, 0, !dbg !774
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !774

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !774

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub108 = sub i64 %29, 1, !dbg !774
  %and109 = and i64 %sub108, 8796093022208, !dbg !774
  %tobool110 = icmp ne i64 %and109, 0, !dbg !774
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !774

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !774

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub113 = sub i64 %30, 1, !dbg !774
  %and114 = and i64 %sub113, 4398046511104, !dbg !774
  %tobool115 = icmp ne i64 %and114, 0, !dbg !774
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !774

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !774

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub118 = sub i64 %31, 1, !dbg !774
  %and119 = and i64 %sub118, 2199023255552, !dbg !774
  %tobool120 = icmp ne i64 %and119, 0, !dbg !774
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !774

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !774

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub123 = sub i64 %32, 1, !dbg !774
  %and124 = and i64 %sub123, 1099511627776, !dbg !774
  %tobool125 = icmp ne i64 %and124, 0, !dbg !774
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !774

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !774

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub128 = sub i64 %33, 1, !dbg !774
  %and129 = and i64 %sub128, 549755813888, !dbg !774
  %tobool130 = icmp ne i64 %and129, 0, !dbg !774
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !774

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !774

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub133 = sub i64 %34, 1, !dbg !774
  %and134 = and i64 %sub133, 274877906944, !dbg !774
  %tobool135 = icmp ne i64 %and134, 0, !dbg !774
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !774

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !774

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub138 = sub i64 %35, 1, !dbg !774
  %and139 = and i64 %sub138, 137438953472, !dbg !774
  %tobool140 = icmp ne i64 %and139, 0, !dbg !774
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !774

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !774

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub143 = sub i64 %36, 1, !dbg !774
  %and144 = and i64 %sub143, 68719476736, !dbg !774
  %tobool145 = icmp ne i64 %and144, 0, !dbg !774
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !774

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !774

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub148 = sub i64 %37, 1, !dbg !774
  %and149 = and i64 %sub148, 34359738368, !dbg !774
  %tobool150 = icmp ne i64 %and149, 0, !dbg !774
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !774

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !774

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub153 = sub i64 %38, 1, !dbg !774
  %and154 = and i64 %sub153, 17179869184, !dbg !774
  %tobool155 = icmp ne i64 %and154, 0, !dbg !774
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !774

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !774

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub158 = sub i64 %39, 1, !dbg !774
  %and159 = and i64 %sub158, 8589934592, !dbg !774
  %tobool160 = icmp ne i64 %and159, 0, !dbg !774
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !774

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !774

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub163 = sub i64 %40, 1, !dbg !774
  %and164 = and i64 %sub163, 4294967296, !dbg !774
  %tobool165 = icmp ne i64 %and164, 0, !dbg !774
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !774

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !774

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub168 = sub i64 %41, 1, !dbg !774
  %and169 = and i64 %sub168, 2147483648, !dbg !774
  %tobool170 = icmp ne i64 %and169, 0, !dbg !774
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !774

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !774

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub173 = sub i64 %42, 1, !dbg !774
  %and174 = and i64 %sub173, 1073741824, !dbg !774
  %tobool175 = icmp ne i64 %and174, 0, !dbg !774
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !774

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !774

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub178 = sub i64 %43, 1, !dbg !774
  %and179 = and i64 %sub178, 536870912, !dbg !774
  %tobool180 = icmp ne i64 %and179, 0, !dbg !774
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !774

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !774

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub183 = sub i64 %44, 1, !dbg !774
  %and184 = and i64 %sub183, 268435456, !dbg !774
  %tobool185 = icmp ne i64 %and184, 0, !dbg !774
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !774

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !774

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub188 = sub i64 %45, 1, !dbg !774
  %and189 = and i64 %sub188, 134217728, !dbg !774
  %tobool190 = icmp ne i64 %and189, 0, !dbg !774
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !774

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !774

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub193 = sub i64 %46, 1, !dbg !774
  %and194 = and i64 %sub193, 67108864, !dbg !774
  %tobool195 = icmp ne i64 %and194, 0, !dbg !774
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !774

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !774

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub198 = sub i64 %47, 1, !dbg !774
  %and199 = and i64 %sub198, 33554432, !dbg !774
  %tobool200 = icmp ne i64 %and199, 0, !dbg !774
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !774

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !774

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub203 = sub i64 %48, 1, !dbg !774
  %and204 = and i64 %sub203, 16777216, !dbg !774
  %tobool205 = icmp ne i64 %and204, 0, !dbg !774
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !774

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !774

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub208 = sub i64 %49, 1, !dbg !774
  %and209 = and i64 %sub208, 8388608, !dbg !774
  %tobool210 = icmp ne i64 %and209, 0, !dbg !774
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !774

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !774

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub213 = sub i64 %50, 1, !dbg !774
  %and214 = and i64 %sub213, 4194304, !dbg !774
  %tobool215 = icmp ne i64 %and214, 0, !dbg !774
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !774

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !774

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub218 = sub i64 %51, 1, !dbg !774
  %and219 = and i64 %sub218, 2097152, !dbg !774
  %tobool220 = icmp ne i64 %and219, 0, !dbg !774
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !774

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !774

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub223 = sub i64 %52, 1, !dbg !774
  %and224 = and i64 %sub223, 1048576, !dbg !774
  %tobool225 = icmp ne i64 %and224, 0, !dbg !774
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !774

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !774

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub228 = sub i64 %53, 1, !dbg !774
  %and229 = and i64 %sub228, 524288, !dbg !774
  %tobool230 = icmp ne i64 %and229, 0, !dbg !774
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !774

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !774

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub233 = sub i64 %54, 1, !dbg !774
  %and234 = and i64 %sub233, 262144, !dbg !774
  %tobool235 = icmp ne i64 %and234, 0, !dbg !774
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !774

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !774

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub238 = sub i64 %55, 1, !dbg !774
  %and239 = and i64 %sub238, 131072, !dbg !774
  %tobool240 = icmp ne i64 %and239, 0, !dbg !774
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !774

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !774

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub243 = sub i64 %56, 1, !dbg !774
  %and244 = and i64 %sub243, 65536, !dbg !774
  %tobool245 = icmp ne i64 %and244, 0, !dbg !774
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !774

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !774

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub248 = sub i64 %57, 1, !dbg !774
  %and249 = and i64 %sub248, 32768, !dbg !774
  %tobool250 = icmp ne i64 %and249, 0, !dbg !774
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !774

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !774

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub253 = sub i64 %58, 1, !dbg !774
  %and254 = and i64 %sub253, 16384, !dbg !774
  %tobool255 = icmp ne i64 %and254, 0, !dbg !774
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !774

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !774

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub258 = sub i64 %59, 1, !dbg !774
  %and259 = and i64 %sub258, 8192, !dbg !774
  %tobool260 = icmp ne i64 %and259, 0, !dbg !774
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !774

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !774

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub263 = sub i64 %60, 1, !dbg !774
  %and264 = and i64 %sub263, 4096, !dbg !774
  %tobool265 = icmp ne i64 %and264, 0, !dbg !774
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !774

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !774

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub268 = sub i64 %61, 1, !dbg !774
  %and269 = and i64 %sub268, 2048, !dbg !774
  %tobool270 = icmp ne i64 %and269, 0, !dbg !774
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !774

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !774

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub273 = sub i64 %62, 1, !dbg !774
  %and274 = and i64 %sub273, 1024, !dbg !774
  %tobool275 = icmp ne i64 %and274, 0, !dbg !774
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !774

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !774

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub278 = sub i64 %63, 1, !dbg !774
  %and279 = and i64 %sub278, 512, !dbg !774
  %tobool280 = icmp ne i64 %and279, 0, !dbg !774
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !774

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !774

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub283 = sub i64 %64, 1, !dbg !774
  %and284 = and i64 %sub283, 256, !dbg !774
  %tobool285 = icmp ne i64 %and284, 0, !dbg !774
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !774

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !774

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub288 = sub i64 %65, 1, !dbg !774
  %and289 = and i64 %sub288, 128, !dbg !774
  %tobool290 = icmp ne i64 %and289, 0, !dbg !774
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !774

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !774

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub293 = sub i64 %66, 1, !dbg !774
  %and294 = and i64 %sub293, 64, !dbg !774
  %tobool295 = icmp ne i64 %and294, 0, !dbg !774
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !774

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !774

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub298 = sub i64 %67, 1, !dbg !774
  %and299 = and i64 %sub298, 32, !dbg !774
  %tobool300 = icmp ne i64 %and299, 0, !dbg !774
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !774

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !774

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub303 = sub i64 %68, 1, !dbg !774
  %and304 = and i64 %sub303, 16, !dbg !774
  %tobool305 = icmp ne i64 %and304, 0, !dbg !774
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !774

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !774

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub308 = sub i64 %69, 1, !dbg !774
  %and309 = and i64 %sub308, 8, !dbg !774
  %tobool310 = icmp ne i64 %and309, 0, !dbg !774
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !774

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !774

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub313 = sub i64 %70, 1, !dbg !774
  %and314 = and i64 %sub313, 4, !dbg !774
  %tobool315 = icmp ne i64 %and314, 0, !dbg !774
  %71 = zext i1 %tobool315 to i64, !dbg !774
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !774
  br label %cond.end, !dbg !774

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !774
  br label %cond.end317, !dbg !774

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !774
  br label %cond.end319, !dbg !774

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !774
  br label %cond.end321, !dbg !774

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !774
  br label %cond.end323, !dbg !774

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !774
  br label %cond.end325, !dbg !774

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !774
  br label %cond.end327, !dbg !774

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !774
  br label %cond.end329, !dbg !774

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !774
  br label %cond.end331, !dbg !774

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !774
  br label %cond.end333, !dbg !774

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !774
  br label %cond.end335, !dbg !774

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !774
  br label %cond.end337, !dbg !774

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !774
  br label %cond.end339, !dbg !774

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !774
  br label %cond.end341, !dbg !774

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !774
  br label %cond.end343, !dbg !774

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !774
  br label %cond.end345, !dbg !774

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !774
  br label %cond.end347, !dbg !774

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !774
  br label %cond.end349, !dbg !774

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !774
  br label %cond.end351, !dbg !774

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !774
  br label %cond.end353, !dbg !774

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !774
  br label %cond.end355, !dbg !774

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !774
  br label %cond.end357, !dbg !774

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !774
  br label %cond.end359, !dbg !774

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !774
  br label %cond.end361, !dbg !774

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !774
  br label %cond.end363, !dbg !774

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !774
  br label %cond.end365, !dbg !774

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !774
  br label %cond.end367, !dbg !774

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !774
  br label %cond.end369, !dbg !774

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !774
  br label %cond.end371, !dbg !774

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !774
  br label %cond.end373, !dbg !774

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !774
  br label %cond.end375, !dbg !774

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !774
  br label %cond.end377, !dbg !774

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !774
  br label %cond.end379, !dbg !774

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !774
  br label %cond.end381, !dbg !774

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !774
  br label %cond.end383, !dbg !774

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !774
  br label %cond.end385, !dbg !774

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !774
  br label %cond.end387, !dbg !774

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !774
  br label %cond.end389, !dbg !774

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !774
  br label %cond.end391, !dbg !774

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !774
  br label %cond.end393, !dbg !774

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !774
  br label %cond.end395, !dbg !774

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !774
  br label %cond.end397, !dbg !774

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !774
  br label %cond.end399, !dbg !774

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !774
  br label %cond.end401, !dbg !774

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !774
  br label %cond.end403, !dbg !774

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !774
  br label %cond.end405, !dbg !774

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !774
  br label %cond.end407, !dbg !774

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !774
  br label %cond.end409, !dbg !774

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !774
  br label %cond.end411, !dbg !774

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !774
  br label %cond.end413, !dbg !774

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !774
  br label %cond.end415, !dbg !774

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !774
  br label %cond.end417, !dbg !774

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !774
  br label %cond.end419, !dbg !774

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !774
  br label %cond.end421, !dbg !774

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !774
  br label %cond.end423, !dbg !774

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !774
  br label %cond.end425, !dbg !774

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !774
  br label %cond.end427, !dbg !774

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !774
  br label %cond.end429, !dbg !774

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !774
  br label %cond.end431, !dbg !774

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !774
  br label %cond.end433, !dbg !774

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !774
  br label %cond.end435, !dbg !774

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !774
  br label %cond.end437, !dbg !774

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !774
  br label %cond.end440, !dbg !774

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !774

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !774
  br label %cond.end444, !dbg !774

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !774
  %sub443 = sub i64 %72, 1, !dbg !774
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !774
  br label %cond.end444, !dbg !774

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !774
  %sub446 = sub i32 %cond445, 12, !dbg !775
  %add = add i32 %sub446, 1, !dbg !776
  store i32 %add, i32* %retval, align 4, !dbg !777
  br label %return, !dbg !777

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !778
  %dec = add i64 %73, -1, !dbg !778
  store i64 %dec, i64* %size.addr, align 8, !dbg !778
  %74 = load i64, i64* %size.addr, align 8, !dbg !779
  %shr = lshr i64 %74, 12, !dbg !779
  store i64 %shr, i64* %size.addr, align 8, !dbg !779
  %75 = load i64, i64* %size.addr, align 8, !dbg !780
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !757
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !781
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !782
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !781, !srcloc !783
  store i32 %78, i32* %bitpos.i, align 4, !dbg !781
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !784
  %add.i = add i32 %79, 1, !dbg !785
  store i32 %add.i, i32* %retval, align 4, !dbg !786
  br label %return, !dbg !786

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !787
  ret i32 %80, !dbg !787
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !788 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !749, metadata !DIExpression()), !dbg !792
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !756, metadata !DIExpression()), !dbg !794
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !795, metadata !DIExpression()), !dbg !796
  %0 = load i64, i64* %n.addr, align 8, !dbg !797
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !794
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !798
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !799
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !798, !srcloc !783
  store i32 %3, i32* %bitpos.i, align 4, !dbg !798
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !800
  %add.i = add i32 %4, 1, !dbg !801
  %sub = sub i32 %add.i, 1, !dbg !802
  ret i32 %sub, !dbg !803
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !804 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !810, metadata !DIExpression()), !dbg !811
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !812, metadata !DIExpression()), !dbg !813
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !814, metadata !DIExpression()), !dbg !815
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !816, metadata !DIExpression()), !dbg !817
  %0 = load i8*, i8** %object.addr, align 8, !dbg !818
  ret i8* %0, !dbg !819
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_valid_name_char(i8 signext, i32) #2

; Function Attrs: noredzone
declare dso_local i8* @strcat(i8*, i8*) #2

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
!llvm.named.register.rsp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !36, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exnames.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !16, !20, !23, !27, !28, !30, !31, !32}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !16)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !19, line: 27, baseType: !7)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !22)
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !15, line: 127, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !17, line: 23, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !19, line: 31, baseType: !26)
!26 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !29, line: 148, baseType: !7)
!29 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!0}
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !39)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!39 = !{!40}
!40 = !DISubrange(count: 8)
!41 = !{!"rsp"}
!42 = !{i32 7, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"Code Model", i32 2}
!46 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!47 = distinct !DISubprogram(name: "acpi_ex_get_name_string", scope: !3, file: !3, line: 207, type: !48, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !54)
!48 = !DISubroutineType(types: !49)
!49 = !{!14, !50, !32, !51, !53}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !15, line: 635, baseType: !16)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!54 = !{}
!55 = !DILocalVariable(name: "data_type", arg: 1, scope: !47, file: !3, line: 207, type: !50)
!56 = !DILocation(line: 207, column: 42, scope: !47)
!57 = !DILocalVariable(name: "in_aml_address", arg: 2, scope: !47, file: !3, line: 208, type: !32)
!58 = !DILocation(line: 208, column: 9, scope: !47)
!59 = !DILocalVariable(name: "out_name_string", arg: 3, scope: !47, file: !3, line: 209, type: !51)
!60 = !DILocation(line: 209, column: 11, scope: !47)
!61 = !DILocalVariable(name: "out_name_length", arg: 4, scope: !47, file: !3, line: 209, type: !53)
!62 = !DILocation(line: 209, column: 34, scope: !47)
!63 = !DILocalVariable(name: "status", scope: !47, file: !3, line: 211, type: !14)
!64 = !DILocation(line: 211, column: 14, scope: !47)
!65 = !DILocalVariable(name: "aml_address", scope: !47, file: !3, line: 212, type: !32)
!66 = !DILocation(line: 212, column: 6, scope: !47)
!67 = !DILocation(line: 212, column: 20, scope: !47)
!68 = !DILocalVariable(name: "name_string", scope: !47, file: !3, line: 213, type: !52)
!69 = !DILocation(line: 213, column: 8, scope: !47)
!70 = !DILocalVariable(name: "num_segments", scope: !47, file: !3, line: 214, type: !16)
!71 = !DILocation(line: 214, column: 6, scope: !47)
!72 = !DILocalVariable(name: "prefix_count", scope: !47, file: !3, line: 215, type: !16)
!73 = !DILocation(line: 215, column: 6, scope: !47)
!74 = !DILocalVariable(name: "has_prefix", scope: !47, file: !3, line: 216, type: !33)
!75 = !DILocation(line: 216, column: 5, scope: !47)
!76 = !DILocation(line: 220, column: 38, scope: !77)
!77 = distinct !DILexicalBlock(scope: !47, file: !3, line: 220, column: 6)
!78 = !DILocation(line: 220, column: 35, scope: !77)
!79 = !DILocation(line: 220, column: 48, scope: !77)
!80 = !DILocation(line: 221, column: 36, scope: !77)
!81 = !DILocation(line: 221, column: 33, scope: !77)
!82 = !DILocation(line: 221, column: 46, scope: !77)
!83 = !DILocation(line: 222, column: 37, scope: !77)
!84 = !DILocation(line: 222, column: 34, scope: !77)
!85 = !DILocation(line: 220, column: 6, scope: !47)
!86 = !DILocation(line: 226, column: 17, scope: !87)
!87 = distinct !DILexicalBlock(scope: !77, file: !3, line: 222, column: 48)
!88 = !DILocation(line: 226, column: 15, scope: !87)
!89 = !DILocation(line: 227, column: 8, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !3, line: 227, column: 7)
!91 = !DILocation(line: 227, column: 7, scope: !87)
!92 = !DILocation(line: 228, column: 11, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !3, line: 227, column: 21)
!94 = !DILocation(line: 229, column: 3, scope: !93)
!95 = !DILocation(line: 231, column: 43, scope: !96)
!96 = distinct !DILexicalBlock(scope: !90, file: !3, line: 229, column: 10)
!97 = !DILocation(line: 231, column: 8, scope: !96)
!98 = !DILocation(line: 230, column: 11, scope: !96)
!99 = !DILocation(line: 233, column: 2, scope: !87)
!100 = !DILocation(line: 238, column: 12, scope: !101)
!101 = distinct !DILexicalBlock(scope: !77, file: !3, line: 233, column: 9)
!102 = !DILocation(line: 238, column: 11, scope: !101)
!103 = !DILocation(line: 238, column: 3, scope: !101)
!104 = !DILocation(line: 249, column: 15, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !3, line: 238, column: 25)
!106 = !DILocation(line: 250, column: 17, scope: !105)
!107 = !DILocation(line: 251, column: 15, scope: !105)
!108 = !DILocation(line: 252, column: 4, scope: !105)
!109 = !DILocation(line: 258, column: 4, scope: !105)
!110 = !DILocation(line: 263, column: 16, scope: !111)
!111 = distinct !DILexicalBlock(scope: !105, file: !3, line: 258, column: 7)
!112 = !DILocation(line: 264, column: 17, scope: !111)
!113 = !DILocation(line: 266, column: 4, scope: !111)
!114 = !DILocation(line: 266, column: 14, scope: !105)
!115 = !DILocation(line: 266, column: 13, scope: !105)
!116 = !DILocation(line: 266, column: 26, scope: !105)
!117 = distinct !{!117, !109, !118}
!118 = !DILocation(line: 266, column: 46, scope: !105)
!119 = !DILocation(line: 268, column: 15, scope: !105)
!120 = !DILocation(line: 269, column: 4, scope: !105)
!121 = !DILocation(line: 275, column: 4, scope: !105)
!122 = !DILocation(line: 280, column: 12, scope: !101)
!123 = !DILocation(line: 280, column: 11, scope: !101)
!124 = !DILocation(line: 280, column: 3, scope: !101)
!125 = !DILocation(line: 287, column: 15, scope: !126)
!126 = distinct !DILexicalBlock(scope: !101, file: !3, line: 280, column: 25)
!127 = !DILocation(line: 289, column: 37, scope: !126)
!128 = !DILocation(line: 289, column: 8, scope: !126)
!129 = !DILocation(line: 288, column: 16, scope: !126)
!130 = !DILocation(line: 290, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !3, line: 290, column: 8)
!132 = !DILocation(line: 290, column: 8, scope: !126)
!133 = !DILocation(line: 291, column: 12, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !3, line: 290, column: 22)
!135 = !DILocation(line: 292, column: 5, scope: !134)
!136 = !DILocation(line: 297, column: 15, scope: !126)
!137 = !DILocation(line: 300, column: 43, scope: !126)
!138 = !DILocation(line: 300, column: 8, scope: !126)
!139 = !DILocation(line: 299, column: 11, scope: !126)
!140 = !DILocation(line: 301, column: 8, scope: !141)
!141 = distinct !DILexicalBlock(scope: !126, file: !3, line: 301, column: 8)
!142 = !DILocation(line: 301, column: 8, scope: !126)
!143 = !DILocation(line: 304, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !3, line: 301, column: 30)
!145 = !DILocation(line: 303, column: 9, scope: !144)
!146 = !DILocation(line: 302, column: 12, scope: !144)
!147 = !DILocation(line: 305, column: 4, scope: !144)
!148 = !DILocation(line: 306, column: 4, scope: !126)
!149 = !DILocation(line: 316, column: 15, scope: !126)
!150 = !DILocation(line: 317, column: 20, scope: !126)
!151 = !DILocation(line: 317, column: 19, scope: !126)
!152 = !DILocation(line: 317, column: 17, scope: !126)
!153 = !DILocation(line: 320, column: 37, scope: !126)
!154 = !DILocation(line: 321, column: 9, scope: !126)
!155 = !DILocation(line: 320, column: 8, scope: !126)
!156 = !DILocation(line: 319, column: 16, scope: !126)
!157 = !DILocation(line: 322, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !126, file: !3, line: 322, column: 8)
!159 = !DILocation(line: 322, column: 8, scope: !126)
!160 = !DILocation(line: 323, column: 12, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !3, line: 322, column: 22)
!162 = !DILocation(line: 324, column: 5, scope: !161)
!163 = !DILocation(line: 329, column: 15, scope: !126)
!164 = !DILocation(line: 330, column: 15, scope: !126)
!165 = !DILocation(line: 332, column: 4, scope: !126)
!166 = !DILocation(line: 332, column: 11, scope: !126)
!167 = !DILocation(line: 332, column: 24, scope: !126)
!168 = !DILocation(line: 335, column: 12, scope: !126)
!169 = !DILocation(line: 334, column: 5, scope: !126)
!170 = !DILocation(line: 333, column: 19, scope: !126)
!171 = !DILocation(line: 335, column: 26, scope: !126)
!172 = !DILocation(line: 0, scope: !126)
!173 = !DILocation(line: 336, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !126, file: !3, line: 335, column: 36)
!175 = distinct !{!175, !165, !176}
!176 = !DILocation(line: 337, column: 4, scope: !126)
!177 = !DILocation(line: 339, column: 4, scope: !126)
!178 = !DILocation(line: 345, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !126, file: !3, line: 345, column: 8)
!180 = !DILocation(line: 345, column: 21, scope: !179)
!181 = !DILocation(line: 345, column: 8, scope: !126)
!182 = !DILocation(line: 348, column: 4, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !3, line: 345, column: 41)
!184 = !DILocation(line: 352, column: 15, scope: !126)
!185 = !DILocation(line: 354, column: 37, scope: !126)
!186 = !DILocation(line: 354, column: 8, scope: !126)
!187 = !DILocation(line: 353, column: 16, scope: !126)
!188 = !DILocation(line: 355, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !126, file: !3, line: 355, column: 8)
!190 = !DILocation(line: 355, column: 8, scope: !126)
!191 = !DILocation(line: 356, column: 12, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !3, line: 355, column: 22)
!193 = !DILocation(line: 357, column: 5, scope: !192)
!194 = !DILocation(line: 360, column: 4, scope: !126)
!195 = !DILocation(line: 367, column: 37, scope: !126)
!196 = !DILocation(line: 367, column: 8, scope: !126)
!197 = !DILocation(line: 366, column: 16, scope: !126)
!198 = !DILocation(line: 368, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !126, file: !3, line: 368, column: 8)
!200 = !DILocation(line: 368, column: 8, scope: !126)
!201 = !DILocation(line: 369, column: 12, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !3, line: 368, column: 22)
!203 = !DILocation(line: 370, column: 5, scope: !202)
!204 = !DILocation(line: 374, column: 43, scope: !126)
!205 = !DILocation(line: 374, column: 8, scope: !126)
!206 = !DILocation(line: 373, column: 11, scope: !126)
!207 = !DILocation(line: 375, column: 4, scope: !126)
!208 = !DILocation(line: 379, column: 25, scope: !209)
!209 = distinct !DILexicalBlock(scope: !47, file: !3, line: 379, column: 6)
!210 = !DILocation(line: 379, column: 22, scope: !209)
!211 = !DILocation(line: 379, column: 32, scope: !209)
!212 = !DILocation(line: 379, column: 35, scope: !209)
!213 = !DILocation(line: 379, column: 6, scope: !47)
!214 = !DILocation(line: 383, column: 3, scope: !215)
!215 = distinct !DILexicalBlock(scope: !209, file: !3, line: 379, column: 47)
!216 = !DILocation(line: 384, column: 10, scope: !215)
!217 = !DILocation(line: 385, column: 2, scope: !215)
!218 = !DILocation(line: 387, column: 6, scope: !219)
!219 = distinct !DILexicalBlock(scope: !47, file: !3, line: 387, column: 6)
!220 = !DILocation(line: 387, column: 6, scope: !47)
!221 = !DILocation(line: 388, column: 7, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 388, column: 7)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 387, column: 28)
!224 = !DILocation(line: 388, column: 7, scope: !223)
!225 = !DILocation(line: 389, column: 4, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !3, line: 388, column: 20)
!227 = !DILocation(line: 390, column: 3, scope: !226)
!228 = !DILocation(line: 391, column: 3, scope: !223)
!229 = !DILocation(line: 394, column: 21, scope: !47)
!230 = !DILocation(line: 394, column: 3, scope: !47)
!231 = !DILocation(line: 394, column: 19, scope: !47)
!232 = !DILocation(line: 395, column: 28, scope: !47)
!233 = !DILocation(line: 395, column: 42, scope: !47)
!234 = !DILocation(line: 395, column: 40, scope: !47)
!235 = !DILocation(line: 395, column: 21, scope: !47)
!236 = !DILocation(line: 395, column: 3, scope: !47)
!237 = !DILocation(line: 395, column: 19, scope: !47)
!238 = !DILocation(line: 397, column: 2, scope: !47)
!239 = !DILocation(line: 398, column: 1, scope: !47)
!240 = distinct !DISubprogram(name: "acpi_ex_allocate_name_string", scope: !3, file: !3, line: 39, type: !241, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!241 = !DISubroutineType(types: !242)
!242 = !{!52, !16, !16}
!243 = !DILocalVariable(name: "prefix_count", arg: 1, scope: !240, file: !3, line: 39, type: !16)
!244 = !DILocation(line: 39, column: 47, scope: !240)
!245 = !DILocalVariable(name: "num_name_segs", arg: 2, scope: !240, file: !3, line: 39, type: !16)
!246 = !DILocation(line: 39, column: 65, scope: !240)
!247 = !DILocalVariable(name: "temp_ptr", scope: !240, file: !3, line: 41, type: !52)
!248 = !DILocation(line: 41, column: 8, scope: !240)
!249 = !DILocalVariable(name: "name_string", scope: !240, file: !3, line: 42, type: !52)
!250 = !DILocation(line: 42, column: 8, scope: !240)
!251 = !DILocalVariable(name: "size_needed", scope: !240, file: !3, line: 43, type: !16)
!252 = !DILocation(line: 43, column: 6, scope: !240)
!253 = !DILocation(line: 52, column: 6, scope: !254)
!254 = distinct !DILexicalBlock(scope: !240, file: !3, line: 52, column: 6)
!255 = !DILocation(line: 52, column: 19, scope: !254)
!256 = !DILocation(line: 52, column: 6, scope: !240)
!257 = !DILocation(line: 56, column: 42, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 52, column: 39)
!259 = !DILocation(line: 56, column: 40, scope: !258)
!260 = !DILocation(line: 56, column: 19, scope: !258)
!261 = !DILocation(line: 56, column: 57, scope: !258)
!262 = !DILocation(line: 56, column: 61, scope: !258)
!263 = !DILocation(line: 56, column: 15, scope: !258)
!264 = !DILocation(line: 57, column: 2, scope: !258)
!265 = !DILocation(line: 59, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !254, file: !3, line: 57, column: 9)
!267 = !DILocation(line: 59, column: 43, scope: !266)
!268 = !DILocation(line: 59, column: 41, scope: !266)
!269 = !DILocation(line: 59, column: 20, scope: !266)
!270 = !DILocation(line: 59, column: 58, scope: !266)
!271 = !DILocation(line: 59, column: 62, scope: !266)
!272 = !DILocation(line: 58, column: 15, scope: !266)
!273 = !DILocation(line: 66, column: 16, scope: !240)
!274 = !DILocation(line: 66, column: 14, scope: !240)
!275 = !DILocation(line: 67, column: 7, scope: !276)
!276 = distinct !DILexicalBlock(scope: !240, file: !3, line: 67, column: 6)
!277 = !DILocation(line: 67, column: 6, scope: !240)
!278 = !DILocation(line: 68, column: 3, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !3, line: 67, column: 20)
!280 = !DILocation(line: 70, column: 3, scope: !279)
!281 = !DILocation(line: 73, column: 13, scope: !240)
!282 = !DILocation(line: 73, column: 11, scope: !240)
!283 = !DILocation(line: 77, column: 6, scope: !284)
!284 = distinct !DILexicalBlock(scope: !240, file: !3, line: 77, column: 6)
!285 = !DILocation(line: 77, column: 19, scope: !284)
!286 = !DILocation(line: 77, column: 6, scope: !240)
!287 = !DILocation(line: 78, column: 12, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !3, line: 77, column: 39)
!289 = !DILocation(line: 78, column: 15, scope: !288)
!290 = !DILocation(line: 79, column: 2, scope: !288)
!291 = !DILocation(line: 80, column: 3, scope: !292)
!292 = distinct !DILexicalBlock(scope: !284, file: !3, line: 79, column: 9)
!293 = !DILocation(line: 80, column: 22, scope: !292)
!294 = !DILocation(line: 81, column: 13, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !3, line: 80, column: 26)
!296 = !DILocation(line: 81, column: 16, scope: !295)
!297 = distinct !{!297, !291, !298}
!298 = !DILocation(line: 82, column: 3, scope: !292)
!299 = !DILocation(line: 87, column: 6, scope: !300)
!300 = distinct !DILexicalBlock(scope: !240, file: !3, line: 87, column: 6)
!301 = !DILocation(line: 87, column: 20, scope: !300)
!302 = !DILocation(line: 87, column: 6, scope: !240)
!303 = !DILocation(line: 91, column: 12, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !3, line: 87, column: 25)
!305 = !DILocation(line: 91, column: 15, scope: !304)
!306 = !DILocation(line: 92, column: 23, scope: !304)
!307 = !DILocation(line: 92, column: 17, scope: !304)
!308 = !DILocation(line: 92, column: 12, scope: !304)
!309 = !DILocation(line: 92, column: 15, scope: !304)
!310 = !DILocation(line: 93, column: 2, scope: !304)
!311 = !DILocation(line: 93, column: 18, scope: !312)
!312 = distinct !DILexicalBlock(scope: !300, file: !3, line: 93, column: 13)
!313 = !DILocation(line: 93, column: 15, scope: !312)
!314 = !DILocation(line: 93, column: 13, scope: !300)
!315 = !DILocation(line: 97, column: 12, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !3, line: 93, column: 33)
!317 = !DILocation(line: 97, column: 15, scope: !316)
!318 = !DILocation(line: 98, column: 2, scope: !316)
!319 = !DILocation(line: 104, column: 3, scope: !240)
!320 = !DILocation(line: 104, column: 12, scope: !240)
!321 = !DILocation(line: 106, column: 2, scope: !240)
!322 = !DILocation(line: 107, column: 1, scope: !240)
!323 = distinct !DISubprogram(name: "acpi_ex_name_segment", scope: !3, file: !3, line: 123, type: !324, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!324 = !DISubroutineType(types: !325)
!325 = !{!14, !326, !52}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!327 = !DILocalVariable(name: "in_aml_address", arg: 1, scope: !323, file: !3, line: 123, type: !326)
!328 = !DILocation(line: 123, column: 47, scope: !323)
!329 = !DILocalVariable(name: "name_string", arg: 2, scope: !323, file: !3, line: 123, type: !52)
!330 = !DILocation(line: 123, column: 69, scope: !323)
!331 = !DILocalVariable(name: "aml_address", scope: !323, file: !3, line: 125, type: !52)
!332 = !DILocation(line: 125, column: 8, scope: !323)
!333 = !DILocation(line: 125, column: 31, scope: !323)
!334 = !DILocation(line: 125, column: 30, scope: !323)
!335 = !DILocalVariable(name: "status", scope: !323, file: !3, line: 126, type: !14)
!336 = !DILocation(line: 126, column: 14, scope: !323)
!337 = !DILocalVariable(name: "index", scope: !323, file: !3, line: 127, type: !16)
!338 = !DILocation(line: 127, column: 6, scope: !323)
!339 = !DILocalVariable(name: "char_buf", scope: !323, file: !3, line: 128, type: !340)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 40, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 5)
!343 = !DILocation(line: 128, column: 7, scope: !323)
!344 = !DILocation(line: 136, column: 17, scope: !323)
!345 = !DILocation(line: 136, column: 16, scope: !323)
!346 = !DILocation(line: 136, column: 2, scope: !323)
!347 = !DILocation(line: 136, column: 14, scope: !323)
!348 = !DILocation(line: 138, column: 13, scope: !349)
!349 = distinct !DILexicalBlock(scope: !323, file: !3, line: 138, column: 6)
!350 = !DILocation(line: 138, column: 10, scope: !349)
!351 = !DILocation(line: 138, column: 25, scope: !349)
!352 = !DILocation(line: 138, column: 28, scope: !349)
!353 = !DILocation(line: 138, column: 40, scope: !349)
!354 = !DILocation(line: 138, column: 6, scope: !323)
!355 = !DILocation(line: 139, column: 3, scope: !356)
!356 = distinct !DILexicalBlock(scope: !349, file: !3, line: 138, column: 48)
!357 = !DILocation(line: 140, column: 3, scope: !356)
!358 = !DILocation(line: 143, column: 13, scope: !359)
!359 = distinct !DILexicalBlock(scope: !323, file: !3, line: 143, column: 2)
!360 = !DILocation(line: 143, column: 7, scope: !359)
!361 = !DILocation(line: 144, column: 8, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !3, line: 143, column: 2)
!363 = !DILocation(line: 144, column: 14, scope: !362)
!364 = !DILocation(line: 145, column: 7, scope: !362)
!365 = !DILocation(line: 145, column: 36, scope: !362)
!366 = !DILocation(line: 145, column: 35, scope: !362)
!367 = !DILocation(line: 145, column: 11, scope: !362)
!368 = !DILocation(line: 145, column: 10, scope: !362)
!369 = !DILocation(line: 0, scope: !362)
!370 = !DILocation(line: 143, column: 2, scope: !359)
!371 = !DILocation(line: 146, column: 33, scope: !372)
!372 = distinct !DILexicalBlock(scope: !362, file: !3, line: 145, column: 63)
!373 = !DILocation(line: 146, column: 21, scope: !372)
!374 = !DILocation(line: 146, column: 12, scope: !372)
!375 = !DILocation(line: 146, column: 3, scope: !372)
!376 = !DILocation(line: 146, column: 19, scope: !372)
!377 = !DILocation(line: 147, column: 2, scope: !372)
!378 = !DILocation(line: 145, column: 59, scope: !362)
!379 = !DILocation(line: 143, column: 2, scope: !362)
!380 = distinct !{!380, !370, !381}
!381 = !DILocation(line: 147, column: 2, scope: !359)
!382 = !DILocation(line: 151, column: 6, scope: !383)
!383 = distinct !DILexicalBlock(scope: !323, file: !3, line: 151, column: 6)
!384 = !DILocation(line: 151, column: 12, scope: !383)
!385 = !DILocation(line: 151, column: 6, scope: !323)
!386 = !DILocation(line: 155, column: 3, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !3, line: 151, column: 18)
!388 = !DILocation(line: 155, column: 15, scope: !387)
!389 = !DILocation(line: 157, column: 7, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !3, line: 157, column: 7)
!391 = !DILocation(line: 157, column: 7, scope: !387)
!392 = !DILocation(line: 160, column: 11, scope: !393)
!393 = distinct !DILexicalBlock(scope: !390, file: !3, line: 157, column: 20)
!394 = !DILocation(line: 160, column: 24, scope: !393)
!395 = !DILocation(line: 160, column: 4, scope: !393)
!396 = !DILocation(line: 161, column: 3, scope: !393)
!397 = !DILocation(line: 165, column: 2, scope: !387)
!398 = !DILocation(line: 165, column: 13, scope: !399)
!399 = distinct !DILexicalBlock(scope: !383, file: !3, line: 165, column: 13)
!400 = !DILocation(line: 165, column: 19, scope: !399)
!401 = !DILocation(line: 165, column: 13, scope: !383)
!402 = !DILocation(line: 173, column: 10, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !3, line: 165, column: 25)
!404 = !DILocation(line: 174, column: 2, scope: !403)
!405 = !DILocation(line: 179, column: 10, scope: !406)
!406 = distinct !DILexicalBlock(scope: !399, file: !3, line: 174, column: 9)
!407 = !DILocation(line: 180, column: 3, scope: !406)
!408 = !DILocation(line: 185, column: 20, scope: !323)
!409 = !DILocation(line: 185, column: 3, scope: !323)
!410 = !DILocation(line: 185, column: 18, scope: !323)
!411 = !DILocation(line: 186, column: 2, scope: !323)
!412 = !DILocation(line: 187, column: 1, scope: !323)
!413 = distinct !DISubprogram(name: "acpi_os_free", scope: !414, file: !414, line: 60, type: !415, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!414 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!415 = !DISubroutineType(types: !416)
!416 = !{null, !30}
!417 = !DILocalVariable(name: "memory", arg: 1, scope: !413, file: !414, line: 60, type: !30)
!418 = !DILocation(line: 60, column: 39, scope: !413)
!419 = !DILocation(line: 62, column: 8, scope: !413)
!420 = !DILocation(line: 62, column: 2, scope: !413)
!421 = !DILocation(line: 63, column: 1, scope: !413)
!422 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !414, file: !414, line: 50, type: !423, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!423 = !DISubroutineType(types: !424)
!424 = !{!30, !23}
!425 = !DILocalVariable(name: "s", arg: 1, scope: !426, file: !6, line: 445, type: !429)
!426 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !427, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!427 = !DISubroutineType(types: !428)
!428 = !{!30, !429, !28, !432}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !431, line: 117, flags: DIFlagFwdDecl)
!431 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 55, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !434, line: 72, baseType: !435)
!434 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !434, line: 16, baseType: !31)
!436 = !DILocation(line: 445, column: 72, scope: !426, inlinedAt: !437)
!437 = distinct !DILocation(line: 552, column: 10, scope: !438, inlinedAt: !443)
!438 = distinct !DILexicalBlock(scope: !439, file: !6, line: 540, column: 34)
!439 = distinct !DILexicalBlock(scope: !440, file: !6, line: 540, column: 6)
!440 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !441, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!441 = !DISubroutineType(types: !442)
!442 = !{!30, !432, !28}
!443 = distinct !DILocation(line: 52, column: 9, scope: !422)
!444 = !DILocalVariable(name: "flags", arg: 2, scope: !426, file: !6, line: 446, type: !28)
!445 = !DILocation(line: 446, column: 9, scope: !426, inlinedAt: !437)
!446 = !DILocalVariable(name: "size", arg: 3, scope: !426, file: !6, line: 446, type: !432)
!447 = !DILocation(line: 446, column: 23, scope: !426, inlinedAt: !437)
!448 = !DILocalVariable(name: "ret", scope: !426, file: !6, line: 448, type: !30)
!449 = !DILocation(line: 448, column: 8, scope: !426, inlinedAt: !437)
!450 = !DILocalVariable(name: "flags", arg: 1, scope: !451, file: !6, line: 318, type: !28)
!451 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !452, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!452 = !DISubroutineType(types: !453)
!453 = !{!5, !28}
!454 = !DILocation(line: 318, column: 67, scope: !451, inlinedAt: !455)
!455 = distinct !DILocation(line: 553, column: 20, scope: !438, inlinedAt: !443)
!456 = !DILocalVariable(name: "size", arg: 1, scope: !457, file: !6, line: 346, type: !432)
!457 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !458, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!458 = !DISubroutineType(types: !459)
!459 = !{!7, !432}
!460 = !DILocation(line: 346, column: 58, scope: !457, inlinedAt: !461)
!461 = distinct !DILocation(line: 547, column: 11, scope: !438, inlinedAt: !443)
!462 = !DILocalVariable(name: "size", arg: 1, scope: !463, file: !6, line: 472, type: !432)
!463 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !464, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!464 = !DISubroutineType(types: !465)
!465 = !{!30, !432, !28, !7}
!466 = !DILocation(line: 472, column: 28, scope: !463, inlinedAt: !467)
!467 = distinct !DILocation(line: 481, column: 9, scope: !468, inlinedAt: !469)
!468 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !441, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!469 = distinct !DILocation(line: 545, column: 11, scope: !470, inlinedAt: !443)
!470 = distinct !DILexicalBlock(scope: !438, file: !6, line: 544, column: 7)
!471 = !DILocalVariable(name: "flags", arg: 2, scope: !463, file: !6, line: 472, type: !28)
!472 = !DILocation(line: 472, column: 40, scope: !463, inlinedAt: !467)
!473 = !DILocalVariable(name: "order", arg: 3, scope: !463, file: !6, line: 472, type: !7)
!474 = !DILocation(line: 472, column: 60, scope: !463, inlinedAt: !467)
!475 = !DILocalVariable(name: "size", arg: 1, scope: !468, file: !6, line: 478, type: !432)
!476 = !DILocation(line: 478, column: 51, scope: !468, inlinedAt: !469)
!477 = !DILocalVariable(name: "flags", arg: 2, scope: !468, file: !6, line: 478, type: !28)
!478 = !DILocation(line: 478, column: 63, scope: !468, inlinedAt: !469)
!479 = !DILocalVariable(name: "order", scope: !468, file: !6, line: 480, type: !7)
!480 = !DILocation(line: 480, column: 15, scope: !468, inlinedAt: !469)
!481 = !DILocalVariable(name: "size", arg: 1, scope: !440, file: !6, line: 538, type: !432)
!482 = !DILocation(line: 538, column: 45, scope: !440, inlinedAt: !443)
!483 = !DILocalVariable(name: "flags", arg: 2, scope: !440, file: !6, line: 538, type: !28)
!484 = !DILocation(line: 538, column: 57, scope: !440, inlinedAt: !443)
!485 = !DILocalVariable(name: "index", scope: !438, file: !6, line: 542, type: !7)
!486 = !DILocation(line: 542, column: 16, scope: !438, inlinedAt: !443)
!487 = !DILocalVariable(name: "flags", arg: 1, scope: !488, file: !489, line: 162, type: !31)
!488 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !489, file: !489, line: 162, type: !490, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!489 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!490 = !DISubroutineType(types: !491)
!491 = !{!492, !31}
!492 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!493 = !DILocation(line: 162, column: 67, scope: !488, inlinedAt: !494)
!494 = distinct !DILocation(line: 52, column: 23, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !414, line: 52, column: 23)
!496 = distinct !DILexicalBlock(scope: !422, file: !414, line: 52, column: 23)
!497 = !DILocalVariable(name: "size", arg: 1, scope: !422, file: !414, line: 50, type: !23)
!498 = !DILocation(line: 50, column: 48, scope: !422)
!499 = !DILocation(line: 52, column: 17, scope: !422)
!500 = !DILocalVariable(name: "_flags", scope: !496, file: !414, line: 52, type: !31)
!501 = !DILocation(line: 52, column: 23, scope: !496)
!502 = !DILocalVariable(name: "__dummy", scope: !503, file: !414, line: 52, type: !31)
!503 = distinct !DILexicalBlock(scope: !504, file: !414, line: 52, column: 23)
!504 = distinct !DILexicalBlock(scope: !496, file: !414, line: 52, column: 23)
!505 = !DILocation(line: 52, column: 23, scope: !503)
!506 = !DILocalVariable(name: "__dummy2", scope: !503, file: !414, line: 52, type: !31)
!507 = !DILocation(line: 52, column: 23, scope: !504)
!508 = !DILocalVariable(name: "__dummy", scope: !509, file: !414, line: 52, type: !31)
!509 = distinct !DILexicalBlock(scope: !495, file: !414, line: 52, column: 23)
!510 = !DILocation(line: 52, column: 23, scope: !509)
!511 = !DILocalVariable(name: "__dummy2", scope: !509, file: !414, line: 52, type: !31)
!512 = !DILocation(line: 52, column: 23, scope: !495)
!513 = !DILocation(line: 164, column: 11, scope: !488, inlinedAt: !494)
!514 = !DILocation(line: 164, column: 17, scope: !488, inlinedAt: !494)
!515 = !DILocation(line: 164, column: 9, scope: !488, inlinedAt: !494)
!516 = !DILocation(line: 52, column: 23, scope: !422)
!517 = !DILocation(line: 540, column: 27, scope: !439, inlinedAt: !443)
!518 = !DILocation(line: 540, column: 6, scope: !439, inlinedAt: !443)
!519 = !DILocation(line: 540, column: 6, scope: !440, inlinedAt: !443)
!520 = !DILocation(line: 544, column: 7, scope: !470, inlinedAt: !443)
!521 = !DILocation(line: 544, column: 12, scope: !470, inlinedAt: !443)
!522 = !DILocation(line: 544, column: 7, scope: !438, inlinedAt: !443)
!523 = !DILocation(line: 545, column: 25, scope: !470, inlinedAt: !443)
!524 = !DILocation(line: 545, column: 31, scope: !470, inlinedAt: !443)
!525 = !DILocation(line: 480, column: 33, scope: !468, inlinedAt: !469)
!526 = !DILocation(line: 480, column: 23, scope: !468, inlinedAt: !469)
!527 = !DILocation(line: 481, column: 29, scope: !468, inlinedAt: !469)
!528 = !DILocation(line: 481, column: 35, scope: !468, inlinedAt: !469)
!529 = !DILocation(line: 481, column: 42, scope: !468, inlinedAt: !469)
!530 = !DILocation(line: 474, column: 23, scope: !463, inlinedAt: !467)
!531 = !DILocation(line: 474, column: 29, scope: !463, inlinedAt: !467)
!532 = !DILocation(line: 474, column: 36, scope: !463, inlinedAt: !467)
!533 = !DILocation(line: 474, column: 9, scope: !463, inlinedAt: !467)
!534 = !DILocation(line: 545, column: 4, scope: !470, inlinedAt: !443)
!535 = !DILocation(line: 547, column: 25, scope: !438, inlinedAt: !443)
!536 = !DILocation(line: 348, column: 7, scope: !537, inlinedAt: !461)
!537 = distinct !DILexicalBlock(scope: !457, file: !6, line: 348, column: 6)
!538 = !DILocation(line: 348, column: 6, scope: !457, inlinedAt: !461)
!539 = !DILocation(line: 349, column: 3, scope: !537, inlinedAt: !461)
!540 = !DILocation(line: 351, column: 6, scope: !541, inlinedAt: !461)
!541 = distinct !DILexicalBlock(scope: !457, file: !6, line: 351, column: 6)
!542 = !DILocation(line: 351, column: 11, scope: !541, inlinedAt: !461)
!543 = !DILocation(line: 351, column: 6, scope: !457, inlinedAt: !461)
!544 = !DILocation(line: 352, column: 3, scope: !541, inlinedAt: !461)
!545 = !DILocation(line: 354, column: 32, scope: !546, inlinedAt: !461)
!546 = distinct !DILexicalBlock(scope: !457, file: !6, line: 354, column: 6)
!547 = !DILocation(line: 354, column: 37, scope: !546, inlinedAt: !461)
!548 = !DILocation(line: 354, column: 42, scope: !546, inlinedAt: !461)
!549 = !DILocation(line: 354, column: 45, scope: !546, inlinedAt: !461)
!550 = !DILocation(line: 354, column: 50, scope: !546, inlinedAt: !461)
!551 = !DILocation(line: 354, column: 6, scope: !457, inlinedAt: !461)
!552 = !DILocation(line: 355, column: 3, scope: !546, inlinedAt: !461)
!553 = !DILocation(line: 356, column: 32, scope: !554, inlinedAt: !461)
!554 = distinct !DILexicalBlock(scope: !457, file: !6, line: 356, column: 6)
!555 = !DILocation(line: 356, column: 37, scope: !554, inlinedAt: !461)
!556 = !DILocation(line: 356, column: 43, scope: !554, inlinedAt: !461)
!557 = !DILocation(line: 356, column: 46, scope: !554, inlinedAt: !461)
!558 = !DILocation(line: 356, column: 51, scope: !554, inlinedAt: !461)
!559 = !DILocation(line: 356, column: 6, scope: !457, inlinedAt: !461)
!560 = !DILocation(line: 357, column: 3, scope: !554, inlinedAt: !461)
!561 = !DILocation(line: 358, column: 6, scope: !562, inlinedAt: !461)
!562 = distinct !DILexicalBlock(scope: !457, file: !6, line: 358, column: 6)
!563 = !DILocation(line: 358, column: 11, scope: !562, inlinedAt: !461)
!564 = !DILocation(line: 358, column: 6, scope: !457, inlinedAt: !461)
!565 = !DILocation(line: 358, column: 26, scope: !562, inlinedAt: !461)
!566 = !DILocation(line: 359, column: 6, scope: !567, inlinedAt: !461)
!567 = distinct !DILexicalBlock(scope: !457, file: !6, line: 359, column: 6)
!568 = !DILocation(line: 359, column: 11, scope: !567, inlinedAt: !461)
!569 = !DILocation(line: 359, column: 6, scope: !457, inlinedAt: !461)
!570 = !DILocation(line: 359, column: 26, scope: !567, inlinedAt: !461)
!571 = !DILocation(line: 360, column: 6, scope: !572, inlinedAt: !461)
!572 = distinct !DILexicalBlock(scope: !457, file: !6, line: 360, column: 6)
!573 = !DILocation(line: 360, column: 11, scope: !572, inlinedAt: !461)
!574 = !DILocation(line: 360, column: 6, scope: !457, inlinedAt: !461)
!575 = !DILocation(line: 360, column: 26, scope: !572, inlinedAt: !461)
!576 = !DILocation(line: 361, column: 6, scope: !577, inlinedAt: !461)
!577 = distinct !DILexicalBlock(scope: !457, file: !6, line: 361, column: 6)
!578 = !DILocation(line: 361, column: 11, scope: !577, inlinedAt: !461)
!579 = !DILocation(line: 361, column: 6, scope: !457, inlinedAt: !461)
!580 = !DILocation(line: 361, column: 26, scope: !577, inlinedAt: !461)
!581 = !DILocation(line: 362, column: 6, scope: !582, inlinedAt: !461)
!582 = distinct !DILexicalBlock(scope: !457, file: !6, line: 362, column: 6)
!583 = !DILocation(line: 362, column: 11, scope: !582, inlinedAt: !461)
!584 = !DILocation(line: 362, column: 6, scope: !457, inlinedAt: !461)
!585 = !DILocation(line: 362, column: 26, scope: !582, inlinedAt: !461)
!586 = !DILocation(line: 363, column: 6, scope: !587, inlinedAt: !461)
!587 = distinct !DILexicalBlock(scope: !457, file: !6, line: 363, column: 6)
!588 = !DILocation(line: 363, column: 11, scope: !587, inlinedAt: !461)
!589 = !DILocation(line: 363, column: 6, scope: !457, inlinedAt: !461)
!590 = !DILocation(line: 363, column: 26, scope: !587, inlinedAt: !461)
!591 = !DILocation(line: 364, column: 6, scope: !592, inlinedAt: !461)
!592 = distinct !DILexicalBlock(scope: !457, file: !6, line: 364, column: 6)
!593 = !DILocation(line: 364, column: 11, scope: !592, inlinedAt: !461)
!594 = !DILocation(line: 364, column: 6, scope: !457, inlinedAt: !461)
!595 = !DILocation(line: 364, column: 26, scope: !592, inlinedAt: !461)
!596 = !DILocation(line: 365, column: 6, scope: !597, inlinedAt: !461)
!597 = distinct !DILexicalBlock(scope: !457, file: !6, line: 365, column: 6)
!598 = !DILocation(line: 365, column: 11, scope: !597, inlinedAt: !461)
!599 = !DILocation(line: 365, column: 6, scope: !457, inlinedAt: !461)
!600 = !DILocation(line: 365, column: 26, scope: !597, inlinedAt: !461)
!601 = !DILocation(line: 366, column: 6, scope: !602, inlinedAt: !461)
!602 = distinct !DILexicalBlock(scope: !457, file: !6, line: 366, column: 6)
!603 = !DILocation(line: 366, column: 11, scope: !602, inlinedAt: !461)
!604 = !DILocation(line: 366, column: 6, scope: !457, inlinedAt: !461)
!605 = !DILocation(line: 366, column: 26, scope: !602, inlinedAt: !461)
!606 = !DILocation(line: 367, column: 6, scope: !607, inlinedAt: !461)
!607 = distinct !DILexicalBlock(scope: !457, file: !6, line: 367, column: 6)
!608 = !DILocation(line: 367, column: 11, scope: !607, inlinedAt: !461)
!609 = !DILocation(line: 367, column: 6, scope: !457, inlinedAt: !461)
!610 = !DILocation(line: 367, column: 26, scope: !607, inlinedAt: !461)
!611 = !DILocation(line: 368, column: 6, scope: !612, inlinedAt: !461)
!612 = distinct !DILexicalBlock(scope: !457, file: !6, line: 368, column: 6)
!613 = !DILocation(line: 368, column: 11, scope: !612, inlinedAt: !461)
!614 = !DILocation(line: 368, column: 6, scope: !457, inlinedAt: !461)
!615 = !DILocation(line: 368, column: 26, scope: !612, inlinedAt: !461)
!616 = !DILocation(line: 369, column: 6, scope: !617, inlinedAt: !461)
!617 = distinct !DILexicalBlock(scope: !457, file: !6, line: 369, column: 6)
!618 = !DILocation(line: 369, column: 11, scope: !617, inlinedAt: !461)
!619 = !DILocation(line: 369, column: 6, scope: !457, inlinedAt: !461)
!620 = !DILocation(line: 369, column: 26, scope: !617, inlinedAt: !461)
!621 = !DILocation(line: 370, column: 6, scope: !622, inlinedAt: !461)
!622 = distinct !DILexicalBlock(scope: !457, file: !6, line: 370, column: 6)
!623 = !DILocation(line: 370, column: 11, scope: !622, inlinedAt: !461)
!624 = !DILocation(line: 370, column: 6, scope: !457, inlinedAt: !461)
!625 = !DILocation(line: 370, column: 26, scope: !622, inlinedAt: !461)
!626 = !DILocation(line: 371, column: 6, scope: !627, inlinedAt: !461)
!627 = distinct !DILexicalBlock(scope: !457, file: !6, line: 371, column: 6)
!628 = !DILocation(line: 371, column: 11, scope: !627, inlinedAt: !461)
!629 = !DILocation(line: 371, column: 6, scope: !457, inlinedAt: !461)
!630 = !DILocation(line: 371, column: 26, scope: !627, inlinedAt: !461)
!631 = !DILocation(line: 372, column: 6, scope: !632, inlinedAt: !461)
!632 = distinct !DILexicalBlock(scope: !457, file: !6, line: 372, column: 6)
!633 = !DILocation(line: 372, column: 11, scope: !632, inlinedAt: !461)
!634 = !DILocation(line: 372, column: 6, scope: !457, inlinedAt: !461)
!635 = !DILocation(line: 372, column: 26, scope: !632, inlinedAt: !461)
!636 = !DILocation(line: 373, column: 6, scope: !637, inlinedAt: !461)
!637 = distinct !DILexicalBlock(scope: !457, file: !6, line: 373, column: 6)
!638 = !DILocation(line: 373, column: 11, scope: !637, inlinedAt: !461)
!639 = !DILocation(line: 373, column: 6, scope: !457, inlinedAt: !461)
!640 = !DILocation(line: 373, column: 26, scope: !637, inlinedAt: !461)
!641 = !DILocation(line: 374, column: 6, scope: !642, inlinedAt: !461)
!642 = distinct !DILexicalBlock(scope: !457, file: !6, line: 374, column: 6)
!643 = !DILocation(line: 374, column: 11, scope: !642, inlinedAt: !461)
!644 = !DILocation(line: 374, column: 6, scope: !457, inlinedAt: !461)
!645 = !DILocation(line: 374, column: 26, scope: !642, inlinedAt: !461)
!646 = !DILocation(line: 375, column: 6, scope: !647, inlinedAt: !461)
!647 = distinct !DILexicalBlock(scope: !457, file: !6, line: 375, column: 6)
!648 = !DILocation(line: 375, column: 11, scope: !647, inlinedAt: !461)
!649 = !DILocation(line: 375, column: 6, scope: !457, inlinedAt: !461)
!650 = !DILocation(line: 375, column: 27, scope: !647, inlinedAt: !461)
!651 = !DILocation(line: 376, column: 6, scope: !652, inlinedAt: !461)
!652 = distinct !DILexicalBlock(scope: !457, file: !6, line: 376, column: 6)
!653 = !DILocation(line: 376, column: 11, scope: !652, inlinedAt: !461)
!654 = !DILocation(line: 376, column: 6, scope: !457, inlinedAt: !461)
!655 = !DILocation(line: 376, column: 32, scope: !652, inlinedAt: !461)
!656 = !DILocation(line: 377, column: 6, scope: !657, inlinedAt: !461)
!657 = distinct !DILexicalBlock(scope: !457, file: !6, line: 377, column: 6)
!658 = !DILocation(line: 377, column: 11, scope: !657, inlinedAt: !461)
!659 = !DILocation(line: 377, column: 6, scope: !457, inlinedAt: !461)
!660 = !DILocation(line: 377, column: 32, scope: !657, inlinedAt: !461)
!661 = !DILocation(line: 378, column: 6, scope: !662, inlinedAt: !461)
!662 = distinct !DILexicalBlock(scope: !457, file: !6, line: 378, column: 6)
!663 = !DILocation(line: 378, column: 11, scope: !662, inlinedAt: !461)
!664 = !DILocation(line: 378, column: 6, scope: !457, inlinedAt: !461)
!665 = !DILocation(line: 378, column: 32, scope: !662, inlinedAt: !461)
!666 = !DILocation(line: 379, column: 6, scope: !667, inlinedAt: !461)
!667 = distinct !DILexicalBlock(scope: !457, file: !6, line: 379, column: 6)
!668 = !DILocation(line: 379, column: 11, scope: !667, inlinedAt: !461)
!669 = !DILocation(line: 379, column: 6, scope: !457, inlinedAt: !461)
!670 = !DILocation(line: 379, column: 33, scope: !667, inlinedAt: !461)
!671 = !DILocation(line: 380, column: 6, scope: !672, inlinedAt: !461)
!672 = distinct !DILexicalBlock(scope: !457, file: !6, line: 380, column: 6)
!673 = !DILocation(line: 380, column: 11, scope: !672, inlinedAt: !461)
!674 = !DILocation(line: 380, column: 6, scope: !457, inlinedAt: !461)
!675 = !DILocation(line: 380, column: 33, scope: !672, inlinedAt: !461)
!676 = !DILocation(line: 381, column: 6, scope: !677, inlinedAt: !461)
!677 = distinct !DILexicalBlock(scope: !457, file: !6, line: 381, column: 6)
!678 = !DILocation(line: 381, column: 11, scope: !677, inlinedAt: !461)
!679 = !DILocation(line: 381, column: 6, scope: !457, inlinedAt: !461)
!680 = !DILocation(line: 381, column: 33, scope: !677, inlinedAt: !461)
!681 = !DILocation(line: 382, column: 2, scope: !682, inlinedAt: !461)
!682 = distinct !DILexicalBlock(scope: !683, file: !6, line: 382, column: 2)
!683 = distinct !DILexicalBlock(scope: !457, file: !6, line: 382, column: 2)
!684 = !{i32 -2144110340, i32 -2144110311, i32 -2144110265, i32 -2144110207, i32 -2144110153, i32 -2144110099, i32 -2144110044, i32 -2144110013}
!685 = !DILocation(line: 382, column: 2, scope: !686, inlinedAt: !461)
!686 = distinct !DILexicalBlock(scope: !687, file: !6, line: 382, column: 2)
!687 = distinct !DILexicalBlock(scope: !683, file: !6, line: 382, column: 2)
!688 = !{i32 -2144109570, i32 -2144109563, i32 -2144109509, i32 -2144109478, i32 -2144109448}
!689 = !DILocation(line: 382, column: 2, scope: !687, inlinedAt: !461)
!690 = !DILocation(line: 386, column: 1, scope: !457, inlinedAt: !461)
!691 = !DILocation(line: 547, column: 9, scope: !438, inlinedAt: !443)
!692 = !DILocation(line: 549, column: 8, scope: !693, inlinedAt: !443)
!693 = distinct !DILexicalBlock(scope: !438, file: !6, line: 549, column: 7)
!694 = !DILocation(line: 549, column: 7, scope: !438, inlinedAt: !443)
!695 = !DILocation(line: 550, column: 4, scope: !693, inlinedAt: !443)
!696 = !DILocation(line: 553, column: 33, scope: !438, inlinedAt: !443)
!697 = !DILocation(line: 325, column: 6, scope: !698, inlinedAt: !455)
!698 = distinct !DILexicalBlock(scope: !451, file: !6, line: 325, column: 6)
!699 = !DILocation(line: 325, column: 6, scope: !451, inlinedAt: !455)
!700 = !DILocation(line: 326, column: 3, scope: !698, inlinedAt: !455)
!701 = !DILocation(line: 332, column: 9, scope: !451, inlinedAt: !455)
!702 = !DILocation(line: 332, column: 15, scope: !451, inlinedAt: !455)
!703 = !DILocation(line: 332, column: 2, scope: !451, inlinedAt: !455)
!704 = !DILocation(line: 336, column: 1, scope: !451, inlinedAt: !455)
!705 = !DILocation(line: 553, column: 5, scope: !438, inlinedAt: !443)
!706 = !DILocation(line: 553, column: 41, scope: !438, inlinedAt: !443)
!707 = !DILocation(line: 554, column: 5, scope: !438, inlinedAt: !443)
!708 = !DILocation(line: 554, column: 12, scope: !438, inlinedAt: !443)
!709 = !DILocation(line: 448, column: 31, scope: !426, inlinedAt: !437)
!710 = !DILocation(line: 448, column: 34, scope: !426, inlinedAt: !437)
!711 = !DILocation(line: 448, column: 14, scope: !426, inlinedAt: !437)
!712 = !DILocation(line: 450, column: 22, scope: !426, inlinedAt: !437)
!713 = !DILocation(line: 450, column: 25, scope: !426, inlinedAt: !437)
!714 = !DILocation(line: 450, column: 30, scope: !426, inlinedAt: !437)
!715 = !DILocation(line: 450, column: 36, scope: !426, inlinedAt: !437)
!716 = !DILocation(line: 450, column: 8, scope: !426, inlinedAt: !437)
!717 = !DILocation(line: 450, column: 6, scope: !426, inlinedAt: !437)
!718 = !DILocation(line: 451, column: 9, scope: !426, inlinedAt: !437)
!719 = !DILocation(line: 552, column: 3, scope: !438, inlinedAt: !443)
!720 = !DILocation(line: 557, column: 19, scope: !440, inlinedAt: !443)
!721 = !DILocation(line: 557, column: 25, scope: !440, inlinedAt: !443)
!722 = !DILocation(line: 557, column: 9, scope: !440, inlinedAt: !443)
!723 = !DILocation(line: 557, column: 2, scope: !440, inlinedAt: !443)
!724 = !DILocation(line: 558, column: 1, scope: !440, inlinedAt: !443)
!725 = !DILocation(line: 52, column: 2, scope: !422)
!726 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !727, file: !727, line: 646, type: !728, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!727 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!728 = !DISubroutineType(types: !729)
!729 = !{!31}
!730 = !DILocalVariable(name: "__ret", scope: !731, file: !727, line: 648, type: !31)
!731 = distinct !DILexicalBlock(scope: !726, file: !727, line: 648, column: 9)
!732 = !DILocation(line: 648, column: 9, scope: !731)
!733 = !DILocalVariable(name: "__edi", scope: !731, file: !727, line: 648, type: !31)
!734 = !DILocalVariable(name: "__esi", scope: !731, file: !727, line: 648, type: !31)
!735 = !DILocalVariable(name: "__edx", scope: !731, file: !727, line: 648, type: !31)
!736 = !DILocalVariable(name: "__ecx", scope: !731, file: !727, line: 648, type: !31)
!737 = !DILocalVariable(name: "__eax", scope: !731, file: !727, line: 648, type: !31)
!738 = !DILocation(line: 648, column: 9, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !727, line: 648, column: 9)
!740 = distinct !DILexicalBlock(scope: !731, file: !727, line: 648, column: 9)
!741 = !{i32 -2145783946, i32 -2145781631, i32 -2145781397, i32 -2145781346, i32 -2145781318, i32 -2145781293, i32 -2145781609, i32 -2145781596, i32 -2145781158, i32 -2145781039, i32 -2145781504, i32 -2145781477, i32 -2145781449, i32 -2145781419}
!742 = !DILocalVariable(name: "__mask", scope: !743, file: !727, line: 648, type: !31)
!743 = distinct !DILexicalBlock(scope: !739, file: !727, line: 648, column: 9)
!744 = !DILocation(line: 648, column: 9, scope: !743)
!745 = !DILocation(line: 648, column: 9, scope: !740)
!746 = !DILocation(line: 648, column: 2, scope: !726)
!747 = distinct !DISubprogram(name: "get_order", scope: !748, file: !748, line: 29, type: !490, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!748 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!749 = !DILocalVariable(name: "x", arg: 1, scope: !750, file: !751, line: 366, type: !25)
!750 = distinct !DISubprogram(name: "fls64", scope: !751, file: !751, line: 366, type: !752, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!751 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!752 = !DISubroutineType(types: !753)
!753 = !{!492, !25}
!754 = !DILocation(line: 366, column: 40, scope: !750, inlinedAt: !755)
!755 = distinct !DILocation(line: 46, column: 9, scope: !747)
!756 = !DILocalVariable(name: "bitpos", scope: !750, file: !751, line: 368, type: !492)
!757 = !DILocation(line: 368, column: 6, scope: !750, inlinedAt: !755)
!758 = !DILocalVariable(name: "size", arg: 1, scope: !747, file: !748, line: 29, type: !31)
!759 = !DILocation(line: 29, column: 63, scope: !747)
!760 = !DILocation(line: 31, column: 27, scope: !761)
!761 = distinct !DILexicalBlock(scope: !747, file: !748, line: 31, column: 6)
!762 = !DILocation(line: 31, column: 6, scope: !761)
!763 = !DILocation(line: 31, column: 6, scope: !747)
!764 = !DILocation(line: 32, column: 8, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !748, line: 32, column: 7)
!766 = distinct !DILexicalBlock(scope: !761, file: !748, line: 31, column: 34)
!767 = !DILocation(line: 32, column: 7, scope: !766)
!768 = !DILocation(line: 33, column: 4, scope: !765)
!769 = !DILocation(line: 35, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !766, file: !748, line: 35, column: 7)
!771 = !DILocation(line: 35, column: 12, scope: !770)
!772 = !DILocation(line: 35, column: 7, scope: !766)
!773 = !DILocation(line: 36, column: 4, scope: !770)
!774 = !DILocation(line: 38, column: 10, scope: !766)
!775 = !DILocation(line: 38, column: 28, scope: !766)
!776 = !DILocation(line: 38, column: 41, scope: !766)
!777 = !DILocation(line: 38, column: 3, scope: !766)
!778 = !DILocation(line: 41, column: 6, scope: !747)
!779 = !DILocation(line: 42, column: 7, scope: !747)
!780 = !DILocation(line: 46, column: 15, scope: !747)
!781 = !DILocation(line: 374, column: 2, scope: !750, inlinedAt: !755)
!782 = !DILocation(line: 376, column: 14, scope: !750, inlinedAt: !755)
!783 = !{i32 660862}
!784 = !DILocation(line: 377, column: 9, scope: !750, inlinedAt: !755)
!785 = !DILocation(line: 377, column: 16, scope: !750, inlinedAt: !755)
!786 = !DILocation(line: 46, column: 2, scope: !747)
!787 = !DILocation(line: 48, column: 1, scope: !747)
!788 = distinct !DISubprogram(name: "__ilog2_u64", scope: !789, file: !789, line: 30, type: !790, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!789 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!790 = !DISubroutineType(types: !791)
!791 = !{!492, !24}
!792 = !DILocation(line: 366, column: 40, scope: !750, inlinedAt: !793)
!793 = distinct !DILocation(line: 32, column: 9, scope: !788)
!794 = !DILocation(line: 368, column: 6, scope: !750, inlinedAt: !793)
!795 = !DILocalVariable(name: "n", arg: 1, scope: !788, file: !789, line: 30, type: !24)
!796 = !DILocation(line: 30, column: 21, scope: !788)
!797 = !DILocation(line: 32, column: 15, scope: !788)
!798 = !DILocation(line: 374, column: 2, scope: !750, inlinedAt: !793)
!799 = !DILocation(line: 376, column: 14, scope: !750, inlinedAt: !793)
!800 = !DILocation(line: 377, column: 9, scope: !750, inlinedAt: !793)
!801 = !DILocation(line: 377, column: 16, scope: !750, inlinedAt: !793)
!802 = !DILocation(line: 32, column: 18, scope: !788)
!803 = !DILocation(line: 32, column: 2, scope: !788)
!804 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !805, file: !805, line: 137, type: !806, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!805 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!806 = !DISubroutineType(types: !807)
!807 = !{!30, !429, !808, !432, !28}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!810 = !DILocalVariable(name: "s", arg: 1, scope: !804, file: !805, line: 137, type: !429)
!811 = !DILocation(line: 137, column: 54, scope: !804)
!812 = !DILocalVariable(name: "object", arg: 2, scope: !804, file: !805, line: 137, type: !808)
!813 = !DILocation(line: 137, column: 69, scope: !804)
!814 = !DILocalVariable(name: "size", arg: 3, scope: !804, file: !805, line: 138, type: !432)
!815 = !DILocation(line: 138, column: 12, scope: !804)
!816 = !DILocalVariable(name: "flags", arg: 4, scope: !804, file: !805, line: 138, type: !28)
!817 = !DILocation(line: 138, column: 24, scope: !804)
!818 = !DILocation(line: 140, column: 17, scope: !804)
!819 = !DILocation(line: 140, column: 2, scope: !804)
