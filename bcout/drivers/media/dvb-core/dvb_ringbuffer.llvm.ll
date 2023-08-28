; ModuleID = '../bcout/drivers/media/dvb-core/dvb_ringbuffer.llvm.bc'
source_filename = "drivers/media/dvb-core/dvb_ringbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.lock_class_key = type {}
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
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.dvb_ringbuffer = type { i8*, i64, i64, i64, i32, %struct.wait_queue_head, %struct.spinlock }

@dvb_ringbuffer_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [13 x i8] c"&rbuf->queue\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dvb_ringbuffer_init(%struct.dvb_ringbuffer* %rbuf, i8* %data, i64 %len) #0 !dbg !2 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !84, metadata !DIExpression()), !dbg !92
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !95, metadata !DIExpression()), !dbg !96
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !97, metadata !DIExpression()), !dbg !98
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !101
  %pwrite = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %0, i32 0, i32 3, !dbg !102
  store i64 0, i64* %pwrite, align 8, !dbg !103
  %1 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !104
  %pread = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %1, i32 0, i32 2, !dbg !105
  store i64 0, i64* %pread, align 8, !dbg !106
  %2 = load i8*, i8** %data.addr, align 8, !dbg !107
  %3 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !108
  %data1 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %3, i32 0, i32 0, !dbg !109
  store i8* %2, i8** %data1, align 8, !dbg !110
  %4 = load i64, i64* %len.addr, align 8, !dbg !111
  %5 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !112
  %size = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %5, i32 0, i32 1, !dbg !113
  store i64 %4, i64* %size, align 8, !dbg !114
  %6 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !115
  %error = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %6, i32 0, i32 4, !dbg !116
  store i32 0, i32* %error, align 8, !dbg !117
  br label %do.body, !dbg !118

do.body:                                          ; preds = %entry
  %7 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !119
  %queue = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %7, i32 0, i32 5, !dbg !119
  call void @__init_waitqueue_head(%struct.wait_queue_head* %queue, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* @dvb_ringbuffer_init.__key) #7, !dbg !119
  br label %do.end, !dbg !119

do.end:                                           ; preds = %do.body
  br label %do.body2, !dbg !121

do.body2:                                         ; preds = %do.end
  %8 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !122
  %lock = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %8, i32 0, i32 6, !dbg !122
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !123
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !124
  %rlock.i = bitcast %union.anon* %10 to %struct.raw_spinlock*, !dbg !124
  %11 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !122
  %lock3 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %11, i32 0, i32 6, !dbg !122
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !122
  %rlock = bitcast %union.anon* %12 to %struct.raw_spinlock*, !dbg !122
  %13 = bitcast %struct.spinlock* %lock3 to i8*, !dbg !122
  %14 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !122
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 1 %14, i64 0, i1 false), !dbg !122
  br label %do.end4, !dbg !122

do.end4:                                          ; preds = %do.body2
  ret void, !dbg !125
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dvb_ringbuffer_empty(%struct.dvb_ringbuffer* %rbuf) #0 !dbg !126 {
entry:
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %___p1 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !131
  %pread = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %0, i32 0, i32 2, !dbg !132
  %1 = load i64, i64* %pread, align 8, !dbg !132
  call void @llvm.dbg.declare(metadata i64* %___p1, metadata !133, metadata !DIExpression()), !dbg !135
  br label %do.body, !dbg !136

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !138

do.end:                                           ; preds = %do.body
  %2 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !136
  %pwrite = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %2, i32 0, i32 3, !dbg !136
  %3 = load volatile i64, i64* %pwrite, align 8, !dbg !136
  store i64 %3, i64* %tmp, align 8, !dbg !138
  %4 = load i64, i64* %tmp, align 8, !dbg !136
  store i64 %4, i64* %___p1, align 8, !dbg !135
  br label %do.body1, !dbg !135

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !140

do.end2:                                          ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !135, !srcloc !142
  %5 = load i64, i64* %___p1, align 8, !dbg !135
  store i64 %5, i64* %tmp3, align 8, !dbg !135
  %6 = load i64, i64* %tmp3, align 8, !dbg !135
  %cmp = icmp eq i64 %1, %6, !dbg !143
  %conv = zext i1 %cmp to i32, !dbg !143
  ret i32 %conv, !dbg !144
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dvb_ringbuffer_free(%struct.dvb_ringbuffer* %rbuf) #0 !dbg !145 {
entry:
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %free = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i64* %free, metadata !150, metadata !DIExpression()), !dbg !151
  br label %do.body, !dbg !152

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !154

do.end:                                           ; preds = %do.body
  %0 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !152
  %pread = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %0, i32 0, i32 2, !dbg !152
  %1 = load volatile i64, i64* %pread, align 8, !dbg !152
  store i64 %1, i64* %tmp, align 8, !dbg !154
  %2 = load i64, i64* %tmp, align 8, !dbg !152
  %3 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !156
  %pwrite = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %3, i32 0, i32 3, !dbg !157
  %4 = load i64, i64* %pwrite, align 8, !dbg !157
  %sub = sub i64 %2, %4, !dbg !158
  store i64 %sub, i64* %free, align 8, !dbg !159
  %5 = load i64, i64* %free, align 8, !dbg !160
  %cmp = icmp sle i64 %5, 0, !dbg !162
  br i1 %cmp, label %if.then, label %if.end, !dbg !163

if.then:                                          ; preds = %do.end
  %6 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !164
  %size = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %6, i32 0, i32 1, !dbg !165
  %7 = load i64, i64* %size, align 8, !dbg !165
  %8 = load i64, i64* %free, align 8, !dbg !166
  %add = add i64 %8, %7, !dbg !166
  store i64 %add, i64* %free, align 8, !dbg !166
  br label %if.end, !dbg !167

if.end:                                           ; preds = %if.then, %do.end
  %9 = load i64, i64* %free, align 8, !dbg !168
  %sub1 = sub i64 %9, 1, !dbg !169
  ret i64 %sub1, !dbg !170
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dvb_ringbuffer_avail(%struct.dvb_ringbuffer* %rbuf) #0 !dbg !171 {
entry:
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %avail = alloca i64, align 8
  %___p1 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata i64* %avail, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata i64* %___p1, metadata !176, metadata !DIExpression()), !dbg !178
  br label %do.body, !dbg !179

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !181

do.end:                                           ; preds = %do.body
  %0 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !179
  %pwrite = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %0, i32 0, i32 3, !dbg !179
  %1 = load volatile i64, i64* %pwrite, align 8, !dbg !179
  store i64 %1, i64* %tmp, align 8, !dbg !181
  %2 = load i64, i64* %tmp, align 8, !dbg !179
  store i64 %2, i64* %___p1, align 8, !dbg !178
  br label %do.body1, !dbg !178

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !183

do.end2:                                          ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !178, !srcloc !185
  %3 = load i64, i64* %___p1, align 8, !dbg !178
  store i64 %3, i64* %tmp3, align 8, !dbg !178
  %4 = load i64, i64* %tmp3, align 8, !dbg !178
  %5 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !186
  %pread = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %5, i32 0, i32 2, !dbg !187
  %6 = load i64, i64* %pread, align 8, !dbg !187
  %sub = sub i64 %4, %6, !dbg !188
  store i64 %sub, i64* %avail, align 8, !dbg !189
  %7 = load i64, i64* %avail, align 8, !dbg !190
  %cmp = icmp slt i64 %7, 0, !dbg !192
  br i1 %cmp, label %if.then, label %if.end, !dbg !193

if.then:                                          ; preds = %do.end2
  %8 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !194
  %size = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %8, i32 0, i32 1, !dbg !195
  %9 = load i64, i64* %size, align 8, !dbg !195
  %10 = load i64, i64* %avail, align 8, !dbg !196
  %add = add i64 %10, %9, !dbg !196
  store i64 %add, i64* %avail, align 8, !dbg !196
  br label %if.end, !dbg !197

if.end:                                           ; preds = %if.then, %do.end2
  %11 = load i64, i64* %avail, align 8, !dbg !198
  ret i64 %11, !dbg !199
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dvb_ringbuffer_flush(%struct.dvb_ringbuffer* %rbuf) #0 !dbg !200 {
entry:
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %___p1 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !203, metadata !DIExpression()), !dbg !204
  br label %do.body, !dbg !205

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !206

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !208

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !206, !srcloc !210
  br label %do.body2, !dbg !206

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !211

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !213

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !211

do.body5:                                         ; preds = %do.end4
  call void @llvm.dbg.declare(metadata i64* %___p1, metadata !215, metadata !DIExpression()), !dbg !218
  br label %do.body6, !dbg !219

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !221

do.end7:                                          ; preds = %do.body6
  %0 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !219
  %pwrite = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %0, i32 0, i32 3, !dbg !219
  %1 = load volatile i64, i64* %pwrite, align 8, !dbg !219
  store i64 %1, i64* %tmp, align 8, !dbg !221
  %2 = load i64, i64* %tmp, align 8, !dbg !219
  store i64 %2, i64* %___p1, align 8, !dbg !218
  br label %do.body8, !dbg !218

do.body8:                                         ; preds = %do.end7
  br label %do.end9, !dbg !223

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !218, !srcloc !225
  %3 = load i64, i64* %___p1, align 8, !dbg !218
  store i64 %3, i64* %tmp10, align 8, !dbg !218
  %4 = load i64, i64* %tmp10, align 8, !dbg !218
  %5 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !226
  %pread = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %5, i32 0, i32 2, !dbg !226
  store volatile i64 %4, i64* %pread, align 8, !dbg !226
  br label %do.end11, !dbg !226

do.end11:                                         ; preds = %do.end9
  br label %do.end12, !dbg !211

do.end12:                                         ; preds = %do.end11
  br label %do.end13, !dbg !206

do.end13:                                         ; preds = %do.end12
  %6 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !227
  %error = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %6, i32 0, i32 4, !dbg !228
  store i32 0, i32* %error, align 8, !dbg !229
  ret void, !dbg !230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dvb_ringbuffer_reset(%struct.dvb_ringbuffer* %rbuf) #0 !dbg !231 {
entry:
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !232, metadata !DIExpression()), !dbg !233
  br label %do.body, !dbg !234

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !235

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !237

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !235, !srcloc !239
  br label %do.body2, !dbg !235

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !240

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !242

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !240

do.body5:                                         ; preds = %do.end4
  %0 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !244
  %pread = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %0, i32 0, i32 2, !dbg !244
  store volatile i64 0, i64* %pread, align 8, !dbg !244
  br label %do.end6, !dbg !244

do.end6:                                          ; preds = %do.body5
  br label %do.end7, !dbg !240

do.end7:                                          ; preds = %do.end6
  br label %do.end8, !dbg !235

do.end8:                                          ; preds = %do.end7
  br label %do.body9, !dbg !246

do.body9:                                         ; preds = %do.end8
  br label %do.body10, !dbg !247

do.body10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !249

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !247, !srcloc !251
  br label %do.body12, !dbg !247

do.body12:                                        ; preds = %do.end11
  br label %do.body13, !dbg !252

do.body13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !254

do.end14:                                         ; preds = %do.body13
  br label %do.body15, !dbg !252

do.body15:                                        ; preds = %do.end14
  %1 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !256
  %pwrite = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %1, i32 0, i32 3, !dbg !256
  store volatile i64 0, i64* %pwrite, align 8, !dbg !256
  br label %do.end16, !dbg !256

do.end16:                                         ; preds = %do.body15
  br label %do.end17, !dbg !252

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !247

do.end18:                                         ; preds = %do.end17
  %2 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !258
  %error = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %2, i32 0, i32 4, !dbg !259
  store i32 0, i32* %error, align 8, !dbg !260
  ret void, !dbg !261
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dvb_ringbuffer_flush_spinlock_wakeup(%struct.dvb_ringbuffer* %rbuf) #0 !dbg !262 {
entry:
  %lock.addr.i20 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i20, metadata !263, metadata !DIExpression()), !dbg !267
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !269, metadata !DIExpression()), !dbg !270
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !84, metadata !DIExpression()), !dbg !271
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !280, metadata !DIExpression()), !dbg !281
  br label %do.body, !dbg !282

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !283

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !287, metadata !DIExpression()), !dbg !286
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !286
  %conv = zext i1 %cmp to i32, !dbg !286
  store i32 1, i32* %tmp, align 4, !dbg !286
  %0 = load i32, i32* %tmp, align 4, !dbg !286
  br label %do.body2, !dbg !288

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !289

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !290

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !292, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !296, metadata !DIExpression()), !dbg !295
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !295
  %conv8 = zext i1 %cmp7 to i32, !dbg !295
  store i32 1, i32* %tmp9, align 4, !dbg !295
  %1 = load i32, i32* %tmp9, align 4, !dbg !295
  %call = call i64 @arch_local_irq_save() #7, !dbg !297
  store i64 %call, i64* %flags, align 8, !dbg !297
  br label %do.end, !dbg !297

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !290

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !289

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !298, !srcloc !299
  br label %do.body12, !dbg !298

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !300
  %lock = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %2, i32 0, i32 6, !dbg !300
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !301
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !302
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !302
  br label %do.end14, !dbg !300

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !298

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !289

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !288

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !283

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !303
  call void @dvb_ringbuffer_flush(%struct.dvb_ringbuffer* %5) #7, !dbg !304
  %6 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !305
  %lock19 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %6, i32 0, i32 6, !dbg !306
  %7 = load i64, i64* %flags, align 8, !dbg !307
  store %struct.spinlock* %lock19, %struct.spinlock** %lock.addr.i20, align 8
  store i64 %7, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !48, metadata !308, metadata !DIExpression()) #5, !dbg !311
  call void @llvm.dbg.declare(metadata !48, metadata !312, metadata !DIExpression()) #5, !dbg !311
  store i32 1, i32* %tmp.i, align 4, !dbg !311
  %8 = load i32, i32* %tmp.i, align 4, !dbg !311
  call void @llvm.dbg.declare(metadata !48, metadata !313, metadata !DIExpression()) #5, !dbg !318
  call void @llvm.dbg.declare(metadata !48, metadata !319, metadata !DIExpression()) #5, !dbg !318
  store i32 1, i32* %tmp8.i, align 4, !dbg !318
  %9 = load i32, i32* %tmp8.i, align 4, !dbg !318
  %10 = load i64, i64* %flags.addr.i, align 8, !dbg !320
  call void @arch_local_irq_restore(i64 %10) #8, !dbg !320
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !321, !srcloc !323
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i20, align 8, !dbg !324
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !324
  %rlock.i21 = bitcast %union.anon* %12 to %struct.raw_spinlock*, !dbg !324
  %13 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !326
  %queue = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %13, i32 0, i32 5, !dbg !326
  call void @__wake_up(%struct.wait_queue_head* %queue, i32 3, i32 1, i8* null) #7, !dbg !326
  ret void, !dbg !327
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !328 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !332, metadata !DIExpression()), !dbg !333
  %call = call i64 @arch_local_save_flags() #7, !dbg !334
  store i64 %call, i64* %f, align 8, !dbg !335
  call void @arch_local_irq_disable() #7, !dbg !336
  %0 = load i64, i64* %f, align 8, !dbg !337
  ret i64 %0, !dbg !338
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dvb_ringbuffer_read_user(%struct.dvb_ringbuffer* %rbuf, i8* %buf, i64 %len) #0 !dbg !339 {
entry:
  %retval.i.i39 = alloca i1, align 1
  %addr.addr.i.i40 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i40, metadata !342, metadata !DIExpression()), !dbg !351
  %bytes.addr.i.i41 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i41, metadata !360, metadata !DIExpression()), !dbg !361
  %is_source.addr.i.i42 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i42, metadata !362, metadata !DIExpression()), !dbg !363
  %sz.i.i43 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i43, metadata !364, metadata !DIExpression()), !dbg !365
  %__ret_warn_on.i.i44 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i44, metadata !366, metadata !DIExpression()), !dbg !369
  %tmp.i.i45 = alloca i64, align 8
  %to.addr.i46 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i46, metadata !370, metadata !DIExpression()), !dbg !371
  %from.addr.i47 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i47, metadata !372, metadata !DIExpression()), !dbg !373
  %n.addr.i48 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i48, metadata !374, metadata !DIExpression()), !dbg !375
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !342, metadata !DIExpression()), !dbg !376
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !360, metadata !DIExpression()), !dbg !382
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !362, metadata !DIExpression()), !dbg !383
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !364, metadata !DIExpression()), !dbg !384
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !366, metadata !DIExpression()), !dbg !385
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !370, metadata !DIExpression()), !dbg !386
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !372, metadata !DIExpression()), !dbg !387
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !374, metadata !DIExpression()), !dbg !388
  %retval = alloca i64, align 8
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %todo = alloca i64, align 8
  %split = alloca i64, align 8
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !389, metadata !DIExpression()), !dbg !390
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !391, metadata !DIExpression()), !dbg !392
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata i64* %todo, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load i64, i64* %len.addr, align 8, !dbg !397
  store i64 %0, i64* %todo, align 8, !dbg !396
  call void @llvm.dbg.declare(metadata i64* %split, metadata !398, metadata !DIExpression()), !dbg !399
  %1 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !400
  %pread = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %1, i32 0, i32 2, !dbg !401
  %2 = load i64, i64* %pread, align 8, !dbg !401
  %3 = load i64, i64* %len.addr, align 8, !dbg !402
  %add = add i64 %2, %3, !dbg !403
  %4 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !404
  %size = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %4, i32 0, i32 1, !dbg !405
  %5 = load i64, i64* %size, align 8, !dbg !405
  %cmp = icmp ugt i64 %add, %5, !dbg !406
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !407

cond.true:                                        ; preds = %entry
  %6 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !408
  %size1 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %6, i32 0, i32 1, !dbg !409
  %7 = load i64, i64* %size1, align 8, !dbg !409
  %8 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !410
  %pread2 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %8, i32 0, i32 2, !dbg !411
  %9 = load i64, i64* %pread2, align 8, !dbg !411
  %sub = sub i64 %7, %9, !dbg !412
  br label %cond.end, !dbg !407

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !407

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !407
  store i64 %cond, i64* %split, align 8, !dbg !413
  %10 = load i64, i64* %split, align 8, !dbg !414
  %cmp3 = icmp ugt i64 %10, 0, !dbg !415
  br i1 %cmp3, label %if.then, label %if.end17, !dbg !416

if.then:                                          ; preds = %cond.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !417
  %12 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !418
  %data = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %12, i32 0, i32 0, !dbg !419
  %13 = load i8*, i8** %data, align 8, !dbg !419
  %14 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !420
  %pread4 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %14, i32 0, i32 2, !dbg !421
  %15 = load i64, i64* %pread4, align 8, !dbg !421
  %add.ptr = getelementptr i8, i8* %13, i64 %15, !dbg !422
  %16 = load i64, i64* %split, align 8, !dbg !423
  store i8* %11, i8** %to.addr.i, align 8
  store i8* %add.ptr, i8** %from.addr.i, align 8
  store i64 %16, i64* %n.addr.i, align 8
  %17 = load i8*, i8** %from.addr.i, align 8, !dbg !424
  %18 = load i64, i64* %n.addr.i, align 8, !dbg !424
  store i8* %17, i8** %addr.addr.i.i, align 8
  store i64 %18, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !384
  %19 = load i32, i32* %sz.i.i, align 4, !dbg !425
  %cmp.i.i = icmp sge i32 %19, 0, !dbg !425
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !425

land.rhs.i.i:                                     ; preds = %if.then
  %20 = load i32, i32* %sz.i.i, align 4, !dbg !425
  %conv.i.i = sext i32 %20 to i64, !dbg !425
  %21 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !425
  %cmp1.i.i = icmp ult i64 %conv.i.i, %21, !dbg !425
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.then
  %22 = phi i1 [ false, %if.then ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !427
  %lnot.i.i = xor i1 %22, true, !dbg !425
  %lnot.ext.i.i = zext i1 %22 to i32, !dbg !425
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !425
  br i1 %22, label %if.then.i.i, label %if.end10.i.i, !dbg !428

if.then.i.i:                                      ; preds = %land.end.i.i
  %23 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !429
  %24 = call i1 @llvm.is.constant.i64(i64 %23) #5, !dbg !432
  br i1 %24, label %if.else.i.i, label %if.then5.i.i, !dbg !433

if.then5.i.i:                                     ; preds = %if.then.i.i
  %25 = load i32, i32* %sz.i.i, align 4, !dbg !434
  %26 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !435
  call void @copy_overflow(i32 %25, i64 %26) #8, !dbg !436
  br label %if.end9.i.i, !dbg !436

if.else.i.i:                                      ; preds = %if.then.i.i
  %27 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !437
  %tobool6.i.i = trunc i8 %27 to i1, !dbg !437
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !439

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #8, !dbg !440
  br label %if.end.i.i, !dbg !440

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #8, !dbg !441
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !442
  br label %check_copy_size.exit.i, !dbg !442

if.end10.i.i:                                     ; preds = %land.end.i.i
  %28 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !385
  %cmp11.i.i = icmp ugt i64 %28, 2147483647, !dbg !385
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !385
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !385
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !385
  %29 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !443
  %tobool17.i.i = icmp ne i32 %29, 0, !dbg !443
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !443
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !443
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !443
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !385

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !445, !srcloc !448
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !449, !srcloc !451
  br label %if.end31.i.i, !dbg !452

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %30 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !385
  %tobool32.i.i = icmp ne i32 %30, 0, !dbg !385
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !385
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !385
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !385
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !443
  %31 = load i64, i64* %tmp.i.i, align 8, !dbg !385
  %tobool38.i.i = icmp ne i64 %31, 0, !dbg !453
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !454

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !455
  br label %check_copy_size.exit.i, !dbg !455

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %32 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !456
  %33 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !457
  %34 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !458
  %tobool41.i.i = trunc i8 %34 to i1, !dbg !458
  call void @check_object_size(i8* %32, i64 %33, i1 zeroext %tobool41.i.i) #8, !dbg !459
  store i1 true, i1* %retval.i.i, align 1, !dbg !460
  br label %check_copy_size.exit.i, !dbg !460

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %35 = load i1, i1* %retval.i.i, align 1, !dbg !461
  %lnot.i = xor i1 %35, true, !dbg !424
  %lnot.ext.i = zext i1 %35 to i32, !dbg !424
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !424
  br i1 %35, label %if.then.i, label %copy_to_user.exit, !dbg !462

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %36 = load i8*, i8** %to.addr.i, align 8, !dbg !463
  %37 = load i8*, i8** %from.addr.i, align 8, !dbg !464
  %38 = load i64, i64* %n.addr.i, align 8, !dbg !465
  %call2.i = call i64 @_copy_to_user(i8* %36, i8* %37, i64 %38) #8, !dbg !466
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !467
  br label %copy_to_user.exit, !dbg !468

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %39 = load i64, i64* %n.addr.i, align 8, !dbg !469
  %tobool = icmp ne i64 %39, 0, !dbg !470
  br i1 %tobool, label %if.then5, label %if.end, !dbg !471

if.then5:                                         ; preds = %copy_to_user.exit
  store i64 -14, i64* %retval, align 8, !dbg !472
  br label %return, !dbg !472

if.end:                                           ; preds = %copy_to_user.exit
  %40 = load i64, i64* %split, align 8, !dbg !473
  %41 = load i8*, i8** %buf.addr, align 8, !dbg !474
  %add.ptr6 = getelementptr i8, i8* %41, i64 %40, !dbg !474
  store i8* %add.ptr6, i8** %buf.addr, align 8, !dbg !474
  %42 = load i64, i64* %split, align 8, !dbg !475
  %43 = load i64, i64* %todo, align 8, !dbg !476
  %sub7 = sub i64 %43, %42, !dbg !476
  store i64 %sub7, i64* %todo, align 8, !dbg !476
  br label %do.body, !dbg !477

do.body:                                          ; preds = %if.end
  br label %do.body8, !dbg !478

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !480

do.end:                                           ; preds = %do.body8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !478, !srcloc !482
  br label %do.body9, !dbg !478

do.body9:                                         ; preds = %do.end
  br label %do.body10, !dbg !483

do.body10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !485

do.end11:                                         ; preds = %do.body10
  br label %do.body12, !dbg !483

do.body12:                                        ; preds = %do.end11
  %44 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !487
  %pread13 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %44, i32 0, i32 2, !dbg !487
  store volatile i64 0, i64* %pread13, align 8, !dbg !487
  br label %do.end14, !dbg !487

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !483

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !478

do.end16:                                         ; preds = %do.end15
  br label %if.end17, !dbg !489

if.end17:                                         ; preds = %do.end16, %cond.end
  %45 = load i8*, i8** %buf.addr, align 8, !dbg !490
  %46 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !491
  %data18 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %46, i32 0, i32 0, !dbg !492
  %47 = load i8*, i8** %data18, align 8, !dbg !492
  %48 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !493
  %pread19 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %48, i32 0, i32 2, !dbg !494
  %49 = load i64, i64* %pread19, align 8, !dbg !494
  %add.ptr20 = getelementptr i8, i8* %47, i64 %49, !dbg !495
  %50 = load i64, i64* %todo, align 8, !dbg !496
  store i8* %45, i8** %to.addr.i46, align 8
  store i8* %add.ptr20, i8** %from.addr.i47, align 8
  store i64 %50, i64* %n.addr.i48, align 8
  %51 = load i8*, i8** %from.addr.i47, align 8, !dbg !497
  %52 = load i64, i64* %n.addr.i48, align 8, !dbg !497
  store i8* %51, i8** %addr.addr.i.i40, align 8
  store i64 %52, i64* %bytes.addr.i.i41, align 8
  store i8 1, i8* %is_source.addr.i.i42, align 1
  store i32 -1, i32* %sz.i.i43, align 4, !dbg !365
  %53 = load i32, i32* %sz.i.i43, align 4, !dbg !498
  %cmp.i.i49 = icmp sge i32 %53, 0, !dbg !498
  br i1 %cmp.i.i49, label %land.rhs.i.i52, label %land.end.i.i56, !dbg !498

land.rhs.i.i52:                                   ; preds = %if.end17
  %54 = load i32, i32* %sz.i.i43, align 4, !dbg !498
  %conv.i.i50 = sext i32 %54 to i64, !dbg !498
  %55 = load i64, i64* %bytes.addr.i.i41, align 8, !dbg !498
  %cmp1.i.i51 = icmp ult i64 %conv.i.i50, %55, !dbg !498
  br label %land.end.i.i56

land.end.i.i56:                                   ; preds = %land.rhs.i.i52, %if.end17
  %56 = phi i1 [ false, %if.end17 ], [ %cmp1.i.i51, %land.rhs.i.i52 ], !dbg !499
  %lnot.i.i53 = xor i1 %56, true, !dbg !498
  %lnot.ext.i.i54 = zext i1 %56 to i32, !dbg !498
  %conv4.i.i55 = sext i32 %lnot.ext.i.i54 to i64, !dbg !498
  br i1 %56, label %if.then.i.i57, label %if.end10.i.i72, !dbg !500

if.then.i.i57:                                    ; preds = %land.end.i.i56
  %57 = load i64, i64* %bytes.addr.i.i41, align 8, !dbg !501
  %58 = call i1 @llvm.is.constant.i64(i64 %57) #5, !dbg !502
  br i1 %58, label %if.else.i.i60, label %if.then5.i.i58, !dbg !503

if.then5.i.i58:                                   ; preds = %if.then.i.i57
  %59 = load i32, i32* %sz.i.i43, align 4, !dbg !504
  %60 = load i64, i64* %bytes.addr.i.i41, align 8, !dbg !505
  call void @copy_overflow(i32 %59, i64 %60) #8, !dbg !506
  br label %if.end9.i.i64, !dbg !506

if.else.i.i60:                                    ; preds = %if.then.i.i57
  %61 = load i8, i8* %is_source.addr.i.i42, align 1, !dbg !507
  %tobool6.i.i59 = trunc i8 %61 to i1, !dbg !507
  br i1 %tobool6.i.i59, label %if.then7.i.i61, label %if.else8.i.i62, !dbg !508

if.then7.i.i61:                                   ; preds = %if.else.i.i60
  call void @__bad_copy_from() #8, !dbg !509
  br label %if.end.i.i63, !dbg !509

if.else8.i.i62:                                   ; preds = %if.else.i.i60
  call void @__bad_copy_to() #8, !dbg !510
  br label %if.end.i.i63

if.end.i.i63:                                     ; preds = %if.else8.i.i62, %if.then7.i.i61
  br label %if.end9.i.i64

if.end9.i.i64:                                    ; preds = %if.end.i.i63, %if.then5.i.i58
  store i1 false, i1* %retval.i.i39, align 1, !dbg !511
  br label %check_copy_size.exit.i86, !dbg !511

if.end10.i.i72:                                   ; preds = %land.end.i.i56
  %62 = load i64, i64* %bytes.addr.i.i41, align 8, !dbg !369
  %cmp11.i.i65 = icmp ugt i64 %62, 2147483647, !dbg !369
  %lnot13.i.i66 = xor i1 %cmp11.i.i65, true, !dbg !369
  %lnot.ext16.i.i67 = zext i1 %cmp11.i.i65 to i32, !dbg !369
  store i32 %lnot.ext16.i.i67, i32* %__ret_warn_on.i.i44, align 4, !dbg !369
  %63 = load i32, i32* %__ret_warn_on.i.i44, align 4, !dbg !512
  %tobool17.i.i68 = icmp ne i32 %63, 0, !dbg !512
  %lnot18.i.i69 = xor i1 %tobool17.i.i68, true, !dbg !512
  %lnot.ext21.i.i70 = zext i1 %tobool17.i.i68 to i32, !dbg !512
  %conv22.i.i71 = sext i32 %lnot.ext21.i.i70 to i64, !dbg !512
  br i1 %tobool17.i.i68, label %if.then24.i.i73, label %if.end31.i.i79, !dbg !369

if.then24.i.i73:                                  ; preds = %if.end10.i.i72
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !513, !srcloc !448
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !514, !srcloc !451
  br label %if.end31.i.i79, !dbg !515

if.end31.i.i79:                                   ; preds = %if.then24.i.i73, %if.end10.i.i72
  %64 = load i32, i32* %__ret_warn_on.i.i44, align 4, !dbg !369
  %tobool32.i.i74 = icmp ne i32 %64, 0, !dbg !369
  %lnot33.i.i75 = xor i1 %tobool32.i.i74, true, !dbg !369
  %lnot.ext36.i.i76 = zext i1 %tobool32.i.i74 to i32, !dbg !369
  %conv37.i.i77 = sext i32 %lnot.ext36.i.i76 to i64, !dbg !369
  store i64 %conv37.i.i77, i64* %tmp.i.i45, align 8, !dbg !512
  %65 = load i64, i64* %tmp.i.i45, align 8, !dbg !369
  %tobool38.i.i78 = icmp ne i64 %65, 0, !dbg !516
  br i1 %tobool38.i.i78, label %if.then39.i.i80, label %if.end40.i.i82, !dbg !517

if.then39.i.i80:                                  ; preds = %if.end31.i.i79
  store i1 false, i1* %retval.i.i39, align 1, !dbg !518
  br label %check_copy_size.exit.i86, !dbg !518

if.end40.i.i82:                                   ; preds = %if.end31.i.i79
  %66 = load i8*, i8** %addr.addr.i.i40, align 8, !dbg !519
  %67 = load i64, i64* %bytes.addr.i.i41, align 8, !dbg !520
  %68 = load i8, i8* %is_source.addr.i.i42, align 1, !dbg !521
  %tobool41.i.i81 = trunc i8 %68 to i1, !dbg !521
  call void @check_object_size(i8* %66, i64 %67, i1 zeroext %tobool41.i.i81) #8, !dbg !522
  store i1 true, i1* %retval.i.i39, align 1, !dbg !523
  br label %check_copy_size.exit.i86, !dbg !523

check_copy_size.exit.i86:                         ; preds = %if.end40.i.i82, %if.then39.i.i80, %if.end9.i.i64
  %69 = load i1, i1* %retval.i.i39, align 1, !dbg !524
  %lnot.i83 = xor i1 %69, true, !dbg !497
  %lnot.ext.i84 = zext i1 %69 to i32, !dbg !497
  %conv.i85 = sext i32 %lnot.ext.i84 to i64, !dbg !497
  br i1 %69, label %if.then.i88, label %copy_to_user.exit89, !dbg !525

if.then.i88:                                      ; preds = %check_copy_size.exit.i86
  %70 = load i8*, i8** %to.addr.i46, align 8, !dbg !526
  %71 = load i8*, i8** %from.addr.i47, align 8, !dbg !527
  %72 = load i64, i64* %n.addr.i48, align 8, !dbg !528
  %call2.i87 = call i64 @_copy_to_user(i8* %70, i8* %71, i64 %72) #8, !dbg !529
  store i64 %call2.i87, i64* %n.addr.i48, align 8, !dbg !530
  br label %copy_to_user.exit89, !dbg !531

copy_to_user.exit89:                              ; preds = %check_copy_size.exit.i86, %if.then.i88
  %73 = load i64, i64* %n.addr.i48, align 8, !dbg !532
  %tobool22 = icmp ne i64 %73, 0, !dbg !533
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !534

if.then23:                                        ; preds = %copy_to_user.exit89
  store i64 -14, i64* %retval, align 8, !dbg !535
  br label %return, !dbg !535

if.end24:                                         ; preds = %copy_to_user.exit89
  br label %do.body25, !dbg !536

do.body25:                                        ; preds = %if.end24
  br label %do.body26, !dbg !537

do.body26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !539

do.end27:                                         ; preds = %do.body26
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !537, !srcloc !541
  br label %do.body28, !dbg !537

do.body28:                                        ; preds = %do.end27
  br label %do.body29, !dbg !542

do.body29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !544

do.end30:                                         ; preds = %do.body29
  br label %do.body31, !dbg !542

do.body31:                                        ; preds = %do.end30
  %74 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !546
  %pread32 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %74, i32 0, i32 2, !dbg !546
  %75 = load i64, i64* %pread32, align 8, !dbg !546
  %76 = load i64, i64* %todo, align 8, !dbg !546
  %add33 = add i64 %75, %76, !dbg !546
  %77 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !546
  %size34 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %77, i32 0, i32 1, !dbg !546
  %78 = load i64, i64* %size34, align 8, !dbg !546
  %rem = urem i64 %add33, %78, !dbg !546
  %79 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !546
  %pread35 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %79, i32 0, i32 2, !dbg !546
  store volatile i64 %rem, i64* %pread35, align 8, !dbg !546
  br label %do.end36, !dbg !546

do.end36:                                         ; preds = %do.body31
  br label %do.end37, !dbg !542

do.end37:                                         ; preds = %do.end36
  br label %do.end38, !dbg !537

do.end38:                                         ; preds = %do.end37
  %80 = load i64, i64* %len.addr, align 8, !dbg !548
  store i64 %80, i64* %retval, align 8, !dbg !549
  br label %return, !dbg !549

return:                                           ; preds = %do.end38, %if.then23, %if.then5
  %81 = load i64, i64* %retval, align 8, !dbg !550
  ret i64 %81, !dbg !550
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dvb_ringbuffer_read(%struct.dvb_ringbuffer* %rbuf, i8* %buf, i64 %len) #0 !dbg !551 {
entry:
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %todo = alloca i64, align 8
  %split = alloca i64, align 8
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !554, metadata !DIExpression()), !dbg !555
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !556, metadata !DIExpression()), !dbg !557
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.declare(metadata i64* %todo, metadata !560, metadata !DIExpression()), !dbg !561
  %0 = load i64, i64* %len.addr, align 8, !dbg !562
  store i64 %0, i64* %todo, align 8, !dbg !561
  call void @llvm.dbg.declare(metadata i64* %split, metadata !563, metadata !DIExpression()), !dbg !564
  %1 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !565
  %pread = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %1, i32 0, i32 2, !dbg !566
  %2 = load i64, i64* %pread, align 8, !dbg !566
  %3 = load i64, i64* %len.addr, align 8, !dbg !567
  %add = add i64 %2, %3, !dbg !568
  %4 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !569
  %size = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %4, i32 0, i32 1, !dbg !570
  %5 = load i64, i64* %size, align 8, !dbg !570
  %cmp = icmp ugt i64 %add, %5, !dbg !571
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !572

