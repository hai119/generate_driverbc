; ModuleID = '../bcout/drivers/clk/clk-multiplier.llvm.bc'
source_filename = "drivers/clk/clk-multiplier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.clk_hw = type { %struct.clk_core*, %struct.clk*, %struct.clk_init_data* }
%struct.clk_core = type opaque
%struct.clk = type opaque
%struct.clk_init_data = type { i8*, %struct.clk_ops*, i8**, %struct.clk_parent_data*, %struct.clk_hw**, i8, i64 }
%struct.clk_ops = type { {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, {}*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, {}*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }
%struct.clk_parent_data = type { %struct.clk_hw*, i8*, i8*, i32 }
%struct.clk_rate_request = type { i64, i64, i64, i64, %struct.clk_hw* }
%struct.clk_duty = type { i32, i32 }
%struct.dentry = type opaque
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
%struct.task_struct = type opaque
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.cpumask = type { [1 x i64] }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.mm_struct = type { %struct.anon.3, [0 x i64] }
%struct.anon.3 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.4, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.pgprot = type { i64 }
%struct.anon.4 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.vdso_image = type opaque
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.clk_multiplier = type { %struct.clk_hw, i8*, i8, i8, i8, %struct.spinlock* }

@clk_multiplier_ops = dso_local constant { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* } { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* @clk_multiplier_recalc_rate, i64 (%struct.clk_hw*, i64, i64*)* @clk_multiplier_round_rate, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* null, i32 (%struct.clk_hw*, i8)* null, i8 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i64, i64)* @clk_multiplier_set_rate, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8, !dbg !0
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @clk_multiplier_recalc_rate(%struct.clk_hw* %hw, i64 %parent_rate) #0 !dbg !169 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %parent_rate.addr = alloca i64, align 8
  %mult = alloca %struct.clk_multiplier*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_multiplier*, align 8
  %val = alloca i64, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !170, metadata !DIExpression()), !dbg !171
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata %struct.clk_multiplier** %mult, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !176, metadata !DIExpression()), !dbg !178
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !178
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !178
  store i8* %1, i8** %__mptr, align 8, !dbg !178
  br label %do.body, !dbg !178

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !179

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !178
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !178
  %3 = bitcast i8* %add.ptr to %struct.clk_multiplier*, !dbg !178
  store %struct.clk_multiplier* %3, %struct.clk_multiplier** %tmp, align 8, !dbg !179
  %4 = load %struct.clk_multiplier*, %struct.clk_multiplier** %tmp, align 8, !dbg !178
  store %struct.clk_multiplier* %4, %struct.clk_multiplier** %mult, align 8, !dbg !175
  call void @llvm.dbg.declare(metadata i64* %val, metadata !181, metadata !DIExpression()), !dbg !182
  %5 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !183
  %call = call i32 @clk_mult_readl(%struct.clk_multiplier* %5) #5, !dbg !184
  %6 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !185
  %shift = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %6, i32 0, i32 2, !dbg !186
  %7 = load i8, i8* %shift, align 8, !dbg !186
  %conv = zext i8 %7 to i32, !dbg !185
  %shr = lshr i32 %call, %conv, !dbg !187
  %conv1 = zext i32 %shr to i64, !dbg !184
  store i64 %conv1, i64* %val, align 8, !dbg !188
  %8 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !189
  %width = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %8, i32 0, i32 3, !dbg !189
  %9 = load i8, i8* %width, align 1, !dbg !189
  %conv2 = zext i8 %9 to i32, !dbg !189
  %sub = sub i32 %conv2, 1, !dbg !189
  %sub3 = sub i32 63, %sub, !dbg !189
  %sh_prom = zext i32 %sub3 to i64, !dbg !189
  %shr4 = lshr i64 -1, %sh_prom, !dbg !189
  %and = and i64 -1, %shr4, !dbg !189
  %add = add i64 0, %and, !dbg !189
  %10 = load i64, i64* %val, align 8, !dbg !190
  %and5 = and i64 %10, %add, !dbg !190
  store i64 %and5, i64* %val, align 8, !dbg !190
  %11 = load i64, i64* %val, align 8, !dbg !191
  %tobool = icmp ne i64 %11, 0, !dbg !191
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !193

land.lhs.true:                                    ; preds = %do.end
  %12 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !194
  %flags = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %12, i32 0, i32 4, !dbg !195
  %13 = load i8, i8* %flags, align 2, !dbg !195
  %conv6 = zext i8 %13 to i64, !dbg !194
  %and7 = and i64 %conv6, 1, !dbg !196
  %tobool8 = icmp ne i64 %and7, 0, !dbg !196
  br i1 %tobool8, label %if.then, label %if.end, !dbg !197

if.then:                                          ; preds = %land.lhs.true
  store i64 1, i64* %val, align 8, !dbg !198
  br label %if.end, !dbg !199

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %14 = load i64, i64* %parent_rate.addr, align 8, !dbg !200
  %15 = load i64, i64* %val, align 8, !dbg !201
  %mul = mul i64 %14, %15, !dbg !202
  ret i64 %mul, !dbg !203
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @clk_multiplier_round_rate(%struct.clk_hw* %hw, i64 %rate, i64* %parent_rate) #0 !dbg !204 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %parent_rate.addr = alloca i64*, align 8
  %mult = alloca %struct.clk_multiplier*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_multiplier*, align 8
  %factor = alloca i64, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !205, metadata !DIExpression()), !dbg !206
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !207, metadata !DIExpression()), !dbg !208
  store i64* %parent_rate, i64** %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %parent_rate.addr, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata %struct.clk_multiplier** %mult, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !213, metadata !DIExpression()), !dbg !215
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !215
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !215
  store i8* %1, i8** %__mptr, align 8, !dbg !215
  br label %do.body, !dbg !215

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !216

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !215
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !215
  %3 = bitcast i8* %add.ptr to %struct.clk_multiplier*, !dbg !215
  store %struct.clk_multiplier* %3, %struct.clk_multiplier** %tmp, align 8, !dbg !216
  %4 = load %struct.clk_multiplier*, %struct.clk_multiplier** %tmp, align 8, !dbg !215
  store %struct.clk_multiplier* %4, %struct.clk_multiplier** %mult, align 8, !dbg !212
  call void @llvm.dbg.declare(metadata i64* %factor, metadata !218, metadata !DIExpression()), !dbg !219
  %5 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !220
  %6 = load i64, i64* %rate.addr, align 8, !dbg !221
  %7 = load i64*, i64** %parent_rate.addr, align 8, !dbg !222
  %8 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !223
  %width = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %8, i32 0, i32 3, !dbg !224
  %9 = load i8, i8* %width, align 1, !dbg !224
  %10 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !225
  %flags = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %10, i32 0, i32 4, !dbg !226
  %11 = load i8, i8* %flags, align 2, !dbg !226
  %conv = zext i8 %11 to i64, !dbg !225
  %call = call i64 @__bestmult(%struct.clk_hw* %5, i64 %6, i64* %7, i8 zeroext %9, i64 %conv) #5, !dbg !227
  store i64 %call, i64* %factor, align 8, !dbg !219
  %12 = load i64*, i64** %parent_rate.addr, align 8, !dbg !228
  %13 = load i64, i64* %12, align 8, !dbg !229
  %14 = load i64, i64* %factor, align 8, !dbg !230
  %mul = mul i64 %13, %14, !dbg !231
  ret i64 %mul, !dbg !232
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_multiplier_set_rate(%struct.clk_hw* %hw, i64 %rate, i64 %parent_rate) #0 !dbg !233 {
entry:
  %lock.addr.i47 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i47, metadata !234, metadata !DIExpression()), !dbg !239
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !242, metadata !DIExpression()), !dbg !243
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !244, metadata !DIExpression()), !dbg !250
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %parent_rate.addr = alloca i64, align 8
  %mult = alloca %struct.clk_multiplier*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_multiplier*, align 8
  %factor = alloca i64, align 8
  %flags = alloca i64, align 8
  %val = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !258, metadata !DIExpression()), !dbg !259
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !260, metadata !DIExpression()), !dbg !261
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata %struct.clk_multiplier** %mult, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !266, metadata !DIExpression()), !dbg !268
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !268
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !268
  store i8* %1, i8** %__mptr, align 8, !dbg !268
  br label %do.body, !dbg !268

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !269

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !268
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !268
  %3 = bitcast i8* %add.ptr to %struct.clk_multiplier*, !dbg !268
  store %struct.clk_multiplier* %3, %struct.clk_multiplier** %tmp, align 8, !dbg !269
  %4 = load %struct.clk_multiplier*, %struct.clk_multiplier** %tmp, align 8, !dbg !268
  store %struct.clk_multiplier* %4, %struct.clk_multiplier** %mult, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata i64* %factor, metadata !271, metadata !DIExpression()), !dbg !272
  %5 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !273
  %6 = load i64, i64* %rate.addr, align 8, !dbg !274
  %7 = load i64, i64* %parent_rate.addr, align 8, !dbg !275
  %call = call i64 @__get_mult(%struct.clk_multiplier* %5, i64 %6, i64 %7) #5, !dbg !276
  store i64 %call, i64* %factor, align 8, !dbg !272
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !277, metadata !DIExpression()), !dbg !278
  store i64 0, i64* %flags, align 8, !dbg !278
  call void @llvm.dbg.declare(metadata i64* %val, metadata !279, metadata !DIExpression()), !dbg !280
  %8 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !281
  %lock = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %8, i32 0, i32 5, !dbg !282
  %9 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !282
  %tobool = icmp ne %struct.spinlock* %9, null, !dbg !281
  br i1 %tobool, label %if.then, label %if.else, !dbg !283

if.then:                                          ; preds = %do.end
  br label %do.body1, !dbg !284

do.body1:                                         ; preds = %if.then
  br label %do.body2, !dbg !285

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !286, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !289, metadata !DIExpression()), !dbg !288
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !288
  %conv = zext i1 %cmp to i32, !dbg !288
  store i32 1, i32* %tmp3, align 4, !dbg !288
  %10 = load i32, i32* %tmp3, align 4, !dbg !288
  br label %do.body4, !dbg !290

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !291

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !292

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !294, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !298, metadata !DIExpression()), !dbg !297
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !297
  %conv10 = zext i1 %cmp9 to i32, !dbg !297
  store i32 1, i32* %tmp11, align 4, !dbg !297
  %11 = load i32, i32* %tmp11, align 4, !dbg !297
  %call12 = call i64 @arch_local_irq_save() #5, !dbg !299
  store i64 %call12, i64* %flags, align 8, !dbg !299
  br label %do.end13, !dbg !299

