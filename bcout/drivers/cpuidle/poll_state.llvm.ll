; ModuleID = '../bcout/drivers/cpuidle/poll_state.llvm.bc'
source_filename = "drivers/cpuidle/poll_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.20, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type opaque
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.vm_area_struct = type opaque
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.completion = type opaque
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
%struct.atomic_t = type { i32 }
%struct.seccomp_filter = type opaque
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.8 }
%struct.anon.8 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.12 }
%struct.anon.12 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.19, i32, [12 x i8] }
%union.anon.19 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.20 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type opaque
%struct.vm_struct = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.pgd_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.cpuidle_driver = type { i8*, %struct.module*, i8, [10 x %struct.cpuidle_state], i32, i32, %struct.cpumask*, i8* }
%struct.module = type opaque
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)*, i32 (%struct.cpuidle_device*, i32)*, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_kobj*], %struct.cpuidle_driver_kobj*, %struct.cpuidle_device_kobj*, %struct.list_head }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpuidle_state_kobj = type opaque
%struct.cpuidle_driver_kobj = type opaque
%struct.cpuidle_device_kobj = type opaque

@.str = private unnamed_addr constant [5 x i8] c"POLL\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"CPUIDLE CORE POLL IDLE\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@__preempt_count = external dso_local global i32, section ".data", align 4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_poll_state_init(%struct.cpuidle_driver* %drv) #0 !dbg !901 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %state = alloca %struct.cpuidle_state*, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !980, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state, metadata !982, metadata !DIExpression()), !dbg !984
  %0 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !985
  %states = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %0, i32 0, i32 3, !dbg !986
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states, i64 0, i64 0, !dbg !985
  store %struct.cpuidle_state* %arrayidx, %struct.cpuidle_state** %state, align 8, !dbg !984
  %1 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !987
  %name = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %1, i32 0, i32 0, !dbg !988
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !987
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #6, !dbg !989
  %2 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !990
  %desc = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %2, i32 0, i32 1, !dbg !991
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %desc, i64 0, i64 0, !dbg !990
  %call2 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay1, i64 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !992
  %3 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !993
  %exit_latency = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %3, i32 0, i32 5, !dbg !994
  store i32 0, i32* %exit_latency, align 4, !dbg !995
  %4 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !996
  %target_residency = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %4, i32 0, i32 7, !dbg !997
  store i32 0, i32* %target_residency, align 4, !dbg !998
  %5 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !999
  %exit_latency_ns = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %5, i32 0, i32 2, !dbg !1000
  store i64 0, i64* %exit_latency_ns, align 8, !dbg !1001
  %6 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !1002
  %target_residency_ns = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %6, i32 0, i32 3, !dbg !1003
  store i64 0, i64* %target_residency_ns, align 8, !dbg !1004
  %7 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !1005
  %power_usage = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %7, i32 0, i32 6, !dbg !1006
  store i32 -1, i32* %power_usage, align 8, !dbg !1007
  %8 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !1008
  %enter = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %8, i32 0, i32 8, !dbg !1009
  store i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @poll_idle, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)** %enter, align 8, !dbg !1010
  %9 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !1011
  %flags = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %9, i32 0, i32 4, !dbg !1012
  store i32 1, i32* %flags, align 8, !dbg !1013
  ret void, !dbg !1014
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @poll_idle(%struct.cpuidle_device* %dev, %struct.cpuidle_driver* %drv, i32 %index) #0 section ".cpuidle.text" !dbg !1015 {
entry:
  %pscr_ret__.i.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i.i, metadata !1016, metadata !DIExpression()), !dbg !1022
  %__vpp_verify.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i.i, metadata !1030, metadata !DIExpression()), !dbg !1034
  %pfo_val__.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i.i, metadata !1035, metadata !DIExpression()), !dbg !1037
  %tmp.i.i = alloca %struct.task_struct*, align 8
  %tmp1.i.i = alloca %struct.task_struct*, align 8
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %index.addr = alloca i32, align 4
  %time_start = alloca i64, align 8
  %loop_count = alloca i32, align 4
  %limit = alloca i64, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !1038, metadata !DIExpression()), !dbg !1039
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !1040, metadata !DIExpression()), !dbg !1041
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1042, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.declare(metadata i64* %time_start, metadata !1044, metadata !DIExpression()), !dbg !1045
  %call = call i64 @local_clock() #6, !dbg !1046
  store i64 %call, i64* %time_start, align 8, !dbg !1045
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1047
  %1 = bitcast %struct.cpuidle_device* %0 to i8*, !dbg !1048
  %bf.load = load i8, i8* %1, align 8, !dbg !1049
  %bf.clear = and i8 %bf.load, -5, !dbg !1049
  store i8 %bf.clear, i8* %1, align 8, !dbg !1049
  br label %do.body, !dbg !1050

do.body:                                          ; preds = %entry
  call void @arch_local_irq_enable() #6, !dbg !1051
  br label %do.end, !dbg !1051

do.end:                                           ; preds = %do.body
  %call1 = call zeroext i1 @current_set_polling_and_test() #6, !dbg !1053
  br i1 %call1, label %if.end11, label %if.then, !dbg !1054

if.then:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata i32* %loop_count, metadata !1055, metadata !DIExpression()), !dbg !1056
  store i32 0, i32* %loop_count, align 4, !dbg !1056
  call void @llvm.dbg.declare(metadata i64* %limit, metadata !1057, metadata !DIExpression()), !dbg !1058
  %2 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !1059
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1060
  %call2 = call i64 @cpuidle_poll_time(%struct.cpuidle_driver* %2, %struct.cpuidle_device* %3) #6, !dbg !1061
  store i64 %call2, i64* %limit, align 8, !dbg !1062
  br label %while.cond, !dbg !1063

while.cond:                                       ; preds = %if.end10, %if.then4, %if.then
  store i8* null, i8** %__vpp_verify.i.i, align 8, !dbg !1034
  %4 = load i8*, i8** %__vpp_verify.i.i, align 8, !dbg !1034
  %5 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !1037, !srcloc !1064
  store i64 %5, i64* %pfo_val__.i.i, align 8, !dbg !1037
  %6 = load i64, i64* %pfo_val__.i.i, align 8, !dbg !1037
  %7 = inttoptr i64 %6 to %struct.task_struct*, !dbg !1037
  store %struct.task_struct* %7, %struct.task_struct** %tmp.i.i, align 8, !dbg !1037
  %8 = load %struct.task_struct*, %struct.task_struct** %tmp.i.i, align 8, !dbg !1037
  store %struct.task_struct* %8, %struct.task_struct** %pscr_ret__.i.i, align 8, !dbg !1022
  %9 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i.i, align 8, !dbg !1022
  store %struct.task_struct* %9, %struct.task_struct** %tmp1.i.i, align 8, !dbg !1022
  %10 = load %struct.task_struct*, %struct.task_struct** %tmp1.i.i, align 8, !dbg !1022
  %11 = bitcast %struct.task_struct* %10 to %struct.thread_info*, !dbg !1065
  %call1.i = call i32 @test_ti_thread_flag(%struct.thread_info* %11, i32 3) #8, !dbg !1065
  %tobool.i = icmp ne i32 %call1.i, 0, !dbg !1065
  %lnot.i = xor i1 %tobool.i, true, !dbg !1065
  %lnot.ext.i = zext i1 %tobool.i to i32, !dbg !1065
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !1065
  %lnot = xor i1 %tobool.i, true, !dbg !1066
  br i1 %lnot, label %while.body, label %while.end, !dbg !1063

while.body:                                       ; preds = %while.cond
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1067, !srcloc !1076
  %12 = load i32, i32* %loop_count, align 4, !dbg !1077
  %inc = add i32 %12, 1, !dbg !1077
  store i32 %inc, i32* %loop_count, align 4, !dbg !1077
  %cmp = icmp ult i32 %12, 200, !dbg !1079
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1080

if.then4:                                         ; preds = %while.body
  br label %while.cond, !dbg !1081, !llvm.loop !1082

if.end:                                           ; preds = %while.body
  store i32 0, i32* %loop_count, align 4, !dbg !1084
  %call5 = call i64 @local_clock() #6, !dbg !1085
  %13 = load i64, i64* %time_start, align 8, !dbg !1087
  %sub = sub i64 %call5, %13, !dbg !1088
  %14 = load i64, i64* %limit, align 8, !dbg !1089
  %cmp6 = icmp ugt i64 %sub, %14, !dbg !1090
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !1091

if.then7:                                         ; preds = %if.end
  %15 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !1092
  %16 = bitcast %struct.cpuidle_device* %15 to i8*, !dbg !1094
  %bf.load8 = load i8, i8* %16, align 8, !dbg !1095
  %bf.clear9 = and i8 %bf.load8, -5, !dbg !1095
  %bf.set = or i8 %bf.clear9, 4, !dbg !1095
  store i8 %bf.set, i8* %16, align 8, !dbg !1095
  br label %while.end, !dbg !1096

if.end10:                                         ; preds = %if.end
  br label %while.cond, !dbg !1063, !llvm.loop !1082

while.end:                                        ; preds = %if.then7, %while.cond
  br label %if.end11, !dbg !1097

if.end11:                                         ; preds = %while.end, %do.end
  call void @current_clr_polling() #6, !dbg !1098
  %17 = load i32, i32* %index.addr, align 4, !dbg !1099
  ret i32 %17, !dbg !1100
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @local_clock() #0 !dbg !1101 {
entry:
  %call = call i64 @sched_clock_cpu(i32 0) #6, !dbg !1105
  ret i64 %call, !dbg !1106
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !1107 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1109, metadata !DIExpression()), !dbg !1111
  %0 = load i64, i64* %__edi, align 8, !dbg !1111
  store i64 %0, i64* %__edi, align 8, !dbg !1111
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1112, metadata !DIExpression()), !dbg !1111
  %1 = load i64, i64* %__esi, align 8, !dbg !1111
  store i64 %1, i64* %__esi, align 8, !dbg !1111
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1113, metadata !DIExpression()), !dbg !1111
  %2 = load i64, i64* %__edx, align 8, !dbg !1111
  store i64 %2, i64* %__edx, align 8, !dbg !1111
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1114, metadata !DIExpression()), !dbg !1111
  %3 = load i64, i64* %__ecx, align 8, !dbg !1111
  store i64 %3, i64* %__ecx, align 8, !dbg !1111
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1115, metadata !DIExpression()), !dbg !1111
  %4 = load i64, i64* %__eax, align 8, !dbg !1111
  store i64 %4, i64* %__eax, align 8, !dbg !1111
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !1111
  %6 = call i64 @llvm.read_register.i64(metadata !895), !dbg !1111
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #4, !dbg !1111, !srcloc !1116
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1111
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1111
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1111
  call void @llvm.write_register.i64(metadata !895, i64 %asmresult1), !dbg !1111
  ret void, !dbg !1117
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @current_set_polling_and_test() #0 !dbg !1118 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !1016, metadata !DIExpression()), !dbg !1120
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !1030, metadata !DIExpression()), !dbg !1122
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !1035, metadata !DIExpression()), !dbg !1123
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  call void @__current_set_polling() #6, !dbg !1124
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1125, !srcloc !1126
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !1122
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !1122
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !1123, !srcloc !1064
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !1123
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !1123
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !1123
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !1123
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !1123
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !1120
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !1120
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !1120
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !1120
  %7 = bitcast %struct.task_struct* %6 to %struct.thread_info*, !dbg !1127
  %call1 = call i32 @test_ti_thread_flag(%struct.thread_info* %7, i32 3) #6, !dbg !1127
  %tobool = icmp ne i32 %call1, 0, !dbg !1127
  %lnot = xor i1 %tobool, true, !dbg !1127
  %lnot2 = xor i1 %lnot, true, !dbg !1127
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1127
  %conv = sext i32 %lnot.ext to i64, !dbg !1127
  %tobool3 = icmp ne i64 %conv, 0, !dbg !1127
  ret i1 %tobool3, !dbg !1128
}