cond.true:                                        ; preds = %entry
  %6 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !573
  %size1 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %6, i32 0, i32 1, !dbg !574
  %7 = load i64, i64* %size1, align 8, !dbg !574
  %8 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !575
  %pread2 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %8, i32 0, i32 2, !dbg !576
  %9 = load i64, i64* %pread2, align 8, !dbg !576
  %sub = sub i64 %7, %9, !dbg !577
  br label %cond.end, !dbg !572

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !572

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !572
  store i64 %cond, i64* %split, align 8, !dbg !578
  %10 = load i64, i64* %split, align 8, !dbg !579
  %cmp3 = icmp ugt i64 %10, 0, !dbg !581
  br i1 %cmp3, label %if.then, label %if.end, !dbg !582

if.then:                                          ; preds = %cond.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !583
  %12 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !585
  %data = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %12, i32 0, i32 0, !dbg !586
  %13 = load i8*, i8** %data, align 8, !dbg !586
  %14 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !587
  %pread4 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %14, i32 0, i32 2, !dbg !588
  %15 = load i64, i64* %pread4, align 8, !dbg !588
  %add.ptr = getelementptr i8, i8* %13, i64 %15, !dbg !589
  %16 = load i64, i64* %split, align 8, !dbg !590
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %add.ptr, i64 %16, i1 false), !dbg !591
  %17 = load i64, i64* %split, align 8, !dbg !592
  %18 = load i8*, i8** %buf.addr, align 8, !dbg !593
  %add.ptr5 = getelementptr i8, i8* %18, i64 %17, !dbg !593
  store i8* %add.ptr5, i8** %buf.addr, align 8, !dbg !593
  %19 = load i64, i64* %split, align 8, !dbg !594
  %20 = load i64, i64* %todo, align 8, !dbg !595
  %sub6 = sub i64 %20, %19, !dbg !595
  store i64 %sub6, i64* %todo, align 8, !dbg !595
  br label %do.body, !dbg !596

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !597

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !599

do.end:                                           ; preds = %do.body7
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !597, !srcloc !601
  br label %do.body8, !dbg !597

do.body8:                                         ; preds = %do.end
  br label %do.body9, !dbg !602

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !604

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !602

do.body11:                                        ; preds = %do.end10
  %21 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !606
  %pread12 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %21, i32 0, i32 2, !dbg !606
  store volatile i64 0, i64* %pread12, align 8, !dbg !606
  br label %do.end13, !dbg !606

do.end13:                                         ; preds = %do.body11
  br label %do.end14, !dbg !602

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !597

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !608

if.end:                                           ; preds = %do.end15, %cond.end
  %22 = load i8*, i8** %buf.addr, align 8, !dbg !609
  %23 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !610
  %data16 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %23, i32 0, i32 0, !dbg !611
  %24 = load i8*, i8** %data16, align 8, !dbg !611
  %25 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !612
  %pread17 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %25, i32 0, i32 2, !dbg !613
  %26 = load i64, i64* %pread17, align 8, !dbg !613
  %add.ptr18 = getelementptr i8, i8* %24, i64 %26, !dbg !614
  %27 = load i64, i64* %todo, align 8, !dbg !615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %add.ptr18, i64 %27, i1 false), !dbg !616
  br label %do.body19, !dbg !617

do.body19:                                        ; preds = %if.end
  br label %do.body20, !dbg !618

do.body20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !620

do.end21:                                         ; preds = %do.body20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !618, !srcloc !622
  br label %do.body22, !dbg !618

do.body22:                                        ; preds = %do.end21
  br label %do.body23, !dbg !623

do.body23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !625

do.end24:                                         ; preds = %do.body23
  br label %do.body25, !dbg !623

do.body25:                                        ; preds = %do.end24
  %28 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !627
  %pread26 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %28, i32 0, i32 2, !dbg !627
  %29 = load i64, i64* %pread26, align 8, !dbg !627
  %30 = load i64, i64* %todo, align 8, !dbg !627
  %add27 = add i64 %29, %30, !dbg !627
  %31 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !627
  %size28 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %31, i32 0, i32 1, !dbg !627
  %32 = load i64, i64* %size28, align 8, !dbg !627
  %rem = urem i64 %add27, %32, !dbg !627
  %33 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !627
  %pread29 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %33, i32 0, i32 2, !dbg !627
  store volatile i64 %rem, i64* %pread29, align 8, !dbg !627
  br label %do.end30, !dbg !627

do.end30:                                         ; preds = %do.body25
  br label %do.end31, !dbg !623

do.end31:                                         ; preds = %do.end30
  br label %do.end32, !dbg !618

do.end32:                                         ; preds = %do.end31
  ret void, !dbg !629
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dvb_ringbuffer_write(%struct.dvb_ringbuffer* %rbuf, i8* %buf, i64 %len) #0 !dbg !630 {
entry:
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %todo = alloca i64, align 8
  %split = alloca i64, align 8
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !635, metadata !DIExpression()), !dbg !636
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !637, metadata !DIExpression()), !dbg !638
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !639, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.declare(metadata i64* %todo, metadata !641, metadata !DIExpression()), !dbg !642
  %0 = load i64, i64* %len.addr, align 8, !dbg !643
  store i64 %0, i64* %todo, align 8, !dbg !642
  call void @llvm.dbg.declare(metadata i64* %split, metadata !644, metadata !DIExpression()), !dbg !645
  %1 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !646
  %pwrite = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %1, i32 0, i32 3, !dbg !647
  %2 = load i64, i64* %pwrite, align 8, !dbg !647
  %3 = load i64, i64* %len.addr, align 8, !dbg !648
  %add = add i64 %2, %3, !dbg !649
  %4 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !650
  %size = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %4, i32 0, i32 1, !dbg !651
  %5 = load i64, i64* %size, align 8, !dbg !651
  %cmp = icmp ugt i64 %add, %5, !dbg !652
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !653

cond.true:                                        ; preds = %entry
  %6 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !654
  %size1 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %6, i32 0, i32 1, !dbg !655
  %7 = load i64, i64* %size1, align 8, !dbg !655
  %8 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !656
  %pwrite2 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %8, i32 0, i32 3, !dbg !657
  %9 = load i64, i64* %pwrite2, align 8, !dbg !657
  %sub = sub i64 %7, %9, !dbg !658
  br label %cond.end, !dbg !653

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !653

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !653
  store i64 %cond, i64* %split, align 8, !dbg !659
  %10 = load i64, i64* %split, align 8, !dbg !660
  %cmp3 = icmp ugt i64 %10, 0, !dbg !662
  br i1 %cmp3, label %if.then, label %if.end, !dbg !663

if.then:                                          ; preds = %cond.end
  %11 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !664
  %data = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %11, i32 0, i32 0, !dbg !666
  %12 = load i8*, i8** %data, align 8, !dbg !666
  %13 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !667
  %pwrite4 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %13, i32 0, i32 3, !dbg !668
  %14 = load i64, i64* %pwrite4, align 8, !dbg !668
  %add.ptr = getelementptr i8, i8* %12, i64 %14, !dbg !669
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !670
  %16 = load i64, i64* %split, align 8, !dbg !671
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %15, i64 %16, i1 false), !dbg !672
  %17 = load i64, i64* %split, align 8, !dbg !673
  %18 = load i8*, i8** %buf.addr, align 8, !dbg !674
  %add.ptr5 = getelementptr i8, i8* %18, i64 %17, !dbg !674
  store i8* %add.ptr5, i8** %buf.addr, align 8, !dbg !674
  %19 = load i64, i64* %split, align 8, !dbg !675
  %20 = load i64, i64* %todo, align 8, !dbg !676
  %sub6 = sub i64 %20, %19, !dbg !676
  store i64 %sub6, i64* %todo, align 8, !dbg !676
  br label %do.body, !dbg !677

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !678

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !680

do.end:                                           ; preds = %do.body7
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !678, !srcloc !682
  br label %do.body8, !dbg !678

do.body8:                                         ; preds = %do.end
  br label %do.body9, !dbg !683

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !685

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !683

do.body11:                                        ; preds = %do.end10
  %21 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !687
  %pwrite12 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %21, i32 0, i32 3, !dbg !687
  store volatile i64 0, i64* %pwrite12, align 8, !dbg !687
  br label %do.end13, !dbg !687

do.end13:                                         ; preds = %do.body11
  br label %do.end14, !dbg !683

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !678

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !689

if.end:                                           ; preds = %do.end15, %cond.end
  %22 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !690
  %data16 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %22, i32 0, i32 0, !dbg !691
  %23 = load i8*, i8** %data16, align 8, !dbg !691
  %24 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !692
  %pwrite17 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %24, i32 0, i32 3, !dbg !693
  %25 = load i64, i64* %pwrite17, align 8, !dbg !693
  %add.ptr18 = getelementptr i8, i8* %23, i64 %25, !dbg !694
  %26 = load i8*, i8** %buf.addr, align 8, !dbg !695
  %27 = load i64, i64* %todo, align 8, !dbg !696
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr18, i8* align 1 %26, i64 %27, i1 false), !dbg !697
  br label %do.body19, !dbg !698

do.body19:                                        ; preds = %if.end
  br label %do.body20, !dbg !699

do.body20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !701

do.end21:                                         ; preds = %do.body20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !699, !srcloc !703
  br label %do.body22, !dbg !699

do.body22:                                        ; preds = %do.end21
  br label %do.body23, !dbg !704

do.body23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !706

do.end24:                                         ; preds = %do.body23
  br label %do.body25, !dbg !704

do.body25:                                        ; preds = %do.end24
  %28 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !708
  %pwrite26 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %28, i32 0, i32 3, !dbg !708
  %29 = load i64, i64* %pwrite26, align 8, !dbg !708
  %30 = load i64, i64* %todo, align 8, !dbg !708
  %add27 = add i64 %29, %30, !dbg !708
  %31 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !708
  %size28 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %31, i32 0, i32 1, !dbg !708
  %32 = load i64, i64* %size28, align 8, !dbg !708
  %rem = urem i64 %add27, %32, !dbg !708
  %33 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !708
  %pwrite29 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %33, i32 0, i32 3, !dbg !708
  store volatile i64 %rem, i64* %pwrite29, align 8, !dbg !708
  br label %do.end30, !dbg !708

do.end30:                                         ; preds = %do.body25
  br label %do.end31, !dbg !704

do.end31:                                         ; preds = %do.end30
  br label %do.end32, !dbg !699