do.end13:                                         ; preds = %do.body6
  br label %do.end14, !dbg !292

do.end14:                                         ; preds = %do.end13
  br label %do.body15, !dbg !291

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !300, !srcloc !301
  br label %do.body16, !dbg !300

do.body16:                                        ; preds = %do.body15
  %12 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !302
  %lock17 = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %12, i32 0, i32 5, !dbg !302
  %13 = load %struct.spinlock*, %struct.spinlock** %lock17, align 8, !dbg !302
  store %struct.spinlock* %13, %struct.spinlock** %lock.addr.i, align 8
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !303
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !304
  %rlock.i = bitcast %union.anon* %15 to %struct.raw_spinlock*, !dbg !304
  br label %do.end19, !dbg !302

do.end19:                                         ; preds = %do.body16
  br label %do.end20, !dbg !300

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !291

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !290

do.end22:                                         ; preds = %do.end21
  br label %do.end23, !dbg !285

do.end23:                                         ; preds = %do.end22
  br label %if.end, !dbg !285

if.else:                                          ; preds = %do.end
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end23
  %16 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !305
  %call24 = call i32 @clk_mult_readl(%struct.clk_multiplier* %16) #5, !dbg !306
  %conv25 = zext i32 %call24 to i64, !dbg !306
  store i64 %conv25, i64* %val, align 8, !dbg !307
  %17 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !308
  %shift = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %17, i32 0, i32 2, !dbg !308
  %18 = load i8, i8* %shift, align 8, !dbg !308
  %conv26 = zext i8 %18 to i32, !dbg !308
  %sh_prom = zext i32 %conv26 to i64, !dbg !308
  %shl = shl i64 1, %sh_prom, !dbg !308
  %sub = sub i64 -1, %shl, !dbg !308
  %add = add i64 %sub, 1, !dbg !308
  %19 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !308
  %width = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %19, i32 0, i32 3, !dbg !308
  %20 = load i8, i8* %width, align 1, !dbg !308
  %conv27 = zext i8 %20 to i32, !dbg !308
  %21 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !308
  %shift28 = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %21, i32 0, i32 2, !dbg !308
  %22 = load i8, i8* %shift28, align 8, !dbg !308
  %conv29 = zext i8 %22 to i32, !dbg !308
  %add30 = add i32 %conv27, %conv29, !dbg !308
  %sub31 = sub i32 %add30, 1, !dbg !308
  %sub32 = sub i32 63, %sub31, !dbg !308
  %sh_prom33 = zext i32 %sub32 to i64, !dbg !308
  %shr = lshr i64 -1, %sh_prom33, !dbg !308
  %and = and i64 %add, %shr, !dbg !308
  %add34 = add i64 0, %and, !dbg !308
  %neg = xor i64 %add34, -1, !dbg !309
  %23 = load i64, i64* %val, align 8, !dbg !310
  %and35 = and i64 %23, %neg, !dbg !310
  store i64 %and35, i64* %val, align 8, !dbg !310
  %24 = load i64, i64* %factor, align 8, !dbg !311
  %25 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !312
  %shift36 = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %25, i32 0, i32 2, !dbg !313
  %26 = load i8, i8* %shift36, align 8, !dbg !313
  %conv37 = zext i8 %26 to i32, !dbg !312
  %sh_prom38 = zext i32 %conv37 to i64, !dbg !314
  %shl39 = shl i64 %24, %sh_prom38, !dbg !314
  %27 = load i64, i64* %val, align 8, !dbg !315
  %or = or i64 %27, %shl39, !dbg !315
  store i64 %or, i64* %val, align 8, !dbg !315
  %28 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !316
  %29 = load i64, i64* %val, align 8, !dbg !317
  %conv40 = trunc i64 %29 to i32, !dbg !317
  call void @clk_mult_writel(%struct.clk_multiplier* %28, i32 %conv40) #5, !dbg !318
  %30 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !319
  %lock41 = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %30, i32 0, i32 5, !dbg !320
  %31 = load %struct.spinlock*, %struct.spinlock** %lock41, align 8, !dbg !320
  %tobool42 = icmp ne %struct.spinlock* %31, null, !dbg !319
  br i1 %tobool42, label %if.then43, label %if.else45, !dbg !321

if.then43:                                        ; preds = %if.end
  %32 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !322
  %lock44 = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %32, i32 0, i32 5, !dbg !323
  %33 = load %struct.spinlock*, %struct.spinlock** %lock44, align 8, !dbg !323
  %34 = load i64, i64* %flags, align 8, !dbg !324
  store %struct.spinlock* %33, %struct.spinlock** %lock.addr.i47, align 8
  store i64 %34, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !4, metadata !325, metadata !DIExpression()) #4, !dbg !328
  call void @llvm.dbg.declare(metadata !4, metadata !329, metadata !DIExpression()) #4, !dbg !328
  store i32 1, i32* %tmp.i, align 4, !dbg !328
  %35 = load i32, i32* %tmp.i, align 4, !dbg !328
  call void @llvm.dbg.declare(metadata !4, metadata !330, metadata !DIExpression()) #4, !dbg !335
  call void @llvm.dbg.declare(metadata !4, metadata !336, metadata !DIExpression()) #4, !dbg !335
  store i32 1, i32* %tmp8.i, align 4, !dbg !335
  %36 = load i32, i32* %tmp8.i, align 4, !dbg !335
  %37 = load i64, i64* %flags.addr.i, align 8, !dbg !337
  call void @arch_local_irq_restore(i64 %37) #6, !dbg !337
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !338, !srcloc !340
  %38 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i47, align 8, !dbg !341
  %39 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %38, i32 0, i32 0, !dbg !341
  %rlock.i48 = bitcast %union.anon* %39 to %struct.raw_spinlock*, !dbg !341
  br label %if.end46, !dbg !343

if.else45:                                        ; preds = %if.end
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.then43
  ret i32 0, !dbg !344
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_mult_readl(%struct.clk_multiplier* %mult) #0 !dbg !345 {
entry:
  %retval = alloca i32, align 4
  %mult.addr = alloca %struct.clk_multiplier*, align 8
  store %struct.clk_multiplier* %mult, %struct.clk_multiplier** %mult.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_multiplier** %mult.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult.addr, align 8, !dbg !352
  %flags = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %0, i32 0, i32 4, !dbg !354
  %1 = load i8, i8* %flags, align 2, !dbg !354
  %conv = zext i8 %1 to i64, !dbg !352
  %and = and i64 %conv, 4, !dbg !355
  %tobool = icmp ne i64 %and, 0, !dbg !355
  br i1 %tobool, label %if.then, label %if.end, !dbg !356

if.then:                                          ; preds = %entry
  %2 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult.addr, align 8, !dbg !357
  %reg = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %2, i32 0, i32 1, !dbg !358
  %3 = load i8*, i8** %reg, align 8, !dbg !358
  %call = call i32 @ioread32be(i8* %3) #5, !dbg !359
  store i32 %call, i32* %retval, align 4, !dbg !360
  br label %return, !dbg !360

if.end:                                           ; preds = %entry
  %4 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult.addr, align 8, !dbg !361
  %reg1 = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %4, i32 0, i32 1, !dbg !362
  %5 = load i8*, i8** %reg1, align 8, !dbg !362
  %call2 = call i32 @readl(i8* %5) #5, !dbg !363
  store i32 %call2, i32* %retval, align 4, !dbg !364
  br label %return, !dbg !364

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !365
  ret i32 %6, !dbg !365
}

; Function Attrs: noredzone
declare dso_local i32 @ioread32be(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !366 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !375, metadata !DIExpression()), !dbg !374
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !374
  %1 = bitcast i8* %0 to i32*, !dbg !374
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #4, !dbg !374, !srcloc !376
  store i32 %2, i32* %ret, align 4, !dbg !374
  %3 = load i32, i32* %ret, align 4, !dbg !374
  ret i32 %3, !dbg !374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__bestmult(%struct.clk_hw* %hw, i64 %rate, i64* %best_parent_rate, i8 zeroext %width, i64 %flags) #0 !dbg !377 {