; Function Attrs: noredzone
declare dso_local i64 @cpuidle_poll_time(%struct.cpuidle_driver*, %struct.cpuidle_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @current_clr_polling() #0 !dbg !1129 {
entry:
  %pto_val__.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pto_val__.i, metadata !1130, metadata !DIExpression()), !dbg !1134
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !1016, metadata !DIExpression()), !dbg !1138
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !1030, metadata !DIExpression()), !dbg !1140
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !1035, metadata !DIExpression()), !dbg !1141
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  call void @__current_clr_polling() #6, !dbg !1142
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1143, !srcloc !1144
  br label %do.body, !dbg !1145

do.body:                                          ; preds = %entry
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !1140
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !1140
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !1141, !srcloc !1064
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !1141
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !1141
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !1141
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !1141
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !1141
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !1138
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !1138
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !1138
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !1138
  %7 = bitcast %struct.task_struct* %6 to %struct.thread_info*, !dbg !1146
  %call1 = call i32 @test_ti_thread_flag(%struct.thread_info* %7, i32 3) #6, !dbg !1146
  %tobool = icmp ne i32 %call1, 0, !dbg !1146
  br i1 %tobool, label %if.then, label %if.end, !dbg !1147

if.then:                                          ; preds = %do.body
  store i32 2147483647, i32* %pto_val__.i, align 4, !dbg !1134
  %8 = load i32, i32* %pto_val__.i, align 4, !dbg !1134
  call void asm "andl $1, $0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(i32* @__preempt_count, i32 %8, i32* @__preempt_count) #4, !dbg !1134, !srcloc !1148
  br label %if.end, !dbg !1146

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !1147

do.end:                                           ; preds = %if.end
  ret void, !dbg !1149
}