do.end32:                                         ; preds = %do.end31
  %34 = load i64, i64* %len.addr, align 8, !dbg !710
  ret i64 %34, !dbg !711
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dvb_ringbuffer_write_user(%struct.dvb_ringbuffer* %rbuf, i8* %buf, i64 %len) #0 !dbg !712 {
entry:
  %retval.i.i42 = alloca i1, align 1
  %addr.addr.i.i43 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i43, metadata !342, metadata !DIExpression()), !dbg !713
  %bytes.addr.i.i44 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i44, metadata !360, metadata !DIExpression()), !dbg !718
  %is_source.addr.i.i45 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i45, metadata !362, metadata !DIExpression()), !dbg !719
  %sz.i.i46 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i46, metadata !364, metadata !DIExpression()), !dbg !720
  %__ret_warn_on.i.i47 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i47, metadata !366, metadata !DIExpression()), !dbg !721
  %tmp.i.i48 = alloca i64, align 8
  %to.addr.i49 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i49, metadata !722, metadata !DIExpression()), !dbg !723
  %from.addr.i50 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i50, metadata !724, metadata !DIExpression()), !dbg !725
  %n.addr.i51 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i51, metadata !726, metadata !DIExpression()), !dbg !727
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !342, metadata !DIExpression()), !dbg !728
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !360, metadata !DIExpression()), !dbg !733
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !362, metadata !DIExpression()), !dbg !734
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !364, metadata !DIExpression()), !dbg !735
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !366, metadata !DIExpression()), !dbg !736
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !722, metadata !DIExpression()), !dbg !737
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !724, metadata !DIExpression()), !dbg !738
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !726, metadata !DIExpression()), !dbg !739
  %retval = alloca i64, align 8
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %todo = alloca i64, align 8
  %split = alloca i64, align 8
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !740, metadata !DIExpression()), !dbg !741
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !742, metadata !DIExpression()), !dbg !743
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !744, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.declare(metadata i32* %status, metadata !746, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.declare(metadata i64* %todo, metadata !748, metadata !DIExpression()), !dbg !749
  %0 = load i64, i64* %len.addr, align 8, !dbg !750
  store i64 %0, i64* %todo, align 8, !dbg !749
  call void @llvm.dbg.declare(metadata i64* %split, metadata !751, metadata !DIExpression()), !dbg !752
  %1 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !753
  %pwrite = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %1, i32 0, i32 3, !dbg !754
  %2 = load i64, i64* %pwrite, align 8, !dbg !754
  %3 = load i64, i64* %len.addr, align 8, !dbg !755
  %add = add i64 %2, %3, !dbg !756
  %4 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !757
  %size = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %4, i32 0, i32 1, !dbg !758
  %5 = load i64, i64* %size, align 8, !dbg !758
  %cmp = icmp ugt i64 %add, %5, !dbg !759
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !760

cond.true:                                        ; preds = %entry
  %6 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !761
  %size1 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %6, i32 0, i32 1, !dbg !762
  %7 = load i64, i64* %size1, align 8, !dbg !762
  %8 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !763
  %pwrite2 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %8, i32 0, i32 3, !dbg !764
  %9 = load i64, i64* %pwrite2, align 8, !dbg !764
  %sub = sub i64 %7, %9, !dbg !765
  br label %cond.end, !dbg !760

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !760

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !760
  store i64 %cond, i64* %split, align 8, !dbg !766
  %10 = load i64, i64* %split, align 8, !dbg !767
  %cmp3 = icmp ugt i64 %10, 0, !dbg !768
  br i1 %cmp3, label %if.then, label %if.end18, !dbg !769

if.then:                                          ; preds = %cond.end
  %11 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !770
  %data = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %11, i32 0, i32 0, !dbg !771
  %12 = load i8*, i8** %data, align 8, !dbg !771
  %13 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !772
  %pwrite4 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %13, i32 0, i32 3, !dbg !773
  %14 = load i64, i64* %pwrite4, align 8, !dbg !773
  %add.ptr = getelementptr i8, i8* %12, i64 %14, !dbg !774
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !775
  %16 = load i64, i64* %split, align 8, !dbg !776
  store i8* %add.ptr, i8** %to.addr.i, align 8
  store i8* %15, i8** %from.addr.i, align 8
  store i64 %16, i64* %n.addr.i, align 8
  %17 = load i8*, i8** %to.addr.i, align 8, !dbg !777
  %18 = load i64, i64* %n.addr.i, align 8, !dbg !777
  store i8* %17, i8** %addr.addr.i.i, align 8
  store i64 %18, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !735
  %19 = load i32, i32* %sz.i.i, align 4, !dbg !778
  %cmp.i.i = icmp sge i32 %19, 0, !dbg !778
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !778

land.rhs.i.i:                                     ; preds = %if.then
  %20 = load i32, i32* %sz.i.i, align 4, !dbg !778
  %conv.i.i = sext i32 %20 to i64, !dbg !778
  %21 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !778
  %cmp1.i.i = icmp ult i64 %conv.i.i, %21, !dbg !778
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.then
  %22 = phi i1 [ false, %if.then ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !779
  %lnot.i.i = xor i1 %22, true, !dbg !778
  %lnot.ext.i.i = zext i1 %22 to i32, !dbg !778
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !778
  br i1 %22, label %if.then.i.i, label %if.end10.i.i, !dbg !780

if.then.i.i:                                      ; preds = %land.end.i.i
  %23 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !781
  %24 = call i1 @llvm.is.constant.i64(i64 %23) #5, !dbg !782
  br i1 %24, label %if.else.i.i, label %if.then5.i.i, !dbg !783

if.then5.i.i:                                     ; preds = %if.then.i.i
  %25 = load i32, i32* %sz.i.i, align 4, !dbg !784
  %26 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !785
  call void @copy_overflow(i32 %25, i64 %26) #8, !dbg !786
  br label %if.end9.i.i, !dbg !786

if.else.i.i:                                      ; preds = %if.then.i.i
  %27 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !787
  %tobool6.i.i = trunc i8 %27 to i1, !dbg !787
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !788

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #8, !dbg !789
  br label %if.end.i.i, !dbg !789

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #8, !dbg !790
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !791
  br label %check_copy_size.exit.i, !dbg !791

if.end10.i.i:                                     ; preds = %land.end.i.i
  %28 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !736
  %cmp11.i.i = icmp ugt i64 %28, 2147483647, !dbg !736
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !736
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !736
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !736
  %29 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !792
  %tobool17.i.i = icmp ne i32 %29, 0, !dbg !792
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !792
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !792
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !792
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !736

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !793, !srcloc !448
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !794, !srcloc !451
  br label %if.end31.i.i, !dbg !795

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %30 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !736
  %tobool32.i.i = icmp ne i32 %30, 0, !dbg !736
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !736
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !736
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !736
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !792
  %31 = load i64, i64* %tmp.i.i, align 8, !dbg !736
  %tobool38.i.i = icmp ne i64 %31, 0, !dbg !796
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !797

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !798
  br label %check_copy_size.exit.i, !dbg !798

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %32 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !799
  %33 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !800
  %34 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !801
  %tobool41.i.i = trunc i8 %34 to i1, !dbg !801
  call void @check_object_size(i8* %32, i64 %33, i1 zeroext %tobool41.i.i) #8, !dbg !802
  store i1 true, i1* %retval.i.i, align 1, !dbg !803
  br label %check_copy_size.exit.i, !dbg !803

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %35 = load i1, i1* %retval.i.i, align 1, !dbg !804
  %lnot.i = xor i1 %35, true, !dbg !777
  %lnot.ext.i = zext i1 %35 to i32, !dbg !777
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !777
  br i1 %35, label %if.then.i, label %copy_from_user.exit, !dbg !805

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %36 = load i8*, i8** %to.addr.i, align 8, !dbg !806
  %37 = load i8*, i8** %from.addr.i, align 8, !dbg !807
  %38 = load i64, i64* %n.addr.i, align 8, !dbg !808
  %call2.i = call i64 @_copy_from_user(i8* %36, i8* %37, i64 %38) #8, !dbg !809
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !810
  br label %copy_from_user.exit, !dbg !811

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %39 = load i64, i64* %n.addr.i, align 8, !dbg !812
  %conv = trunc i64 %39 to i32, !dbg !813
  store i32 %conv, i32* %status, align 4, !dbg !814
  %40 = load i32, i32* %status, align 4, !dbg !815
  %tobool = icmp ne i32 %40, 0, !dbg !815
  br i1 %tobool, label %if.then5, label %if.end, !dbg !817

if.then5:                                         ; preds = %copy_from_user.exit
  %41 = load i64, i64* %len.addr, align 8, !dbg !818
  %42 = load i64, i64* %todo, align 8, !dbg !819
  %sub6 = sub i64 %41, %42, !dbg !820
  store i64 %sub6, i64* %retval, align 8, !dbg !821
  br label %return, !dbg !821

if.end:                                           ; preds = %copy_from_user.exit
  %43 = load i64, i64* %split, align 8, !dbg !822
  %44 = load i8*, i8** %buf.addr, align 8, !dbg !823
  %add.ptr7 = getelementptr i8, i8* %44, i64 %43, !dbg !823
  store i8* %add.ptr7, i8** %buf.addr, align 8, !dbg !823
  %45 = load i64, i64* %split, align 8, !dbg !824
  %46 = load i64, i64* %todo, align 8, !dbg !825
  %sub8 = sub i64 %46, %45, !dbg !825
  store i64 %sub8, i64* %todo, align 8, !dbg !825
  br label %do.body, !dbg !826

do.body:                                          ; preds = %if.end
  br label %do.body9, !dbg !827

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !829

do.end:                                           ; preds = %do.body9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !827, !srcloc !831
  br label %do.body10, !dbg !827

do.body10:                                        ; preds = %do.end
  br label %do.body11, !dbg !832

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !834

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !832

do.body13:                                        ; preds = %do.end12
  %47 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !836
  %pwrite14 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %47, i32 0, i32 3, !dbg !836
  store volatile i64 0, i64* %pwrite14, align 8, !dbg !836
  br label %do.end15, !dbg !836

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !832

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !827

do.end17:                                         ; preds = %do.end16
  br label %if.end18, !dbg !838

if.end18:                                         ; preds = %do.end17, %cond.end
  %48 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !839
  %data19 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %48, i32 0, i32 0, !dbg !840
  %49 = load i8*, i8** %data19, align 8, !dbg !840
  %50 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !841
  %pwrite20 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %50, i32 0, i32 3, !dbg !842
  %51 = load i64, i64* %pwrite20, align 8, !dbg !842
  %add.ptr21 = getelementptr i8, i8* %49, i64 %51, !dbg !843
  %52 = load i8*, i8** %buf.addr, align 8, !dbg !844
  %53 = load i64, i64* %todo, align 8, !dbg !845
  store i8* %add.ptr21, i8** %to.addr.i49, align 8
  store i8* %52, i8** %from.addr.i50, align 8
  store i64 %53, i64* %n.addr.i51, align 8
  %54 = load i8*, i8** %to.addr.i49, align 8, !dbg !846
  %55 = load i64, i64* %n.addr.i51, align 8, !dbg !846
  store i8* %54, i8** %addr.addr.i.i43, align 8
  store i64 %55, i64* %bytes.addr.i.i44, align 8
  store i8 0, i8* %is_source.addr.i.i45, align 1
  store i32 -1, i32* %sz.i.i46, align 4, !dbg !720
  %56 = load i32, i32* %sz.i.i46, align 4, !dbg !847
  %cmp.i.i52 = icmp sge i32 %56, 0, !dbg !847
  br i1 %cmp.i.i52, label %land.rhs.i.i55, label %land.end.i.i59, !dbg !847

land.rhs.i.i55:                                   ; preds = %if.end18
  %57 = load i32, i32* %sz.i.i46, align 4, !dbg !847
  %conv.i.i53 = sext i32 %57 to i64, !dbg !847
  %58 = load i64, i64* %bytes.addr.i.i44, align 8, !dbg !847
  %cmp1.i.i54 = icmp ult i64 %conv.i.i53, %58, !dbg !847
  br label %land.end.i.i59

land.end.i.i59:                                   ; preds = %land.rhs.i.i55, %if.end18
  %59 = phi i1 [ false, %if.end18 ], [ %cmp1.i.i54, %land.rhs.i.i55 ], !dbg !848
  %lnot.i.i56 = xor i1 %59, true, !dbg !847
  %lnot.ext.i.i57 = zext i1 %59 to i32, !dbg !847
  %conv4.i.i58 = sext i32 %lnot.ext.i.i57 to i64, !dbg !847
  br i1 %59, label %if.then.i.i60, label %if.end10.i.i75, !dbg !849

if.then.i.i60:                                    ; preds = %land.end.i.i59
  %60 = load i64, i64* %bytes.addr.i.i44, align 8, !dbg !850
  %61 = call i1 @llvm.is.constant.i64(i64 %60) #5, !dbg !851
  br i1 %61, label %if.else.i.i63, label %if.then5.i.i61, !dbg !852

if.then5.i.i61:                                   ; preds = %if.then.i.i60
  %62 = load i32, i32* %sz.i.i46, align 4, !dbg !853
  %63 = load i64, i64* %bytes.addr.i.i44, align 8, !dbg !854
  call void @copy_overflow(i32 %62, i64 %63) #8, !dbg !855
  br label %if.end9.i.i67, !dbg !855

if.else.i.i63:                                    ; preds = %if.then.i.i60
  %64 = load i8, i8* %is_source.addr.i.i45, align 1, !dbg !856
  %tobool6.i.i62 = trunc i8 %64 to i1, !dbg !856
  br i1 %tobool6.i.i62, label %if.then7.i.i64, label %if.else8.i.i65, !dbg !857

if.then7.i.i64:                                   ; preds = %if.else.i.i63
  call void @__bad_copy_from() #8, !dbg !858
  br label %if.end.i.i66, !dbg !858

if.else8.i.i65:                                   ; preds = %if.else.i.i63
  call void @__bad_copy_to() #8, !dbg !859
  br label %if.end.i.i66

if.end.i.i66:                                     ; preds = %if.else8.i.i65, %if.then7.i.i64
  br label %if.end9.i.i67

if.end9.i.i67:                                    ; preds = %if.end.i.i66, %if.then5.i.i61
  store i1 false, i1* %retval.i.i42, align 1, !dbg !860
  br label %check_copy_size.exit.i89, !dbg !860

if.end10.i.i75:                                   ; preds = %land.end.i.i59
  %65 = load i64, i64* %bytes.addr.i.i44, align 8, !dbg !721
  %cmp11.i.i68 = icmp ugt i64 %65, 2147483647, !dbg !721
  %lnot13.i.i69 = xor i1 %cmp11.i.i68, true, !dbg !721
  %lnot.ext16.i.i70 = zext i1 %cmp11.i.i68 to i32, !dbg !721
  store i32 %lnot.ext16.i.i70, i32* %__ret_warn_on.i.i47, align 4, !dbg !721
  %66 = load i32, i32* %__ret_warn_on.i.i47, align 4, !dbg !861
  %tobool17.i.i71 = icmp ne i32 %66, 0, !dbg !861
  %lnot18.i.i72 = xor i1 %tobool17.i.i71, true, !dbg !861
  %lnot.ext21.i.i73 = zext i1 %tobool17.i.i71 to i32, !dbg !861
  %conv22.i.i74 = sext i32 %lnot.ext21.i.i73 to i64, !dbg !861
  br i1 %tobool17.i.i71, label %if.then24.i.i76, label %if.end31.i.i82, !dbg !721

if.then24.i.i76:                                  ; preds = %if.end10.i.i75
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !862, !srcloc !448
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !863, !srcloc !451
  br label %if.end31.i.i82, !dbg !864

if.end31.i.i82:                                   ; preds = %if.then24.i.i76, %if.end10.i.i75
  %67 = load i32, i32* %__ret_warn_on.i.i47, align 4, !dbg !721
  %tobool32.i.i77 = icmp ne i32 %67, 0, !dbg !721
  %lnot33.i.i78 = xor i1 %tobool32.i.i77, true, !dbg !721
  %lnot.ext36.i.i79 = zext i1 %tobool32.i.i77 to i32, !dbg !721
  %conv37.i.i80 = sext i32 %lnot.ext36.i.i79 to i64, !dbg !721
  store i64 %conv37.i.i80, i64* %tmp.i.i48, align 8, !dbg !861
  %68 = load i64, i64* %tmp.i.i48, align 8, !dbg !721
  %tobool38.i.i81 = icmp ne i64 %68, 0, !dbg !865
  br i1 %tobool38.i.i81, label %if.then39.i.i83, label %if.end40.i.i85, !dbg !866

if.then39.i.i83:                                  ; preds = %if.end31.i.i82
  store i1 false, i1* %retval.i.i42, align 1, !dbg !867
  br label %check_copy_size.exit.i89, !dbg !867

if.end40.i.i85:                                   ; preds = %if.end31.i.i82
  %69 = load i8*, i8** %addr.addr.i.i43, align 8, !dbg !868
  %70 = load i64, i64* %bytes.addr.i.i44, align 8, !dbg !869
  %71 = load i8, i8* %is_source.addr.i.i45, align 1, !dbg !870
  %tobool41.i.i84 = trunc i8 %71 to i1, !dbg !870
  call void @check_object_size(i8* %69, i64 %70, i1 zeroext %tobool41.i.i84) #8, !dbg !871
  store i1 true, i1* %retval.i.i42, align 1, !dbg !872
  br label %check_copy_size.exit.i89, !dbg !872

check_copy_size.exit.i89:                         ; preds = %if.end40.i.i85, %if.then39.i.i83, %if.end9.i.i67
  %72 = load i1, i1* %retval.i.i42, align 1, !dbg !873
  %lnot.i86 = xor i1 %72, true, !dbg !846
  %lnot.ext.i87 = zext i1 %72 to i32, !dbg !846
  %conv.i88 = sext i32 %lnot.ext.i87 to i64, !dbg !846
  br i1 %72, label %if.then.i91, label %copy_from_user.exit92, !dbg !874

if.then.i91:                                      ; preds = %check_copy_size.exit.i89
  %73 = load i8*, i8** %to.addr.i49, align 8, !dbg !875
  %74 = load i8*, i8** %from.addr.i50, align 8, !dbg !876
  %75 = load i64, i64* %n.addr.i51, align 8, !dbg !877
  %call2.i90 = call i64 @_copy_from_user(i8* %73, i8* %74, i64 %75) #8, !dbg !878
  store i64 %call2.i90, i64* %n.addr.i51, align 8, !dbg !879
  br label %copy_from_user.exit92, !dbg !880

copy_from_user.exit92:                            ; preds = %check_copy_size.exit.i89, %if.then.i91
  %76 = load i64, i64* %n.addr.i51, align 8, !dbg !881
  %conv23 = trunc i64 %76 to i32, !dbg !882
  store i32 %conv23, i32* %status, align 4, !dbg !883
  %77 = load i32, i32* %status, align 4, !dbg !884
  %tobool24 = icmp ne i32 %77, 0, !dbg !884
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !886

if.then25:                                        ; preds = %copy_from_user.exit92
  %78 = load i64, i64* %len.addr, align 8, !dbg !887
  %79 = load i64, i64* %todo, align 8, !dbg !888
  %sub26 = sub i64 %78, %79, !dbg !889
  store i64 %sub26, i64* %retval, align 8, !dbg !890
  br label %return, !dbg !890

if.end27:                                         ; preds = %copy_from_user.exit92
  br label %do.body28, !dbg !891

do.body28:                                        ; preds = %if.end27
  br label %do.body29, !dbg !892

do.body29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !894

do.end30:                                         ; preds = %do.body29
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !892, !srcloc !896
  br label %do.body31, !dbg !892

do.body31:                                        ; preds = %do.end30
  br label %do.body32, !dbg !897

do.body32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !899

do.end33:                                         ; preds = %do.body32
  br label %do.body34, !dbg !897

do.body34:                                        ; preds = %do.end33
  %80 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !901
  %pwrite35 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %80, i32 0, i32 3, !dbg !901
  %81 = load i64, i64* %pwrite35, align 8, !dbg !901
  %82 = load i64, i64* %todo, align 8, !dbg !901
  %add36 = add i64 %81, %82, !dbg !901
  %83 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !901
  %size37 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %83, i32 0, i32 1, !dbg !901
  %84 = load i64, i64* %size37, align 8, !dbg !901
  %rem = urem i64 %add36, %84, !dbg !901
  %85 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !901
  %pwrite38 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %85, i32 0, i32 3, !dbg !901
  store volatile i64 %rem, i64* %pwrite38, align 8, !dbg !901
  br label %do.end39, !dbg !901

do.end39:                                         ; preds = %do.body34
  br label %do.end40, !dbg !897

do.end40:                                         ; preds = %do.end39
  br label %do.end41, !dbg !892

do.end41:                                         ; preds = %do.end40
  %86 = load i64, i64* %len.addr, align 8, !dbg !903
  store i64 %86, i64* %retval, align 8, !dbg !904
  br label %return, !dbg !904

return:                                           ; preds = %do.end41, %if.then25, %if.then5
  %87 = load i64, i64* %retval, align 8, !dbg !905
  ret i64 %87, !dbg !905
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dvb_ringbuffer_pkt_write(%struct.dvb_ringbuffer* %rbuf, i8* %buf, i64 %len) #0 !dbg !906 {
entry:
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %oldpwrite = alloca i64, align 8
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !907, metadata !DIExpression()), !dbg !908
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !909, metadata !DIExpression()), !dbg !910
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !911, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.declare(metadata i32* %status, metadata !913, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.declare(metadata i64* %oldpwrite, metadata !915, metadata !DIExpression()), !dbg !916
  %0 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !917
  %pwrite = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %0, i32 0, i32 3, !dbg !918
  %1 = load i64, i64* %pwrite, align 8, !dbg !918
  store i64 %1, i64* %oldpwrite, align 8, !dbg !916
  %2 = load i64, i64* %len.addr, align 8, !dbg !919
  %shr = lshr i64 %2, 8, !dbg !919
  %conv = trunc i64 %shr to i8, !dbg !919
  %3 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !919
  %data = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %3, i32 0, i32 0, !dbg !919
  %4 = load i8*, i8** %data, align 8, !dbg !919
  %5 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !919
  %pwrite1 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %5, i32 0, i32 3, !dbg !919
  %6 = load i64, i64* %pwrite1, align 8, !dbg !919
  %arrayidx = getelementptr i8, i8* %4, i64 %6, !dbg !919
  store i8 %conv, i8* %arrayidx, align 1, !dbg !919
  %7 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !919
  %pwrite2 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %7, i32 0, i32 3, !dbg !919
  %8 = load i64, i64* %pwrite2, align 8, !dbg !919
  %add = add i64 %8, 1, !dbg !919
  %9 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !919
  %size = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %9, i32 0, i32 1, !dbg !919
  %10 = load i64, i64* %size, align 8, !dbg !919
  %rem = srem i64 %add, %10, !dbg !919
  %11 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !919
  %pwrite3 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %11, i32 0, i32 3, !dbg !919
  store i64 %rem, i64* %pwrite3, align 8, !dbg !919
  %12 = load i64, i64* %len.addr, align 8, !dbg !921
  %and = and i64 %12, 255, !dbg !921
  %conv4 = trunc i64 %and to i8, !dbg !921
  %13 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !921
  %data5 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %13, i32 0, i32 0, !dbg !921
  %14 = load i8*, i8** %data5, align 8, !dbg !921
  %15 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !921
  %pwrite6 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %15, i32 0, i32 3, !dbg !921
  %16 = load i64, i64* %pwrite6, align 8, !dbg !921
  %arrayidx7 = getelementptr i8, i8* %14, i64 %16, !dbg !921
  store i8 %conv4, i8* %arrayidx7, align 1, !dbg !921
  %17 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !921
  %pwrite8 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %17, i32 0, i32 3, !dbg !921
  %18 = load i64, i64* %pwrite8, align 8, !dbg !921
  %add9 = add i64 %18, 1, !dbg !921
  %19 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !921
  %size10 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %19, i32 0, i32 1, !dbg !921
  %20 = load i64, i64* %size10, align 8, !dbg !921
  %rem11 = srem i64 %add9, %20, !dbg !921
  %21 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !921
  %pwrite12 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %21, i32 0, i32 3, !dbg !921
  store i64 %rem11, i64* %pwrite12, align 8, !dbg !921
  %22 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !923
  %data13 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %22, i32 0, i32 0, !dbg !923
  %23 = load i8*, i8** %data13, align 8, !dbg !923
  %24 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !923
  %pwrite14 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %24, i32 0, i32 3, !dbg !923
  %25 = load i64, i64* %pwrite14, align 8, !dbg !923
  %arrayidx15 = getelementptr i8, i8* %23, i64 %25, !dbg !923
  store i8 0, i8* %arrayidx15, align 1, !dbg !923
  %26 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !923
  %pwrite16 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %26, i32 0, i32 3, !dbg !923
  %27 = load i64, i64* %pwrite16, align 8, !dbg !923
  %add17 = add i64 %27, 1, !dbg !923
  %28 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !923
  %size18 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %28, i32 0, i32 1, !dbg !923
  %29 = load i64, i64* %size18, align 8, !dbg !923
  %rem19 = srem i64 %add17, %29, !dbg !923
  %30 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !923
  %pwrite20 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %30, i32 0, i32 3, !dbg !923
  store i64 %rem19, i64* %pwrite20, align 8, !dbg !923
  %31 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !925
  %32 = load i8*, i8** %buf.addr, align 8, !dbg !926
  %33 = load i64, i64* %len.addr, align 8, !dbg !927
  %call = call i64 @dvb_ringbuffer_write(%struct.dvb_ringbuffer* %31, i8* %32, i64 %33) #7, !dbg !928
  %conv21 = trunc i64 %call to i32, !dbg !928
  store i32 %conv21, i32* %status, align 4, !dbg !929
  %34 = load i32, i32* %status, align 4, !dbg !930
  %cmp = icmp slt i32 %34, 0, !dbg !932
  br i1 %cmp, label %if.then, label %if.end, !dbg !933

if.then:                                          ; preds = %entry
  %35 = load i64, i64* %oldpwrite, align 8, !dbg !934
  %36 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !935
  %pwrite23 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %36, i32 0, i32 3, !dbg !936
  store i64 %35, i64* %pwrite23, align 8, !dbg !937
  br label %if.end, !dbg !935

if.end:                                           ; preds = %if.then, %entry
  %37 = load i32, i32* %status, align 4, !dbg !938
  %conv24 = sext i32 %37 to i64, !dbg !938
  ret i64 %conv24, !dbg !939
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dvb_ringbuffer_pkt_read_user(%struct.dvb_ringbuffer* %rbuf, i64 %idx, i32 %offset, i8* %buf, i64 %len) #0 !dbg !940 {
entry:
  %retval.i.i40 = alloca i1, align 1
  %addr.addr.i.i41 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i41, metadata !342, metadata !DIExpression()), !dbg !943
  %bytes.addr.i.i42 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i42, metadata !360, metadata !DIExpression()), !dbg !947
  %is_source.addr.i.i43 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i43, metadata !362, metadata !DIExpression()), !dbg !948
  %sz.i.i44 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i44, metadata !364, metadata !DIExpression()), !dbg !949
  %__ret_warn_on.i.i45 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i45, metadata !366, metadata !DIExpression()), !dbg !950
  %tmp.i.i46 = alloca i64, align 8
  %to.addr.i47 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i47, metadata !370, metadata !DIExpression()), !dbg !951
  %from.addr.i48 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i48, metadata !372, metadata !DIExpression()), !dbg !952
  %n.addr.i49 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i49, metadata !374, metadata !DIExpression()), !dbg !953
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !342, metadata !DIExpression()), !dbg !954
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !360, metadata !DIExpression()), !dbg !960
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !362, metadata !DIExpression()), !dbg !961
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !364, metadata !DIExpression()), !dbg !962
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !366, metadata !DIExpression()), !dbg !963
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !370, metadata !DIExpression()), !dbg !964
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !372, metadata !DIExpression()), !dbg !965
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !374, metadata !DIExpression()), !dbg !966
  %retval = alloca i64, align 8
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %idx.addr = alloca i64, align 8
  %offset.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %todo = alloca i64, align 8
  %split = alloca i64, align 8
  %pktlen = alloca i64, align 8
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !967, metadata !DIExpression()), !dbg !968
  store i64 %idx, i64* %idx.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %idx.addr, metadata !969, metadata !DIExpression()), !dbg !970
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !971, metadata !DIExpression()), !dbg !972
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !973, metadata !DIExpression()), !dbg !974
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !975, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.declare(metadata i64* %todo, metadata !977, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.declare(metadata i64* %split, metadata !979, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.declare(metadata i64* %pktlen, metadata !981, metadata !DIExpression()), !dbg !982
  %0 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !983
  %data = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %0, i32 0, i32 0, !dbg !984
  %1 = load i8*, i8** %data, align 8, !dbg !984
  %2 = load i64, i64* %idx.addr, align 8, !dbg !985
  %arrayidx = getelementptr i8, i8* %1, i64 %2, !dbg !983
  %3 = load i8, i8* %arrayidx, align 1, !dbg !983
  %conv = zext i8 %3 to i32, !dbg !983
  %shl = shl i32 %conv, 8, !dbg !986
  %conv1 = sext i32 %shl to i64, !dbg !983
  store i64 %conv1, i64* %pktlen, align 8, !dbg !987
  %4 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !988
  %data2 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %4, i32 0, i32 0, !dbg !989
  %5 = load i8*, i8** %data2, align 8, !dbg !989
  %6 = load i64, i64* %idx.addr, align 8, !dbg !990
  %add = add i64 %6, 1, !dbg !991
  %7 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !992
  %size = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %7, i32 0, i32 1, !dbg !993
  %8 = load i64, i64* %size, align 8, !dbg !993
  %rem = urem i64 %add, %8, !dbg !994
  %arrayidx3 = getelementptr i8, i8* %5, i64 %rem, !dbg !988
  %9 = load i8, i8* %arrayidx3, align 1, !dbg !988
  %conv4 = zext i8 %9 to i64, !dbg !988
  %10 = load i64, i64* %pktlen, align 8, !dbg !995
  %or = or i64 %10, %conv4, !dbg !995
  store i64 %or, i64* %pktlen, align 8, !dbg !995
  %11 = load i32, i32* %offset.addr, align 4, !dbg !996
  %conv5 = sext i32 %11 to i64, !dbg !996
  %12 = load i64, i64* %pktlen, align 8, !dbg !998
  %cmp = icmp ugt i64 %conv5, %12, !dbg !999
  br i1 %cmp, label %if.then, label %if.end, !dbg !1000

if.then:                                          ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !1001
  br label %return, !dbg !1001

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %offset.addr, align 4, !dbg !1002
  %conv7 = sext i32 %13 to i64, !dbg !1002
  %14 = load i64, i64* %len.addr, align 8, !dbg !1004
  %add8 = add i64 %conv7, %14, !dbg !1005
  %15 = load i64, i64* %pktlen, align 8, !dbg !1006
  %cmp9 = icmp ugt i64 %add8, %15, !dbg !1007
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !1008

if.then11:                                        ; preds = %if.end
  %16 = load i64, i64* %pktlen, align 8, !dbg !1009
  %17 = load i32, i32* %offset.addr, align 4, !dbg !1010
  %conv12 = sext i32 %17 to i64, !dbg !1010
  %sub = sub i64 %16, %conv12, !dbg !1011
  store i64 %sub, i64* %len.addr, align 8, !dbg !1012
  br label %if.end13, !dbg !1013

if.end13:                                         ; preds = %if.then11, %if.end
  %18 = load i64, i64* %idx.addr, align 8, !dbg !1014
  %add14 = add i64 %18, 3, !dbg !1015
  %19 = load i32, i32* %offset.addr, align 4, !dbg !1016
  %conv15 = sext i32 %19 to i64, !dbg !1016
  %add16 = add i64 %add14, %conv15, !dbg !1017
  %20 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1018
  %size17 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %20, i32 0, i32 1, !dbg !1019
  %21 = load i64, i64* %size17, align 8, !dbg !1019
  %rem18 = urem i64 %add16, %21, !dbg !1020
  store i64 %rem18, i64* %idx.addr, align 8, !dbg !1021
  %22 = load i64, i64* %len.addr, align 8, !dbg !1022
  store i64 %22, i64* %todo, align 8, !dbg !1023
  %23 = load i64, i64* %idx.addr, align 8, !dbg !1024
  %24 = load i64, i64* %len.addr, align 8, !dbg !1025
  %add19 = add i64 %23, %24, !dbg !1026
  %25 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1027
  %size20 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %25, i32 0, i32 1, !dbg !1028
  %26 = load i64, i64* %size20, align 8, !dbg !1028
  %cmp21 = icmp ugt i64 %add19, %26, !dbg !1029
  br i1 %cmp21, label %cond.true, label %cond.false, !dbg !1030

cond.true:                                        ; preds = %if.end13
  %27 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1031
  %size23 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %27, i32 0, i32 1, !dbg !1032
  %28 = load i64, i64* %size23, align 8, !dbg !1032
  %29 = load i64, i64* %idx.addr, align 8, !dbg !1033
  %sub24 = sub i64 %28, %29, !dbg !1034
  br label %cond.end, !dbg !1030

cond.false:                                       ; preds = %if.end13
  br label %cond.end, !dbg !1030

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub24, %cond.true ], [ 0, %cond.false ], !dbg !1030
  store i64 %cond, i64* %split, align 8, !dbg !1035
  %30 = load i64, i64* %split, align 8, !dbg !1036
  %cmp25 = icmp ugt i64 %30, 0, !dbg !1037
  br i1 %cmp25, label %if.then27, label %if.end33, !dbg !1038

if.then27:                                        ; preds = %cond.end
  %31 = load i8*, i8** %buf.addr, align 8, !dbg !1039
  %32 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1040
  %data28 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %32, i32 0, i32 0, !dbg !1041
  %33 = load i8*, i8** %data28, align 8, !dbg !1041
  %34 = load i64, i64* %idx.addr, align 8, !dbg !1042
  %add.ptr = getelementptr i8, i8* %33, i64 %34, !dbg !1043
  %35 = load i64, i64* %split, align 8, !dbg !1044
  store i8* %31, i8** %to.addr.i, align 8
  store i8* %add.ptr, i8** %from.addr.i, align 8
  store i64 %35, i64* %n.addr.i, align 8
  %36 = load i8*, i8** %from.addr.i, align 8, !dbg !1045
  %37 = load i64, i64* %n.addr.i, align 8, !dbg !1045
  store i8* %36, i8** %addr.addr.i.i, align 8
  store i64 %37, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !962
  %38 = load i32, i32* %sz.i.i, align 4, !dbg !1046
  %cmp.i.i = icmp sge i32 %38, 0, !dbg !1046
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !1046

land.rhs.i.i:                                     ; preds = %if.then27
  %39 = load i32, i32* %sz.i.i, align 4, !dbg !1046
  %conv.i.i = sext i32 %39 to i64, !dbg !1046
  %40 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !1046
  %cmp1.i.i = icmp ult i64 %conv.i.i, %40, !dbg !1046
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.then27
  %41 = phi i1 [ false, %if.then27 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !1047
  %lnot.i.i = xor i1 %41, true, !dbg !1046
  %lnot.ext.i.i = zext i1 %41 to i32, !dbg !1046
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1046
  br i1 %41, label %if.then.i.i, label %if.end10.i.i, !dbg !1048

if.then.i.i:                                      ; preds = %land.end.i.i
  %42 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !1049
  %43 = call i1 @llvm.is.constant.i64(i64 %42) #5, !dbg !1050
  br i1 %43, label %if.else.i.i, label %if.then5.i.i, !dbg !1051

if.then5.i.i:                                     ; preds = %if.then.i.i
  %44 = load i32, i32* %sz.i.i, align 4, !dbg !1052
  %45 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !1053
  call void @copy_overflow(i32 %44, i64 %45) #8, !dbg !1054
  br label %if.end9.i.i, !dbg !1054

if.else.i.i:                                      ; preds = %if.then.i.i
  %46 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !1055
  %tobool6.i.i = trunc i8 %46 to i1, !dbg !1055
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !1056

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #8, !dbg !1057
  br label %if.end.i.i, !dbg !1057

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #8, !dbg !1058
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !1059
  br label %check_copy_size.exit.i, !dbg !1059

if.end10.i.i:                                     ; preds = %land.end.i.i
  %47 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !963
  %cmp11.i.i = icmp ugt i64 %47, 2147483647, !dbg !963
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !963
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !963
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !963
  %48 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !1060
  %tobool17.i.i = icmp ne i32 %48, 0, !dbg !1060
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !1060
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !1060
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !1060
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !963

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !1061, !srcloc !448
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !1062, !srcloc !451
  br label %if.end31.i.i, !dbg !1063

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %49 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !963
  %tobool32.i.i = icmp ne i32 %49, 0, !dbg !963
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !963
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !963
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !963
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !1060
  %50 = load i64, i64* %tmp.i.i, align 8, !dbg !963
  %tobool38.i.i = icmp ne i64 %50, 0, !dbg !1064
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !1065

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !1066
  br label %check_copy_size.exit.i, !dbg !1066

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %51 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !1067
  %52 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !1068
  %53 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !1069
  %tobool41.i.i = trunc i8 %53 to i1, !dbg !1069
  call void @check_object_size(i8* %51, i64 %52, i1 zeroext %tobool41.i.i) #8, !dbg !1070
  store i1 true, i1* %retval.i.i, align 1, !dbg !1071
  br label %check_copy_size.exit.i, !dbg !1071

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %54 = load i1, i1* %retval.i.i, align 1, !dbg !1072
  %lnot.i = xor i1 %54, true, !dbg !1045
  %lnot.ext.i = zext i1 %54 to i32, !dbg !1045
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !1045
  br i1 %54, label %if.then.i, label %copy_to_user.exit, !dbg !1073

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %55 = load i8*, i8** %to.addr.i, align 8, !dbg !1074
  %56 = load i8*, i8** %from.addr.i, align 8, !dbg !1075
  %57 = load i64, i64* %n.addr.i, align 8, !dbg !1076
  %call2.i = call i64 @_copy_to_user(i8* %55, i8* %56, i64 %57) #8, !dbg !1077
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !1078
  br label %copy_to_user.exit, !dbg !1079

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %58 = load i64, i64* %n.addr.i, align 8, !dbg !1080
  %tobool = icmp ne i64 %58, 0, !dbg !1081
  br i1 %tobool, label %if.then29, label %if.end30, !dbg !1082

if.then29:                                        ; preds = %copy_to_user.exit
  store i64 -14, i64* %retval, align 8, !dbg !1083
  br label %return, !dbg !1083

if.end30:                                         ; preds = %copy_to_user.exit
  %59 = load i64, i64* %split, align 8, !dbg !1084
  %60 = load i8*, i8** %buf.addr, align 8, !dbg !1085
  %add.ptr31 = getelementptr i8, i8* %60, i64 %59, !dbg !1085
  store i8* %add.ptr31, i8** %buf.addr, align 8, !dbg !1085
  %61 = load i64, i64* %split, align 8, !dbg !1086
  %62 = load i64, i64* %todo, align 8, !dbg !1087
  %sub32 = sub i64 %62, %61, !dbg !1087
  store i64 %sub32, i64* %todo, align 8, !dbg !1087
  store i64 0, i64* %idx.addr, align 8, !dbg !1088
  br label %if.end33, !dbg !1089

if.end33:                                         ; preds = %if.end30, %cond.end
  %63 = load i8*, i8** %buf.addr, align 8, !dbg !1090
  %64 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1091
  %data34 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %64, i32 0, i32 0, !dbg !1092
  %65 = load i8*, i8** %data34, align 8, !dbg !1092
  %66 = load i64, i64* %idx.addr, align 8, !dbg !1093
  %add.ptr35 = getelementptr i8, i8* %65, i64 %66, !dbg !1094
  %67 = load i64, i64* %todo, align 8, !dbg !1095
  store i8* %63, i8** %to.addr.i47, align 8
  store i8* %add.ptr35, i8** %from.addr.i48, align 8
  store i64 %67, i64* %n.addr.i49, align 8
  %68 = load i8*, i8** %from.addr.i48, align 8, !dbg !1096
  %69 = load i64, i64* %n.addr.i49, align 8, !dbg !1096
  store i8* %68, i8** %addr.addr.i.i41, align 8
  store i64 %69, i64* %bytes.addr.i.i42, align 8
  store i8 1, i8* %is_source.addr.i.i43, align 1
  store i32 -1, i32* %sz.i.i44, align 4, !dbg !949
  %70 = load i32, i32* %sz.i.i44, align 4, !dbg !1097
  %cmp.i.i50 = icmp sge i32 %70, 0, !dbg !1097
  br i1 %cmp.i.i50, label %land.rhs.i.i53, label %land.end.i.i57, !dbg !1097

land.rhs.i.i53:                                   ; preds = %if.end33
  %71 = load i32, i32* %sz.i.i44, align 4, !dbg !1097
  %conv.i.i51 = sext i32 %71 to i64, !dbg !1097
  %72 = load i64, i64* %bytes.addr.i.i42, align 8, !dbg !1097
  %cmp1.i.i52 = icmp ult i64 %conv.i.i51, %72, !dbg !1097
  br label %land.end.i.i57

land.end.i.i57:                                   ; preds = %land.rhs.i.i53, %if.end33
  %73 = phi i1 [ false, %if.end33 ], [ %cmp1.i.i52, %land.rhs.i.i53 ], !dbg !1098
  %lnot.i.i54 = xor i1 %73, true, !dbg !1097
  %lnot.ext.i.i55 = zext i1 %73 to i32, !dbg !1097
  %conv4.i.i56 = sext i32 %lnot.ext.i.i55 to i64, !dbg !1097
  br i1 %73, label %if.then.i.i58, label %if.end10.i.i73, !dbg !1099

if.then.i.i58:                                    ; preds = %land.end.i.i57
  %74 = load i64, i64* %bytes.addr.i.i42, align 8, !dbg !1100
  %75 = call i1 @llvm.is.constant.i64(i64 %74) #5, !dbg !1101
  br i1 %75, label %if.else.i.i61, label %if.then5.i.i59, !dbg !1102

if.then5.i.i59:                                   ; preds = %if.then.i.i58
  %76 = load i32, i32* %sz.i.i44, align 4, !dbg !1103
  %77 = load i64, i64* %bytes.addr.i.i42, align 8, !dbg !1104
  call void @copy_overflow(i32 %76, i64 %77) #8, !dbg !1105
  br label %if.end9.i.i65, !dbg !1105

if.else.i.i61:                                    ; preds = %if.then.i.i58
  %78 = load i8, i8* %is_source.addr.i.i43, align 1, !dbg !1106
  %tobool6.i.i60 = trunc i8 %78 to i1, !dbg !1106
  br i1 %tobool6.i.i60, label %if.then7.i.i62, label %if.else8.i.i63, !dbg !1107

if.then7.i.i62:                                   ; preds = %if.else.i.i61
  call void @__bad_copy_from() #8, !dbg !1108
  br label %if.end.i.i64, !dbg !1108

if.else8.i.i63:                                   ; preds = %if.else.i.i61
  call void @__bad_copy_to() #8, !dbg !1109
  br label %if.end.i.i64

if.end.i.i64:                                     ; preds = %if.else8.i.i63, %if.then7.i.i62
  br label %if.end9.i.i65

if.end9.i.i65:                                    ; preds = %if.end.i.i64, %if.then5.i.i59
  store i1 false, i1* %retval.i.i40, align 1, !dbg !1110
  br label %check_copy_size.exit.i87, !dbg !1110

if.end10.i.i73:                                   ; preds = %land.end.i.i57
  %79 = load i64, i64* %bytes.addr.i.i42, align 8, !dbg !950
  %cmp11.i.i66 = icmp ugt i64 %79, 2147483647, !dbg !950
  %lnot13.i.i67 = xor i1 %cmp11.i.i66, true, !dbg !950
  %lnot.ext16.i.i68 = zext i1 %cmp11.i.i66 to i32, !dbg !950
  store i32 %lnot.ext16.i.i68, i32* %__ret_warn_on.i.i45, align 4, !dbg !950
  %80 = load i32, i32* %__ret_warn_on.i.i45, align 4, !dbg !1111
  %tobool17.i.i69 = icmp ne i32 %80, 0, !dbg !1111
  %lnot18.i.i70 = xor i1 %tobool17.i.i69, true, !dbg !1111
  %lnot.ext21.i.i71 = zext i1 %tobool17.i.i69 to i32, !dbg !1111
  %conv22.i.i72 = sext i32 %lnot.ext21.i.i71 to i64, !dbg !1111
  br i1 %tobool17.i.i69, label %if.then24.i.i74, label %if.end31.i.i80, !dbg !950

if.then24.i.i74:                                  ; preds = %if.end10.i.i73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !1112, !srcloc !448
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !1113, !srcloc !451
  br label %if.end31.i.i80, !dbg !1114

if.end31.i.i80:                                   ; preds = %if.then24.i.i74, %if.end10.i.i73
  %81 = load i32, i32* %__ret_warn_on.i.i45, align 4, !dbg !950
  %tobool32.i.i75 = icmp ne i32 %81, 0, !dbg !950
  %lnot33.i.i76 = xor i1 %tobool32.i.i75, true, !dbg !950
  %lnot.ext36.i.i77 = zext i1 %tobool32.i.i75 to i32, !dbg !950
  %conv37.i.i78 = sext i32 %lnot.ext36.i.i77 to i64, !dbg !950
  store i64 %conv37.i.i78, i64* %tmp.i.i46, align 8, !dbg !1111
  %82 = load i64, i64* %tmp.i.i46, align 8, !dbg !950
  %tobool38.i.i79 = icmp ne i64 %82, 0, !dbg !1115
  br i1 %tobool38.i.i79, label %if.then39.i.i81, label %if.end40.i.i83, !dbg !1116

if.then39.i.i81:                                  ; preds = %if.end31.i.i80
  store i1 false, i1* %retval.i.i40, align 1, !dbg !1117
  br label %check_copy_size.exit.i87, !dbg !1117

if.end40.i.i83:                                   ; preds = %if.end31.i.i80
  %83 = load i8*, i8** %addr.addr.i.i41, align 8, !dbg !1118
  %84 = load i64, i64* %bytes.addr.i.i42, align 8, !dbg !1119
  %85 = load i8, i8* %is_source.addr.i.i43, align 1, !dbg !1120
  %tobool41.i.i82 = trunc i8 %85 to i1, !dbg !1120
  call void @check_object_size(i8* %83, i64 %84, i1 zeroext %tobool41.i.i82) #8, !dbg !1121
  store i1 true, i1* %retval.i.i40, align 1, !dbg !1122
  br label %check_copy_size.exit.i87, !dbg !1122

check_copy_size.exit.i87:                         ; preds = %if.end40.i.i83, %if.then39.i.i81, %if.end9.i.i65
  %86 = load i1, i1* %retval.i.i40, align 1, !dbg !1123
  %lnot.i84 = xor i1 %86, true, !dbg !1096
  %lnot.ext.i85 = zext i1 %86 to i32, !dbg !1096
  %conv.i86 = sext i32 %lnot.ext.i85 to i64, !dbg !1096
  br i1 %86, label %if.then.i89, label %copy_to_user.exit90, !dbg !1124

if.then.i89:                                      ; preds = %check_copy_size.exit.i87
  %87 = load i8*, i8** %to.addr.i47, align 8, !dbg !1125
  %88 = load i8*, i8** %from.addr.i48, align 8, !dbg !1126
  %89 = load i64, i64* %n.addr.i49, align 8, !dbg !1127
  %call2.i88 = call i64 @_copy_to_user(i8* %87, i8* %88, i64 %89) #8, !dbg !1128
  store i64 %call2.i88, i64* %n.addr.i49, align 8, !dbg !1129
  br label %copy_to_user.exit90, !dbg !1130

copy_to_user.exit90:                              ; preds = %check_copy_size.exit.i87, %if.then.i89
  %90 = load i64, i64* %n.addr.i49, align 8, !dbg !1131
  %tobool37 = icmp ne i64 %90, 0, !dbg !1132
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !1133

if.then38:                                        ; preds = %copy_to_user.exit90
  store i64 -14, i64* %retval, align 8, !dbg !1134
  br label %return, !dbg !1134

if.end39:                                         ; preds = %copy_to_user.exit90
  %91 = load i64, i64* %len.addr, align 8, !dbg !1135
  store i64 %91, i64* %retval, align 8, !dbg !1136
  br label %return, !dbg !1136

return:                                           ; preds = %if.end39, %if.then38, %if.then29, %if.then
  %92 = load i64, i64* %retval, align 8, !dbg !1137
  ret i64 %92, !dbg !1137
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dvb_ringbuffer_pkt_read(%struct.dvb_ringbuffer* %rbuf, i64 %idx, i32 %offset, i8* %buf, i64 %len) #0 !dbg !1138 {
entry:
  %retval = alloca i64, align 8
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %idx.addr = alloca i64, align 8
  %offset.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %todo = alloca i64, align 8
  %split = alloca i64, align 8
  %pktlen = alloca i64, align 8
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !1139, metadata !DIExpression()), !dbg !1140
  store i64 %idx, i64* %idx.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %idx.addr, metadata !1141, metadata !DIExpression()), !dbg !1142
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !1143, metadata !DIExpression()), !dbg !1144
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !1145, metadata !DIExpression()), !dbg !1146
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !1147, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.declare(metadata i64* %todo, metadata !1149, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.declare(metadata i64* %split, metadata !1151, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.declare(metadata i64* %pktlen, metadata !1153, metadata !DIExpression()), !dbg !1154
  %0 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1155
  %data = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %0, i32 0, i32 0, !dbg !1156
  %1 = load i8*, i8** %data, align 8, !dbg !1156
  %2 = load i64, i64* %idx.addr, align 8, !dbg !1157
  %arrayidx = getelementptr i8, i8* %1, i64 %2, !dbg !1155
  %3 = load i8, i8* %arrayidx, align 1, !dbg !1155
  %conv = zext i8 %3 to i32, !dbg !1155
  %shl = shl i32 %conv, 8, !dbg !1158
  %conv1 = sext i32 %shl to i64, !dbg !1155
  store i64 %conv1, i64* %pktlen, align 8, !dbg !1159
  %4 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1160
  %data2 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %4, i32 0, i32 0, !dbg !1161
  %5 = load i8*, i8** %data2, align 8, !dbg !1161
  %6 = load i64, i64* %idx.addr, align 8, !dbg !1162
  %add = add i64 %6, 1, !dbg !1163
  %7 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1164
  %size = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %7, i32 0, i32 1, !dbg !1165
  %8 = load i64, i64* %size, align 8, !dbg !1165
  %rem = urem i64 %add, %8, !dbg !1166
  %arrayidx3 = getelementptr i8, i8* %5, i64 %rem, !dbg !1160
  %9 = load i8, i8* %arrayidx3, align 1, !dbg !1160
  %conv4 = zext i8 %9 to i64, !dbg !1160
  %10 = load i64, i64* %pktlen, align 8, !dbg !1167
  %or = or i64 %10, %conv4, !dbg !1167
  store i64 %or, i64* %pktlen, align 8, !dbg !1167
  %11 = load i32, i32* %offset.addr, align 4, !dbg !1168
  %conv5 = sext i32 %11 to i64, !dbg !1168
  %12 = load i64, i64* %pktlen, align 8, !dbg !1170
  %cmp = icmp ugt i64 %conv5, %12, !dbg !1171
  br i1 %cmp, label %if.then, label %if.end, !dbg !1172

if.then:                                          ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !1173
  br label %return, !dbg !1173

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %offset.addr, align 4, !dbg !1174
  %conv7 = sext i32 %13 to i64, !dbg !1174
  %14 = load i64, i64* %len.addr, align 8, !dbg !1176
  %add8 = add i64 %conv7, %14, !dbg !1177
  %15 = load i64, i64* %pktlen, align 8, !dbg !1178
  %cmp9 = icmp ugt i64 %add8, %15, !dbg !1179
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !1180

if.then11:                                        ; preds = %if.end
  %16 = load i64, i64* %pktlen, align 8, !dbg !1181
  %17 = load i32, i32* %offset.addr, align 4, !dbg !1182
  %conv12 = sext i32 %17 to i64, !dbg !1182
  %sub = sub i64 %16, %conv12, !dbg !1183
  store i64 %sub, i64* %len.addr, align 8, !dbg !1184
  br label %if.end13, !dbg !1185

if.end13:                                         ; preds = %if.then11, %if.end
  %18 = load i64, i64* %idx.addr, align 8, !dbg !1186
  %add14 = add i64 %18, 3, !dbg !1187
  %19 = load i32, i32* %offset.addr, align 4, !dbg !1188
  %conv15 = sext i32 %19 to i64, !dbg !1188
  %add16 = add i64 %add14, %conv15, !dbg !1189
  %20 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1190
  %size17 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %20, i32 0, i32 1, !dbg !1191
  %21 = load i64, i64* %size17, align 8, !dbg !1191
  %rem18 = urem i64 %add16, %21, !dbg !1192
  store i64 %rem18, i64* %idx.addr, align 8, !dbg !1193
  %22 = load i64, i64* %len.addr, align 8, !dbg !1194
  store i64 %22, i64* %todo, align 8, !dbg !1195
  %23 = load i64, i64* %idx.addr, align 8, !dbg !1196
  %24 = load i64, i64* %len.addr, align 8, !dbg !1197
  %add19 = add i64 %23, %24, !dbg !1198
  %25 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1199
  %size20 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %25, i32 0, i32 1, !dbg !1200
  %26 = load i64, i64* %size20, align 8, !dbg !1200
  %cmp21 = icmp ugt i64 %add19, %26, !dbg !1201
  br i1 %cmp21, label %cond.true, label %cond.false, !dbg !1202

cond.true:                                        ; preds = %if.end13
  %27 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1203
  %size23 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %27, i32 0, i32 1, !dbg !1204
  %28 = load i64, i64* %size23, align 8, !dbg !1204
  %29 = load i64, i64* %idx.addr, align 8, !dbg !1205
  %sub24 = sub i64 %28, %29, !dbg !1206
  br label %cond.end, !dbg !1202

cond.false:                                       ; preds = %if.end13
  br label %cond.end, !dbg !1202

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub24, %cond.true ], [ 0, %cond.false ], !dbg !1202
  store i64 %cond, i64* %split, align 8, !dbg !1207
  %30 = load i64, i64* %split, align 8, !dbg !1208
  %cmp25 = icmp ugt i64 %30, 0, !dbg !1210
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !1211

if.then27:                                        ; preds = %cond.end
  %31 = load i8*, i8** %buf.addr, align 8, !dbg !1212
  %32 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1214
  %data28 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %32, i32 0, i32 0, !dbg !1215
  %33 = load i8*, i8** %data28, align 8, !dbg !1215
  %34 = load i64, i64* %idx.addr, align 8, !dbg !1216
  %add.ptr = getelementptr i8, i8* %33, i64 %34, !dbg !1217
  %35 = load i64, i64* %split, align 8, !dbg !1218
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %add.ptr, i64 %35, i1 false), !dbg !1219
  %36 = load i64, i64* %split, align 8, !dbg !1220
  %37 = load i8*, i8** %buf.addr, align 8, !dbg !1221
  %add.ptr29 = getelementptr i8, i8* %37, i64 %36, !dbg !1221
  store i8* %add.ptr29, i8** %buf.addr, align 8, !dbg !1221
  %38 = load i64, i64* %split, align 8, !dbg !1222
  %39 = load i64, i64* %todo, align 8, !dbg !1223
  %sub30 = sub i64 %39, %38, !dbg !1223
  store i64 %sub30, i64* %todo, align 8, !dbg !1223
  store i64 0, i64* %idx.addr, align 8, !dbg !1224
  br label %if.end31, !dbg !1225

