; ModuleID = '../bcout/drivers/char/hw_random/via-rng.llvm.bc'
source_filename = "drivers/char/hw_random/via-rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_mod_init6:\09\09\09"
module asm ".long\09mod_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon = type { i64, [72 x i8] }
%struct.hwrng = type { i8*, i32 (%struct.hwrng*)*, {}*, i32 (%struct.hwrng*, i32)*, i32 (%struct.hwrng*, i32*)*, i32 (%struct.hwrng*, i8*, i64, i1)*, i64, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque

@__UNIQUE_ID___addressable_mod_init104 = internal global i8* bitcast (i32 ()* @mod_init to i8*), section ".discard.addressable", align 8, !dbg !0
@__exitcall_mod_exit = internal global void ()* @mod_exit, section ".exitcall.exit", align 8, !dbg !43
@__UNIQUE_ID_description105 = internal constant [60 x i8] c"via_rng.description=H/W RNG driver for VIA CPU with PadLock\00", section ".modinfo", align 1, !dbg !50
@__UNIQUE_ID_file106 = internal constant [44 x i8] c"via_rng.file=drivers/char/hw_random/via-rng\00", section ".modinfo", align 1, !dbg !56
@__UNIQUE_ID_license107 = internal constant [20 x i8] c"via_rng.license=GPL\00", section ".modinfo", align 1, !dbg !61
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str = private unnamed_addr constant [20 x i8] c"\016VIA RNG detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\013via_rng: RNG registering failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"via\00", align 1
@via_rng = internal global { i8*, i32 (%struct.hwrng*)*, void (%struct.hwrng*)*, i32 (%struct.hwrng*, i32)*, i32 (%struct.hwrng*, i32*)*, i32 (%struct.hwrng*, i8*, i64, i1)*, i64, i16, %struct.list_head, %struct.kref, %struct.completion } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.hwrng*)* @via_rng_init, void (%struct.hwrng*)* null, i32 (%struct.hwrng*, i32)* @via_rng_data_present, i32 (%struct.hwrng*, i32*)* @via_rng_data_read, i32 (%struct.hwrng*, i8*, i64, i1)* null, i64 0, i16 0, %struct.list_head zeroinitializer, %struct.kref zeroinitializer, %struct.completion zeroinitializer }, align 8, !dbg !66
@.str.4 = private unnamed_addr constant [63 x i8] c"\013via_rng: can't enable hardware RNG if XSTORE is not enabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"\013via_rng: cannot enable VIA C3 RNG, aborting\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@llvm.used = appending global [6 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_mod_init104 to i8*), i8* bitcast (void ()* @mod_exit to i8*), i8* bitcast (void ()** @__exitcall_mod_exit to i8*), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_description105, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_file106, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license107, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @mod_init() #0 section ".init.text" !dbg !151 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %err, metadata !154, metadata !DIExpression()), !dbg !155
  br i1 false, label %cond.true, label %cond.false, !dbg !156

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %if.then, !dbg !157

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @test_bit(i64 162, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #8, !dbg !157
  br i1 %call, label %if.end, label %if.then, !dbg !156

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 -19, i32* %retval, align 4, !dbg !159
  br label %return, !dbg !159

if.end:                                           ; preds = %cond.false, %cond.true
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)) #9, !dbg !160
  %call2 = call i32 @hwrng_register(%struct.hwrng* bitcast ({ i8*, i32 (%struct.hwrng*)*, void (%struct.hwrng*)*, i32 (%struct.hwrng*, i32)*, i32 (%struct.hwrng*, i32*)*, i32 (%struct.hwrng*, i8*, i64, i1)*, i64, i16, %struct.list_head, %struct.kref, %struct.completion }* @via_rng to %struct.hwrng*)) #8, !dbg !161
  store i32 %call2, i32* %err, align 4, !dbg !162
  %0 = load i32, i32* %err, align 4, !dbg !163
  %tobool = icmp ne i32 %0, 0, !dbg !163
  br i1 %tobool, label %if.then3, label %if.end5, !dbg !165

if.then3:                                         ; preds = %if.end
  %1 = load i32, i32* %err, align 4, !dbg !166
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %1) #9, !dbg !166
  br label %out, !dbg !168

if.end5:                                          ; preds = %if.end
  br label %out, !dbg !163

out:                                              ; preds = %if.end5, %if.then3
  call void @llvm.dbg.label(metadata !169), !dbg !170
  %2 = load i32, i32* %err, align 4, !dbg !171
  store i32 %2, i32* %retval, align 4, !dbg !172
  br label %return, !dbg !172

return:                                           ; preds = %out, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !173
  ret i32 %3, !dbg !173
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @mod_exit() #0 section ".exit.text" !dbg !174 {
entry:
  call void @hwrng_unregister(%struct.hwrng* bitcast ({ i8*, i32 (%struct.hwrng*)*, void (%struct.hwrng*)*, i32 (%struct.hwrng*, i32)*, i32 (%struct.hwrng*, i32*)*, i32 (%struct.hwrng*, i8*, i64, i1)*, i64, i16, %struct.list_head, %struct.kref, %struct.completion }* @via_rng to %struct.hwrng*)) #8, !dbg !175
  ret void, !dbg !176
}