entry:
  %retval = alloca i64, align 8
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %best_parent_rate.addr = alloca i64*, align 8
  %width.addr = alloca i8, align 1
  %flags.addr = alloca i64, align 8
  %mult = alloca %struct.clk_multiplier*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_multiplier*, align 8
  %orig_parent_rate = alloca i64, align 8
  %parent_rate = alloca i64, align 8
  %current_rate = alloca i64, align 8
  %best_rate = alloca i64, align 8
  %i = alloca i32, align 4
  %bestmult = alloca i32, align 4
  %maxmult = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !380, metadata !DIExpression()), !dbg !381
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !382, metadata !DIExpression()), !dbg !383
  store i64* %best_parent_rate, i64** %best_parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %best_parent_rate.addr, metadata !384, metadata !DIExpression()), !dbg !385
  store i8 %width, i8* %width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %width.addr, metadata !386, metadata !DIExpression()), !dbg !387
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.declare(metadata %struct.clk_multiplier** %mult, metadata !390, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !392, metadata !DIExpression()), !dbg !394
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !394
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !394
  store i8* %1, i8** %__mptr, align 8, !dbg !394
  br label %do.body, !dbg !394

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !395

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !394
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !394
  %3 = bitcast i8* %add.ptr to %struct.clk_multiplier*, !dbg !394
  store %struct.clk_multiplier* %3, %struct.clk_multiplier** %tmp, align 8, !dbg !395
  %4 = load %struct.clk_multiplier*, %struct.clk_multiplier** %tmp, align 8, !dbg !394
  store %struct.clk_multiplier* %4, %struct.clk_multiplier** %mult, align 8, !dbg !391
  call void @llvm.dbg.declare(metadata i64* %orig_parent_rate, metadata !397, metadata !DIExpression()), !dbg !398
  %5 = load i64*, i64** %best_parent_rate.addr, align 8, !dbg !399
  %6 = load i64, i64* %5, align 8, !dbg !400
  store i64 %6, i64* %orig_parent_rate, align 8, !dbg !398
  call void @llvm.dbg.declare(metadata i64* %parent_rate, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata i64* %current_rate, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata i64* %best_rate, metadata !405, metadata !DIExpression()), !dbg !406
  store i64 -1, i64* %best_rate, align 8, !dbg !406
  call void @llvm.dbg.declare(metadata i32* %i, metadata !407, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.declare(metadata i32* %bestmult, metadata !409, metadata !DIExpression()), !dbg !410
  store i32 0, i32* %bestmult, align 4, !dbg !410
  call void @llvm.dbg.declare(metadata i32* %maxmult, metadata !411, metadata !DIExpression()), !dbg !412
  %7 = load i8, i8* %width.addr, align 1, !dbg !413
  %conv = zext i8 %7 to i32, !dbg !413
  %shl = shl i32 1, %conv, !dbg !414
  %sub = sub i32 %shl, 1, !dbg !415
  store i32 %sub, i32* %maxmult, align 4, !dbg !412
  %8 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !416
  %call = call i64 @clk_hw_get_flags(%struct.clk_hw* %8) #5, !dbg !418
  %and = and i64 %call, 4, !dbg !419
  %tobool = icmp ne i64 %and, 0, !dbg !419
  br i1 %tobool, label %if.end13, label %if.then, !dbg !420

if.then:                                          ; preds = %do.end
  %9 = load i64, i64* %rate.addr, align 8, !dbg !421
  %10 = load i64, i64* %orig_parent_rate, align 8, !dbg !423
  %div = udiv i64 %9, %10, !dbg !424
  %conv1 = trunc i64 %div to i32, !dbg !421
  store i32 %conv1, i32* %bestmult, align 4, !dbg !425
  %11 = load i32, i32* %bestmult, align 4, !dbg !426
  %cmp = icmp eq i32 %11, 0, !dbg !428
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !429

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult, align 8, !dbg !430
  %flags3 = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %12, i32 0, i32 4, !dbg !431
  %13 = load i8, i8* %flags3, align 2, !dbg !431
  %conv4 = zext i8 %13 to i64, !dbg !430
  %and5 = and i64 %conv4, 1, !dbg !432
  %tobool6 = icmp ne i64 %and5, 0, !dbg !432
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !433

if.then7:                                         ; preds = %land.lhs.true
  store i32 1, i32* %bestmult, align 4, !dbg !434
  br label %if.end, !dbg !435

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then
  %14 = load i32, i32* %bestmult, align 4, !dbg !436
  %15 = load i32, i32* %maxmult, align 4, !dbg !438
  %cmp8 = icmp ugt i32 %14, %15, !dbg !439
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !440

if.then10:                                        ; preds = %if.end
  %16 = load i32, i32* %maxmult, align 4, !dbg !441
  store i32 %16, i32* %bestmult, align 4, !dbg !442
  br label %if.end11, !dbg !443

if.end11:                                         ; preds = %if.then10, %if.end
  %17 = load i32, i32* %bestmult, align 4, !dbg !444
  %conv12 = zext i32 %17 to i64, !dbg !444
  store i64 %conv12, i64* %retval, align 8, !dbg !445
  br label %return, !dbg !445

if.end13:                                         ; preds = %do.end
  store i32 1, i32* %i, align 4, !dbg !446
  br label %for.cond, !dbg !448

for.cond:                                         ; preds = %for.inc, %if.end13
  %18 = load i32, i32* %i, align 4, !dbg !449
  %19 = load i32, i32* %maxmult, align 4, !dbg !451
  %cmp14 = icmp ult i32 %18, %19, !dbg !452
  br i1 %cmp14, label %for.body, label %for.end, !dbg !453

for.body:                                         ; preds = %for.cond
  %20 = load i64, i64* %rate.addr, align 8, !dbg !454
  %21 = load i64, i64* %orig_parent_rate, align 8, !dbg !457
  %22 = load i32, i32* %i, align 4, !dbg !458
  %conv16 = zext i32 %22 to i64, !dbg !458
  %mul = mul i64 %21, %conv16, !dbg !459
  %cmp17 = icmp eq i64 %20, %mul, !dbg !460
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !461

if.then19:                                        ; preds = %for.body
  %23 = load i64, i64* %orig_parent_rate, align 8, !dbg !462
  %24 = load i64*, i64** %best_parent_rate.addr, align 8, !dbg !464
  store i64 %23, i64* %24, align 8, !dbg !465
  %25 = load i32, i32* %i, align 4, !dbg !466
  %conv20 = zext i32 %25 to i64, !dbg !466
  store i64 %conv20, i64* %retval, align 8, !dbg !467
  br label %return, !dbg !467

if.end21:                                         ; preds = %for.body
  %26 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !468
  %call22 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %26) #5, !dbg !469
  %27 = load i64, i64* %rate.addr, align 8, !dbg !470
  %28 = load i32, i32* %i, align 4, !dbg !471
  %conv23 = zext i32 %28 to i64, !dbg !471
  %div24 = udiv i64 %27, %conv23, !dbg !472
  %call25 = call i64 @clk_hw_round_rate(%struct.clk_hw* %call22, i64 %div24) #5, !dbg !473
  store i64 %call25, i64* %parent_rate, align 8, !dbg !474
  %29 = load i64, i64* %parent_rate, align 8, !dbg !475
  %30 = load i32, i32* %i, align 4, !dbg !476
  %conv26 = zext i32 %30 to i64, !dbg !476
  %mul27 = mul i64 %29, %conv26, !dbg !477
  store i64 %mul27, i64* %current_rate, align 8, !dbg !478
  %31 = load i64, i64* %rate.addr, align 8, !dbg !479
  %32 = load i64, i64* %current_rate, align 8, !dbg !481
  %33 = load i64, i64* %best_rate, align 8, !dbg !482
  %34 = load i64, i64* %flags.addr, align 8, !dbg !483
  %call28 = call zeroext i1 @__is_best_rate(i64 %31, i64 %32, i64 %33, i64 %34) #5, !dbg !484
  br i1 %call28, label %if.then29, label %if.end30, !dbg !485

if.then29:                                        ; preds = %if.end21
  %35 = load i32, i32* %i, align 4, !dbg !486
  store i32 %35, i32* %bestmult, align 4, !dbg !488
  %36 = load i64, i64* %current_rate, align 8, !dbg !489
  store i64 %36, i64* %best_rate, align 8, !dbg !490
  %37 = load i64, i64* %parent_rate, align 8, !dbg !491
  %38 = load i64*, i64** %best_parent_rate.addr, align 8, !dbg !492
  store i64 %37, i64* %38, align 8, !dbg !493
  br label %if.end30, !dbg !494

if.end30:                                         ; preds = %if.then29, %if.end21
  br label %for.inc, !dbg !495

for.inc:                                          ; preds = %if.end30
  %39 = load i32, i32* %i, align 4, !dbg !496
  %inc = add i32 %39, 1, !dbg !496
  store i32 %inc, i32* %i, align 4, !dbg !496
  br label %for.cond, !dbg !497, !llvm.loop !498

for.end:                                          ; preds = %for.cond
  %40 = load i32, i32* %bestmult, align 4, !dbg !500
  %conv31 = zext i32 %40 to i64, !dbg !500
  store i64 %conv31, i64* %retval, align 8, !dbg !501
  br label %return, !dbg !501

return:                                           ; preds = %for.end, %if.then19, %if.end11
  %41 = load i64, i64* %retval, align 8, !dbg !502
  ret i64 %41, !dbg !502
}

; Function Attrs: noredzone
declare dso_local i64 @clk_hw_get_flags(%struct.clk_hw*) #2

; Function Attrs: noredzone
declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #2

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__is_best_rate(i64 %rate, i64 %new, i64 %best, i64 %flags) #0 !dbg !503 {
entry:
  %retval = alloca i1, align 1
  %rate.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  %best.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %__x = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__x2 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !509, metadata !DIExpression()), !dbg !510
  store i64 %new, i64* %new.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr, metadata !511, metadata !DIExpression()), !dbg !512
  store i64 %best, i64* %best.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %best.addr, metadata !513, metadata !DIExpression()), !dbg !514
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !515, metadata !DIExpression()), !dbg !516
  %0 = load i64, i64* %flags.addr, align 8, !dbg !517
  %and = and i64 %0, 2, !dbg !519
  %tobool = icmp ne i64 %and, 0, !dbg !519
  br i1 %tobool, label %if.then, label %if.end, !dbg !520

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__x, metadata !521, metadata !DIExpression()), !dbg !523
  %1 = load i64, i64* %rate.addr, align 8, !dbg !523
  %2 = load i64, i64* %new.addr, align 8, !dbg !523
  %sub = sub i64 %1, %2, !dbg !523
  store i64 %sub, i64* %__x, align 8, !dbg !523
  %3 = load i64, i64* %__x, align 8, !dbg !523
  %cmp = icmp slt i64 %3, 0, !dbg !523
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !523

cond.true:                                        ; preds = %if.then
  %4 = load i64, i64* %__x, align 8, !dbg !523
  %sub1 = sub i64 0, %4, !dbg !523
  br label %cond.end, !dbg !523

cond.false:                                       ; preds = %if.then
  %5 = load i64, i64* %__x, align 8, !dbg !523
  br label %cond.end, !dbg !523

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub1, %cond.true ], [ %5, %cond.false ], !dbg !523
  store i64 %cond, i64* %tmp, align 8, !dbg !523
  %6 = load i64, i64* %tmp, align 8, !dbg !523
  call void @llvm.dbg.declare(metadata i64* %__x2, metadata !524, metadata !DIExpression()), !dbg !526
  %7 = load i64, i64* %rate.addr, align 8, !dbg !526
  %8 = load i64, i64* %best.addr, align 8, !dbg !526
  %sub3 = sub i64 %7, %8, !dbg !526
  store i64 %sub3, i64* %__x2, align 8, !dbg !526
  %9 = load i64, i64* %__x2, align 8, !dbg !526
  %cmp5 = icmp slt i64 %9, 0, !dbg !526
  br i1 %cmp5, label %cond.true6, label %cond.false8, !dbg !526

cond.true6:                                       ; preds = %cond.end
  %10 = load i64, i64* %__x2, align 8, !dbg !526
  %sub7 = sub i64 0, %10, !dbg !526
  br label %cond.end9, !dbg !526

cond.false8:                                      ; preds = %cond.end
  %11 = load i64, i64* %__x2, align 8, !dbg !526
  br label %cond.end9, !dbg !526

cond.end9:                                        ; preds = %cond.false8, %cond.true6
  %cond10 = phi i64 [ %sub7, %cond.true6 ], [ %11, %cond.false8 ], !dbg !526
  store i64 %cond10, i64* %tmp4, align 8, !dbg !526
  %12 = load i64, i64* %tmp4, align 8, !dbg !526
  %cmp11 = icmp slt i64 %6, %12, !dbg !527
  store i1 %cmp11, i1* %retval, align 1, !dbg !528
  br label %return, !dbg !528