; Function Attrs: noredzone
declare dso_local i64 @sched_clock_cpu(i32) #2

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__current_set_polling() #0 !dbg !1150 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !1016, metadata !DIExpression()), !dbg !1151
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !1030, metadata !DIExpression()), !dbg !1153
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !1035, metadata !DIExpression()), !dbg !1154
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !1153
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !1153
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !1154, !srcloc !1064
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !1154
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !1154
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !1154
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !1154
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !1154
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !1151
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !1151
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !1151
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !1151
  %7 = bitcast %struct.task_struct* %6 to %struct.thread_info*, !dbg !1155
  call void @set_ti_thread_flag(%struct.thread_info* %7, i32 21) #6, !dbg !1155
  ret void, !dbg !1156
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #0 !dbg !1157 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !1161, metadata !DIExpression()), !dbg !1162
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !1163, metadata !DIExpression()), !dbg !1164
  %0 = load i32, i32* %flag.addr, align 4, !dbg !1165
  %conv = sext i32 %0 to i64, !dbg !1165
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !1166
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !1167
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %flags) #6, !dbg !1168
  %conv1 = zext i1 %call to i32, !dbg !1168
  ret i32 %conv1, !dbg !1169
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #0 !dbg !1170 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !1173, metadata !DIExpression()), !dbg !1174
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !1175, metadata !DIExpression()), !dbg !1176
  %0 = load i32, i32* %flag.addr, align 4, !dbg !1177
  %conv = sext i32 %0 to i64, !dbg !1177
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !1178
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !1179
  call void @set_bit(i64 %conv, i64* %flags) #6, !dbg !1180
  ret void, !dbg !1181
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !1182 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1188, metadata !DIExpression()), !dbg !1191
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1193, metadata !DIExpression()), !dbg !1194
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !1195, metadata !DIExpression()), !dbg !1203
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1205, metadata !DIExpression()), !dbg !1206
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1207, metadata !DIExpression()), !dbg !1208
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1209, metadata !DIExpression()), !dbg !1210
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1211
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1212
  %div = sdiv i64 %1, 64, !dbg !1212
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1213
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1211
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1214
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1215
  %conv.i = trunc i64 %4 to i32, !dbg !1215
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !1216
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1217
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1217
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #8, !dbg !1217
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1218
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !1219
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !1220
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #4, !dbg !1222
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !1223

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !1224
  %12 = bitcast i64* %11 to i8*, !dbg !1224
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !1224
  %shr.i = ashr i64 %13, 3, !dbg !1224
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !1224
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !1226
  %and.i = and i64 %14, 7, !dbg !1226
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !1226
  %shl.i = shl i32 1, %sh_prom.i, !dbg !1226
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #4, !dbg !1227, !srcloc !1228
  br label %arch_set_bit.exit, !dbg !1229

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !1230
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !1232
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #4, !dbg !1233, !srcloc !1234
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !1235
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !1236 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1240, metadata !DIExpression()), !dbg !1241
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1242, metadata !DIExpression()), !dbg !1243
  ret i1 true, !dbg !1244
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !1245 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1249, metadata !DIExpression()), !dbg !1250
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1251, metadata !DIExpression()), !dbg !1252
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !1253, metadata !DIExpression()), !dbg !1254
  ret void, !dbg !1255
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !1256 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !1262, metadata !DIExpression()), !dbg !1264
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !1266, metadata !DIExpression()), !dbg !1267
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !1268, metadata !DIExpression()), !dbg !1269
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1270, metadata !DIExpression()), !dbg !1272
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1274, metadata !DIExpression()), !dbg !1275
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !1276, metadata !DIExpression()), !dbg !1278
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1280, metadata !DIExpression()), !dbg !1281
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1282, metadata !DIExpression()), !dbg !1283
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1284, metadata !DIExpression()), !dbg !1285
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1286
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1287
  %div = sdiv i64 %1, 64, !dbg !1287
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1288
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1286
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1289
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1290
  %conv.i = trunc i64 %4 to i32, !dbg !1290
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #8, !dbg !1291
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1292
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1292
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #8, !dbg !1292
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1293
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !1293
  br i1 %8, label %cond.true, label %cond.false, !dbg !1293

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !1293
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !1293
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !1294
  %and.i = and i64 %11, 63, !dbg !1295
  %shl.i = shl i64 1, %and.i, !dbg !1296
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !1297
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !1298
  %shr.i = ashr i64 %13, 6, !dbg !1299
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !1297
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !1297
  %and1.i = and i64 %shl.i, %14, !dbg !1300
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !1301
  %conv = zext i1 %cmp.i to i32, !dbg !1293
  br label %cond.end, !dbg !1293

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !1293
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !1293
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !1302
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !1303
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #4, !dbg !1304, !srcloc !1305
  store i8 %19, i8* %oldbit.i, align 1, !dbg !1304
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !1306
  %tobool.i = trunc i8 %20 to i1, !dbg !1306
  %conv2 = zext i1 %tobool.i to i32, !dbg !1293
  br label %cond.end, !dbg !1293

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1293
  %tobool = icmp ne i32 %cond, 0, !dbg !1293
  ret i1 %tobool, !dbg !1307
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !1308 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1309, metadata !DIExpression()), !dbg !1310
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1311, metadata !DIExpression()), !dbg !1312
  ret i1 true, !dbg !1313
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__current_clr_polling() #0 !dbg !1314 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !1016, metadata !DIExpression()), !dbg !1315
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !1030, metadata !DIExpression()), !dbg !1317
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !1035, metadata !DIExpression()), !dbg !1318
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !1317
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !1317
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #7, !dbg !1318, !srcloc !1064
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !1318
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !1318
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !1318
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !1318
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !1318
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !1315
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !1315
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !1315
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !1315
  %7 = bitcast %struct.task_struct* %6 to %struct.thread_info*, !dbg !1319
  call void @clear_ti_thread_flag(%struct.thread_info* %7, i32 21) #6, !dbg !1319
  ret void, !dbg !1320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #0 !dbg !1321 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !1322, metadata !DIExpression()), !dbg !1323
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !1324, metadata !DIExpression()), !dbg !1325
  %0 = load i32, i32* %flag.addr, align 4, !dbg !1326
  %conv = sext i32 %0 to i64, !dbg !1326
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !1327
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !1328
  call void @clear_bit(i64 %conv, i64* %flags) #6, !dbg !1329
  ret void, !dbg !1330
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !1331 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1332, metadata !DIExpression()), !dbg !1334
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1336, metadata !DIExpression()), !dbg !1337
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !1195, metadata !DIExpression()), !dbg !1338
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1205, metadata !DIExpression()), !dbg !1340
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1341, metadata !DIExpression()), !dbg !1342
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1343, metadata !DIExpression()), !dbg !1344
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1345
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1346
  %div = sdiv i64 %1, 64, !dbg !1346
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1347
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1345
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1348
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1349
  %conv.i = trunc i64 %4 to i32, !dbg !1349
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !1350
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1351
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1351
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #8, !dbg !1351
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1352
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !1353
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !1354
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #4, !dbg !1356
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !1357

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !1358
  %12 = bitcast i64* %11 to i8*, !dbg !1358
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !1358
  %shr.i = ashr i64 %13, 3, !dbg !1358
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !1358
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !1360
  %and.i = and i64 %14, 7, !dbg !1360
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !1360
  %shl.i = shl i32 1, %sh_prom.i, !dbg !1360
  %neg.i = xor i32 %shl.i, -1, !dbg !1361
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #4, !dbg !1362, !srcloc !1363
  br label %arch_clear_bit.exit, !dbg !1364

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !1365
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !1367
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #4, !dbg !1368, !srcloc !1369
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !1370
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noredzone }
attributes #7 = { nounwind readnone }
attributes #8 = { noredzone nounwind }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!895}
!llvm.module.flags = !{!896, !897, !898, !899}
!llvm.ident = !{!900}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !20, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/cpuidle/poll_state.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !14}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !10, line: 65, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!11 = !{!12, !13}
!12 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !15, line: 16, baseType: !5, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!20 = !{!21, !32, !33, !36, !37, !40, !41, !26, !28}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !23, line: 56, size: 128, elements: !24)
!23 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !27}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !22, file: !23, line: 57, baseType: !26, size: 64)
!26 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !22, file: !23, line: 58, baseType: !28, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !29, line: 21, baseType: !30)
!29 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !31, line: 27, baseType: !5)
!31 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!39 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !43, line: 640, size: 48640, elements: !44)
!43 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !46, !47, !48, !60, !61, !62, !63, !64, !65, !66, !67, !71, !105, !117, !227, !228, !229, !240, !241, !243, !244, !248, !249, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !333, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !396, !398, !399, !400, !404, !406, !407, !408, !409, !410, !416, !417, !418, !419, !420, !421, !422, !436, !441, !445, !446, !447, !450, !454, !457, !460, !463, !466, !469, !472, !475, !481, !482, !483, !489, !490, !494, !495, !496, !505, !506, !507, !508, !509, !514, !515, !516, !519, !520, !523, !526, !529, !532, !535, !538, !539, !621, !624, !627, !628, !631, !644, !645, !651, !652, !653, !666, !667, !668, !680, !685, !688, !696, !697, !698, !699, !700, !701, !702, !703, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !42, file: !43, line: 646, baseType: !22, size: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !42, file: !43, line: 649, baseType: !38, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !42, file: !43, line: 657, baseType: !36, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !42, file: !43, line: 658, baseType: !49, size: 32, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !50, line: 113, baseType: !51)
!50 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !50, line: 111, size: 32, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !51, file: !50, line: 112, baseType: !54, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !55, line: 168, baseType: !56)
!55 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 166, size: 32, elements: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !56, file: !55, line: 167, baseType: !59, size: 32)
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !42, file: !43, line: 660, baseType: !5, size: 32, offset: 288)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !42, file: !43, line: 661, baseType: !5, size: 32, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !42, file: !43, line: 684, baseType: !59, size: 32, offset: 352)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !42, file: !43, line: 686, baseType: !59, size: 32, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !42, file: !43, line: 687, baseType: !59, size: 32, offset: 416)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !42, file: !43, line: 688, baseType: !59, size: 32, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !42, file: !43, line: 689, baseType: !5, size: 32, offset: 480)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !42, file: !43, line: 691, baseType: !68, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !43, line: 691, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !42, file: !43, line: 692, baseType: !72, size: 832, offset: 576)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !43, line: 451, size: 832, elements: !73)
!73 = !{!74, !79, !87, !93, !94, !98, !99, !100, !101, !102}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !72, file: !43, line: 453, baseType: !75, size: 128)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !43, line: 325, size: 128, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !75, file: !43, line: 326, baseType: !26, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !75, file: !43, line: 327, baseType: !28, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !72, file: !43, line: 454, baseType: !80, size: 192, align: 64, offset: 128)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !81, line: 24, size: 192, align: 64, elements: !82)
!81 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !86}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !80, file: !81, line: 25, baseType: !26, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !80, file: !81, line: 26, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !80, file: !81, line: 27, baseType: !85, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !72, file: !43, line: 455, baseType: !88, size: 128, offset: 320)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !55, line: 178, size: 128, elements: !89)
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !55, line: 179, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !88, file: !55, line: 179, baseType: !91, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !72, file: !43, line: 456, baseType: !5, size: 32, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !72, file: !43, line: 458, baseType: !95, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !29, line: 23, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !31, line: 31, baseType: !97)
!97 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !72, file: !43, line: 459, baseType: !95, size: 64, offset: 576)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !72, file: !43, line: 460, baseType: !95, size: 64, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !72, file: !43, line: 461, baseType: !95, size: 64, offset: 704)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !72, file: !43, line: 463, baseType: !95, size: 64, offset: 768)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !72, file: !43, line: 465, baseType: !103, offset: 832)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !43, line: 415, elements: !104)
!104 = !{}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !42, file: !43, line: 693, baseType: !106, size: 384, offset: 1408)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !43, line: 489, size: 384, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !114, !115}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !106, file: !43, line: 490, baseType: !88, size: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !106, file: !43, line: 491, baseType: !26, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !106, file: !43, line: 492, baseType: !26, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !106, file: !43, line: 493, baseType: !5, size: 32, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !106, file: !43, line: 494, baseType: !113, size: 16, offset: 288)
!113 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !106, file: !43, line: 495, baseType: !113, size: 16, offset: 304)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !106, file: !43, line: 497, baseType: !116, size: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !42, file: !43, line: 697, baseType: !118, size: 1792, offset: 1792)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !43, line: 507, size: 1792, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !126, !130, !131, !132, !133, !134, !135, !136, !224, !225}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !118, file: !43, line: 508, baseType: !80, size: 192, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !118, file: !43, line: 515, baseType: !95, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !118, file: !43, line: 516, baseType: !95, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !118, file: !43, line: 517, baseType: !95, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !118, file: !43, line: 518, baseType: !95, size: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !118, file: !43, line: 519, baseType: !95, size: 64, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !118, file: !43, line: 526, baseType: !127, size: 64, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !29, line: 22, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !31, line: 30, baseType: !129)
!129 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !118, file: !43, line: 527, baseType: !95, size: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !43, line: 528, baseType: !5, size: 32, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !118, file: !43, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !118, file: !43, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !118, file: !43, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !118, file: !43, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !118, file: !43, line: 563, baseType: !137, size: 512, offset: 704)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !10, line: 118, size: 512, elements: !138)
!138 = !{!139, !147, !148, !153, !217, !221, !222, !223}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !137, file: !10, line: 119, baseType: !140, size: 256)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !141, line: 9, size: 256, elements: !142)
!141 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !140, file: !141, line: 10, baseType: !80, size: 192, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !140, file: !141, line: 11, baseType: !145, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !146, line: 29, baseType: !127)
!146 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !137, file: !10, line: 120, baseType: !145, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !137, file: !10, line: 121, baseType: !149, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!9, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !137, file: !10, line: 122, baseType: !154, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !10, line: 159, size: 512, align: 512, elements: !156)
!156 = !{!157, !185, !186, !190, !200, !201, !212, !216}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !155, file: !10, line: 160, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !10, line: 214, size: 4608, align: 512, elements: !160)
!160 = !{!161, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !159, file: !10, line: 215, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !163, line: 29, baseType: !164)
!163 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !163, line: 20, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !164, file: !163, line: 21, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !168, line: 25, baseType: !169)
!168 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 25, elements: !104)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !159, file: !10, line: 216, baseType: !5, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !159, file: !10, line: 217, baseType: !5, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !159, file: !10, line: 218, baseType: !5, size: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !159, file: !10, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !159, file: !10, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !159, file: !10, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !159, file: !10, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !159, file: !10, line: 233, baseType: !145, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !159, file: !10, line: 234, baseType: !152, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !159, file: !10, line: 235, baseType: !145, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !159, file: !10, line: 236, baseType: !152, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !159, file: !10, line: 237, baseType: !182, size: 4096, offset: 512)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 4096, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !155, file: !10, line: 161, baseType: !5, size: 32, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !155, file: !10, line: 162, baseType: !187, size: 32, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !55, line: 27, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !189, line: 96, baseType: !59)
!189 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!190 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !155, file: !10, line: 163, baseType: !191, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !192, line: 276, baseType: !193)
!192 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !192, line: 276, size: 32, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !193, file: !192, line: 276, baseType: !196, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !192, line: 70, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !192, line: 65, size: 32, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !197, file: !192, line: 66, baseType: !5, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !155, file: !10, line: 164, baseType: !152, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !155, file: !10, line: 165, baseType: !202, size: 128, offset: 256)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !141, line: 14, size: 128, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !202, file: !141, line: 15, baseType: !205, size: 128)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !81, line: 125, size: 128, elements: !206)
!206 = !{!207, !211}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !205, file: !81, line: 126, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !81, line: 31, size: 64, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !208, file: !81, line: 32, baseType: !85, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !205, file: !81, line: 127, baseType: !85, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !155, file: !10, line: 166, baseType: !213, size: 64, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!145}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !155, file: !10, line: 167, baseType: !145, size: 64, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !137, file: !10, line: 123, baseType: !218, size: 8, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !29, line: 17, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !31, line: 21, baseType: !220)
!220 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !137, file: !10, line: 124, baseType: !218, size: 8, offset: 456)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !137, file: !10, line: 125, baseType: !218, size: 8, offset: 464)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !137, file: !10, line: 126, baseType: !218, size: 8, offset: 472)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !118, file: !43, line: 572, baseType: !137, size: 512, offset: 1216)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !118, file: !43, line: 580, baseType: !226, size: 64, offset: 1728)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !42, file: !43, line: 721, baseType: !5, size: 32, offset: 3584)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !42, file: !43, line: 722, baseType: !59, size: 32, offset: 3616)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !42, file: !43, line: 723, baseType: !230, size: 64, offset: 3648)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !233, line: 17, baseType: !234)
!233 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !233, line: 17, size: 64, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !234, file: !233, line: 17, baseType: !237, size: 64)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 1)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !42, file: !43, line: 724, baseType: !232, size: 64, offset: 3712)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !42, file: !43, line: 749, baseType: !242, offset: 3776)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !43, line: 290, elements: !104)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !42, file: !43, line: 751, baseType: !88, size: 128, offset: 3776)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !42, file: !43, line: 757, baseType: !245, size: 64, offset: 3904)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !247, line: 10, flags: DIFlagFwdDecl)
!247 = !DIFile(filename: "./include/linux/mmdebug.h", directory: "/home/lizy2001/genbc/linux")
!248 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !42, file: !43, line: 758, baseType: !245, size: 64, offset: 3968)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !42, file: !43, line: 761, baseType: !250, size: 320, offset: 4032)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !251, line: 34, size: 320, elements: !252)
!251 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !250, file: !251, line: 35, baseType: !95, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !250, file: !251, line: 36, baseType: !255, size: 256, offset: 64)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 256, elements: !258)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !247, line: 9, flags: DIFlagFwdDecl)
!258 = !{!259}
!259 = !DISubrange(count: 4)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !42, file: !43, line: 766, baseType: !59, size: 32, offset: 4352)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !42, file: !43, line: 767, baseType: !59, size: 32, offset: 4384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !42, file: !43, line: 768, baseType: !59, size: 32, offset: 4416)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !42, file: !43, line: 770, baseType: !59, size: 32, offset: 4448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !42, file: !43, line: 772, baseType: !26, size: 64, offset: 4480)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !42, file: !43, line: 775, baseType: !5, size: 32, offset: 4544)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !42, file: !43, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !42, file: !43, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !42, file: !43, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !42, file: !43, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !42, file: !43, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !42, file: !43, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !42, file: !43, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !42, file: !43, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !42, file: !43, line: 831, baseType: !26, size: 64, offset: 4672)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !42, file: !43, line: 833, baseType: !276, size: 384, offset: 4736)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !15, line: 25, size: 384, elements: !277)
!277 = !{!278, !283}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !276, file: !15, line: 26, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!39, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !276, file: !15, line: 27, baseType: !284, size: 320, offset: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !276, file: !15, line: 27, size: 320, elements: !285)
!285 = !{!286, !296, !323}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !284, file: !15, line: 36, baseType: !287, size: 320)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !15, line: 29, size: 320, elements: !288)
!288 = !{!289, !291, !292, !293, !294, !295}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !287, file: !15, line: 30, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !287, file: !15, line: 31, baseType: !28, size: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !15, line: 32, baseType: !28, size: 32, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !287, file: !15, line: 33, baseType: !28, size: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !287, file: !15, line: 34, baseType: !95, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !287, file: !15, line: 35, baseType: !290, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !284, file: !15, line: 46, baseType: !297, size: 192)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !15, line: 38, size: 192, elements: !298)
!298 = !{!299, !300, !301, !322}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !297, file: !15, line: 39, baseType: !187, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !297, file: !15, line: 40, baseType: !14, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !15, line: 41, baseType: !302, size: 64, offset: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !15, line: 41, size: 64, elements: !303)
!303 = !{!304, !312}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !302, file: !15, line: 42, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !307, line: 7, size: 128, elements: !308)
!307 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!308 = !{!309, !311}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !306, file: !307, line: 8, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !189, line: 93, baseType: !129)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !306, file: !307, line: 9, baseType: !129, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !302, file: !15, line: 43, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !315, line: 7, size: 64, elements: !316)
!315 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!316 = !{!317, !321}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !314, file: !315, line: 8, baseType: !318, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !315, line: 5, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !29, line: 20, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !31, line: 26, baseType: !59)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !314, file: !315, line: 9, baseType: !319, size: 32, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !297, file: !15, line: 45, baseType: !95, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !284, file: !15, line: 54, baseType: !324, size: 256)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !15, line: 48, size: 256, elements: !325)
!325 = !{!326, !329, !330, !331, !332}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !324, file: !15, line: 49, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !15, line: 14, flags: DIFlagFwdDecl)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !324, file: !15, line: 50, baseType: !59, size: 32, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !324, file: !15, line: 51, baseType: !59, size: 32, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !324, file: !15, line: 52, baseType: !26, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !324, file: !15, line: 53, baseType: !26, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !42, file: !43, line: 835, baseType: !334, size: 32, offset: 5120)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !55, line: 22, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !189, line: 28, baseType: !59)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !42, file: !43, line: 836, baseType: !334, size: 32, offset: 5152)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !42, file: !43, line: 840, baseType: !26, size: 64, offset: 5184)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !42, file: !43, line: 849, baseType: !41, size: 64, offset: 5248)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !42, file: !43, line: 852, baseType: !41, size: 64, offset: 5312)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !42, file: !43, line: 857, baseType: !88, size: 128, offset: 5376)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !42, file: !43, line: 858, baseType: !88, size: 128, offset: 5504)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !42, file: !43, line: 859, baseType: !41, size: 64, offset: 5632)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !42, file: !43, line: 867, baseType: !88, size: 128, offset: 5696)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !42, file: !43, line: 868, baseType: !88, size: 128, offset: 5824)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !42, file: !43, line: 871, baseType: !346, size: 64, offset: 5952)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !348, line: 59, size: 768, elements: !349)
!348 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!349 = !{!350, !351, !352, !360, !371, !372, !379, !388}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !347, file: !348, line: 61, baseType: !49, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !347, file: !348, line: 62, baseType: !5, size: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !347, file: !348, line: 63, baseType: !353, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !163, line: 83, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !163, line: 71, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !163, line: 72, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !163, line: 72, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !357, file: !163, line: 73, baseType: !164)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !347, file: !348, line: 65, baseType: !361, size: 256, offset: 64)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 256, elements: !258)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !55, line: 182, size: 64, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !362, file: !55, line: 183, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !55, line: 186, size: 128, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !55, line: 187, baseType: !365, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !366, file: !55, line: 187, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !347, file: !348, line: 66, baseType: !362, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !347, file: !348, line: 68, baseType: !373, size: 128, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !374, line: 40, baseType: !375)
!374 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !374, line: 36, size: 128, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !375, file: !374, line: 37, baseType: !353)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !375, file: !374, line: 38, baseType: !88, size: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !347, file: !348, line: 69, baseType: !380, size: 128, align: 64, offset: 512)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !55, line: 216, size: 128, align: 64, elements: !381)
!381 = !{!382, !384}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !55, line: 217, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !380, file: !55, line: 218, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !383}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !347, file: !348, line: 70, baseType: !389, size: 128, offset: 640)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 128, elements: !238)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !348, line: 54, size: 128, elements: !391)
!391 = !{!392, !393}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !390, file: !348, line: 55, baseType: !59, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !390, file: !348, line: 56, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !348, line: 56, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !42, file: !43, line: 872, baseType: !397, size: 512, offset: 6016)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 512, elements: !258)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !42, file: !43, line: 873, baseType: !88, size: 128, offset: 6528)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !42, file: !43, line: 874, baseType: !88, size: 128, offset: 6656)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !42, file: !43, line: 876, baseType: !401, size: 64, offset: 6784)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !403, line: 192, flags: DIFlagFwdDecl)
!403 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!404 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !42, file: !43, line: 879, baseType: !405, size: 64, offset: 6848)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !42, file: !43, line: 882, baseType: !405, size: 64, offset: 6912)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !42, file: !43, line: 884, baseType: !95, size: 64, offset: 6976)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !42, file: !43, line: 885, baseType: !95, size: 64, offset: 7040)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !42, file: !43, line: 890, baseType: !95, size: 64, offset: 7104)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !42, file: !43, line: 891, baseType: !411, size: 128, offset: 7168)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !43, line: 242, size: 128, elements: !412)
!412 = !{!413, !414, !415}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !411, file: !43, line: 244, baseType: !95, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !411, file: !43, line: 245, baseType: !95, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !411, file: !43, line: 246, baseType: !162, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !42, file: !43, line: 900, baseType: !26, size: 64, offset: 7296)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !42, file: !43, line: 901, baseType: !26, size: 64, offset: 7360)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !42, file: !43, line: 904, baseType: !95, size: 64, offset: 7424)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !42, file: !43, line: 907, baseType: !95, size: 64, offset: 7488)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !42, file: !43, line: 910, baseType: !26, size: 64, offset: 7552)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !42, file: !43, line: 911, baseType: !26, size: 64, offset: 7616)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !42, file: !43, line: 914, baseType: !423, size: 640, offset: 7680)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !424, line: 123, size: 640, elements: !425)
!424 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!425 = !{!426, !434, !435}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !423, file: !424, line: 124, baseType: !427, size: 576)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 576, elements: !432)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !424, line: 108, size: 192, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !428, file: !424, line: 109, baseType: !95, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !428, file: !424, line: 110, baseType: !202, size: 128, offset: 64)
!432 = !{!433}
!433 = !DISubrange(count: 3)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !423, file: !424, line: 125, baseType: !5, size: 32, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !423, file: !424, line: 126, baseType: !5, size: 32, offset: 608)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !42, file: !43, line: 917, baseType: !437, size: 192, offset: 8320)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !424, line: 134, size: 192, elements: !438)
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !437, file: !424, line: 135, baseType: !380, size: 128, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !437, file: !424, line: 136, baseType: !5, size: 32, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !42, file: !43, line: 923, baseType: !442, size: 64, offset: 8512)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !43, line: 923, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !42, file: !43, line: 926, baseType: !442, size: 64, offset: 8576)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !42, file: !43, line: 929, baseType: !442, size: 64, offset: 8640)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !42, file: !43, line: 933, baseType: !448, size: 64, offset: 8704)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !43, line: 933, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !42, file: !43, line: 943, baseType: !451, size: 128, offset: 8768)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 16)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !42, file: !43, line: 945, baseType: !455, size: 64, offset: 8896)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !43, line: 49, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !42, file: !43, line: 956, baseType: !458, size: 64, offset: 8960)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !43, line: 45, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !42, file: !43, line: 959, baseType: !461, size: 64, offset: 9024)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !43, line: 959, flags: DIFlagFwdDecl)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !42, file: !43, line: 962, baseType: !464, size: 64, offset: 9088)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !43, line: 66, flags: DIFlagFwdDecl)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !42, file: !43, line: 966, baseType: !467, size: 64, offset: 9152)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !43, line: 50, flags: DIFlagFwdDecl)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !42, file: !43, line: 969, baseType: !470, size: 64, offset: 9216)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !424, line: 223, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !42, file: !43, line: 970, baseType: !473, size: 64, offset: 9280)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !43, line: 62, flags: DIFlagFwdDecl)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !42, file: !43, line: 971, baseType: !476, size: 64, offset: 9344)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !477, line: 25, baseType: !478)
!477 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !477, line: 23, size: 64, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !478, file: !477, line: 24, baseType: !237, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !42, file: !43, line: 972, baseType: !476, size: 64, offset: 9408)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !42, file: !43, line: 974, baseType: !476, size: 64, offset: 9472)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !42, file: !43, line: 975, baseType: !484, size: 192, offset: 9536)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !485, line: 30, size: 192, elements: !486)
!485 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !484, file: !485, line: 31, baseType: !88, size: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !484, file: !485, line: 32, baseType: !476, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !42, file: !43, line: 976, baseType: !26, size: 64, offset: 9728)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !42, file: !43, line: 977, baseType: !491, size: 64, offset: 9792)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 55, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !189, line: 72, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !189, line: 16, baseType: !26)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !42, file: !43, line: 978, baseType: !5, size: 32, offset: 9856)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !42, file: !43, line: 980, baseType: !383, size: 64, offset: 9920)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !42, file: !43, line: 989, baseType: !497, size: 128, offset: 9984)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !498, line: 35, size: 128, elements: !499)
!498 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!499 = !{!500, !501, !502}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !497, file: !498, line: 36, baseType: !59, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !497, file: !498, line: 37, baseType: !54, size: 32, offset: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !497, file: !498, line: 38, baseType: !503, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !498, line: 23, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !42, file: !43, line: 992, baseType: !95, size: 64, offset: 10112)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !42, file: !43, line: 993, baseType: !95, size: 64, offset: 10176)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !42, file: !43, line: 996, baseType: !353, offset: 10240)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !42, file: !43, line: 999, baseType: !162, offset: 10240)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !42, file: !43, line: 1001, baseType: !510, size: 64, offset: 10240)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !43, line: 636, size: 64, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !510, file: !43, line: 637, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !42, file: !43, line: 1005, baseType: !205, size: 128, offset: 10304)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !42, file: !43, line: 1007, baseType: !41, size: 64, offset: 10432)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !42, file: !43, line: 1009, baseType: !517, size: 64, offset: 10496)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !43, line: 1009, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !42, file: !43, line: 1043, baseType: !36, size: 64, offset: 10560)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !42, file: !43, line: 1046, baseType: !521, size: 64, offset: 10624)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !43, line: 41, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !42, file: !43, line: 1050, baseType: !524, size: 64, offset: 10688)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !43, line: 42, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !42, file: !43, line: 1054, baseType: !527, size: 64, offset: 10752)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !43, line: 55, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !42, file: !43, line: 1056, baseType: !530, size: 64, offset: 10816)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !43, line: 40, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !42, file: !43, line: 1058, baseType: !533, size: 64, offset: 10880)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !43, line: 47, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !42, file: !43, line: 1061, baseType: !536, size: 64, offset: 10944)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !43, line: 43, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !42, file: !43, line: 1064, baseType: !26, size: 64, offset: 11008)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !42, file: !43, line: 1065, baseType: !540, size: 64, offset: 11072)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !485, line: 14, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !485, line: 12, size: 384, elements: !543)
!543 = !{!544}
!544 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !485, line: 13, baseType: !545, size: 384)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !485, line: 13, size: 384, elements: !546)
!546 = !{!547, !548, !549, !550}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !545, file: !485, line: 13, baseType: !59, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !545, file: !485, line: 13, baseType: !59, size: 32, offset: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !545, file: !485, line: 13, baseType: !59, size: 32, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !545, file: !485, line: 13, baseType: !551, size: 256, offset: 128)
!551 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !552, line: 32, size: 256, elements: !553)
!552 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!553 = !{!554, !560, !573, !579, !589, !610, !615}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !551, file: !552, line: 37, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !551, file: !552, line: 34, size: 64, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !555, file: !552, line: 35, baseType: !335, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !555, file: !552, line: 36, baseType: !559, size: 32, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !189, line: 49, baseType: !5)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !551, file: !552, line: 45, baseType: !561, size: 192)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !551, file: !552, line: 40, size: 192, elements: !562)
!562 = !{!563, !565, !566, !572}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !561, file: !552, line: 41, baseType: !564, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !189, line: 95, baseType: !59)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !561, file: !552, line: 42, baseType: !59, size: 32, offset: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !561, file: !552, line: 43, baseType: !567, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !552, line: 11, baseType: !568)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !552, line: 8, size: 64, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !568, file: !552, line: 9, baseType: !59, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !568, file: !552, line: 10, baseType: !36, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !561, file: !552, line: 44, baseType: !59, size: 32, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !551, file: !552, line: 52, baseType: !574, size: 128)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !551, file: !552, line: 48, size: 128, elements: !575)
!575 = !{!576, !577, !578}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !574, file: !552, line: 49, baseType: !335, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !574, file: !552, line: 50, baseType: !559, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !574, file: !552, line: 51, baseType: !567, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !551, file: !552, line: 61, baseType: !580, size: 256)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !551, file: !552, line: 55, size: 256, elements: !581)
!581 = !{!582, !583, !584, !585, !588}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !580, file: !552, line: 56, baseType: !335, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !580, file: !552, line: 57, baseType: !559, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !580, file: !552, line: 58, baseType: !59, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !580, file: !552, line: 59, baseType: !586, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !189, line: 94, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !189, line: 15, baseType: !39)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !580, file: !552, line: 60, baseType: !586, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !551, file: !552, line: 95, baseType: !590, size: 256)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !551, file: !552, line: 64, size: 256, elements: !591)
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !590, file: !552, line: 65, baseType: !36, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, scope: !590, file: !552, line: 77, baseType: !594, size: 192, offset: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !590, file: !552, line: 77, size: 192, elements: !595)
!595 = !{!596, !598, !605}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !594, file: !552, line: 82, baseType: !597, size: 16)
!597 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !594, file: !552, line: 88, baseType: !599, size: 192)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !594, file: !552, line: 84, size: 192, elements: !600)
!600 = !{!601, !603, !604}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !599, file: !552, line: 85, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !183)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !599, file: !552, line: 86, baseType: !36, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !599, file: !552, line: 87, baseType: !36, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !594, file: !552, line: 93, baseType: !606, size: 96)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !594, file: !552, line: 90, size: 96, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !606, file: !552, line: 91, baseType: !602, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !606, file: !552, line: 92, baseType: !30, size: 32, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !551, file: !552, line: 101, baseType: !611, size: 128)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !551, file: !552, line: 98, size: 128, elements: !612)
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !611, file: !552, line: 99, baseType: !39, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !611, file: !552, line: 100, baseType: !59, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !551, file: !552, line: 108, baseType: !616, size: 128)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !551, file: !552, line: 104, size: 128, elements: !617)
!617 = !{!618, !619, !620}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !616, file: !552, line: 105, baseType: !36, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !616, file: !552, line: 106, baseType: !59, size: 32, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !616, file: !552, line: 107, baseType: !5, size: 32, offset: 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !42, file: !43, line: 1067, baseType: !622, offset: 11136)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !623, line: 12, elements: !104)
!623 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!624 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !42, file: !43, line: 1099, baseType: !625, size: 64, offset: 11136)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !43, line: 56, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !42, file: !43, line: 1103, baseType: !88, size: 128, offset: 11200)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !42, file: !43, line: 1104, baseType: !629, size: 64, offset: 11328)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !43, line: 46, flags: DIFlagFwdDecl)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !42, file: !43, line: 1105, baseType: !632, size: 192, offset: 11392)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !633, line: 53, size: 192, elements: !634)
!633 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!634 = !{!635, !642, !643}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !632, file: !633, line: 54, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !637, line: 13, baseType: !638)
!637 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !55, line: 175, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 173, size: 64, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !639, file: !55, line: 174, baseType: !127, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !632, file: !633, line: 55, baseType: !353, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !632, file: !633, line: 59, baseType: !88, size: 128, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !42, file: !43, line: 1106, baseType: !5, size: 32, offset: 11584)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !42, file: !43, line: 1109, baseType: !646, size: 128, offset: 11648)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 128, elements: !649)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !43, line: 51, flags: DIFlagFwdDecl)
!649 = !{!650}
!650 = !DISubrange(count: 2)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !42, file: !43, line: 1110, baseType: !632, size: 192, offset: 11776)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !42, file: !43, line: 1111, baseType: !88, size: 128, offset: 11968)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !42, file: !43, line: 1173, baseType: !654, size: 64, offset: 12096)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !656, line: 62, size: 256, align: 256, elements: !657)
!656 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!657 = !{!658, !659, !660, !665}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !655, file: !656, line: 75, baseType: !30, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !655, file: !656, line: 90, baseType: !30, size: 32, offset: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !655, file: !656, line: 124, baseType: !661, size: 64, offset: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !656, line: 109, size: 64, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !661, file: !656, line: 110, baseType: !96, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !661, file: !656, line: 112, baseType: !96, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !656, line: 144, baseType: !30, size: 32, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !42, file: !43, line: 1174, baseType: !28, size: 32, offset: 12160)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !42, file: !43, line: 1179, baseType: !26, size: 64, offset: 12224)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !42, file: !43, line: 1182, baseType: !669, size: 128, offset: 12288)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !251, line: 76, size: 128, elements: !670)
!670 = !{!671, !676, !679}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !669, file: !251, line: 85, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !673, line: 7, size: 64, elements: !674)
!673 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !672, file: !673, line: 12, baseType: !234, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !669, file: !251, line: 88, baseType: !677, size: 8, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !55, line: 30, baseType: !678)
!678 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !669, file: !251, line: 95, baseType: !677, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !42, file: !43, line: 1184, baseType: !681, size: 128, offset: 12416)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !42, file: !43, line: 1184, size: 128, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !681, file: !43, line: 1185, baseType: !49, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !681, file: !43, line: 1186, baseType: !380, size: 128, align: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !42, file: !43, line: 1190, baseType: !686, size: 64, offset: 12544)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !43, line: 53, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !42, file: !43, line: 1192, baseType: !689, size: 128, offset: 12608)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !251, line: 64, size: 128, elements: !690)
!690 = !{!691, !694, !695}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !689, file: !251, line: 65, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !247, line: 8, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !689, file: !251, line: 67, baseType: !30, size: 32, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !689, file: !251, line: 68, baseType: !30, size: 32, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !42, file: !43, line: 1206, baseType: !59, size: 32, offset: 12736)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !42, file: !43, line: 1207, baseType: !59, size: 32, offset: 12768)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !42, file: !43, line: 1209, baseType: !26, size: 64, offset: 12800)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !42, file: !43, line: 1219, baseType: !95, size: 64, offset: 12864)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !42, file: !43, line: 1220, baseType: !95, size: 64, offset: 12928)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !42, file: !43, line: 1317, baseType: !59, size: 32, offset: 12992)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !42, file: !43, line: 1319, baseType: !41, size: 64, offset: 13056)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !42, file: !43, line: 1322, baseType: !704, size: 64, offset: 13120)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !43, line: 1322, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !42, file: !43, line: 1326, baseType: !49, size: 32, offset: 13184)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !42, file: !43, line: 1342, baseType: !36, size: 64, offset: 13248)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !42, file: !43, line: 1343, baseType: !96, size: 64, offset: 13312)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !42, file: !43, line: 1344, baseType: !95, size: 64, offset: 13376)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !42, file: !43, line: 1345, baseType: !96, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !42, file: !43, line: 1346, baseType: !96, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !42, file: !43, line: 1347, baseType: !96, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !42, file: !43, line: 1348, baseType: !380, size: 128, align: 64, offset: 13504)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !42, file: !43, line: 1358, baseType: !715, size: 34816, offset: 13824)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !716, line: 485, size: 34816, elements: !717)
!716 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!717 = !{!718, !738, !739, !740, !741, !742, !743, !744, !745, !749, !750, !751, !752, !753, !754, !757, !758, !759}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !715, file: !716, line: 487, baseType: !719, size: 192)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 192, elements: !432)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !721, line: 16, size: 64, elements: !722)
!721 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!722 = !{!723, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !720, file: !721, line: 17, baseType: !724, size: 16)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !29, line: 19, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !31, line: 24, baseType: !113)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !720, file: !721, line: 18, baseType: !724, size: 16, offset: 16)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !720, file: !721, line: 19, baseType: !724, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !720, file: !721, line: 19, baseType: !724, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !720, file: !721, line: 19, baseType: !724, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !720, file: !721, line: 19, baseType: !724, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !720, file: !721, line: 19, baseType: !724, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !720, file: !721, line: 20, baseType: !724, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !720, file: !721, line: 20, baseType: !724, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !720, file: !721, line: 20, baseType: !724, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !720, file: !721, line: 20, baseType: !724, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !720, file: !721, line: 20, baseType: !724, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !720, file: !721, line: 20, baseType: !724, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !715, file: !716, line: 491, baseType: !26, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !715, file: !716, line: 495, baseType: !113, size: 16, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !715, file: !716, line: 496, baseType: !113, size: 16, offset: 272)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !715, file: !716, line: 497, baseType: !113, size: 16, offset: 288)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !715, file: !716, line: 498, baseType: !113, size: 16, offset: 304)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !715, file: !716, line: 502, baseType: !26, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !715, file: !716, line: 503, baseType: !26, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !715, file: !716, line: 514, baseType: !746, size: 256, offset: 448)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 256, elements: !258)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !716, line: 483, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !715, file: !716, line: 516, baseType: !26, size: 64, offset: 704)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !715, file: !716, line: 518, baseType: !26, size: 64, offset: 768)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !715, file: !716, line: 520, baseType: !26, size: 64, offset: 832)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !715, file: !716, line: 521, baseType: !26, size: 64, offset: 896)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !715, file: !716, line: 522, baseType: !26, size: 64, offset: 960)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !715, file: !716, line: 528, baseType: !755, size: 64, offset: 1024)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !716, line: 10, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !715, file: !716, line: 535, baseType: !26, size: 64, offset: 1088)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !715, file: !716, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !715, file: !716, line: 540, baseType: !760, size: 33280, offset: 1536)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !761, line: 317, size: 33280, elements: !762)
!761 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!762 = !{!763, !764, !765}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !760, file: !761, line: 330, baseType: !5, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !760, file: !761, line: 337, baseType: !26, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !760, file: !761, line: 348, baseType: !766, size: 32768, offset: 512)
!766 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !761, line: 304, size: 32768, elements: !767)
!767 = !{!768, !783, !824, !874, !891}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !766, file: !761, line: 305, baseType: !769, size: 896)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !761, line: 12, size: 896, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778, !782}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !769, file: !761, line: 13, baseType: !28, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !769, file: !761, line: 14, baseType: !28, size: 32, offset: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !769, file: !761, line: 15, baseType: !28, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !769, file: !761, line: 16, baseType: !28, size: 32, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !769, file: !761, line: 17, baseType: !28, size: 32, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !769, file: !761, line: 18, baseType: !28, size: 32, offset: 160)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !769, file: !761, line: 19, baseType: !28, size: 32, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !769, file: !761, line: 22, baseType: !779, size: 640, offset: 224)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 640, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: 20)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !769, file: !761, line: 25, baseType: !28, size: 32, offset: 864)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !766, file: !761, line: 306, baseType: !784, size: 4096, align: 128)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !761, line: 34, size: 4096, align: 128, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !805, !806, !807, !811, !815, !819}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !784, file: !761, line: 35, baseType: !724, size: 16)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !784, file: !761, line: 36, baseType: !724, size: 16, offset: 16)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !784, file: !761, line: 37, baseType: !724, size: 16, offset: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !784, file: !761, line: 38, baseType: !724, size: 16, offset: 48)
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !761, line: 39, baseType: !791, size: 128, offset: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !784, file: !761, line: 39, size: 128, elements: !792)
!792 = !{!793, !798}
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !761, line: 40, baseType: !794, size: 128)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !791, file: !761, line: 40, size: 128, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !794, file: !761, line: 41, baseType: !95, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !794, file: !761, line: 42, baseType: !95, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !761, line: 44, baseType: !799, size: 128)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !791, file: !761, line: 44, size: 128, elements: !800)
!800 = !{!801, !802, !803, !804}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !799, file: !761, line: 45, baseType: !28, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !799, file: !761, line: 46, baseType: !28, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !799, file: !761, line: 47, baseType: !28, size: 32, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !799, file: !761, line: 48, baseType: !28, size: 32, offset: 96)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !784, file: !761, line: 51, baseType: !28, size: 32, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !784, file: !761, line: 52, baseType: !28, size: 32, offset: 224)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !784, file: !761, line: 55, baseType: !808, size: 1024, offset: 256)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1024, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !784, file: !761, line: 58, baseType: !812, size: 2048, offset: 1280)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !784, file: !761, line: 60, baseType: !816, size: 384, offset: 3328)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 384, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 12)
!819 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !761, line: 62, baseType: !820, size: 384, offset: 3712)
!820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !784, file: !761, line: 62, size: 384, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !820, file: !761, line: 63, baseType: !816, size: 384)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !820, file: !761, line: 64, baseType: !816, size: 384)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !766, file: !761, line: 307, baseType: !825, size: 1088)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !761, line: 79, size: 1088, elements: !826)
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !873}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !825, file: !761, line: 80, baseType: !28, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !825, file: !761, line: 81, baseType: !28, size: 32, offset: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !825, file: !761, line: 82, baseType: !28, size: 32, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !825, file: !761, line: 83, baseType: !28, size: 32, offset: 96)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !825, file: !761, line: 84, baseType: !28, size: 32, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !825, file: !761, line: 85, baseType: !28, size: 32, offset: 160)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !825, file: !761, line: 86, baseType: !28, size: 32, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !825, file: !761, line: 88, baseType: !779, size: 640, offset: 224)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !825, file: !761, line: 89, baseType: !218, size: 8, offset: 864)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !825, file: !761, line: 90, baseType: !218, size: 8, offset: 872)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !825, file: !761, line: 91, baseType: !218, size: 8, offset: 880)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !825, file: !761, line: 92, baseType: !218, size: 8, offset: 888)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !825, file: !761, line: 93, baseType: !218, size: 8, offset: 896)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !825, file: !761, line: 94, baseType: !218, size: 8, offset: 904)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !825, file: !761, line: 95, baseType: !842, size: 64, offset: 960)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !844, line: 11, size: 128, elements: !845)
!844 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !843, file: !844, line: 12, baseType: !39, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !843, file: !844, line: 13, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !850, line: 56, size: 1344, elements: !851)
!850 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!851 = !{!852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !849, file: !850, line: 61, baseType: !26, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !849, file: !850, line: 62, baseType: !26, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !849, file: !850, line: 63, baseType: !26, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !849, file: !850, line: 64, baseType: !26, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !849, file: !850, line: 65, baseType: !26, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !849, file: !850, line: 66, baseType: !26, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !849, file: !850, line: 68, baseType: !26, size: 64, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !849, file: !850, line: 69, baseType: !26, size: 64, offset: 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !849, file: !850, line: 70, baseType: !26, size: 64, offset: 512)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !849, file: !850, line: 71, baseType: !26, size: 64, offset: 576)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !849, file: !850, line: 72, baseType: !26, size: 64, offset: 640)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !849, file: !850, line: 73, baseType: !26, size: 64, offset: 704)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !849, file: !850, line: 74, baseType: !26, size: 64, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !849, file: !850, line: 75, baseType: !26, size: 64, offset: 832)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !849, file: !850, line: 76, baseType: !26, size: 64, offset: 896)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !849, file: !850, line: 81, baseType: !26, size: 64, offset: 960)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !849, file: !850, line: 83, baseType: !26, size: 64, offset: 1024)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !849, file: !850, line: 84, baseType: !26, size: 64, offset: 1088)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !849, file: !850, line: 85, baseType: !26, size: 64, offset: 1152)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !849, file: !850, line: 86, baseType: !26, size: 64, offset: 1216)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !849, file: !850, line: 87, baseType: !26, size: 64, offset: 1280)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !825, file: !761, line: 96, baseType: !28, size: 32, offset: 1024)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !766, file: !761, line: 308, baseType: !875, size: 4608, align: 512)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !761, line: 289, size: 4608, align: 512, elements: !876)
!876 = !{!877, !878, !887}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !875, file: !761, line: 290, baseType: !784, size: 4096, align: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !875, file: !761, line: 291, baseType: !879, size: 512, offset: 4096)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !761, line: 268, size: 512, elements: !880)
!880 = !{!881, !882, !883}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !879, file: !761, line: 269, baseType: !95, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !879, file: !761, line: 270, baseType: !95, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !879, file: !761, line: 271, baseType: !884, size: 384, offset: 128)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 384, elements: !885)
!885 = !{!886}
!886 = !DISubrange(count: 6)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !875, file: !761, line: 292, baseType: !888, offset: 4608)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, elements: !889)
!889 = !{!890}
!890 = !DISubrange(count: 0)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !766, file: !761, line: 309, baseType: !892, size: 32768)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 32768, elements: !893)
!893 = !{!894}
!894 = !DISubrange(count: 4096)
!895 = !{!"rsp"}
!896 = !{i32 7, !"Dwarf Version", i32 4}
!897 = !{i32 2, !"Debug Info Version", i32 3}
!898 = !{i32 1, !"wchar_size", i32 2}
!899 = !{i32 1, !"Code Model", i32 2}
!900 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!901 = distinct !DISubprogram(name: "cpuidle_poll_state_init", scope: !1, file: !1, line: 44, type: !902, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !104)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver", file: !906, line: 122, size: 8704, elements: !907)
!906 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/lizy2001/genbc/linux")
!907 = !{!908, !911, !915, !916, !975, !976, !977, !979}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !905, file: !906, line: 123, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !905, file: !906, line: 124, baseType: !912, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !914, line: 76, flags: DIFlagFwdDecl)
!914 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!915 = !DIDerivedType(tag: DW_TAG_member, name: "bctimer", scope: !905, file: !906, line: 127, baseType: !5, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !905, file: !906, line: 129, baseType: !917, size: 8320, offset: 192)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 8320, elements: !957)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state", file: !906, line: 48, size: 832, elements: !919)
!919 = !{!920, !921, !923, !924, !925, !926, !927, !928, !929, !970, !974}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !918, file: !906, line: 49, baseType: !451, size: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !918, file: !906, line: 50, baseType: !922, size: 256, offset: 128)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, elements: !809)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency_ns", scope: !918, file: !906, line: 52, baseType: !95, size: 64, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency_ns", scope: !918, file: !906, line: 53, baseType: !95, size: 64, offset: 448)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !918, file: !906, line: 54, baseType: !5, size: 32, offset: 512)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency", scope: !918, file: !906, line: 55, baseType: !5, size: 32, offset: 544)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "power_usage", scope: !918, file: !906, line: 56, baseType: !59, size: 32, offset: 576)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency", scope: !918, file: !906, line: 57, baseType: !5, size: 32, offset: 608)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "enter", scope: !918, file: !906, line: 59, baseType: !930, size: 64, offset: 640)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!59, !933, !904, !59}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !906, line: 92, size: 6400, elements: !935)
!935 = !{!936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !959, !963, !966, !969}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !934, file: !906, line: 93, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !934, file: !906, line: 94, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !934, file: !906, line: 95, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !934, file: !906, line: 96, baseType: !5, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !934, file: !906, line: 97, baseType: !145, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !934, file: !906, line: 99, baseType: !59, size: 32, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !934, file: !906, line: 100, baseType: !95, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !934, file: !906, line: 101, baseType: !95, size: 64, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !934, file: !906, line: 102, baseType: !95, size: 64, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !934, file: !906, line: 103, baseType: !946, size: 5120, offset: 384)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 5120, elements: !957)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !906, line: 35, size: 512, elements: !948)
!948 = !{!949, !950, !951, !952, !953, !954, !955, !956}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !947, file: !906, line: 36, baseType: !97, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !947, file: !906, line: 37, baseType: !97, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !947, file: !906, line: 38, baseType: !95, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !947, file: !906, line: 39, baseType: !97, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !947, file: !906, line: 40, baseType: !97, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !947, file: !906, line: 41, baseType: !97, size: 64, offset: 320)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !947, file: !906, line: 43, baseType: !97, size: 64, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !947, file: !906, line: 44, baseType: !97, size: 64, offset: 448)
!957 = !{!958}
!958 = !DISubrange(count: 10)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !934, file: !906, line: 104, baseType: !960, size: 640, offset: 5504)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !961, size: 640, elements: !957)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !906, line: 89, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !934, file: !906, line: 105, baseType: !964, size: 64, offset: 6144)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !906, line: 90, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !934, file: !906, line: 106, baseType: !967, size: 64, offset: 6208)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !906, line: 88, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !934, file: !906, line: 107, baseType: !88, size: 128, offset: 6272)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "enter_dead", scope: !918, file: !906, line: 63, baseType: !971, size: 64, offset: 704)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!59, !933, !59}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "enter_s2idle", scope: !918, file: !906, line: 73, baseType: !930, size: 64, offset: 768)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !905, file: !906, line: 130, baseType: !59, size: 32, offset: 8512)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "safe_state_index", scope: !905, file: !906, line: 131, baseType: !59, size: 32, offset: 8544)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !905, file: !906, line: 134, baseType: !978, size: 64, offset: 8576)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !905, file: !906, line: 137, baseType: !909, size: 64, offset: 8640)
!980 = !DILocalVariable(name: "drv", arg: 1, scope: !901, file: !1, line: 44, type: !904)
!981 = !DILocation(line: 44, column: 53, scope: !901)
!982 = !DILocalVariable(name: "state", scope: !901, file: !1, line: 46, type: !983)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!984 = !DILocation(line: 46, column: 24, scope: !901)
!985 = !DILocation(line: 46, column: 33, scope: !901)
!986 = !DILocation(line: 46, column: 38, scope: !901)
!987 = !DILocation(line: 48, column: 11, scope: !901)
!988 = !DILocation(line: 48, column: 18, scope: !901)
!989 = !DILocation(line: 48, column: 2, scope: !901)
!990 = !DILocation(line: 49, column: 11, scope: !901)
!991 = !DILocation(line: 49, column: 18, scope: !901)
!992 = !DILocation(line: 49, column: 2, scope: !901)
!993 = !DILocation(line: 50, column: 2, scope: !901)
!994 = !DILocation(line: 50, column: 9, scope: !901)
!995 = !DILocation(line: 50, column: 22, scope: !901)
!996 = !DILocation(line: 51, column: 2, scope: !901)
!997 = !DILocation(line: 51, column: 9, scope: !901)
!998 = !DILocation(line: 51, column: 26, scope: !901)
!999 = !DILocation(line: 52, column: 2, scope: !901)
!1000 = !DILocation(line: 52, column: 9, scope: !901)
!1001 = !DILocation(line: 52, column: 25, scope: !901)
!1002 = !DILocation(line: 53, column: 2, scope: !901)
!1003 = !DILocation(line: 53, column: 9, scope: !901)
!1004 = !DILocation(line: 53, column: 29, scope: !901)
!1005 = !DILocation(line: 54, column: 2, scope: !901)
!1006 = !DILocation(line: 54, column: 9, scope: !901)
!1007 = !DILocation(line: 54, column: 21, scope: !901)
!1008 = !DILocation(line: 55, column: 2, scope: !901)
!1009 = !DILocation(line: 55, column: 9, scope: !901)
!1010 = !DILocation(line: 55, column: 15, scope: !901)
!1011 = !DILocation(line: 56, column: 2, scope: !901)
!1012 = !DILocation(line: 56, column: 9, scope: !901)
!1013 = !DILocation(line: 56, column: 15, scope: !901)
!1014 = !DILocation(line: 57, column: 1, scope: !901)
!1015 = distinct !DISubprogram(name: "poll_idle", scope: !1, file: !1, line: 13, type: !931, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1016 = !DILocalVariable(name: "pscr_ret__", scope: !1017, file: !1018, line: 15, type: !41)
!1017 = distinct !DILexicalBlock(scope: !1019, file: !1018, line: 15, column: 9)
!1018 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!1019 = distinct !DISubprogram(name: "get_current", scope: !1018, file: !1018, line: 13, type: !1020, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!41}
!1022 = !DILocation(line: 15, column: 9, scope: !1017, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 1897, column: 9, scope: !1024, inlinedAt: !1027)
!1024 = distinct !DISubprogram(name: "need_resched", scope: !43, file: !43, line: 1895, type: !1025, scopeLine: 1896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!677}
!1027 = distinct !DILocation(line: 27, column: 11, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 21, column: 39)
!1029 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 21, column: 6)
!1030 = !DILocalVariable(name: "__vpp_verify", scope: !1031, file: !1018, line: 15, type: !1032)
!1031 = distinct !DILexicalBlock(scope: !1017, file: !1018, line: 15, column: 9)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1034 = !DILocation(line: 15, column: 9, scope: !1031, inlinedAt: !1023)
!1035 = !DILocalVariable(name: "pfo_val__", scope: !1036, file: !1018, line: 15, type: !95)
!1036 = distinct !DILexicalBlock(scope: !1017, file: !1018, line: 15, column: 9)
!1037 = !DILocation(line: 15, column: 9, scope: !1036, inlinedAt: !1023)
!1038 = !DILocalVariable(name: "dev", arg: 1, scope: !1015, file: !1, line: 13, type: !933)
!1039 = !DILocation(line: 13, column: 55, scope: !1015)
!1040 = !DILocalVariable(name: "drv", arg: 2, scope: !1015, file: !1, line: 14, type: !904)
!1041 = !DILocation(line: 14, column: 34, scope: !1015)
!1042 = !DILocalVariable(name: "index", arg: 3, scope: !1015, file: !1, line: 14, type: !59)
!1043 = !DILocation(line: 14, column: 43, scope: !1015)
!1044 = !DILocalVariable(name: "time_start", scope: !1015, file: !1, line: 16, type: !95)
!1045 = !DILocation(line: 16, column: 6, scope: !1015)
!1046 = !DILocation(line: 16, column: 19, scope: !1015)
!1047 = !DILocation(line: 18, column: 2, scope: !1015)
!1048 = !DILocation(line: 18, column: 7, scope: !1015)
!1049 = !DILocation(line: 18, column: 23, scope: !1015)
!1050 = !DILocation(line: 20, column: 2, scope: !1015)
!1051 = !DILocation(line: 20, column: 2, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 20, column: 2)
!1053 = !DILocation(line: 21, column: 7, scope: !1029)
!1054 = !DILocation(line: 21, column: 6, scope: !1015)
!1055 = !DILocalVariable(name: "loop_count", scope: !1028, file: !1, line: 22, type: !5)
!1056 = !DILocation(line: 22, column: 16, scope: !1028)
!1057 = !DILocalVariable(name: "limit", scope: !1028, file: !1, line: 23, type: !95)
!1058 = !DILocation(line: 23, column: 7, scope: !1028)
!1059 = !DILocation(line: 25, column: 29, scope: !1028)
!1060 = !DILocation(line: 25, column: 34, scope: !1028)
!1061 = !DILocation(line: 25, column: 11, scope: !1028)
!1062 = !DILocation(line: 25, column: 9, scope: !1028)
!1063 = !DILocation(line: 27, column: 3, scope: !1028)
!1064 = !{i32 -2146789936}
!1065 = !DILocation(line: 1897, column: 9, scope: !1024, inlinedAt: !1027)
!1066 = !DILocation(line: 27, column: 10, scope: !1028)
!1067 = !DILocation(line: 13, column: 2, scope: !1068, inlinedAt: !1072)
!1068 = distinct !DISubprogram(name: "rep_nop", scope: !1069, file: !1069, line: 11, type: !1070, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1069 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/lizy2001/genbc/linux")
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null}
!1072 = distinct !DILocation(line: 18, column: 2, scope: !1073, inlinedAt: !1074)
!1073 = distinct !DISubprogram(name: "cpu_relax", scope: !1069, file: !1069, line: 16, type: !1070, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1074 = distinct !DILocation(line: 28, column: 4, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 27, column: 27)
!1076 = !{i32 1746250}
!1077 = !DILocation(line: 29, column: 18, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 29, column: 8)
!1079 = !DILocation(line: 29, column: 21, scope: !1078)
!1080 = !DILocation(line: 29, column: 8, scope: !1075)
!1081 = !DILocation(line: 30, column: 5, scope: !1078)
!1082 = distinct !{!1082, !1063, !1083}
!1083 = !DILocation(line: 37, column: 3, scope: !1028)
!1084 = !DILocation(line: 32, column: 15, scope: !1075)
!1085 = !DILocation(line: 33, column: 8, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 33, column: 8)
!1087 = !DILocation(line: 33, column: 24, scope: !1086)
!1088 = !DILocation(line: 33, column: 22, scope: !1086)
!1089 = !DILocation(line: 33, column: 37, scope: !1086)
!1090 = !DILocation(line: 33, column: 35, scope: !1086)
!1091 = !DILocation(line: 33, column: 8, scope: !1075)
!1092 = !DILocation(line: 34, column: 5, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 33, column: 44)
!1094 = !DILocation(line: 34, column: 10, scope: !1093)
!1095 = !DILocation(line: 34, column: 26, scope: !1093)
!1096 = !DILocation(line: 35, column: 5, scope: !1093)
!1097 = !DILocation(line: 38, column: 2, scope: !1028)
!1098 = !DILocation(line: 39, column: 2, scope: !1015)
!1099 = !DILocation(line: 41, column: 9, scope: !1015)
!1100 = !DILocation(line: 41, column: 2, scope: !1015)
!1101 = distinct !DISubprogram(name: "local_clock", scope: !1102, file: !1102, line: 82, type: !1103, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1102 = !DIFile(filename: "./include/linux/sched/clock.h", directory: "/home/lizy2001/genbc/linux")
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!95}
!1105 = !DILocation(line: 84, column: 9, scope: !1101)
!1106 = !DILocation(line: 84, column: 2, scope: !1101)
!1107 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !1108, file: !1108, line: 661, type: !1070, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1108 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1109 = !DILocalVariable(name: "__edi", scope: !1110, file: !1108, line: 663, type: !26)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !1108, line: 663, column: 2)
!1111 = !DILocation(line: 663, column: 2, scope: !1110)
!1112 = !DILocalVariable(name: "__esi", scope: !1110, file: !1108, line: 663, type: !26)
!1113 = !DILocalVariable(name: "__edx", scope: !1110, file: !1108, line: 663, type: !26)
!1114 = !DILocalVariable(name: "__ecx", scope: !1110, file: !1108, line: 663, type: !26)
!1115 = !DILocalVariable(name: "__eax", scope: !1110, file: !1108, line: 663, type: !26)
!1116 = !{i32 -2145787435, i32 -2145786705, i32 -2145786471, i32 -2145786420, i32 -2145786392, i32 -2145786367, i32 -2145786683, i32 -2145786670, i32 -2145786232, i32 -2145786113, i32 -2145786578, i32 -2145786551, i32 -2145786523, i32 -2145786493}
!1117 = !DILocation(line: 664, column: 1, scope: !1107)
!1118 = distinct !DISubprogram(name: "current_set_polling_and_test", scope: !1119, file: !1119, line: 27, type: !1025, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1119 = !DIFile(filename: "./include/linux/sched/idle.h", directory: "/home/lizy2001/genbc/linux")
!1120 = !DILocation(line: 15, column: 9, scope: !1017, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 37, column: 9, scope: !1118)
!1122 = !DILocation(line: 15, column: 9, scope: !1031, inlinedAt: !1121)
!1123 = !DILocation(line: 15, column: 9, scope: !1036, inlinedAt: !1121)
!1124 = !DILocation(line: 29, column: 2, scope: !1118)
!1125 = !DILocation(line: 35, column: 2, scope: !1118)
!1126 = !{i32 -2144692595}
!1127 = !DILocation(line: 37, column: 9, scope: !1118)
!1128 = !DILocation(line: 37, column: 2, scope: !1118)
!1129 = distinct !DISubprogram(name: "current_clr_polling", scope: !1119, file: !1119, line: 72, type: !1070, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1130 = !DILocalVariable(name: "pto_val__", scope: !1131, file: !1132, line: 60, type: !28)
!1131 = distinct !DILexicalBlock(scope: !1133, file: !1132, line: 60, column: 2)
!1132 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/lizy2001/genbc/linux")
!1133 = distinct !DISubprogram(name: "set_preempt_need_resched", scope: !1132, file: !1132, line: 58, type: !1070, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1134 = !DILocation(line: 60, column: 2, scope: !1131, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 84, column: 2, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !1119, line: 84, column: 2)
!1137 = distinct !DILexicalBlock(scope: !1129, file: !1119, line: 84, column: 2)
!1138 = !DILocation(line: 15, column: 9, scope: !1017, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 84, column: 2, scope: !1136)
!1140 = !DILocation(line: 15, column: 9, scope: !1031, inlinedAt: !1139)
!1141 = !DILocation(line: 15, column: 9, scope: !1036, inlinedAt: !1139)
!1142 = !DILocation(line: 74, column: 2, scope: !1129)
!1143 = !DILocation(line: 82, column: 2, scope: !1129)
!1144 = !{i32 -2144691406}
!1145 = !DILocation(line: 84, column: 2, scope: !1129)
!1146 = !DILocation(line: 84, column: 2, scope: !1136)
!1147 = !DILocation(line: 84, column: 2, scope: !1137)
!1148 = !{i32 -2145701374}
!1149 = !DILocation(line: 85, column: 1, scope: !1129)
!1150 = distinct !DISubprogram(name: "__current_set_polling", scope: !1119, file: !1119, line: 22, type: !1070, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1151 = !DILocation(line: 15, column: 9, scope: !1017, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 24, column: 2, scope: !1150)
!1153 = !DILocation(line: 15, column: 9, scope: !1031, inlinedAt: !1152)
!1154 = !DILocation(line: 15, column: 9, scope: !1036, inlinedAt: !1152)
!1155 = !DILocation(line: 24, column: 2, scope: !1150)
!1156 = !DILocation(line: 25, column: 1, scope: !1150)
!1157 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !1158, file: !1158, line: 82, type: !1159, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1158 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!59, !21, !59}
!1161 = !DILocalVariable(name: "ti", arg: 1, scope: !1157, file: !1158, line: 82, type: !21)
!1162 = !DILocation(line: 82, column: 59, scope: !1157)
!1163 = !DILocalVariable(name: "flag", arg: 2, scope: !1157, file: !1158, line: 82, type: !59)
!1164 = !DILocation(line: 82, column: 67, scope: !1157)
!1165 = !DILocation(line: 84, column: 18, scope: !1157)
!1166 = !DILocation(line: 84, column: 42, scope: !1157)
!1167 = !DILocation(line: 84, column: 46, scope: !1157)
!1168 = !DILocation(line: 84, column: 9, scope: !1157)
!1169 = !DILocation(line: 84, column: 2, scope: !1157)
!1170 = distinct !DISubprogram(name: "set_ti_thread_flag", scope: !1158, file: !1158, line: 53, type: !1171, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !21, !59}
!1173 = !DILocalVariable(name: "ti", arg: 1, scope: !1170, file: !1158, line: 53, type: !21)
!1174 = !DILocation(line: 53, column: 59, scope: !1170)
!1175 = !DILocalVariable(name: "flag", arg: 2, scope: !1170, file: !1158, line: 53, type: !59)
!1176 = !DILocation(line: 53, column: 67, scope: !1170)
!1177 = !DILocation(line: 55, column: 10, scope: !1170)
!1178 = !DILocation(line: 55, column: 34, scope: !1170)
!1179 = !DILocation(line: 55, column: 38, scope: !1170)
!1180 = !DILocation(line: 55, column: 2, scope: !1170)
!1181 = !DILocation(line: 56, column: 1, scope: !1170)
!1182 = distinct !DISubprogram(name: "set_bit", scope: !1183, file: !1183, line: 26, type: !1184, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1183 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !39, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !26)
!1188 = !DILocalVariable(name: "nr", arg: 1, scope: !1189, file: !1190, line: 52, type: !39)
!1189 = distinct !DISubprogram(name: "arch_set_bit", scope: !1190, file: !1190, line: 52, type: !1184, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1190 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1191 = !DILocation(line: 52, column: 19, scope: !1189, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 29, column: 2, scope: !1182)
!1193 = !DILocalVariable(name: "addr", arg: 2, scope: !1189, file: !1190, line: 52, type: !1186)
!1194 = !DILocation(line: 52, column: 47, scope: !1189, inlinedAt: !1192)
!1195 = !DILocalVariable(name: "v", arg: 1, scope: !1196, file: !1197, line: 84, type: !1200)
!1196 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1197, file: !1197, line: 84, type: !1198, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1197 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !1200, !491}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1202)
!1202 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1203 = !DILocation(line: 84, column: 74, scope: !1196, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 28, column: 2, scope: !1182)
!1205 = !DILocalVariable(name: "size", arg: 2, scope: !1196, file: !1197, line: 84, type: !491)
!1206 = !DILocation(line: 84, column: 84, scope: !1196, inlinedAt: !1204)
!1207 = !DILocalVariable(name: "nr", arg: 1, scope: !1182, file: !1183, line: 26, type: !39)
!1208 = !DILocation(line: 26, column: 33, scope: !1182)
!1209 = !DILocalVariable(name: "addr", arg: 2, scope: !1182, file: !1183, line: 26, type: !1186)
!1210 = !DILocation(line: 26, column: 61, scope: !1182)
!1211 = !DILocation(line: 28, column: 26, scope: !1182)
!1212 = !DILocation(line: 28, column: 33, scope: !1182)
!1213 = !DILocation(line: 28, column: 31, scope: !1182)
!1214 = !DILocation(line: 86, column: 20, scope: !1196, inlinedAt: !1204)
!1215 = !DILocation(line: 86, column: 23, scope: !1196, inlinedAt: !1204)
!1216 = !DILocation(line: 86, column: 2, scope: !1196, inlinedAt: !1204)
!1217 = !DILocation(line: 87, column: 2, scope: !1196, inlinedAt: !1204)
!1218 = !DILocation(line: 29, column: 15, scope: !1182)
!1219 = !DILocation(line: 29, column: 19, scope: !1182)
!1220 = !DILocation(line: 54, column: 27, scope: !1221, inlinedAt: !1192)
!1221 = distinct !DILexicalBlock(scope: !1189, file: !1190, line: 54, column: 6)
!1222 = !DILocation(line: 54, column: 6, scope: !1221, inlinedAt: !1192)
!1223 = !DILocation(line: 54, column: 6, scope: !1189, inlinedAt: !1192)
!1224 = !DILocation(line: 56, column: 6, scope: !1225, inlinedAt: !1192)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !1190, line: 54, column: 32)
!1226 = !DILocation(line: 57, column: 12, scope: !1225, inlinedAt: !1192)
!1227 = !DILocation(line: 55, column: 3, scope: !1225, inlinedAt: !1192)
!1228 = !{i32 -2147181486}
!1229 = !DILocation(line: 59, column: 2, scope: !1225, inlinedAt: !1192)
!1230 = !DILocation(line: 61, column: 8, scope: !1231, inlinedAt: !1192)
!1231 = distinct !DILexicalBlock(scope: !1221, file: !1190, line: 59, column: 9)
!1232 = !DILocation(line: 61, column: 32, scope: !1231, inlinedAt: !1192)
!1233 = !DILocation(line: 60, column: 3, scope: !1231, inlinedAt: !1192)
!1234 = !{i32 -2147181354}
!1235 = !DILocation(line: 30, column: 1, scope: !1182)
!1236 = distinct !DISubprogram(name: "kasan_check_write", scope: !1237, file: !1237, line: 38, type: !1238, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1237 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!677, !1200, !5}
!1240 = !DILocalVariable(name: "p", arg: 1, scope: !1236, file: !1237, line: 38, type: !1200)
!1241 = !DILocation(line: 38, column: 59, scope: !1236)
!1242 = !DILocalVariable(name: "size", arg: 2, scope: !1236, file: !1237, line: 38, type: !5)
!1243 = !DILocation(line: 38, column: 75, scope: !1236)
!1244 = !DILocation(line: 40, column: 2, scope: !1236)
!1245 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1246, file: !1246, line: 178, type: !1247, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1246 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !1200, !491, !59}
!1249 = !DILocalVariable(name: "ptr", arg: 1, scope: !1245, file: !1246, line: 178, type: !1200)
!1250 = !DILocation(line: 178, column: 60, scope: !1245)
!1251 = !DILocalVariable(name: "size", arg: 2, scope: !1245, file: !1246, line: 178, type: !491)
!1252 = !DILocation(line: 178, column: 72, scope: !1245)
!1253 = !DILocalVariable(name: "type", arg: 3, scope: !1245, file: !1246, line: 179, type: !59)
!1254 = !DILocation(line: 179, column: 15, scope: !1245)
!1255 = !DILocation(line: 179, column: 23, scope: !1245)
!1256 = distinct !DISubprogram(name: "test_bit", scope: !1257, file: !1257, line: 132, type: !1258, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1257 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!677, !39, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1262 = !DILocalVariable(name: "nr", arg: 1, scope: !1263, file: !1190, line: 210, type: !39)
!1263 = distinct !DISubprogram(name: "variable_test_bit", scope: !1190, file: !1190, line: 210, type: !1258, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1264 = !DILocation(line: 210, column: 52, scope: !1263, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 135, column: 9, scope: !1256)
!1266 = !DILocalVariable(name: "addr", arg: 2, scope: !1263, file: !1190, line: 210, type: !1260)
!1267 = !DILocation(line: 210, column: 86, scope: !1263, inlinedAt: !1265)
!1268 = !DILocalVariable(name: "oldbit", scope: !1263, file: !1190, line: 212, type: !677)
!1269 = !DILocation(line: 212, column: 7, scope: !1263, inlinedAt: !1265)
!1270 = !DILocalVariable(name: "nr", arg: 1, scope: !1271, file: !1190, line: 204, type: !39)
!1271 = distinct !DISubprogram(name: "constant_test_bit", scope: !1190, file: !1190, line: 204, type: !1258, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1272 = !DILocation(line: 204, column: 52, scope: !1271, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 135, column: 9, scope: !1256)
!1274 = !DILocalVariable(name: "addr", arg: 2, scope: !1271, file: !1190, line: 204, type: !1260)
!1275 = !DILocation(line: 204, column: 86, scope: !1271, inlinedAt: !1273)
!1276 = !DILocalVariable(name: "v", arg: 1, scope: !1277, file: !1197, line: 69, type: !1200)
!1277 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1197, file: !1197, line: 69, type: !1198, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1278 = !DILocation(line: 69, column: 73, scope: !1277, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 134, column: 2, scope: !1256)
!1280 = !DILocalVariable(name: "size", arg: 2, scope: !1277, file: !1197, line: 69, type: !491)
!1281 = !DILocation(line: 69, column: 83, scope: !1277, inlinedAt: !1279)
!1282 = !DILocalVariable(name: "nr", arg: 1, scope: !1256, file: !1257, line: 132, type: !39)
!1283 = !DILocation(line: 132, column: 34, scope: !1256)
!1284 = !DILocalVariable(name: "addr", arg: 2, scope: !1256, file: !1257, line: 132, type: !1260)
!1285 = !DILocation(line: 132, column: 68, scope: !1256)
!1286 = !DILocation(line: 134, column: 25, scope: !1256)
!1287 = !DILocation(line: 134, column: 32, scope: !1256)
!1288 = !DILocation(line: 134, column: 30, scope: !1256)
!1289 = !DILocation(line: 71, column: 19, scope: !1277, inlinedAt: !1279)
!1290 = !DILocation(line: 71, column: 22, scope: !1277, inlinedAt: !1279)
!1291 = !DILocation(line: 71, column: 2, scope: !1277, inlinedAt: !1279)
!1292 = !DILocation(line: 72, column: 2, scope: !1277, inlinedAt: !1279)
!1293 = !DILocation(line: 135, column: 9, scope: !1256)
!1294 = !DILocation(line: 206, column: 19, scope: !1271, inlinedAt: !1273)
!1295 = !DILocation(line: 206, column: 22, scope: !1271, inlinedAt: !1273)
!1296 = !DILocation(line: 206, column: 15, scope: !1271, inlinedAt: !1273)
!1297 = !DILocation(line: 207, column: 4, scope: !1271, inlinedAt: !1273)
!1298 = !DILocation(line: 207, column: 9, scope: !1271, inlinedAt: !1273)
!1299 = !DILocation(line: 207, column: 12, scope: !1271, inlinedAt: !1273)
!1300 = !DILocation(line: 206, column: 44, scope: !1271, inlinedAt: !1273)
!1301 = !DILocation(line: 207, column: 37, scope: !1271, inlinedAt: !1273)
!1302 = !DILocation(line: 217, column: 33, scope: !1263, inlinedAt: !1265)
!1303 = !DILocation(line: 217, column: 46, scope: !1263, inlinedAt: !1265)
!1304 = !DILocation(line: 214, column: 2, scope: !1263, inlinedAt: !1265)
!1305 = !{i32 -2147172238, i32 -2147172178}
!1306 = !DILocation(line: 219, column: 9, scope: !1263, inlinedAt: !1265)
!1307 = !DILocation(line: 135, column: 2, scope: !1256)
!1308 = distinct !DISubprogram(name: "kasan_check_read", scope: !1237, file: !1237, line: 34, type: !1238, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1309 = !DILocalVariable(name: "p", arg: 1, scope: !1308, file: !1237, line: 34, type: !1200)
!1310 = !DILocation(line: 34, column: 58, scope: !1308)
!1311 = !DILocalVariable(name: "size", arg: 2, scope: !1308, file: !1237, line: 34, type: !5)
!1312 = !DILocation(line: 34, column: 74, scope: !1308)
!1313 = !DILocation(line: 36, column: 2, scope: !1308)
!1314 = distinct !DISubprogram(name: "__current_clr_polling", scope: !1119, file: !1119, line: 40, type: !1070, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1315 = !DILocation(line: 15, column: 9, scope: !1017, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 42, column: 2, scope: !1314)
!1317 = !DILocation(line: 15, column: 9, scope: !1031, inlinedAt: !1316)
!1318 = !DILocation(line: 15, column: 9, scope: !1036, inlinedAt: !1316)
!1319 = !DILocation(line: 42, column: 2, scope: !1314)
!1320 = !DILocation(line: 43, column: 1, scope: !1314)
!1321 = distinct !DISubprogram(name: "clear_ti_thread_flag", scope: !1158, file: !1158, line: 58, type: !1171, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1322 = !DILocalVariable(name: "ti", arg: 1, scope: !1321, file: !1158, line: 58, type: !21)
!1323 = !DILocation(line: 58, column: 61, scope: !1321)
!1324 = !DILocalVariable(name: "flag", arg: 2, scope: !1321, file: !1158, line: 58, type: !59)
!1325 = !DILocation(line: 58, column: 69, scope: !1321)
!1326 = !DILocation(line: 60, column: 12, scope: !1321)
!1327 = !DILocation(line: 60, column: 36, scope: !1321)
!1328 = !DILocation(line: 60, column: 40, scope: !1321)
!1329 = !DILocation(line: 60, column: 2, scope: !1321)
!1330 = !DILocation(line: 61, column: 1, scope: !1321)
!1331 = distinct !DISubprogram(name: "clear_bit", scope: !1183, file: !1183, line: 39, type: !1184, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1332 = !DILocalVariable(name: "nr", arg: 1, scope: !1333, file: !1190, line: 72, type: !39)
!1333 = distinct !DISubprogram(name: "arch_clear_bit", scope: !1190, file: !1190, line: 72, type: !1184, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !104)
!1334 = !DILocation(line: 72, column: 21, scope: !1333, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 42, column: 2, scope: !1331)
!1336 = !DILocalVariable(name: "addr", arg: 2, scope: !1333, file: !1190, line: 72, type: !1186)
!1337 = !DILocation(line: 72, column: 49, scope: !1333, inlinedAt: !1335)
!1338 = !DILocation(line: 84, column: 74, scope: !1196, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 41, column: 2, scope: !1331)
!1340 = !DILocation(line: 84, column: 84, scope: !1196, inlinedAt: !1339)
!1341 = !DILocalVariable(name: "nr", arg: 1, scope: !1331, file: !1183, line: 39, type: !39)
!1342 = !DILocation(line: 39, column: 35, scope: !1331)
!1343 = !DILocalVariable(name: "addr", arg: 2, scope: !1331, file: !1183, line: 39, type: !1186)
!1344 = !DILocation(line: 39, column: 63, scope: !1331)
!1345 = !DILocation(line: 41, column: 26, scope: !1331)
!1346 = !DILocation(line: 41, column: 33, scope: !1331)
!1347 = !DILocation(line: 41, column: 31, scope: !1331)
!1348 = !DILocation(line: 86, column: 20, scope: !1196, inlinedAt: !1339)
!1349 = !DILocation(line: 86, column: 23, scope: !1196, inlinedAt: !1339)
!1350 = !DILocation(line: 86, column: 2, scope: !1196, inlinedAt: !1339)
!1351 = !DILocation(line: 87, column: 2, scope: !1196, inlinedAt: !1339)
!1352 = !DILocation(line: 42, column: 17, scope: !1331)
!1353 = !DILocation(line: 42, column: 21, scope: !1331)
!1354 = !DILocation(line: 74, column: 27, scope: !1355, inlinedAt: !1335)
!1355 = distinct !DILexicalBlock(scope: !1333, file: !1190, line: 74, column: 6)
!1356 = !DILocation(line: 74, column: 6, scope: !1355, inlinedAt: !1335)
!1357 = !DILocation(line: 74, column: 6, scope: !1333, inlinedAt: !1335)
!1358 = !DILocation(line: 76, column: 6, scope: !1359, inlinedAt: !1335)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !1190, line: 74, column: 32)
!1360 = !DILocation(line: 77, column: 13, scope: !1359, inlinedAt: !1335)
!1361 = !DILocation(line: 77, column: 12, scope: !1359, inlinedAt: !1335)
!1362 = !DILocation(line: 75, column: 3, scope: !1359, inlinedAt: !1335)
!1363 = !{i32 -2147180532}
!1364 = !DILocation(line: 78, column: 2, scope: !1359, inlinedAt: !1335)
!1365 = !DILocation(line: 80, column: 8, scope: !1366, inlinedAt: !1335)
!1366 = distinct !DILexicalBlock(scope: !1355, file: !1190, line: 78, column: 9)
!1367 = !DILocation(line: 80, column: 32, scope: !1366, inlinedAt: !1335)
!1368 = !DILocation(line: 79, column: 3, scope: !1366, inlinedAt: !1335)
!1369 = !{i32 -2147180400}
!1370 = !DILocation(line: 43, column: 1, scope: !1331)
