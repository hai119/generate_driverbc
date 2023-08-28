; ModuleID = '../bcout/drivers/acpi/acpica/utmutex.llvm.bc'
source_filename = "drivers/acpi/acpica/utmutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.acpi_rw_lock = type { i8*, i8*, i32 }
%struct.acpi_mutex_info = type { i8*, i32, i64 }
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

@acpi_gbl_gpe_lock = external dso_local global %struct.spinlock*, align 8
@acpi_gbl_hardware_lock = external dso_local global %struct.raw_spinlock*, align 8
@acpi_gbl_reference_count_lock = external dso_local global %struct.spinlock*, align 8
@acpi_gbl_osi_mutex = external dso_local global i8*, align 8
@acpi_gbl_namespace_rw_lock = external dso_local global %struct.acpi_rw_lock, align 8
@acpi_gbl_mutex_info = external dso_local global [6 x %struct.acpi_mutex_info], align 16
@_acpi_module_name = internal constant [8 x i8] c"utmutex\00", align 1, !dbg !0
@.str = private unnamed_addr constant [46 x i8] c"Thread %u could not acquire Mutex [%s] (0x%X)\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Mutex [%s] (0x%X) is not acquired, cannot release\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_mutex_initialize() #0 !dbg !1184 {
entry:
  %lock.addr.i48 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i48, metadata !1187, metadata !DIExpression()), !dbg !1194
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !1187, metadata !DIExpression()), !dbg !1200
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %lock = alloca %struct.spinlock*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  %tmp = alloca i32, align 4
  %lock10 = alloca %struct.raw_spinlock*, align 8
  %.compoundliteral15 = alloca %struct.raw_spinlock, align 1
  %tmp18 = alloca i32, align 4
  %lock24 = alloca %struct.spinlock*, align 8
  %.compoundliteral30 = alloca %struct.spinlock, align 1
  %tmp34 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1206, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1208, metadata !DIExpression()), !dbg !1209
  store i32 0, i32* %i, align 4, !dbg !1210
  br label %for.cond, !dbg !1212

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1213
  %cmp = icmp ult i32 %0, 6, !dbg !1215
  br i1 %cmp, label %for.body, label %for.end, !dbg !1216

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !1217
  %call = call i32 @acpi_ut_create_mutex(i32 %1) #9, !dbg !1219
  store i32 %call, i32* %status, align 4, !dbg !1220
  %2 = load i32, i32* %status, align 4, !dbg !1221
  %tobool = icmp ne i32 %2, 0, !dbg !1221
  br i1 %tobool, label %if.then, label %if.end, !dbg !1223

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %status, align 4, !dbg !1224
  store i32 %3, i32* %retval, align 4, !dbg !1224
  br label %return, !dbg !1224

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1226

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4, !dbg !1227
  %inc = add i32 %4, 1, !dbg !1227
  store i32 %inc, i32* %i, align 4, !dbg !1227
  br label %for.cond, !dbg !1228, !llvm.loop !1229

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock, metadata !1231, metadata !DIExpression()), !dbg !1232
  %call1 = call i8* @acpi_os_allocate(i64 0) #9, !dbg !1232
  %5 = bitcast i8* %call1 to %struct.spinlock*, !dbg !1232
  store %struct.spinlock* %5, %struct.spinlock** %lock, align 8, !dbg !1232
  %6 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !1233
  %tobool2 = icmp ne %struct.spinlock* %6, null, !dbg !1233
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !1232

if.then3:                                         ; preds = %for.end
  %7 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !1234
  store %struct.spinlock* %7, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1234
  br label %do.body, !dbg !1234

do.body:                                          ; preds = %if.then3
  %8 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1235
  store %struct.spinlock* %8, %struct.spinlock** %lock.addr.i, align 8
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !1236
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !1237
  %rlock.i = bitcast %union.anon* %10 to %struct.raw_spinlock*, !dbg !1237
  %11 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1235
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !1235
  %rlock = bitcast %union.anon* %12 to %struct.raw_spinlock*, !dbg !1235
  %13 = bitcast %struct.spinlock* %11 to i8*, !dbg !1235
  %14 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !1235
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %14, i64 0, i1 false), !dbg !1235
  br label %do.end, !dbg !1235

do.end:                                           ; preds = %do.body
  br label %if.end5, !dbg !1234

if.end5:                                          ; preds = %do.end, %for.end
  %15 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !1232
  %tobool6 = icmp ne %struct.spinlock* %15, null, !dbg !1232
  %16 = zext i1 %tobool6 to i64, !dbg !1232
  %cond = select i1 %tobool6, i32 0, i32 4, !dbg !1232
  store i32 %cond, i32* %tmp, align 4, !dbg !1233
  %17 = load i32, i32* %tmp, align 4, !dbg !1232
  store i32 %17, i32* %status, align 4, !dbg !1238
  %18 = load i32, i32* %status, align 4, !dbg !1239
  %tobool7 = icmp ne i32 %18, 0, !dbg !1239
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1241

if.then8:                                         ; preds = %if.end5
  %19 = load i32, i32* %status, align 4, !dbg !1242
  store i32 %19, i32* %retval, align 4, !dbg !1242
  br label %return, !dbg !1242

if.end9:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata %struct.raw_spinlock** %lock10, metadata !1244, metadata !DIExpression()), !dbg !1246
  %call11 = call i8* @acpi_os_allocate(i64 0) #9, !dbg !1246
  %20 = bitcast i8* %call11 to %struct.raw_spinlock*, !dbg !1246
  store %struct.raw_spinlock* %20, %struct.raw_spinlock** %lock10, align 8, !dbg !1246
  %21 = load %struct.raw_spinlock*, %struct.raw_spinlock** %lock10, align 8, !dbg !1247
  %tobool12 = icmp ne %struct.raw_spinlock* %21, null, !dbg !1247
  br i1 %tobool12, label %if.then13, label %if.end17, !dbg !1246

if.then13:                                        ; preds = %if.end9
  %22 = load %struct.raw_spinlock*, %struct.raw_spinlock** %lock10, align 8, !dbg !1249
  store %struct.raw_spinlock* %22, %struct.raw_spinlock** @acpi_gbl_hardware_lock, align 8, !dbg !1249
  br label %do.body14, !dbg !1249

do.body14:                                        ; preds = %if.then13
  %23 = load %struct.raw_spinlock*, %struct.raw_spinlock** @acpi_gbl_hardware_lock, align 8, !dbg !1251
  %24 = bitcast %struct.raw_spinlock* %23 to i8*, !dbg !1251
  %25 = bitcast %struct.raw_spinlock* %.compoundliteral15 to i8*, !dbg !1251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %25, i64 0, i1 false), !dbg !1251
  br label %do.end16, !dbg !1251

do.end16:                                         ; preds = %do.body14
  br label %if.end17, !dbg !1249

if.end17:                                         ; preds = %do.end16, %if.end9
  %26 = load %struct.raw_spinlock*, %struct.raw_spinlock** %lock10, align 8, !dbg !1246
  %tobool19 = icmp ne %struct.raw_spinlock* %26, null, !dbg !1246
  %27 = zext i1 %tobool19 to i64, !dbg !1246
  %cond20 = select i1 %tobool19, i32 0, i32 4, !dbg !1246
  store i32 %cond20, i32* %tmp18, align 4, !dbg !1247
  %28 = load i32, i32* %tmp18, align 4, !dbg !1246
  store i32 %28, i32* %status, align 4, !dbg !1253
  %29 = load i32, i32* %status, align 4, !dbg !1254
  %tobool21 = icmp ne i32 %29, 0, !dbg !1254
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1256

if.then22:                                        ; preds = %if.end17
  %30 = load i32, i32* %status, align 4, !dbg !1257
  store i32 %30, i32* %retval, align 4, !dbg !1257
  br label %return, !dbg !1257

if.end23:                                         ; preds = %if.end17
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock24, metadata !1259, metadata !DIExpression()), !dbg !1260
  %call25 = call i8* @acpi_os_allocate(i64 0) #9, !dbg !1260
  %31 = bitcast i8* %call25 to %struct.spinlock*, !dbg !1260
  store %struct.spinlock* %31, %struct.spinlock** %lock24, align 8, !dbg !1260
  %32 = load %struct.spinlock*, %struct.spinlock** %lock24, align 8, !dbg !1261
  %tobool26 = icmp ne %struct.spinlock* %32, null, !dbg !1261
  br i1 %tobool26, label %if.then27, label %if.end33, !dbg !1260

if.then27:                                        ; preds = %if.end23
  %33 = load %struct.spinlock*, %struct.spinlock** %lock24, align 8, !dbg !1262
  store %struct.spinlock* %33, %struct.spinlock** @acpi_gbl_reference_count_lock, align 8, !dbg !1262
  br label %do.body28, !dbg !1262

do.body28:                                        ; preds = %if.then27
  %34 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_reference_count_lock, align 8, !dbg !1263
  store %struct.spinlock* %34, %struct.spinlock** %lock.addr.i48, align 8
  %35 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i48, align 8, !dbg !1264
  %36 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %35, i32 0, i32 0, !dbg !1265
  %rlock.i49 = bitcast %union.anon* %36 to %struct.raw_spinlock*, !dbg !1265
  %37 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_reference_count_lock, align 8, !dbg !1263
  %38 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral30, i32 0, i32 0, !dbg !1263
  %rlock31 = bitcast %union.anon* %38 to %struct.raw_spinlock*, !dbg !1263
  %39 = bitcast %struct.spinlock* %37 to i8*, !dbg !1263
  %40 = bitcast %struct.spinlock* %.compoundliteral30 to i8*, !dbg !1263
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 %40, i64 0, i1 false), !dbg !1263
  br label %do.end32, !dbg !1263

do.end32:                                         ; preds = %do.body28
  br label %if.end33, !dbg !1262

if.end33:                                         ; preds = %do.end32, %if.end23
  %41 = load %struct.spinlock*, %struct.spinlock** %lock24, align 8, !dbg !1260
  %tobool35 = icmp ne %struct.spinlock* %41, null, !dbg !1260
  %42 = zext i1 %tobool35 to i64, !dbg !1260
  %cond36 = select i1 %tobool35, i32 0, i32 4, !dbg !1260
  store i32 %cond36, i32* %tmp34, align 4, !dbg !1261
  %43 = load i32, i32* %tmp34, align 4, !dbg !1260
  store i32 %43, i32* %status, align 4, !dbg !1266
  %44 = load i32, i32* %status, align 4, !dbg !1267
  %tobool37 = icmp ne i32 %44, 0, !dbg !1267
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !1269

if.then38:                                        ; preds = %if.end33
  %45 = load i32, i32* %status, align 4, !dbg !1270
  store i32 %45, i32* %retval, align 4, !dbg !1270
  br label %return, !dbg !1270

if.end39:                                         ; preds = %if.end33
  %call40 = call i32 @acpi_os_create_semaphore(i32 1, i32 1, i8** @acpi_gbl_osi_mutex) #9, !dbg !1272
  store i32 %call40, i32* %status, align 4, !dbg !1273
  %46 = load i32, i32* %status, align 4, !dbg !1274
  %tobool41 = icmp ne i32 %46, 0, !dbg !1274
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !1276

if.then42:                                        ; preds = %if.end39
  %47 = load i32, i32* %status, align 4, !dbg !1277
  store i32 %47, i32* %retval, align 4, !dbg !1277
  br label %return, !dbg !1277

if.end43:                                         ; preds = %if.end39
  %call44 = call i32 @acpi_ut_create_rw_lock(%struct.acpi_rw_lock* @acpi_gbl_namespace_rw_lock) #9, !dbg !1279
  store i32 %call44, i32* %status, align 4, !dbg !1280
  %48 = load i32, i32* %status, align 4, !dbg !1281
  %tobool45 = icmp ne i32 %48, 0, !dbg !1281
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !1283

if.then46:                                        ; preds = %if.end43
  %49 = load i32, i32* %status, align 4, !dbg !1284
  store i32 %49, i32* %retval, align 4, !dbg !1284
  br label %return, !dbg !1284

if.end47:                                         ; preds = %if.end43
  %50 = load i32, i32* %status, align 4, !dbg !1286
  store i32 %50, i32* %retval, align 4, !dbg !1286
  br label %return, !dbg !1286

return:                                           ; preds = %if.end47, %if.then46, %if.then42, %if.then38, %if.then22, %if.then8, %if.then
  %51 = load i32, i32* %retval, align 4, !dbg !1287
  ret i32 %51, !dbg !1287
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_create_mutex(i32 %mutex_id) #0 !dbg !1288 {
entry:
  %mutex_id.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %mutex_id, i32* %mutex_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mutex_id.addr, metadata !1293, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1295, metadata !DIExpression()), !dbg !1296
  store i32 0, i32* %status, align 4, !dbg !1296
  %0 = load i32, i32* %mutex_id.addr, align 4, !dbg !1297
  %idxprom = zext i32 %0 to i64, !dbg !1299
  %arrayidx = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom, !dbg !1299
  %mutex = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx, i32 0, i32 0, !dbg !1300
  %1 = load i8*, i8** %mutex, align 8, !dbg !1300
  %tobool = icmp ne i8* %1, null, !dbg !1299
  br i1 %tobool, label %if.end, label %if.then, !dbg !1301

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %mutex_id.addr, align 4, !dbg !1302
  %idxprom1 = zext i32 %2 to i64, !dbg !1302
  %arrayidx2 = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom1, !dbg !1302
  %mutex3 = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx2, i32 0, i32 0, !dbg !1302
  %call = call i32 @acpi_os_create_semaphore(i32 1, i32 1, i8** %mutex3) #9, !dbg !1302
  store i32 %call, i32* %status, align 4, !dbg !1304
  %3 = load i32, i32* %mutex_id.addr, align 4, !dbg !1305
  %idxprom4 = zext i32 %3 to i64, !dbg !1306
  %arrayidx5 = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom4, !dbg !1306
  %thread_id = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx5, i32 0, i32 2, !dbg !1307
  store i64 0, i64* %thread_id, align 8, !dbg !1308
  %4 = load i32, i32* %mutex_id.addr, align 4, !dbg !1309
  %idxprom6 = zext i32 %4 to i64, !dbg !1310
  %arrayidx7 = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom6, !dbg !1310
  %use_count = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx7, i32 0, i32 1, !dbg !1311
  store i32 0, i32* %use_count, align 8, !dbg !1312
  br label %if.end, !dbg !1313

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %status, align 4, !dbg !1314
  ret i32 %5, !dbg !1314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate(i64 %size) #0 !dbg !1315 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1319, metadata !DIExpression()), !dbg !1323
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1331, metadata !DIExpression()), !dbg !1332
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1333, metadata !DIExpression()), !dbg !1334
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1335, metadata !DIExpression()), !dbg !1336
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1337, metadata !DIExpression()), !dbg !1341
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1343, metadata !DIExpression()), !dbg !1347
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1349, metadata !DIExpression()), !dbg !1353
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1358, metadata !DIExpression()), !dbg !1359
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1360, metadata !DIExpression()), !dbg !1361
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1362, metadata !DIExpression()), !dbg !1363
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1364, metadata !DIExpression()), !dbg !1365
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1366, metadata !DIExpression()), !dbg !1367
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1368, metadata !DIExpression()), !dbg !1369
  %flags.addr.i11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i11, metadata !1370, metadata !DIExpression()), !dbg !1371
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1372, metadata !DIExpression()), !dbg !1373
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1374, metadata !DIExpression()), !dbg !1379
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1383, metadata !DIExpression()), !dbg !1384
  %0 = load i64, i64* %size.addr, align 8, !dbg !1385
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1386, metadata !DIExpression()), !dbg !1387
  br label %do.body, !dbg !1387

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1388, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1392, metadata !DIExpression()), !dbg !1391
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1391
  %conv = zext i1 %cmp to i32, !dbg !1391
  store i32 1, i32* %tmp, align 4, !dbg !1391
  %1 = load i32, i32* %tmp, align 4, !dbg !1391
  %call = call i64 @arch_local_save_flags() #9, !dbg !1393
  store i64 %call, i64* %_flags, align 8, !dbg !1393
  br label %do.end, !dbg !1393

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1394, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1397, metadata !DIExpression()), !dbg !1396
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1396
  %conv6 = zext i1 %cmp5 to i32, !dbg !1396
  store i32 1, i32* %tmp7, align 4, !dbg !1396
  %2 = load i32, i32* %tmp7, align 4, !dbg !1396
  %3 = load i64, i64* %_flags, align 8, !dbg !1398
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1399
  %and.i = and i64 %4, 512, !dbg !1400
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1401
  %lnot.i = xor i1 %tobool.i, true, !dbg !1401
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1401
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1398
  %5 = load i32, i32* %tmp8, align 4, !dbg !1398
  store i32 %5, i32* %tmp1, align 4, !dbg !1393
  %6 = load i32, i32* %tmp1, align 4, !dbg !1387
  %tobool = icmp ne i32 %6, 0, !dbg !1402
  %7 = zext i1 %tobool to i64, !dbg !1402
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1402
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %cond, i32* %flags.addr.i11, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !1403
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #8, !dbg !1404
  br i1 %9, label %if.then.i, label %if.end9.i, !dbg !1405

if.then.i:                                        ; preds = %do.end
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !1406
  %cmp.i = icmp ugt i64 %10, 8192, !dbg !1407
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1408

if.then1.i:                                       ; preds = %if.then.i
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !1409
  %12 = load i32, i32* %flags.addr.i11, align 4, !dbg !1410
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !1411
  %call.i.i = call i32 @get_order(i64 %13) #10, !dbg !1412
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1367
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !1413
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1414
  %16 = load i32, i32* %order.i.i, align 4, !dbg !1415
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1416
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1417
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1418
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #11, !dbg !1419
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1419
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1419
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1419
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1419
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1420
  br label %kmalloc.exit, !dbg !1420

if.end.i:                                         ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !1421
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1422
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !1422
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1424

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1425
  br label %kmalloc_index.exit.i, !dbg !1425