if.end31:                                         ; preds = %if.then27, %cond.end
  %40 = load i8*, i8** %buf.addr, align 8, !dbg !1226
  %41 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1227
  %data32 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %41, i32 0, i32 0, !dbg !1228
  %42 = load i8*, i8** %data32, align 8, !dbg !1228
  %43 = load i64, i64* %idx.addr, align 8, !dbg !1229
  %add.ptr33 = getelementptr i8, i8* %42, i64 %43, !dbg !1230
  %44 = load i64, i64* %todo, align 8, !dbg !1231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 1 %add.ptr33, i64 %44, i1 false), !dbg !1232
  %45 = load i64, i64* %len.addr, align 8, !dbg !1233
  store i64 %45, i64* %retval, align 8, !dbg !1234
  br label %return, !dbg !1234

return:                                           ; preds = %if.end31, %if.then
  %46 = load i64, i64* %retval, align 8, !dbg !1235
  ret i64 %46, !dbg !1235
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dvb_ringbuffer_pkt_dispose(%struct.dvb_ringbuffer* %rbuf, i64 %idx) #0 !dbg !1236 {
entry:
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %idx.addr = alloca i64, align 8
  %pktlen = alloca i64, align 8
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !1239, metadata !DIExpression()), !dbg !1240
  store i64 %idx, i64* %idx.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %idx.addr, metadata !1241, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.declare(metadata i64* %pktlen, metadata !1243, metadata !DIExpression()), !dbg !1244
  %0 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1245
  %data = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %0, i32 0, i32 0, !dbg !1246
  %1 = load i8*, i8** %data, align 8, !dbg !1246
  %2 = load i64, i64* %idx.addr, align 8, !dbg !1247
  %add = add i64 %2, 2, !dbg !1248
  %3 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1249
  %size = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %3, i32 0, i32 1, !dbg !1250
  %4 = load i64, i64* %size, align 8, !dbg !1250
  %rem = urem i64 %add, %4, !dbg !1251
  %arrayidx = getelementptr i8, i8* %1, i64 %rem, !dbg !1245
  store i8 1, i8* %arrayidx, align 1, !dbg !1252
  br label %while.cond, !dbg !1253

while.cond:                                       ; preds = %if.end, %entry
  %5 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1254
  %call = call i64 @dvb_ringbuffer_avail(%struct.dvb_ringbuffer* %5) #7, !dbg !1255
  %cmp = icmp sgt i64 %call, 3, !dbg !1256
  br i1 %cmp, label %while.body, label %while.end, !dbg !1253

while.body:                                       ; preds = %while.cond
  %6 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1257
  %data1 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %6, i32 0, i32 0, !dbg !1257
  %7 = load i8*, i8** %data1, align 8, !dbg !1257
  %8 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1257
  %pread = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %8, i32 0, i32 2, !dbg !1257
  %9 = load i64, i64* %pread, align 8, !dbg !1257
  %add2 = add i64 %9, 2, !dbg !1257
  %10 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1257
  %size3 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %10, i32 0, i32 1, !dbg !1257
  %11 = load i64, i64* %size3, align 8, !dbg !1257
  %rem4 = srem i64 %add2, %11, !dbg !1257
  %arrayidx5 = getelementptr i8, i8* %7, i64 %rem4, !dbg !1257
  %12 = load i8, i8* %arrayidx5, align 1, !dbg !1257
  %conv = zext i8 %12 to i32, !dbg !1257
  %cmp6 = icmp eq i32 %conv, 1, !dbg !1260
  br i1 %cmp6, label %if.then, label %if.else, !dbg !1261

if.then:                                          ; preds = %while.body
  %13 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1262
  %data8 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %13, i32 0, i32 0, !dbg !1262
  %14 = load i8*, i8** %data8, align 8, !dbg !1262
  %15 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1262
  %pread9 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %15, i32 0, i32 2, !dbg !1262
  %16 = load i64, i64* %pread9, align 8, !dbg !1262
  %add10 = add i64 %16, 0, !dbg !1262
  %17 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1262
  %size11 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %17, i32 0, i32 1, !dbg !1262
  %18 = load i64, i64* %size11, align 8, !dbg !1262
  %rem12 = srem i64 %add10, %18, !dbg !1262
  %arrayidx13 = getelementptr i8, i8* %14, i64 %rem12, !dbg !1262
  %19 = load i8, i8* %arrayidx13, align 1, !dbg !1262
  %conv14 = zext i8 %19 to i32, !dbg !1262
  %shl = shl i32 %conv14, 8, !dbg !1264
  %conv15 = sext i32 %shl to i64, !dbg !1262
  store i64 %conv15, i64* %pktlen, align 8, !dbg !1265
  %20 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1266
  %data16 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %20, i32 0, i32 0, !dbg !1266
  %21 = load i8*, i8** %data16, align 8, !dbg !1266
  %22 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1266
  %pread17 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %22, i32 0, i32 2, !dbg !1266
  %23 = load i64, i64* %pread17, align 8, !dbg !1266
  %add18 = add i64 %23, 1, !dbg !1266
  %24 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1266
  %size19 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %24, i32 0, i32 1, !dbg !1266
  %25 = load i64, i64* %size19, align 8, !dbg !1266
  %rem20 = srem i64 %add18, %25, !dbg !1266
  %arrayidx21 = getelementptr i8, i8* %21, i64 %rem20, !dbg !1266
  %26 = load i8, i8* %arrayidx21, align 1, !dbg !1266
  %conv22 = zext i8 %26 to i64, !dbg !1266
  %27 = load i64, i64* %pktlen, align 8, !dbg !1267
  %or = or i64 %27, %conv22, !dbg !1267
  store i64 %or, i64* %pktlen, align 8, !dbg !1267
  %28 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1268
  %pread23 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %28, i32 0, i32 2, !dbg !1268
  %29 = load i64, i64* %pread23, align 8, !dbg !1268
  %30 = load i64, i64* %pktlen, align 8, !dbg !1268
  %add24 = add i64 %30, 3, !dbg !1268
  %add25 = add i64 %29, %add24, !dbg !1268
  %31 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1268
  %size26 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %31, i32 0, i32 1, !dbg !1268
  %32 = load i64, i64* %size26, align 8, !dbg !1268
  %rem27 = urem i64 %add25, %32, !dbg !1268
  %33 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1268
  %pread28 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %33, i32 0, i32 2, !dbg !1268
  store i64 %rem27, i64* %pread28, align 8, !dbg !1268
  br label %if.end, !dbg !1270

if.else:                                          ; preds = %while.body
  br label %while.end, !dbg !1271

if.end:                                           ; preds = %if.then
  br label %while.cond, !dbg !1253, !llvm.loop !1273