if.end:                                           ; preds = %entry
  %13 = load i64, i64* %new.addr, align 8, !dbg !529
  %14 = load i64, i64* %rate.addr, align 8, !dbg !530
  %cmp12 = icmp uge i64 %13, %14, !dbg !531
  br i1 %cmp12, label %land.rhs, label %land.end, !dbg !532

land.rhs:                                         ; preds = %if.end
  %15 = load i64, i64* %new.addr, align 8, !dbg !533
  %16 = load i64, i64* %best.addr, align 8, !dbg !534
  %cmp13 = icmp ult i64 %15, %16, !dbg !535
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %17 = phi i1 [ false, %if.end ], [ %cmp13, %land.rhs ], !dbg !536
  store i1 %17, i1* %retval, align 1, !dbg !537
  br label %return, !dbg !537

return:                                           ; preds = %land.end, %cond.end9
  %18 = load i1, i1* %retval, align 1, !dbg !538
  ret i1 %18, !dbg !538
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__get_mult(%struct.clk_multiplier* %mult, i64 %rate, i64 %parent_rate) #0 !dbg !539 {
entry:
  %retval = alloca i64, align 8
  %mult.addr = alloca %struct.clk_multiplier*, align 8
  %rate.addr = alloca i64, align 8
  %parent_rate.addr = alloca i64, align 8
  %__x = alloca i64, align 8
  %__d = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.clk_multiplier* %mult, %struct.clk_multiplier** %mult.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_multiplier** %mult.addr, metadata !542, metadata !DIExpression()), !dbg !543
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !544, metadata !DIExpression()), !dbg !545
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !546, metadata !DIExpression()), !dbg !547
  %0 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult.addr, align 8, !dbg !548
  %flags = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %0, i32 0, i32 4, !dbg !550
  %1 = load i8, i8* %flags, align 2, !dbg !550
  %conv = zext i8 %1 to i64, !dbg !548
  %and = and i64 %conv, 2, !dbg !551
  %tobool = icmp ne i64 %and, 0, !dbg !551
  br i1 %tobool, label %if.then, label %if.end, !dbg !552

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__x, metadata !553, metadata !DIExpression()), !dbg !555
  %2 = load i64, i64* %rate.addr, align 8, !dbg !555
  store i64 %2, i64* %__x, align 8, !dbg !555
  call void @llvm.dbg.declare(metadata i64* %__d, metadata !556, metadata !DIExpression()), !dbg !555
  %3 = load i64, i64* %parent_rate.addr, align 8, !dbg !555
  store i64 %3, i64* %__d, align 8, !dbg !555
  %4 = load i64, i64* %__x, align 8, !dbg !555
  %5 = load i64, i64* %__d, align 8, !dbg !555
  %div = udiv i64 %5, 2, !dbg !555
  %add = add i64 %4, %div, !dbg !555
  %6 = load i64, i64* %__d, align 8, !dbg !555
  %div1 = udiv i64 %add, %6, !dbg !555
  store i64 %div1, i64* %tmp, align 8, !dbg !555
  %7 = load i64, i64* %tmp, align 8, !dbg !555
  store i64 %7, i64* %retval, align 8, !dbg !557
  br label %return, !dbg !557

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %rate.addr, align 8, !dbg !558
  %9 = load i64, i64* %parent_rate.addr, align 8, !dbg !559
  %div2 = udiv i64 %8, %9, !dbg !560
  store i64 %div2, i64* %retval, align 8, !dbg !561
  br label %return, !dbg !561

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !562
  ret i64 %10, !dbg !562
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !563 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !567, metadata !DIExpression()), !dbg !568
  %call = call i64 @arch_local_save_flags() #5, !dbg !569
  store i64 %call, i64* %f, align 8, !dbg !570
  call void @arch_local_irq_disable() #5, !dbg !571
  %0 = load i64, i64* %f, align 8, !dbg !572
  ret i64 %0, !dbg !573
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_mult_writel(%struct.clk_multiplier* %mult, i32 %val) #0 !dbg !574 {
entry:
  %mult.addr = alloca %struct.clk_multiplier*, align 8
  %val.addr = alloca i32, align 4
  store %struct.clk_multiplier* %mult, %struct.clk_multiplier** %mult.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_multiplier** %mult.addr, metadata !577, metadata !DIExpression()), !dbg !578
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !579, metadata !DIExpression()), !dbg !580
  %0 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult.addr, align 8, !dbg !581
  %flags = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %0, i32 0, i32 4, !dbg !583
  %1 = load i8, i8* %flags, align 2, !dbg !583
  %conv = zext i8 %1 to i64, !dbg !581
  %and = and i64 %conv, 4, !dbg !584
  %tobool = icmp ne i64 %and, 0, !dbg !584
  br i1 %tobool, label %if.then, label %if.else, !dbg !585

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %val.addr, align 4, !dbg !586
  %3 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult.addr, align 8, !dbg !587
  %reg = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %3, i32 0, i32 1, !dbg !588
  %4 = load i8*, i8** %reg, align 8, !dbg !588
  call void @iowrite32be(i32 %2, i8* %4) #5, !dbg !589
  br label %if.end, !dbg !589

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %val.addr, align 4, !dbg !590
  %6 = load %struct.clk_multiplier*, %struct.clk_multiplier** %mult.addr, align 8, !dbg !591
  %reg1 = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %6, i32 0, i32 1, !dbg !592
  %7 = load i8*, i8** %reg1, align 8, !dbg !592
  call void @writel(i32 %5, i8* %7) #5, !dbg !593
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !594
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !595 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !596, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !599, metadata !DIExpression()), !dbg !598
  %0 = load i64, i64* %__edi, align 8, !dbg !598
  store i64 %0, i64* %__edi, align 8, !dbg !598
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !600, metadata !DIExpression()), !dbg !598
  %1 = load i64, i64* %__esi, align 8, !dbg !598
  store i64 %1, i64* %__esi, align 8, !dbg !598
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !601, metadata !DIExpression()), !dbg !598
  %2 = load i64, i64* %__edx, align 8, !dbg !598
  store i64 %2, i64* %__edx, align 8, !dbg !598
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !602, metadata !DIExpression()), !dbg !598
  %3 = load i64, i64* %__ecx, align 8, !dbg !598
  store i64 %3, i64* %__ecx, align 8, !dbg !598
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !603, metadata !DIExpression()), !dbg !598
  %4 = load i64, i64* %__eax, align 8, !dbg !598
  store i64 %4, i64* %__eax, align 8, !dbg !598
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !598
  %6 = call i64 @llvm.read_register.i64(metadata !163), !dbg !604
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #4, !dbg !604, !srcloc !607
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !604
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !604
  store i64 %asmresult, i64* %__eax, align 8, !dbg !604
  call void @llvm.write_register.i64(metadata !163, i64 %asmresult1), !dbg !604
  %8 = load i64, i64* %__eax, align 8, !dbg !604
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !608, metadata !DIExpression()), !dbg !610
  store i64 -1, i64* %__mask, align 8, !dbg !610
  %9 = load i64, i64* %__mask, align 8, !dbg !610
  store i64 %9, i64* %tmp, align 8, !dbg !610
  %10 = load i64, i64* %tmp, align 8, !dbg !610
  %and = and i64 %8, %10, !dbg !604
  store i64 %and, i64* %__ret, align 8, !dbg !604
  %11 = load i64, i64* %__ret, align 8, !dbg !598
  store i64 %11, i64* %tmp2, align 8, !dbg !611
  %12 = load i64, i64* %tmp2, align 8, !dbg !598
  ret i64 %12, !dbg !612
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !613 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !616, metadata !DIExpression()), !dbg !618
  %0 = load i64, i64* %__edi, align 8, !dbg !618
  store i64 %0, i64* %__edi, align 8, !dbg !618
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !619, metadata !DIExpression()), !dbg !618
  %1 = load i64, i64* %__esi, align 8, !dbg !618
  store i64 %1, i64* %__esi, align 8, !dbg !618
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !620, metadata !DIExpression()), !dbg !618
  %2 = load i64, i64* %__edx, align 8, !dbg !618
  store i64 %2, i64* %__edx, align 8, !dbg !618
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !621, metadata !DIExpression()), !dbg !618
  %3 = load i64, i64* %__ecx, align 8, !dbg !618
  store i64 %3, i64* %__ecx, align 8, !dbg !618
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !622, metadata !DIExpression()), !dbg !618
  %4 = load i64, i64* %__eax, align 8, !dbg !618
  store i64 %4, i64* %__eax, align 8, !dbg !618
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !618
  %6 = call i64 @llvm.read_register.i64(metadata !163), !dbg !618
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #4, !dbg !618, !srcloc !623
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !618
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !618
  store i64 %asmresult, i64* %__eax, align 8, !dbg !618
  call void @llvm.write_register.i64(metadata !163, i64 %asmresult1), !dbg !618
  ret void, !dbg !624
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noredzone
declare dso_local void @iowrite32be(i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !625 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !629, metadata !DIExpression()), !dbg !630
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !631, metadata !DIExpression()), !dbg !630
  %0 = load i32, i32* %val.addr, align 4, !dbg !630
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !630
  %2 = bitcast i8* %1 to i32*, !dbg !630
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #4, !dbg !630, !srcloc !632
  ret void, !dbg !630
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !633 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !636, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !638, metadata !DIExpression()), !dbg !640
  %0 = load i64, i64* %__edi, align 8, !dbg !640
  store i64 %0, i64* %__edi, align 8, !dbg !640
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !641, metadata !DIExpression()), !dbg !640
  %1 = load i64, i64* %__esi, align 8, !dbg !640
  store i64 %1, i64* %__esi, align 8, !dbg !640
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !642, metadata !DIExpression()), !dbg !640
  %2 = load i64, i64* %__edx, align 8, !dbg !640
  store i64 %2, i64* %__edx, align 8, !dbg !640
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !643, metadata !DIExpression()), !dbg !640
  %3 = load i64, i64* %__ecx, align 8, !dbg !640
  store i64 %3, i64* %__ecx, align 8, !dbg !640
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !644, metadata !DIExpression()), !dbg !640
  %4 = load i64, i64* %__eax, align 8, !dbg !640
  store i64 %4, i64* %__eax, align 8, !dbg !640
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !640
  %6 = call i64 @llvm.read_register.i64(metadata !163), !dbg !640
  %7 = load i64, i64* %f.addr, align 8, !dbg !640
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #4, !dbg !640, !srcloc !645
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !640
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !640
  store i64 %asmresult, i64* %__eax, align 8, !dbg !640
  call void @llvm.write_register.i64(metadata !163, i64 %asmresult1), !dbg !640
  ret void, !dbg !646
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { noredzone }
attributes #6 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!163}
!llvm.module.flags = !{!164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "clk_multiplier_ops", scope: !2, file: !3, line: 151, type: !31, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !162, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/clk/clk-multiplier.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !7, !38, !160, !56}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_multiplier", file: !9, line: 996, size: 384, elements: !10)
!9 = !DIFile(filename: "./include/linux/clk-provider.h", directory: "/home/lizy2001/genbc/linux")
!10 = !{!11, !140, !141, !142, !143, !144}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !8, file: !9, line: 997, baseType: !12, size: 192)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_hw", file: !9, line: 312, size: 192, elements: !13)
!13 = !{!14, !17, !20}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !12, file: !9, line: 313, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk_core", file: !9, line: 38, flags: DIFlagFwdDecl)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !12, file: !9, line: 314, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !9, line: 36, flags: DIFlagFwdDecl)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !12, file: !9, line: 315, baseType: !21, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_init_data", file: !9, line: 285, size: 448, elements: !24)
!24 = !{!25, !29, !122, !125, !136, !138, !139}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !23, file: !9, line: 286, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !23, file: !9, line: 287, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_ops", file: !9, line: 220, size: 1600, elements: !33)
!33 = !{!34, !40, !44, !45, !46, !47, !48, !49, !50, !51, !52, !57, !63, !75, !84, !88, !92, !96, !97, !98, !102, !112, !113, !114, !115}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !32, file: !9, line: 221, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !39}
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !32, file: !9, line: 222, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !39}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !32, file: !9, line: 223, baseType: !35, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_unused", scope: !32, file: !9, line: 224, baseType: !41, size: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !32, file: !9, line: 225, baseType: !35, size: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !32, file: !9, line: 226, baseType: !41, size: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "is_enabled", scope: !32, file: !9, line: 227, baseType: !35, size: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "disable_unused", scope: !32, file: !9, line: 228, baseType: !41, size: 64, offset: 448)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "save_context", scope: !32, file: !9, line: 229, baseType: !35, size: 64, offset: 512)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "restore_context", scope: !32, file: !9, line: 230, baseType: !41, size: 64, offset: 576)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_rate", scope: !32, file: !9, line: 231, baseType: !53, size: 64, offset: 640)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !39, !56}
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "round_rate", scope: !32, file: !9, line: 233, baseType: !58, size: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !39, !56, !62}
!61 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "determine_rate", scope: !32, file: !9, line: 235, baseType: !64, size: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!38, !39, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_rate_request", file: !9, line: 55, size: 320, elements: !69)
!69 = !{!70, !71, !72, !73, !74}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !68, file: !9, line: 56, baseType: !56, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "min_rate", scope: !68, file: !9, line: 57, baseType: !56, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "max_rate", scope: !68, file: !9, line: 58, baseType: !56, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_rate", scope: !68, file: !9, line: 59, baseType: !56, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_hw", scope: !68, file: !9, line: 60, baseType: !39, size: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "set_parent", scope: !32, file: !9, line: 237, baseType: !76, size: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!38, !39, !79}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !80, line: 17, baseType: !81)
!80 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !82, line: 21, baseType: !83)
!82 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!83 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !32, file: !9, line: 238, baseType: !85, size: 64, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!79, !39}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !32, file: !9, line: 239, baseType: !89, size: 64, offset: 960)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!38, !39, !56, !56}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate_and_parent", scope: !32, file: !9, line: 241, baseType: !93, size: 64, offset: 1024)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!38, !39, !56, !56, !79}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_accuracy", scope: !32, file: !9, line: 244, baseType: !53, size: 64, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "get_phase", scope: !32, file: !9, line: 246, baseType: !35, size: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "set_phase", scope: !32, file: !9, line: 247, baseType: !99, size: 64, offset: 1216)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!38, !39, !38}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "get_duty_cycle", scope: !32, file: !9, line: 248, baseType: !103, size: 64, offset: 1280)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!38, !39, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_duty", file: !9, line: 69, size: 64, elements: !108)
!108 = !{!109, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !107, file: !9, line: 70, baseType: !110, size: 32)
!110 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !107, file: !9, line: 71, baseType: !110, size: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "set_duty_cycle", scope: !32, file: !9, line: 250, baseType: !103, size: 64, offset: 1344)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !32, file: !9, line: 252, baseType: !35, size: 64, offset: 1408)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "terminate", scope: !32, file: !9, line: 253, baseType: !41, size: 64, offset: 1472)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "debug_init", scope: !32, file: !9, line: 254, baseType: !116, size: 64, offset: 1536)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !39, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !121, line: 21, flags: DIFlagFwdDecl)
!121 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!122 = !DIDerivedType(tag: DW_TAG_member, name: "parent_names", scope: !23, file: !9, line: 289, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !23, file: !9, line: 290, baseType: !126, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_parent_data", file: !9, line: 264, size: 256, elements: !129)
!129 = !{!130, !133, !134, !135}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !128, file: !9, line: 265, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "fw_name", scope: !128, file: !9, line: 266, baseType: !26, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !9, line: 267, baseType: !26, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !128, file: !9, line: 268, baseType: !38, size: 32, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "parent_hws", scope: !23, file: !9, line: 291, baseType: !137, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "num_parents", scope: !23, file: !9, line: 292, baseType: !79, size: 8, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !9, line: 293, baseType: !56, size: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !8, file: !9, line: 998, baseType: !6, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !8, file: !9, line: 999, baseType: !79, size: 8, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !8, file: !9, line: 1000, baseType: !79, size: 8, offset: 264)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !8, file: !9, line: 1001, baseType: !79, size: 8, offset: 272)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !8, file: !9, line: 1002, baseType: !145, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !147, line: 83, baseType: !148)
!147 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !147, line: 71, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !148, file: !147, line: 72, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !148, file: !147, line: 72, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !151, file: !147, line: 73, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !147, line: 20, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !154, file: !147, line: 21, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !158, line: 25, baseType: !159)
!158 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 25, elements: !4)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !110)
!162 = !{!0}
!163 = !{!"rsp"}
!164 = !{i32 7, !"Dwarf Version", i32 4}
!165 = !{i32 2, !"Debug Info Version", i32 3}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"Code Model", i32 2}
!168 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!169 = distinct !DISubprogram(name: "clk_multiplier_recalc_rate", scope: !3, file: !3, line: 41, type: !54, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!170 = !DILocalVariable(name: "hw", arg: 1, scope: !169, file: !3, line: 41, type: !39)
!171 = !DILocation(line: 41, column: 64, scope: !169)
!172 = !DILocalVariable(name: "parent_rate", arg: 2, scope: !169, file: !3, line: 42, type: !56)
!173 = !DILocation(line: 42, column: 21, scope: !169)
!174 = !DILocalVariable(name: "mult", scope: !169, file: !3, line: 44, type: !7)
!175 = !DILocation(line: 44, column: 25, scope: !169)
!176 = !DILocalVariable(name: "__mptr", scope: !177, file: !3, line: 44, type: !6)
!177 = distinct !DILexicalBlock(scope: !169, file: !3, line: 44, column: 32)
!178 = !DILocation(line: 44, column: 32, scope: !177)
!179 = !DILocation(line: 44, column: 32, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !3, line: 44, column: 32)
!181 = !DILocalVariable(name: "val", scope: !169, file: !3, line: 45, type: !56)
!182 = !DILocation(line: 45, column: 16, scope: !169)
!183 = !DILocation(line: 47, column: 23, scope: !169)
!184 = !DILocation(line: 47, column: 8, scope: !169)
!185 = !DILocation(line: 47, column: 32, scope: !169)
!186 = !DILocation(line: 47, column: 38, scope: !169)
!187 = !DILocation(line: 47, column: 29, scope: !169)
!188 = !DILocation(line: 47, column: 6, scope: !169)
!189 = !DILocation(line: 48, column: 9, scope: !169)
!190 = !DILocation(line: 48, column: 6, scope: !169)
!191 = !DILocation(line: 50, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !169, file: !3, line: 50, column: 6)
!193 = !DILocation(line: 50, column: 11, scope: !192)
!194 = !DILocation(line: 50, column: 14, scope: !192)
!195 = !DILocation(line: 50, column: 20, scope: !192)
!196 = !DILocation(line: 50, column: 26, scope: !192)
!197 = !DILocation(line: 50, column: 6, scope: !169)
!198 = !DILocation(line: 51, column: 7, scope: !192)
!199 = !DILocation(line: 51, column: 3, scope: !192)
!200 = !DILocation(line: 53, column: 9, scope: !169)
!201 = !DILocation(line: 53, column: 23, scope: !169)
!202 = !DILocation(line: 53, column: 21, scope: !169)
!203 = !DILocation(line: 53, column: 2, scope: !169)
!204 = distinct !DISubprogram(name: "clk_multiplier_round_rate", scope: !3, file: !3, line: 115, type: !59, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!205 = !DILocalVariable(name: "hw", arg: 1, scope: !204, file: !3, line: 115, type: !39)
!206 = !DILocation(line: 115, column: 54, scope: !204)
!207 = !DILocalVariable(name: "rate", arg: 2, scope: !204, file: !3, line: 115, type: !56)
!208 = !DILocation(line: 115, column: 72, scope: !204)
!209 = !DILocalVariable(name: "parent_rate", arg: 3, scope: !204, file: !3, line: 116, type: !62)
!210 = !DILocation(line: 116, column: 22, scope: !204)
!211 = !DILocalVariable(name: "mult", scope: !204, file: !3, line: 118, type: !7)
!212 = !DILocation(line: 118, column: 25, scope: !204)
!213 = !DILocalVariable(name: "__mptr", scope: !214, file: !3, line: 118, type: !6)
!214 = distinct !DILexicalBlock(scope: !204, file: !3, line: 118, column: 32)
!215 = !DILocation(line: 118, column: 32, scope: !214)
!216 = !DILocation(line: 118, column: 32, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !3, line: 118, column: 32)
!218 = !DILocalVariable(name: "factor", scope: !204, file: !3, line: 119, type: !56)
!219 = !DILocation(line: 119, column: 16, scope: !204)
!220 = !DILocation(line: 119, column: 36, scope: !204)
!221 = !DILocation(line: 119, column: 40, scope: !204)
!222 = !DILocation(line: 119, column: 46, scope: !204)
!223 = !DILocation(line: 120, column: 8, scope: !204)
!224 = !DILocation(line: 120, column: 14, scope: !204)
!225 = !DILocation(line: 120, column: 21, scope: !204)
!226 = !DILocation(line: 120, column: 27, scope: !204)
!227 = !DILocation(line: 119, column: 25, scope: !204)
!228 = !DILocation(line: 122, column: 10, scope: !204)
!229 = !DILocation(line: 122, column: 9, scope: !204)
!230 = !DILocation(line: 122, column: 24, scope: !204)
!231 = !DILocation(line: 122, column: 22, scope: !204)
!232 = !DILocation(line: 122, column: 2, scope: !204)
!233 = distinct !DISubprogram(name: "clk_multiplier_set_rate", scope: !3, file: !3, line: 125, type: !90, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!234 = !DILocalVariable(name: "lock", arg: 1, scope: !235, file: !236, line: 407, type: !145)
!235 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !236, file: !236, line: 407, type: !237, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!236 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!237 = !DISubroutineType(types: !238)
!238 = !{null, !145, !56}
!239 = !DILocation(line: 407, column: 64, scope: !235, inlinedAt: !240)
!240 = distinct !DILocation(line: 144, column: 3, scope: !241)
!241 = distinct !DILexicalBlock(scope: !233, file: !3, line: 143, column: 6)
!242 = !DILocalVariable(name: "flags", arg: 2, scope: !235, file: !236, line: 407, type: !56)
!243 = !DILocation(line: 407, column: 84, scope: !235, inlinedAt: !240)
!244 = !DILocalVariable(name: "lock", arg: 1, scope: !245, file: !236, line: 327, type: !145)
!245 = distinct !DISubprogram(name: "spinlock_check", scope: !236, file: !236, line: 327, type: !246, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !145}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !147, line: 29, baseType: !154)
!250 = !DILocation(line: 327, column: 67, scope: !245, inlinedAt: !251)
!251 = distinct !DILocation(line: 134, column: 3, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 134, column: 3)
!253 = distinct !DILexicalBlock(scope: !254, file: !3, line: 134, column: 3)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 134, column: 3)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 134, column: 3)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 134, column: 3)
!257 = distinct !DILexicalBlock(scope: !233, file: !3, line: 133, column: 6)
!258 = !DILocalVariable(name: "hw", arg: 1, scope: !233, file: !3, line: 125, type: !39)
!259 = !DILocation(line: 125, column: 51, scope: !233)
!260 = !DILocalVariable(name: "rate", arg: 2, scope: !233, file: !3, line: 125, type: !56)
!261 = !DILocation(line: 125, column: 69, scope: !233)
!262 = !DILocalVariable(name: "parent_rate", arg: 3, scope: !233, file: !3, line: 126, type: !56)
!263 = !DILocation(line: 126, column: 25, scope: !233)
!264 = !DILocalVariable(name: "mult", scope: !233, file: !3, line: 128, type: !7)
!265 = !DILocation(line: 128, column: 25, scope: !233)
!266 = !DILocalVariable(name: "__mptr", scope: !267, file: !3, line: 128, type: !6)
!267 = distinct !DILexicalBlock(scope: !233, file: !3, line: 128, column: 32)
!268 = !DILocation(line: 128, column: 32, scope: !267)
!269 = !DILocation(line: 128, column: 32, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !3, line: 128, column: 32)
!271 = !DILocalVariable(name: "factor", scope: !233, file: !3, line: 129, type: !56)
!272 = !DILocation(line: 129, column: 16, scope: !233)
!273 = !DILocation(line: 129, column: 36, scope: !233)
!274 = !DILocation(line: 129, column: 42, scope: !233)
!275 = !DILocation(line: 129, column: 48, scope: !233)
!276 = !DILocation(line: 129, column: 25, scope: !233)
!277 = !DILocalVariable(name: "flags", scope: !233, file: !3, line: 130, type: !56)
!278 = !DILocation(line: 130, column: 16, scope: !233)
!279 = !DILocalVariable(name: "val", scope: !233, file: !3, line: 131, type: !56)
!280 = !DILocation(line: 131, column: 16, scope: !233)
!281 = !DILocation(line: 133, column: 6, scope: !257)
!282 = !DILocation(line: 133, column: 12, scope: !257)
!283 = !DILocation(line: 133, column: 6, scope: !233)
!284 = !DILocation(line: 134, column: 3, scope: !257)
!285 = !DILocation(line: 134, column: 3, scope: !256)
!286 = !DILocalVariable(name: "__dummy", scope: !287, file: !3, line: 134, type: !56)
!287 = distinct !DILexicalBlock(scope: !255, file: !3, line: 134, column: 3)
!288 = !DILocation(line: 134, column: 3, scope: !287)
!289 = !DILocalVariable(name: "__dummy2", scope: !287, file: !3, line: 134, type: !56)
!290 = !DILocation(line: 134, column: 3, scope: !255)
!291 = !DILocation(line: 134, column: 3, scope: !254)
!292 = !DILocation(line: 134, column: 3, scope: !293)
!293 = distinct !DILexicalBlock(scope: !254, file: !3, line: 134, column: 3)
!294 = !DILocalVariable(name: "__dummy", scope: !295, file: !3, line: 134, type: !56)
!295 = distinct !DILexicalBlock(scope: !296, file: !3, line: 134, column: 3)
!296 = distinct !DILexicalBlock(scope: !293, file: !3, line: 134, column: 3)
!297 = !DILocation(line: 134, column: 3, scope: !295)
!298 = !DILocalVariable(name: "__dummy2", scope: !295, file: !3, line: 134, type: !56)
!299 = !DILocation(line: 134, column: 3, scope: !296)
!300 = !DILocation(line: 134, column: 3, scope: !253)
!301 = !{i32 -2144141757}
!302 = !DILocation(line: 134, column: 3, scope: !252)
!303 = !DILocation(line: 329, column: 10, scope: !245, inlinedAt: !251)
!304 = !DILocation(line: 329, column: 16, scope: !245, inlinedAt: !251)
!305 = !DILocation(line: 138, column: 23, scope: !233)
!306 = !DILocation(line: 138, column: 8, scope: !233)
!307 = !DILocation(line: 138, column: 6, scope: !233)
!308 = !DILocation(line: 139, column: 10, scope: !233)
!309 = !DILocation(line: 139, column: 9, scope: !233)
!310 = !DILocation(line: 139, column: 6, scope: !233)
!311 = !DILocation(line: 140, column: 9, scope: !233)
!312 = !DILocation(line: 140, column: 19, scope: !233)
!313 = !DILocation(line: 140, column: 25, scope: !233)
!314 = !DILocation(line: 140, column: 16, scope: !233)
!315 = !DILocation(line: 140, column: 6, scope: !233)
!316 = !DILocation(line: 141, column: 18, scope: !233)
!317 = !DILocation(line: 141, column: 24, scope: !233)
!318 = !DILocation(line: 141, column: 2, scope: !233)
!319 = !DILocation(line: 143, column: 6, scope: !241)
!320 = !DILocation(line: 143, column: 12, scope: !241)
!321 = !DILocation(line: 143, column: 6, scope: !233)
!322 = !DILocation(line: 144, column: 26, scope: !241)
!323 = !DILocation(line: 144, column: 32, scope: !241)
!324 = !DILocation(line: 144, column: 38, scope: !241)
!325 = !DILocalVariable(name: "__dummy", scope: !326, file: !236, line: 409, type: !56)
!326 = distinct !DILexicalBlock(scope: !327, file: !236, line: 409, column: 2)
!327 = distinct !DILexicalBlock(scope: !235, file: !236, line: 409, column: 2)
!328 = !DILocation(line: 409, column: 2, scope: !326, inlinedAt: !240)
!329 = !DILocalVariable(name: "__dummy2", scope: !326, file: !236, line: 409, type: !56)
!330 = !DILocalVariable(name: "__dummy", scope: !331, file: !236, line: 409, type: !56)
!331 = distinct !DILexicalBlock(scope: !332, file: !236, line: 409, column: 2)
!332 = distinct !DILexicalBlock(scope: !333, file: !236, line: 409, column: 2)
!333 = distinct !DILexicalBlock(scope: !334, file: !236, line: 409, column: 2)
!334 = distinct !DILexicalBlock(scope: !327, file: !236, line: 409, column: 2)
!335 = !DILocation(line: 409, column: 2, scope: !331, inlinedAt: !240)
!336 = !DILocalVariable(name: "__dummy2", scope: !331, file: !236, line: 409, type: !56)
!337 = !DILocation(line: 409, column: 2, scope: !332, inlinedAt: !240)
!338 = !DILocation(line: 409, column: 2, scope: !339, inlinedAt: !240)
!339 = distinct !DILexicalBlock(scope: !334, file: !236, line: 409, column: 2)
!340 = !{i32 -2145382647}
!341 = !DILocation(line: 409, column: 2, scope: !342, inlinedAt: !240)
!342 = distinct !DILexicalBlock(scope: !339, file: !236, line: 409, column: 2)
!343 = !DILocation(line: 144, column: 3, scope: !241)
!344 = !DILocation(line: 148, column: 2, scope: !233)
!345 = distinct !DISubprogram(name: "clk_mult_readl", scope: !3, file: !3, line: 15, type: !346, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!346 = !DISubroutineType(types: !347)
!347 = !{!348, !7}
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !80, line: 21, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !82, line: 27, baseType: !110)
!350 = !DILocalVariable(name: "mult", arg: 1, scope: !345, file: !3, line: 15, type: !7)
!351 = !DILocation(line: 15, column: 57, scope: !345)
!352 = !DILocation(line: 17, column: 6, scope: !353)
!353 = distinct !DILexicalBlock(scope: !345, file: !3, line: 17, column: 6)
!354 = !DILocation(line: 17, column: 12, scope: !353)
!355 = !DILocation(line: 17, column: 18, scope: !353)
!356 = !DILocation(line: 17, column: 6, scope: !345)
!357 = !DILocation(line: 18, column: 21, scope: !353)
!358 = !DILocation(line: 18, column: 27, scope: !353)
!359 = !DILocation(line: 18, column: 10, scope: !353)
!360 = !DILocation(line: 18, column: 3, scope: !353)
!361 = !DILocation(line: 20, column: 15, scope: !345)
!362 = !DILocation(line: 20, column: 21, scope: !345)
!363 = !DILocation(line: 20, column: 9, scope: !345)
!364 = !DILocation(line: 20, column: 2, scope: !345)
!365 = !DILocation(line: 21, column: 1, scope: !345)
!366 = distinct !DISubprogram(name: "readl", scope: !367, file: !367, line: 59, type: !368, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!367 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!368 = !DISubroutineType(types: !369)
!369 = !{!110, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!373 = !DILocalVariable(name: "addr", arg: 1, scope: !366, file: !367, line: 59, type: !370)
!374 = !DILocation(line: 59, column: 1, scope: !366)
!375 = !DILocalVariable(name: "ret", scope: !366, file: !367, line: 59, type: !110)
!376 = !{i32 -2144326087}
!377 = distinct !DISubprogram(name: "__bestmult", scope: !3, file: !3, line: 65, type: !378, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!378 = !DISubroutineType(types: !379)
!379 = !{!56, !39, !56, !62, !79, !56}
!380 = !DILocalVariable(name: "hw", arg: 1, scope: !377, file: !3, line: 65, type: !39)
!381 = !DILocation(line: 65, column: 48, scope: !377)
!382 = !DILocalVariable(name: "rate", arg: 2, scope: !377, file: !3, line: 65, type: !56)
!383 = !DILocation(line: 65, column: 66, scope: !377)
!384 = !DILocalVariable(name: "best_parent_rate", arg: 3, scope: !377, file: !3, line: 66, type: !62)
!385 = !DILocation(line: 66, column: 20, scope: !377)
!386 = !DILocalVariable(name: "width", arg: 4, scope: !377, file: !3, line: 67, type: !79)
!387 = !DILocation(line: 67, column: 8, scope: !377)
!388 = !DILocalVariable(name: "flags", arg: 5, scope: !377, file: !3, line: 67, type: !56)
!389 = !DILocation(line: 67, column: 29, scope: !377)
!390 = !DILocalVariable(name: "mult", scope: !377, file: !3, line: 69, type: !7)
!391 = !DILocation(line: 69, column: 25, scope: !377)
!392 = !DILocalVariable(name: "__mptr", scope: !393, file: !3, line: 69, type: !6)
!393 = distinct !DILexicalBlock(scope: !377, file: !3, line: 69, column: 32)
!394 = !DILocation(line: 69, column: 32, scope: !393)
!395 = !DILocation(line: 69, column: 32, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !3, line: 69, column: 32)
!397 = !DILocalVariable(name: "orig_parent_rate", scope: !377, file: !3, line: 70, type: !56)
!398 = !DILocation(line: 70, column: 16, scope: !377)
!399 = !DILocation(line: 70, column: 36, scope: !377)
!400 = !DILocation(line: 70, column: 35, scope: !377)
!401 = !DILocalVariable(name: "parent_rate", scope: !377, file: !3, line: 71, type: !56)
!402 = !DILocation(line: 71, column: 16, scope: !377)
!403 = !DILocalVariable(name: "current_rate", scope: !377, file: !3, line: 71, type: !56)
!404 = !DILocation(line: 71, column: 29, scope: !377)
!405 = !DILocalVariable(name: "best_rate", scope: !377, file: !3, line: 71, type: !56)
!406 = !DILocation(line: 71, column: 43, scope: !377)
!407 = !DILocalVariable(name: "i", scope: !377, file: !3, line: 72, type: !110)
!408 = !DILocation(line: 72, column: 15, scope: !377)
!409 = !DILocalVariable(name: "bestmult", scope: !377, file: !3, line: 72, type: !110)
!410 = !DILocation(line: 72, column: 18, scope: !377)
!411 = !DILocalVariable(name: "maxmult", scope: !377, file: !3, line: 73, type: !110)
!412 = !DILocation(line: 73, column: 15, scope: !377)
!413 = !DILocation(line: 73, column: 31, scope: !377)
!414 = !DILocation(line: 73, column: 28, scope: !377)
!415 = !DILocation(line: 73, column: 38, scope: !377)
!416 = !DILocation(line: 75, column: 25, scope: !417)
!417 = distinct !DILexicalBlock(scope: !377, file: !3, line: 75, column: 6)
!418 = !DILocation(line: 75, column: 8, scope: !417)
!419 = !DILocation(line: 75, column: 29, scope: !417)
!420 = !DILocation(line: 75, column: 6, scope: !377)
!421 = !DILocation(line: 76, column: 14, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !3, line: 75, column: 53)
!423 = !DILocation(line: 76, column: 21, scope: !422)
!424 = !DILocation(line: 76, column: 19, scope: !422)
!425 = !DILocation(line: 76, column: 12, scope: !422)
!426 = !DILocation(line: 79, column: 8, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !3, line: 79, column: 7)
!428 = !DILocation(line: 79, column: 17, scope: !427)
!429 = !DILocation(line: 79, column: 23, scope: !427)
!430 = !DILocation(line: 80, column: 9, scope: !427)
!431 = !DILocation(line: 80, column: 15, scope: !427)
!432 = !DILocation(line: 80, column: 21, scope: !427)
!433 = !DILocation(line: 79, column: 7, scope: !422)
!434 = !DILocation(line: 81, column: 13, scope: !427)
!435 = !DILocation(line: 81, column: 4, scope: !427)
!436 = !DILocation(line: 84, column: 7, scope: !437)
!437 = distinct !DILexicalBlock(scope: !422, file: !3, line: 84, column: 7)
!438 = !DILocation(line: 84, column: 18, scope: !437)
!439 = !DILocation(line: 84, column: 16, scope: !437)
!440 = !DILocation(line: 84, column: 7, scope: !422)
!441 = !DILocation(line: 85, column: 15, scope: !437)
!442 = !DILocation(line: 85, column: 13, scope: !437)
!443 = !DILocation(line: 85, column: 4, scope: !437)
!444 = !DILocation(line: 87, column: 10, scope: !422)
!445 = !DILocation(line: 87, column: 3, scope: !422)
!446 = !DILocation(line: 90, column: 9, scope: !447)
!447 = distinct !DILexicalBlock(scope: !377, file: !3, line: 90, column: 2)
!448 = !DILocation(line: 90, column: 7, scope: !447)
!449 = !DILocation(line: 90, column: 14, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !3, line: 90, column: 2)
!451 = !DILocation(line: 90, column: 18, scope: !450)
!452 = !DILocation(line: 90, column: 16, scope: !450)
!453 = !DILocation(line: 90, column: 2, scope: !447)
!454 = !DILocation(line: 91, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 91, column: 7)
!456 = distinct !DILexicalBlock(scope: !450, file: !3, line: 90, column: 32)
!457 = !DILocation(line: 91, column: 15, scope: !455)
!458 = !DILocation(line: 91, column: 34, scope: !455)
!459 = !DILocation(line: 91, column: 32, scope: !455)
!460 = !DILocation(line: 91, column: 12, scope: !455)
!461 = !DILocation(line: 91, column: 7, scope: !456)
!462 = !DILocation(line: 97, column: 24, scope: !463)
!463 = distinct !DILexicalBlock(scope: !455, file: !3, line: 91, column: 37)
!464 = !DILocation(line: 97, column: 5, scope: !463)
!465 = !DILocation(line: 97, column: 22, scope: !463)
!466 = !DILocation(line: 98, column: 11, scope: !463)
!467 = !DILocation(line: 98, column: 4, scope: !463)
!468 = !DILocation(line: 101, column: 53, scope: !456)
!469 = !DILocation(line: 101, column: 35, scope: !456)
!470 = !DILocation(line: 102, column: 7, scope: !456)
!471 = !DILocation(line: 102, column: 14, scope: !456)
!472 = !DILocation(line: 102, column: 12, scope: !456)
!473 = !DILocation(line: 101, column: 17, scope: !456)
!474 = !DILocation(line: 101, column: 15, scope: !456)
!475 = !DILocation(line: 103, column: 18, scope: !456)
!476 = !DILocation(line: 103, column: 32, scope: !456)
!477 = !DILocation(line: 103, column: 30, scope: !456)
!478 = !DILocation(line: 103, column: 16, scope: !456)
!479 = !DILocation(line: 105, column: 22, scope: !480)
!480 = distinct !DILexicalBlock(scope: !456, file: !3, line: 105, column: 7)
!481 = !DILocation(line: 105, column: 28, scope: !480)
!482 = !DILocation(line: 105, column: 42, scope: !480)
!483 = !DILocation(line: 105, column: 53, scope: !480)
!484 = !DILocation(line: 105, column: 7, scope: !480)
!485 = !DILocation(line: 105, column: 7, scope: !456)
!486 = !DILocation(line: 106, column: 15, scope: !487)
!487 = distinct !DILexicalBlock(scope: !480, file: !3, line: 105, column: 61)
!488 = !DILocation(line: 106, column: 13, scope: !487)
!489 = !DILocation(line: 107, column: 16, scope: !487)
!490 = !DILocation(line: 107, column: 14, scope: !487)
!491 = !DILocation(line: 108, column: 24, scope: !487)
!492 = !DILocation(line: 108, column: 5, scope: !487)
!493 = !DILocation(line: 108, column: 22, scope: !487)
!494 = !DILocation(line: 109, column: 3, scope: !487)
!495 = !DILocation(line: 110, column: 2, scope: !456)
!496 = !DILocation(line: 90, column: 28, scope: !450)
!497 = !DILocation(line: 90, column: 2, scope: !450)
!498 = distinct !{!498, !453, !499}
!499 = !DILocation(line: 110, column: 2, scope: !447)
!500 = !DILocation(line: 112, column: 9, scope: !377)
!501 = !DILocation(line: 112, column: 2, scope: !377)
!502 = !DILocation(line: 113, column: 1, scope: !377)
!503 = distinct !DISubprogram(name: "__is_best_rate", scope: !3, file: !3, line: 56, type: !504, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!504 = !DISubroutineType(types: !505)
!505 = !{!506, !56, !56, !56, !56}
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !507, line: 30, baseType: !508)
!507 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!508 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!509 = !DILocalVariable(name: "rate", arg: 1, scope: !503, file: !3, line: 56, type: !56)
!510 = !DILocation(line: 56, column: 42, scope: !503)
!511 = !DILocalVariable(name: "new", arg: 2, scope: !503, file: !3, line: 56, type: !56)
!512 = !DILocation(line: 56, column: 62, scope: !503)
!513 = !DILocalVariable(name: "best", arg: 3, scope: !503, file: !3, line: 57, type: !56)
!514 = !DILocation(line: 57, column: 21, scope: !503)
!515 = !DILocalVariable(name: "flags", arg: 4, scope: !503, file: !3, line: 57, type: !56)
!516 = !DILocation(line: 57, column: 41, scope: !503)
!517 = !DILocation(line: 59, column: 6, scope: !518)
!518 = distinct !DILexicalBlock(scope: !503, file: !3, line: 59, column: 6)
!519 = !DILocation(line: 59, column: 12, scope: !518)
!520 = !DILocation(line: 59, column: 6, scope: !503)
!521 = !DILocalVariable(name: "__x", scope: !522, file: !3, line: 60, type: !61)
!522 = distinct !DILexicalBlock(scope: !518, file: !3, line: 60, column: 10)
!523 = !DILocation(line: 60, column: 10, scope: !522)
!524 = !DILocalVariable(name: "__x", scope: !525, file: !3, line: 60, type: !61)
!525 = distinct !DILexicalBlock(scope: !518, file: !3, line: 60, column: 28)
!526 = !DILocation(line: 60, column: 28, scope: !525)
!527 = !DILocation(line: 60, column: 26, scope: !518)
!528 = !DILocation(line: 60, column: 3, scope: !518)
!529 = !DILocation(line: 62, column: 9, scope: !503)
!530 = !DILocation(line: 62, column: 16, scope: !503)
!531 = !DILocation(line: 62, column: 13, scope: !503)
!532 = !DILocation(line: 62, column: 21, scope: !503)
!533 = !DILocation(line: 62, column: 24, scope: !503)
!534 = !DILocation(line: 62, column: 30, scope: !503)
!535 = !DILocation(line: 62, column: 28, scope: !503)
!536 = !DILocation(line: 0, scope: !503)
!537 = !DILocation(line: 62, column: 2, scope: !503)
!538 = !DILocation(line: 63, column: 1, scope: !503)
!539 = distinct !DISubprogram(name: "__get_mult", scope: !3, file: !3, line: 31, type: !540, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!540 = !DISubroutineType(types: !541)
!541 = !{!56, !7, !56, !56}
!542 = !DILocalVariable(name: "mult", arg: 1, scope: !539, file: !3, line: 31, type: !7)
!543 = !DILocation(line: 31, column: 56, scope: !539)
!544 = !DILocalVariable(name: "rate", arg: 2, scope: !539, file: !3, line: 32, type: !56)
!545 = !DILocation(line: 32, column: 19, scope: !539)
!546 = !DILocalVariable(name: "parent_rate", arg: 3, scope: !539, file: !3, line: 33, type: !56)
!547 = !DILocation(line: 33, column: 19, scope: !539)
!548 = !DILocation(line: 35, column: 6, scope: !549)
!549 = distinct !DILexicalBlock(scope: !539, file: !3, line: 35, column: 6)
!550 = !DILocation(line: 35, column: 12, scope: !549)
!551 = !DILocation(line: 35, column: 18, scope: !549)
!552 = !DILocation(line: 35, column: 6, scope: !539)
!553 = !DILocalVariable(name: "__x", scope: !554, file: !3, line: 36, type: !56)
!554 = distinct !DILexicalBlock(scope: !549, file: !3, line: 36, column: 10)
!555 = !DILocation(line: 36, column: 10, scope: !554)
!556 = !DILocalVariable(name: "__d", scope: !554, file: !3, line: 36, type: !56)
!557 = !DILocation(line: 36, column: 3, scope: !549)
!558 = !DILocation(line: 38, column: 9, scope: !539)
!559 = !DILocation(line: 38, column: 16, scope: !539)
!560 = !DILocation(line: 38, column: 14, scope: !539)
!561 = !DILocation(line: 38, column: 2, scope: !539)
!562 = !DILocation(line: 39, column: 1, scope: !539)
!563 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !564, file: !564, line: 666, type: !565, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!564 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!565 = !DISubroutineType(types: !566)
!566 = !{!56}
!567 = !DILocalVariable(name: "f", scope: !563, file: !564, line: 668, type: !56)
!568 = !DILocation(line: 668, column: 16, scope: !563)
!569 = !DILocation(line: 670, column: 6, scope: !563)
!570 = !DILocation(line: 670, column: 4, scope: !563)
!571 = !DILocation(line: 671, column: 2, scope: !563)
!572 = !DILocation(line: 672, column: 9, scope: !563)
!573 = !DILocation(line: 672, column: 2, scope: !563)
!574 = distinct !DISubprogram(name: "clk_mult_writel", scope: !3, file: !3, line: 23, type: !575, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !7, !348}
!577 = !DILocalVariable(name: "mult", arg: 1, scope: !574, file: !3, line: 23, type: !7)
!578 = !DILocation(line: 23, column: 59, scope: !574)
!579 = !DILocalVariable(name: "val", arg: 2, scope: !574, file: !3, line: 23, type: !348)
!580 = !DILocation(line: 23, column: 69, scope: !574)
!581 = !DILocation(line: 25, column: 6, scope: !582)
!582 = distinct !DILexicalBlock(scope: !574, file: !3, line: 25, column: 6)
!583 = !DILocation(line: 25, column: 12, scope: !582)
!584 = !DILocation(line: 25, column: 18, scope: !582)
!585 = !DILocation(line: 25, column: 6, scope: !574)
!586 = !DILocation(line: 26, column: 15, scope: !582)
!587 = !DILocation(line: 26, column: 20, scope: !582)
!588 = !DILocation(line: 26, column: 26, scope: !582)
!589 = !DILocation(line: 26, column: 3, scope: !582)
!590 = !DILocation(line: 28, column: 10, scope: !582)
!591 = !DILocation(line: 28, column: 15, scope: !582)
!592 = !DILocation(line: 28, column: 21, scope: !582)
!593 = !DILocation(line: 28, column: 3, scope: !582)
!594 = !DILocation(line: 29, column: 1, scope: !574)
!595 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !564, file: !564, line: 646, type: !565, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!596 = !DILocalVariable(name: "__ret", scope: !597, file: !564, line: 648, type: !56)
!597 = distinct !DILexicalBlock(scope: !595, file: !564, line: 648, column: 9)
!598 = !DILocation(line: 648, column: 9, scope: !597)
!599 = !DILocalVariable(name: "__edi", scope: !597, file: !564, line: 648, type: !56)
!600 = !DILocalVariable(name: "__esi", scope: !597, file: !564, line: 648, type: !56)
!601 = !DILocalVariable(name: "__edx", scope: !597, file: !564, line: 648, type: !56)
!602 = !DILocalVariable(name: "__ecx", scope: !597, file: !564, line: 648, type: !56)
!603 = !DILocalVariable(name: "__eax", scope: !597, file: !564, line: 648, type: !56)
!604 = !DILocation(line: 648, column: 9, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !564, line: 648, column: 9)
!606 = distinct !DILexicalBlock(scope: !597, file: !564, line: 648, column: 9)
!607 = !{i32 -2145669291, i32 -2145666976, i32 -2145666742, i32 -2145666691, i32 -2145666663, i32 -2145666638, i32 -2145666954, i32 -2145666941, i32 -2145666503, i32 -2145666384, i32 -2145666849, i32 -2145666822, i32 -2145666794, i32 -2145666764}
!608 = !DILocalVariable(name: "__mask", scope: !609, file: !564, line: 648, type: !56)
!609 = distinct !DILexicalBlock(scope: !605, file: !564, line: 648, column: 9)
!610 = !DILocation(line: 648, column: 9, scope: !609)
!611 = !DILocation(line: 648, column: 9, scope: !606)
!612 = !DILocation(line: 648, column: 2, scope: !595)
!613 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !564, file: !564, line: 656, type: !614, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!614 = !DISubroutineType(types: !615)
!615 = !{null}
!616 = !DILocalVariable(name: "__edi", scope: !617, file: !564, line: 658, type: !56)
!617 = distinct !DILexicalBlock(scope: !613, file: !564, line: 658, column: 2)
!618 = !DILocation(line: 658, column: 2, scope: !617)
!619 = !DILocalVariable(name: "__esi", scope: !617, file: !564, line: 658, type: !56)
!620 = !DILocalVariable(name: "__edx", scope: !617, file: !564, line: 658, type: !56)
!621 = !DILocalVariable(name: "__ecx", scope: !617, file: !564, line: 658, type: !56)
!622 = !DILocalVariable(name: "__eax", scope: !617, file: !564, line: 658, type: !56)
!623 = !{i32 -2145662197, i32 -2145661465, i32 -2145661231, i32 -2145661180, i32 -2145661152, i32 -2145661127, i32 -2145661443, i32 -2145661430, i32 -2145660992, i32 -2145660873, i32 -2145661338, i32 -2145661311, i32 -2145661283, i32 -2145661253}
!624 = !DILocation(line: 659, column: 1, scope: !613)
!625 = distinct !DISubprogram(name: "writel", scope: !367, file: !367, line: 67, type: !626, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !110, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!629 = !DILocalVariable(name: "val", arg: 1, scope: !625, file: !367, line: 67, type: !110)
!630 = !DILocation(line: 67, column: 1, scope: !625)
!631 = !DILocalVariable(name: "addr", arg: 2, scope: !625, file: !367, line: 67, type: !628)
!632 = !{i32 -2144323694}
!633 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !564, file: !564, line: 651, type: !634, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !56}
!636 = !DILocalVariable(name: "f", arg: 1, scope: !633, file: !564, line: 651, type: !56)
!637 = !DILocation(line: 651, column: 65, scope: !633)
!638 = !DILocalVariable(name: "__edi", scope: !639, file: !564, line: 653, type: !56)
!639 = distinct !DILexicalBlock(scope: !633, file: !564, line: 653, column: 2)
!640 = !DILocation(line: 653, column: 2, scope: !639)
!641 = !DILocalVariable(name: "__esi", scope: !639, file: !564, line: 653, type: !56)
!642 = !DILocalVariable(name: "__edx", scope: !639, file: !564, line: 653, type: !56)
!643 = !DILocalVariable(name: "__ecx", scope: !639, file: !564, line: 653, type: !56)
!644 = !DILocalVariable(name: "__eax", scope: !639, file: !564, line: 653, type: !56)
!645 = !{i32 -2145664824, i32 -2145664074, i32 -2145663840, i32 -2145663789, i32 -2145663761, i32 -2145663736, i32 -2145664052, i32 -2145664039, i32 -2145663601, i32 -2145663482, i32 -2145663947, i32 -2145663920, i32 -2145663892, i32 -2145663862}
!646 = !DILocation(line: 654, column: 1, scope: !633)