if.end.i.i:                                       ; preds = %if.end.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1426
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !1428
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1429

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1430
  br label %kmalloc_index.exit.i, !dbg !1430

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1431
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !1433
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1434

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1435
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !1436
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1437

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1438
  br label %kmalloc_index.exit.i, !dbg !1438

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1439
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !1441
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1442

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1443
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !1444
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1445

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1446
  br label %kmalloc_index.exit.i, !dbg !1446

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1447
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !1449
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1450

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1451
  br label %kmalloc_index.exit.i, !dbg !1451

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1452
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !1454
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1455

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1456
  br label %kmalloc_index.exit.i, !dbg !1456

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1457
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !1459
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1460

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1461
  br label %kmalloc_index.exit.i, !dbg !1461

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1462
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !1464
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1465

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1466
  br label %kmalloc_index.exit.i, !dbg !1466

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1467
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !1469
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1470

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1471
  br label %kmalloc_index.exit.i, !dbg !1471

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1472
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !1474
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1475

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1476
  br label %kmalloc_index.exit.i, !dbg !1476

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1477
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !1479
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1480

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1481
  br label %kmalloc_index.exit.i, !dbg !1481

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1482
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !1484
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1485

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1486
  br label %kmalloc_index.exit.i, !dbg !1486

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1487
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !1489
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1490

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1491
  br label %kmalloc_index.exit.i, !dbg !1491

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1492
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !1494
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1495

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1496
  br label %kmalloc_index.exit.i, !dbg !1496

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1497
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !1499
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1500

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1501
  br label %kmalloc_index.exit.i, !dbg !1501

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1502
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !1504
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1505

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1506
  br label %kmalloc_index.exit.i, !dbg !1506

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1507
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !1509
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1510

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1511
  br label %kmalloc_index.exit.i, !dbg !1511

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1512
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !1514
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1515

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1516
  br label %kmalloc_index.exit.i, !dbg !1516

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1517
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !1519
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1520

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1521
  br label %kmalloc_index.exit.i, !dbg !1521

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1522
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !1524
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1525

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1526
  br label %kmalloc_index.exit.i, !dbg !1526

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1527
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !1529
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1530

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1531
  br label %kmalloc_index.exit.i, !dbg !1531

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1532
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !1534
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1535

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1536
  br label %kmalloc_index.exit.i, !dbg !1536

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1537
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !1539
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1540

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1541
  br label %kmalloc_index.exit.i, !dbg !1541

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1542
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !1544
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1545

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1546
  br label %kmalloc_index.exit.i, !dbg !1546

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1547
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !1549
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1550

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1551
  br label %kmalloc_index.exit.i, !dbg !1551

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1552
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !1554
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1555

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1556
  br label %kmalloc_index.exit.i, !dbg !1556

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1557
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !1559
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1560

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1561
  br label %kmalloc_index.exit.i, !dbg !1561

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1562
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !1564
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1565

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1566
  br label %kmalloc_index.exit.i, !dbg !1566

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1567, !srcloc !1570
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !1571, !srcloc !1574
  unreachable, !dbg !1575

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !1576
  store i32 %51, i32* %index.i, align 4, !dbg !1577
  %52 = load i32, i32* %index.i, align 4, !dbg !1578
  %tobool.i12 = icmp ne i32 %52, 0, !dbg !1578
  br i1 %tobool.i12, label %if.end4.i, label %if.then3.i, !dbg !1580

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1581
  br label %kmalloc.exit, !dbg !1581

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i11, align 4, !dbg !1582
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1583
  %and.i.i = and i32 %54, 17, !dbg !1583
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1583
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1583
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1583
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1583
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1585

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1586
  br label %kmalloc_type.exit.i, !dbg !1586

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1587
  %and2.i.i = and i32 %55, 1, !dbg !1588
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1587
  %56 = zext i1 %tobool3.i.i to i64, !dbg !1587
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1587
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1589
  br label %kmalloc_type.exit.i, !dbg !1589

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !1590
  %idxprom.i = zext i32 %57 to i64, !dbg !1591
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1591
  %58 = load i32, i32* %index.i, align 4, !dbg !1592
  %idxprom6.i = zext i32 %58 to i64, !dbg !1591
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1591
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1591
  %60 = load i32, i32* %flags.addr.i11, align 4, !dbg !1593
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !1594
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1595
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1596
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #11, !dbg !1597
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1597
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1597
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1597
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1597
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1336
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1598
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !1599
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1600
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1601
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #11, !dbg !1602
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1603
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !1604
  store i8* %68, i8** %retval.i, align 8, !dbg !1605
  br label %kmalloc.exit, !dbg !1605

if.end9.i:                                        ; preds = %do.end
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !1606
  %70 = load i32, i32* %flags.addr.i11, align 4, !dbg !1607
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #11, !dbg !1608
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1608
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1608
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1608
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1608
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1609
  br label %kmalloc.exit, !dbg !1609

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i, align 8, !dbg !1610
  ret i8* %71, !dbg !1611
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_create_semaphore(i32, i32, i8**) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_create_rw_lock(%struct.acpi_rw_lock*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_mutex_terminate() #0 !dbg !1612 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1615, metadata !DIExpression()), !dbg !1616
  store i32 0, i32* %i, align 4, !dbg !1617
  br label %for.cond, !dbg !1619

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1620
  %cmp = icmp ult i32 %0, 6, !dbg !1622
  br i1 %cmp, label %for.body, label %for.end, !dbg !1623

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !1624
  call void @acpi_ut_delete_mutex(i32 %1) #9, !dbg !1626
  br label %for.inc, !dbg !1627

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4, !dbg !1628
  %inc = add i32 %2, 1, !dbg !1628
  store i32 %inc, i32* %i, align 4, !dbg !1628
  br label %for.cond, !dbg !1629, !llvm.loop !1630

for.end:                                          ; preds = %for.cond
  %3 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !1632
  %call = call i32 @acpi_os_delete_semaphore(i8* %3) #9, !dbg !1632
  %4 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1633
  call void @acpi_os_delete_lock(%struct.spinlock* %4) #9, !dbg !1634
  %5 = load %struct.raw_spinlock*, %struct.raw_spinlock** @acpi_gbl_hardware_lock, align 8, !dbg !1635
  call void @acpi_os_delete_raw_lock(%struct.raw_spinlock* %5) #9, !dbg !1636
  %6 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_reference_count_lock, align 8, !dbg !1637
  call void @acpi_os_delete_lock(%struct.spinlock* %6) #9, !dbg !1638
  call void @acpi_ut_delete_rw_lock(%struct.acpi_rw_lock* @acpi_gbl_namespace_rw_lock) #9, !dbg !1639
  ret void, !dbg !1640
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ut_delete_mutex(i32 %mutex_id) #0 !dbg !1641 {
entry:
  %mutex_id.addr = alloca i32, align 4
  store i32 %mutex_id, i32* %mutex_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mutex_id.addr, metadata !1644, metadata !DIExpression()), !dbg !1645
  %0 = load i32, i32* %mutex_id.addr, align 4, !dbg !1646
  %idxprom = zext i32 %0 to i64, !dbg !1646
  %arrayidx = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom, !dbg !1646
  %mutex = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx, i32 0, i32 0, !dbg !1646
  %1 = load i8*, i8** %mutex, align 8, !dbg !1646
  %call = call i32 @acpi_os_delete_semaphore(i8* %1) #9, !dbg !1646
  %2 = load i32, i32* %mutex_id.addr, align 4, !dbg !1647
  %idxprom1 = zext i32 %2 to i64, !dbg !1648
  %arrayidx2 = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom1, !dbg !1648
  %mutex3 = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx2, i32 0, i32 0, !dbg !1649
  store i8* null, i8** %mutex3, align 8, !dbg !1650
  %3 = load i32, i32* %mutex_id.addr, align 4, !dbg !1651
  %idxprom4 = zext i32 %3 to i64, !dbg !1652
  %arrayidx5 = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom4, !dbg !1652
  %thread_id = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx5, i32 0, i32 2, !dbg !1653
  store i64 0, i64* %thread_id, align 8, !dbg !1654
  ret void, !dbg !1655
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_delete_semaphore(i8*) #3

; Function Attrs: noredzone
declare dso_local void @acpi_os_delete_lock(%struct.spinlock*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_delete_raw_lock(%struct.raw_spinlock* %handle) #0 !dbg !1656 {
entry:
  %handle.addr = alloca %struct.raw_spinlock*, align 8
  store %struct.raw_spinlock* %handle, %struct.raw_spinlock** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raw_spinlock** %handle.addr, metadata !1659, metadata !DIExpression()), !dbg !1660
  %0 = load %struct.raw_spinlock*, %struct.raw_spinlock** %handle.addr, align 8, !dbg !1661
  %1 = bitcast %struct.raw_spinlock* %0 to i8*, !dbg !1661
  call void @acpi_os_free(i8* %1) #9, !dbg !1661
  ret void, !dbg !1662
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_rw_lock(%struct.acpi_rw_lock*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_acquire_mutex(i32 %mutex_id) #0 !dbg !1663 {
entry:
  %retval = alloca i32, align 4
  %mutex_id.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %this_thread_id = alloca i64, align 8
  store i32 %mutex_id, i32* %mutex_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mutex_id.addr, metadata !1664, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1666, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.declare(metadata i64* %this_thread_id, metadata !1668, metadata !DIExpression()), !dbg !1669
  %0 = load i32, i32* %mutex_id.addr, align 4, !dbg !1670
  %cmp = icmp ugt i32 %0, 5, !dbg !1672
  br i1 %cmp, label %if.then, label %if.end, !dbg !1673

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1674
  br label %return, !dbg !1674

if.end:                                           ; preds = %entry
  %call = call i64 @acpi_os_get_thread_id() #9, !dbg !1676
  store i64 %call, i64* %this_thread_id, align 8, !dbg !1677
  %1 = load i32, i32* %mutex_id.addr, align 4, !dbg !1678
  %idxprom = zext i32 %1 to i64, !dbg !1678
  %arrayidx = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom, !dbg !1678
  %mutex = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx, i32 0, i32 0, !dbg !1678
  %2 = load i8*, i8** %mutex, align 8, !dbg !1678
  %call1 = call i32 @acpi_os_wait_semaphore(i8* %2, i32 1, i16 zeroext -1) #9, !dbg !1678
  store i32 %call1, i32* %status, align 4, !dbg !1679
  %3 = load i32, i32* %status, align 4, !dbg !1680
  %tobool = icmp ne i32 %3, 0, !dbg !1680
  br i1 %tobool, label %if.else, label %if.then2, !dbg !1682

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %mutex_id.addr, align 4, !dbg !1683
  %idxprom3 = zext i32 %4 to i64, !dbg !1685
  %arrayidx4 = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom3, !dbg !1685
  %use_count = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx4, i32 0, i32 1, !dbg !1686
  %5 = load i32, i32* %use_count, align 8, !dbg !1687
  %inc = add i32 %5, 1, !dbg !1687
  store i32 %inc, i32* %use_count, align 8, !dbg !1687
  %6 = load i64, i64* %this_thread_id, align 8, !dbg !1688
  %7 = load i32, i32* %mutex_id.addr, align 4, !dbg !1689
  %idxprom5 = zext i32 %7 to i64, !dbg !1690
  %arrayidx6 = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom5, !dbg !1690
  %thread_id = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx6, i32 0, i32 2, !dbg !1691
  store i64 %6, i64* %thread_id, align 8, !dbg !1692
  br label %if.end8, !dbg !1693

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %status, align 4, !dbg !1694
  %9 = load i64, i64* %this_thread_id, align 8, !dbg !1694
  %conv = trunc i64 %9 to i32, !dbg !1694
  %10 = load i32, i32* %mutex_id.addr, align 4, !dbg !1694
  %call7 = call i8* @acpi_ut_get_mutex_name(i32 %10) #9, !dbg !1694
  %11 = load i32, i32* %mutex_id.addr, align 4, !dbg !1694
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 252, i32 %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %conv, i8* %call7, i32 %11) #9, !dbg !1694
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  %12 = load i32, i32* %status, align 4, !dbg !1696
  store i32 %12, i32* %retval, align 4, !dbg !1697
  br label %return, !dbg !1697

return:                                           ; preds = %if.end8, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !1698
  ret i32 %13, !dbg !1698
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_os_get_thread_id() #0 !dbg !1699 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !1702, metadata !DIExpression()), !dbg !1708
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !1710, metadata !DIExpression()), !dbg !1714
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !1715, metadata !DIExpression()), !dbg !1717
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !1714
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !1714
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #12, !dbg !1717, !srcloc !1718
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !1717
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !1717
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !1717
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !1717
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !1717
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !1708
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !1708
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !1708
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !1708
  %7 = ptrtoint %struct.task_struct* %6 to i64, !dbg !1719
  ret i64 %7, !dbg !1720
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_wait_semaphore(i8*, i32, i16 zeroext) #3

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_mutex_name(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_release_mutex(i32 %mutex_id) #0 !dbg !1721 {
entry:
  %retval = alloca i32, align 4
  %mutex_id.addr = alloca i32, align 4
  store i32 %mutex_id, i32* %mutex_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mutex_id.addr, metadata !1722, metadata !DIExpression()), !dbg !1723
  %0 = load i32, i32* %mutex_id.addr, align 4, !dbg !1724
  %cmp = icmp ugt i32 %0, 5, !dbg !1726
  br i1 %cmp, label %if.then, label %if.end, !dbg !1727

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1728
  br label %return, !dbg !1728

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mutex_id.addr, align 4, !dbg !1730
  %idxprom = zext i32 %1 to i64, !dbg !1732
  %arrayidx = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom, !dbg !1732
  %thread_id = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx, i32 0, i32 2, !dbg !1733
  %2 = load i64, i64* %thread_id, align 8, !dbg !1733
  %cmp1 = icmp eq i64 %2, 0, !dbg !1734
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1735

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %mutex_id.addr, align 4, !dbg !1736
  %call = call i8* @acpi_ut_get_mutex_name(i32 %3) #9, !dbg !1736
  %4 = load i32, i32* %mutex_id.addr, align 4, !dbg !1736
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 289, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %call, i32 %4) #9, !dbg !1736
  store i32 20, i32* %retval, align 4, !dbg !1738
  br label %return, !dbg !1738