while.end:                                        ; preds = %if.else, %while.cond
  ret void, !dbg !1275
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dvb_ringbuffer_pkt_next(%struct.dvb_ringbuffer* %rbuf, i64 %idx, i64* %pktlen) #0 !dbg !1276 {
entry:
  %retval = alloca i64, align 8
  %rbuf.addr = alloca %struct.dvb_ringbuffer*, align 8
  %idx.addr = alloca i64, align 8
  %pktlen.addr = alloca i64*, align 8
  %consumed = alloca i32, align 4
  %curpktlen = alloca i32, align 4
  %curpktstatus = alloca i32, align 4
  store %struct.dvb_ringbuffer* %rbuf, %struct.dvb_ringbuffer** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_ringbuffer** %rbuf.addr, metadata !1280, metadata !DIExpression()), !dbg !1281
  store i64 %idx, i64* %idx.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %idx.addr, metadata !1282, metadata !DIExpression()), !dbg !1283
  store i64* %pktlen, i64** %pktlen.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %pktlen.addr, metadata !1284, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.declare(metadata i32* %consumed, metadata !1286, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.declare(metadata i32* %curpktlen, metadata !1288, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.declare(metadata i32* %curpktstatus, metadata !1290, metadata !DIExpression()), !dbg !1291
  %0 = load i64, i64* %idx.addr, align 8, !dbg !1292
  %cmp = icmp eq i64 %0, -1, !dbg !1294
  br i1 %cmp, label %if.then, label %if.else, !dbg !1295

if.then:                                          ; preds = %entry
  %1 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1296
  %pread = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %1, i32 0, i32 2, !dbg !1298
  %2 = load i64, i64* %pread, align 8, !dbg !1298
  store i64 %2, i64* %idx.addr, align 8, !dbg !1299
  br label %if.end, !dbg !1300

if.else:                                          ; preds = %entry
  %3 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1301
  %data = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %3, i32 0, i32 0, !dbg !1303
  %4 = load i8*, i8** %data, align 8, !dbg !1303
  %5 = load i64, i64* %idx.addr, align 8, !dbg !1304
  %arrayidx = getelementptr i8, i8* %4, i64 %5, !dbg !1301
  %6 = load i8, i8* %arrayidx, align 1, !dbg !1301
  %conv = zext i8 %6 to i32, !dbg !1301
  %shl = shl i32 %conv, 8, !dbg !1305
  store i32 %shl, i32* %curpktlen, align 4, !dbg !1306
  %7 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1307
  %data1 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %7, i32 0, i32 0, !dbg !1308
  %8 = load i8*, i8** %data1, align 8, !dbg !1308
  %9 = load i64, i64* %idx.addr, align 8, !dbg !1309
  %add = add i64 %9, 1, !dbg !1310
  %10 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1311
  %size = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %10, i32 0, i32 1, !dbg !1312
  %11 = load i64, i64* %size, align 8, !dbg !1312
  %rem = urem i64 %add, %11, !dbg !1313
  %arrayidx2 = getelementptr i8, i8* %8, i64 %rem, !dbg !1307
  %12 = load i8, i8* %arrayidx2, align 1, !dbg !1307
  %conv3 = zext i8 %12 to i32, !dbg !1307
  %13 = load i32, i32* %curpktlen, align 4, !dbg !1314
  %or = or i32 %13, %conv3, !dbg !1314
  store i32 %or, i32* %curpktlen, align 4, !dbg !1314
  %14 = load i64, i64* %idx.addr, align 8, !dbg !1315
  %15 = load i32, i32* %curpktlen, align 4, !dbg !1316
  %conv4 = sext i32 %15 to i64, !dbg !1316
  %add5 = add i64 %14, %conv4, !dbg !1317
  %add6 = add i64 %add5, 3, !dbg !1318
  %16 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1319
  %size7 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %16, i32 0, i32 1, !dbg !1320
  %17 = load i64, i64* %size7, align 8, !dbg !1320
  %rem8 = urem i64 %add6, %17, !dbg !1321
  store i64 %rem8, i64* %idx.addr, align 8, !dbg !1322
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i64, i64* %idx.addr, align 8, !dbg !1323
  %19 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1324
  %pread9 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %19, i32 0, i32 2, !dbg !1325
  %20 = load i64, i64* %pread9, align 8, !dbg !1325
  %sub = sub i64 %18, %20, !dbg !1326
  %21 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1327
  %size10 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %21, i32 0, i32 1, !dbg !1328
  %22 = load i64, i64* %size10, align 8, !dbg !1328
  %rem11 = urem i64 %sub, %22, !dbg !1329
  %conv12 = trunc i64 %rem11 to i32, !dbg !1330
  store i32 %conv12, i32* %consumed, align 4, !dbg !1331
  br label %while.cond, !dbg !1332

while.cond:                                       ; preds = %if.end38, %if.end
  %23 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1333
  %call = call i64 @dvb_ringbuffer_avail(%struct.dvb_ringbuffer* %23) #7, !dbg !1334
  %24 = load i32, i32* %consumed, align 4, !dbg !1335
  %conv13 = sext i32 %24 to i64, !dbg !1335
  %sub14 = sub i64 %call, %conv13, !dbg !1336
  %cmp15 = icmp sgt i64 %sub14, 3, !dbg !1337
  br i1 %cmp15, label %while.body, label %while.end, !dbg !1332

while.body:                                       ; preds = %while.cond
  %25 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1338
  %data17 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %25, i32 0, i32 0, !dbg !1340
  %26 = load i8*, i8** %data17, align 8, !dbg !1340
  %27 = load i64, i64* %idx.addr, align 8, !dbg !1341
  %arrayidx18 = getelementptr i8, i8* %26, i64 %27, !dbg !1338
  %28 = load i8, i8* %arrayidx18, align 1, !dbg !1338
  %conv19 = zext i8 %28 to i32, !dbg !1338
  %shl20 = shl i32 %conv19, 8, !dbg !1342
  store i32 %shl20, i32* %curpktlen, align 4, !dbg !1343
  %29 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1344
  %data21 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %29, i32 0, i32 0, !dbg !1345
  %30 = load i8*, i8** %data21, align 8, !dbg !1345
  %31 = load i64, i64* %idx.addr, align 8, !dbg !1346
  %add22 = add i64 %31, 1, !dbg !1347
  %32 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1348
  %size23 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %32, i32 0, i32 1, !dbg !1349
  %33 = load i64, i64* %size23, align 8, !dbg !1349
  %rem24 = urem i64 %add22, %33, !dbg !1350
  %arrayidx25 = getelementptr i8, i8* %30, i64 %rem24, !dbg !1344
  %34 = load i8, i8* %arrayidx25, align 1, !dbg !1344
  %conv26 = zext i8 %34 to i32, !dbg !1344
  %35 = load i32, i32* %curpktlen, align 4, !dbg !1351
  %or27 = or i32 %35, %conv26, !dbg !1351
  store i32 %or27, i32* %curpktlen, align 4, !dbg !1351
  %36 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1352
  %data28 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %36, i32 0, i32 0, !dbg !1353
  %37 = load i8*, i8** %data28, align 8, !dbg !1353
  %38 = load i64, i64* %idx.addr, align 8, !dbg !1354
  %add29 = add i64 %38, 2, !dbg !1355
  %39 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1356
  %size30 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %39, i32 0, i32 1, !dbg !1357
  %40 = load i64, i64* %size30, align 8, !dbg !1357
  %rem31 = urem i64 %add29, %40, !dbg !1358
  %arrayidx32 = getelementptr i8, i8* %37, i64 %rem31, !dbg !1352
  %41 = load i8, i8* %arrayidx32, align 1, !dbg !1352
  %conv33 = zext i8 %41 to i32, !dbg !1352
  store i32 %conv33, i32* %curpktstatus, align 4, !dbg !1359
  %42 = load i32, i32* %curpktstatus, align 4, !dbg !1360
  %cmp34 = icmp eq i32 %42, 0, !dbg !1362
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !1363

if.then36:                                        ; preds = %while.body
  %43 = load i32, i32* %curpktlen, align 4, !dbg !1364
  %conv37 = sext i32 %43 to i64, !dbg !1364
  %44 = load i64*, i64** %pktlen.addr, align 8, !dbg !1366
  store i64 %conv37, i64* %44, align 8, !dbg !1367
  %45 = load i64, i64* %idx.addr, align 8, !dbg !1368
  store i64 %45, i64* %retval, align 8, !dbg !1369
  br label %return, !dbg !1369

if.end38:                                         ; preds = %while.body
  %46 = load i32, i32* %curpktlen, align 4, !dbg !1370
  %add39 = add i32 %46, 3, !dbg !1371
  %47 = load i32, i32* %consumed, align 4, !dbg !1372
  %add40 = add i32 %47, %add39, !dbg !1372
  store i32 %add40, i32* %consumed, align 4, !dbg !1372
  %48 = load i64, i64* %idx.addr, align 8, !dbg !1373
  %49 = load i32, i32* %curpktlen, align 4, !dbg !1374
  %conv41 = sext i32 %49 to i64, !dbg !1374
  %add42 = add i64 %48, %conv41, !dbg !1375
  %add43 = add i64 %add42, 3, !dbg !1376
  %50 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %rbuf.addr, align 8, !dbg !1377
  %size44 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %50, i32 0, i32 1, !dbg !1378
  %51 = load i64, i64* %size44, align 8, !dbg !1378
  %rem45 = urem i64 %add43, %51, !dbg !1379
  store i64 %rem45, i64* %idx.addr, align 8, !dbg !1380
  br label %while.cond, !dbg !1332, !llvm.loop !1381

while.end:                                        ; preds = %while.cond
  store i64 -1, i64* %retval, align 8, !dbg !1383
  br label %return, !dbg !1383

return:                                           ; preds = %while.end, %if.then36
  %52 = load i64, i64* %retval, align 8, !dbg !1384
  ret i64 %52, !dbg !1384
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1385 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1386, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1389, metadata !DIExpression()), !dbg !1388
  %0 = load i64, i64* %__edi, align 8, !dbg !1388
  store i64 %0, i64* %__edi, align 8, !dbg !1388
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1390, metadata !DIExpression()), !dbg !1388
  %1 = load i64, i64* %__esi, align 8, !dbg !1388
  store i64 %1, i64* %__esi, align 8, !dbg !1388
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1391, metadata !DIExpression()), !dbg !1388
  %2 = load i64, i64* %__edx, align 8, !dbg !1388
  store i64 %2, i64* %__edx, align 8, !dbg !1388
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1392, metadata !DIExpression()), !dbg !1388
  %3 = load i64, i64* %__ecx, align 8, !dbg !1388
  store i64 %3, i64* %__ecx, align 8, !dbg !1388
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1393, metadata !DIExpression()), !dbg !1388
  %4 = load i64, i64* %__eax, align 8, !dbg !1388
  store i64 %4, i64* %__eax, align 8, !dbg !1388
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1388
  %6 = call i64 @llvm.read_register.i64(metadata !78), !dbg !1394
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !1394, !srcloc !1397
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1394
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1394
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1394
  call void @llvm.write_register.i64(metadata !78, i64 %asmresult1), !dbg !1394
  %8 = load i64, i64* %__eax, align 8, !dbg !1394
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1398, metadata !DIExpression()), !dbg !1400
  store i64 -1, i64* %__mask, align 8, !dbg !1400
  %9 = load i64, i64* %__mask, align 8, !dbg !1400
  store i64 %9, i64* %tmp, align 8, !dbg !1400
  %10 = load i64, i64* %tmp, align 8, !dbg !1400
  %and = and i64 %8, %10, !dbg !1394
  store i64 %and, i64* %__ret, align 8, !dbg !1394
  %11 = load i64, i64* %__ret, align 8, !dbg !1388
  store i64 %11, i64* %tmp2, align 8, !dbg !1401
  %12 = load i64, i64* %tmp2, align 8, !dbg !1388
  ret i64 %12, !dbg !1402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !1403 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1406, metadata !DIExpression()), !dbg !1408
  %0 = load i64, i64* %__edi, align 8, !dbg !1408
  store i64 %0, i64* %__edi, align 8, !dbg !1408
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1409, metadata !DIExpression()), !dbg !1408
  %1 = load i64, i64* %__esi, align 8, !dbg !1408
  store i64 %1, i64* %__esi, align 8, !dbg !1408
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1410, metadata !DIExpression()), !dbg !1408
  %2 = load i64, i64* %__edx, align 8, !dbg !1408
  store i64 %2, i64* %__edx, align 8, !dbg !1408
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1411, metadata !DIExpression()), !dbg !1408
  %3 = load i64, i64* %__ecx, align 8, !dbg !1408
  store i64 %3, i64* %__ecx, align 8, !dbg !1408
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1412, metadata !DIExpression()), !dbg !1408
  %4 = load i64, i64* %__eax, align 8, !dbg !1408
  store i64 %4, i64* %__eax, align 8, !dbg !1408
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !1408
  %6 = call i64 @llvm.read_register.i64(metadata !78), !dbg !1408
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !1408, !srcloc !1413
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1408
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1408
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1408
  call void @llvm.write_register.i64(metadata !78, i64 %asmresult1), !dbg !1408
  ret void, !dbg !1414
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !1415 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !1418, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1420, metadata !DIExpression()), !dbg !1422
  %0 = load i64, i64* %__edi, align 8, !dbg !1422
  store i64 %0, i64* %__edi, align 8, !dbg !1422
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1423, metadata !DIExpression()), !dbg !1422
  %1 = load i64, i64* %__esi, align 8, !dbg !1422
  store i64 %1, i64* %__esi, align 8, !dbg !1422
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1424, metadata !DIExpression()), !dbg !1422
  %2 = load i64, i64* %__edx, align 8, !dbg !1422
  store i64 %2, i64* %__edx, align 8, !dbg !1422
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1425, metadata !DIExpression()), !dbg !1422
  %3 = load i64, i64* %__ecx, align 8, !dbg !1422
  store i64 %3, i64* %__ecx, align 8, !dbg !1422
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1426, metadata !DIExpression()), !dbg !1422
  %4 = load i64, i64* %__eax, align 8, !dbg !1422
  store i64 %4, i64* %__eax, align 8, !dbg !1422
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !1422
  %6 = call i64 @llvm.read_register.i64(metadata !78), !dbg !1422
  %7 = load i64, i64* %f.addr, align 8, !dbg !1422
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !1422, !srcloc !1427
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !1422
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !1422
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1422
  call void @llvm.write_register.i64(metadata !78, i64 %asmresult1), !dbg !1422
  ret void, !dbg !1428
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !1429 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1432, metadata !DIExpression()), !dbg !1433
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !1434, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !1436, metadata !DIExpression()), !dbg !1438
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !1438
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !1439
  %tobool = icmp ne i32 %0, 0, !dbg !1439
  %lnot = xor i1 %tobool, true, !dbg !1439
  %lnot1 = xor i1 %lnot, true, !dbg !1439
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1439
  %conv = sext i32 %lnot.ext to i64, !dbg !1439
  %tobool2 = icmp ne i64 %conv, 0, !dbg !1439
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1438

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1439

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !1441

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !1443

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !1441
  %2 = load i64, i64* %count.addr, align 8, !dbg !1441
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %1, i64 %2) #7, !dbg !1441
  br label %do.body4, !dbg !1441

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !1445

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1447

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !1445

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 134, i32 2313, i64 12) #5, !dbg !1449, !srcloc !1451
  br label %do.end8, !dbg !1449

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #5, !dbg !1452, !srcloc !1454
  br label %do.body9, !dbg !1445

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !1455

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !1445

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !1441

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !1457

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !1441

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !1441

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !1438
  %tobool15 = icmp ne i32 %3, 0, !dbg !1438
  %lnot16 = xor i1 %tobool15, true, !dbg !1438
  %lnot18 = xor i1 %lnot16, true, !dbg !1438
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !1438
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !1438
  store i64 %conv20, i64* %tmp, align 8, !dbg !1439
  %4 = load i64, i64* %tmp, align 8, !dbg !1438
  ret void, !dbg !1459
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #2

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !1460 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1463, metadata !DIExpression()), !dbg !1464
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1465, metadata !DIExpression()), !dbg !1466
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !1467, metadata !DIExpression()), !dbg !1468
  ret void, !dbg !1469
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noredzone }
attributes #8 = { noredzone nounwind }