; Function Attrs: noredzone
declare dso_local void @hwrng_unregister(%struct.hwrng*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #3 !dbg !177 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !185, metadata !DIExpression()), !dbg !188
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !190, metadata !DIExpression()), !dbg !191
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !192, metadata !DIExpression()), !dbg !193
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !194, metadata !DIExpression()), !dbg !196
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !198, metadata !DIExpression()), !dbg !199
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !200, metadata !DIExpression()), !dbg !208
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !210, metadata !DIExpression()), !dbg !211
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !212, metadata !DIExpression()), !dbg !213
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !214, metadata !DIExpression()), !dbg !215
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !216
  %1 = load i64, i64* %nr.addr, align 8, !dbg !217
  %div = sdiv i64 %1, 64, !dbg !217
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !218
  %2 = bitcast i64* %add.ptr to i8*, !dbg !216
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !219
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !220
  %conv.i = trunc i64 %4 to i32, !dbg !220
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #10, !dbg !221
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !222
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !222
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #10, !dbg !222
  %7 = load i64, i64* %nr.addr, align 8, !dbg !223
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !223
  br i1 %8, label %cond.true, label %cond.false, !dbg !223

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !223
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !223
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !224
  %and.i = and i64 %11, 63, !dbg !225
  %shl.i = shl i64 1, %and.i, !dbg !226
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !227
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !228
  %shr.i = ashr i64 %13, 6, !dbg !229
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !227
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !227
  %and1.i = and i64 %shl.i, %14, !dbg !230
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !231
  %conv = zext i1 %cmp.i to i32, !dbg !223
  br label %cond.end, !dbg !223

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !223
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !223
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !232
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !233
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #7, !dbg !234, !srcloc !235
  store i8 %19, i8* %oldbit.i, align 1, !dbg !234
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !236
  %tobool.i = trunc i8 %20 to i1, !dbg !236
  %conv2 = zext i1 %tobool.i to i32, !dbg !223
  br label %cond.end, !dbg !223

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !223
  %tobool = icmp ne i32 %cond, 0, !dbg !223
  ret i1 %tobool, !dbg !237
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @hwrng_register(%struct.hwrng*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #3 !dbg !238 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !242, metadata !DIExpression()), !dbg !243
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !244, metadata !DIExpression()), !dbg !245
  ret i1 true, !dbg !246
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #3 !dbg !247 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !251, metadata !DIExpression()), !dbg !252
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !253, metadata !DIExpression()), !dbg !254
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !255, metadata !DIExpression()), !dbg !256
  ret void, !dbg !257
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @via_rng_init(%struct.hwrng* %rng) #3 !dbg !258 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca %struct.hwrng*, align 8
  %c = alloca %struct.cpuinfo_x86*, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %old_lo = alloca i32, align 4
  %_l = alloca i64, align 8
  %_l44 = alloca i64, align 8
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata %struct.cpuinfo_x86** %c, metadata !261, metadata !DIExpression()), !dbg !321
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %c, align 8, !dbg !321
  call void @llvm.dbg.declare(metadata i32* %lo, metadata !322, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata i32* %hi, metadata !324, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.declare(metadata i32* %old_lo, metadata !326, metadata !DIExpression()), !dbg !327
  %0 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !328
  %x86 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %0, i32 0, i32 0, !dbg !330
  %1 = load i8, i8* %x86, align 8, !dbg !330
  %conv = zext i8 %1 to i32, !dbg !328
  %cmp = icmp eq i32 %conv, 6, !dbg !331
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !332

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !333
  %x86_model = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %2, i32 0, i32 2, !dbg !334
  %3 = load i8, i8* %x86_model, align 2, !dbg !334
  %conv2 = zext i8 %3 to i32, !dbg !333
  %cmp3 = icmp sge i32 %conv2, 15, !dbg !335
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !336

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !337
  %x865 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %4, i32 0, i32 0, !dbg !338
  %5 = load i8, i8* %x865, align 8, !dbg !338
  %conv6 = zext i8 %5 to i32, !dbg !337
  %cmp7 = icmp sgt i32 %conv6, 6, !dbg !339
  br i1 %cmp7, label %if.then, label %if.end12, !dbg !340

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br i1 false, label %cond.true, label %cond.false, !dbg !341

cond.true:                                        ; preds = %if.then
  br i1 true, label %if.end, label %if.then10, !dbg !343

cond.false:                                       ; preds = %if.then
  %call = call zeroext i1 @test_bit(i64 163, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #8, !dbg !343
  br i1 %call, label %if.end, label %if.then10, !dbg !341

if.then10:                                        ; preds = %cond.false, %cond.true
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !345
  store i32 -19, i32* %retval, align 4, !dbg !347
  br label %return, !dbg !347

if.end:                                           ; preds = %cond.false, %cond.true
  store i32 0, i32* %retval, align 4, !dbg !348
  br label %return, !dbg !348

if.end12:                                         ; preds = %lor.lhs.false
  br label %do.body, !dbg !349

do.body:                                          ; preds = %if.end12
  call void @llvm.dbg.declare(metadata i64* %_l, metadata !350, metadata !DIExpression()), !dbg !352
  %call13 = call i64 @paravirt_read_msr(i32 4363) #8, !dbg !352
  store i64 %call13, i64* %_l, align 8, !dbg !352
  %6 = load i64, i64* %_l, align 8, !dbg !352
  %conv14 = trunc i64 %6 to i32, !dbg !352
  store i32 %conv14, i32* %lo, align 4, !dbg !352
  %7 = load i64, i64* %_l, align 8, !dbg !352
  %shr = lshr i64 %7, 32, !dbg !352
  %conv15 = trunc i64 %shr to i32, !dbg !352
  store i32 %conv15, i32* %hi, align 4, !dbg !352
  br label %do.end, !dbg !352

do.end:                                           ; preds = %do.body
  %8 = load i32, i32* %lo, align 4, !dbg !353
  store i32 %8, i32* %old_lo, align 4, !dbg !354
  %9 = load i32, i32* %lo, align 4, !dbg !355
  %and = and i32 %9, -8323073, !dbg !355
  store i32 %and, i32* %lo, align 4, !dbg !355
  %10 = load i32, i32* %lo, align 4, !dbg !356
  %and16 = and i32 %10, -16, !dbg !356
  store i32 %and16, i32* %lo, align 4, !dbg !356
  %11 = load i32, i32* %lo, align 4, !dbg !357
  %and17 = and i32 %11, -57345, !dbg !357
  store i32 %and17, i32* %lo, align 4, !dbg !357
  %12 = load i32, i32* %lo, align 4, !dbg !358
  %or = or i32 %12, 64, !dbg !358
  store i32 %or, i32* %lo, align 4, !dbg !358
  %13 = load i32, i32* %lo, align 4, !dbg !359
  %or18 = or i32 %13, 256, !dbg !359
  store i32 %or18, i32* %lo, align 4, !dbg !359
  %14 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !360
  %x86_model19 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %14, i32 0, i32 2, !dbg !362
  %15 = load i8, i8* %x86_model19, align 2, !dbg !362
  %conv20 = zext i8 %15 to i32, !dbg !360
  %cmp21 = icmp eq i32 %conv20, 9, !dbg !363
  br i1 %cmp21, label %land.lhs.true23, label %if.end29, !dbg !364

land.lhs.true23:                                  ; preds = %do.end
  %16 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !365
  %x86_stepping = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %16, i32 0, i32 3, !dbg !366
  %17 = load i8, i8* %x86_stepping, align 1, !dbg !366
  %conv24 = zext i8 %17 to i32, !dbg !365
  %cmp25 = icmp sgt i32 %conv24, 7, !dbg !367
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !368

if.then27:                                        ; preds = %land.lhs.true23
  %18 = load i32, i32* %lo, align 4, !dbg !369
  %or28 = or i32 %18, 512, !dbg !369
  store i32 %or28, i32* %lo, align 4, !dbg !369
  br label %if.end29, !dbg !370

if.end29:                                         ; preds = %if.then27, %land.lhs.true23, %do.end
  %19 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !371
  %x86_model30 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %19, i32 0, i32 2, !dbg !373
  %20 = load i8, i8* %x86_model30, align 2, !dbg !373
  %conv31 = zext i8 %20 to i32, !dbg !371
  %cmp32 = icmp sge i32 %conv31, 10, !dbg !374
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !375

if.then34:                                        ; preds = %if.end29
  %21 = load i32, i32* %lo, align 4, !dbg !376
  %or35 = or i32 %21, 512, !dbg !376
  store i32 %or35, i32* %lo, align 4, !dbg !376
  br label %if.end36, !dbg !377

if.end36:                                         ; preds = %if.then34, %if.end29
  %22 = load i32, i32* %lo, align 4, !dbg !378
  %23 = load i32, i32* %old_lo, align 4, !dbg !380
  %cmp37 = icmp ne i32 %22, %23, !dbg !381
  br i1 %cmp37, label %if.then39, label %if.end42, !dbg !382

if.then39:                                        ; preds = %if.end36
  br label %do.body40, !dbg !383

do.body40:                                        ; preds = %if.then39
  %24 = load i32, i32* %lo, align 4, !dbg !384
  %25 = load i32, i32* %hi, align 4, !dbg !384
  call void @paravirt_write_msr(i32 4363, i32 %24, i32 %25) #8, !dbg !384
  br label %do.end41, !dbg !384

do.end41:                                         ; preds = %do.body40
  br label %if.end42, !dbg !384

if.end42:                                         ; preds = %do.end41, %if.end36
  br label %do.body43, !dbg !386

do.body43:                                        ; preds = %if.end42
  call void @llvm.dbg.declare(metadata i64* %_l44, metadata !387, metadata !DIExpression()), !dbg !389
  %call45 = call i64 @paravirt_read_msr(i32 4363) #8, !dbg !389
  store i64 %call45, i64* %_l44, align 8, !dbg !389
  %26 = load i64, i64* %_l44, align 8, !dbg !389
  %conv46 = trunc i64 %26 to i32, !dbg !389
  store i32 %conv46, i32* %lo, align 4, !dbg !389
  %27 = load i64, i64* %_l44, align 8, !dbg !389
  %shr47 = lshr i64 %27, 32, !dbg !389
  %conv48 = trunc i64 %shr47 to i32, !dbg !389
  store i32 %conv48, i32* %hi, align 4, !dbg !389
  br label %do.end49, !dbg !389

do.end49:                                         ; preds = %do.body43
  %28 = load i32, i32* %lo, align 4, !dbg !390
  %and50 = and i32 %28, 64, !dbg !392
  %cmp51 = icmp eq i32 %and50, 0, !dbg !393
  br i1 %cmp51, label %if.then53, label %if.end55, !dbg !394

if.then53:                                        ; preds = %do.end49
  %call54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !395
  store i32 -19, i32* %retval, align 4, !dbg !397
  br label %return, !dbg !397

if.end55:                                         ; preds = %do.end49
  store i32 0, i32* %retval, align 4, !dbg !398
  br label %return, !dbg !398

return:                                           ; preds = %if.end55, %if.then53, %if.end, %if.then10
  %29 = load i32, i32* %retval, align 4, !dbg !399
  ret i32 %29, !dbg !399
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @via_rng_data_present(%struct.hwrng* %rng, i32 %wait) #3 !dbg !400 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %wait.addr = alloca i32, align 4
  %buf = alloca [16 x i8], align 16
  %via_rng_datum = alloca i32*, align 8
  %bytes_out = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !401, metadata !DIExpression()), !dbg !402
  store i32 %wait, i32* %wait.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wait.addr, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata [16 x i8]* %buf, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata i32** %via_rng_datum, metadata !407, metadata !DIExpression()), !dbg !408
  %arrayidx = getelementptr [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !409
  %0 = ptrtoint i8* %arrayidx to i64, !dbg !409
  %add = add i64 %0, 15, !dbg !409
  %and = and i64 %add, -16, !dbg !409
  %1 = inttoptr i64 %and to i8*, !dbg !409
  %2 = bitcast i8* %1 to i32*, !dbg !410
  store i32* %2, i32** %via_rng_datum, align 8, !dbg !408
  call void @llvm.dbg.declare(metadata i32* %bytes_out, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata i32* %i, metadata !413, metadata !DIExpression()), !dbg !414
  store i32 0, i32* %i, align 4, !dbg !415
  br label %for.cond, !dbg !417

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !418
  %cmp = icmp slt i32 %3, 20, !dbg !420
  br i1 %cmp, label %for.body, label %for.end, !dbg !421

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %via_rng_datum, align 8, !dbg !422
  store i32 0, i32* %4, align 4, !dbg !424
  %5 = load i32*, i32** %via_rng_datum, align 8, !dbg !425
  %call = call i32 @xstore(i32* %5, i32 3) #8, !dbg !426
  store i32 %call, i32* %bytes_out, align 4, !dbg !427
  %6 = load i32, i32* %bytes_out, align 4, !dbg !428
  %and1 = and i32 %6, 15, !dbg !428
  store i32 %and1, i32* %bytes_out, align 4, !dbg !428
  %7 = load i32, i32* %bytes_out, align 4, !dbg !429
  %tobool = icmp ne i32 %7, 0, !dbg !429
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !431

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i32, i32* %wait.addr, align 4, !dbg !432
  %tobool2 = icmp ne i32 %8, 0, !dbg !432
  br i1 %tobool2, label %if.end, label %if.then, !dbg !433

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end, !dbg !434

if.end:                                           ; preds = %lor.lhs.false
  call void @__const_udelay(i64 42950) #8, !dbg !435
  br label %for.inc, !dbg !440

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !441
  %inc = add i32 %9, 1, !dbg !441
  store i32 %inc, i32* %i, align 4, !dbg !441
  br label %for.cond, !dbg !442, !llvm.loop !443

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load i32*, i32** %via_rng_datum, align 8, !dbg !445
  %11 = load i32, i32* %10, align 4, !dbg !446
  %conv = zext i32 %11 to i64, !dbg !446
  %12 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !447
  %priv = getelementptr inbounds %struct.hwrng, %struct.hwrng* %12, i32 0, i32 6, !dbg !448
  store i64 %conv, i64* %priv, align 8, !dbg !449
  %13 = load i32, i32* %bytes_out, align 4, !dbg !450
  %tobool3 = icmp ne i32 %13, 0, !dbg !450
  %14 = zext i1 %tobool3 to i64, !dbg !450
  %cond = select i1 %tobool3, i32 1, i32 0, !dbg !450
  ret i32 %cond, !dbg !451
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @via_rng_data_read(%struct.hwrng* %rng, i32* %data) #3 !dbg !452 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %data.addr = alloca i32*, align 8
  %via_rng_datum = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !453, metadata !DIExpression()), !dbg !454
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata i32* %via_rng_datum, metadata !457, metadata !DIExpression()), !dbg !458
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !459
  %priv = getelementptr inbounds %struct.hwrng, %struct.hwrng* %0, i32 0, i32 6, !dbg !460
  %1 = load i64, i64* %priv, align 8, !dbg !460
  %conv = trunc i64 %1 to i32, !dbg !461
  store i32 %conv, i32* %via_rng_datum, align 4, !dbg !458
  %2 = load i32, i32* %via_rng_datum, align 4, !dbg !462
  %3 = load i32*, i32** %data.addr, align 8, !dbg !463
  store i32 %2, i32* %3, align 4, !dbg !464
  ret i32 1, !dbg !465
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @paravirt_read_msr(i32 %msr) #3 !dbg !466 {
entry:
  %msr.addr = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !470, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !472, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !475, metadata !DIExpression()), !dbg !474
  %0 = load i64, i64* %__edi, align 8, !dbg !474
  store i64 %0, i64* %__edi, align 8, !dbg !474
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !476, metadata !DIExpression()), !dbg !474
  %1 = load i64, i64* %__esi, align 8, !dbg !474
  store i64 %1, i64* %__esi, align 8, !dbg !474
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !477, metadata !DIExpression()), !dbg !474
  %2 = load i64, i64* %__edx, align 8, !dbg !474
  store i64 %2, i64* %__edx, align 8, !dbg !474
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !478, metadata !DIExpression()), !dbg !474
  %3 = load i64, i64* %__ecx, align 8, !dbg !474
  store i64 %3, i64* %__ecx, align 8, !dbg !474
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !479, metadata !DIExpression()), !dbg !474
  %4 = load i64, i64* %__eax, align 8, !dbg !474
  store i64 %4, i64* %__eax, align 8, !dbg !474
  %5 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 23), align 8, !dbg !474
  %6 = call i64 @llvm.read_register.i64(metadata !145), !dbg !480
  %7 = load i32, i32* %msr.addr, align 4, !dbg !480
  %conv = zext i32 %7 to i64, !dbg !480
  %8 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 26, i64 (i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 23), i32 511, i64 %conv, i64 %6) #7, !dbg !480, !srcloc !483
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 0, !dbg !480
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 1, !dbg !480
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 2, !dbg !480
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 3, !dbg !480
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 4, !dbg !480
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 5, !dbg !480
  store i64 %asmresult, i64* %__edi, align 8, !dbg !480
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !480
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !480
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !480
  store i64 %asmresult4, i64* %__eax, align 8, !dbg !480
  call void @llvm.write_register.i64(metadata !145, i64 %asmresult5), !dbg !480
  %9 = load i64, i64* %__eax, align 8, !dbg !480
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !484, metadata !DIExpression()), !dbg !486
  store i64 -1, i64* %__mask, align 8, !dbg !486
  %10 = load i64, i64* %__mask, align 8, !dbg !486
  store i64 %10, i64* %tmp, align 8, !dbg !486
  %11 = load i64, i64* %tmp, align 8, !dbg !486
  %and = and i64 %9, %11, !dbg !480
  store i64 %and, i64* %__ret, align 8, !dbg !480
  %12 = load i64, i64* %__ret, align 8, !dbg !474
  store i64 %12, i64* %tmp6, align 8, !dbg !487
  %13 = load i64, i64* %tmp6, align 8, !dbg !474
  ret i64 %13, !dbg !488
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @paravirt_write_msr(i32 %msr, i32 %low, i32 %high) #3 !dbg !489 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !492, metadata !DIExpression()), !dbg !493
  store i32 %low, i32* %low.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %low.addr, metadata !494, metadata !DIExpression()), !dbg !495
  store i32 %high, i32* %high.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %high.addr, metadata !496, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !498, metadata !DIExpression()), !dbg !500
  %0 = load i64, i64* %__edi, align 8, !dbg !500
  store i64 %0, i64* %__edi, align 8, !dbg !500
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !501, metadata !DIExpression()), !dbg !500
  %1 = load i64, i64* %__esi, align 8, !dbg !500
  store i64 %1, i64* %__esi, align 8, !dbg !500
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !502, metadata !DIExpression()), !dbg !500
  %2 = load i64, i64* %__edx, align 8, !dbg !500
  store i64 %2, i64* %__edx, align 8, !dbg !500
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !503, metadata !DIExpression()), !dbg !500
  %3 = load i64, i64* %__ecx, align 8, !dbg !500
  store i64 %3, i64* %__ecx, align 8, !dbg !500
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !504, metadata !DIExpression()), !dbg !500
  %4 = load i64, i64* %__eax, align 8, !dbg !500
  store i64 %4, i64* %__eax, align 8, !dbg !500
  %5 = load void (i32, i32, i32)*, void (i32, i32, i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 24), align 8, !dbg !500
  %6 = call i64 @llvm.read_register.i64(metadata !145), !dbg !500
  %7 = load i32, i32* %msr.addr, align 4, !dbg !500
  %conv = zext i32 %7 to i64, !dbg !500
  %8 = load i32, i32* %low.addr, align 4, !dbg !500
  %conv1 = zext i32 %8 to i64, !dbg !500
  %9 = load i32, i32* %high.addr, align 4, !dbg !500
  %conv2 = zext i32 %9 to i64, !dbg !500
  %10 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,{di},{si},{dx},4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 27, void (i32, i32, i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 24), i32 511, i64 %conv, i64 %conv1, i64 %conv2, i64 %6) #7, !dbg !500, !srcloc !505
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %10, 0, !dbg !500
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %10, 1, !dbg !500
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %10, 2, !dbg !500
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64 } %10, 3, !dbg !500
  %asmresult6 = extractvalue { i64, i64, i64, i64, i64 } %10, 4, !dbg !500
  store i64 %asmresult, i64* %__edi, align 8, !dbg !500
  store i64 %asmresult3, i64* %__esi, align 8, !dbg !500
  store i64 %asmresult4, i64* %__edx, align 8, !dbg !500
  store i64 %asmresult5, i64* %__ecx, align 8, !dbg !500
  call void @llvm.write_register.i64(metadata !145, i64 %asmresult6), !dbg !500
  ret void, !dbg !506
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xstore(i32* %addr, i32 %edx_in) #3 !dbg !507 {
entry:
  %addr.addr = alloca i32*, align 8
  %edx_in.addr = alloca i32, align 4
  %eax_out = alloca i32, align 4
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !510, metadata !DIExpression()), !dbg !511
  store i32 %edx_in, i32* %edx_in.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %edx_in.addr, metadata !512, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.declare(metadata i32* %eax_out, metadata !514, metadata !DIExpression()), !dbg !515
  %0 = load i32*, i32** %addr.addr, align 8, !dbg !516
  %1 = load i32, i32* %edx_in.addr, align 4, !dbg !517
  %2 = load i32*, i32** %addr.addr, align 8, !dbg !517
  %3 = call { i32, i32, i32* } asm ".byte 0x0F,0xA7,0xC0 /* xstore %edi (addr=$0) */", "=*m,={ax},={dx},={di},2,3,~{dirflag},~{fpsr},~{flags}"(i32* %0, i32 %1, i32* %2) #7, !dbg !517, !srcloc !518
  %asmresult = extractvalue { i32, i32, i32* } %3, 0, !dbg !517
  %asmresult1 = extractvalue { i32, i32, i32* } %3, 1, !dbg !517
  %asmresult2 = extractvalue { i32, i32, i32* } %3, 2, !dbg !517
  store i32 %asmresult, i32* %eax_out, align 4, !dbg !517
  store i32 %asmresult1, i32* %edx_in.addr, align 4, !dbg !517
  store i32* %asmresult2, i32** %addr.addr, align 8, !dbg !517
  %4 = load i32, i32* %eax_out, align 4, !dbg !519
  ret i32 %4, !dbg !520
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!145}
!llvm.module.flags = !{!146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mod_init104", scope: !2, file: !3, line: 212, type: !94, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !42, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/hw_random/via-rng.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 41, baseType: !7, size: 32, elements: !12)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!13 = !DIEnumerator(name: "VIA_STRFILT_CNT_SHIFT", value: 16, isUnsigned: true)
!14 = !DIEnumerator(name: "VIA_STRFILT_FAIL", value: 32768, isUnsigned: true)
!15 = !DIEnumerator(name: "VIA_STRFILT_ENABLE", value: 16384, isUnsigned: true)
!16 = !DIEnumerator(name: "VIA_RAWBITS_ENABLE", value: 8192, isUnsigned: true)
!17 = !DIEnumerator(name: "VIA_RNG_ENABLE", value: 64, isUnsigned: true)
!18 = !DIEnumerator(name: "VIA_NOISESRC1", value: 256, isUnsigned: true)
!19 = !DIEnumerator(name: "VIA_NOISESRC2", value: 512, isUnsigned: true)
!20 = !DIEnumerator(name: "VIA_XSTORE_CNT_MASK", value: 15, isUnsigned: true)
!21 = !DIEnumerator(name: "VIA_RNG_CHUNK_8", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "VIA_RNG_CHUNK_4", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "VIA_RNG_CHUNK_4_MASK", value: 4294967295, isUnsigned: true)
!24 = !DIEnumerator(name: "VIA_RNG_CHUNK_2", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "VIA_RNG_CHUNK_2_MASK", value: 65535, isUnsigned: true)
!26 = !DIEnumerator(name: "VIA_RNG_CHUNK_1", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "VIA_RNG_CHUNK_1_MASK", value: 255, isUnsigned: true)
!28 = !{!29, !30, !32, !31, !36, !39, !40}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !33, line: 21, baseType: !34)
!33 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !35, line: 27, baseType: !7)
!35 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !33, line: 23, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !35, line: 31, baseType: !38)
!38 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !{!0, !43, !50, !56, !61, !66}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "__exitcall_mod_exit", scope: !2, file: !3, line: 218, type: !45, isLocal: true, isDefinition: true)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !46, line: 117, baseType: !47)
!46 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null}
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description105", scope: !2, file: !3, line: 226, type: !52, isLocal: true, isDefinition: true, align: 8)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 480, elements: !54)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!54 = !{!55}
!55 = !DISubrange(count: 60)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file106", scope: !2, file: !3, line: 227, type: !58, isLocal: true, isDefinition: true, align: 8)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 352, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 44)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license107", scope: !2, file: !3, line: 227, type: !63, isLocal: true, isDefinition: true, align: 8)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 160, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 20)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "via_rng", scope: !2, file: !3, line: 187, type: !68, isLocal: true, isDefinition: true)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwrng", file: !69, line: 39, size: 896, elements: !70)
!69 = !DIFile(filename: "./include/linux/hw_random.h", directory: "/home/lizy2001/genbc/linux")
!70 = !{!71, !73, !78, !82, !86, !90, !102, !103, !105, !111, !125}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !68, file: !69, line: 40, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !68, file: !69, line: 41, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!29, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !68, file: !69, line: 42, baseType: !79, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !77}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "data_present", scope: !68, file: !69, line: 43, baseType: !83, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!29, !77, !29}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "data_read", scope: !68, file: !69, line: 44, baseType: !87, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!29, !77, !39}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !68, file: !69, line: 45, baseType: !91, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!29, !77, !94, !95, !100}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 55, baseType: !97)
!96 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !98, line: 72, baseType: !99)
!98 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !98, line: 16, baseType: !31)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !96, line: 30, baseType: !101)
!101 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !68, file: !69, line: 46, baseType: !31, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !68, file: !69, line: 47, baseType: !104, size: 16, offset: 448)
!104 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !68, file: !69, line: 50, baseType: !106, size: 128, offset: 512)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !96, line: 178, size: 128, elements: !107)
!107 = !{!108, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !96, line: 179, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !106, file: !96, line: 179, baseType: !109, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !68, file: !69, line: 51, baseType: !112, size: 32, offset: 640)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !113, line: 19, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !112, file: !113, line: 20, baseType: !116, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !117, line: 113, baseType: !118)
!117 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !117, line: 111, size: 32, elements: !119)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !118, file: !117, line: 112, baseType: !121, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !96, line: 168, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 166, size: 32, elements: !123)
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !122, file: !96, line: 167, baseType: !29, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !68, file: !69, line: 52, baseType: !126, size: 192, offset: 704)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !127, line: 26, size: 192, elements: !128)
!127 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !126, file: !127, line: 27, baseType: !7, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !126, file: !127, line: 28, baseType: !131, size: 128, offset: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !132, line: 43, size: 128, elements: !133)
!132 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!133 = !{!134, !144}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !131, file: !132, line: 44, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !136, line: 29, baseType: !137)
!136 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !136, line: 20, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !137, file: !136, line: 21, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !141, line: 25, baseType: !142)
!141 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 25, elements: !143)
!143 = !{}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !131, file: !132, line: 45, baseType: !106, size: 128)
!145 = !{!"rsp"}
!146 = !{i32 7, !"Dwarf Version", i32 4}
!147 = !{i32 2, !"Debug Info Version", i32 3}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"Code Model", i32 2}
!150 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!151 = distinct !DISubprogram(name: "mod_init", scope: !3, file: !3, line: 195, type: !152, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!152 = !DISubroutineType(types: !153)
!153 = !{!29}
!154 = !DILocalVariable(name: "err", scope: !151, file: !3, line: 197, type: !29)
!155 = !DILocation(line: 197, column: 6, scope: !151)
!156 = !DILocation(line: 199, column: 6, scope: !151)
!157 = !DILocation(line: 199, column: 7, scope: !158)
!158 = distinct !DILexicalBlock(scope: !151, file: !3, line: 199, column: 6)
!159 = !DILocation(line: 200, column: 3, scope: !158)
!160 = !DILocation(line: 202, column: 2, scope: !151)
!161 = !DILocation(line: 203, column: 8, scope: !151)
!162 = !DILocation(line: 203, column: 6, scope: !151)
!163 = !DILocation(line: 204, column: 6, scope: !164)
!164 = distinct !DILexicalBlock(scope: !151, file: !3, line: 204, column: 6)
!165 = !DILocation(line: 204, column: 6, scope: !151)
!166 = !DILocation(line: 205, column: 3, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !3, line: 204, column: 11)
!168 = !DILocation(line: 207, column: 3, scope: !167)
!169 = !DILabel(scope: !151, name: "out", file: !3, line: 209)
!170 = !DILocation(line: 209, column: 1, scope: !151)
!171 = !DILocation(line: 210, column: 9, scope: !151)
!172 = !DILocation(line: 210, column: 2, scope: !151)
!173 = !DILocation(line: 211, column: 1, scope: !151)
!174 = distinct !DISubprogram(name: "mod_exit", scope: !3, file: !3, line: 214, type: !48, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!175 = !DILocation(line: 216, column: 2, scope: !174)
!176 = !DILocation(line: 217, column: 1, scope: !174)
!177 = distinct !DISubprogram(name: "test_bit", scope: !178, file: !178, line: 132, type: !179, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!178 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!179 = !DISubroutineType(types: !180)
!180 = !{!100, !181, !182}
!181 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!185 = !DILocalVariable(name: "nr", arg: 1, scope: !186, file: !187, line: 210, type: !181)
!186 = distinct !DISubprogram(name: "variable_test_bit", scope: !187, file: !187, line: 210, type: !179, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!187 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!188 = !DILocation(line: 210, column: 52, scope: !186, inlinedAt: !189)
!189 = distinct !DILocation(line: 135, column: 9, scope: !177)
!190 = !DILocalVariable(name: "addr", arg: 2, scope: !186, file: !187, line: 210, type: !182)
!191 = !DILocation(line: 210, column: 86, scope: !186, inlinedAt: !189)
!192 = !DILocalVariable(name: "oldbit", scope: !186, file: !187, line: 212, type: !100)
!193 = !DILocation(line: 212, column: 7, scope: !186, inlinedAt: !189)
!194 = !DILocalVariable(name: "nr", arg: 1, scope: !195, file: !187, line: 204, type: !181)
!195 = distinct !DISubprogram(name: "constant_test_bit", scope: !187, file: !187, line: 204, type: !179, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!196 = !DILocation(line: 204, column: 52, scope: !195, inlinedAt: !197)
!197 = distinct !DILocation(line: 135, column: 9, scope: !177)
!198 = !DILocalVariable(name: "addr", arg: 2, scope: !195, file: !187, line: 204, type: !182)
!199 = !DILocation(line: 204, column: 86, scope: !195, inlinedAt: !197)
!200 = !DILocalVariable(name: "v", arg: 1, scope: !201, file: !202, line: 69, type: !205)
!201 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !202, file: !202, line: 69, type: !203, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!202 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!203 = !DISubroutineType(types: !204)
!204 = !{null, !205, !95}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!208 = !DILocation(line: 69, column: 73, scope: !201, inlinedAt: !209)
!209 = distinct !DILocation(line: 134, column: 2, scope: !177)
!210 = !DILocalVariable(name: "size", arg: 2, scope: !201, file: !202, line: 69, type: !95)
!211 = !DILocation(line: 69, column: 83, scope: !201, inlinedAt: !209)
!212 = !DILocalVariable(name: "nr", arg: 1, scope: !177, file: !178, line: 132, type: !181)
!213 = !DILocation(line: 132, column: 34, scope: !177)
!214 = !DILocalVariable(name: "addr", arg: 2, scope: !177, file: !178, line: 132, type: !182)
!215 = !DILocation(line: 132, column: 68, scope: !177)
!216 = !DILocation(line: 134, column: 25, scope: !177)
!217 = !DILocation(line: 134, column: 32, scope: !177)
!218 = !DILocation(line: 134, column: 30, scope: !177)
!219 = !DILocation(line: 71, column: 19, scope: !201, inlinedAt: !209)
!220 = !DILocation(line: 71, column: 22, scope: !201, inlinedAt: !209)
!221 = !DILocation(line: 71, column: 2, scope: !201, inlinedAt: !209)
!222 = !DILocation(line: 72, column: 2, scope: !201, inlinedAt: !209)
!223 = !DILocation(line: 135, column: 9, scope: !177)
!224 = !DILocation(line: 206, column: 19, scope: !195, inlinedAt: !197)
!225 = !DILocation(line: 206, column: 22, scope: !195, inlinedAt: !197)
!226 = !DILocation(line: 206, column: 15, scope: !195, inlinedAt: !197)
!227 = !DILocation(line: 207, column: 4, scope: !195, inlinedAt: !197)
!228 = !DILocation(line: 207, column: 9, scope: !195, inlinedAt: !197)
!229 = !DILocation(line: 207, column: 12, scope: !195, inlinedAt: !197)
!230 = !DILocation(line: 206, column: 44, scope: !195, inlinedAt: !197)
!231 = !DILocation(line: 207, column: 37, scope: !195, inlinedAt: !197)
!232 = !DILocation(line: 217, column: 33, scope: !186, inlinedAt: !189)
!233 = !DILocation(line: 217, column: 46, scope: !186, inlinedAt: !189)
!234 = !DILocation(line: 214, column: 2, scope: !186, inlinedAt: !189)
!235 = !{i32 -2147139812, i32 -2147139752}
!236 = !DILocation(line: 219, column: 9, scope: !186, inlinedAt: !189)
!237 = !DILocation(line: 135, column: 2, scope: !177)
!238 = distinct !DISubprogram(name: "kasan_check_read", scope: !239, file: !239, line: 34, type: !240, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!239 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!240 = !DISubroutineType(types: !241)
!241 = !{!100, !205, !7}
!242 = !DILocalVariable(name: "p", arg: 1, scope: !238, file: !239, line: 34, type: !205)
!243 = !DILocation(line: 34, column: 58, scope: !238)
!244 = !DILocalVariable(name: "size", arg: 2, scope: !238, file: !239, line: 34, type: !7)
!245 = !DILocation(line: 34, column: 74, scope: !238)
!246 = !DILocation(line: 36, column: 2, scope: !238)
!247 = distinct !DISubprogram(name: "kcsan_check_access", scope: !248, file: !248, line: 178, type: !249, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!248 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!249 = !DISubroutineType(types: !250)
!250 = !{null, !205, !95, !29}
!251 = !DILocalVariable(name: "ptr", arg: 1, scope: !247, file: !248, line: 178, type: !205)
!252 = !DILocation(line: 178, column: 60, scope: !247)
!253 = !DILocalVariable(name: "size", arg: 2, scope: !247, file: !248, line: 178, type: !95)
!254 = !DILocation(line: 178, column: 72, scope: !247)
!255 = !DILocalVariable(name: "type", arg: 3, scope: !247, file: !248, line: 179, type: !29)
!256 = !DILocation(line: 179, column: 15, scope: !247)
!257 = !DILocation(line: 179, column: 23, scope: !247)
!258 = distinct !DISubprogram(name: "via_rng_init", scope: !3, file: !3, line: 129, type: !75, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!259 = !DILocalVariable(name: "rng", arg: 1, scope: !258, file: !3, line: 129, type: !77)
!260 = !DILocation(line: 129, column: 39, scope: !258)
!261 = !DILocalVariable(name: "c", scope: !258, file: !3, line: 131, type: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !264, line: 81, size: 2048, elements: !265)
!264 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!265 = !{!266, !269, !270, !271, !272, !273, !277, !278, !279, !280, !281, !282, !283, !289, !293, !297, !298, !299, !300, !301, !302, !303, !304, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !320}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !263, file: !264, line: 82, baseType: !267, size: 8)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !35, line: 21, baseType: !268)
!268 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !263, file: !264, line: 83, baseType: !267, size: 8, offset: 8)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !263, file: !264, line: 84, baseType: !267, size: 8, offset: 16)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !263, file: !264, line: 85, baseType: !267, size: 8, offset: 24)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !263, file: !264, line: 88, baseType: !29, size: 32, offset: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !263, file: !264, line: 91, baseType: !274, size: 96, offset: 64)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 96, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 3)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !263, file: !264, line: 93, baseType: !267, size: 8, offset: 160)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !263, file: !264, line: 94, baseType: !267, size: 8, offset: 168)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !263, file: !264, line: 96, baseType: !267, size: 8, offset: 176)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !263, file: !264, line: 97, baseType: !267, size: 8, offset: 184)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !263, file: !264, line: 99, baseType: !34, size: 32, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !263, file: !264, line: 101, baseType: !29, size: 32, offset: 224)
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !264, line: 107, baseType: !284, size: 640, offset: 256)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !264, line: 107, size: 640, elements: !285)
!285 = !{!286, !288}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !284, file: !264, line: 108, baseType: !287, size: 640)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 640, elements: !64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !284, file: !264, line: 109, baseType: !31, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !263, file: !264, line: 111, baseType: !290, size: 128, offset: 896)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 128, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 16)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !263, file: !264, line: 112, baseType: !294, size: 512, offset: 1024)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 512, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !263, file: !264, line: 114, baseType: !7, size: 32, offset: 1536)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !263, file: !264, line: 115, baseType: !29, size: 32, offset: 1568)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !263, file: !264, line: 117, baseType: !29, size: 32, offset: 1600)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !263, file: !264, line: 118, baseType: !29, size: 32, offset: 1632)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !263, file: !264, line: 119, baseType: !29, size: 32, offset: 1664)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !263, file: !264, line: 120, baseType: !29, size: 32, offset: 1696)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !263, file: !264, line: 121, baseType: !31, size: 64, offset: 1728)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !263, file: !264, line: 123, baseType: !305, size: 16, offset: 1792)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !33, line: 19, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !35, line: 24, baseType: !104)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !263, file: !264, line: 124, baseType: !305, size: 16, offset: 1808)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !263, file: !264, line: 125, baseType: !305, size: 16, offset: 1824)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !263, file: !264, line: 126, baseType: !305, size: 16, offset: 1840)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !263, file: !264, line: 128, baseType: !305, size: 16, offset: 1856)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !263, file: !264, line: 130, baseType: !305, size: 16, offset: 1872)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !263, file: !264, line: 132, baseType: !305, size: 16, offset: 1888)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !263, file: !264, line: 134, baseType: !305, size: 16, offset: 1904)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !263, file: !264, line: 135, baseType: !305, size: 16, offset: 1920)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !263, file: !264, line: 136, baseType: !305, size: 16, offset: 1936)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !263, file: !264, line: 138, baseType: !305, size: 16, offset: 1952)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !263, file: !264, line: 139, baseType: !32, size: 32, offset: 1984)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !263, file: !264, line: 141, baseType: !319, size: 8, offset: 2016)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !33, line: 17, baseType: !267)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !263, file: !264, line: 142, baseType: !7, size: 1, offset: 2024, flags: DIFlagBitField, extraData: i64 2024)
!321 = !DILocation(line: 131, column: 22, scope: !258)
!322 = !DILocalVariable(name: "lo", scope: !258, file: !3, line: 132, type: !32)
!323 = !DILocation(line: 132, column: 6, scope: !258)
!324 = !DILocalVariable(name: "hi", scope: !258, file: !3, line: 132, type: !32)
!325 = !DILocation(line: 132, column: 10, scope: !258)
!326 = !DILocalVariable(name: "old_lo", scope: !258, file: !3, line: 132, type: !32)
!327 = !DILocation(line: 132, column: 14, scope: !258)
!328 = !DILocation(line: 138, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !258, file: !3, line: 138, column: 6)
!330 = !DILocation(line: 138, column: 11, scope: !329)
!331 = !DILocation(line: 138, column: 15, scope: !329)
!332 = !DILocation(line: 138, column: 21, scope: !329)
!333 = !DILocation(line: 138, column: 25, scope: !329)
!334 = !DILocation(line: 138, column: 28, scope: !329)
!335 = !DILocation(line: 138, column: 38, scope: !329)
!336 = !DILocation(line: 138, column: 49, scope: !329)
!337 = !DILocation(line: 138, column: 53, scope: !329)
!338 = !DILocation(line: 138, column: 56, scope: !329)
!339 = !DILocation(line: 138, column: 60, scope: !329)
!340 = !DILocation(line: 138, column: 6, scope: !258)
!341 = !DILocation(line: 139, column: 7, scope: !342)
!342 = distinct !DILexicalBlock(scope: !329, file: !3, line: 138, column: 65)
!343 = !DILocation(line: 139, column: 8, scope: !344)
!344 = distinct !DILexicalBlock(scope: !342, file: !3, line: 139, column: 7)
!345 = !DILocation(line: 140, column: 4, scope: !346)
!346 = distinct !DILexicalBlock(scope: !344, file: !3, line: 139, column: 45)
!347 = !DILocation(line: 142, column: 4, scope: !346)
!348 = !DILocation(line: 144, column: 3, scope: !342)
!349 = !DILocation(line: 153, column: 2, scope: !258)
!350 = !DILocalVariable(name: "_l", scope: !351, file: !3, line: 153, type: !36)
!351 = distinct !DILexicalBlock(scope: !258, file: !3, line: 153, column: 2)
!352 = !DILocation(line: 153, column: 2, scope: !351)
!353 = !DILocation(line: 155, column: 11, scope: !258)
!354 = !DILocation(line: 155, column: 9, scope: !258)
!355 = !DILocation(line: 156, column: 5, scope: !258)
!356 = !DILocation(line: 157, column: 5, scope: !258)
!357 = !DILocation(line: 158, column: 5, scope: !258)
!358 = !DILocation(line: 159, column: 5, scope: !258)
!359 = !DILocation(line: 160, column: 5, scope: !258)
!360 = !DILocation(line: 165, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !258, file: !3, line: 165, column: 6)
!362 = !DILocation(line: 165, column: 10, scope: !361)
!363 = !DILocation(line: 165, column: 20, scope: !361)
!364 = !DILocation(line: 165, column: 26, scope: !361)
!365 = !DILocation(line: 165, column: 30, scope: !361)
!366 = !DILocation(line: 165, column: 33, scope: !361)
!367 = !DILocation(line: 165, column: 46, scope: !361)
!368 = !DILocation(line: 165, column: 6, scope: !258)
!369 = !DILocation(line: 166, column: 6, scope: !361)
!370 = !DILocation(line: 166, column: 3, scope: !361)
!371 = !DILocation(line: 169, column: 6, scope: !372)
!372 = distinct !DILexicalBlock(scope: !258, file: !3, line: 169, column: 6)
!373 = !DILocation(line: 169, column: 9, scope: !372)
!374 = !DILocation(line: 169, column: 19, scope: !372)
!375 = !DILocation(line: 169, column: 6, scope: !258)
!376 = !DILocation(line: 170, column: 6, scope: !372)
!377 = !DILocation(line: 170, column: 3, scope: !372)
!378 = !DILocation(line: 172, column: 6, scope: !379)
!379 = distinct !DILexicalBlock(scope: !258, file: !3, line: 172, column: 6)
!380 = !DILocation(line: 172, column: 12, scope: !379)
!381 = !DILocation(line: 172, column: 9, scope: !379)
!382 = !DILocation(line: 172, column: 6, scope: !258)
!383 = !DILocation(line: 173, column: 3, scope: !379)
!384 = !DILocation(line: 173, column: 3, scope: !385)
!385 = distinct !DILexicalBlock(scope: !379, file: !3, line: 173, column: 3)
!386 = !DILocation(line: 177, column: 2, scope: !258)
!387 = !DILocalVariable(name: "_l", scope: !388, file: !3, line: 177, type: !36)
!388 = distinct !DILexicalBlock(scope: !258, file: !3, line: 177, column: 2)
!389 = !DILocation(line: 177, column: 2, scope: !388)
!390 = !DILocation(line: 178, column: 7, scope: !391)
!391 = distinct !DILexicalBlock(scope: !258, file: !3, line: 178, column: 6)
!392 = !DILocation(line: 178, column: 10, scope: !391)
!393 = !DILocation(line: 178, column: 28, scope: !391)
!394 = !DILocation(line: 178, column: 6, scope: !258)
!395 = !DILocation(line: 179, column: 3, scope: !396)
!396 = distinct !DILexicalBlock(scope: !391, file: !3, line: 178, column: 34)
!397 = !DILocation(line: 180, column: 3, scope: !396)
!398 = !DILocation(line: 183, column: 2, scope: !258)
!399 = !DILocation(line: 184, column: 1, scope: !258)
!400 = distinct !DISubprogram(name: "via_rng_data_present", scope: !3, file: !3, line: 87, type: !84, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!401 = !DILocalVariable(name: "rng", arg: 1, scope: !400, file: !3, line: 87, type: !77)
!402 = !DILocation(line: 87, column: 47, scope: !400)
!403 = !DILocalVariable(name: "wait", arg: 2, scope: !400, file: !3, line: 87, type: !29)
!404 = !DILocation(line: 87, column: 56, scope: !400)
!405 = !DILocalVariable(name: "buf", scope: !400, file: !3, line: 89, type: !290, align: 128)
!406 = !DILocation(line: 89, column: 7, scope: !400)
!407 = !DILocalVariable(name: "via_rng_datum", scope: !400, file: !3, line: 91, type: !39)
!408 = !DILocation(line: 91, column: 7, scope: !400)
!409 = !DILocation(line: 91, column: 30, scope: !400)
!410 = !DILocation(line: 91, column: 23, scope: !400)
!411 = !DILocalVariable(name: "bytes_out", scope: !400, file: !3, line: 92, type: !32)
!412 = !DILocation(line: 92, column: 6, scope: !400)
!413 = !DILocalVariable(name: "i", scope: !400, file: !3, line: 93, type: !29)
!414 = !DILocation(line: 93, column: 6, scope: !400)
!415 = !DILocation(line: 108, column: 9, scope: !416)
!416 = distinct !DILexicalBlock(scope: !400, file: !3, line: 108, column: 2)
!417 = !DILocation(line: 108, column: 7, scope: !416)
!418 = !DILocation(line: 108, column: 14, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !3, line: 108, column: 2)
!420 = !DILocation(line: 108, column: 16, scope: !419)
!421 = !DILocation(line: 108, column: 2, scope: !416)
!422 = !DILocation(line: 109, column: 4, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !3, line: 108, column: 27)
!424 = !DILocation(line: 109, column: 18, scope: !423)
!425 = !DILocation(line: 110, column: 22, scope: !423)
!426 = !DILocation(line: 110, column: 15, scope: !423)
!427 = !DILocation(line: 110, column: 13, scope: !423)
!428 = !DILocation(line: 111, column: 13, scope: !423)
!429 = !DILocation(line: 112, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !423, file: !3, line: 112, column: 7)
!431 = !DILocation(line: 112, column: 17, scope: !430)
!432 = !DILocation(line: 112, column: 21, scope: !430)
!433 = !DILocation(line: 112, column: 7, scope: !423)
!434 = !DILocation(line: 113, column: 4, scope: !430)
!435 = !DILocation(line: 114, column: 3, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !3, line: 114, column: 3)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 114, column: 3)
!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 114, column: 3)
!439 = distinct !DILexicalBlock(scope: !423, file: !3, line: 114, column: 3)
!440 = !DILocation(line: 115, column: 2, scope: !423)
!441 = !DILocation(line: 108, column: 23, scope: !419)
!442 = !DILocation(line: 108, column: 2, scope: !419)
!443 = distinct !{!443, !421, !444}
!444 = !DILocation(line: 115, column: 2, scope: !416)
!445 = !DILocation(line: 116, column: 15, scope: !400)
!446 = !DILocation(line: 116, column: 14, scope: !400)
!447 = !DILocation(line: 116, column: 2, scope: !400)
!448 = !DILocation(line: 116, column: 7, scope: !400)
!449 = !DILocation(line: 116, column: 12, scope: !400)
!450 = !DILocation(line: 117, column: 9, scope: !400)
!451 = !DILocation(line: 117, column: 2, scope: !400)
!452 = distinct !DISubprogram(name: "via_rng_data_read", scope: !3, file: !3, line: 120, type: !88, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!453 = !DILocalVariable(name: "rng", arg: 1, scope: !452, file: !3, line: 120, type: !77)
!454 = !DILocation(line: 120, column: 44, scope: !452)
!455 = !DILocalVariable(name: "data", arg: 2, scope: !452, file: !3, line: 120, type: !39)
!456 = !DILocation(line: 120, column: 54, scope: !452)
!457 = !DILocalVariable(name: "via_rng_datum", scope: !452, file: !3, line: 122, type: !32)
!458 = !DILocation(line: 122, column: 6, scope: !452)
!459 = !DILocation(line: 122, column: 27, scope: !452)
!460 = !DILocation(line: 122, column: 32, scope: !452)
!461 = !DILocation(line: 122, column: 22, scope: !452)
!462 = !DILocation(line: 124, column: 10, scope: !452)
!463 = !DILocation(line: 124, column: 3, scope: !452)
!464 = !DILocation(line: 124, column: 8, scope: !452)
!465 = !DILocation(line: 126, column: 2, scope: !452)
!466 = distinct !DISubprogram(name: "paravirt_read_msr", scope: !467, file: !467, line: 163, type: !468, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!467 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!468 = !DISubroutineType(types: !469)
!469 = !{!36, !7}
!470 = !DILocalVariable(name: "msr", arg: 1, scope: !466, file: !467, line: 163, type: !7)
!471 = !DILocation(line: 163, column: 46, scope: !466)
!472 = !DILocalVariable(name: "__ret", scope: !473, file: !467, line: 165, type: !36)
!473 = distinct !DILexicalBlock(scope: !466, file: !467, line: 165, column: 9)
!474 = !DILocation(line: 165, column: 9, scope: !473)
!475 = !DILocalVariable(name: "__edi", scope: !473, file: !467, line: 165, type: !31)
!476 = !DILocalVariable(name: "__esi", scope: !473, file: !467, line: 165, type: !31)
!477 = !DILocalVariable(name: "__edx", scope: !473, file: !467, line: 165, type: !31)
!478 = !DILocalVariable(name: "__ecx", scope: !473, file: !467, line: 165, type: !31)
!479 = !DILocalVariable(name: "__eax", scope: !473, file: !467, line: 165, type: !31)
!480 = !DILocation(line: 165, column: 9, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !467, line: 165, column: 9)
!482 = distinct !DILexicalBlock(scope: !473, file: !467, line: 165, column: 9)
!483 = !{i32 -2145985824, i32 -2145983409, i32 -2145983175, i32 -2145983124, i32 -2145983096, i32 -2145983071, i32 -2145983387, i32 -2145983374, i32 -2145982936, i32 -2145982817, i32 -2145983282, i32 -2145983255, i32 -2145983227, i32 -2145983197}
!484 = !DILocalVariable(name: "__mask", scope: !485, file: !467, line: 165, type: !31)
!485 = distinct !DILexicalBlock(scope: !481, file: !467, line: 165, column: 9)
!486 = !DILocation(line: 165, column: 9, scope: !485)
!487 = !DILocation(line: 165, column: 9, scope: !482)
!488 = !DILocation(line: 165, column: 2, scope: !466)
!489 = distinct !DISubprogram(name: "paravirt_write_msr", scope: !467, file: !467, line: 168, type: !490, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !7, !7, !7}
!492 = !DILocalVariable(name: "msr", arg: 1, scope: !489, file: !467, line: 168, type: !7)
!493 = !DILocation(line: 168, column: 48, scope: !489)
!494 = !DILocalVariable(name: "low", arg: 2, scope: !489, file: !467, line: 169, type: !7)
!495 = !DILocation(line: 169, column: 20, scope: !489)
!496 = !DILocalVariable(name: "high", arg: 3, scope: !489, file: !467, line: 169, type: !7)
!497 = !DILocation(line: 169, column: 34, scope: !489)
!498 = !DILocalVariable(name: "__edi", scope: !499, file: !467, line: 171, type: !31)
!499 = distinct !DILexicalBlock(scope: !489, file: !467, line: 171, column: 2)
!500 = !DILocation(line: 171, column: 2, scope: !499)
!501 = !DILocalVariable(name: "__esi", scope: !499, file: !467, line: 171, type: !31)
!502 = !DILocalVariable(name: "__edx", scope: !499, file: !467, line: 171, type: !31)
!503 = !DILocalVariable(name: "__ecx", scope: !499, file: !467, line: 171, type: !31)
!504 = !DILocalVariable(name: "__eax", scope: !499, file: !467, line: 171, type: !31)
!505 = !{i32 -2145981185, i32 -2145976156, i32 -2145975922, i32 -2145975871, i32 -2145975843, i32 -2145975818, i32 -2145976134, i32 -2145976121, i32 -2145975683, i32 -2145975564, i32 -2145976029, i32 -2145976002, i32 -2145975974, i32 -2145975944}
!506 = !DILocation(line: 172, column: 1, scope: !489)
!507 = distinct !DISubprogram(name: "xstore", scope: !3, file: !3, line: 77, type: !508, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !143)
!508 = !DISubroutineType(types: !509)
!509 = !{!32, !39, !32}
!510 = !DILocalVariable(name: "addr", arg: 1, scope: !507, file: !3, line: 77, type: !39)
!511 = !DILocation(line: 77, column: 31, scope: !507)
!512 = !DILocalVariable(name: "edx_in", arg: 2, scope: !507, file: !3, line: 77, type: !32)
!513 = !DILocation(line: 77, column: 41, scope: !507)
!514 = !DILocalVariable(name: "eax_out", scope: !507, file: !3, line: 79, type: !32)
!515 = !DILocation(line: 79, column: 6, scope: !507)
!516 = !DILocation(line: 82, column: 12, scope: !507)
!517 = !DILocation(line: 81, column: 2, scope: !507)
!518 = !{i32 2486}
!519 = !DILocation(line: 84, column: 9, scope: !507)
!520 = !DILocation(line: 84, column: 2, scope: !507)