if.end3:                                          ; preds = %if.end
  %5 = load i32, i32* %mutex_id.addr, align 4, !dbg !1739
  %idxprom4 = zext i32 %5 to i64, !dbg !1740
  %arrayidx5 = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom4, !dbg !1740
  %thread_id6 = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx5, i32 0, i32 2, !dbg !1741
  store i64 0, i64* %thread_id6, align 8, !dbg !1742
  %6 = load i32, i32* %mutex_id.addr, align 4, !dbg !1743
  %idxprom7 = zext i32 %6 to i64, !dbg !1743
  %arrayidx8 = getelementptr [6 x %struct.acpi_mutex_info], [6 x %struct.acpi_mutex_info]* @acpi_gbl_mutex_info, i64 0, i64 %idxprom7, !dbg !1743
  %mutex = getelementptr inbounds %struct.acpi_mutex_info, %struct.acpi_mutex_info* %arrayidx8, i32 0, i32 0, !dbg !1743
  %7 = load i8*, i8** %mutex, align 8, !dbg !1743
  %call9 = call i32 @acpi_os_signal_semaphore(i8* %7, i32 1) #9, !dbg !1743
  store i32 0, i32* %retval, align 4, !dbg !1744
  br label %return, !dbg !1744

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !1745
  ret i32 %8, !dbg !1745
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_signal_semaphore(i8*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1746 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1750, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1753, metadata !DIExpression()), !dbg !1752
  %0 = load i64, i64* %__edi, align 8, !dbg !1752
  store i64 %0, i64* %__edi, align 8, !dbg !1752
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1754, metadata !DIExpression()), !dbg !1752
  %1 = load i64, i64* %__esi, align 8, !dbg !1752
  store i64 %1, i64* %__esi, align 8, !dbg !1752
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1755, metadata !DIExpression()), !dbg !1752
  %2 = load i64, i64* %__edx, align 8, !dbg !1752
  store i64 %2, i64* %__edx, align 8, !dbg !1752
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1756, metadata !DIExpression()), !dbg !1752
  %3 = load i64, i64* %__ecx, align 8, !dbg !1752
  store i64 %3, i64* %__ecx, align 8, !dbg !1752
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1757, metadata !DIExpression()), !dbg !1752
  %4 = load i64, i64* %__eax, align 8, !dbg !1752
  store i64 %4, i64* %__eax, align 8, !dbg !1752
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1752
  %6 = call i64 @llvm.read_register.i64(metadata !1178), !dbg !1758
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !1758, !srcloc !1761
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1758
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1758
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1758
  call void @llvm.write_register.i64(metadata !1178, i64 %asmresult1), !dbg !1758
  %8 = load i64, i64* %__eax, align 8, !dbg !1758
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1762, metadata !DIExpression()), !dbg !1764
  store i64 -1, i64* %__mask, align 8, !dbg !1764
  %9 = load i64, i64* %__mask, align 8, !dbg !1764
  store i64 %9, i64* %tmp, align 8, !dbg !1764
  %10 = load i64, i64* %tmp, align 8, !dbg !1764
  %and = and i64 %8, %10, !dbg !1758
  store i64 %and, i64* %__ret, align 8, !dbg !1758
  %11 = load i64, i64* %__ret, align 8, !dbg !1752
  store i64 %11, i64* %tmp2, align 8, !dbg !1765
  %12 = load i64, i64* %tmp2, align 8, !dbg !1752
  ret i64 %12, !dbg !1766
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !1767 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1769, metadata !DIExpression()), !dbg !1774
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1776, metadata !DIExpression()), !dbg !1777
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1778, metadata !DIExpression()), !dbg !1779
  %0 = load i64, i64* %size.addr, align 8, !dbg !1780
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1782
  br i1 %1, label %if.then, label %if.end447, !dbg !1783

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1784
  %tobool = icmp ne i64 %2, 0, !dbg !1784
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1787

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1788
  br label %return, !dbg !1788

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1789
  %cmp = icmp ult i64 %3, 4096, !dbg !1791
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1792

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1793
  br label %return, !dbg !1793

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub = sub i64 %4, 1, !dbg !1794
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1794
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1794

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub4 = sub i64 %6, 1, !dbg !1794
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1794
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1794

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub6 = sub i64 %8, 1, !dbg !1794
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1794
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1794

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1794

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub9 = sub i64 %9, 1, !dbg !1794
  %and = and i64 %sub9, -9223372036854775808, !dbg !1794
  %tobool10 = icmp ne i64 %and, 0, !dbg !1794
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1794

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1794

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub13 = sub i64 %10, 1, !dbg !1794
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1794
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1794
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1794

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1794

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub18 = sub i64 %11, 1, !dbg !1794
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1794
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1794
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1794

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1794

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub23 = sub i64 %12, 1, !dbg !1794
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1794
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1794
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1794

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1794

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub28 = sub i64 %13, 1, !dbg !1794
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1794
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1794
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1794

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1794

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub33 = sub i64 %14, 1, !dbg !1794
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1794
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1794
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1794

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1794

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub38 = sub i64 %15, 1, !dbg !1794
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1794
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1794
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1794

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1794

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub43 = sub i64 %16, 1, !dbg !1794
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1794
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1794
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1794

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1794

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub48 = sub i64 %17, 1, !dbg !1794
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1794
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1794
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1794

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1794

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub53 = sub i64 %18, 1, !dbg !1794
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1794
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1794
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1794

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1794

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub58 = sub i64 %19, 1, !dbg !1794
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1794
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1794
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1794

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1794

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub63 = sub i64 %20, 1, !dbg !1794
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1794
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1794
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1794

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1794

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub68 = sub i64 %21, 1, !dbg !1794
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1794
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1794
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1794

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1794

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub73 = sub i64 %22, 1, !dbg !1794
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1794
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1794
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1794

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1794

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub78 = sub i64 %23, 1, !dbg !1794
  %and79 = and i64 %sub78, 562949953421312, !dbg !1794
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1794
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1794

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1794

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub83 = sub i64 %24, 1, !dbg !1794
  %and84 = and i64 %sub83, 281474976710656, !dbg !1794
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1794
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1794

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1794

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub88 = sub i64 %25, 1, !dbg !1794
  %and89 = and i64 %sub88, 140737488355328, !dbg !1794
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1794
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1794

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1794

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub93 = sub i64 %26, 1, !dbg !1794
  %and94 = and i64 %sub93, 70368744177664, !dbg !1794
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1794
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1794

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1794

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub98 = sub i64 %27, 1, !dbg !1794
  %and99 = and i64 %sub98, 35184372088832, !dbg !1794
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1794
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1794

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1794

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub103 = sub i64 %28, 1, !dbg !1794
  %and104 = and i64 %sub103, 17592186044416, !dbg !1794
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1794
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1794

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1794

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub108 = sub i64 %29, 1, !dbg !1794
  %and109 = and i64 %sub108, 8796093022208, !dbg !1794
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1794
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1794

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1794

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub113 = sub i64 %30, 1, !dbg !1794
  %and114 = and i64 %sub113, 4398046511104, !dbg !1794
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1794
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1794

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1794

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub118 = sub i64 %31, 1, !dbg !1794
  %and119 = and i64 %sub118, 2199023255552, !dbg !1794
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1794
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1794

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1794

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub123 = sub i64 %32, 1, !dbg !1794
  %and124 = and i64 %sub123, 1099511627776, !dbg !1794
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1794
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1794

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1794

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub128 = sub i64 %33, 1, !dbg !1794
  %and129 = and i64 %sub128, 549755813888, !dbg !1794
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1794
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1794

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1794

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub133 = sub i64 %34, 1, !dbg !1794
  %and134 = and i64 %sub133, 274877906944, !dbg !1794
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1794
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1794

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1794

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub138 = sub i64 %35, 1, !dbg !1794
  %and139 = and i64 %sub138, 137438953472, !dbg !1794
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1794
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1794

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1794

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub143 = sub i64 %36, 1, !dbg !1794
  %and144 = and i64 %sub143, 68719476736, !dbg !1794
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1794
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1794

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1794

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub148 = sub i64 %37, 1, !dbg !1794
  %and149 = and i64 %sub148, 34359738368, !dbg !1794
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1794
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1794

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1794

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub153 = sub i64 %38, 1, !dbg !1794
  %and154 = and i64 %sub153, 17179869184, !dbg !1794
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1794
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1794

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1794

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub158 = sub i64 %39, 1, !dbg !1794
  %and159 = and i64 %sub158, 8589934592, !dbg !1794
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1794
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1794

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1794

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub163 = sub i64 %40, 1, !dbg !1794
  %and164 = and i64 %sub163, 4294967296, !dbg !1794
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1794
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1794

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1794

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub168 = sub i64 %41, 1, !dbg !1794
  %and169 = and i64 %sub168, 2147483648, !dbg !1794
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1794
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1794

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1794

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub173 = sub i64 %42, 1, !dbg !1794
  %and174 = and i64 %sub173, 1073741824, !dbg !1794
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1794
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1794

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1794

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub178 = sub i64 %43, 1, !dbg !1794
  %and179 = and i64 %sub178, 536870912, !dbg !1794
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1794
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1794

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1794

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub183 = sub i64 %44, 1, !dbg !1794
  %and184 = and i64 %sub183, 268435456, !dbg !1794
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1794
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1794

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1794

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub188 = sub i64 %45, 1, !dbg !1794
  %and189 = and i64 %sub188, 134217728, !dbg !1794
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1794
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1794

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1794

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub193 = sub i64 %46, 1, !dbg !1794
  %and194 = and i64 %sub193, 67108864, !dbg !1794
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1794
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1794

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1794

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub198 = sub i64 %47, 1, !dbg !1794
  %and199 = and i64 %sub198, 33554432, !dbg !1794
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1794
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1794

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1794

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub203 = sub i64 %48, 1, !dbg !1794
  %and204 = and i64 %sub203, 16777216, !dbg !1794
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1794
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1794

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1794

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub208 = sub i64 %49, 1, !dbg !1794
  %and209 = and i64 %sub208, 8388608, !dbg !1794
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1794
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1794

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1794

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub213 = sub i64 %50, 1, !dbg !1794
  %and214 = and i64 %sub213, 4194304, !dbg !1794
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1794
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1794

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1794

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub218 = sub i64 %51, 1, !dbg !1794
  %and219 = and i64 %sub218, 2097152, !dbg !1794
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1794
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1794

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1794

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub223 = sub i64 %52, 1, !dbg !1794
  %and224 = and i64 %sub223, 1048576, !dbg !1794
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1794
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1794

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1794

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub228 = sub i64 %53, 1, !dbg !1794
  %and229 = and i64 %sub228, 524288, !dbg !1794
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1794
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1794

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1794

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub233 = sub i64 %54, 1, !dbg !1794
  %and234 = and i64 %sub233, 262144, !dbg !1794
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1794
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1794

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1794

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub238 = sub i64 %55, 1, !dbg !1794
  %and239 = and i64 %sub238, 131072, !dbg !1794
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1794
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1794

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1794

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub243 = sub i64 %56, 1, !dbg !1794
  %and244 = and i64 %sub243, 65536, !dbg !1794
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1794
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1794

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1794

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub248 = sub i64 %57, 1, !dbg !1794
  %and249 = and i64 %sub248, 32768, !dbg !1794
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1794
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1794

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1794

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub253 = sub i64 %58, 1, !dbg !1794
  %and254 = and i64 %sub253, 16384, !dbg !1794
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1794
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1794

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1794

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub258 = sub i64 %59, 1, !dbg !1794
  %and259 = and i64 %sub258, 8192, !dbg !1794
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1794
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1794

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1794

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub263 = sub i64 %60, 1, !dbg !1794
  %and264 = and i64 %sub263, 4096, !dbg !1794
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1794
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1794

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1794

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub268 = sub i64 %61, 1, !dbg !1794
  %and269 = and i64 %sub268, 2048, !dbg !1794
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1794
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1794

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1794

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub273 = sub i64 %62, 1, !dbg !1794
  %and274 = and i64 %sub273, 1024, !dbg !1794
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1794
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1794

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1794

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub278 = sub i64 %63, 1, !dbg !1794
  %and279 = and i64 %sub278, 512, !dbg !1794
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1794
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1794

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1794

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub283 = sub i64 %64, 1, !dbg !1794
  %and284 = and i64 %sub283, 256, !dbg !1794
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1794
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1794

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1794

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub288 = sub i64 %65, 1, !dbg !1794
  %and289 = and i64 %sub288, 128, !dbg !1794
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1794
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1794

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1794

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub293 = sub i64 %66, 1, !dbg !1794
  %and294 = and i64 %sub293, 64, !dbg !1794
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1794
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1794

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1794

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub298 = sub i64 %67, 1, !dbg !1794
  %and299 = and i64 %sub298, 32, !dbg !1794
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1794
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1794

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1794

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub303 = sub i64 %68, 1, !dbg !1794
  %and304 = and i64 %sub303, 16, !dbg !1794
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1794
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1794

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1794

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub308 = sub i64 %69, 1, !dbg !1794
  %and309 = and i64 %sub308, 8, !dbg !1794
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1794
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1794

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1794

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub313 = sub i64 %70, 1, !dbg !1794
  %and314 = and i64 %sub313, 4, !dbg !1794
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1794
  %71 = zext i1 %tobool315 to i64, !dbg !1794
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1794
  br label %cond.end, !dbg !1794

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1794
  br label %cond.end317, !dbg !1794

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1794
  br label %cond.end319, !dbg !1794

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1794
  br label %cond.end321, !dbg !1794

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1794
  br label %cond.end323, !dbg !1794

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1794
  br label %cond.end325, !dbg !1794

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1794
  br label %cond.end327, !dbg !1794

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1794
  br label %cond.end329, !dbg !1794

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1794
  br label %cond.end331, !dbg !1794

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1794
  br label %cond.end333, !dbg !1794

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1794
  br label %cond.end335, !dbg !1794

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1794
  br label %cond.end337, !dbg !1794

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1794
  br label %cond.end339, !dbg !1794

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1794
  br label %cond.end341, !dbg !1794

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1794
  br label %cond.end343, !dbg !1794

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1794
  br label %cond.end345, !dbg !1794

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1794
  br label %cond.end347, !dbg !1794

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1794
  br label %cond.end349, !dbg !1794

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1794
  br label %cond.end351, !dbg !1794

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1794
  br label %cond.end353, !dbg !1794

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1794
  br label %cond.end355, !dbg !1794

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1794
  br label %cond.end357, !dbg !1794

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1794
  br label %cond.end359, !dbg !1794

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1794
  br label %cond.end361, !dbg !1794

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1794
  br label %cond.end363, !dbg !1794

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1794
  br label %cond.end365, !dbg !1794

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1794
  br label %cond.end367, !dbg !1794

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1794
  br label %cond.end369, !dbg !1794

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1794
  br label %cond.end371, !dbg !1794

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1794
  br label %cond.end373, !dbg !1794

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1794
  br label %cond.end375, !dbg !1794

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1794
  br label %cond.end377, !dbg !1794

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1794
  br label %cond.end379, !dbg !1794

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1794
  br label %cond.end381, !dbg !1794

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1794
  br label %cond.end383, !dbg !1794

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1794
  br label %cond.end385, !dbg !1794

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1794
  br label %cond.end387, !dbg !1794

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1794
  br label %cond.end389, !dbg !1794

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1794
  br label %cond.end391, !dbg !1794

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1794
  br label %cond.end393, !dbg !1794

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1794
  br label %cond.end395, !dbg !1794

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1794
  br label %cond.end397, !dbg !1794

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1794
  br label %cond.end399, !dbg !1794

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1794
  br label %cond.end401, !dbg !1794

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1794
  br label %cond.end403, !dbg !1794

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1794
  br label %cond.end405, !dbg !1794

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1794
  br label %cond.end407, !dbg !1794

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1794
  br label %cond.end409, !dbg !1794

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1794
  br label %cond.end411, !dbg !1794

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1794
  br label %cond.end413, !dbg !1794

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1794
  br label %cond.end415, !dbg !1794

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1794
  br label %cond.end417, !dbg !1794

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1794
  br label %cond.end419, !dbg !1794

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1794
  br label %cond.end421, !dbg !1794

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1794
  br label %cond.end423, !dbg !1794

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1794
  br label %cond.end425, !dbg !1794

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1794
  br label %cond.end427, !dbg !1794

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1794
  br label %cond.end429, !dbg !1794

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1794
  br label %cond.end431, !dbg !1794

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1794
  br label %cond.end433, !dbg !1794

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1794
  br label %cond.end435, !dbg !1794

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1794
  br label %cond.end437, !dbg !1794

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1794
  br label %cond.end440, !dbg !1794

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1794

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1794
  br label %cond.end444, !dbg !1794

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1794
  %sub443 = sub i64 %72, 1, !dbg !1794
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !1794
  br label %cond.end444, !dbg !1794

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1794
  %sub446 = sub i32 %cond445, 12, !dbg !1795
  %add = add i32 %sub446, 1, !dbg !1796
  store i32 %add, i32* %retval, align 4, !dbg !1797
  br label %return, !dbg !1797

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1798
  %dec = add i64 %73, -1, !dbg !1798
  store i64 %dec, i64* %size.addr, align 8, !dbg !1798
  %74 = load i64, i64* %size.addr, align 8, !dbg !1799
  %shr = lshr i64 %74, 12, !dbg !1799
  store i64 %shr, i64* %size.addr, align 8, !dbg !1799
  %75 = load i64, i64* %size.addr, align 8, !dbg !1800
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1777
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1801
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1802
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !1801, !srcloc !1803
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1801
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1804
  %add.i = add i32 %79, 1, !dbg !1805
  store i32 %add.i, i32* %retval, align 4, !dbg !1806
  br label %return, !dbg !1806

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1807
  ret i32 %80, !dbg !1807
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1808 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1769, metadata !DIExpression()), !dbg !1812
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1776, metadata !DIExpression()), !dbg !1814
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1815, metadata !DIExpression()), !dbg !1816
  %0 = load i64, i64* %n.addr, align 8, !dbg !1817
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1814
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1818
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1819
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !1818, !srcloc !1803
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1818
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1820
  %add.i = add i32 %4, 1, !dbg !1821
  %sub = sub i32 %add.i, 1, !dbg !1822
  ret i32 %sub, !dbg !1823
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1824 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1828, metadata !DIExpression()), !dbg !1829
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1830, metadata !DIExpression()), !dbg !1831
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1832, metadata !DIExpression()), !dbg !1833
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1834, metadata !DIExpression()), !dbg !1835
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1836
  ret i8* %0, !dbg !1837
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1838 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1841, metadata !DIExpression()), !dbg !1842
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1843
  call void @kfree(i8* %0) #9, !dbg !1844
  ret void, !dbg !1845
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!1178}
!llvm.module.flags = !{!1179, !1180, !1181, !1182}
!llvm.ident = !{!1183}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 12, type: !1176, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !1175, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utmutex.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !14, line: 65, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !19, line: 16, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!24 = !{!25, !32, !33, !27, !35, !37, !38, !39, !40}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !26, line: 127, baseType: !27)
!26 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !28, line: 23, baseType: !29)
!28 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !30, line: 31, baseType: !31)
!30 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!31 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !26, line: 421, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !28, line: 21, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !30, line: 27, baseType: !7)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !36, line: 148, baseType: !7)
!36 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !42, line: 640, size: 48640, elements: !43)
!42 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !50, !53, !54, !65, !66, !67, !68, !69, !70, !71, !72, !76, !107, !119, !229, !230, !231, !242, !243, !245, !246, !468, !469, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !548, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !604, !606, !607, !608, !610, !612, !613, !614, !615, !616, !622, !623, !624, !625, !626, !627, !628, !642, !647, !651, !652, !653, !656, !661, !664, !667, !670, !673, !676, !679, !682, !688, !689, !690, !696, !697, !701, !702, !703, !712, !713, !714, !715, !716, !721, !722, !723, !726, !727, !730, !733, !736, !739, !742, !745, !746, !827, !830, !833, !834, !837, !838, !839, !845, !846, !847, !860, !861, !862, !872, !877, !880, !978, !979, !980, !981, !982, !983, !984, !985, !988, !989, !990, !991, !992, !993, !994, !995, !996}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !41, file: !42, line: 646, baseType: !45, size: 128)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !46, line: 56, size: 128, elements: !47)
!46 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !45, file: !46, line: 57, baseType: !38, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !45, file: !46, line: 58, baseType: !33, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !41, file: !42, line: 649, baseType: !51, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !41, file: !42, line: 657, baseType: !37, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !41, file: !42, line: 658, baseType: !55, size: 32, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !56, line: 113, baseType: !57)
!56 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !56, line: 111, size: 32, elements: !58)
!58 = !{!59}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !57, file: !56, line: 112, baseType: !60, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !36, line: 168, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 166, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !61, file: !36, line: 167, baseType: !64, size: 32)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !42, line: 660, baseType: !7, size: 32, offset: 288)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !41, file: !42, line: 661, baseType: !7, size: 32, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !41, file: !42, line: 684, baseType: !64, size: 32, offset: 352)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !41, file: !42, line: 686, baseType: !64, size: 32, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !41, file: !42, line: 687, baseType: !64, size: 32, offset: 416)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !41, file: !42, line: 688, baseType: !64, size: 32, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !41, file: !42, line: 689, baseType: !7, size: 32, offset: 480)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !41, file: !42, line: 691, baseType: !73, size: 64, offset: 512)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !42, line: 691, flags: DIFlagFwdDecl)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !41, file: !42, line: 692, baseType: !77, size: 832, offset: 576)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !42, line: 451, size: 832, elements: !78)
!78 = !{!79, !84, !92, !98, !99, !100, !101, !102, !103, !104}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !77, file: !42, line: 453, baseType: !80, size: 128)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !42, line: 325, size: 128, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !80, file: !42, line: 326, baseType: !38, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !80, file: !42, line: 327, baseType: !33, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !77, file: !42, line: 454, baseType: !85, size: 192, align: 64, offset: 128)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !86, line: 24, size: 192, align: 64, elements: !87)
!86 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89, !91}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !85, file: !86, line: 25, baseType: !38, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !85, file: !86, line: 26, baseType: !90, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !85, file: !86, line: 27, baseType: !90, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !77, file: !42, line: 455, baseType: !93, size: 128, offset: 320)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !36, line: 178, size: 128, elements: !94)
!94 = !{!95, !97}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !93, file: !36, line: 179, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !93, file: !36, line: 179, baseType: !96, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !77, file: !42, line: 456, baseType: !7, size: 32, offset: 448)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !77, file: !42, line: 458, baseType: !27, size: 64, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !77, file: !42, line: 459, baseType: !27, size: 64, offset: 576)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !77, file: !42, line: 460, baseType: !27, size: 64, offset: 640)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !77, file: !42, line: 461, baseType: !27, size: 64, offset: 704)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !77, file: !42, line: 463, baseType: !27, size: 64, offset: 768)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !77, file: !42, line: 465, baseType: !105, offset: 832)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !42, line: 415, elements: !106)
!106 = !{}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !41, file: !42, line: 693, baseType: !108, size: 384, offset: 1408)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !42, line: 489, size: 384, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !116, !117}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !108, file: !42, line: 490, baseType: !93, size: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !108, file: !42, line: 491, baseType: !38, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !108, file: !42, line: 492, baseType: !38, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !108, file: !42, line: 493, baseType: !7, size: 32, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !108, file: !42, line: 494, baseType: !115, size: 16, offset: 288)
!115 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !108, file: !42, line: 495, baseType: !115, size: 16, offset: 304)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !108, file: !42, line: 497, baseType: !118, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !41, file: !42, line: 697, baseType: !120, size: 1792, offset: 1792)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !42, line: 507, size: 1792, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !132, !133, !134, !135, !136, !137, !138, !226, !227}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !120, file: !42, line: 508, baseType: !85, size: 192, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !120, file: !42, line: 515, baseType: !27, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !120, file: !42, line: 516, baseType: !27, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !120, file: !42, line: 517, baseType: !27, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !120, file: !42, line: 518, baseType: !27, size: 64, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !120, file: !42, line: 519, baseType: !27, size: 64, offset: 448)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !120, file: !42, line: 526, baseType: !129, size: 64, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !28, line: 22, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !30, line: 30, baseType: !131)
!131 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !120, file: !42, line: 527, baseType: !27, size: 64, offset: 576)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !42, line: 528, baseType: !7, size: 32, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !120, file: !42, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !120, file: !42, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !120, file: !42, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !120, file: !42, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !120, file: !42, line: 563, baseType: !139, size: 512, offset: 704)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !140)
!140 = !{!141, !149, !150, !155, !219, !223, !224, !225}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !14, line: 119, baseType: !142, size: 256)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !143, line: 9, size: 256, elements: !144)
!143 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !142, file: !143, line: 10, baseType: !85, size: 192, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !142, file: !143, line: 11, baseType: !147, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !148, line: 29, baseType: !129)
!148 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !139, file: !14, line: 120, baseType: !147, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !139, file: !14, line: 121, baseType: !151, size: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!13, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !139, file: !14, line: 122, baseType: !156, size: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !158)
!158 = !{!159, !187, !188, !192, !202, !203, !214, !218}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !157, file: !14, line: 160, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !162)
!162 = !{!163, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !161, file: !14, line: 215, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !165, line: 29, baseType: !166)
!165 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !165, line: 20, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !166, file: !165, line: 21, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !170, line: 25, baseType: !171)
!170 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 25, elements: !106)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !161, file: !14, line: 216, baseType: !7, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !161, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !161, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !161, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !161, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !161, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !161, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !161, file: !14, line: 233, baseType: !147, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !161, file: !14, line: 234, baseType: !154, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !161, file: !14, line: 235, baseType: !147, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !161, file: !14, line: 236, baseType: !154, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !161, file: !14, line: 237, baseType: !184, size: 4096, offset: 512)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 4096, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !157, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !157, file: !14, line: 162, baseType: !189, size: 32, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !36, line: 27, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !191, line: 96, baseType: !64)
!191 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!192 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !157, file: !14, line: 163, baseType: !193, size: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !194, line: 276, baseType: !195)
!194 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !194, line: 276, size: 32, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !195, file: !194, line: 276, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !194, line: 70, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !194, line: 65, size: 32, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !199, file: !194, line: 66, baseType: !7, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !157, file: !14, line: 164, baseType: !154, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !157, file: !14, line: 165, baseType: !204, size: 128, offset: 256)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !143, line: 14, size: 128, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !204, file: !143, line: 15, baseType: !207, size: 128)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !86, line: 125, size: 128, elements: !208)
!208 = !{!209, !213}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !207, file: !86, line: 126, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !86, line: 31, size: 64, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !210, file: !86, line: 32, baseType: !90, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !207, file: !86, line: 127, baseType: !90, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !157, file: !14, line: 166, baseType: !215, size: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!147}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !157, file: !14, line: 167, baseType: !147, size: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !139, file: !14, line: 123, baseType: !220, size: 8, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !28, line: 17, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !30, line: 21, baseType: !222)
!222 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !139, file: !14, line: 124, baseType: !220, size: 8, offset: 456)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !139, file: !14, line: 125, baseType: !220, size: 8, offset: 464)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !139, file: !14, line: 126, baseType: !220, size: 8, offset: 472)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !120, file: !42, line: 572, baseType: !139, size: 512, offset: 1216)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !120, file: !42, line: 580, baseType: !228, size: 64, offset: 1728)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !41, file: !42, line: 721, baseType: !7, size: 32, offset: 3584)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !41, file: !42, line: 722, baseType: !64, size: 32, offset: 3616)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !41, file: !42, line: 723, baseType: !232, size: 64, offset: 3648)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !235, line: 17, baseType: !236)
!235 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !235, line: 17, size: 64, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !236, file: !235, line: 17, baseType: !239, size: 64)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 1)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !41, file: !42, line: 724, baseType: !234, size: 64, offset: 3712)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !41, file: !42, line: 749, baseType: !244, offset: 3776)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !42, line: 290, elements: !106)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !41, file: !42, line: 751, baseType: !93, size: 128, offset: 3776)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !41, file: !42, line: 757, baseType: !247, size: 64, offset: 3904)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !249, line: 388, size: 7296, elements: !250)
!249 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!250 = !{!251, !464}
!251 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !249, line: 389, baseType: !252, size: 7296)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !249, line: 389, size: 7296, elements: !253)
!253 = !{!254, !301, !302, !303, !307, !308, !309, !310, !311, !318, !319, !320, !321, !322, !323, !324, !332, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !366, !374, !377, !409, !410, !432, !433, !436, !440, !441, !444, !445, !448, !451, !463}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !252, file: !249, line: 390, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !249, line: 305, size: 1472, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !273, !274, !279, !280, !283, !287, !288, !291, !292, !299}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !256, file: !249, line: 308, baseType: !38, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !256, file: !249, line: 309, baseType: !38, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !256, file: !249, line: 313, baseType: !255, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !256, file: !249, line: 313, baseType: !255, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !256, file: !249, line: 315, baseType: !85, size: 192, align: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !256, file: !249, line: 323, baseType: !38, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !256, file: !249, line: 327, baseType: !247, size: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !256, file: !249, line: 333, baseType: !266, size: 64, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !267, line: 284, baseType: !268)
!267 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !267, line: 284, size: 64, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !268, file: !267, line: 284, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !272, line: 19, baseType: !38)
!272 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !256, file: !249, line: 334, baseType: !38, size: 64, offset: 640)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !256, file: !249, line: 343, baseType: !275, size: 256, offset: 704)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !256, file: !249, line: 340, size: 256, elements: !276)
!276 = !{!277, !278}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !275, file: !249, line: 341, baseType: !85, size: 192, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !275, file: !249, line: 342, baseType: !38, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !256, file: !249, line: 351, baseType: !93, size: 128, offset: 960)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !256, file: !249, line: 353, baseType: !281, size: 64, offset: 1088)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !249, line: 353, flags: DIFlagFwdDecl)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !256, file: !249, line: 356, baseType: !284, size: 64, offset: 1152)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !249, line: 356, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !256, file: !249, line: 359, baseType: !38, size: 64, offset: 1216)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !256, file: !249, line: 361, baseType: !289, size: 64, offset: 1280)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !267, line: 526, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !256, file: !249, line: 362, baseType: !37, size: 64, offset: 1344)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !256, file: !249, line: 365, baseType: !293, size: 64, offset: 1408)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !294, line: 13, baseType: !295)
!294 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !36, line: 175, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 173, size: 64, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !296, file: !36, line: 174, baseType: !129, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !256, file: !249, line: 373, baseType: !300, offset: 1472)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !249, line: 296, elements: !106)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !252, file: !249, line: 391, baseType: !210, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !252, file: !249, line: 392, baseType: !27, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !252, file: !249, line: 394, baseType: !304, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!38, !289, !38, !38, !38, !38}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !252, file: !249, line: 398, baseType: !38, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !252, file: !249, line: 399, baseType: !38, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !252, file: !249, line: 405, baseType: !38, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !252, file: !249, line: 406, baseType: !38, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !252, file: !249, line: 407, baseType: !312, size: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !267, line: 286, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 286, size: 64, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !314, file: !267, line: 286, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !272, line: 18, baseType: !38)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !252, file: !249, line: 416, baseType: !60, size: 32, offset: 576)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !252, file: !249, line: 428, baseType: !60, size: 32, offset: 608)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !252, file: !249, line: 437, baseType: !60, size: 32, offset: 640)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !252, file: !249, line: 447, baseType: !60, size: 32, offset: 672)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !252, file: !249, line: 450, baseType: !293, size: 64, offset: 704)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !252, file: !249, line: 452, baseType: !64, size: 32, offset: 768)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !252, file: !249, line: 454, baseType: !325, offset: 800)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !165, line: 83, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !165, line: 71, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !165, line: 72, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !165, line: 72, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !329, file: !165, line: 73, baseType: !166)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !252, file: !249, line: 457, baseType: !333, size: 256, offset: 832)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !334, line: 35, size: 256, elements: !335)
!334 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!335 = !{!336, !337, !338, !339}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !333, file: !334, line: 36, baseType: !293, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !333, file: !334, line: 42, baseType: !293, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !333, file: !334, line: 46, baseType: !164, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !333, file: !334, line: 47, baseType: !93, size: 128, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !252, file: !249, line: 459, baseType: !93, size: 128, offset: 1088)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !252, file: !249, line: 466, baseType: !38, size: 64, offset: 1216)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !252, file: !249, line: 467, baseType: !38, size: 64, offset: 1280)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !252, file: !249, line: 469, baseType: !38, size: 64, offset: 1344)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !252, file: !249, line: 470, baseType: !38, size: 64, offset: 1408)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !252, file: !249, line: 471, baseType: !295, size: 64, offset: 1472)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !252, file: !249, line: 472, baseType: !38, size: 64, offset: 1536)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !252, file: !249, line: 473, baseType: !38, size: 64, offset: 1600)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !252, file: !249, line: 474, baseType: !38, size: 64, offset: 1664)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !252, file: !249, line: 475, baseType: !38, size: 64, offset: 1728)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !252, file: !249, line: 477, baseType: !325, offset: 1792)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !252, file: !249, line: 478, baseType: !38, size: 64, offset: 1792)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !252, file: !249, line: 478, baseType: !38, size: 64, offset: 1856)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !252, file: !249, line: 478, baseType: !38, size: 64, offset: 1920)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !252, file: !249, line: 478, baseType: !38, size: 64, offset: 1984)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !252, file: !249, line: 479, baseType: !38, size: 64, offset: 2048)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !252, file: !249, line: 479, baseType: !38, size: 64, offset: 2112)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !252, file: !249, line: 479, baseType: !38, size: 64, offset: 2176)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !252, file: !249, line: 480, baseType: !38, size: 64, offset: 2240)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !252, file: !249, line: 480, baseType: !38, size: 64, offset: 2304)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !252, file: !249, line: 480, baseType: !38, size: 64, offset: 2368)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !252, file: !249, line: 480, baseType: !38, size: 64, offset: 2432)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !252, file: !249, line: 482, baseType: !363, size: 2816, offset: 2496)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2816, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 44)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !252, file: !249, line: 488, baseType: !367, size: 256, offset: 5312)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !368, line: 60, size: 256, elements: !369)
!368 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !367, file: !368, line: 61, baseType: !371, size: 256)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 4)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !252, file: !249, line: 490, baseType: !375, size: 64, offset: 5568)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !249, line: 490, flags: DIFlagFwdDecl)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !252, file: !249, line: 493, baseType: !378, size: 896, offset: 5632)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !379, line: 53, baseType: !380)
!379 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 13, size: 896, elements: !381)
!381 = !{!382, !383, !384, !385, !388, !389, !396, !397, !401, !402, !405}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !380, file: !379, line: 18, baseType: !27, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !380, file: !379, line: 28, baseType: !295, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !380, file: !379, line: 31, baseType: !333, size: 256, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !380, file: !379, line: 32, baseType: !386, size: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !379, line: 32, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !380, file: !379, line: 37, baseType: !115, size: 16, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !380, file: !379, line: 40, baseType: !390, size: 192, offset: 512)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !391, line: 53, size: 192, elements: !392)
!391 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!392 = !{!393, !394, !395}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !390, file: !391, line: 54, baseType: !293, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !390, file: !391, line: 55, baseType: !325, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !390, file: !391, line: 59, baseType: !93, size: 128, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !380, file: !379, line: 41, baseType: !37, size: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !380, file: !379, line: 42, baseType: !398, size: 64, offset: 768)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !379, line: 42, flags: DIFlagFwdDecl)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !380, file: !379, line: 44, baseType: !60, size: 32, offset: 832)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !380, file: !379, line: 50, baseType: !403, size: 16, offset: 864)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !28, line: 19, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !30, line: 24, baseType: !115)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !380, file: !379, line: 51, baseType: !406, size: 16, offset: 880)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !28, line: 18, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !30, line: 23, baseType: !408)
!408 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !252, file: !249, line: 495, baseType: !38, size: 64, offset: 6528)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !252, file: !249, line: 497, baseType: !411, size: 64, offset: 6592)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !249, line: 381, size: 384, elements: !413)
!413 = !{!414, !415, !421}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !412, file: !249, line: 382, baseType: !60, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !412, file: !249, line: 383, baseType: !416, size: 128, offset: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !249, line: 376, size: 128, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !416, file: !249, line: 377, baseType: !40, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !249, line: 378, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !412, file: !249, line: 384, baseType: !422, size: 192, offset: 192)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !423, line: 26, size: 192, elements: !424)
!423 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !422, file: !423, line: 27, baseType: !7, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !422, file: !423, line: 28, baseType: !427, size: 128, offset: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !428, line: 43, size: 128, elements: !429)
!428 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !427, file: !428, line: 44, baseType: !164)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !427, file: !428, line: 45, baseType: !93, size: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !252, file: !249, line: 500, baseType: !325, offset: 6656)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !252, file: !249, line: 501, baseType: !434, size: 64, offset: 6656)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !249, line: 387, flags: DIFlagFwdDecl)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !252, file: !249, line: 516, baseType: !437, size: 64, offset: 6720)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !439, line: 18, flags: DIFlagFwdDecl)
!439 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!440 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !252, file: !249, line: 519, baseType: !289, size: 64, offset: 6784)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !252, file: !249, line: 521, baseType: !442, size: 64, offset: 6848)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !249, line: 521, flags: DIFlagFwdDecl)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !252, file: !249, line: 545, baseType: !60, size: 32, offset: 6912)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !252, file: !249, line: 548, baseType: !446, size: 8, offset: 6944)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !36, line: 30, baseType: !447)
!447 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !252, file: !249, line: 550, baseType: !449, offset: 6952)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !450, line: 142, elements: !106)
!450 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!451 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !252, file: !249, line: 554, baseType: !452, size: 256, offset: 6976)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !453, line: 102, size: 256, elements: !454)
!453 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!454 = !{!455, !456, !457}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !452, file: !453, line: 103, baseType: !293, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !452, file: !453, line: 104, baseType: !93, size: 128, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !452, file: !453, line: 105, baseType: !458, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !453, line: 21, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !252, file: !249, line: 557, baseType: !33, size: 32, offset: 7232)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !248, file: !249, line: 565, baseType: !465, offset: 7296)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: -1)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !41, file: !42, line: 758, baseType: !247, size: 64, offset: 3968)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !41, file: !42, line: 761, baseType: !470, size: 320, offset: 4032)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !368, line: 34, size: 320, elements: !471)
!471 = !{!472, !473}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !470, file: !368, line: 35, baseType: !27, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !470, file: !368, line: 36, baseType: !474, size: 256, offset: 64)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 256, elements: !372)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !41, file: !42, line: 766, baseType: !64, size: 32, offset: 4352)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !41, file: !42, line: 767, baseType: !64, size: 32, offset: 4384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !41, file: !42, line: 768, baseType: !64, size: 32, offset: 4416)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !41, file: !42, line: 770, baseType: !64, size: 32, offset: 4448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !41, file: !42, line: 772, baseType: !38, size: 64, offset: 4480)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !41, file: !42, line: 775, baseType: !7, size: 32, offset: 4544)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !41, file: !42, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !41, file: !42, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !41, file: !42, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !41, file: !42, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !41, file: !42, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !41, file: !42, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !41, file: !42, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !41, file: !42, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !41, file: !42, line: 831, baseType: !38, size: 64, offset: 4672)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !41, file: !42, line: 833, baseType: !491, size: 384, offset: 4736)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !492)
!492 = !{!493, !498}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !491, file: !19, line: 26, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!52, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !19, line: 27, baseType: !499, size: 320, offset: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !491, file: !19, line: 27, size: 320, elements: !500)
!500 = !{!501, !511, !538}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !499, file: !19, line: 36, baseType: !502, size: 320)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !499, file: !19, line: 29, size: 320, elements: !503)
!503 = !{!504, !506, !507, !508, !509, !510}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !502, file: !19, line: 30, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !502, file: !19, line: 31, baseType: !33, size: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !19, line: 32, baseType: !33, size: 32, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !502, file: !19, line: 33, baseType: !33, size: 32, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !502, file: !19, line: 34, baseType: !27, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !502, file: !19, line: 35, baseType: !505, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !499, file: !19, line: 46, baseType: !512, size: 192)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !499, file: !19, line: 38, size: 192, elements: !513)
!513 = !{!514, !515, !516, !537}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !512, file: !19, line: 39, baseType: !189, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !512, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !512, file: !19, line: 41, baseType: !517, size: 64, offset: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !512, file: !19, line: 41, size: 64, elements: !518)
!518 = !{!519, !527}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !517, file: !19, line: 42, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !522, line: 7, size: 128, elements: !523)
!522 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!523 = !{!524, !526}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !521, file: !522, line: 8, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !191, line: 93, baseType: !131)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !521, file: !522, line: 9, baseType: !131, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !517, file: !19, line: 43, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !530, line: 7, size: 64, elements: !531)
!530 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!531 = !{!532, !536}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !529, file: !530, line: 8, baseType: !533, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !530, line: 5, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !28, line: 20, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !30, line: 26, baseType: !64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !529, file: !530, line: 9, baseType: !534, size: 32, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !512, file: !19, line: 45, baseType: !27, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !499, file: !19, line: 54, baseType: !539, size: 256)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !499, file: !19, line: 48, size: 256, elements: !540)
!540 = !{!541, !544, !545, !546, !547}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !539, file: !19, line: 49, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !539, file: !19, line: 50, baseType: !64, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !539, file: !19, line: 51, baseType: !64, size: 32, offset: 96)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !539, file: !19, line: 52, baseType: !38, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !539, file: !19, line: 53, baseType: !38, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !41, file: !42, line: 835, baseType: !549, size: 32, offset: 5120)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !36, line: 22, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !191, line: 28, baseType: !64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !41, file: !42, line: 836, baseType: !549, size: 32, offset: 5152)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !41, file: !42, line: 840, baseType: !38, size: 64, offset: 5184)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !41, file: !42, line: 849, baseType: !40, size: 64, offset: 5248)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !41, file: !42, line: 852, baseType: !40, size: 64, offset: 5312)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !41, file: !42, line: 857, baseType: !93, size: 128, offset: 5376)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !41, file: !42, line: 858, baseType: !93, size: 128, offset: 5504)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !41, file: !42, line: 859, baseType: !40, size: 64, offset: 5632)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !41, file: !42, line: 867, baseType: !93, size: 128, offset: 5696)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !41, file: !42, line: 868, baseType: !93, size: 128, offset: 5824)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !41, file: !42, line: 871, baseType: !561, size: 64, offset: 5952)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !563, line: 59, size: 768, elements: !564)
!563 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!564 = !{!565, !566, !567, !568, !579, !580, !587, !596}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !562, file: !563, line: 61, baseType: !55, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !562, file: !563, line: 62, baseType: !7, size: 32, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !562, file: !563, line: 63, baseType: !325, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !562, file: !563, line: 65, baseType: !569, size: 256, offset: 64)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 256, elements: !372)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !36, line: 182, size: 64, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !570, file: !36, line: 183, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !36, line: 186, size: 128, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !574, file: !36, line: 187, baseType: !573, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !574, file: !36, line: 187, baseType: !578, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !562, file: !563, line: 66, baseType: !570, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !562, file: !563, line: 68, baseType: !581, size: 128, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !582, line: 40, baseType: !583)
!582 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !582, line: 36, size: 128, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !583, file: !582, line: 37, baseType: !325)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !583, file: !582, line: 38, baseType: !93, size: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !562, file: !563, line: 69, baseType: !588, size: 128, align: 64, offset: 512)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !36, line: 216, size: 128, align: 64, elements: !589)
!589 = !{!590, !592}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !588, file: !36, line: 217, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !588, file: !36, line: 218, baseType: !593, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !591}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !562, file: !563, line: 70, baseType: !597, size: 128, offset: 640)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 128, elements: !240)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !563, line: 54, size: 128, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !598, file: !563, line: 55, baseType: !64, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !598, file: !563, line: 56, baseType: !602, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !563, line: 56, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !41, file: !42, line: 872, baseType: !605, size: 512, offset: 6016)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 512, elements: !372)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !41, file: !42, line: 873, baseType: !93, size: 128, offset: 6528)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !41, file: !42, line: 874, baseType: !93, size: 128, offset: 6656)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !41, file: !42, line: 876, baseType: !609, size: 64, offset: 6784)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !41, file: !42, line: 879, baseType: !611, size: 64, offset: 6848)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !41, file: !42, line: 882, baseType: !611, size: 64, offset: 6912)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !41, file: !42, line: 884, baseType: !27, size: 64, offset: 6976)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !41, file: !42, line: 885, baseType: !27, size: 64, offset: 7040)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !41, file: !42, line: 890, baseType: !27, size: 64, offset: 7104)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !41, file: !42, line: 891, baseType: !617, size: 128, offset: 7168)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !42, line: 242, size: 128, elements: !618)
!618 = !{!619, !620, !621}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !617, file: !42, line: 244, baseType: !27, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !617, file: !42, line: 245, baseType: !27, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !617, file: !42, line: 246, baseType: !164, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !41, file: !42, line: 900, baseType: !38, size: 64, offset: 7296)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !41, file: !42, line: 901, baseType: !38, size: 64, offset: 7360)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !41, file: !42, line: 904, baseType: !27, size: 64, offset: 7424)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !41, file: !42, line: 907, baseType: !27, size: 64, offset: 7488)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !41, file: !42, line: 910, baseType: !38, size: 64, offset: 7552)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !41, file: !42, line: 911, baseType: !38, size: 64, offset: 7616)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !41, file: !42, line: 914, baseType: !629, size: 640, offset: 7680)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !630, line: 123, size: 640, elements: !631)
!630 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!631 = !{!632, !640, !641}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !629, file: !630, line: 124, baseType: !633, size: 576)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 576, elements: !638)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !630, line: 108, size: 192, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !634, file: !630, line: 109, baseType: !27, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !634, file: !630, line: 110, baseType: !204, size: 128, offset: 64)
!638 = !{!639}
!639 = !DISubrange(count: 3)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !629, file: !630, line: 125, baseType: !7, size: 32, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !629, file: !630, line: 126, baseType: !7, size: 32, offset: 608)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !41, file: !42, line: 917, baseType: !643, size: 192, offset: 8320)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !630, line: 134, size: 192, elements: !644)
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !643, file: !630, line: 135, baseType: !588, size: 128, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !643, file: !630, line: 136, baseType: !7, size: 32, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !41, file: !42, line: 923, baseType: !648, size: 64, offset: 8512)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !42, line: 923, flags: DIFlagFwdDecl)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !41, file: !42, line: 926, baseType: !648, size: 64, offset: 8576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !41, file: !42, line: 929, baseType: !648, size: 64, offset: 8640)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !41, file: !42, line: 933, baseType: !654, size: 64, offset: 8704)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !42, line: 933, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !41, file: !42, line: 943, baseType: !657, size: 128, offset: 8768)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, size: 128, elements: !659)
!658 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!659 = !{!660}
!660 = !DISubrange(count: 16)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !41, file: !42, line: 945, baseType: !662, size: 64, offset: 8896)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !42, line: 49, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !41, file: !42, line: 956, baseType: !665, size: 64, offset: 8960)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !42, line: 45, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !41, file: !42, line: 959, baseType: !668, size: 64, offset: 9024)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !42, line: 959, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !41, file: !42, line: 962, baseType: !671, size: 64, offset: 9088)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !42, line: 66, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !41, file: !42, line: 966, baseType: !674, size: 64, offset: 9152)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !42, line: 50, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !41, file: !42, line: 969, baseType: !677, size: 64, offset: 9216)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !630, line: 223, flags: DIFlagFwdDecl)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !41, file: !42, line: 970, baseType: !680, size: 64, offset: 9280)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !42, line: 62, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !41, file: !42, line: 971, baseType: !683, size: 64, offset: 9344)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !684, line: 25, baseType: !685)
!684 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !684, line: 23, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !685, file: !684, line: 24, baseType: !239, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !41, file: !42, line: 972, baseType: !683, size: 64, offset: 9408)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !41, file: !42, line: 974, baseType: !683, size: 64, offset: 9472)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !41, file: !42, line: 975, baseType: !691, size: 192, offset: 9536)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !692, line: 30, size: 192, elements: !693)
!692 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !691, file: !692, line: 31, baseType: !93, size: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !691, file: !692, line: 32, baseType: !683, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !41, file: !42, line: 976, baseType: !38, size: 64, offset: 9728)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !41, file: !42, line: 977, baseType: !698, size: 64, offset: 9792)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 55, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !191, line: 72, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !191, line: 16, baseType: !38)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !41, file: !42, line: 978, baseType: !7, size: 32, offset: 9856)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !41, file: !42, line: 980, baseType: !591, size: 64, offset: 9920)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !41, file: !42, line: 989, baseType: !704, size: 128, offset: 9984)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !705, line: 35, size: 128, elements: !706)
!705 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!706 = !{!707, !708, !709}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !704, file: !705, line: 36, baseType: !64, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !704, file: !705, line: 37, baseType: !60, size: 32, offset: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !704, file: !705, line: 38, baseType: !710, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !705, line: 23, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !41, file: !42, line: 992, baseType: !27, size: 64, offset: 10112)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !41, file: !42, line: 993, baseType: !27, size: 64, offset: 10176)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !41, file: !42, line: 996, baseType: !325, offset: 10240)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !41, file: !42, line: 999, baseType: !164, offset: 10240)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !41, file: !42, line: 1001, baseType: !717, size: 64, offset: 10240)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !42, line: 636, size: 64, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !717, file: !42, line: 637, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !41, file: !42, line: 1005, baseType: !207, size: 128, offset: 10304)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !41, file: !42, line: 1007, baseType: !40, size: 64, offset: 10432)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !41, file: !42, line: 1009, baseType: !724, size: 64, offset: 10496)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !42, line: 1009, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !41, file: !42, line: 1043, baseType: !37, size: 64, offset: 10560)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !41, file: !42, line: 1046, baseType: !728, size: 64, offset: 10624)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !42, line: 41, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !41, file: !42, line: 1050, baseType: !731, size: 64, offset: 10688)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !42, line: 42, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !41, file: !42, line: 1054, baseType: !734, size: 64, offset: 10752)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !42, line: 55, flags: DIFlagFwdDecl)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !41, file: !42, line: 1056, baseType: !737, size: 64, offset: 10816)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !42, line: 40, flags: DIFlagFwdDecl)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !41, file: !42, line: 1058, baseType: !740, size: 64, offset: 10880)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !42, line: 47, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !41, file: !42, line: 1061, baseType: !743, size: 64, offset: 10944)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !42, line: 43, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !41, file: !42, line: 1064, baseType: !38, size: 64, offset: 11008)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !41, file: !42, line: 1065, baseType: !747, size: 64, offset: 11072)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !692, line: 14, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !692, line: 12, size: 384, elements: !750)
!750 = !{!751}
!751 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !692, line: 13, baseType: !752, size: 384)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !749, file: !692, line: 13, size: 384, elements: !753)
!753 = !{!754, !755, !756, !757}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !752, file: !692, line: 13, baseType: !64, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !752, file: !692, line: 13, baseType: !64, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !752, file: !692, line: 13, baseType: !64, size: 32, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !752, file: !692, line: 13, baseType: !758, size: 256, offset: 128)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !759, line: 32, size: 256, elements: !760)
!759 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!760 = !{!761, !767, !780, !786, !796, !816, !821}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !758, file: !759, line: 37, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !758, file: !759, line: 34, size: 64, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !762, file: !759, line: 35, baseType: !550, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !762, file: !759, line: 36, baseType: !766, size: 32, offset: 32)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !191, line: 49, baseType: !7)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !758, file: !759, line: 45, baseType: !768, size: 192)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !758, file: !759, line: 40, size: 192, elements: !769)
!769 = !{!770, !772, !773, !779}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !768, file: !759, line: 41, baseType: !771, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !191, line: 95, baseType: !64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !768, file: !759, line: 42, baseType: !64, size: 32, offset: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !768, file: !759, line: 43, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !759, line: 11, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !759, line: 8, size: 64, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !775, file: !759, line: 9, baseType: !64, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !775, file: !759, line: 10, baseType: !37, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !768, file: !759, line: 44, baseType: !64, size: 32, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !758, file: !759, line: 52, baseType: !781, size: 128)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !758, file: !759, line: 48, size: 128, elements: !782)
!782 = !{!783, !784, !785}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !781, file: !759, line: 49, baseType: !550, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !781, file: !759, line: 50, baseType: !766, size: 32, offset: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !781, file: !759, line: 51, baseType: !774, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !758, file: !759, line: 61, baseType: !787, size: 256)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !758, file: !759, line: 55, size: 256, elements: !788)
!788 = !{!789, !790, !791, !792, !795}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !787, file: !759, line: 56, baseType: !550, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !787, file: !759, line: 57, baseType: !766, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !787, file: !759, line: 58, baseType: !64, size: 32, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !787, file: !759, line: 59, baseType: !793, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !191, line: 94, baseType: !794)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !191, line: 15, baseType: !52)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !787, file: !759, line: 60, baseType: !793, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !758, file: !759, line: 95, baseType: !797, size: 256)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !758, file: !759, line: 64, size: 256, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !797, file: !759, line: 65, baseType: !37, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, scope: !797, file: !759, line: 77, baseType: !801, size: 192, offset: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !797, file: !759, line: 77, size: 192, elements: !802)
!802 = !{!803, !804, !811}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !801, file: !759, line: 82, baseType: !408, size: 16)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !801, file: !759, line: 88, baseType: !805, size: 192)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !801, file: !759, line: 84, size: 192, elements: !806)
!806 = !{!807, !809, !810}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !805, file: !759, line: 85, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, size: 64, elements: !185)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !805, file: !759, line: 86, baseType: !37, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !805, file: !759, line: 87, baseType: !37, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !801, file: !759, line: 93, baseType: !812, size: 96)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !801, file: !759, line: 90, size: 96, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !812, file: !759, line: 91, baseType: !808, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !812, file: !759, line: 92, baseType: !34, size: 32, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !758, file: !759, line: 101, baseType: !817, size: 128)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !758, file: !759, line: 98, size: 128, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !817, file: !759, line: 99, baseType: !52, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !817, file: !759, line: 100, baseType: !64, size: 32, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !758, file: !759, line: 108, baseType: !822, size: 128)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !758, file: !759, line: 104, size: 128, elements: !823)
!823 = !{!824, !825, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !822, file: !759, line: 105, baseType: !37, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !822, file: !759, line: 106, baseType: !64, size: 32, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !822, file: !759, line: 107, baseType: !7, size: 32, offset: 96)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !41, file: !42, line: 1067, baseType: !828, offset: 11136)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !829, line: 12, elements: !106)
!829 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!830 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !41, file: !42, line: 1099, baseType: !831, size: 64, offset: 11136)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !42, line: 56, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !41, file: !42, line: 1103, baseType: !93, size: 128, offset: 11200)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !41, file: !42, line: 1104, baseType: !835, size: 64, offset: 11328)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !42, line: 46, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !41, file: !42, line: 1105, baseType: !390, size: 192, offset: 11392)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !41, file: !42, line: 1106, baseType: !7, size: 32, offset: 11584)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !41, file: !42, line: 1109, baseType: !840, size: 128, offset: 11648)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 128, elements: !843)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !42, line: 51, flags: DIFlagFwdDecl)
!843 = !{!844}
!844 = !DISubrange(count: 2)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !41, file: !42, line: 1110, baseType: !390, size: 192, offset: 11776)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !41, file: !42, line: 1111, baseType: !93, size: 128, offset: 11968)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !41, file: !42, line: 1173, baseType: !848, size: 64, offset: 12096)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !850, line: 62, size: 256, align: 256, elements: !851)
!850 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!851 = !{!852, !853, !854, !859}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !849, file: !850, line: 75, baseType: !34, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !849, file: !850, line: 90, baseType: !34, size: 32, offset: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !849, file: !850, line: 124, baseType: !855, size: 64, offset: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !849, file: !850, line: 109, size: 64, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !855, file: !850, line: 110, baseType: !29, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !855, file: !850, line: 112, baseType: !29, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !849, file: !850, line: 144, baseType: !34, size: 32, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !41, file: !42, line: 1174, baseType: !33, size: 32, offset: 12160)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !41, file: !42, line: 1179, baseType: !38, size: 64, offset: 12224)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !41, file: !42, line: 1182, baseType: !863, size: 128, offset: 12288)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !368, line: 76, size: 128, elements: !864)
!864 = !{!865, !870, !871}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !863, file: !368, line: 85, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !867, line: 7, size: 64, elements: !868)
!867 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!868 = !{!869}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !866, file: !867, line: 12, baseType: !236, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !863, file: !368, line: 88, baseType: !446, size: 8, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !863, file: !368, line: 95, baseType: !446, size: 8, offset: 72)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !41, file: !42, line: 1184, baseType: !873, size: 128, offset: 12416)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !41, file: !42, line: 1184, size: 128, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !873, file: !42, line: 1185, baseType: !55, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !873, file: !42, line: 1186, baseType: !588, size: 128, align: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !41, file: !42, line: 1190, baseType: !878, size: 64, offset: 12544)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !42, line: 53, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !41, file: !42, line: 1192, baseType: !881, size: 128, offset: 12608)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !368, line: 64, size: 128, elements: !882)
!882 = !{!883, !976, !977}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !881, file: !368, line: 65, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !249, line: 68, size: 512, align: 128, elements: !886)
!886 = !{!887, !888, !968, !975}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !885, file: !249, line: 69, baseType: !38, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !885, file: !249, line: 77, baseType: !889, size: 320, offset: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !885, file: !249, line: 77, size: 320, elements: !890)
!890 = !{!891, !900, !905, !933, !941, !947, !960, !967}
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !249, line: 78, baseType: !892, size: 320)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !249, line: 78, size: 320, elements: !893)
!893 = !{!894, !895, !898, !899}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !892, file: !249, line: 84, baseType: !93, size: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !892, file: !249, line: 86, baseType: !896, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !249, line: 26, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !892, file: !249, line: 87, baseType: !38, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !892, file: !249, line: 94, baseType: !38, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !249, line: 96, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !249, line: 96, size: 64, elements: !902)
!902 = !{!903}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !901, file: !249, line: 101, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !36, line: 143, baseType: !27)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !249, line: 103, baseType: !906, size: 320)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !249, line: 103, size: 320, elements: !907)
!907 = !{!908, !918, !921, !922}
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !249, line: 104, baseType: !909, size: 128)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !249, line: 104, size: 128, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !909, file: !249, line: 105, baseType: !93, size: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !249, line: 106, baseType: !913, size: 128)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !249, line: 106, size: 128, elements: !914)
!914 = !{!915, !916, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !913, file: !249, line: 107, baseType: !884, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !913, file: !249, line: 109, baseType: !64, size: 32, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !913, file: !249, line: 110, baseType: !64, size: 32, offset: 96)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !906, file: !249, line: 117, baseType: !919, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !249, line: 117, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !906, file: !249, line: 119, baseType: !37, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !249, line: 120, baseType: !923, size: 64, offset: 256)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !249, line: 120, size: 64, elements: !924)
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !923, file: !249, line: 121, baseType: !37, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !923, file: !249, line: 122, baseType: !38, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !249, line: 123, baseType: !928, size: 32)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !923, file: !249, line: 123, size: 32, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !928, file: !249, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !928, file: !249, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !928, file: !249, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !249, line: 130, baseType: !934, size: 192)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !249, line: 130, size: 192, elements: !935)
!935 = !{!936, !937, !938, !939, !940}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !934, file: !249, line: 131, baseType: !38, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !934, file: !249, line: 134, baseType: !222, size: 8, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !934, file: !249, line: 135, baseType: !222, size: 8, offset: 72)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !934, file: !249, line: 136, baseType: !60, size: 32, offset: 96)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !934, file: !249, line: 137, baseType: !7, size: 32, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !249, line: 139, baseType: !942, size: 256)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !249, line: 139, size: 256, elements: !943)
!943 = !{!944, !945, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !942, file: !249, line: 140, baseType: !38, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !942, file: !249, line: 141, baseType: !60, size: 32, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !942, file: !249, line: 143, baseType: !93, size: 128, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !249, line: 145, baseType: !948, size: 256)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !249, line: 145, size: 256, elements: !949)
!949 = !{!950, !951, !953, !954, !959}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !948, file: !249, line: 146, baseType: !38, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !948, file: !249, line: 147, baseType: !952, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !267, line: 509, baseType: !884)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !948, file: !249, line: 148, baseType: !38, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !249, line: 149, baseType: !955, size: 64, offset: 192)
!955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !948, file: !249, line: 149, size: 64, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !955, file: !249, line: 150, baseType: !247, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !955, file: !249, line: 151, baseType: !60, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !948, file: !249, line: 156, baseType: !325, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !249, line: 159, baseType: !961, size: 128)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !249, line: 159, size: 128, elements: !962)
!962 = !{!963, !966}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !961, file: !249, line: 161, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !249, line: 161, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !961, file: !249, line: 162, baseType: !37, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !889, file: !249, line: 176, baseType: !588, size: 128, align: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !885, file: !249, line: 179, baseType: !969, size: 32, offset: 384)
!969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !885, file: !249, line: 179, size: 32, elements: !970)
!970 = !{!971, !972, !973, !974}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !969, file: !249, line: 184, baseType: !60, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !969, file: !249, line: 192, baseType: !7, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !969, file: !249, line: 194, baseType: !7, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !969, file: !249, line: 195, baseType: !64, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !885, file: !249, line: 199, baseType: !60, size: 32, offset: 416)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !881, file: !368, line: 67, baseType: !34, size: 32, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !881, file: !368, line: 68, baseType: !34, size: 32, offset: 96)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !41, file: !42, line: 1206, baseType: !64, size: 32, offset: 12736)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !41, file: !42, line: 1207, baseType: !64, size: 32, offset: 12768)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !41, file: !42, line: 1209, baseType: !38, size: 64, offset: 12800)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !41, file: !42, line: 1219, baseType: !27, size: 64, offset: 12864)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !41, file: !42, line: 1220, baseType: !27, size: 64, offset: 12928)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !41, file: !42, line: 1317, baseType: !64, size: 32, offset: 12992)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !41, file: !42, line: 1319, baseType: !40, size: 64, offset: 13056)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !41, file: !42, line: 1322, baseType: !986, size: 64, offset: 13120)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !42, line: 1322, flags: DIFlagFwdDecl)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !41, file: !42, line: 1326, baseType: !55, size: 32, offset: 13184)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !41, file: !42, line: 1342, baseType: !37, size: 64, offset: 13248)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !41, file: !42, line: 1343, baseType: !29, size: 64, offset: 13312)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !41, file: !42, line: 1344, baseType: !27, size: 64, offset: 13376)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !41, file: !42, line: 1345, baseType: !29, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !41, file: !42, line: 1346, baseType: !29, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !41, file: !42, line: 1347, baseType: !29, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !41, file: !42, line: 1348, baseType: !588, size: 128, align: 64, offset: 13504)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !41, file: !42, line: 1358, baseType: !997, size: 34816, offset: 13824)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !998, line: 485, size: 34816, elements: !999)
!998 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!999 = !{!1000, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1029, !1030, !1031, !1032, !1033, !1034, !1037, !1038, !1039}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !997, file: !998, line: 487, baseType: !1001, size: 192)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 192, elements: !638)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1003, line: 16, size: 64, elements: !1004)
!1003 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1004 = !{!1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1002, file: !1003, line: 17, baseType: !403, size: 16)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1002, file: !1003, line: 18, baseType: !403, size: 16, offset: 16)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1002, file: !1003, line: 19, baseType: !403, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1002, file: !1003, line: 19, baseType: !403, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1002, file: !1003, line: 19, baseType: !403, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1002, file: !1003, line: 19, baseType: !403, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1002, file: !1003, line: 19, baseType: !403, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1002, file: !1003, line: 20, baseType: !403, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1002, file: !1003, line: 20, baseType: !403, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1002, file: !1003, line: 20, baseType: !403, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1002, file: !1003, line: 20, baseType: !403, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1002, file: !1003, line: 20, baseType: !403, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1002, file: !1003, line: 20, baseType: !403, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !997, file: !998, line: 491, baseType: !38, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !997, file: !998, line: 495, baseType: !115, size: 16, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !997, file: !998, line: 496, baseType: !115, size: 16, offset: 272)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !997, file: !998, line: 497, baseType: !115, size: 16, offset: 288)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !997, file: !998, line: 498, baseType: !115, size: 16, offset: 304)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !997, file: !998, line: 502, baseType: !38, size: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !997, file: !998, line: 503, baseType: !38, size: 64, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !997, file: !998, line: 514, baseType: !1026, size: 256, offset: 448)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1027, size: 256, elements: !372)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !998, line: 483, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !997, file: !998, line: 516, baseType: !38, size: 64, offset: 704)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !997, file: !998, line: 518, baseType: !38, size: 64, offset: 768)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !997, file: !998, line: 520, baseType: !38, size: 64, offset: 832)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !997, file: !998, line: 521, baseType: !38, size: 64, offset: 896)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !997, file: !998, line: 522, baseType: !38, size: 64, offset: 960)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !997, file: !998, line: 528, baseType: !1035, size: 64, offset: 1024)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !998, line: 10, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !997, file: !998, line: 535, baseType: !38, size: 64, offset: 1088)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !997, file: !998, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !997, file: !998, line: 540, baseType: !1040, size: 33280, offset: 1536)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1041, line: 317, size: 33280, elements: !1042)
!1041 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1042 = !{!1043, !1044, !1045}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1040, file: !1041, line: 330, baseType: !7, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1040, file: !1041, line: 337, baseType: !38, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1040, file: !1041, line: 348, baseType: !1046, size: 32768, offset: 512)
!1046 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1041, line: 304, size: 32768, elements: !1047)
!1047 = !{!1048, !1063, !1104, !1154, !1171}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1046, file: !1041, line: 305, baseType: !1049, size: 896)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1041, line: 12, size: 896, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1062}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1049, file: !1041, line: 13, baseType: !33, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1049, file: !1041, line: 14, baseType: !33, size: 32, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1049, file: !1041, line: 15, baseType: !33, size: 32, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1049, file: !1041, line: 16, baseType: !33, size: 32, offset: 96)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1049, file: !1041, line: 17, baseType: !33, size: 32, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1049, file: !1041, line: 18, baseType: !33, size: 32, offset: 160)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1049, file: !1041, line: 19, baseType: !33, size: 32, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1049, file: !1041, line: 22, baseType: !1059, size: 640, offset: 224)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 640, elements: !1060)
!1060 = !{!1061}
!1061 = !DISubrange(count: 20)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1049, file: !1041, line: 25, baseType: !33, size: 32, offset: 864)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1046, file: !1041, line: 306, baseType: !1064, size: 4096, align: 128)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1041, line: 34, size: 4096, align: 128, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1085, !1086, !1087, !1091, !1095, !1099}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1064, file: !1041, line: 35, baseType: !403, size: 16)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1064, file: !1041, line: 36, baseType: !403, size: 16, offset: 16)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1064, file: !1041, line: 37, baseType: !403, size: 16, offset: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1064, file: !1041, line: 38, baseType: !403, size: 16, offset: 48)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !1041, line: 39, baseType: !1071, size: 128, offset: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !1041, line: 39, size: 128, elements: !1072)
!1072 = !{!1073, !1078}
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !1041, line: 40, baseType: !1074, size: 128)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1041, line: 40, size: 128, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1074, file: !1041, line: 41, baseType: !27, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1074, file: !1041, line: 42, baseType: !27, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !1041, line: 44, baseType: !1079, size: 128)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1041, line: 44, size: 128, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1079, file: !1041, line: 45, baseType: !33, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1079, file: !1041, line: 46, baseType: !33, size: 32, offset: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1079, file: !1041, line: 47, baseType: !33, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1079, file: !1041, line: 48, baseType: !33, size: 32, offset: 96)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1064, file: !1041, line: 51, baseType: !33, size: 32, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1064, file: !1041, line: 52, baseType: !33, size: 32, offset: 224)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1064, file: !1041, line: 55, baseType: !1088, size: 1024, offset: 256)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1024, elements: !1089)
!1089 = !{!1090}
!1090 = !DISubrange(count: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1064, file: !1041, line: 58, baseType: !1092, size: 2048, offset: 1280)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, elements: !1093)
!1093 = !{!1094}
!1094 = !DISubrange(count: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1064, file: !1041, line: 60, baseType: !1096, size: 384, offset: 3328)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 384, elements: !1097)
!1097 = !{!1098}
!1098 = !DISubrange(count: 12)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !1041, line: 62, baseType: !1100, size: 384, offset: 3712)
!1100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !1041, line: 62, size: 384, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1100, file: !1041, line: 63, baseType: !1096, size: 384)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1100, file: !1041, line: 64, baseType: !1096, size: 384)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1046, file: !1041, line: 307, baseType: !1105, size: 1088)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1041, line: 79, size: 1088, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1153}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1105, file: !1041, line: 80, baseType: !33, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1105, file: !1041, line: 81, baseType: !33, size: 32, offset: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1105, file: !1041, line: 82, baseType: !33, size: 32, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1105, file: !1041, line: 83, baseType: !33, size: 32, offset: 96)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1105, file: !1041, line: 84, baseType: !33, size: 32, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1105, file: !1041, line: 85, baseType: !33, size: 32, offset: 160)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1105, file: !1041, line: 86, baseType: !33, size: 32, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1105, file: !1041, line: 88, baseType: !1059, size: 640, offset: 224)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1105, file: !1041, line: 89, baseType: !220, size: 8, offset: 864)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1105, file: !1041, line: 90, baseType: !220, size: 8, offset: 872)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1105, file: !1041, line: 91, baseType: !220, size: 8, offset: 880)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1105, file: !1041, line: 92, baseType: !220, size: 8, offset: 888)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1105, file: !1041, line: 93, baseType: !220, size: 8, offset: 896)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1105, file: !1041, line: 94, baseType: !220, size: 8, offset: 904)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1105, file: !1041, line: 95, baseType: !1122, size: 64, offset: 960)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1124, line: 11, size: 128, elements: !1125)
!1124 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1123, file: !1124, line: 12, baseType: !52, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1123, file: !1124, line: 13, baseType: !1128, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1130, line: 56, size: 1344, elements: !1131)
!1130 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1129, file: !1130, line: 61, baseType: !38, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1129, file: !1130, line: 62, baseType: !38, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1129, file: !1130, line: 63, baseType: !38, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1129, file: !1130, line: 64, baseType: !38, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1129, file: !1130, line: 65, baseType: !38, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1129, file: !1130, line: 66, baseType: !38, size: 64, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1129, file: !1130, line: 68, baseType: !38, size: 64, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1129, file: !1130, line: 69, baseType: !38, size: 64, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1129, file: !1130, line: 70, baseType: !38, size: 64, offset: 512)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1129, file: !1130, line: 71, baseType: !38, size: 64, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1129, file: !1130, line: 72, baseType: !38, size: 64, offset: 640)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1129, file: !1130, line: 73, baseType: !38, size: 64, offset: 704)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1129, file: !1130, line: 74, baseType: !38, size: 64, offset: 768)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1129, file: !1130, line: 75, baseType: !38, size: 64, offset: 832)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1129, file: !1130, line: 76, baseType: !38, size: 64, offset: 896)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1129, file: !1130, line: 81, baseType: !38, size: 64, offset: 960)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1129, file: !1130, line: 83, baseType: !38, size: 64, offset: 1024)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1129, file: !1130, line: 84, baseType: !38, size: 64, offset: 1088)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1129, file: !1130, line: 85, baseType: !38, size: 64, offset: 1152)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1129, file: !1130, line: 86, baseType: !38, size: 64, offset: 1216)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1129, file: !1130, line: 87, baseType: !38, size: 64, offset: 1280)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1105, file: !1041, line: 96, baseType: !33, size: 32, offset: 1024)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1046, file: !1041, line: 308, baseType: !1155, size: 4608, align: 512)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1041, line: 289, size: 4608, align: 512, elements: !1156)
!1156 = !{!1157, !1158, !1167}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1155, file: !1041, line: 290, baseType: !1064, size: 4096, align: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1155, file: !1041, line: 291, baseType: !1159, size: 512, offset: 4096)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1041, line: 268, size: 512, elements: !1160)
!1160 = !{!1161, !1162, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1159, file: !1041, line: 269, baseType: !27, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1159, file: !1041, line: 270, baseType: !27, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1159, file: !1041, line: 271, baseType: !1164, size: 384, offset: 128)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 384, elements: !1165)
!1165 = !{!1166}
!1166 = !DISubrange(count: 6)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1155, file: !1041, line: 292, baseType: !1168, offset: 4608)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !1169)
!1169 = !{!1170}
!1170 = !DISubrange(count: 0)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1046, file: !1041, line: 309, baseType: !1172, size: 32768)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 32768, elements: !1173)
!1173 = !{!1174}
!1174 = !DISubrange(count: 4096)
!1175 = !{!0}
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1177, size: 64, elements: !185)
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!1178 = !{!"rsp"}
!1179 = !{i32 7, !"Dwarf Version", i32 4}
!1180 = !{i32 2, !"Debug Info Version", i32 3}
!1181 = !{i32 1, !"wchar_size", i32 2}
!1182 = !{i32 1, !"Code Model", i32 2}
!1183 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!1184 = distinct !DISubprogram(name: "acpi_ut_mutex_initialize", scope: !3, file: !3, line: 32, type: !1185, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!32}
!1187 = !DILocalVariable(name: "lock", arg: 1, scope: !1188, file: !1189, line: 327, type: !1193)
!1188 = distinct !DISubprogram(name: "spinlock_check", scope: !1189, file: !1189, line: 327, type: !1190, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1189 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!1192, !1193}
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!1194 = !DILocation(line: 327, column: 67, scope: !1188, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 60, column: 11, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 60, column: 11)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 60, column: 11)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 60, column: 11)
!1199 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 60, column: 11)
!1200 = !DILocation(line: 327, column: 67, scope: !1188, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 50, column: 11, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 50, column: 11)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 50, column: 11)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 50, column: 11)
!1205 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 50, column: 11)
!1206 = !DILocalVariable(name: "i", scope: !1184, file: !3, line: 34, type: !33)
!1207 = !DILocation(line: 34, column: 6, scope: !1184)
!1208 = !DILocalVariable(name: "status", scope: !1184, file: !3, line: 35, type: !32)
!1209 = !DILocation(line: 35, column: 14, scope: !1184)
!1210 = !DILocation(line: 41, column: 9, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 41, column: 2)
!1212 = !DILocation(line: 41, column: 7, scope: !1211)
!1213 = !DILocation(line: 41, column: 14, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 41, column: 2)
!1215 = !DILocation(line: 41, column: 16, scope: !1214)
!1216 = !DILocation(line: 41, column: 2, scope: !1211)
!1217 = !DILocation(line: 42, column: 33, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 41, column: 39)
!1219 = !DILocation(line: 42, column: 12, scope: !1218)
!1220 = !DILocation(line: 42, column: 10, scope: !1218)
!1221 = !DILocation(line: 43, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 43, column: 7)
!1223 = !DILocation(line: 43, column: 7, scope: !1218)
!1224 = !DILocation(line: 44, column: 4, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 43, column: 29)
!1226 = !DILocation(line: 46, column: 2, scope: !1218)
!1227 = !DILocation(line: 41, column: 35, scope: !1214)
!1228 = !DILocation(line: 41, column: 2, scope: !1214)
!1229 = distinct !{!1229, !1216, !1230}
!1230 = !DILocation(line: 46, column: 2, scope: !1211)
!1231 = !DILocalVariable(name: "lock", scope: !1205, file: !3, line: 50, type: !1193)
!1232 = !DILocation(line: 50, column: 11, scope: !1205)
!1233 = !DILocation(line: 50, column: 11, scope: !1204)
!1234 = !DILocation(line: 50, column: 11, scope: !1203)
!1235 = !DILocation(line: 50, column: 11, scope: !1202)
!1236 = !DILocation(line: 329, column: 10, scope: !1188, inlinedAt: !1201)
!1237 = !DILocation(line: 329, column: 16, scope: !1188, inlinedAt: !1201)
!1238 = !DILocation(line: 50, column: 9, scope: !1184)
!1239 = !DILocation(line: 51, column: 6, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 51, column: 6)
!1241 = !DILocation(line: 51, column: 6, scope: !1184)
!1242 = !DILocation(line: 52, column: 3, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 51, column: 29)
!1244 = !DILocalVariable(name: "lock", scope: !1245, file: !3, line: 55, type: !1192)
!1245 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 55, column: 11)
!1246 = !DILocation(line: 55, column: 11, scope: !1245)
!1247 = !DILocation(line: 55, column: 11, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 55, column: 11)
!1249 = !DILocation(line: 55, column: 11, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 55, column: 11)
!1251 = !DILocation(line: 55, column: 11, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 55, column: 11)
!1253 = !DILocation(line: 55, column: 9, scope: !1184)
!1254 = !DILocation(line: 56, column: 6, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 56, column: 6)
!1256 = !DILocation(line: 56, column: 6, scope: !1184)
!1257 = !DILocation(line: 57, column: 3, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 56, column: 29)
!1259 = !DILocalVariable(name: "lock", scope: !1199, file: !3, line: 60, type: !1193)
!1260 = !DILocation(line: 60, column: 11, scope: !1199)
!1261 = !DILocation(line: 60, column: 11, scope: !1198)
!1262 = !DILocation(line: 60, column: 11, scope: !1197)
!1263 = !DILocation(line: 60, column: 11, scope: !1196)
!1264 = !DILocation(line: 329, column: 10, scope: !1188, inlinedAt: !1195)
!1265 = !DILocation(line: 329, column: 16, scope: !1188, inlinedAt: !1195)
!1266 = !DILocation(line: 60, column: 9, scope: !1184)
!1267 = !DILocation(line: 61, column: 6, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 61, column: 6)
!1269 = !DILocation(line: 61, column: 6, scope: !1184)
!1270 = !DILocation(line: 62, column: 3, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 61, column: 28)
!1272 = !DILocation(line: 67, column: 11, scope: !1184)
!1273 = !DILocation(line: 67, column: 9, scope: !1184)
!1274 = !DILocation(line: 68, column: 6, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 68, column: 6)
!1276 = !DILocation(line: 68, column: 6, scope: !1184)
!1277 = !DILocation(line: 69, column: 3, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 68, column: 28)
!1279 = !DILocation(line: 74, column: 11, scope: !1184)
!1280 = !DILocation(line: 74, column: 9, scope: !1184)
!1281 = !DILocation(line: 75, column: 6, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 75, column: 6)
!1283 = !DILocation(line: 75, column: 6, scope: !1184)
!1284 = !DILocation(line: 76, column: 3, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 75, column: 28)
!1286 = !DILocation(line: 79, column: 2, scope: !1184)
!1287 = !DILocation(line: 80, column: 1, scope: !1184)
!1288 = distinct !DISubprogram(name: "acpi_ut_create_mutex", scope: !3, file: !3, line: 133, type: !1289, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!32, !1291}
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !1292, line: 17, baseType: !33)
!1292 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!1293 = !DILocalVariable(name: "mutex_id", arg: 1, scope: !1288, file: !3, line: 133, type: !1291)
!1294 = !DILocation(line: 133, column: 59, scope: !1288)
!1295 = !DILocalVariable(name: "status", scope: !1288, file: !3, line: 135, type: !32)
!1296 = !DILocation(line: 135, column: 14, scope: !1288)
!1297 = !DILocation(line: 139, column: 27, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 139, column: 6)
!1299 = !DILocation(line: 139, column: 7, scope: !1298)
!1300 = !DILocation(line: 139, column: 37, scope: !1298)
!1301 = !DILocation(line: 139, column: 6, scope: !1288)
!1302 = !DILocation(line: 141, column: 7, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 139, column: 44)
!1304 = !DILocation(line: 140, column: 10, scope: !1303)
!1305 = !DILocation(line: 142, column: 23, scope: !1303)
!1306 = !DILocation(line: 142, column: 3, scope: !1303)
!1307 = !DILocation(line: 142, column: 33, scope: !1303)
!1308 = !DILocation(line: 142, column: 43, scope: !1303)
!1309 = !DILocation(line: 144, column: 23, scope: !1303)
!1310 = !DILocation(line: 144, column: 3, scope: !1303)
!1311 = !DILocation(line: 144, column: 33, scope: !1303)
!1312 = !DILocation(line: 144, column: 43, scope: !1303)
!1313 = !DILocation(line: 145, column: 2, scope: !1303)
!1314 = !DILocation(line: 147, column: 2, scope: !1288)
!1315 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !1316, file: !1316, line: 50, type: !1317, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1316 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!37, !25}
!1319 = !DILocalVariable(name: "s", arg: 1, scope: !1320, file: !6, line: 445, type: !919)
!1320 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1321, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!37, !919, !35, !698}
!1323 = !DILocation(line: 445, column: 72, scope: !1320, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 552, column: 10, scope: !1325, inlinedAt: !1330)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !6, line: 540, column: 34)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !6, line: 540, column: 6)
!1327 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1328, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!37, !698, !35}
!1330 = distinct !DILocation(line: 52, column: 9, scope: !1315)
!1331 = !DILocalVariable(name: "flags", arg: 2, scope: !1320, file: !6, line: 446, type: !35)
!1332 = !DILocation(line: 446, column: 9, scope: !1320, inlinedAt: !1324)
!1333 = !DILocalVariable(name: "size", arg: 3, scope: !1320, file: !6, line: 446, type: !698)
!1334 = !DILocation(line: 446, column: 23, scope: !1320, inlinedAt: !1324)
!1335 = !DILocalVariable(name: "ret", scope: !1320, file: !6, line: 448, type: !37)
!1336 = !DILocation(line: 448, column: 8, scope: !1320, inlinedAt: !1324)
!1337 = !DILocalVariable(name: "flags", arg: 1, scope: !1338, file: !6, line: 318, type: !35)
!1338 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1339, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!5, !35}
!1341 = !DILocation(line: 318, column: 67, scope: !1338, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 553, column: 20, scope: !1325, inlinedAt: !1330)
!1343 = !DILocalVariable(name: "size", arg: 1, scope: !1344, file: !6, line: 346, type: !698)
!1344 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1345, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!7, !698}
!1347 = !DILocation(line: 346, column: 58, scope: !1344, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 547, column: 11, scope: !1325, inlinedAt: !1330)
!1349 = !DILocalVariable(name: "size", arg: 1, scope: !1350, file: !6, line: 472, type: !698)
!1350 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1351, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!37, !698, !35, !7}
!1353 = !DILocation(line: 472, column: 28, scope: !1350, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 481, column: 9, scope: !1355, inlinedAt: !1356)
!1355 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1328, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1356 = distinct !DILocation(line: 545, column: 11, scope: !1357, inlinedAt: !1330)
!1357 = distinct !DILexicalBlock(scope: !1325, file: !6, line: 544, column: 7)
!1358 = !DILocalVariable(name: "flags", arg: 2, scope: !1350, file: !6, line: 472, type: !35)
!1359 = !DILocation(line: 472, column: 40, scope: !1350, inlinedAt: !1354)
!1360 = !DILocalVariable(name: "order", arg: 3, scope: !1350, file: !6, line: 472, type: !7)
!1361 = !DILocation(line: 472, column: 60, scope: !1350, inlinedAt: !1354)
!1362 = !DILocalVariable(name: "size", arg: 1, scope: !1355, file: !6, line: 478, type: !698)
!1363 = !DILocation(line: 478, column: 51, scope: !1355, inlinedAt: !1356)
!1364 = !DILocalVariable(name: "flags", arg: 2, scope: !1355, file: !6, line: 478, type: !35)
!1365 = !DILocation(line: 478, column: 63, scope: !1355, inlinedAt: !1356)
!1366 = !DILocalVariable(name: "order", scope: !1355, file: !6, line: 480, type: !7)
!1367 = !DILocation(line: 480, column: 15, scope: !1355, inlinedAt: !1356)
!1368 = !DILocalVariable(name: "size", arg: 1, scope: !1327, file: !6, line: 538, type: !698)
!1369 = !DILocation(line: 538, column: 45, scope: !1327, inlinedAt: !1330)
!1370 = !DILocalVariable(name: "flags", arg: 2, scope: !1327, file: !6, line: 538, type: !35)
!1371 = !DILocation(line: 538, column: 57, scope: !1327, inlinedAt: !1330)
!1372 = !DILocalVariable(name: "index", scope: !1325, file: !6, line: 542, type: !7)
!1373 = !DILocation(line: 542, column: 16, scope: !1325, inlinedAt: !1330)
!1374 = !DILocalVariable(name: "flags", arg: 1, scope: !1375, file: !1376, line: 162, type: !38)
!1375 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1376, file: !1376, line: 162, type: !1377, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1376 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!64, !38}
!1379 = !DILocation(line: 162, column: 67, scope: !1375, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 52, column: 23, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !1316, line: 52, column: 23)
!1382 = distinct !DILexicalBlock(scope: !1315, file: !1316, line: 52, column: 23)
!1383 = !DILocalVariable(name: "size", arg: 1, scope: !1315, file: !1316, line: 50, type: !25)
!1384 = !DILocation(line: 50, column: 48, scope: !1315)
!1385 = !DILocation(line: 52, column: 17, scope: !1315)
!1386 = !DILocalVariable(name: "_flags", scope: !1382, file: !1316, line: 52, type: !38)
!1387 = !DILocation(line: 52, column: 23, scope: !1382)
!1388 = !DILocalVariable(name: "__dummy", scope: !1389, file: !1316, line: 52, type: !38)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !1316, line: 52, column: 23)
!1390 = distinct !DILexicalBlock(scope: !1382, file: !1316, line: 52, column: 23)
!1391 = !DILocation(line: 52, column: 23, scope: !1389)
!1392 = !DILocalVariable(name: "__dummy2", scope: !1389, file: !1316, line: 52, type: !38)
!1393 = !DILocation(line: 52, column: 23, scope: !1390)
!1394 = !DILocalVariable(name: "__dummy", scope: !1395, file: !1316, line: 52, type: !38)
!1395 = distinct !DILexicalBlock(scope: !1381, file: !1316, line: 52, column: 23)
!1396 = !DILocation(line: 52, column: 23, scope: !1395)
!1397 = !DILocalVariable(name: "__dummy2", scope: !1395, file: !1316, line: 52, type: !38)
!1398 = !DILocation(line: 52, column: 23, scope: !1381)
!1399 = !DILocation(line: 164, column: 11, scope: !1375, inlinedAt: !1380)
!1400 = !DILocation(line: 164, column: 17, scope: !1375, inlinedAt: !1380)
!1401 = !DILocation(line: 164, column: 9, scope: !1375, inlinedAt: !1380)
!1402 = !DILocation(line: 52, column: 23, scope: !1315)
!1403 = !DILocation(line: 540, column: 27, scope: !1326, inlinedAt: !1330)
!1404 = !DILocation(line: 540, column: 6, scope: !1326, inlinedAt: !1330)
!1405 = !DILocation(line: 540, column: 6, scope: !1327, inlinedAt: !1330)
!1406 = !DILocation(line: 544, column: 7, scope: !1357, inlinedAt: !1330)
!1407 = !DILocation(line: 544, column: 12, scope: !1357, inlinedAt: !1330)
!1408 = !DILocation(line: 544, column: 7, scope: !1325, inlinedAt: !1330)
!1409 = !DILocation(line: 545, column: 25, scope: !1357, inlinedAt: !1330)
!1410 = !DILocation(line: 545, column: 31, scope: !1357, inlinedAt: !1330)
!1411 = !DILocation(line: 480, column: 33, scope: !1355, inlinedAt: !1356)
!1412 = !DILocation(line: 480, column: 23, scope: !1355, inlinedAt: !1356)
!1413 = !DILocation(line: 481, column: 29, scope: !1355, inlinedAt: !1356)
!1414 = !DILocation(line: 481, column: 35, scope: !1355, inlinedAt: !1356)
!1415 = !DILocation(line: 481, column: 42, scope: !1355, inlinedAt: !1356)
!1416 = !DILocation(line: 474, column: 23, scope: !1350, inlinedAt: !1354)
!1417 = !DILocation(line: 474, column: 29, scope: !1350, inlinedAt: !1354)
!1418 = !DILocation(line: 474, column: 36, scope: !1350, inlinedAt: !1354)
!1419 = !DILocation(line: 474, column: 9, scope: !1350, inlinedAt: !1354)
!1420 = !DILocation(line: 545, column: 4, scope: !1357, inlinedAt: !1330)
!1421 = !DILocation(line: 547, column: 25, scope: !1325, inlinedAt: !1330)
!1422 = !DILocation(line: 348, column: 7, scope: !1423, inlinedAt: !1348)
!1423 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 348, column: 6)
!1424 = !DILocation(line: 348, column: 6, scope: !1344, inlinedAt: !1348)
!1425 = !DILocation(line: 349, column: 3, scope: !1423, inlinedAt: !1348)
!1426 = !DILocation(line: 351, column: 6, scope: !1427, inlinedAt: !1348)
!1427 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 351, column: 6)
!1428 = !DILocation(line: 351, column: 11, scope: !1427, inlinedAt: !1348)
!1429 = !DILocation(line: 351, column: 6, scope: !1344, inlinedAt: !1348)
!1430 = !DILocation(line: 352, column: 3, scope: !1427, inlinedAt: !1348)
!1431 = !DILocation(line: 354, column: 32, scope: !1432, inlinedAt: !1348)
!1432 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 354, column: 6)
!1433 = !DILocation(line: 354, column: 37, scope: !1432, inlinedAt: !1348)
!1434 = !DILocation(line: 354, column: 42, scope: !1432, inlinedAt: !1348)
!1435 = !DILocation(line: 354, column: 45, scope: !1432, inlinedAt: !1348)
!1436 = !DILocation(line: 354, column: 50, scope: !1432, inlinedAt: !1348)
!1437 = !DILocation(line: 354, column: 6, scope: !1344, inlinedAt: !1348)
!1438 = !DILocation(line: 355, column: 3, scope: !1432, inlinedAt: !1348)
!1439 = !DILocation(line: 356, column: 32, scope: !1440, inlinedAt: !1348)
!1440 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 356, column: 6)
!1441 = !DILocation(line: 356, column: 37, scope: !1440, inlinedAt: !1348)
!1442 = !DILocation(line: 356, column: 43, scope: !1440, inlinedAt: !1348)
!1443 = !DILocation(line: 356, column: 46, scope: !1440, inlinedAt: !1348)
!1444 = !DILocation(line: 356, column: 51, scope: !1440, inlinedAt: !1348)
!1445 = !DILocation(line: 356, column: 6, scope: !1344, inlinedAt: !1348)
!1446 = !DILocation(line: 357, column: 3, scope: !1440, inlinedAt: !1348)
!1447 = !DILocation(line: 358, column: 6, scope: !1448, inlinedAt: !1348)
!1448 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 358, column: 6)
!1449 = !DILocation(line: 358, column: 11, scope: !1448, inlinedAt: !1348)
!1450 = !DILocation(line: 358, column: 6, scope: !1344, inlinedAt: !1348)
!1451 = !DILocation(line: 358, column: 26, scope: !1448, inlinedAt: !1348)
!1452 = !DILocation(line: 359, column: 6, scope: !1453, inlinedAt: !1348)
!1453 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 359, column: 6)
!1454 = !DILocation(line: 359, column: 11, scope: !1453, inlinedAt: !1348)
!1455 = !DILocation(line: 359, column: 6, scope: !1344, inlinedAt: !1348)
!1456 = !DILocation(line: 359, column: 26, scope: !1453, inlinedAt: !1348)
!1457 = !DILocation(line: 360, column: 6, scope: !1458, inlinedAt: !1348)
!1458 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 360, column: 6)
!1459 = !DILocation(line: 360, column: 11, scope: !1458, inlinedAt: !1348)
!1460 = !DILocation(line: 360, column: 6, scope: !1344, inlinedAt: !1348)
!1461 = !DILocation(line: 360, column: 26, scope: !1458, inlinedAt: !1348)
!1462 = !DILocation(line: 361, column: 6, scope: !1463, inlinedAt: !1348)
!1463 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 361, column: 6)
!1464 = !DILocation(line: 361, column: 11, scope: !1463, inlinedAt: !1348)
!1465 = !DILocation(line: 361, column: 6, scope: !1344, inlinedAt: !1348)
!1466 = !DILocation(line: 361, column: 26, scope: !1463, inlinedAt: !1348)
!1467 = !DILocation(line: 362, column: 6, scope: !1468, inlinedAt: !1348)
!1468 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 362, column: 6)
!1469 = !DILocation(line: 362, column: 11, scope: !1468, inlinedAt: !1348)
!1470 = !DILocation(line: 362, column: 6, scope: !1344, inlinedAt: !1348)
!1471 = !DILocation(line: 362, column: 26, scope: !1468, inlinedAt: !1348)
!1472 = !DILocation(line: 363, column: 6, scope: !1473, inlinedAt: !1348)
!1473 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 363, column: 6)
!1474 = !DILocation(line: 363, column: 11, scope: !1473, inlinedAt: !1348)
!1475 = !DILocation(line: 363, column: 6, scope: !1344, inlinedAt: !1348)
!1476 = !DILocation(line: 363, column: 26, scope: !1473, inlinedAt: !1348)
!1477 = !DILocation(line: 364, column: 6, scope: !1478, inlinedAt: !1348)
!1478 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 364, column: 6)
!1479 = !DILocation(line: 364, column: 11, scope: !1478, inlinedAt: !1348)
!1480 = !DILocation(line: 364, column: 6, scope: !1344, inlinedAt: !1348)
!1481 = !DILocation(line: 364, column: 26, scope: !1478, inlinedAt: !1348)
!1482 = !DILocation(line: 365, column: 6, scope: !1483, inlinedAt: !1348)
!1483 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 365, column: 6)
!1484 = !DILocation(line: 365, column: 11, scope: !1483, inlinedAt: !1348)
!1485 = !DILocation(line: 365, column: 6, scope: !1344, inlinedAt: !1348)
!1486 = !DILocation(line: 365, column: 26, scope: !1483, inlinedAt: !1348)
!1487 = !DILocation(line: 366, column: 6, scope: !1488, inlinedAt: !1348)
!1488 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 366, column: 6)
!1489 = !DILocation(line: 366, column: 11, scope: !1488, inlinedAt: !1348)
!1490 = !DILocation(line: 366, column: 6, scope: !1344, inlinedAt: !1348)
!1491 = !DILocation(line: 366, column: 26, scope: !1488, inlinedAt: !1348)
!1492 = !DILocation(line: 367, column: 6, scope: !1493, inlinedAt: !1348)
!1493 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 367, column: 6)
!1494 = !DILocation(line: 367, column: 11, scope: !1493, inlinedAt: !1348)
!1495 = !DILocation(line: 367, column: 6, scope: !1344, inlinedAt: !1348)
!1496 = !DILocation(line: 367, column: 26, scope: !1493, inlinedAt: !1348)
!1497 = !DILocation(line: 368, column: 6, scope: !1498, inlinedAt: !1348)
!1498 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 368, column: 6)
!1499 = !DILocation(line: 368, column: 11, scope: !1498, inlinedAt: !1348)
!1500 = !DILocation(line: 368, column: 6, scope: !1344, inlinedAt: !1348)
!1501 = !DILocation(line: 368, column: 26, scope: !1498, inlinedAt: !1348)
!1502 = !DILocation(line: 369, column: 6, scope: !1503, inlinedAt: !1348)
!1503 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 369, column: 6)
!1504 = !DILocation(line: 369, column: 11, scope: !1503, inlinedAt: !1348)
!1505 = !DILocation(line: 369, column: 6, scope: !1344, inlinedAt: !1348)
!1506 = !DILocation(line: 369, column: 26, scope: !1503, inlinedAt: !1348)
!1507 = !DILocation(line: 370, column: 6, scope: !1508, inlinedAt: !1348)
!1508 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 370, column: 6)
!1509 = !DILocation(line: 370, column: 11, scope: !1508, inlinedAt: !1348)
!1510 = !DILocation(line: 370, column: 6, scope: !1344, inlinedAt: !1348)
!1511 = !DILocation(line: 370, column: 26, scope: !1508, inlinedAt: !1348)
!1512 = !DILocation(line: 371, column: 6, scope: !1513, inlinedAt: !1348)
!1513 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 371, column: 6)
!1514 = !DILocation(line: 371, column: 11, scope: !1513, inlinedAt: !1348)
!1515 = !DILocation(line: 371, column: 6, scope: !1344, inlinedAt: !1348)
!1516 = !DILocation(line: 371, column: 26, scope: !1513, inlinedAt: !1348)
!1517 = !DILocation(line: 372, column: 6, scope: !1518, inlinedAt: !1348)
!1518 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 372, column: 6)
!1519 = !DILocation(line: 372, column: 11, scope: !1518, inlinedAt: !1348)
!1520 = !DILocation(line: 372, column: 6, scope: !1344, inlinedAt: !1348)
!1521 = !DILocation(line: 372, column: 26, scope: !1518, inlinedAt: !1348)
!1522 = !DILocation(line: 373, column: 6, scope: !1523, inlinedAt: !1348)
!1523 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 373, column: 6)
!1524 = !DILocation(line: 373, column: 11, scope: !1523, inlinedAt: !1348)
!1525 = !DILocation(line: 373, column: 6, scope: !1344, inlinedAt: !1348)
!1526 = !DILocation(line: 373, column: 26, scope: !1523, inlinedAt: !1348)
!1527 = !DILocation(line: 374, column: 6, scope: !1528, inlinedAt: !1348)
!1528 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 374, column: 6)
!1529 = !DILocation(line: 374, column: 11, scope: !1528, inlinedAt: !1348)
!1530 = !DILocation(line: 374, column: 6, scope: !1344, inlinedAt: !1348)
!1531 = !DILocation(line: 374, column: 26, scope: !1528, inlinedAt: !1348)
!1532 = !DILocation(line: 375, column: 6, scope: !1533, inlinedAt: !1348)
!1533 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 375, column: 6)
!1534 = !DILocation(line: 375, column: 11, scope: !1533, inlinedAt: !1348)
!1535 = !DILocation(line: 375, column: 6, scope: !1344, inlinedAt: !1348)
!1536 = !DILocation(line: 375, column: 27, scope: !1533, inlinedAt: !1348)
!1537 = !DILocation(line: 376, column: 6, scope: !1538, inlinedAt: !1348)
!1538 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 376, column: 6)
!1539 = !DILocation(line: 376, column: 11, scope: !1538, inlinedAt: !1348)
!1540 = !DILocation(line: 376, column: 6, scope: !1344, inlinedAt: !1348)
!1541 = !DILocation(line: 376, column: 32, scope: !1538, inlinedAt: !1348)
!1542 = !DILocation(line: 377, column: 6, scope: !1543, inlinedAt: !1348)
!1543 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 377, column: 6)
!1544 = !DILocation(line: 377, column: 11, scope: !1543, inlinedAt: !1348)
!1545 = !DILocation(line: 377, column: 6, scope: !1344, inlinedAt: !1348)
!1546 = !DILocation(line: 377, column: 32, scope: !1543, inlinedAt: !1348)
!1547 = !DILocation(line: 378, column: 6, scope: !1548, inlinedAt: !1348)
!1548 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 378, column: 6)
!1549 = !DILocation(line: 378, column: 11, scope: !1548, inlinedAt: !1348)
!1550 = !DILocation(line: 378, column: 6, scope: !1344, inlinedAt: !1348)
!1551 = !DILocation(line: 378, column: 32, scope: !1548, inlinedAt: !1348)
!1552 = !DILocation(line: 379, column: 6, scope: !1553, inlinedAt: !1348)
!1553 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 379, column: 6)
!1554 = !DILocation(line: 379, column: 11, scope: !1553, inlinedAt: !1348)
!1555 = !DILocation(line: 379, column: 6, scope: !1344, inlinedAt: !1348)
!1556 = !DILocation(line: 379, column: 33, scope: !1553, inlinedAt: !1348)
!1557 = !DILocation(line: 380, column: 6, scope: !1558, inlinedAt: !1348)
!1558 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 380, column: 6)
!1559 = !DILocation(line: 380, column: 11, scope: !1558, inlinedAt: !1348)
!1560 = !DILocation(line: 380, column: 6, scope: !1344, inlinedAt: !1348)
!1561 = !DILocation(line: 380, column: 33, scope: !1558, inlinedAt: !1348)
!1562 = !DILocation(line: 381, column: 6, scope: !1563, inlinedAt: !1348)
!1563 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 381, column: 6)
!1564 = !DILocation(line: 381, column: 11, scope: !1563, inlinedAt: !1348)
!1565 = !DILocation(line: 381, column: 6, scope: !1344, inlinedAt: !1348)
!1566 = !DILocation(line: 381, column: 33, scope: !1563, inlinedAt: !1348)
!1567 = !DILocation(line: 382, column: 2, scope: !1568, inlinedAt: !1348)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !6, line: 382, column: 2)
!1569 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 382, column: 2)
!1570 = !{i32 -2144111521, i32 -2144111492, i32 -2144111446, i32 -2144111388, i32 -2144111334, i32 -2144111280, i32 -2144111225, i32 -2144111194}
!1571 = !DILocation(line: 382, column: 2, scope: !1572, inlinedAt: !1348)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !6, line: 382, column: 2)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !6, line: 382, column: 2)
!1574 = !{i32 -2144110751, i32 -2144110744, i32 -2144110690, i32 -2144110659, i32 -2144110629}
!1575 = !DILocation(line: 382, column: 2, scope: !1573, inlinedAt: !1348)
!1576 = !DILocation(line: 386, column: 1, scope: !1344, inlinedAt: !1348)
!1577 = !DILocation(line: 547, column: 9, scope: !1325, inlinedAt: !1330)
!1578 = !DILocation(line: 549, column: 8, scope: !1579, inlinedAt: !1330)
!1579 = distinct !DILexicalBlock(scope: !1325, file: !6, line: 549, column: 7)
!1580 = !DILocation(line: 549, column: 7, scope: !1325, inlinedAt: !1330)
!1581 = !DILocation(line: 550, column: 4, scope: !1579, inlinedAt: !1330)
!1582 = !DILocation(line: 553, column: 33, scope: !1325, inlinedAt: !1330)
!1583 = !DILocation(line: 325, column: 6, scope: !1584, inlinedAt: !1342)
!1584 = distinct !DILexicalBlock(scope: !1338, file: !6, line: 325, column: 6)
!1585 = !DILocation(line: 325, column: 6, scope: !1338, inlinedAt: !1342)
!1586 = !DILocation(line: 326, column: 3, scope: !1584, inlinedAt: !1342)
!1587 = !DILocation(line: 332, column: 9, scope: !1338, inlinedAt: !1342)
!1588 = !DILocation(line: 332, column: 15, scope: !1338, inlinedAt: !1342)
!1589 = !DILocation(line: 332, column: 2, scope: !1338, inlinedAt: !1342)
!1590 = !DILocation(line: 336, column: 1, scope: !1338, inlinedAt: !1342)
!1591 = !DILocation(line: 553, column: 5, scope: !1325, inlinedAt: !1330)
!1592 = !DILocation(line: 553, column: 41, scope: !1325, inlinedAt: !1330)
!1593 = !DILocation(line: 554, column: 5, scope: !1325, inlinedAt: !1330)
!1594 = !DILocation(line: 554, column: 12, scope: !1325, inlinedAt: !1330)
!1595 = !DILocation(line: 448, column: 31, scope: !1320, inlinedAt: !1324)
!1596 = !DILocation(line: 448, column: 34, scope: !1320, inlinedAt: !1324)
!1597 = !DILocation(line: 448, column: 14, scope: !1320, inlinedAt: !1324)
!1598 = !DILocation(line: 450, column: 22, scope: !1320, inlinedAt: !1324)
!1599 = !DILocation(line: 450, column: 25, scope: !1320, inlinedAt: !1324)
!1600 = !DILocation(line: 450, column: 30, scope: !1320, inlinedAt: !1324)
!1601 = !DILocation(line: 450, column: 36, scope: !1320, inlinedAt: !1324)
!1602 = !DILocation(line: 450, column: 8, scope: !1320, inlinedAt: !1324)
!1603 = !DILocation(line: 450, column: 6, scope: !1320, inlinedAt: !1324)
!1604 = !DILocation(line: 451, column: 9, scope: !1320, inlinedAt: !1324)
!1605 = !DILocation(line: 552, column: 3, scope: !1325, inlinedAt: !1330)
!1606 = !DILocation(line: 557, column: 19, scope: !1327, inlinedAt: !1330)
!1607 = !DILocation(line: 557, column: 25, scope: !1327, inlinedAt: !1330)
!1608 = !DILocation(line: 557, column: 9, scope: !1327, inlinedAt: !1330)
!1609 = !DILocation(line: 557, column: 2, scope: !1327, inlinedAt: !1330)
!1610 = !DILocation(line: 558, column: 1, scope: !1327, inlinedAt: !1330)
!1611 = !DILocation(line: 52, column: 2, scope: !1315)
!1612 = distinct !DISubprogram(name: "acpi_ut_mutex_terminate", scope: !3, file: !3, line: 95, type: !1613, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null}
!1615 = !DILocalVariable(name: "i", scope: !1612, file: !3, line: 97, type: !33)
!1616 = !DILocation(line: 97, column: 6, scope: !1612)
!1617 = !DILocation(line: 103, column: 9, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 103, column: 2)
!1619 = !DILocation(line: 103, column: 7, scope: !1618)
!1620 = !DILocation(line: 103, column: 14, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 103, column: 2)
!1622 = !DILocation(line: 103, column: 16, scope: !1621)
!1623 = !DILocation(line: 103, column: 2, scope: !1618)
!1624 = !DILocation(line: 104, column: 24, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 103, column: 39)
!1626 = !DILocation(line: 104, column: 3, scope: !1625)
!1627 = !DILocation(line: 105, column: 2, scope: !1625)
!1628 = !DILocation(line: 103, column: 35, scope: !1621)
!1629 = !DILocation(line: 103, column: 2, scope: !1621)
!1630 = distinct !{!1630, !1623, !1631}
!1631 = !DILocation(line: 105, column: 2, scope: !1618)
!1632 = !DILocation(line: 107, column: 2, scope: !1612)
!1633 = !DILocation(line: 111, column: 22, scope: !1612)
!1634 = !DILocation(line: 111, column: 2, scope: !1612)
!1635 = !DILocation(line: 112, column: 26, scope: !1612)
!1636 = !DILocation(line: 112, column: 2, scope: !1612)
!1637 = !DILocation(line: 113, column: 22, scope: !1612)
!1638 = !DILocation(line: 113, column: 2, scope: !1612)
!1639 = !DILocation(line: 117, column: 2, scope: !1612)
!1640 = !DILocation(line: 118, column: 2, scope: !1612)
!1641 = distinct !DISubprogram(name: "acpi_ut_delete_mutex", scope: !3, file: !3, line: 162, type: !1642, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !1291}
!1644 = !DILocalVariable(name: "mutex_id", arg: 1, scope: !1641, file: !3, line: 162, type: !1291)
!1645 = !DILocation(line: 162, column: 52, scope: !1641)
!1646 = !DILocation(line: 167, column: 2, scope: !1641)
!1647 = !DILocation(line: 169, column: 22, scope: !1641)
!1648 = !DILocation(line: 169, column: 2, scope: !1641)
!1649 = !DILocation(line: 169, column: 32, scope: !1641)
!1650 = !DILocation(line: 169, column: 38, scope: !1641)
!1651 = !DILocation(line: 170, column: 22, scope: !1641)
!1652 = !DILocation(line: 170, column: 2, scope: !1641)
!1653 = !DILocation(line: 170, column: 32, scope: !1641)
!1654 = !DILocation(line: 170, column: 42, scope: !1641)
!1655 = !DILocation(line: 172, column: 2, scope: !1641)
!1656 = distinct !DISubprogram(name: "acpi_os_delete_raw_lock", scope: !1316, file: !1316, line: 118, type: !1657, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !1192}
!1659 = !DILocalVariable(name: "handle", arg: 1, scope: !1656, file: !1316, line: 118, type: !1192)
!1660 = !DILocation(line: 118, column: 62, scope: !1656)
!1661 = !DILocation(line: 120, column: 2, scope: !1656)
!1662 = !DILocation(line: 121, column: 1, scope: !1656)
!1663 = distinct !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !3, file: !3, line: 187, type: !1289, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1664 = !DILocalVariable(name: "mutex_id", arg: 1, scope: !1663, file: !3, line: 187, type: !1291)
!1665 = !DILocation(line: 187, column: 53, scope: !1663)
!1666 = !DILocalVariable(name: "status", scope: !1663, file: !3, line: 189, type: !32)
!1667 = !DILocation(line: 189, column: 14, scope: !1663)
!1668 = !DILocalVariable(name: "this_thread_id", scope: !1663, file: !3, line: 190, type: !27)
!1669 = !DILocation(line: 190, column: 17, scope: !1663)
!1670 = !DILocation(line: 194, column: 6, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 194, column: 6)
!1672 = !DILocation(line: 194, column: 15, scope: !1671)
!1673 = !DILocation(line: 194, column: 6, scope: !1663)
!1674 = !DILocation(line: 195, column: 3, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 194, column: 33)
!1676 = !DILocation(line: 198, column: 19, scope: !1663)
!1677 = !DILocation(line: 198, column: 17, scope: !1663)
!1678 = !DILocation(line: 241, column: 6, scope: !1663)
!1679 = !DILocation(line: 240, column: 9, scope: !1663)
!1680 = !DILocation(line: 243, column: 6, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 243, column: 6)
!1682 = !DILocation(line: 243, column: 6, scope: !1663)
!1683 = !DILocation(line: 249, column: 23, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 243, column: 28)
!1685 = !DILocation(line: 249, column: 3, scope: !1684)
!1686 = !DILocation(line: 249, column: 33, scope: !1684)
!1687 = !DILocation(line: 249, column: 42, scope: !1684)
!1688 = !DILocation(line: 250, column: 45, scope: !1684)
!1689 = !DILocation(line: 250, column: 23, scope: !1684)
!1690 = !DILocation(line: 250, column: 3, scope: !1684)
!1691 = !DILocation(line: 250, column: 33, scope: !1684)
!1692 = !DILocation(line: 250, column: 43, scope: !1684)
!1693 = !DILocation(line: 251, column: 2, scope: !1684)
!1694 = !DILocation(line: 252, column: 3, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 251, column: 9)
!1696 = !DILocation(line: 258, column: 10, scope: !1663)
!1697 = !DILocation(line: 258, column: 2, scope: !1663)
!1698 = !DILocation(line: 259, column: 1, scope: !1663)
!1699 = distinct !DISubprogram(name: "acpi_os_get_thread_id", scope: !1316, file: !1316, line: 71, type: !1700, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!27}
!1702 = !DILocalVariable(name: "pscr_ret__", scope: !1703, file: !1704, line: 15, type: !40)
!1703 = distinct !DILexicalBlock(scope: !1705, file: !1704, line: 15, column: 9)
!1704 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!1705 = distinct !DISubprogram(name: "get_current", scope: !1704, file: !1704, line: 13, type: !1706, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!40}
!1708 = !DILocation(line: 15, column: 9, scope: !1703, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 73, column: 41, scope: !1699)
!1710 = !DILocalVariable(name: "__vpp_verify", scope: !1711, file: !1704, line: 15, type: !1712)
!1711 = distinct !DILexicalBlock(scope: !1703, file: !1704, line: 15, column: 9)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1714 = !DILocation(line: 15, column: 9, scope: !1711, inlinedAt: !1709)
!1715 = !DILocalVariable(name: "pfo_val__", scope: !1716, file: !1704, line: 15, type: !27)
!1716 = distinct !DILexicalBlock(scope: !1703, file: !1704, line: 15, column: 9)
!1717 = !DILocation(line: 15, column: 9, scope: !1716, inlinedAt: !1709)
!1718 = !{i32 -2146498302}
!1719 = !DILocation(line: 73, column: 26, scope: !1699)
!1720 = !DILocation(line: 73, column: 2, scope: !1699)
!1721 = distinct !DISubprogram(name: "acpi_ut_release_mutex", scope: !3, file: !3, line: 273, type: !1289, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1722 = !DILocalVariable(name: "mutex_id", arg: 1, scope: !1721, file: !3, line: 273, type: !1291)
!1723 = !DILocation(line: 273, column: 53, scope: !1721)
!1724 = !DILocation(line: 281, column: 6, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 281, column: 6)
!1726 = !DILocation(line: 281, column: 15, scope: !1725)
!1727 = !DILocation(line: 281, column: 6, scope: !1721)
!1728 = !DILocation(line: 282, column: 3, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 281, column: 33)
!1730 = !DILocation(line: 288, column: 26, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 288, column: 6)
!1732 = !DILocation(line: 288, column: 6, scope: !1731)
!1733 = !DILocation(line: 288, column: 36, scope: !1731)
!1734 = !DILocation(line: 288, column: 46, scope: !1731)
!1735 = !DILocation(line: 288, column: 6, scope: !1721)
!1736 = !DILocation(line: 289, column: 3, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 288, column: 74)
!1738 = !DILocation(line: 293, column: 3, scope: !1737)
!1739 = !DILocation(line: 326, column: 22, scope: !1721)
!1740 = !DILocation(line: 326, column: 2, scope: !1721)
!1741 = !DILocation(line: 326, column: 32, scope: !1721)
!1742 = !DILocation(line: 326, column: 42, scope: !1721)
!1743 = !DILocation(line: 328, column: 2, scope: !1721)
!1744 = !DILocation(line: 329, column: 2, scope: !1721)
!1745 = !DILocation(line: 330, column: 1, scope: !1721)
!1746 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1747, file: !1747, line: 646, type: !1748, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1747 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!38}
!1750 = !DILocalVariable(name: "__ret", scope: !1751, file: !1747, line: 648, type: !38)
!1751 = distinct !DILexicalBlock(scope: !1746, file: !1747, line: 648, column: 9)
!1752 = !DILocation(line: 648, column: 9, scope: !1751)
!1753 = !DILocalVariable(name: "__edi", scope: !1751, file: !1747, line: 648, type: !38)
!1754 = !DILocalVariable(name: "__esi", scope: !1751, file: !1747, line: 648, type: !38)
!1755 = !DILocalVariable(name: "__edx", scope: !1751, file: !1747, line: 648, type: !38)
!1756 = !DILocalVariable(name: "__ecx", scope: !1751, file: !1747, line: 648, type: !38)
!1757 = !DILocalVariable(name: "__eax", scope: !1751, file: !1747, line: 648, type: !38)
!1758 = !DILocation(line: 648, column: 9, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !1747, line: 648, column: 9)
!1760 = distinct !DILexicalBlock(scope: !1751, file: !1747, line: 648, column: 9)
!1761 = !{i32 -2145785127, i32 -2145782812, i32 -2145782578, i32 -2145782527, i32 -2145782499, i32 -2145782474, i32 -2145782790, i32 -2145782777, i32 -2145782339, i32 -2145782220, i32 -2145782685, i32 -2145782658, i32 -2145782630, i32 -2145782600}
!1762 = !DILocalVariable(name: "__mask", scope: !1763, file: !1747, line: 648, type: !38)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !1747, line: 648, column: 9)
!1764 = !DILocation(line: 648, column: 9, scope: !1763)
!1765 = !DILocation(line: 648, column: 9, scope: !1760)
!1766 = !DILocation(line: 648, column: 2, scope: !1746)
!1767 = distinct !DISubprogram(name: "get_order", scope: !1768, file: !1768, line: 29, type: !1377, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1768 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1769 = !DILocalVariable(name: "x", arg: 1, scope: !1770, file: !1771, line: 366, type: !29)
!1770 = distinct !DISubprogram(name: "fls64", scope: !1771, file: !1771, line: 366, type: !1772, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1771 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!64, !29}
!1774 = !DILocation(line: 366, column: 40, scope: !1770, inlinedAt: !1775)
!1775 = distinct !DILocation(line: 46, column: 9, scope: !1767)
!1776 = !DILocalVariable(name: "bitpos", scope: !1770, file: !1771, line: 368, type: !64)
!1777 = !DILocation(line: 368, column: 6, scope: !1770, inlinedAt: !1775)
!1778 = !DILocalVariable(name: "size", arg: 1, scope: !1767, file: !1768, line: 29, type: !38)
!1779 = !DILocation(line: 29, column: 63, scope: !1767)
!1780 = !DILocation(line: 31, column: 27, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1767, file: !1768, line: 31, column: 6)
!1782 = !DILocation(line: 31, column: 6, scope: !1781)
!1783 = !DILocation(line: 31, column: 6, scope: !1767)
!1784 = !DILocation(line: 32, column: 8, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !1768, line: 32, column: 7)
!1786 = distinct !DILexicalBlock(scope: !1781, file: !1768, line: 31, column: 34)
!1787 = !DILocation(line: 32, column: 7, scope: !1786)
!1788 = !DILocation(line: 33, column: 4, scope: !1785)
!1789 = !DILocation(line: 35, column: 7, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !1768, line: 35, column: 7)
!1791 = !DILocation(line: 35, column: 12, scope: !1790)
!1792 = !DILocation(line: 35, column: 7, scope: !1786)
!1793 = !DILocation(line: 36, column: 4, scope: !1790)
!1794 = !DILocation(line: 38, column: 10, scope: !1786)
!1795 = !DILocation(line: 38, column: 28, scope: !1786)
!1796 = !DILocation(line: 38, column: 41, scope: !1786)
!1797 = !DILocation(line: 38, column: 3, scope: !1786)
!1798 = !DILocation(line: 41, column: 6, scope: !1767)
!1799 = !DILocation(line: 42, column: 7, scope: !1767)
!1800 = !DILocation(line: 46, column: 15, scope: !1767)
!1801 = !DILocation(line: 374, column: 2, scope: !1770, inlinedAt: !1775)
!1802 = !DILocation(line: 376, column: 14, scope: !1770, inlinedAt: !1775)
!1803 = !{i32 659681}
!1804 = !DILocation(line: 377, column: 9, scope: !1770, inlinedAt: !1775)
!1805 = !DILocation(line: 377, column: 16, scope: !1770, inlinedAt: !1775)
!1806 = !DILocation(line: 46, column: 2, scope: !1767)
!1807 = !DILocation(line: 48, column: 1, scope: !1767)
!1808 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1809, file: !1809, line: 30, type: !1810, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1809 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!64, !27}
!1812 = !DILocation(line: 366, column: 40, scope: !1770, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 32, column: 9, scope: !1808)
!1814 = !DILocation(line: 368, column: 6, scope: !1770, inlinedAt: !1813)
!1815 = !DILocalVariable(name: "n", arg: 1, scope: !1808, file: !1809, line: 30, type: !27)
!1816 = !DILocation(line: 30, column: 21, scope: !1808)
!1817 = !DILocation(line: 32, column: 15, scope: !1808)
!1818 = !DILocation(line: 374, column: 2, scope: !1770, inlinedAt: !1813)
!1819 = !DILocation(line: 376, column: 14, scope: !1770, inlinedAt: !1813)
!1820 = !DILocation(line: 377, column: 9, scope: !1770, inlinedAt: !1813)
!1821 = !DILocation(line: 377, column: 16, scope: !1770, inlinedAt: !1813)
!1822 = !DILocation(line: 32, column: 18, scope: !1808)
!1823 = !DILocation(line: 32, column: 2, scope: !1808)
!1824 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1825, file: !1825, line: 137, type: !1826, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1825 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!37, !919, !1712, !698, !35}
!1828 = !DILocalVariable(name: "s", arg: 1, scope: !1824, file: !1825, line: 137, type: !919)
!1829 = !DILocation(line: 137, column: 54, scope: !1824)
!1830 = !DILocalVariable(name: "object", arg: 2, scope: !1824, file: !1825, line: 137, type: !1712)
!1831 = !DILocation(line: 137, column: 69, scope: !1824)
!1832 = !DILocalVariable(name: "size", arg: 3, scope: !1824, file: !1825, line: 138, type: !698)
!1833 = !DILocation(line: 138, column: 12, scope: !1824)
!1834 = !DILocalVariable(name: "flags", arg: 4, scope: !1824, file: !1825, line: 138, type: !35)
!1835 = !DILocation(line: 138, column: 24, scope: !1824)
!1836 = !DILocation(line: 140, column: 17, scope: !1824)
!1837 = !DILocation(line: 140, column: 2, scope: !1824)
!1838 = distinct !DISubprogram(name: "acpi_os_free", scope: !1316, file: !1316, line: 60, type: !1839, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{null, !37}
!1841 = !DILocalVariable(name: "memory", arg: 1, scope: !1838, file: !1316, line: 60, type: !37)
!1842 = !DILocation(line: 60, column: 39, scope: !1838)
!1843 = !DILocation(line: 62, column: 8, scope: !1838)
!1844 = !DILocation(line: 62, column: 2, scope: !1838)
!1845 = !DILocation(line: 63, column: 1, scope: !1838)