!llvm.dbg.cu = !{!61}
!llvm.named.register.rsp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 45, type: !76, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "dvb_ringbuffer_init", scope: !3, file: !3, line: 38, type: !4, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!3 = !DIFile(filename: "drivers/media/dvb-core/dvb_ringbuffer.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !56, !57}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_ringbuffer", file: !8, line: 41, size: 448, elements: !9)
!8 = !DIFile(filename: "./include/media/dvb_ringbuffer.h", directory: "/home/lizy2001/genbc/linux")
!9 = !{!10, !17, !24, !25, !26, !28, !55}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !8, line: 42, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !13, line: 17, baseType: !14)
!13 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !7, file: !8, line: 43, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !19, line: 60, baseType: !20)
!19 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !21, line: 73, baseType: !22)
!21 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !21, line: 15, baseType: !23)
!23 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "pread", scope: !7, file: !8, line: 44, baseType: !18, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "pwrite", scope: !7, file: !8, line: 45, baseType: !18, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !7, file: !8, line: 46, baseType: !27, size: 32, offset: 256)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !7, file: !8, line: 48, baseType: !29, size: 128, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !30, line: 40, baseType: !31)
!30 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !30, line: 36, size: 128, elements: !32)
!32 = !{!33, !49}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !31, file: !30, line: 37, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !35, line: 83, baseType: !36)
!35 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !35, line: 71, elements: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, scope: !36, file: !35, line: 72, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !36, file: !35, line: 72, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !39, file: !35, line: 73, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !35, line: 20, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !42, file: !35, line: 21, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !46, line: 25, baseType: !47)
!46 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 25, elements: !48)
!48 = !{}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !31, file: !30, line: 38, baseType: !50, size: 128)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !19, line: 178, size: 128, elements: !51)
!51 = !{!52, !54}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !50, file: !19, line: 179, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !50, file: !19, line: 179, baseType: !53, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !7, file: !8, line: 49, baseType: !34, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 55, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !21, line: 72, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !21, line: 16, baseType: !60)
!60 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!61 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !62, retainedTypes: !69, globals: !75, splitDebugInlining: false, nameTableKind: None)
!62 = !{!63}
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 10, baseType: !65, size: 32, elements: !66)
!64 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!69 = !{!70, !18, !73, !56, !60, !27}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!75 = !{!0}
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !77, line: 187, elements: !48)
!77 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!78 = !{!"rsp"}
!79 = !{i32 7, !"Dwarf Version", i32 4}
!80 = !{i32 2, !"Debug Info Version", i32 3}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"Code Model", i32 2}
!83 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!84 = !DILocalVariable(name: "lock", arg: 1, scope: !85, file: !86, line: 327, type: !91)
!85 = distinct !DISubprogram(name: "spinlock_check", scope: !86, file: !86, line: 327, type: !87, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !48)
!86 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!87 = !DISubroutineType(types: !88)
!88 = !{!89, !91}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !35, line: 29, baseType: !42)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!92 = !DILocation(line: 327, column: 67, scope: !85, inlinedAt: !93)
!93 = distinct !DILocation(line: 47, column: 2, scope: !94)
!94 = distinct !DILexicalBlock(scope: !2, file: !3, line: 47, column: 2)
!95 = !DILocalVariable(name: "rbuf", arg: 1, scope: !2, file: !3, line: 38, type: !6)
!96 = !DILocation(line: 38, column: 49, scope: !2)
!97 = !DILocalVariable(name: "data", arg: 2, scope: !2, file: !3, line: 38, type: !56)
!98 = !DILocation(line: 38, column: 61, scope: !2)
!99 = !DILocalVariable(name: "len", arg: 3, scope: !2, file: !3, line: 38, type: !57)
!100 = !DILocation(line: 38, column: 74, scope: !2)
!101 = !DILocation(line: 40, column: 14, scope: !2)
!102 = !DILocation(line: 40, column: 20, scope: !2)
!103 = !DILocation(line: 40, column: 26, scope: !2)
!104 = !DILocation(line: 40, column: 2, scope: !2)
!105 = !DILocation(line: 40, column: 8, scope: !2)
!106 = !DILocation(line: 40, column: 13, scope: !2)
!107 = !DILocation(line: 41, column: 13, scope: !2)
!108 = !DILocation(line: 41, column: 2, scope: !2)
!109 = !DILocation(line: 41, column: 8, scope: !2)
!110 = !DILocation(line: 41, column: 12, scope: !2)
!111 = !DILocation(line: 42, column: 13, scope: !2)
!112 = !DILocation(line: 42, column: 2, scope: !2)
!113 = !DILocation(line: 42, column: 8, scope: !2)
!114 = !DILocation(line: 42, column: 12, scope: !2)
!115 = !DILocation(line: 43, column: 2, scope: !2)
!116 = !DILocation(line: 43, column: 8, scope: !2)
!117 = !DILocation(line: 43, column: 13, scope: !2)
!118 = !DILocation(line: 45, column: 2, scope: !2)
!119 = !DILocation(line: 45, column: 2, scope: !120)
!120 = distinct !DILexicalBlock(scope: !2, file: !3, line: 45, column: 2)
!121 = !DILocation(line: 47, column: 2, scope: !2)
!122 = !DILocation(line: 47, column: 2, scope: !94)
!123 = !DILocation(line: 329, column: 10, scope: !85, inlinedAt: !93)
!124 = !DILocation(line: 329, column: 16, scope: !85, inlinedAt: !93)
!125 = !DILocation(line: 48, column: 1, scope: !2)
!126 = distinct !DISubprogram(name: "dvb_ringbuffer_empty", scope: !3, file: !3, line: 52, type: !127, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!127 = !DISubroutineType(types: !128)
!128 = !{!27, !6}
!129 = !DILocalVariable(name: "rbuf", arg: 1, scope: !126, file: !3, line: 52, type: !6)
!130 = !DILocation(line: 52, column: 49, scope: !126)
!131 = !DILocation(line: 60, column: 10, scope: !126)
!132 = !DILocation(line: 60, column: 16, scope: !126)
!133 = !DILocalVariable(name: "___p1", scope: !134, file: !3, line: 60, type: !23)
!134 = distinct !DILexicalBlock(scope: !126, file: !3, line: 60, column: 25)
!135 = !DILocation(line: 60, column: 25, scope: !134)
!136 = !DILocation(line: 60, column: 25, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !3, line: 60, column: 25)
!138 = !DILocation(line: 60, column: 25, scope: !139)
!139 = distinct !DILexicalBlock(scope: !137, file: !3, line: 60, column: 25)
!140 = !DILocation(line: 60, column: 25, scope: !141)
!141 = distinct !DILexicalBlock(scope: !134, file: !3, line: 60, column: 25)
!142 = !{i32 -2143751367}
!143 = !DILocation(line: 60, column: 22, scope: !126)
!144 = !DILocation(line: 60, column: 2, scope: !126)
!145 = distinct !DISubprogram(name: "dvb_ringbuffer_free", scope: !3, file: !3, line: 65, type: !146, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!146 = !DISubroutineType(types: !147)
!147 = !{!18, !6}
!148 = !DILocalVariable(name: "rbuf", arg: 1, scope: !145, file: !3, line: 65, type: !6)
!149 = !DILocation(line: 65, column: 52, scope: !145)
!150 = !DILocalVariable(name: "free", scope: !145, file: !3, line: 67, type: !18)
!151 = !DILocation(line: 67, column: 10, scope: !145)
!152 = !DILocation(line: 74, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !145, file: !3, line: 74, column: 9)
!154 = !DILocation(line: 74, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !153, file: !3, line: 74, column: 9)
!156 = !DILocation(line: 74, column: 34, scope: !145)
!157 = !DILocation(line: 74, column: 40, scope: !145)
!158 = !DILocation(line: 74, column: 32, scope: !145)
!159 = !DILocation(line: 74, column: 7, scope: !145)
!160 = !DILocation(line: 75, column: 6, scope: !161)
!161 = distinct !DILexicalBlock(scope: !145, file: !3, line: 75, column: 6)
!162 = !DILocation(line: 75, column: 11, scope: !161)
!163 = !DILocation(line: 75, column: 6, scope: !145)
!164 = !DILocation(line: 76, column: 11, scope: !161)
!165 = !DILocation(line: 76, column: 17, scope: !161)
!166 = !DILocation(line: 76, column: 8, scope: !161)
!167 = !DILocation(line: 76, column: 3, scope: !161)
!168 = !DILocation(line: 77, column: 9, scope: !145)
!169 = !DILocation(line: 77, column: 13, scope: !145)
!170 = !DILocation(line: 77, column: 2, scope: !145)
!171 = distinct !DISubprogram(name: "dvb_ringbuffer_avail", scope: !3, file: !3, line: 82, type: !146, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!172 = !DILocalVariable(name: "rbuf", arg: 1, scope: !171, file: !3, line: 82, type: !6)
!173 = !DILocation(line: 82, column: 53, scope: !171)
!174 = !DILocalVariable(name: "avail", scope: !171, file: !3, line: 84, type: !18)
!175 = !DILocation(line: 84, column: 10, scope: !171)
!176 = !DILocalVariable(name: "___p1", scope: !177, file: !3, line: 90, type: !23)
!177 = distinct !DILexicalBlock(scope: !171, file: !3, line: 90, column: 10)
!178 = !DILocation(line: 90, column: 10, scope: !177)
!179 = !DILocation(line: 90, column: 10, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !3, line: 90, column: 10)
!181 = !DILocation(line: 90, column: 10, scope: !182)
!182 = distinct !DILexicalBlock(scope: !180, file: !3, line: 90, column: 10)
!183 = !DILocation(line: 90, column: 10, scope: !184)
!184 = distinct !DILexicalBlock(scope: !177, file: !3, line: 90, column: 10)
!185 = !{i32 -2143745355}
!186 = !DILocation(line: 90, column: 44, scope: !171)
!187 = !DILocation(line: 90, column: 50, scope: !171)
!188 = !DILocation(line: 90, column: 42, scope: !171)
!189 = !DILocation(line: 90, column: 8, scope: !171)
!190 = !DILocation(line: 91, column: 6, scope: !191)
!191 = distinct !DILexicalBlock(scope: !171, file: !3, line: 91, column: 6)
!192 = !DILocation(line: 91, column: 12, scope: !191)
!193 = !DILocation(line: 91, column: 6, scope: !171)
!194 = !DILocation(line: 92, column: 12, scope: !191)
!195 = !DILocation(line: 92, column: 18, scope: !191)
!196 = !DILocation(line: 92, column: 9, scope: !191)
!197 = !DILocation(line: 92, column: 3, scope: !191)
!198 = !DILocation(line: 93, column: 9, scope: !171)
!199 = !DILocation(line: 93, column: 2, scope: !171)
!200 = distinct !DISubprogram(name: "dvb_ringbuffer_flush", scope: !3, file: !3, line: 98, type: !201, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !6}
!203 = !DILocalVariable(name: "rbuf", arg: 1, scope: !200, file: !3, line: 98, type: !6)
!204 = !DILocation(line: 98, column: 50, scope: !200)
!205 = !DILocation(line: 106, column: 2, scope: !200)
!206 = !DILocation(line: 106, column: 2, scope: !207)
!207 = distinct !DILexicalBlock(scope: !200, file: !3, line: 106, column: 2)
!208 = !DILocation(line: 106, column: 2, scope: !209)
!209 = distinct !DILexicalBlock(scope: !207, file: !3, line: 106, column: 2)
!210 = !{i32 -2143739016}
!211 = !DILocation(line: 106, column: 2, scope: !212)
!212 = distinct !DILexicalBlock(scope: !207, file: !3, line: 106, column: 2)
!213 = !DILocation(line: 106, column: 2, scope: !214)
!214 = distinct !DILexicalBlock(scope: !212, file: !3, line: 106, column: 2)
!215 = !DILocalVariable(name: "___p1", scope: !216, file: !3, line: 106, type: !23)
!216 = distinct !DILexicalBlock(scope: !217, file: !3, line: 106, column: 2)
!217 = distinct !DILexicalBlock(scope: !212, file: !3, line: 106, column: 2)
!218 = !DILocation(line: 106, column: 2, scope: !216)
!219 = !DILocation(line: 106, column: 2, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !3, line: 106, column: 2)
!221 = !DILocation(line: 106, column: 2, scope: !222)
!222 = distinct !DILexicalBlock(scope: !220, file: !3, line: 106, column: 2)
!223 = !DILocation(line: 106, column: 2, scope: !224)
!224 = distinct !DILexicalBlock(scope: !216, file: !3, line: 106, column: 2)
!225 = !{i32 -2143735390}
!226 = !DILocation(line: 106, column: 2, scope: !217)
!227 = !DILocation(line: 107, column: 2, scope: !200)
!228 = !DILocation(line: 107, column: 8, scope: !200)
!229 = !DILocation(line: 107, column: 14, scope: !200)
!230 = !DILocation(line: 108, column: 1, scope: !200)
!231 = distinct !DISubprogram(name: "dvb_ringbuffer_reset", scope: !3, file: !3, line: 111, type: !201, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!232 = !DILocalVariable(name: "rbuf", arg: 1, scope: !231, file: !3, line: 111, type: !6)
!233 = !DILocation(line: 111, column: 50, scope: !231)
!234 = !DILocation(line: 116, column: 2, scope: !231)
!235 = !DILocation(line: 116, column: 2, scope: !236)
!236 = distinct !DILexicalBlock(scope: !231, file: !3, line: 116, column: 2)
!237 = !DILocation(line: 116, column: 2, scope: !238)
!238 = distinct !DILexicalBlock(scope: !236, file: !3, line: 116, column: 2)
!239 = !{i32 -2143734125}
!240 = !DILocation(line: 116, column: 2, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !3, line: 116, column: 2)
!242 = !DILocation(line: 116, column: 2, scope: !243)
!243 = distinct !DILexicalBlock(scope: !241, file: !3, line: 116, column: 2)
!244 = !DILocation(line: 116, column: 2, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !3, line: 116, column: 2)
!246 = !DILocation(line: 118, column: 2, scope: !231)
!247 = !DILocation(line: 118, column: 2, scope: !248)
!248 = distinct !DILexicalBlock(scope: !231, file: !3, line: 118, column: 2)
!249 = !DILocation(line: 118, column: 2, scope: !250)
!250 = distinct !DILexicalBlock(scope: !248, file: !3, line: 118, column: 2)
!251 = !{i32 -2143731696}
!252 = !DILocation(line: 118, column: 2, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !3, line: 118, column: 2)
!254 = !DILocation(line: 118, column: 2, scope: !255)
!255 = distinct !DILexicalBlock(scope: !253, file: !3, line: 118, column: 2)
!256 = !DILocation(line: 118, column: 2, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !3, line: 118, column: 2)
!258 = !DILocation(line: 119, column: 2, scope: !231)
!259 = !DILocation(line: 119, column: 8, scope: !231)
!260 = !DILocation(line: 119, column: 14, scope: !231)
!261 = !DILocation(line: 120, column: 1, scope: !231)
!262 = distinct !DISubprogram(name: "dvb_ringbuffer_flush_spinlock_wakeup", scope: !3, file: !3, line: 122, type: !201, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!263 = !DILocalVariable(name: "lock", arg: 1, scope: !264, file: !86, line: 407, type: !91)
!264 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !86, file: !86, line: 407, type: !265, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !48)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !91, !60}
!267 = !DILocation(line: 407, column: 64, scope: !264, inlinedAt: !268)
!268 = distinct !DILocation(line: 128, column: 2, scope: !262)
!269 = !DILocalVariable(name: "flags", arg: 2, scope: !264, file: !86, line: 407, type: !60)
!270 = !DILocation(line: 407, column: 84, scope: !264, inlinedAt: !268)
!271 = !DILocation(line: 327, column: 67, scope: !85, inlinedAt: !272)
!272 = distinct !DILocation(line: 126, column: 2, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 126, column: 2)
!274 = distinct !DILexicalBlock(scope: !275, file: !3, line: 126, column: 2)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 126, column: 2)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 126, column: 2)
!277 = distinct !DILexicalBlock(scope: !262, file: !3, line: 126, column: 2)
!278 = !DILocalVariable(name: "rbuf", arg: 1, scope: !262, file: !3, line: 122, type: !6)
!279 = !DILocation(line: 122, column: 66, scope: !262)
!280 = !DILocalVariable(name: "flags", scope: !262, file: !3, line: 124, type: !60)
!281 = !DILocation(line: 124, column: 16, scope: !262)
!282 = !DILocation(line: 126, column: 2, scope: !262)
!283 = !DILocation(line: 126, column: 2, scope: !277)
!284 = !DILocalVariable(name: "__dummy", scope: !285, file: !3, line: 126, type: !60)
!285 = distinct !DILexicalBlock(scope: !276, file: !3, line: 126, column: 2)
!286 = !DILocation(line: 126, column: 2, scope: !285)
!287 = !DILocalVariable(name: "__dummy2", scope: !285, file: !3, line: 126, type: !60)
!288 = !DILocation(line: 126, column: 2, scope: !276)
!289 = !DILocation(line: 126, column: 2, scope: !275)
!290 = !DILocation(line: 126, column: 2, scope: !291)
!291 = distinct !DILexicalBlock(scope: !275, file: !3, line: 126, column: 2)
!292 = !DILocalVariable(name: "__dummy", scope: !293, file: !3, line: 126, type: !60)
!293 = distinct !DILexicalBlock(scope: !294, file: !3, line: 126, column: 2)
!294 = distinct !DILexicalBlock(scope: !291, file: !3, line: 126, column: 2)
!295 = !DILocation(line: 126, column: 2, scope: !293)
!296 = !DILocalVariable(name: "__dummy2", scope: !293, file: !3, line: 126, type: !60)
!297 = !DILocation(line: 126, column: 2, scope: !294)
!298 = !DILocation(line: 126, column: 2, scope: !274)
!299 = !{i32 -2143729471}
!300 = !DILocation(line: 126, column: 2, scope: !273)
!301 = !DILocation(line: 329, column: 10, scope: !85, inlinedAt: !272)
!302 = !DILocation(line: 329, column: 16, scope: !85, inlinedAt: !272)
!303 = !DILocation(line: 127, column: 23, scope: !262)
!304 = !DILocation(line: 127, column: 2, scope: !262)
!305 = !DILocation(line: 128, column: 26, scope: !262)
!306 = !DILocation(line: 128, column: 32, scope: !262)
!307 = !DILocation(line: 128, column: 38, scope: !262)
!308 = !DILocalVariable(name: "__dummy", scope: !309, file: !86, line: 409, type: !60)
!309 = distinct !DILexicalBlock(scope: !310, file: !86, line: 409, column: 2)
!310 = distinct !DILexicalBlock(scope: !264, file: !86, line: 409, column: 2)
!311 = !DILocation(line: 409, column: 2, scope: !309, inlinedAt: !268)
!312 = !DILocalVariable(name: "__dummy2", scope: !309, file: !86, line: 409, type: !60)
!313 = !DILocalVariable(name: "__dummy", scope: !314, file: !86, line: 409, type: !60)
!314 = distinct !DILexicalBlock(scope: !315, file: !86, line: 409, column: 2)
!315 = distinct !DILexicalBlock(scope: !316, file: !86, line: 409, column: 2)
!316 = distinct !DILexicalBlock(scope: !317, file: !86, line: 409, column: 2)
!317 = distinct !DILexicalBlock(scope: !310, file: !86, line: 409, column: 2)
!318 = !DILocation(line: 409, column: 2, scope: !314, inlinedAt: !268)
!319 = !DILocalVariable(name: "__dummy2", scope: !314, file: !86, line: 409, type: !60)
!320 = !DILocation(line: 409, column: 2, scope: !315, inlinedAt: !268)
!321 = !DILocation(line: 409, column: 2, scope: !322, inlinedAt: !268)
!322 = distinct !DILexicalBlock(scope: !317, file: !86, line: 409, column: 2)
!323 = !{i32 -2145467696}
!324 = !DILocation(line: 409, column: 2, scope: !325, inlinedAt: !268)
!325 = distinct !DILexicalBlock(scope: !322, file: !86, line: 409, column: 2)
!326 = !DILocation(line: 130, column: 2, scope: !262)
!327 = !DILocation(line: 131, column: 1, scope: !262)
!328 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !329, file: !329, line: 666, type: !330, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !48)
!329 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!330 = !DISubroutineType(types: !331)
!331 = !{!60}
!332 = !DILocalVariable(name: "f", scope: !328, file: !329, line: 668, type: !60)
!333 = !DILocation(line: 668, column: 16, scope: !328)
!334 = !DILocation(line: 670, column: 6, scope: !328)
!335 = !DILocation(line: 670, column: 4, scope: !328)
!336 = !DILocation(line: 671, column: 2, scope: !328)
!337 = !DILocation(line: 672, column: 9, scope: !328)
!338 = !DILocation(line: 672, column: 2, scope: !328)
!339 = distinct !DISubprogram(name: "dvb_ringbuffer_read_user", scope: !3, file: !3, line: 133, type: !340, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!340 = !DISubroutineType(types: !341)
!341 = !{!18, !6, !11, !57}
!342 = !DILocalVariable(name: "addr", arg: 1, scope: !343, file: !344, line: 138, type: !349)
!343 = distinct !DISubprogram(name: "check_copy_size", scope: !344, file: !344, line: 138, type: !345, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !48)
!344 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!345 = !DISubroutineType(types: !346)
!346 = !{!347, !349, !57, !347}
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !19, line: 30, baseType: !348)
!348 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!351 = !DILocation(line: 138, column: 29, scope: !343, inlinedAt: !352)
!352 = distinct !DILocation(line: 199, column: 6, scope: !353, inlinedAt: !358)
!353 = distinct !DILexicalBlock(scope: !355, file: !354, line: 199, column: 6)
!354 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!355 = distinct !DISubprogram(name: "copy_to_user", scope: !354, file: !354, line: 197, type: !356, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !48)
!356 = !DISubroutineType(types: !357)
!357 = !{!60, !56, !349, !60}
!358 = distinct !DILocation(line: 150, column: 6, scope: !359)
!359 = distinct !DILexicalBlock(scope: !339, file: !3, line: 150, column: 6)
!360 = !DILocalVariable(name: "bytes", arg: 2, scope: !343, file: !344, line: 138, type: !57)
!361 = !DILocation(line: 138, column: 42, scope: !343, inlinedAt: !352)
!362 = !DILocalVariable(name: "is_source", arg: 3, scope: !343, file: !344, line: 138, type: !347)
!363 = !DILocation(line: 138, column: 54, scope: !343, inlinedAt: !352)
!364 = !DILocalVariable(name: "sz", scope: !343, file: !344, line: 140, type: !27)
!365 = !DILocation(line: 140, column: 6, scope: !343, inlinedAt: !352)
!366 = !DILocalVariable(name: "__ret_warn_on", scope: !367, file: !344, line: 150, type: !27)
!367 = distinct !DILexicalBlock(scope: !368, file: !344, line: 150, column: 6)
!368 = distinct !DILexicalBlock(scope: !343, file: !344, line: 150, column: 6)
!369 = !DILocation(line: 150, column: 6, scope: !367, inlinedAt: !352)
!370 = !DILocalVariable(name: "to", arg: 1, scope: !355, file: !354, line: 197, type: !56)
!371 = !DILocation(line: 197, column: 27, scope: !355, inlinedAt: !358)
!372 = !DILocalVariable(name: "from", arg: 2, scope: !355, file: !354, line: 197, type: !349)
!373 = !DILocation(line: 197, column: 43, scope: !355, inlinedAt: !358)
!374 = !DILocalVariable(name: "n", arg: 3, scope: !355, file: !354, line: 197, type: !60)
!375 = !DILocation(line: 197, column: 63, scope: !355, inlinedAt: !358)
!376 = !DILocation(line: 138, column: 29, scope: !343, inlinedAt: !377)
!377 = distinct !DILocation(line: 199, column: 6, scope: !353, inlinedAt: !378)
!378 = distinct !DILocation(line: 140, column: 7, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !3, line: 140, column: 7)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 139, column: 17)
!381 = distinct !DILexicalBlock(scope: !339, file: !3, line: 139, column: 6)
!382 = !DILocation(line: 138, column: 42, scope: !343, inlinedAt: !377)
!383 = !DILocation(line: 138, column: 54, scope: !343, inlinedAt: !377)
!384 = !DILocation(line: 140, column: 6, scope: !343, inlinedAt: !377)
!385 = !DILocation(line: 150, column: 6, scope: !367, inlinedAt: !377)
!386 = !DILocation(line: 197, column: 27, scope: !355, inlinedAt: !378)
!387 = !DILocation(line: 197, column: 43, scope: !355, inlinedAt: !378)
!388 = !DILocation(line: 197, column: 63, scope: !355, inlinedAt: !378)
!389 = !DILocalVariable(name: "rbuf", arg: 1, scope: !339, file: !3, line: 133, type: !6)
!390 = !DILocation(line: 133, column: 57, scope: !339)
!391 = !DILocalVariable(name: "buf", arg: 2, scope: !339, file: !3, line: 133, type: !11)
!392 = !DILocation(line: 133, column: 74, scope: !339)
!393 = !DILocalVariable(name: "len", arg: 3, scope: !339, file: !3, line: 133, type: !57)
!394 = !DILocation(line: 133, column: 86, scope: !339)
!395 = !DILocalVariable(name: "todo", scope: !339, file: !3, line: 135, type: !57)
!396 = !DILocation(line: 135, column: 9, scope: !339)
!397 = !DILocation(line: 135, column: 16, scope: !339)
!398 = !DILocalVariable(name: "split", scope: !339, file: !3, line: 136, type: !57)
!399 = !DILocation(line: 136, column: 9, scope: !339)
!400 = !DILocation(line: 138, column: 11, scope: !339)
!401 = !DILocation(line: 138, column: 17, scope: !339)
!402 = !DILocation(line: 138, column: 25, scope: !339)
!403 = !DILocation(line: 138, column: 23, scope: !339)
!404 = !DILocation(line: 138, column: 31, scope: !339)
!405 = !DILocation(line: 138, column: 37, scope: !339)
!406 = !DILocation(line: 138, column: 29, scope: !339)
!407 = !DILocation(line: 138, column: 10, scope: !339)
!408 = !DILocation(line: 138, column: 45, scope: !339)
!409 = !DILocation(line: 138, column: 51, scope: !339)
!410 = !DILocation(line: 138, column: 58, scope: !339)
!411 = !DILocation(line: 138, column: 64, scope: !339)
!412 = !DILocation(line: 138, column: 56, scope: !339)
!413 = !DILocation(line: 138, column: 8, scope: !339)
!414 = !DILocation(line: 139, column: 6, scope: !381)
!415 = !DILocation(line: 139, column: 12, scope: !381)
!416 = !DILocation(line: 139, column: 6, scope: !339)
!417 = !DILocation(line: 140, column: 20, scope: !379)
!418 = !DILocation(line: 140, column: 25, scope: !379)
!419 = !DILocation(line: 140, column: 31, scope: !379)
!420 = !DILocation(line: 140, column: 36, scope: !379)
!421 = !DILocation(line: 140, column: 42, scope: !379)
!422 = !DILocation(line: 140, column: 35, scope: !379)
!423 = !DILocation(line: 140, column: 49, scope: !379)
!424 = !DILocation(line: 199, column: 6, scope: !353, inlinedAt: !378)
!425 = !DILocation(line: 141, column: 6, scope: !426, inlinedAt: !377)
!426 = distinct !DILexicalBlock(scope: !343, file: !344, line: 141, column: 6)
!427 = !DILocation(line: 0, scope: !426, inlinedAt: !377)
!428 = !DILocation(line: 141, column: 6, scope: !343, inlinedAt: !377)
!429 = !DILocation(line: 142, column: 29, scope: !430, inlinedAt: !377)
!430 = distinct !DILexicalBlock(scope: !431, file: !344, line: 142, column: 7)
!431 = distinct !DILexicalBlock(scope: !426, file: !344, line: 141, column: 39)
!432 = !DILocation(line: 142, column: 8, scope: !430, inlinedAt: !377)
!433 = !DILocation(line: 142, column: 7, scope: !431, inlinedAt: !377)
!434 = !DILocation(line: 143, column: 18, scope: !430, inlinedAt: !377)
!435 = !DILocation(line: 143, column: 22, scope: !430, inlinedAt: !377)
!436 = !DILocation(line: 143, column: 4, scope: !430, inlinedAt: !377)
!437 = !DILocation(line: 144, column: 12, scope: !438, inlinedAt: !377)
!438 = distinct !DILexicalBlock(scope: !430, file: !344, line: 144, column: 12)
!439 = !DILocation(line: 144, column: 12, scope: !430, inlinedAt: !377)
!440 = !DILocation(line: 145, column: 4, scope: !438, inlinedAt: !377)
!441 = !DILocation(line: 147, column: 4, scope: !438, inlinedAt: !377)
!442 = !DILocation(line: 148, column: 3, scope: !431, inlinedAt: !377)
!443 = !DILocation(line: 150, column: 6, scope: !444, inlinedAt: !377)
!444 = distinct !DILexicalBlock(scope: !367, file: !344, line: 150, column: 6)
!445 = !DILocation(line: 150, column: 6, scope: !446, inlinedAt: !377)
!446 = distinct !DILexicalBlock(scope: !447, file: !344, line: 150, column: 6)
!447 = distinct !DILexicalBlock(scope: !444, file: !344, line: 150, column: 6)
!448 = !{i32 -2145548657, i32 -2145548628, i32 -2145548582, i32 -2145548524, i32 -2145548470, i32 -2145548416, i32 -2145548361, i32 -2145548330}
!449 = !DILocation(line: 150, column: 6, scope: !450, inlinedAt: !377)
!450 = distinct !DILexicalBlock(scope: !447, file: !344, line: 150, column: 6)
!451 = !{i32 -2145547910, i32 -2145547903, i32 -2145547851, i32 -2145547820, i32 -2145547790}
!452 = !DILocation(line: 150, column: 6, scope: !447, inlinedAt: !377)
!453 = !DILocation(line: 150, column: 6, scope: !368, inlinedAt: !377)
!454 = !DILocation(line: 150, column: 6, scope: !343, inlinedAt: !377)
!455 = !DILocation(line: 151, column: 3, scope: !368, inlinedAt: !377)
!456 = !DILocation(line: 152, column: 20, scope: !343, inlinedAt: !377)
!457 = !DILocation(line: 152, column: 26, scope: !343, inlinedAt: !377)
!458 = !DILocation(line: 152, column: 33, scope: !343, inlinedAt: !377)
!459 = !DILocation(line: 152, column: 2, scope: !343, inlinedAt: !377)
!460 = !DILocation(line: 153, column: 2, scope: !343, inlinedAt: !377)
!461 = !DILocation(line: 154, column: 1, scope: !343, inlinedAt: !377)
!462 = !DILocation(line: 199, column: 6, scope: !355, inlinedAt: !378)
!463 = !DILocation(line: 200, column: 21, scope: !353, inlinedAt: !378)
!464 = !DILocation(line: 200, column: 25, scope: !353, inlinedAt: !378)
!465 = !DILocation(line: 200, column: 31, scope: !353, inlinedAt: !378)
!466 = !DILocation(line: 200, column: 7, scope: !353, inlinedAt: !378)
!467 = !DILocation(line: 200, column: 5, scope: !353, inlinedAt: !378)
!468 = !DILocation(line: 200, column: 3, scope: !353, inlinedAt: !378)
!469 = !DILocation(line: 201, column: 9, scope: !355, inlinedAt: !378)
!470 = !DILocation(line: 140, column: 7, scope: !379)
!471 = !DILocation(line: 140, column: 7, scope: !380)
!472 = !DILocation(line: 141, column: 4, scope: !379)
!473 = !DILocation(line: 142, column: 10, scope: !380)
!474 = !DILocation(line: 142, column: 7, scope: !380)
!475 = !DILocation(line: 143, column: 11, scope: !380)
!476 = !DILocation(line: 143, column: 8, scope: !380)
!477 = !DILocation(line: 148, column: 3, scope: !380)
!478 = !DILocation(line: 148, column: 3, scope: !479)
!479 = distinct !DILexicalBlock(scope: !380, file: !3, line: 148, column: 3)
!480 = !DILocation(line: 148, column: 3, scope: !481)
!481 = distinct !DILexicalBlock(scope: !479, file: !3, line: 148, column: 3)
!482 = !{i32 -2143728122}
!483 = !DILocation(line: 148, column: 3, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !3, line: 148, column: 3)
!485 = !DILocation(line: 148, column: 3, scope: !486)
!486 = distinct !DILexicalBlock(scope: !484, file: !3, line: 148, column: 3)
!487 = !DILocation(line: 148, column: 3, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !3, line: 148, column: 3)
!489 = !DILocation(line: 149, column: 2, scope: !380)
!490 = !DILocation(line: 150, column: 19, scope: !359)
!491 = !DILocation(line: 150, column: 24, scope: !359)
!492 = !DILocation(line: 150, column: 30, scope: !359)
!493 = !DILocation(line: 150, column: 35, scope: !359)
!494 = !DILocation(line: 150, column: 41, scope: !359)
!495 = !DILocation(line: 150, column: 34, scope: !359)
!496 = !DILocation(line: 150, column: 48, scope: !359)
!497 = !DILocation(line: 199, column: 6, scope: !353, inlinedAt: !358)
!498 = !DILocation(line: 141, column: 6, scope: !426, inlinedAt: !352)
!499 = !DILocation(line: 0, scope: !426, inlinedAt: !352)
!500 = !DILocation(line: 141, column: 6, scope: !343, inlinedAt: !352)
!501 = !DILocation(line: 142, column: 29, scope: !430, inlinedAt: !352)
!502 = !DILocation(line: 142, column: 8, scope: !430, inlinedAt: !352)
!503 = !DILocation(line: 142, column: 7, scope: !431, inlinedAt: !352)
!504 = !DILocation(line: 143, column: 18, scope: !430, inlinedAt: !352)
!505 = !DILocation(line: 143, column: 22, scope: !430, inlinedAt: !352)
!506 = !DILocation(line: 143, column: 4, scope: !430, inlinedAt: !352)
!507 = !DILocation(line: 144, column: 12, scope: !438, inlinedAt: !352)
!508 = !DILocation(line: 144, column: 12, scope: !430, inlinedAt: !352)
!509 = !DILocation(line: 145, column: 4, scope: !438, inlinedAt: !352)
!510 = !DILocation(line: 147, column: 4, scope: !438, inlinedAt: !352)
!511 = !DILocation(line: 148, column: 3, scope: !431, inlinedAt: !352)
!512 = !DILocation(line: 150, column: 6, scope: !444, inlinedAt: !352)
!513 = !DILocation(line: 150, column: 6, scope: !446, inlinedAt: !352)
!514 = !DILocation(line: 150, column: 6, scope: !450, inlinedAt: !352)
!515 = !DILocation(line: 150, column: 6, scope: !447, inlinedAt: !352)
!516 = !DILocation(line: 150, column: 6, scope: !368, inlinedAt: !352)
!517 = !DILocation(line: 150, column: 6, scope: !343, inlinedAt: !352)
!518 = !DILocation(line: 151, column: 3, scope: !368, inlinedAt: !352)
!519 = !DILocation(line: 152, column: 20, scope: !343, inlinedAt: !352)
!520 = !DILocation(line: 152, column: 26, scope: !343, inlinedAt: !352)
!521 = !DILocation(line: 152, column: 33, scope: !343, inlinedAt: !352)
!522 = !DILocation(line: 152, column: 2, scope: !343, inlinedAt: !352)
!523 = !DILocation(line: 153, column: 2, scope: !343, inlinedAt: !352)
!524 = !DILocation(line: 154, column: 1, scope: !343, inlinedAt: !352)
!525 = !DILocation(line: 199, column: 6, scope: !355, inlinedAt: !358)
!526 = !DILocation(line: 200, column: 21, scope: !353, inlinedAt: !358)
!527 = !DILocation(line: 200, column: 25, scope: !353, inlinedAt: !358)
!528 = !DILocation(line: 200, column: 31, scope: !353, inlinedAt: !358)
!529 = !DILocation(line: 200, column: 7, scope: !353, inlinedAt: !358)
!530 = !DILocation(line: 200, column: 5, scope: !353, inlinedAt: !358)
!531 = !DILocation(line: 200, column: 3, scope: !353, inlinedAt: !358)
!532 = !DILocation(line: 201, column: 9, scope: !355, inlinedAt: !358)
!533 = !DILocation(line: 150, column: 6, scope: !359)
!534 = !DILocation(line: 150, column: 6, scope: !339)
!535 = !DILocation(line: 151, column: 3, scope: !359)
!536 = !DILocation(line: 154, column: 2, scope: !339)
!537 = !DILocation(line: 154, column: 2, scope: !538)
!538 = distinct !DILexicalBlock(scope: !339, file: !3, line: 154, column: 2)
!539 = !DILocation(line: 154, column: 2, scope: !540)
!540 = distinct !DILexicalBlock(scope: !538, file: !3, line: 154, column: 2)
!541 = !{i32 -2143725673}
!542 = !DILocation(line: 154, column: 2, scope: !543)
!543 = distinct !DILexicalBlock(scope: !538, file: !3, line: 154, column: 2)
!544 = !DILocation(line: 154, column: 2, scope: !545)
!545 = distinct !DILexicalBlock(scope: !543, file: !3, line: 154, column: 2)
!546 = !DILocation(line: 154, column: 2, scope: !547)
!547 = distinct !DILexicalBlock(scope: !543, file: !3, line: 154, column: 2)
!548 = !DILocation(line: 156, column: 9, scope: !339)
!549 = !DILocation(line: 156, column: 2, scope: !339)
!550 = !DILocation(line: 157, column: 1, scope: !339)
!551 = distinct !DISubprogram(name: "dvb_ringbuffer_read", scope: !3, file: !3, line: 159, type: !552, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !6, !11, !57}
!554 = !DILocalVariable(name: "rbuf", arg: 1, scope: !551, file: !3, line: 159, type: !6)
!555 = !DILocation(line: 159, column: 49, scope: !551)
!556 = !DILocalVariable(name: "buf", arg: 2, scope: !551, file: !3, line: 159, type: !11)
!557 = !DILocation(line: 159, column: 59, scope: !551)
!558 = !DILocalVariable(name: "len", arg: 3, scope: !551, file: !3, line: 159, type: !57)
!559 = !DILocation(line: 159, column: 71, scope: !551)
!560 = !DILocalVariable(name: "todo", scope: !551, file: !3, line: 161, type: !57)
!561 = !DILocation(line: 161, column: 9, scope: !551)
!562 = !DILocation(line: 161, column: 16, scope: !551)
!563 = !DILocalVariable(name: "split", scope: !551, file: !3, line: 162, type: !57)
!564 = !DILocation(line: 162, column: 9, scope: !551)
!565 = !DILocation(line: 164, column: 11, scope: !551)
!566 = !DILocation(line: 164, column: 17, scope: !551)
!567 = !DILocation(line: 164, column: 25, scope: !551)
!568 = !DILocation(line: 164, column: 23, scope: !551)
!569 = !DILocation(line: 164, column: 31, scope: !551)
!570 = !DILocation(line: 164, column: 37, scope: !551)
!571 = !DILocation(line: 164, column: 29, scope: !551)
!572 = !DILocation(line: 164, column: 10, scope: !551)
!573 = !DILocation(line: 164, column: 45, scope: !551)
!574 = !DILocation(line: 164, column: 51, scope: !551)
!575 = !DILocation(line: 164, column: 58, scope: !551)
!576 = !DILocation(line: 164, column: 64, scope: !551)
!577 = !DILocation(line: 164, column: 56, scope: !551)
!578 = !DILocation(line: 164, column: 8, scope: !551)
!579 = !DILocation(line: 165, column: 6, scope: !580)
!580 = distinct !DILexicalBlock(scope: !551, file: !3, line: 165, column: 6)
!581 = !DILocation(line: 165, column: 12, scope: !580)
!582 = !DILocation(line: 165, column: 6, scope: !551)
!583 = !DILocation(line: 166, column: 10, scope: !584)
!584 = distinct !DILexicalBlock(scope: !580, file: !3, line: 165, column: 17)
!585 = !DILocation(line: 166, column: 15, scope: !584)
!586 = !DILocation(line: 166, column: 21, scope: !584)
!587 = !DILocation(line: 166, column: 26, scope: !584)
!588 = !DILocation(line: 166, column: 32, scope: !584)
!589 = !DILocation(line: 166, column: 25, scope: !584)
!590 = !DILocation(line: 166, column: 39, scope: !584)
!591 = !DILocation(line: 166, column: 3, scope: !584)
!592 = !DILocation(line: 167, column: 10, scope: !584)
!593 = !DILocation(line: 167, column: 7, scope: !584)
!594 = !DILocation(line: 168, column: 11, scope: !584)
!595 = !DILocation(line: 168, column: 8, scope: !584)
!596 = !DILocation(line: 173, column: 3, scope: !584)
!597 = !DILocation(line: 173, column: 3, scope: !598)
!598 = distinct !DILexicalBlock(scope: !584, file: !3, line: 173, column: 3)
!599 = !DILocation(line: 173, column: 3, scope: !600)
!600 = distinct !DILexicalBlock(scope: !598, file: !3, line: 173, column: 3)
!601 = !{i32 -2143723195}
!602 = !DILocation(line: 173, column: 3, scope: !603)
!603 = distinct !DILexicalBlock(scope: !598, file: !3, line: 173, column: 3)
!604 = !DILocation(line: 173, column: 3, scope: !605)
!605 = distinct !DILexicalBlock(scope: !603, file: !3, line: 173, column: 3)
!606 = !DILocation(line: 173, column: 3, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !3, line: 173, column: 3)
!608 = !DILocation(line: 174, column: 2, scope: !584)
!609 = !DILocation(line: 175, column: 9, scope: !551)
!610 = !DILocation(line: 175, column: 14, scope: !551)
!611 = !DILocation(line: 175, column: 20, scope: !551)
!612 = !DILocation(line: 175, column: 25, scope: !551)
!613 = !DILocation(line: 175, column: 31, scope: !551)
!614 = !DILocation(line: 175, column: 24, scope: !551)
!615 = !DILocation(line: 175, column: 38, scope: !551)
!616 = !DILocation(line: 175, column: 2, scope: !551)
!617 = !DILocation(line: 178, column: 2, scope: !551)
!618 = !DILocation(line: 178, column: 2, scope: !619)
!619 = distinct !DILexicalBlock(scope: !551, file: !3, line: 178, column: 2)
!620 = !DILocation(line: 178, column: 2, scope: !621)
!621 = distinct !DILexicalBlock(scope: !619, file: !3, line: 178, column: 2)
!622 = !{i32 -2143720749}
!623 = !DILocation(line: 178, column: 2, scope: !624)
!624 = distinct !DILexicalBlock(scope: !619, file: !3, line: 178, column: 2)
!625 = !DILocation(line: 178, column: 2, scope: !626)
!626 = distinct !DILexicalBlock(scope: !624, file: !3, line: 178, column: 2)
!627 = !DILocation(line: 178, column: 2, scope: !628)
!628 = distinct !DILexicalBlock(scope: !624, file: !3, line: 178, column: 2)
!629 = !DILocation(line: 179, column: 1, scope: !551)
!630 = distinct !DISubprogram(name: "dvb_ringbuffer_write", scope: !3, file: !3, line: 182, type: !631, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!631 = !DISubroutineType(types: !632)
!632 = !{!18, !6, !633, !57}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!635 = !DILocalVariable(name: "rbuf", arg: 1, scope: !630, file: !3, line: 182, type: !6)
!636 = !DILocation(line: 182, column: 53, scope: !630)
!637 = !DILocalVariable(name: "buf", arg: 2, scope: !630, file: !3, line: 182, type: !633)
!638 = !DILocation(line: 182, column: 69, scope: !630)
!639 = !DILocalVariable(name: "len", arg: 3, scope: !630, file: !3, line: 182, type: !57)
!640 = !DILocation(line: 182, column: 81, scope: !630)
!641 = !DILocalVariable(name: "todo", scope: !630, file: !3, line: 184, type: !57)
!642 = !DILocation(line: 184, column: 9, scope: !630)
!643 = !DILocation(line: 184, column: 16, scope: !630)
!644 = !DILocalVariable(name: "split", scope: !630, file: !3, line: 185, type: !57)
!645 = !DILocation(line: 185, column: 9, scope: !630)
!646 = !DILocation(line: 187, column: 11, scope: !630)
!647 = !DILocation(line: 187, column: 17, scope: !630)
!648 = !DILocation(line: 187, column: 26, scope: !630)
!649 = !DILocation(line: 187, column: 24, scope: !630)
!650 = !DILocation(line: 187, column: 32, scope: !630)
!651 = !DILocation(line: 187, column: 38, scope: !630)
!652 = !DILocation(line: 187, column: 30, scope: !630)
!653 = !DILocation(line: 187, column: 10, scope: !630)
!654 = !DILocation(line: 187, column: 46, scope: !630)
!655 = !DILocation(line: 187, column: 52, scope: !630)
!656 = !DILocation(line: 187, column: 59, scope: !630)
!657 = !DILocation(line: 187, column: 65, scope: !630)
!658 = !DILocation(line: 187, column: 57, scope: !630)
!659 = !DILocation(line: 187, column: 8, scope: !630)
!660 = !DILocation(line: 189, column: 6, scope: !661)
!661 = distinct !DILexicalBlock(scope: !630, file: !3, line: 189, column: 6)
!662 = !DILocation(line: 189, column: 12, scope: !661)
!663 = !DILocation(line: 189, column: 6, scope: !630)
!664 = !DILocation(line: 190, column: 10, scope: !665)
!665 = distinct !DILexicalBlock(scope: !661, file: !3, line: 189, column: 17)
!666 = !DILocation(line: 190, column: 16, scope: !665)
!667 = !DILocation(line: 190, column: 21, scope: !665)
!668 = !DILocation(line: 190, column: 27, scope: !665)
!669 = !DILocation(line: 190, column: 20, scope: !665)
!670 = !DILocation(line: 190, column: 35, scope: !665)
!671 = !DILocation(line: 190, column: 40, scope: !665)
!672 = !DILocation(line: 190, column: 3, scope: !665)
!673 = !DILocation(line: 191, column: 10, scope: !665)
!674 = !DILocation(line: 191, column: 7, scope: !665)
!675 = !DILocation(line: 192, column: 11, scope: !665)
!676 = !DILocation(line: 192, column: 8, scope: !665)
!677 = !DILocation(line: 198, column: 3, scope: !665)
!678 = !DILocation(line: 198, column: 3, scope: !679)
!679 = distinct !DILexicalBlock(scope: !665, file: !3, line: 198, column: 3)
!680 = !DILocation(line: 198, column: 3, scope: !681)
!681 = distinct !DILexicalBlock(scope: !679, file: !3, line: 198, column: 3)
!682 = !{i32 -2143718256}
!683 = !DILocation(line: 198, column: 3, scope: !684)
!684 = distinct !DILexicalBlock(scope: !679, file: !3, line: 198, column: 3)
!685 = !DILocation(line: 198, column: 3, scope: !686)
!686 = distinct !DILexicalBlock(scope: !684, file: !3, line: 198, column: 3)
!687 = !DILocation(line: 198, column: 3, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !3, line: 198, column: 3)
!689 = !DILocation(line: 199, column: 2, scope: !665)
!690 = !DILocation(line: 200, column: 9, scope: !630)
!691 = !DILocation(line: 200, column: 15, scope: !630)
!692 = !DILocation(line: 200, column: 20, scope: !630)
!693 = !DILocation(line: 200, column: 26, scope: !630)
!694 = !DILocation(line: 200, column: 19, scope: !630)
!695 = !DILocation(line: 200, column: 34, scope: !630)
!696 = !DILocation(line: 200, column: 39, scope: !630)
!697 = !DILocation(line: 200, column: 2, scope: !630)
!698 = !DILocation(line: 202, column: 2, scope: !630)
!699 = !DILocation(line: 202, column: 2, scope: !700)
!700 = distinct !DILexicalBlock(scope: !630, file: !3, line: 202, column: 2)
!701 = !DILocation(line: 202, column: 2, scope: !702)
!702 = distinct !DILexicalBlock(scope: !700, file: !3, line: 202, column: 2)
!703 = !{i32 -2143715774}
!704 = !DILocation(line: 202, column: 2, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !3, line: 202, column: 2)
!706 = !DILocation(line: 202, column: 2, scope: !707)
!707 = distinct !DILexicalBlock(scope: !705, file: !3, line: 202, column: 2)
!708 = !DILocation(line: 202, column: 2, scope: !709)
!709 = distinct !DILexicalBlock(scope: !705, file: !3, line: 202, column: 2)
!710 = !DILocation(line: 204, column: 9, scope: !630)
!711 = !DILocation(line: 204, column: 2, scope: !630)
!712 = distinct !DISubprogram(name: "dvb_ringbuffer_write_user", scope: !3, file: !3, line: 207, type: !631, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!713 = !DILocation(line: 138, column: 29, scope: !343, inlinedAt: !714)
!714 = distinct !DILocation(line: 191, column: 6, scope: !715, inlinedAt: !717)
!715 = distinct !DILexicalBlock(scope: !716, file: !354, line: 191, column: 6)
!716 = distinct !DISubprogram(name: "copy_from_user", scope: !354, file: !354, line: 189, type: !356, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !48)
!717 = distinct !DILocation(line: 229, column: 11, scope: !712)
!718 = !DILocation(line: 138, column: 42, scope: !343, inlinedAt: !714)
!719 = !DILocation(line: 138, column: 54, scope: !343, inlinedAt: !714)
!720 = !DILocation(line: 140, column: 6, scope: !343, inlinedAt: !714)
!721 = !DILocation(line: 150, column: 6, scope: !367, inlinedAt: !714)
!722 = !DILocalVariable(name: "to", arg: 1, scope: !716, file: !354, line: 189, type: !56)
!723 = !DILocation(line: 189, column: 22, scope: !716, inlinedAt: !717)
!724 = !DILocalVariable(name: "from", arg: 2, scope: !716, file: !354, line: 189, type: !349)
!725 = !DILocation(line: 189, column: 45, scope: !716, inlinedAt: !717)
!726 = !DILocalVariable(name: "n", arg: 3, scope: !716, file: !354, line: 189, type: !60)
!727 = !DILocation(line: 189, column: 65, scope: !716, inlinedAt: !717)
!728 = !DILocation(line: 138, column: 29, scope: !343, inlinedAt: !729)
!729 = distinct !DILocation(line: 191, column: 6, scope: !715, inlinedAt: !730)
!730 = distinct !DILocation(line: 217, column: 12, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 216, column: 17)
!732 = distinct !DILexicalBlock(scope: !712, file: !3, line: 216, column: 6)
!733 = !DILocation(line: 138, column: 42, scope: !343, inlinedAt: !729)
!734 = !DILocation(line: 138, column: 54, scope: !343, inlinedAt: !729)
!735 = !DILocation(line: 140, column: 6, scope: !343, inlinedAt: !729)
!736 = !DILocation(line: 150, column: 6, scope: !367, inlinedAt: !729)
!737 = !DILocation(line: 189, column: 22, scope: !716, inlinedAt: !730)
!738 = !DILocation(line: 189, column: 45, scope: !716, inlinedAt: !730)
!739 = !DILocation(line: 189, column: 65, scope: !716, inlinedAt: !730)
!740 = !DILocalVariable(name: "rbuf", arg: 1, scope: !712, file: !3, line: 207, type: !6)
!741 = !DILocation(line: 207, column: 58, scope: !712)
!742 = !DILocalVariable(name: "buf", arg: 2, scope: !712, file: !3, line: 208, type: !633)
!743 = !DILocation(line: 208, column: 24, scope: !712)
!744 = !DILocalVariable(name: "len", arg: 3, scope: !712, file: !3, line: 208, type: !57)
!745 = !DILocation(line: 208, column: 36, scope: !712)
!746 = !DILocalVariable(name: "status", scope: !712, file: !3, line: 210, type: !27)
!747 = !DILocation(line: 210, column: 6, scope: !712)
!748 = !DILocalVariable(name: "todo", scope: !712, file: !3, line: 211, type: !57)
!749 = !DILocation(line: 211, column: 9, scope: !712)
!750 = !DILocation(line: 211, column: 16, scope: !712)
!751 = !DILocalVariable(name: "split", scope: !712, file: !3, line: 212, type: !57)
!752 = !DILocation(line: 212, column: 9, scope: !712)
!753 = !DILocation(line: 214, column: 11, scope: !712)
!754 = !DILocation(line: 214, column: 17, scope: !712)
!755 = !DILocation(line: 214, column: 26, scope: !712)
!756 = !DILocation(line: 214, column: 24, scope: !712)
!757 = !DILocation(line: 214, column: 32, scope: !712)
!758 = !DILocation(line: 214, column: 38, scope: !712)
!759 = !DILocation(line: 214, column: 30, scope: !712)
!760 = !DILocation(line: 214, column: 10, scope: !712)
!761 = !DILocation(line: 214, column: 46, scope: !712)
!762 = !DILocation(line: 214, column: 52, scope: !712)
!763 = !DILocation(line: 214, column: 59, scope: !712)
!764 = !DILocation(line: 214, column: 65, scope: !712)
!765 = !DILocation(line: 214, column: 57, scope: !712)
!766 = !DILocation(line: 214, column: 8, scope: !712)
!767 = !DILocation(line: 216, column: 6, scope: !732)
!768 = !DILocation(line: 216, column: 12, scope: !732)
!769 = !DILocation(line: 216, column: 6, scope: !712)
!770 = !DILocation(line: 217, column: 27, scope: !731)
!771 = !DILocation(line: 217, column: 33, scope: !731)
!772 = !DILocation(line: 217, column: 38, scope: !731)
!773 = !DILocation(line: 217, column: 44, scope: !731)
!774 = !DILocation(line: 217, column: 37, scope: !731)
!775 = !DILocation(line: 217, column: 52, scope: !731)
!776 = !DILocation(line: 217, column: 57, scope: !731)
!777 = !DILocation(line: 191, column: 6, scope: !715, inlinedAt: !730)
!778 = !DILocation(line: 141, column: 6, scope: !426, inlinedAt: !729)
!779 = !DILocation(line: 0, scope: !426, inlinedAt: !729)
!780 = !DILocation(line: 141, column: 6, scope: !343, inlinedAt: !729)
!781 = !DILocation(line: 142, column: 29, scope: !430, inlinedAt: !729)
!782 = !DILocation(line: 142, column: 8, scope: !430, inlinedAt: !729)
!783 = !DILocation(line: 142, column: 7, scope: !431, inlinedAt: !729)
!784 = !DILocation(line: 143, column: 18, scope: !430, inlinedAt: !729)
!785 = !DILocation(line: 143, column: 22, scope: !430, inlinedAt: !729)
!786 = !DILocation(line: 143, column: 4, scope: !430, inlinedAt: !729)
!787 = !DILocation(line: 144, column: 12, scope: !438, inlinedAt: !729)
!788 = !DILocation(line: 144, column: 12, scope: !430, inlinedAt: !729)
!789 = !DILocation(line: 145, column: 4, scope: !438, inlinedAt: !729)
!790 = !DILocation(line: 147, column: 4, scope: !438, inlinedAt: !729)
!791 = !DILocation(line: 148, column: 3, scope: !431, inlinedAt: !729)
!792 = !DILocation(line: 150, column: 6, scope: !444, inlinedAt: !729)
!793 = !DILocation(line: 150, column: 6, scope: !446, inlinedAt: !729)
!794 = !DILocation(line: 150, column: 6, scope: !450, inlinedAt: !729)
!795 = !DILocation(line: 150, column: 6, scope: !447, inlinedAt: !729)
!796 = !DILocation(line: 150, column: 6, scope: !368, inlinedAt: !729)
!797 = !DILocation(line: 150, column: 6, scope: !343, inlinedAt: !729)
!798 = !DILocation(line: 151, column: 3, scope: !368, inlinedAt: !729)
!799 = !DILocation(line: 152, column: 20, scope: !343, inlinedAt: !729)
!800 = !DILocation(line: 152, column: 26, scope: !343, inlinedAt: !729)
!801 = !DILocation(line: 152, column: 33, scope: !343, inlinedAt: !729)
!802 = !DILocation(line: 152, column: 2, scope: !343, inlinedAt: !729)
!803 = !DILocation(line: 153, column: 2, scope: !343, inlinedAt: !729)
!804 = !DILocation(line: 154, column: 1, scope: !343, inlinedAt: !729)
!805 = !DILocation(line: 191, column: 6, scope: !716, inlinedAt: !730)
!806 = !DILocation(line: 192, column: 23, scope: !715, inlinedAt: !730)
!807 = !DILocation(line: 192, column: 27, scope: !715, inlinedAt: !730)
!808 = !DILocation(line: 192, column: 33, scope: !715, inlinedAt: !730)
!809 = !DILocation(line: 192, column: 7, scope: !715, inlinedAt: !730)
!810 = !DILocation(line: 192, column: 5, scope: !715, inlinedAt: !730)
!811 = !DILocation(line: 192, column: 3, scope: !715, inlinedAt: !730)
!812 = !DILocation(line: 193, column: 9, scope: !716, inlinedAt: !730)
!813 = !DILocation(line: 217, column: 12, scope: !731)
!814 = !DILocation(line: 217, column: 10, scope: !731)
!815 = !DILocation(line: 218, column: 7, scope: !816)
!816 = distinct !DILexicalBlock(scope: !731, file: !3, line: 218, column: 7)
!817 = !DILocation(line: 218, column: 7, scope: !731)
!818 = !DILocation(line: 219, column: 11, scope: !816)
!819 = !DILocation(line: 219, column: 17, scope: !816)
!820 = !DILocation(line: 219, column: 15, scope: !816)
!821 = !DILocation(line: 219, column: 4, scope: !816)
!822 = !DILocation(line: 220, column: 10, scope: !731)
!823 = !DILocation(line: 220, column: 7, scope: !731)
!824 = !DILocation(line: 221, column: 11, scope: !731)
!825 = !DILocation(line: 221, column: 8, scope: !731)
!826 = !DILocation(line: 227, column: 3, scope: !731)
!827 = !DILocation(line: 227, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !731, file: !3, line: 227, column: 3)
!829 = !DILocation(line: 227, column: 3, scope: !830)
!830 = distinct !DILexicalBlock(scope: !828, file: !3, line: 227, column: 3)
!831 = !{i32 -2143713259}
!832 = !DILocation(line: 227, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !828, file: !3, line: 227, column: 3)
!834 = !DILocation(line: 227, column: 3, scope: !835)
!835 = distinct !DILexicalBlock(scope: !833, file: !3, line: 227, column: 3)
!836 = !DILocation(line: 227, column: 3, scope: !837)
!837 = distinct !DILexicalBlock(scope: !833, file: !3, line: 227, column: 3)
!838 = !DILocation(line: 228, column: 2, scope: !731)
!839 = !DILocation(line: 229, column: 26, scope: !712)
!840 = !DILocation(line: 229, column: 32, scope: !712)
!841 = !DILocation(line: 229, column: 37, scope: !712)
!842 = !DILocation(line: 229, column: 43, scope: !712)
!843 = !DILocation(line: 229, column: 36, scope: !712)
!844 = !DILocation(line: 229, column: 51, scope: !712)
!845 = !DILocation(line: 229, column: 56, scope: !712)
!846 = !DILocation(line: 191, column: 6, scope: !715, inlinedAt: !717)
!847 = !DILocation(line: 141, column: 6, scope: !426, inlinedAt: !714)
!848 = !DILocation(line: 0, scope: !426, inlinedAt: !714)
!849 = !DILocation(line: 141, column: 6, scope: !343, inlinedAt: !714)
!850 = !DILocation(line: 142, column: 29, scope: !430, inlinedAt: !714)
!851 = !DILocation(line: 142, column: 8, scope: !430, inlinedAt: !714)
!852 = !DILocation(line: 142, column: 7, scope: !431, inlinedAt: !714)
!853 = !DILocation(line: 143, column: 18, scope: !430, inlinedAt: !714)
!854 = !DILocation(line: 143, column: 22, scope: !430, inlinedAt: !714)
!855 = !DILocation(line: 143, column: 4, scope: !430, inlinedAt: !714)
!856 = !DILocation(line: 144, column: 12, scope: !438, inlinedAt: !714)
!857 = !DILocation(line: 144, column: 12, scope: !430, inlinedAt: !714)
!858 = !DILocation(line: 145, column: 4, scope: !438, inlinedAt: !714)
!859 = !DILocation(line: 147, column: 4, scope: !438, inlinedAt: !714)
!860 = !DILocation(line: 148, column: 3, scope: !431, inlinedAt: !714)
!861 = !DILocation(line: 150, column: 6, scope: !444, inlinedAt: !714)
!862 = !DILocation(line: 150, column: 6, scope: !446, inlinedAt: !714)
!863 = !DILocation(line: 150, column: 6, scope: !450, inlinedAt: !714)
!864 = !DILocation(line: 150, column: 6, scope: !447, inlinedAt: !714)
!865 = !DILocation(line: 150, column: 6, scope: !368, inlinedAt: !714)
!866 = !DILocation(line: 150, column: 6, scope: !343, inlinedAt: !714)
!867 = !DILocation(line: 151, column: 3, scope: !368, inlinedAt: !714)
!868 = !DILocation(line: 152, column: 20, scope: !343, inlinedAt: !714)
!869 = !DILocation(line: 152, column: 26, scope: !343, inlinedAt: !714)
!870 = !DILocation(line: 152, column: 33, scope: !343, inlinedAt: !714)
!871 = !DILocation(line: 152, column: 2, scope: !343, inlinedAt: !714)
!872 = !DILocation(line: 153, column: 2, scope: !343, inlinedAt: !714)
!873 = !DILocation(line: 154, column: 1, scope: !343, inlinedAt: !714)
!874 = !DILocation(line: 191, column: 6, scope: !716, inlinedAt: !717)
!875 = !DILocation(line: 192, column: 23, scope: !715, inlinedAt: !717)
!876 = !DILocation(line: 192, column: 27, scope: !715, inlinedAt: !717)
!877 = !DILocation(line: 192, column: 33, scope: !715, inlinedAt: !717)
!878 = !DILocation(line: 192, column: 7, scope: !715, inlinedAt: !717)
!879 = !DILocation(line: 192, column: 5, scope: !715, inlinedAt: !717)
!880 = !DILocation(line: 192, column: 3, scope: !715, inlinedAt: !717)
!881 = !DILocation(line: 193, column: 9, scope: !716, inlinedAt: !717)
!882 = !DILocation(line: 229, column: 11, scope: !712)
!883 = !DILocation(line: 229, column: 9, scope: !712)
!884 = !DILocation(line: 230, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !712, file: !3, line: 230, column: 6)
!886 = !DILocation(line: 230, column: 6, scope: !712)
!887 = !DILocation(line: 231, column: 10, scope: !885)
!888 = !DILocation(line: 231, column: 16, scope: !885)
!889 = !DILocation(line: 231, column: 14, scope: !885)
!890 = !DILocation(line: 231, column: 3, scope: !885)
!891 = !DILocation(line: 233, column: 2, scope: !712)
!892 = !DILocation(line: 233, column: 2, scope: !893)
!893 = distinct !DILexicalBlock(scope: !712, file: !3, line: 233, column: 2)
!894 = !DILocation(line: 233, column: 2, scope: !895)
!895 = distinct !DILexicalBlock(scope: !893, file: !3, line: 233, column: 2)
!896 = !{i32 -2143710777}
!897 = !DILocation(line: 233, column: 2, scope: !898)
!898 = distinct !DILexicalBlock(scope: !893, file: !3, line: 233, column: 2)
!899 = !DILocation(line: 233, column: 2, scope: !900)
!900 = distinct !DILexicalBlock(scope: !898, file: !3, line: 233, column: 2)
!901 = !DILocation(line: 233, column: 2, scope: !902)
!902 = distinct !DILexicalBlock(scope: !898, file: !3, line: 233, column: 2)
!903 = !DILocation(line: 235, column: 9, scope: !712)
!904 = !DILocation(line: 235, column: 2, scope: !712)
!905 = !DILocation(line: 236, column: 1, scope: !712)
!906 = distinct !DISubprogram(name: "dvb_ringbuffer_pkt_write", scope: !3, file: !3, line: 238, type: !340, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!907 = !DILocalVariable(name: "rbuf", arg: 1, scope: !906, file: !3, line: 238, type: !6)
!908 = !DILocation(line: 238, column: 57, scope: !906)
!909 = !DILocalVariable(name: "buf", arg: 2, scope: !906, file: !3, line: 238, type: !11)
!910 = !DILocation(line: 238, column: 67, scope: !906)
!911 = !DILocalVariable(name: "len", arg: 3, scope: !906, file: !3, line: 238, type: !57)
!912 = !DILocation(line: 238, column: 79, scope: !906)
!913 = !DILocalVariable(name: "status", scope: !906, file: !3, line: 240, type: !27)
!914 = !DILocation(line: 240, column: 6, scope: !906)
!915 = !DILocalVariable(name: "oldpwrite", scope: !906, file: !3, line: 241, type: !18)
!916 = !DILocation(line: 241, column: 10, scope: !906)
!917 = !DILocation(line: 241, column: 22, scope: !906)
!918 = !DILocation(line: 241, column: 28, scope: !906)
!919 = !DILocation(line: 243, column: 2, scope: !920)
!920 = distinct !DILexicalBlock(scope: !906, file: !3, line: 243, column: 2)
!921 = !DILocation(line: 244, column: 2, scope: !922)
!922 = distinct !DILexicalBlock(scope: !906, file: !3, line: 244, column: 2)
!923 = !DILocation(line: 245, column: 2, scope: !924)
!924 = distinct !DILexicalBlock(scope: !906, file: !3, line: 245, column: 2)
!925 = !DILocation(line: 246, column: 32, scope: !906)
!926 = !DILocation(line: 246, column: 38, scope: !906)
!927 = !DILocation(line: 246, column: 43, scope: !906)
!928 = !DILocation(line: 246, column: 11, scope: !906)
!929 = !DILocation(line: 246, column: 9, scope: !906)
!930 = !DILocation(line: 248, column: 6, scope: !931)
!931 = distinct !DILexicalBlock(scope: !906, file: !3, line: 248, column: 6)
!932 = !DILocation(line: 248, column: 13, scope: !931)
!933 = !DILocation(line: 248, column: 6, scope: !906)
!934 = !DILocation(line: 248, column: 33, scope: !931)
!935 = !DILocation(line: 248, column: 18, scope: !931)
!936 = !DILocation(line: 248, column: 24, scope: !931)
!937 = !DILocation(line: 248, column: 31, scope: !931)
!938 = !DILocation(line: 249, column: 9, scope: !906)
!939 = !DILocation(line: 249, column: 2, scope: !906)
!940 = distinct !DISubprogram(name: "dvb_ringbuffer_pkt_read_user", scope: !3, file: !3, line: 252, type: !941, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!941 = !DISubroutineType(types: !942)
!942 = !{!18, !6, !57, !27, !11, !57}
!943 = !DILocation(line: 138, column: 29, scope: !343, inlinedAt: !944)
!944 = distinct !DILocation(line: 199, column: 6, scope: !353, inlinedAt: !945)
!945 = distinct !DILocation(line: 274, column: 6, scope: !946)
!946 = distinct !DILexicalBlock(scope: !940, file: !3, line: 274, column: 6)
!947 = !DILocation(line: 138, column: 42, scope: !343, inlinedAt: !944)
!948 = !DILocation(line: 138, column: 54, scope: !343, inlinedAt: !944)
!949 = !DILocation(line: 140, column: 6, scope: !343, inlinedAt: !944)
!950 = !DILocation(line: 150, column: 6, scope: !367, inlinedAt: !944)
!951 = !DILocation(line: 197, column: 27, scope: !355, inlinedAt: !945)
!952 = !DILocation(line: 197, column: 43, scope: !355, inlinedAt: !945)
!953 = !DILocation(line: 197, column: 63, scope: !355, inlinedAt: !945)
!954 = !DILocation(line: 138, column: 29, scope: !343, inlinedAt: !955)
!955 = distinct !DILocation(line: 199, column: 6, scope: !353, inlinedAt: !956)
!956 = distinct !DILocation(line: 268, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !3, line: 268, column: 7)
!958 = distinct !DILexicalBlock(scope: !959, file: !3, line: 267, column: 17)
!959 = distinct !DILexicalBlock(scope: !940, file: !3, line: 267, column: 6)
!960 = !DILocation(line: 138, column: 42, scope: !343, inlinedAt: !955)
!961 = !DILocation(line: 138, column: 54, scope: !343, inlinedAt: !955)
!962 = !DILocation(line: 140, column: 6, scope: !343, inlinedAt: !955)
!963 = !DILocation(line: 150, column: 6, scope: !367, inlinedAt: !955)
!964 = !DILocation(line: 197, column: 27, scope: !355, inlinedAt: !956)
!965 = !DILocation(line: 197, column: 43, scope: !355, inlinedAt: !956)
!966 = !DILocation(line: 197, column: 63, scope: !355, inlinedAt: !956)
!967 = !DILocalVariable(name: "rbuf", arg: 1, scope: !940, file: !3, line: 252, type: !6)
!968 = !DILocation(line: 252, column: 61, scope: !940)
!969 = !DILocalVariable(name: "idx", arg: 2, scope: !940, file: !3, line: 252, type: !57)
!970 = !DILocation(line: 252, column: 74, scope: !940)
!971 = !DILocalVariable(name: "offset", arg: 3, scope: !940, file: !3, line: 253, type: !27)
!972 = !DILocation(line: 253, column: 9, scope: !940)
!973 = !DILocalVariable(name: "buf", arg: 4, scope: !940, file: !3, line: 253, type: !11)
!974 = !DILocation(line: 253, column: 28, scope: !940)
!975 = !DILocalVariable(name: "len", arg: 5, scope: !940, file: !3, line: 253, type: !57)
!976 = !DILocation(line: 253, column: 40, scope: !940)
!977 = !DILocalVariable(name: "todo", scope: !940, file: !3, line: 255, type: !57)
!978 = !DILocation(line: 255, column: 9, scope: !940)
!979 = !DILocalVariable(name: "split", scope: !940, file: !3, line: 256, type: !57)
!980 = !DILocation(line: 256, column: 9, scope: !940)
!981 = !DILocalVariable(name: "pktlen", scope: !940, file: !3, line: 257, type: !57)
!982 = !DILocation(line: 257, column: 9, scope: !940)
!983 = !DILocation(line: 259, column: 11, scope: !940)
!984 = !DILocation(line: 259, column: 17, scope: !940)
!985 = !DILocation(line: 259, column: 22, scope: !940)
!986 = !DILocation(line: 259, column: 27, scope: !940)
!987 = !DILocation(line: 259, column: 9, scope: !940)
!988 = !DILocation(line: 260, column: 12, scope: !940)
!989 = !DILocation(line: 260, column: 18, scope: !940)
!990 = !DILocation(line: 260, column: 24, scope: !940)
!991 = !DILocation(line: 260, column: 28, scope: !940)
!992 = !DILocation(line: 260, column: 35, scope: !940)
!993 = !DILocation(line: 260, column: 41, scope: !940)
!994 = !DILocation(line: 260, column: 33, scope: !940)
!995 = !DILocation(line: 260, column: 9, scope: !940)
!996 = !DILocation(line: 261, column: 6, scope: !997)
!997 = distinct !DILexicalBlock(scope: !940, file: !3, line: 261, column: 6)
!998 = !DILocation(line: 261, column: 15, scope: !997)
!999 = !DILocation(line: 261, column: 13, scope: !997)
!1000 = !DILocation(line: 261, column: 6, scope: !940)
!1001 = !DILocation(line: 261, column: 23, scope: !997)
!1002 = !DILocation(line: 262, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !940, file: !3, line: 262, column: 6)
!1004 = !DILocation(line: 262, column: 16, scope: !1003)
!1005 = !DILocation(line: 262, column: 14, scope: !1003)
!1006 = !DILocation(line: 262, column: 23, scope: !1003)
!1007 = !DILocation(line: 262, column: 21, scope: !1003)
!1008 = !DILocation(line: 262, column: 6, scope: !940)
!1009 = !DILocation(line: 262, column: 37, scope: !1003)
!1010 = !DILocation(line: 262, column: 46, scope: !1003)
!1011 = !DILocation(line: 262, column: 44, scope: !1003)
!1012 = !DILocation(line: 262, column: 35, scope: !1003)
!1013 = !DILocation(line: 262, column: 31, scope: !1003)
!1014 = !DILocation(line: 264, column: 9, scope: !940)
!1015 = !DILocation(line: 264, column: 13, scope: !940)
!1016 = !DILocation(line: 264, column: 43, scope: !940)
!1017 = !DILocation(line: 264, column: 41, scope: !940)
!1018 = !DILocation(line: 264, column: 53, scope: !940)
!1019 = !DILocation(line: 264, column: 59, scope: !940)
!1020 = !DILocation(line: 264, column: 51, scope: !940)
!1021 = !DILocation(line: 264, column: 6, scope: !940)
!1022 = !DILocation(line: 265, column: 9, scope: !940)
!1023 = !DILocation(line: 265, column: 7, scope: !940)
!1024 = !DILocation(line: 266, column: 12, scope: !940)
!1025 = !DILocation(line: 266, column: 18, scope: !940)
!1026 = !DILocation(line: 266, column: 16, scope: !940)
!1027 = !DILocation(line: 266, column: 25, scope: !940)
!1028 = !DILocation(line: 266, column: 31, scope: !940)
!1029 = !DILocation(line: 266, column: 23, scope: !940)
!1030 = !DILocation(line: 266, column: 10, scope: !940)
!1031 = !DILocation(line: 266, column: 39, scope: !940)
!1032 = !DILocation(line: 266, column: 45, scope: !940)
!1033 = !DILocation(line: 266, column: 52, scope: !940)
!1034 = !DILocation(line: 266, column: 50, scope: !940)
!1035 = !DILocation(line: 266, column: 8, scope: !940)
!1036 = !DILocation(line: 267, column: 6, scope: !959)
!1037 = !DILocation(line: 267, column: 12, scope: !959)
!1038 = !DILocation(line: 267, column: 6, scope: !940)
!1039 = !DILocation(line: 268, column: 20, scope: !957)
!1040 = !DILocation(line: 268, column: 25, scope: !957)
!1041 = !DILocation(line: 268, column: 31, scope: !957)
!1042 = !DILocation(line: 268, column: 36, scope: !957)
!1043 = !DILocation(line: 268, column: 35, scope: !957)
!1044 = !DILocation(line: 268, column: 41, scope: !957)
!1045 = !DILocation(line: 199, column: 6, scope: !353, inlinedAt: !956)
!1046 = !DILocation(line: 141, column: 6, scope: !426, inlinedAt: !955)
!1047 = !DILocation(line: 0, scope: !426, inlinedAt: !955)
!1048 = !DILocation(line: 141, column: 6, scope: !343, inlinedAt: !955)
!1049 = !DILocation(line: 142, column: 29, scope: !430, inlinedAt: !955)
!1050 = !DILocation(line: 142, column: 8, scope: !430, inlinedAt: !955)
!1051 = !DILocation(line: 142, column: 7, scope: !431, inlinedAt: !955)
!1052 = !DILocation(line: 143, column: 18, scope: !430, inlinedAt: !955)
!1053 = !DILocation(line: 143, column: 22, scope: !430, inlinedAt: !955)
!1054 = !DILocation(line: 143, column: 4, scope: !430, inlinedAt: !955)
!1055 = !DILocation(line: 144, column: 12, scope: !438, inlinedAt: !955)
!1056 = !DILocation(line: 144, column: 12, scope: !430, inlinedAt: !955)
!1057 = !DILocation(line: 145, column: 4, scope: !438, inlinedAt: !955)
!1058 = !DILocation(line: 147, column: 4, scope: !438, inlinedAt: !955)
!1059 = !DILocation(line: 148, column: 3, scope: !431, inlinedAt: !955)
!1060 = !DILocation(line: 150, column: 6, scope: !444, inlinedAt: !955)
!1061 = !DILocation(line: 150, column: 6, scope: !446, inlinedAt: !955)
!1062 = !DILocation(line: 150, column: 6, scope: !450, inlinedAt: !955)
!1063 = !DILocation(line: 150, column: 6, scope: !447, inlinedAt: !955)
!1064 = !DILocation(line: 150, column: 6, scope: !368, inlinedAt: !955)
!1065 = !DILocation(line: 150, column: 6, scope: !343, inlinedAt: !955)
!1066 = !DILocation(line: 151, column: 3, scope: !368, inlinedAt: !955)
!1067 = !DILocation(line: 152, column: 20, scope: !343, inlinedAt: !955)
!1068 = !DILocation(line: 152, column: 26, scope: !343, inlinedAt: !955)
!1069 = !DILocation(line: 152, column: 33, scope: !343, inlinedAt: !955)
!1070 = !DILocation(line: 152, column: 2, scope: !343, inlinedAt: !955)
!1071 = !DILocation(line: 153, column: 2, scope: !343, inlinedAt: !955)
!1072 = !DILocation(line: 154, column: 1, scope: !343, inlinedAt: !955)
!1073 = !DILocation(line: 199, column: 6, scope: !355, inlinedAt: !956)
!1074 = !DILocation(line: 200, column: 21, scope: !353, inlinedAt: !956)
!1075 = !DILocation(line: 200, column: 25, scope: !353, inlinedAt: !956)
!1076 = !DILocation(line: 200, column: 31, scope: !353, inlinedAt: !956)
!1077 = !DILocation(line: 200, column: 7, scope: !353, inlinedAt: !956)
!1078 = !DILocation(line: 200, column: 5, scope: !353, inlinedAt: !956)
!1079 = !DILocation(line: 200, column: 3, scope: !353, inlinedAt: !956)
!1080 = !DILocation(line: 201, column: 9, scope: !355, inlinedAt: !956)
!1081 = !DILocation(line: 268, column: 7, scope: !957)
!1082 = !DILocation(line: 268, column: 7, scope: !958)
!1083 = !DILocation(line: 269, column: 4, scope: !957)
!1084 = !DILocation(line: 270, column: 10, scope: !958)
!1085 = !DILocation(line: 270, column: 7, scope: !958)
!1086 = !DILocation(line: 271, column: 11, scope: !958)
!1087 = !DILocation(line: 271, column: 8, scope: !958)
!1088 = !DILocation(line: 272, column: 7, scope: !958)
!1089 = !DILocation(line: 273, column: 2, scope: !958)
!1090 = !DILocation(line: 274, column: 19, scope: !946)
!1091 = !DILocation(line: 274, column: 24, scope: !946)
!1092 = !DILocation(line: 274, column: 30, scope: !946)
!1093 = !DILocation(line: 274, column: 35, scope: !946)
!1094 = !DILocation(line: 274, column: 34, scope: !946)
!1095 = !DILocation(line: 274, column: 40, scope: !946)
!1096 = !DILocation(line: 199, column: 6, scope: !353, inlinedAt: !945)
!1097 = !DILocation(line: 141, column: 6, scope: !426, inlinedAt: !944)
!1098 = !DILocation(line: 0, scope: !426, inlinedAt: !944)
!1099 = !DILocation(line: 141, column: 6, scope: !343, inlinedAt: !944)
!1100 = !DILocation(line: 142, column: 29, scope: !430, inlinedAt: !944)
!1101 = !DILocation(line: 142, column: 8, scope: !430, inlinedAt: !944)
!1102 = !DILocation(line: 142, column: 7, scope: !431, inlinedAt: !944)
!1103 = !DILocation(line: 143, column: 18, scope: !430, inlinedAt: !944)
!1104 = !DILocation(line: 143, column: 22, scope: !430, inlinedAt: !944)
!1105 = !DILocation(line: 143, column: 4, scope: !430, inlinedAt: !944)
!1106 = !DILocation(line: 144, column: 12, scope: !438, inlinedAt: !944)
!1107 = !DILocation(line: 144, column: 12, scope: !430, inlinedAt: !944)
!1108 = !DILocation(line: 145, column: 4, scope: !438, inlinedAt: !944)
!1109 = !DILocation(line: 147, column: 4, scope: !438, inlinedAt: !944)
!1110 = !DILocation(line: 148, column: 3, scope: !431, inlinedAt: !944)
!1111 = !DILocation(line: 150, column: 6, scope: !444, inlinedAt: !944)
!1112 = !DILocation(line: 150, column: 6, scope: !446, inlinedAt: !944)
!1113 = !DILocation(line: 150, column: 6, scope: !450, inlinedAt: !944)
!1114 = !DILocation(line: 150, column: 6, scope: !447, inlinedAt: !944)
!1115 = !DILocation(line: 150, column: 6, scope: !368, inlinedAt: !944)
!1116 = !DILocation(line: 150, column: 6, scope: !343, inlinedAt: !944)
!1117 = !DILocation(line: 151, column: 3, scope: !368, inlinedAt: !944)
!1118 = !DILocation(line: 152, column: 20, scope: !343, inlinedAt: !944)
!1119 = !DILocation(line: 152, column: 26, scope: !343, inlinedAt: !944)
!1120 = !DILocation(line: 152, column: 33, scope: !343, inlinedAt: !944)
!1121 = !DILocation(line: 152, column: 2, scope: !343, inlinedAt: !944)
!1122 = !DILocation(line: 153, column: 2, scope: !343, inlinedAt: !944)
!1123 = !DILocation(line: 154, column: 1, scope: !343, inlinedAt: !944)
!1124 = !DILocation(line: 199, column: 6, scope: !355, inlinedAt: !945)
!1125 = !DILocation(line: 200, column: 21, scope: !353, inlinedAt: !945)
!1126 = !DILocation(line: 200, column: 25, scope: !353, inlinedAt: !945)
!1127 = !DILocation(line: 200, column: 31, scope: !353, inlinedAt: !945)
!1128 = !DILocation(line: 200, column: 7, scope: !353, inlinedAt: !945)
!1129 = !DILocation(line: 200, column: 5, scope: !353, inlinedAt: !945)
!1130 = !DILocation(line: 200, column: 3, scope: !353, inlinedAt: !945)
!1131 = !DILocation(line: 201, column: 9, scope: !355, inlinedAt: !945)
!1132 = !DILocation(line: 274, column: 6, scope: !946)
!1133 = !DILocation(line: 274, column: 6, scope: !940)
!1134 = !DILocation(line: 275, column: 3, scope: !946)
!1135 = !DILocation(line: 277, column: 9, scope: !940)
!1136 = !DILocation(line: 277, column: 2, scope: !940)
!1137 = !DILocation(line: 278, column: 1, scope: !940)
!1138 = distinct !DISubprogram(name: "dvb_ringbuffer_pkt_read", scope: !3, file: !3, line: 280, type: !941, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!1139 = !DILocalVariable(name: "rbuf", arg: 1, scope: !1138, file: !3, line: 280, type: !6)
!1140 = !DILocation(line: 280, column: 56, scope: !1138)
!1141 = !DILocalVariable(name: "idx", arg: 2, scope: !1138, file: !3, line: 280, type: !57)
!1142 = !DILocation(line: 280, column: 69, scope: !1138)
!1143 = !DILocalVariable(name: "offset", arg: 3, scope: !1138, file: !3, line: 281, type: !27)
!1144 = !DILocation(line: 281, column: 9, scope: !1138)
!1145 = !DILocalVariable(name: "buf", arg: 4, scope: !1138, file: !3, line: 281, type: !11)
!1146 = !DILocation(line: 281, column: 21, scope: !1138)
!1147 = !DILocalVariable(name: "len", arg: 5, scope: !1138, file: !3, line: 281, type: !57)
!1148 = !DILocation(line: 281, column: 33, scope: !1138)
!1149 = !DILocalVariable(name: "todo", scope: !1138, file: !3, line: 283, type: !57)
!1150 = !DILocation(line: 283, column: 9, scope: !1138)
!1151 = !DILocalVariable(name: "split", scope: !1138, file: !3, line: 284, type: !57)
!1152 = !DILocation(line: 284, column: 9, scope: !1138)
!1153 = !DILocalVariable(name: "pktlen", scope: !1138, file: !3, line: 285, type: !57)
!1154 = !DILocation(line: 285, column: 9, scope: !1138)
!1155 = !DILocation(line: 287, column: 11, scope: !1138)
!1156 = !DILocation(line: 287, column: 17, scope: !1138)
!1157 = !DILocation(line: 287, column: 22, scope: !1138)
!1158 = !DILocation(line: 287, column: 27, scope: !1138)
!1159 = !DILocation(line: 287, column: 9, scope: !1138)
!1160 = !DILocation(line: 288, column: 12, scope: !1138)
!1161 = !DILocation(line: 288, column: 18, scope: !1138)
!1162 = !DILocation(line: 288, column: 24, scope: !1138)
!1163 = !DILocation(line: 288, column: 28, scope: !1138)
!1164 = !DILocation(line: 288, column: 35, scope: !1138)
!1165 = !DILocation(line: 288, column: 41, scope: !1138)
!1166 = !DILocation(line: 288, column: 33, scope: !1138)
!1167 = !DILocation(line: 288, column: 9, scope: !1138)
!1168 = !DILocation(line: 289, column: 6, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 289, column: 6)
!1170 = !DILocation(line: 289, column: 15, scope: !1169)
!1171 = !DILocation(line: 289, column: 13, scope: !1169)
!1172 = !DILocation(line: 289, column: 6, scope: !1138)
!1173 = !DILocation(line: 289, column: 23, scope: !1169)
!1174 = !DILocation(line: 290, column: 7, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 290, column: 6)
!1176 = !DILocation(line: 290, column: 16, scope: !1175)
!1177 = !DILocation(line: 290, column: 14, scope: !1175)
!1178 = !DILocation(line: 290, column: 23, scope: !1175)
!1179 = !DILocation(line: 290, column: 21, scope: !1175)
!1180 = !DILocation(line: 290, column: 6, scope: !1138)
!1181 = !DILocation(line: 290, column: 37, scope: !1175)
!1182 = !DILocation(line: 290, column: 46, scope: !1175)
!1183 = !DILocation(line: 290, column: 44, scope: !1175)
!1184 = !DILocation(line: 290, column: 35, scope: !1175)
!1185 = !DILocation(line: 290, column: 31, scope: !1175)
!1186 = !DILocation(line: 292, column: 9, scope: !1138)
!1187 = !DILocation(line: 292, column: 13, scope: !1138)
!1188 = !DILocation(line: 292, column: 43, scope: !1138)
!1189 = !DILocation(line: 292, column: 41, scope: !1138)
!1190 = !DILocation(line: 292, column: 53, scope: !1138)
!1191 = !DILocation(line: 292, column: 59, scope: !1138)
!1192 = !DILocation(line: 292, column: 51, scope: !1138)
!1193 = !DILocation(line: 292, column: 6, scope: !1138)
!1194 = !DILocation(line: 293, column: 9, scope: !1138)
!1195 = !DILocation(line: 293, column: 7, scope: !1138)
!1196 = !DILocation(line: 294, column: 12, scope: !1138)
!1197 = !DILocation(line: 294, column: 18, scope: !1138)
!1198 = !DILocation(line: 294, column: 16, scope: !1138)
!1199 = !DILocation(line: 294, column: 25, scope: !1138)
!1200 = !DILocation(line: 294, column: 31, scope: !1138)
!1201 = !DILocation(line: 294, column: 23, scope: !1138)
!1202 = !DILocation(line: 294, column: 10, scope: !1138)
!1203 = !DILocation(line: 294, column: 39, scope: !1138)
!1204 = !DILocation(line: 294, column: 45, scope: !1138)
!1205 = !DILocation(line: 294, column: 52, scope: !1138)
!1206 = !DILocation(line: 294, column: 50, scope: !1138)
!1207 = !DILocation(line: 294, column: 8, scope: !1138)
!1208 = !DILocation(line: 295, column: 6, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 295, column: 6)
!1210 = !DILocation(line: 295, column: 12, scope: !1209)
!1211 = !DILocation(line: 295, column: 6, scope: !1138)
!1212 = !DILocation(line: 296, column: 10, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 295, column: 17)
!1214 = !DILocation(line: 296, column: 15, scope: !1213)
!1215 = !DILocation(line: 296, column: 21, scope: !1213)
!1216 = !DILocation(line: 296, column: 26, scope: !1213)
!1217 = !DILocation(line: 296, column: 25, scope: !1213)
!1218 = !DILocation(line: 296, column: 31, scope: !1213)
!1219 = !DILocation(line: 296, column: 3, scope: !1213)
!1220 = !DILocation(line: 297, column: 10, scope: !1213)
!1221 = !DILocation(line: 297, column: 7, scope: !1213)
!1222 = !DILocation(line: 298, column: 11, scope: !1213)
!1223 = !DILocation(line: 298, column: 8, scope: !1213)
!1224 = !DILocation(line: 299, column: 7, scope: !1213)
!1225 = !DILocation(line: 300, column: 2, scope: !1213)
!1226 = !DILocation(line: 301, column: 9, scope: !1138)
!1227 = !DILocation(line: 301, column: 14, scope: !1138)
!1228 = !DILocation(line: 301, column: 20, scope: !1138)
!1229 = !DILocation(line: 301, column: 25, scope: !1138)
!1230 = !DILocation(line: 301, column: 24, scope: !1138)
!1231 = !DILocation(line: 301, column: 30, scope: !1138)
!1232 = !DILocation(line: 301, column: 2, scope: !1138)
!1233 = !DILocation(line: 302, column: 9, scope: !1138)
!1234 = !DILocation(line: 302, column: 2, scope: !1138)
!1235 = !DILocation(line: 303, column: 1, scope: !1138)
!1236 = distinct !DISubprogram(name: "dvb_ringbuffer_pkt_dispose", scope: !3, file: !3, line: 305, type: !1237, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !6, !57}
!1239 = !DILocalVariable(name: "rbuf", arg: 1, scope: !1236, file: !3, line: 305, type: !6)
!1240 = !DILocation(line: 305, column: 56, scope: !1236)
!1241 = !DILocalVariable(name: "idx", arg: 2, scope: !1236, file: !3, line: 305, type: !57)
!1242 = !DILocation(line: 305, column: 69, scope: !1236)
!1243 = !DILocalVariable(name: "pktlen", scope: !1236, file: !3, line: 307, type: !57)
!1244 = !DILocation(line: 307, column: 9, scope: !1236)
!1245 = !DILocation(line: 309, column: 2, scope: !1236)
!1246 = !DILocation(line: 309, column: 8, scope: !1236)
!1247 = !DILocation(line: 309, column: 14, scope: !1236)
!1248 = !DILocation(line: 309, column: 18, scope: !1236)
!1249 = !DILocation(line: 309, column: 25, scope: !1236)
!1250 = !DILocation(line: 309, column: 31, scope: !1236)
!1251 = !DILocation(line: 309, column: 23, scope: !1236)
!1252 = !DILocation(line: 309, column: 37, scope: !1236)
!1253 = !DILocation(line: 312, column: 2, scope: !1236)
!1254 = !DILocation(line: 312, column: 29, scope: !1236)
!1255 = !DILocation(line: 312, column: 8, scope: !1236)
!1256 = !DILocation(line: 312, column: 35, scope: !1236)
!1257 = !DILocation(line: 313, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 313, column: 7)
!1259 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 312, column: 64)
!1260 = !DILocation(line: 313, column: 36, scope: !1258)
!1261 = !DILocation(line: 313, column: 7, scope: !1259)
!1262 = !DILocation(line: 314, column: 13, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 313, column: 53)
!1264 = !DILocation(line: 314, column: 42, scope: !1263)
!1265 = !DILocation(line: 314, column: 11, scope: !1263)
!1266 = !DILocation(line: 315, column: 14, scope: !1263)
!1267 = !DILocation(line: 315, column: 11, scope: !1263)
!1268 = !DILocation(line: 316, column: 4, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 316, column: 4)
!1270 = !DILocation(line: 317, column: 3, scope: !1263)
!1271 = !DILocation(line: 319, column: 4, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 317, column: 10)
!1273 = distinct !{!1273, !1253, !1274}
!1274 = !DILocation(line: 321, column: 2, scope: !1236)
!1275 = !DILocation(line: 322, column: 1, scope: !1236)
!1276 = distinct !DISubprogram(name: "dvb_ringbuffer_pkt_next", scope: !3, file: !3, line: 324, type: !1277, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !48)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!18, !6, !57, !1279}
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!1280 = !DILocalVariable(name: "rbuf", arg: 1, scope: !1276, file: !3, line: 324, type: !6)
!1281 = !DILocation(line: 324, column: 56, scope: !1276)
!1282 = !DILocalVariable(name: "idx", arg: 2, scope: !1276, file: !3, line: 324, type: !57)
!1283 = !DILocation(line: 324, column: 69, scope: !1276)
!1284 = !DILocalVariable(name: "pktlen", arg: 3, scope: !1276, file: !3, line: 324, type: !1279)
!1285 = !DILocation(line: 324, column: 82, scope: !1276)
!1286 = !DILocalVariable(name: "consumed", scope: !1276, file: !3, line: 326, type: !27)
!1287 = !DILocation(line: 326, column: 6, scope: !1276)
!1288 = !DILocalVariable(name: "curpktlen", scope: !1276, file: !3, line: 327, type: !27)
!1289 = !DILocation(line: 327, column: 6, scope: !1276)
!1290 = !DILocalVariable(name: "curpktstatus", scope: !1276, file: !3, line: 328, type: !27)
!1291 = !DILocation(line: 328, column: 6, scope: !1276)
!1292 = !DILocation(line: 330, column: 6, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 330, column: 6)
!1294 = !DILocation(line: 330, column: 10, scope: !1293)
!1295 = !DILocation(line: 330, column: 6, scope: !1276)
!1296 = !DILocation(line: 331, column: 15, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 330, column: 17)
!1298 = !DILocation(line: 331, column: 21, scope: !1297)
!1299 = !DILocation(line: 331, column: 13, scope: !1297)
!1300 = !DILocation(line: 332, column: 2, scope: !1297)
!1301 = !DILocation(line: 333, column: 15, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 332, column: 9)
!1303 = !DILocation(line: 333, column: 21, scope: !1302)
!1304 = !DILocation(line: 333, column: 26, scope: !1302)
!1305 = !DILocation(line: 333, column: 31, scope: !1302)
!1306 = !DILocation(line: 333, column: 13, scope: !1302)
!1307 = !DILocation(line: 334, column: 16, scope: !1302)
!1308 = !DILocation(line: 334, column: 22, scope: !1302)
!1309 = !DILocation(line: 334, column: 28, scope: !1302)
!1310 = !DILocation(line: 334, column: 32, scope: !1302)
!1311 = !DILocation(line: 334, column: 39, scope: !1302)
!1312 = !DILocation(line: 334, column: 45, scope: !1302)
!1313 = !DILocation(line: 334, column: 37, scope: !1302)
!1314 = !DILocation(line: 334, column: 13, scope: !1302)
!1315 = !DILocation(line: 335, column: 10, scope: !1302)
!1316 = !DILocation(line: 335, column: 16, scope: !1302)
!1317 = !DILocation(line: 335, column: 14, scope: !1302)
!1318 = !DILocation(line: 335, column: 26, scope: !1302)
!1319 = !DILocation(line: 335, column: 57, scope: !1302)
!1320 = !DILocation(line: 335, column: 63, scope: !1302)
!1321 = !DILocation(line: 335, column: 55, scope: !1302)
!1322 = !DILocation(line: 335, column: 7, scope: !1302)
!1323 = !DILocation(line: 338, column: 14, scope: !1276)
!1324 = !DILocation(line: 338, column: 20, scope: !1276)
!1325 = !DILocation(line: 338, column: 26, scope: !1276)
!1326 = !DILocation(line: 338, column: 18, scope: !1276)
!1327 = !DILocation(line: 338, column: 35, scope: !1276)
!1328 = !DILocation(line: 338, column: 41, scope: !1276)
!1329 = !DILocation(line: 338, column: 33, scope: !1276)
!1330 = !DILocation(line: 338, column: 13, scope: !1276)
!1331 = !DILocation(line: 338, column: 11, scope: !1276)
!1332 = !DILocation(line: 340, column: 2, scope: !1276)
!1333 = !DILocation(line: 340, column: 30, scope: !1276)
!1334 = !DILocation(line: 340, column: 9, scope: !1276)
!1335 = !DILocation(line: 340, column: 38, scope: !1276)
!1336 = !DILocation(line: 340, column: 36, scope: !1276)
!1337 = !DILocation(line: 340, column: 48, scope: !1276)
!1338 = !DILocation(line: 342, column: 15, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 340, column: 77)
!1340 = !DILocation(line: 342, column: 21, scope: !1339)
!1341 = !DILocation(line: 342, column: 26, scope: !1339)
!1342 = !DILocation(line: 342, column: 31, scope: !1339)
!1343 = !DILocation(line: 342, column: 13, scope: !1339)
!1344 = !DILocation(line: 343, column: 16, scope: !1339)
!1345 = !DILocation(line: 343, column: 22, scope: !1339)
!1346 = !DILocation(line: 343, column: 28, scope: !1339)
!1347 = !DILocation(line: 343, column: 32, scope: !1339)
!1348 = !DILocation(line: 343, column: 39, scope: !1339)
!1349 = !DILocation(line: 343, column: 45, scope: !1339)
!1350 = !DILocation(line: 343, column: 37, scope: !1339)
!1351 = !DILocation(line: 343, column: 13, scope: !1339)
!1352 = !DILocation(line: 344, column: 18, scope: !1339)
!1353 = !DILocation(line: 344, column: 24, scope: !1339)
!1354 = !DILocation(line: 344, column: 30, scope: !1339)
!1355 = !DILocation(line: 344, column: 34, scope: !1339)
!1356 = !DILocation(line: 344, column: 41, scope: !1339)
!1357 = !DILocation(line: 344, column: 47, scope: !1339)
!1358 = !DILocation(line: 344, column: 39, scope: !1339)
!1359 = !DILocation(line: 344, column: 16, scope: !1339)
!1360 = !DILocation(line: 346, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 346, column: 7)
!1362 = !DILocation(line: 346, column: 20, scope: !1361)
!1363 = !DILocation(line: 346, column: 7, scope: !1339)
!1364 = !DILocation(line: 347, column: 14, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 346, column: 34)
!1366 = !DILocation(line: 347, column: 5, scope: !1365)
!1367 = !DILocation(line: 347, column: 12, scope: !1365)
!1368 = !DILocation(line: 348, column: 11, scope: !1365)
!1369 = !DILocation(line: 348, column: 4, scope: !1365)
!1370 = !DILocation(line: 351, column: 15, scope: !1339)
!1371 = !DILocation(line: 351, column: 25, scope: !1339)
!1372 = !DILocation(line: 351, column: 12, scope: !1339)
!1373 = !DILocation(line: 352, column: 10, scope: !1339)
!1374 = !DILocation(line: 352, column: 16, scope: !1339)
!1375 = !DILocation(line: 352, column: 14, scope: !1339)
!1376 = !DILocation(line: 352, column: 26, scope: !1339)
!1377 = !DILocation(line: 352, column: 57, scope: !1339)
!1378 = !DILocation(line: 352, column: 63, scope: !1339)
!1379 = !DILocation(line: 352, column: 55, scope: !1339)
!1380 = !DILocation(line: 352, column: 7, scope: !1339)
!1381 = distinct !{!1381, !1332, !1382}
!1382 = !DILocation(line: 353, column: 2, scope: !1276)
!1383 = !DILocation(line: 356, column: 2, scope: !1276)
!1384 = !DILocation(line: 357, column: 1, scope: !1276)
!1385 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !329, file: !329, line: 646, type: !330, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !48)
!1386 = !DILocalVariable(name: "__ret", scope: !1387, file: !329, line: 648, type: !60)
!1387 = distinct !DILexicalBlock(scope: !1385, file: !329, line: 648, column: 9)
!1388 = !DILocation(line: 648, column: 9, scope: !1387)
!1389 = !DILocalVariable(name: "__edi", scope: !1387, file: !329, line: 648, type: !60)
!1390 = !DILocalVariable(name: "__esi", scope: !1387, file: !329, line: 648, type: !60)
!1391 = !DILocalVariable(name: "__edx", scope: !1387, file: !329, line: 648, type: !60)
!1392 = !DILocalVariable(name: "__ecx", scope: !1387, file: !329, line: 648, type: !60)
!1393 = !DILocalVariable(name: "__eax", scope: !1387, file: !329, line: 648, type: !60)
!1394 = !DILocation(line: 648, column: 9, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !329, line: 648, column: 9)
!1396 = distinct !DILexicalBlock(scope: !1387, file: !329, line: 648, column: 9)
!1397 = !{i32 -2145779784, i32 -2145777469, i32 -2145777235, i32 -2145777184, i32 -2145777156, i32 -2145777131, i32 -2145777447, i32 -2145777434, i32 -2145776996, i32 -2145776877, i32 -2145777342, i32 -2145777315, i32 -2145777287, i32 -2145777257}
!1398 = !DILocalVariable(name: "__mask", scope: !1399, file: !329, line: 648, type: !60)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !329, line: 648, column: 9)
!1400 = !DILocation(line: 648, column: 9, scope: !1399)
!1401 = !DILocation(line: 648, column: 9, scope: !1396)
!1402 = !DILocation(line: 648, column: 2, scope: !1385)
!1403 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !329, file: !329, line: 656, type: !1404, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !48)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null}
!1406 = !DILocalVariable(name: "__edi", scope: !1407, file: !329, line: 658, type: !60)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !329, line: 658, column: 2)
!1408 = !DILocation(line: 658, column: 2, scope: !1407)
!1409 = !DILocalVariable(name: "__esi", scope: !1407, file: !329, line: 658, type: !60)
!1410 = !DILocalVariable(name: "__edx", scope: !1407, file: !329, line: 658, type: !60)
!1411 = !DILocalVariable(name: "__ecx", scope: !1407, file: !329, line: 658, type: !60)
!1412 = !DILocalVariable(name: "__eax", scope: !1407, file: !329, line: 658, type: !60)
!1413 = !{i32 -2145772690, i32 -2145771958, i32 -2145771724, i32 -2145771673, i32 -2145771645, i32 -2145771620, i32 -2145771936, i32 -2145771923, i32 -2145771485, i32 -2145771366, i32 -2145771831, i32 -2145771804, i32 -2145771776, i32 -2145771746}
!1414 = !DILocation(line: 659, column: 1, scope: !1403)
!1415 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !329, file: !329, line: 651, type: !1416, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !48)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !60}
!1418 = !DILocalVariable(name: "f", arg: 1, scope: !1415, file: !329, line: 651, type: !60)
!1419 = !DILocation(line: 651, column: 65, scope: !1415)
!1420 = !DILocalVariable(name: "__edi", scope: !1421, file: !329, line: 653, type: !60)
!1421 = distinct !DILexicalBlock(scope: !1415, file: !329, line: 653, column: 2)
!1422 = !DILocation(line: 653, column: 2, scope: !1421)
!1423 = !DILocalVariable(name: "__esi", scope: !1421, file: !329, line: 653, type: !60)
!1424 = !DILocalVariable(name: "__edx", scope: !1421, file: !329, line: 653, type: !60)
!1425 = !DILocalVariable(name: "__ecx", scope: !1421, file: !329, line: 653, type: !60)
!1426 = !DILocalVariable(name: "__eax", scope: !1421, file: !329, line: 653, type: !60)
!1427 = !{i32 -2145775317, i32 -2145774567, i32 -2145774333, i32 -2145774282, i32 -2145774254, i32 -2145774229, i32 -2145774545, i32 -2145774532, i32 -2145774094, i32 -2145773975, i32 -2145774440, i32 -2145774413, i32 -2145774385, i32 -2145774355}
!1428 = !DILocation(line: 654, column: 1, scope: !1415)
!1429 = distinct !DISubprogram(name: "copy_overflow", scope: !344, file: !344, line: 132, type: !1430, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !48)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !27, !60}
!1432 = !DILocalVariable(name: "size", arg: 1, scope: !1429, file: !344, line: 132, type: !27)
!1433 = !DILocation(line: 132, column: 38, scope: !1429)
!1434 = !DILocalVariable(name: "count", arg: 2, scope: !1429, file: !344, line: 132, type: !60)
!1435 = !DILocation(line: 132, column: 58, scope: !1429)
!1436 = !DILocalVariable(name: "__ret_warn_on", scope: !1437, file: !344, line: 134, type: !27)
!1437 = distinct !DILexicalBlock(scope: !1429, file: !344, line: 134, column: 2)
!1438 = !DILocation(line: 134, column: 2, scope: !1437)
!1439 = !DILocation(line: 134, column: 2, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !344, line: 134, column: 2)
!1441 = !DILocation(line: 134, column: 2, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1440, file: !344, line: 134, column: 2)
!1443 = !DILocation(line: 134, column: 2, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1442, file: !344, line: 134, column: 2)
!1445 = !DILocation(line: 134, column: 2, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !344, line: 134, column: 2)
!1447 = !DILocation(line: 134, column: 2, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1446, file: !344, line: 134, column: 2)
!1449 = !DILocation(line: 134, column: 2, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !344, line: 134, column: 2)
!1451 = !{i32 -2145550481, i32 -2145550452, i32 -2145550406, i32 -2145550348, i32 -2145550294, i32 -2145550240, i32 -2145550185, i32 -2145550154}
!1452 = !DILocation(line: 134, column: 2, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1446, file: !344, line: 134, column: 2)
!1454 = !{i32 -2145549734, i32 -2145549727, i32 -2145549675, i32 -2145549644, i32 -2145549614}
!1455 = !DILocation(line: 134, column: 2, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1446, file: !344, line: 134, column: 2)
!1457 = !DILocation(line: 134, column: 2, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1442, file: !344, line: 134, column: 2)
!1459 = !DILocation(line: 135, column: 1, scope: !1429)
!1460 = distinct !DISubprogram(name: "check_object_size", scope: !344, file: !344, line: 122, type: !1461, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !48)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !349, !60, !347}
!1463 = !DILocalVariable(name: "ptr", arg: 1, scope: !1460, file: !344, line: 122, type: !349)
!1464 = !DILocation(line: 122, column: 50, scope: !1460)
!1465 = !DILocalVariable(name: "n", arg: 2, scope: !1460, file: !344, line: 122, type: !60)
!1466 = !DILocation(line: 122, column: 69, scope: !1460)
!1467 = !DILocalVariable(name: "to_user", arg: 3, scope: !1460, file: !344, line: 123, type: !347)
!1468 = !DILocation(line: 123, column: 15, scope: !1460)
!1469 = !DILocation(line: 124, column: 3, scope: !1460)
