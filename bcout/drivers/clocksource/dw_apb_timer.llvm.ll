; ModuleID = '../bcout/drivers/clocksource/dw_apb_timer.llvm.bc'
source_filename = "drivers/clocksource/dw_apb_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.cpumask = type { [1 x i64] }
%struct.kmem_cache = type opaque
%struct.dw_apb_clock_event_device = type { %struct.clock_event_device, %struct.dw_apb_timer, void (%struct.dw_apb_timer*)*, [32 x i8] }
%struct.clock_event_device = type { void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
%struct.dw_apb_timer = type { i8*, i64, i32 }
%struct.dw_apb_clocksource = type { %struct.dw_apb_timer, %struct.clocksource }
%struct.clocksource = type { i64 (%struct.clocksource*)*, i64, i32, i32, i64, i32, i64, i8*, %struct.list_head, i32, i32, i64, i32 (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, %struct.list_head, i64, i64, %struct.module* }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str = private unnamed_addr constant [31 x i8] c"\013failed to request timer irq\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@cpu_bit_bitmap = external dso_local constant [65 x [1 x i64]], align 16
@.str.2 = private unnamed_addr constant [36 x i8] c"\016Spurious APBT timer interrupt %d\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dw_apb_clockevent_pause(%struct.dw_apb_clock_event_device* %dw_ced) #0 !dbg !182 {
entry:
  %dw_ced.addr = alloca %struct.dw_apb_clock_event_device*, align 8
  store %struct.dw_apb_clock_event_device* %dw_ced, %struct.dw_apb_clock_event_device** %dw_ced.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clock_event_device** %dw_ced.addr, metadata !186, metadata !DIExpression()), !dbg !187
  %0 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced.addr, align 8, !dbg !188
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %0, i32 0, i32 1, !dbg !189
  %irq = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %timer, i32 0, i32 2, !dbg !190
  %1 = load i32, i32* %irq, align 16, !dbg !190
  call void @disable_irq(i32 %1) #7, !dbg !191
  %2 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced.addr, align 8, !dbg !192
  %timer1 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %2, i32 0, i32 1, !dbg !193
  call void @apbt_disable_int(%struct.dw_apb_timer* %timer1) #7, !dbg !194
  ret void, !dbg !195
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @disable_irq(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apbt_disable_int(%struct.dw_apb_timer* %timer) #0 !dbg !196 {
entry:
  %timer.addr = alloca %struct.dw_apb_timer*, align 8
  %ctrl = alloca i32, align 4
  store %struct.dw_apb_timer* %timer, %struct.dw_apb_timer** %timer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_apb_timer** %timer.addr, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !199, metadata !DIExpression()), !dbg !200
  %0 = load %struct.dw_apb_timer*, %struct.dw_apb_timer** %timer.addr, align 8, !dbg !201
  %call = call i32 @apbt_readl(%struct.dw_apb_timer* %0, i64 8) #7, !dbg !202
  store i32 %call, i32* %ctrl, align 4, !dbg !200
  %1 = load i32, i32* %ctrl, align 4, !dbg !203
  %or = or i32 %1, 4, !dbg !203
  store i32 %or, i32* %ctrl, align 4, !dbg !203
  %2 = load %struct.dw_apb_timer*, %struct.dw_apb_timer** %timer.addr, align 8, !dbg !204
  %3 = load i32, i32* %ctrl, align 4, !dbg !205
  call void @apbt_writel(%struct.dw_apb_timer* %2, i32 %3, i64 8) #7, !dbg !206
  ret void, !dbg !207
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dw_apb_clock_event_device* @dw_apb_clockevent_init(i32 %cpu, i8* %name, i32 %rating, i8* %base, i32 %irq, i64 %freq) #0 !dbg !208 {
entry:
  %retval = alloca %struct.dw_apb_clock_event_device*, align 8
  %cpu.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %rating.addr = alloca i32, align 4
  %base.addr = alloca i8*, align 8
  %irq.addr = alloca i32, align 4
  %freq.addr = alloca i64, align 8
  %dw_ced = alloca %struct.dw_apb_clock_event_device*, align 8
  %err = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !211, metadata !DIExpression()), !dbg !212
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !213, metadata !DIExpression()), !dbg !214
  store i32 %rating, i32* %rating.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rating.addr, metadata !215, metadata !DIExpression()), !dbg !216
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !217, metadata !DIExpression()), !dbg !218
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !219, metadata !DIExpression()), !dbg !220
  store i64 %freq, i64* %freq.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %freq.addr, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clock_event_device** %dw_ced, metadata !223, metadata !DIExpression()), !dbg !224
  %call = call i8* @kzalloc(i64 320, i32 3264) #7, !dbg !225
  %0 = bitcast i8* %call to %struct.dw_apb_clock_event_device*, !dbg !225
  store %struct.dw_apb_clock_event_device* %0, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !224
  call void @llvm.dbg.declare(metadata i32* %err, metadata !226, metadata !DIExpression()), !dbg !227
  %1 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !228
  %tobool = icmp ne %struct.dw_apb_clock_event_device* %1, null, !dbg !228
  br i1 %tobool, label %if.end, label %if.then, !dbg !230

if.then:                                          ; preds = %entry
  store %struct.dw_apb_clock_event_device* null, %struct.dw_apb_clock_event_device** %retval, align 8, !dbg !231
  br label %return, !dbg !231

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %base.addr, align 8, !dbg !232
  %3 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !233
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %3, i32 0, i32 1, !dbg !234
  %base1 = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %timer, i32 0, i32 0, !dbg !235
  store i8* %2, i8** %base1, align 64, !dbg !236
  %4 = load i32, i32* %irq.addr, align 4, !dbg !237
  %5 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !238
  %timer2 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %5, i32 0, i32 1, !dbg !239
  %irq3 = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %timer2, i32 0, i32 2, !dbg !240
  store i32 %4, i32* %irq3, align 16, !dbg !241
  %6 = load i64, i64* %freq.addr, align 8, !dbg !242
  %7 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !243
  %timer4 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %7, i32 0, i32 1, !dbg !244
  %freq5 = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %timer4, i32 0, i32 1, !dbg !245
  store i64 %6, i64* %freq5, align 8, !dbg !246
  %8 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !247
  %ced = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %8, i32 0, i32 0, !dbg !248
  %9 = load i64, i64* %freq.addr, align 8, !dbg !249
  %conv = trunc i64 %9 to i32, !dbg !249
  call void @clockevents_calc_mult_shift(%struct.clock_event_device* %ced, i32 %conv, i32 4) #7, !dbg !250
  %10 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !251
  %ced6 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %10, i32 0, i32 0, !dbg !252
  %call7 = call i64 @clockevent_delta2ns(i64 2147483647, %struct.clock_event_device* %ced6) #7, !dbg !253
  %11 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !254
  %ced8 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %11, i32 0, i32 0, !dbg !255
  %max_delta_ns = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced8, i32 0, i32 4, !dbg !256
  store i64 %call7, i64* %max_delta_ns, align 32, !dbg !257
  %12 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !258
  %ced9 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %12, i32 0, i32 0, !dbg !259
  %max_delta_ticks = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced9, i32 0, i32 20, !dbg !260
  store i64 2147483647, i64* %max_delta_ticks, align 16, !dbg !261
  %13 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !262
  %ced10 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %13, i32 0, i32 0, !dbg !263
  %call11 = call i64 @clockevent_delta2ns(i64 5000, %struct.clock_event_device* %ced10) #7, !dbg !264
  %14 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !265
  %ced12 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %14, i32 0, i32 0, !dbg !266
  %min_delta_ns = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced12, i32 0, i32 5, !dbg !267
  store i64 %call11, i64* %min_delta_ns, align 8, !dbg !268
  %15 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !269
  %ced13 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %15, i32 0, i32 0, !dbg !270
  %min_delta_ticks = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced13, i32 0, i32 19, !dbg !271
  store i64 5000, i64* %min_delta_ticks, align 8, !dbg !272
  %16 = load i32, i32* %cpu.addr, align 4, !dbg !273
  %cmp = icmp slt i32 %16, 0, !dbg !274
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !273

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !273

cond.false:                                       ; preds = %if.end
  %17 = load i32, i32* %cpu.addr, align 4, !dbg !275
  %call15 = call %struct.cpumask* @get_cpu_mask(i32 %17) #7, !dbg !275
  br label %cond.end, !dbg !273

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.cpumask* [ @__cpu_possible_mask, %cond.true ], [ %call15, %cond.false ], !dbg !273
  %18 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !276
  %ced16 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %18, i32 0, i32 0, !dbg !277
  %cpumask = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced16, i32 0, i32 25, !dbg !278
  store %struct.cpumask* %cond, %struct.cpumask** %cpumask, align 16, !dbg !279
  %19 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !280
  %ced17 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %19, i32 0, i32 0, !dbg !281
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced17, i32 0, i32 9, !dbg !282
  store i32 35, i32* %features, align 4, !dbg !283
  %20 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !284
  %ced18 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %20, i32 0, i32 0, !dbg !285
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced18, i32 0, i32 14, !dbg !286
  store i32 (%struct.clock_event_device*)* @apbt_shutdown, i32 (%struct.clock_event_device*)** %set_state_shutdown, align 32, !dbg !287
  %21 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !288
  %ced19 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %21, i32 0, i32 0, !dbg !289
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced19, i32 0, i32 11, !dbg !290
  store i32 (%struct.clock_event_device*)* @apbt_set_periodic, i32 (%struct.clock_event_device*)** %set_state_periodic, align 8, !dbg !291
  %22 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !292
  %ced20 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %22, i32 0, i32 0, !dbg !293
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced20, i32 0, i32 12, !dbg !294
  store i32 (%struct.clock_event_device*)* @apbt_set_oneshot, i32 (%struct.clock_event_device*)** %set_state_oneshot, align 16, !dbg !295
  %23 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !296
  %ced21 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %23, i32 0, i32 0, !dbg !297
  %set_state_oneshot_stopped = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced21, i32 0, i32 13, !dbg !298
  store i32 (%struct.clock_event_device*)* @apbt_shutdown, i32 (%struct.clock_event_device*)** %set_state_oneshot_stopped, align 8, !dbg !299
  %24 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !300
  %ced22 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %24, i32 0, i32 0, !dbg !301
  %tick_resume = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced22, i32 0, i32 15, !dbg !302
  store i32 (%struct.clock_event_device*)* @apbt_resume, i32 (%struct.clock_event_device*)** %tick_resume, align 8, !dbg !303
  %25 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !304
  %ced23 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %25, i32 0, i32 0, !dbg !305
  %set_next_event = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced23, i32 0, i32 1, !dbg !306
  store i32 (i64, %struct.clock_event_device*)* @apbt_next_event, i32 (i64, %struct.clock_event_device*)** %set_next_event, align 8, !dbg !307
  %26 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !308
  %timer24 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %26, i32 0, i32 1, !dbg !309
  %irq25 = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %timer24, i32 0, i32 2, !dbg !310
  %27 = load i32, i32* %irq25, align 16, !dbg !310
  %28 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !311
  %ced26 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %28, i32 0, i32 0, !dbg !312
  %irq27 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced26, i32 0, i32 23, !dbg !313
  store i32 %27, i32* %irq27, align 4, !dbg !314
  %29 = load i32, i32* %rating.addr, align 4, !dbg !315
  %30 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !316
  %ced28 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %30, i32 0, i32 0, !dbg !317
  %rating29 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced28, i32 0, i32 22, !dbg !318
  store i32 %29, i32* %rating29, align 32, !dbg !319
  %31 = load i8*, i8** %name.addr, align 8, !dbg !320
  %32 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !321
  %ced30 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %32, i32 0, i32 0, !dbg !322
  %name31 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced30, i32 0, i32 21, !dbg !323
  store i8* %31, i8** %name31, align 8, !dbg !324
  %33 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !325
  %eoi = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %33, i32 0, i32 2, !dbg !326
  store void (%struct.dw_apb_timer*)* @apbt_eoi, void (%struct.dw_apb_timer*)** %eoi, align 8, !dbg !327
  %34 = load i32, i32* %irq.addr, align 4, !dbg !328
  %35 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !329
  %ced32 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %35, i32 0, i32 0, !dbg !330
  %name33 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %ced32, i32 0, i32 21, !dbg !331
  %36 = load i8*, i8** %name33, align 8, !dbg !331
  %37 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !332
  %ced34 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %37, i32 0, i32 0, !dbg !333
  %38 = bitcast %struct.clock_event_device* %ced34 to i8*, !dbg !334
  %call35 = call i32 @request_irq(i32 %34, i32 (i32, i8*)* @dw_apb_clockevent_irq, i64 88576, i8* %36, i8* %38) #7, !dbg !335
  store i32 %call35, i32* %err, align 4, !dbg !336
  %39 = load i32, i32* %err, align 4, !dbg !337
  %tobool36 = icmp ne i32 %39, 0, !dbg !337
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !339

if.then37:                                        ; preds = %cond.end
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0)) #8, !dbg !340
  %40 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !342
  %41 = bitcast %struct.dw_apb_clock_event_device* %40 to i8*, !dbg !342
  call void @kfree(i8* %41) #7, !dbg !343
  store %struct.dw_apb_clock_event_device* null, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !344
  br label %if.end39, !dbg !345

if.end39:                                         ; preds = %if.then37, %cond.end
  %42 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !346
  store %struct.dw_apb_clock_event_device* %42, %struct.dw_apb_clock_event_device** %retval, align 8, !dbg !347
  br label %return, !dbg !347

return:                                           ; preds = %if.end39, %if.then
  %43 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %retval, align 8, !dbg !348
  ret %struct.dw_apb_clock_event_device* %43, !dbg !348
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !349 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !356, metadata !DIExpression()), !dbg !363
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !369, metadata !DIExpression()), !dbg !370
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !371, metadata !DIExpression()), !dbg !372
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !373, metadata !DIExpression()), !dbg !374
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !375, metadata !DIExpression()), !dbg !379
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !381, metadata !DIExpression()), !dbg !385
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !387, metadata !DIExpression()), !dbg !391
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !396, metadata !DIExpression()), !dbg !397
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !398, metadata !DIExpression()), !dbg !399
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !400, metadata !DIExpression()), !dbg !401
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !402, metadata !DIExpression()), !dbg !403
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !404, metadata !DIExpression()), !dbg !405
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !406, metadata !DIExpression()), !dbg !407
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !408, metadata !DIExpression()), !dbg !409
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !410, metadata !DIExpression()), !dbg !411
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !412, metadata !DIExpression()), !dbg !413
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load i64, i64* %size.addr, align 8, !dbg !416
  %1 = load i32, i32* %flags.addr, align 4, !dbg !417
  %or = or i32 %1, 256, !dbg !418
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !419
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !420
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !421

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !422
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !423
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !424

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !425
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !426
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !427
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !428
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !405
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !429
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !430
  %10 = load i32, i32* %order.i.i, align 4, !dbg !431
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !432
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !433
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !434
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !435
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !435
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !435
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !435
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !435
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !436
  br label %kmalloc.exit, !dbg !436

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !437
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !438
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !438
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !440

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !441
  br label %kmalloc_index.exit.i, !dbg !441

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !442
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !444
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !445

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !446
  br label %kmalloc_index.exit.i, !dbg !446

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !447
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !449
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !450

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !451
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !452
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !453

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !454
  br label %kmalloc_index.exit.i, !dbg !454

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !455
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !457
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !458

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !459
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !460
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !461

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !462
  br label %kmalloc_index.exit.i, !dbg !462

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !463
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !465
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !466

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !467
  br label %kmalloc_index.exit.i, !dbg !467

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !468
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !470
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !471

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !472
  br label %kmalloc_index.exit.i, !dbg !472

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !473
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !475
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !476

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !477
  br label %kmalloc_index.exit.i, !dbg !477

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !478
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !480
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !481

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !482
  br label %kmalloc_index.exit.i, !dbg !482

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !483
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !485
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !486

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !487
  br label %kmalloc_index.exit.i, !dbg !487

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !488
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !490
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !491

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !492
  br label %kmalloc_index.exit.i, !dbg !492

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !493
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !495
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !496

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !497
  br label %kmalloc_index.exit.i, !dbg !497

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !498
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !500
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !501

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !502
  br label %kmalloc_index.exit.i, !dbg !502

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !503
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !505
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !506

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !507
  br label %kmalloc_index.exit.i, !dbg !507

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !508
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !510
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !511

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !512
  br label %kmalloc_index.exit.i, !dbg !512

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !513
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !515
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !516

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !517
  br label %kmalloc_index.exit.i, !dbg !517

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !518
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !520
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !521

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !522
  br label %kmalloc_index.exit.i, !dbg !522

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !523
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !525
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !526

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !527
  br label %kmalloc_index.exit.i, !dbg !527

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !528
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !530
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !531

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !532
  br label %kmalloc_index.exit.i, !dbg !532

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !533
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !535
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !536

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !537
  br label %kmalloc_index.exit.i, !dbg !537

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !538
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !540
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !541

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !542
  br label %kmalloc_index.exit.i, !dbg !542

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !543
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !545
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !546

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !547
  br label %kmalloc_index.exit.i, !dbg !547

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !548
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !550
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !551

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !552
  br label %kmalloc_index.exit.i, !dbg !552

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !553
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !555
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !556

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !557
  br label %kmalloc_index.exit.i, !dbg !557

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !558
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !560
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !561

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !562
  br label %kmalloc_index.exit.i, !dbg !562

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !563
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !565
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !566

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !567
  br label %kmalloc_index.exit.i, !dbg !567

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !568
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !570
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !571

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !572
  br label %kmalloc_index.exit.i, !dbg !572

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !573
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !575
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !576

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !577
  br label %kmalloc_index.exit.i, !dbg !577

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !578
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !580
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !581

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !582
  br label %kmalloc_index.exit.i, !dbg !582

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !583, !srcloc !586
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #9, !dbg !587, !srcloc !590
  unreachable, !dbg !591

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !592
  store i32 %45, i32* %index.i, align 4, !dbg !593
  %46 = load i32, i32* %index.i, align 4, !dbg !594
  %tobool.i = icmp ne i32 %46, 0, !dbg !594
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !596

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !597
  br label %kmalloc.exit, !dbg !597

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !598
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !599
  %and.i.i = and i32 %48, 17, !dbg !599
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !599
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !599
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !599
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !599
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !601

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !602
  br label %kmalloc_type.exit.i, !dbg !602

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !603
  %and2.i.i = and i32 %49, 1, !dbg !604
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !603
  %50 = zext i1 %tobool3.i.i to i64, !dbg !603
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !603
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !605
  br label %kmalloc_type.exit.i, !dbg !605

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !606
  %idxprom.i = zext i32 %51 to i64, !dbg !607
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !607
  %52 = load i32, i32* %index.i, align 4, !dbg !608
  %idxprom6.i = zext i32 %52 to i64, !dbg !607
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !607
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !607
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !609
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !610
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !611
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !612
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !613
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !613
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !613
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !613
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !613
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !374
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !614
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !615
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !616
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !617
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !618
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !619
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !620
  store i8* %62, i8** %retval.i, align 8, !dbg !621
  br label %kmalloc.exit, !dbg !621

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !622
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !623
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !624
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !624
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !624
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !624
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !624
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !625
  br label %kmalloc.exit, !dbg !625

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !626
  ret i8* %65, !dbg !627
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clockevents_calc_mult_shift(%struct.clock_event_device* %ce, i32 %freq, i32 %maxsec) #0 !dbg !628 {
entry:
  %ce.addr = alloca %struct.clock_event_device*, align 8
  %freq.addr = alloca i32, align 4
  %maxsec.addr = alloca i32, align 4
  store %struct.clock_event_device* %ce, %struct.clock_event_device** %ce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %ce.addr, metadata !631, metadata !DIExpression()), !dbg !632
  store i32 %freq, i32* %freq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %freq.addr, metadata !633, metadata !DIExpression()), !dbg !634
  store i32 %maxsec, i32* %maxsec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %maxsec.addr, metadata !635, metadata !DIExpression()), !dbg !636
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** %ce.addr, align 8, !dbg !637
  %mult = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i32 0, i32 6, !dbg !638
  %1 = load %struct.clock_event_device*, %struct.clock_event_device** %ce.addr, align 8, !dbg !639
  %shift = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %1, i32 0, i32 7, !dbg !640
  %2 = load i32, i32* %freq.addr, align 4, !dbg !641
  %3 = load i32, i32* %maxsec.addr, align 4, !dbg !642
  call void @clocks_calc_mult_shift(i32* %mult, i32* %shift, i32 1000000000, i32 %2, i32 %3) #7, !dbg !643
  ret void, !dbg !644
}

; Function Attrs: noredzone
declare dso_local i64 @clockevent_delta2ns(i64, %struct.clock_event_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.cpumask* @get_cpu_mask(i32 %cpu) #0 !dbg !645 {
entry:
  %cpu.addr = alloca i32, align 4
  %p = alloca i64*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !648, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.declare(metadata i64** %p, metadata !650, metadata !DIExpression()), !dbg !653
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !654
  %rem = urem i32 %0, 64, !dbg !655
  %add = add i32 1, %rem, !dbg !656
  %idxprom = zext i32 %add to i64, !dbg !657
  %arrayidx = getelementptr [65 x [1 x i64]], [65 x [1 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, !dbg !657
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %arrayidx, i64 0, i64 0, !dbg !657
  store i64* %arraydecay, i64** %p, align 8, !dbg !653
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !658
  %div = udiv i32 %1, 64, !dbg !659
  %2 = load i64*, i64** %p, align 8, !dbg !660
  %idx.ext = zext i32 %div to i64, !dbg !660
  %idx.neg = sub i64 0, %idx.ext, !dbg !660
  %add.ptr = getelementptr i64, i64* %2, i64 %idx.neg, !dbg !660
  store i64* %add.ptr, i64** %p, align 8, !dbg !660
  %3 = load i64*, i64** %p, align 8, !dbg !661
  %4 = bitcast i64* %3 to i8*, !dbg !661
  %5 = bitcast i8* %4 to %struct.cpumask*, !dbg !661
  ret %struct.cpumask* %5, !dbg !662
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apbt_shutdown(%struct.clock_event_device* %evt) #0 !dbg !663 {
entry:
  %evt.addr = alloca %struct.clock_event_device*, align 8
  %dw_ced = alloca %struct.dw_apb_clock_event_device*, align 8
  %ctrl = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.clock_event_device* %evt, %struct.clock_event_device** %evt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %evt.addr, metadata !664, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clock_event_device** %dw_ced, metadata !666, metadata !DIExpression()), !dbg !667
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** %evt.addr, align 8, !dbg !668
  %call = call %struct.dw_apb_clock_event_device* @ced_to_dw_apb_ced(%struct.clock_event_device* %0) #7, !dbg !669
  store %struct.dw_apb_clock_event_device* %call, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !667
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !670, metadata !DIExpression()), !dbg !671
  store i32 0, i32* %tmp, align 4, !dbg !672
  %1 = load i32, i32* %tmp, align 4, !dbg !675
  %2 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !676
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %2, i32 0, i32 1, !dbg !677
  %call1 = call i32 @apbt_readl(%struct.dw_apb_timer* %timer, i64 8) #7, !dbg !678
  store i32 %call1, i32* %ctrl, align 4, !dbg !679
  %3 = load i32, i32* %ctrl, align 4, !dbg !680
  %and = and i32 %3, -2, !dbg !680
  store i32 %and, i32* %ctrl, align 4, !dbg !680
  %4 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !681
  %timer2 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %4, i32 0, i32 1, !dbg !682
  %5 = load i32, i32* %ctrl, align 4, !dbg !683
  call void @apbt_writel(%struct.dw_apb_timer* %timer2, i32 %5, i64 8) #7, !dbg !684
  ret i32 0, !dbg !685
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apbt_set_periodic(%struct.clock_event_device* %evt) #0 !dbg !686 {
entry:
  %evt.addr = alloca %struct.clock_event_device*, align 8
  %dw_ced = alloca %struct.dw_apb_clock_event_device*, align 8
  %period = alloca i64, align 8
  %ctrl = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store %struct.clock_event_device* %evt, %struct.clock_event_device** %evt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %evt.addr, metadata !687, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clock_event_device** %dw_ced, metadata !689, metadata !DIExpression()), !dbg !690
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** %evt.addr, align 8, !dbg !691
  %call = call %struct.dw_apb_clock_event_device* @ced_to_dw_apb_ced(%struct.clock_event_device* %0) #7, !dbg !692
  store %struct.dw_apb_clock_event_device* %call, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !690
  call void @llvm.dbg.declare(metadata i64* %period, metadata !693, metadata !DIExpression()), !dbg !694
  %1 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !695
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %1, i32 0, i32 1, !dbg !695
  %freq = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %timer, i32 0, i32 1, !dbg !695
  %2 = load i64, i64* %freq, align 8, !dbg !695
  %add = add i64 %2, 250, !dbg !695
  %sub = sub i64 %add, 1, !dbg !695
  %div = udiv i64 %sub, 250, !dbg !695
  store i64 %div, i64* %period, align 8, !dbg !694
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !696, metadata !DIExpression()), !dbg !697
  store i32 0, i32* %tmp, align 4, !dbg !698
  %3 = load i32, i32* %tmp, align 4, !dbg !701
  %4 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !702
  %timer1 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %4, i32 0, i32 1, !dbg !703
  %call2 = call i32 @apbt_readl(%struct.dw_apb_timer* %timer1, i64 8) #7, !dbg !704
  store i32 %call2, i32* %ctrl, align 4, !dbg !705
  %5 = load i32, i32* %ctrl, align 4, !dbg !706
  %or = or i32 %5, 2, !dbg !706
  store i32 %or, i32* %ctrl, align 4, !dbg !706
  %6 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !707
  %timer3 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %6, i32 0, i32 1, !dbg !708
  %7 = load i32, i32* %ctrl, align 4, !dbg !709
  call void @apbt_writel(%struct.dw_apb_timer* %timer3, i32 %7, i64 8) #7, !dbg !710
  %8 = load i32, i32* %ctrl, align 4, !dbg !711
  %and = and i32 %8, -2, !dbg !711
  store i32 %and, i32* %ctrl, align 4, !dbg !711
  %9 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !712
  %timer4 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %9, i32 0, i32 1, !dbg !713
  %10 = load i32, i32* %ctrl, align 4, !dbg !714
  call void @apbt_writel(%struct.dw_apb_timer* %timer4, i32 %10, i64 8) #7, !dbg !715
  call void @__const_udelay(i64 4295) #7, !dbg !716
  store i32 0, i32* %tmp5, align 4, !dbg !721
  %11 = load i32, i32* %tmp5, align 4, !dbg !724
  %12 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !725
  %timer6 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %12, i32 0, i32 1, !dbg !726
  %13 = load i64, i64* %period, align 8, !dbg !727
  %conv = trunc i64 %13 to i32, !dbg !727
  call void @apbt_writel(%struct.dw_apb_timer* %timer6, i32 %conv, i64 0) #7, !dbg !728
  %14 = load i32, i32* %ctrl, align 4, !dbg !729
  %or7 = or i32 %14, 1, !dbg !729
  store i32 %or7, i32* %ctrl, align 4, !dbg !729
  %15 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !730
  %timer8 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %15, i32 0, i32 1, !dbg !731
  %16 = load i32, i32* %ctrl, align 4, !dbg !732
  call void @apbt_writel(%struct.dw_apb_timer* %timer8, i32 %16, i64 8) #7, !dbg !733
  ret i32 0, !dbg !734
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apbt_set_oneshot(%struct.clock_event_device* %evt) #0 !dbg !735 {
entry:
  %evt.addr = alloca %struct.clock_event_device*, align 8
  %dw_ced = alloca %struct.dw_apb_clock_event_device*, align 8
  %ctrl = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.clock_event_device* %evt, %struct.clock_event_device** %evt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %evt.addr, metadata !736, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clock_event_device** %dw_ced, metadata !738, metadata !DIExpression()), !dbg !739
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** %evt.addr, align 8, !dbg !740
  %call = call %struct.dw_apb_clock_event_device* @ced_to_dw_apb_ced(%struct.clock_event_device* %0) #7, !dbg !741
  store %struct.dw_apb_clock_event_device* %call, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !739
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !742, metadata !DIExpression()), !dbg !743
  store i32 0, i32* %tmp, align 4, !dbg !744
  %1 = load i32, i32* %tmp, align 4, !dbg !747
  %2 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !748
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %2, i32 0, i32 1, !dbg !749
  %call1 = call i32 @apbt_readl(%struct.dw_apb_timer* %timer, i64 8) #7, !dbg !750
  store i32 %call1, i32* %ctrl, align 4, !dbg !751
  %3 = load i32, i32* %ctrl, align 4, !dbg !752
  %and = and i32 %3, -2, !dbg !752
  store i32 %and, i32* %ctrl, align 4, !dbg !752
  %4 = load i32, i32* %ctrl, align 4, !dbg !753
  %and2 = and i32 %4, -3, !dbg !753
  store i32 %and2, i32* %ctrl, align 4, !dbg !753
  %5 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !754
  %timer3 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %5, i32 0, i32 1, !dbg !755
  %6 = load i32, i32* %ctrl, align 4, !dbg !756
  call void @apbt_writel(%struct.dw_apb_timer* %timer3, i32 %6, i64 8) #7, !dbg !757
  %7 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !758
  %timer4 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %7, i32 0, i32 1, !dbg !759
  %8 = load i32, i32* %ctrl, align 4, !dbg !760
  call void @apbt_writel(%struct.dw_apb_timer* %timer4, i32 %8, i64 8) #7, !dbg !761
  %9 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !762
  %timer5 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %9, i32 0, i32 1, !dbg !763
  call void @apbt_writel(%struct.dw_apb_timer* %timer5, i32 -1, i64 0) #7, !dbg !764
  %10 = load i32, i32* %ctrl, align 4, !dbg !765
  %and6 = and i32 %10, -5, !dbg !765
  store i32 %and6, i32* %ctrl, align 4, !dbg !765
  %11 = load i32, i32* %ctrl, align 4, !dbg !766
  %or = or i32 %11, 1, !dbg !766
  store i32 %or, i32* %ctrl, align 4, !dbg !766
  %12 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !767
  %timer7 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %12, i32 0, i32 1, !dbg !768
  %13 = load i32, i32* %ctrl, align 4, !dbg !769
  call void @apbt_writel(%struct.dw_apb_timer* %timer7, i32 %13, i64 8) #7, !dbg !770
  ret i32 0, !dbg !771
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apbt_resume(%struct.clock_event_device* %evt) #0 !dbg !772 {
entry:
  %evt.addr = alloca %struct.clock_event_device*, align 8
  %dw_ced = alloca %struct.dw_apb_clock_event_device*, align 8
  %tmp = alloca i32, align 4
  store %struct.clock_event_device* %evt, %struct.clock_event_device** %evt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %evt.addr, metadata !773, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clock_event_device** %dw_ced, metadata !775, metadata !DIExpression()), !dbg !776
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** %evt.addr, align 8, !dbg !777
  %call = call %struct.dw_apb_clock_event_device* @ced_to_dw_apb_ced(%struct.clock_event_device* %0) #7, !dbg !778
  store %struct.dw_apb_clock_event_device* %call, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !776
  store i32 0, i32* %tmp, align 4, !dbg !779
  %1 = load i32, i32* %tmp, align 4, !dbg !782
  %2 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !783
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %2, i32 0, i32 1, !dbg !784
  call void @apbt_enable_int(%struct.dw_apb_timer* %timer) #7, !dbg !785
  ret i32 0, !dbg !786
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apbt_next_event(i64 %delta, %struct.clock_event_device* %evt) #0 !dbg !787 {
entry:
  %delta.addr = alloca i64, align 8
  %evt.addr = alloca %struct.clock_event_device*, align 8
  %ctrl = alloca i32, align 4
  %dw_ced = alloca %struct.dw_apb_clock_event_device*, align 8
  store i64 %delta, i64* %delta.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delta.addr, metadata !788, metadata !DIExpression()), !dbg !789
  store %struct.clock_event_device* %evt, %struct.clock_event_device** %evt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %evt.addr, metadata !790, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !792, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clock_event_device** %dw_ced, metadata !794, metadata !DIExpression()), !dbg !795
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** %evt.addr, align 8, !dbg !796
  %call = call %struct.dw_apb_clock_event_device* @ced_to_dw_apb_ced(%struct.clock_event_device* %0) #7, !dbg !797
  store %struct.dw_apb_clock_event_device* %call, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !795
  %1 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !798
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %1, i32 0, i32 1, !dbg !799
  %call1 = call i32 @apbt_readl_relaxed(%struct.dw_apb_timer* %timer, i64 8) #7, !dbg !800
  store i32 %call1, i32* %ctrl, align 4, !dbg !801
  %2 = load i32, i32* %ctrl, align 4, !dbg !802
  %and = and i32 %2, -2, !dbg !802
  store i32 %and, i32* %ctrl, align 4, !dbg !802
  %3 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !803
  %timer2 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %3, i32 0, i32 1, !dbg !804
  %4 = load i32, i32* %ctrl, align 4, !dbg !805
  call void @apbt_writel_relaxed(%struct.dw_apb_timer* %timer2, i32 %4, i64 8) #7, !dbg !806
  %5 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !807
  %timer3 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %5, i32 0, i32 1, !dbg !808
  %6 = load i64, i64* %delta.addr, align 8, !dbg !809
  %conv = trunc i64 %6 to i32, !dbg !809
  call void @apbt_writel_relaxed(%struct.dw_apb_timer* %timer3, i32 %conv, i64 0) #7, !dbg !810
  %7 = load i32, i32* %ctrl, align 4, !dbg !811
  %or = or i32 %7, 1, !dbg !811
  store i32 %or, i32* %ctrl, align 4, !dbg !811
  %8 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !812
  %timer4 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %8, i32 0, i32 1, !dbg !813
  %9 = load i32, i32* %ctrl, align 4, !dbg !814
  call void @apbt_writel_relaxed(%struct.dw_apb_timer* %timer4, i32 %9, i64 8) #7, !dbg !815
  ret i32 0, !dbg !816
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apbt_eoi(%struct.dw_apb_timer* %timer) #0 !dbg !817 {
entry:
  %timer.addr = alloca %struct.dw_apb_timer*, align 8
  store %struct.dw_apb_timer* %timer, %struct.dw_apb_timer** %timer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_apb_timer** %timer.addr, metadata !818, metadata !DIExpression()), !dbg !819
  %0 = load %struct.dw_apb_timer*, %struct.dw_apb_timer** %timer.addr, align 8, !dbg !820
  %call = call i32 @apbt_readl_relaxed(%struct.dw_apb_timer* %0, i64 12) #7, !dbg !821
  ret void, !dbg !822
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #0 !dbg !823 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !832, metadata !DIExpression()), !dbg !833
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !834, metadata !DIExpression()), !dbg !835
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !836, metadata !DIExpression()), !dbg !837
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !838, metadata !DIExpression()), !dbg !839
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !840, metadata !DIExpression()), !dbg !841
  %0 = load i32, i32* %irq.addr, align 4, !dbg !842
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !843
  %2 = load i64, i64* %flags.addr, align 8, !dbg !844
  %3 = load i8*, i8** %name.addr, align 8, !dbg !845
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !846
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #7, !dbg !847
  ret i32 %call, !dbg !848
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dw_apb_clockevent_irq(i32 %irq, i8* %data) #0 !dbg !849 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %evt = alloca %struct.clock_event_device*, align 8
  %dw_ced = alloca %struct.dw_apb_clock_event_device*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !850, metadata !DIExpression()), !dbg !851
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !852, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %evt, metadata !854, metadata !DIExpression()), !dbg !855
  %0 = load i8*, i8** %data.addr, align 8, !dbg !856
  %1 = bitcast i8* %0 to %struct.clock_event_device*, !dbg !856
  store %struct.clock_event_device* %1, %struct.clock_event_device** %evt, align 8, !dbg !855
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clock_event_device** %dw_ced, metadata !857, metadata !DIExpression()), !dbg !858
  %2 = load %struct.clock_event_device*, %struct.clock_event_device** %evt, align 8, !dbg !859
  %call = call %struct.dw_apb_clock_event_device* @ced_to_dw_apb_ced(%struct.clock_event_device* %2) #7, !dbg !860
  store %struct.dw_apb_clock_event_device* %call, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !858
  %3 = load %struct.clock_event_device*, %struct.clock_event_device** %evt, align 8, !dbg !861
  %event_handler = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %3, i32 0, i32 0, !dbg !863
  %4 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %event_handler, align 64, !dbg !863
  %tobool = icmp ne void (%struct.clock_event_device*)* %4, null, !dbg !861
  br i1 %tobool, label %if.end, label %if.then, !dbg !864

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %irq.addr, align 4, !dbg !865
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %5) #8, !dbg !865
  store i32 0, i32* %retval, align 4, !dbg !867
  br label %return, !dbg !867

if.end:                                           ; preds = %entry
  %6 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !868
  %eoi = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %6, i32 0, i32 2, !dbg !870
  %7 = load void (%struct.dw_apb_timer*)*, void (%struct.dw_apb_timer*)** %eoi, align 8, !dbg !870
  %tobool2 = icmp ne void (%struct.dw_apb_timer*)* %7, null, !dbg !868
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !871

if.then3:                                         ; preds = %if.end
  %8 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !872
  %eoi4 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %8, i32 0, i32 2, !dbg !873
  %9 = load void (%struct.dw_apb_timer*)*, void (%struct.dw_apb_timer*)** %eoi4, align 8, !dbg !873
  %10 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced, align 8, !dbg !874
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %10, i32 0, i32 1, !dbg !875
  call void %9(%struct.dw_apb_timer* %timer) #7, !dbg !872
  br label %if.end5, !dbg !872

if.end5:                                          ; preds = %if.then3, %if.end
  %11 = load %struct.clock_event_device*, %struct.clock_event_device** %evt, align 8, !dbg !876
  %event_handler6 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %11, i32 0, i32 0, !dbg !877
  %12 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %event_handler6, align 64, !dbg !877
  %13 = load %struct.clock_event_device*, %struct.clock_event_device** %evt, align 8, !dbg !878
  call void %12(%struct.clock_event_device* %13) #7, !dbg !876
  store i32 1, i32* %retval, align 4, !dbg !879
  br label %return, !dbg !879

return:                                           ; preds = %if.end5, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !880
  ret i32 %14, !dbg !880
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dw_apb_clockevent_resume(%struct.dw_apb_clock_event_device* %dw_ced) #0 !dbg !881 {
entry:
  %dw_ced.addr = alloca %struct.dw_apb_clock_event_device*, align 8
  store %struct.dw_apb_clock_event_device* %dw_ced, %struct.dw_apb_clock_event_device** %dw_ced.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clock_event_device** %dw_ced.addr, metadata !882, metadata !DIExpression()), !dbg !883
  %0 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced.addr, align 8, !dbg !884
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %0, i32 0, i32 1, !dbg !885
  %irq = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %timer, i32 0, i32 2, !dbg !886
  %1 = load i32, i32* %irq, align 16, !dbg !886
  call void @enable_irq(i32 %1) #7, !dbg !887
  ret void, !dbg !888
}

; Function Attrs: noredzone
declare dso_local void @enable_irq(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dw_apb_clockevent_stop(%struct.dw_apb_clock_event_device* %dw_ced) #0 !dbg !889 {
entry:
  %dw_ced.addr = alloca %struct.dw_apb_clock_event_device*, align 8
  store %struct.dw_apb_clock_event_device* %dw_ced, %struct.dw_apb_clock_event_device** %dw_ced.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clock_event_device** %dw_ced.addr, metadata !890, metadata !DIExpression()), !dbg !891
  %0 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced.addr, align 8, !dbg !892
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %0, i32 0, i32 1, !dbg !893
  %irq = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %timer, i32 0, i32 2, !dbg !894
  %1 = load i32, i32* %irq, align 16, !dbg !894
  %2 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced.addr, align 8, !dbg !895
  %ced = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %2, i32 0, i32 0, !dbg !896
  %3 = bitcast %struct.clock_event_device* %ced to i8*, !dbg !897
  %call = call i8* @free_irq(i32 %1, i8* %3) #7, !dbg !898
  ret void, !dbg !899
}

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dw_apb_clockevent_register(%struct.dw_apb_clock_event_device* %dw_ced) #0 !dbg !900 {
entry:
  %dw_ced.addr = alloca %struct.dw_apb_clock_event_device*, align 8
  store %struct.dw_apb_clock_event_device* %dw_ced, %struct.dw_apb_clock_event_device** %dw_ced.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clock_event_device** %dw_ced.addr, metadata !901, metadata !DIExpression()), !dbg !902
  %0 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced.addr, align 8, !dbg !903
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %0, i32 0, i32 1, !dbg !904
  call void @apbt_writel(%struct.dw_apb_timer* %timer, i32 0, i64 8) #7, !dbg !905
  %1 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced.addr, align 8, !dbg !906
  %ced = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %1, i32 0, i32 0, !dbg !907
  call void @clockevents_register_device(%struct.clock_event_device* %ced) #7, !dbg !908
  %2 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %dw_ced.addr, align 8, !dbg !909
  %timer1 = getelementptr inbounds %struct.dw_apb_clock_event_device, %struct.dw_apb_clock_event_device* %2, i32 0, i32 1, !dbg !910
  call void @apbt_enable_int(%struct.dw_apb_timer* %timer1) #7, !dbg !911
  ret void, !dbg !912
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apbt_writel(%struct.dw_apb_timer* %timer, i32 %val, i64 %offs) #0 !dbg !913 {
entry:
  %timer.addr = alloca %struct.dw_apb_timer*, align 8
  %val.addr = alloca i32, align 4
  %offs.addr = alloca i64, align 8
  store %struct.dw_apb_timer* %timer, %struct.dw_apb_timer** %timer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_apb_timer** %timer.addr, metadata !916, metadata !DIExpression()), !dbg !917
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !918, metadata !DIExpression()), !dbg !919
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !920, metadata !DIExpression()), !dbg !921
  %0 = load i32, i32* %val.addr, align 4, !dbg !922
  %1 = load %struct.dw_apb_timer*, %struct.dw_apb_timer** %timer.addr, align 8, !dbg !923
  %base = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %1, i32 0, i32 0, !dbg !924
  %2 = load i8*, i8** %base, align 8, !dbg !924
  %3 = load i64, i64* %offs.addr, align 8, !dbg !925
  %add.ptr = getelementptr i8, i8* %2, i64 %3, !dbg !926
  call void @writel(i32 %0, i8* %add.ptr) #7, !dbg !927
  ret void, !dbg !928
}

; Function Attrs: noredzone
declare dso_local void @clockevents_register_device(%struct.clock_event_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apbt_enable_int(%struct.dw_apb_timer* %timer) #0 !dbg !929 {
entry:
  %timer.addr = alloca %struct.dw_apb_timer*, align 8
  %ctrl = alloca i32, align 4
  store %struct.dw_apb_timer* %timer, %struct.dw_apb_timer** %timer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_apb_timer** %timer.addr, metadata !930, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !932, metadata !DIExpression()), !dbg !933
  %0 = load %struct.dw_apb_timer*, %struct.dw_apb_timer** %timer.addr, align 8, !dbg !934
  %call = call i32 @apbt_readl(%struct.dw_apb_timer* %0, i64 8) #7, !dbg !935
  store i32 %call, i32* %ctrl, align 4, !dbg !933
  %1 = load %struct.dw_apb_timer*, %struct.dw_apb_timer** %timer.addr, align 8, !dbg !936
  %call1 = call i32 @apbt_readl(%struct.dw_apb_timer* %1, i64 12) #7, !dbg !937
  %2 = load i32, i32* %ctrl, align 4, !dbg !938
  %and = and i32 %2, -5, !dbg !938
  store i32 %and, i32* %ctrl, align 4, !dbg !938
  %3 = load %struct.dw_apb_timer*, %struct.dw_apb_timer** %timer.addr, align 8, !dbg !939
  %4 = load i32, i32* %ctrl, align 4, !dbg !940
  call void @apbt_writel(%struct.dw_apb_timer* %3, i32 %4, i64 8) #7, !dbg !941
  ret void, !dbg !942
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dw_apb_clocksource_start(%struct.dw_apb_clocksource* %dw_cs) #0 !dbg !943 {
entry:
  %dw_cs.addr = alloca %struct.dw_apb_clocksource*, align 8
  %ctrl = alloca i32, align 4
  store %struct.dw_apb_clocksource* %dw_cs, %struct.dw_apb_clocksource** %dw_cs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clocksource** %dw_cs.addr, metadata !946, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !948, metadata !DIExpression()), !dbg !949
  %0 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs.addr, align 8, !dbg !950
  %timer = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %0, i32 0, i32 0, !dbg !951
  %call = call i32 @apbt_readl(%struct.dw_apb_timer* %timer, i64 8) #7, !dbg !952
  store i32 %call, i32* %ctrl, align 4, !dbg !949
  %1 = load i32, i32* %ctrl, align 4, !dbg !953
  %and = and i32 %1, -2, !dbg !953
  store i32 %and, i32* %ctrl, align 4, !dbg !953
  %2 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs.addr, align 8, !dbg !954
  %timer1 = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %2, i32 0, i32 0, !dbg !955
  %3 = load i32, i32* %ctrl, align 4, !dbg !956
  call void @apbt_writel(%struct.dw_apb_timer* %timer1, i32 %3, i64 8) #7, !dbg !957
  %4 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs.addr, align 8, !dbg !958
  %timer2 = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %4, i32 0, i32 0, !dbg !959
  call void @apbt_writel(%struct.dw_apb_timer* %timer2, i32 -1, i64 0) #7, !dbg !960
  %5 = load i32, i32* %ctrl, align 4, !dbg !961
  %and3 = and i32 %5, -3, !dbg !961
  store i32 %and3, i32* %ctrl, align 4, !dbg !961
  %6 = load i32, i32* %ctrl, align 4, !dbg !962
  %or = or i32 %6, 5, !dbg !962
  store i32 %or, i32* %ctrl, align 4, !dbg !962
  %7 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs.addr, align 8, !dbg !963
  %timer4 = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %7, i32 0, i32 0, !dbg !964
  %8 = load i32, i32* %ctrl, align 4, !dbg !965
  call void @apbt_writel(%struct.dw_apb_timer* %timer4, i32 %8, i64 8) #7, !dbg !966
  %9 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs.addr, align 8, !dbg !967
  %call5 = call i64 @dw_apb_clocksource_read(%struct.dw_apb_clocksource* %9) #7, !dbg !968
  ret void, !dbg !969
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apbt_readl(%struct.dw_apb_timer* %timer, i64 %offs) #0 !dbg !970 {
entry:
  %timer.addr = alloca %struct.dw_apb_timer*, align 8
  %offs.addr = alloca i64, align 8
  store %struct.dw_apb_timer* %timer, %struct.dw_apb_timer** %timer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_apb_timer** %timer.addr, metadata !973, metadata !DIExpression()), !dbg !974
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !975, metadata !DIExpression()), !dbg !976
  %0 = load %struct.dw_apb_timer*, %struct.dw_apb_timer** %timer.addr, align 8, !dbg !977
  %base = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %0, i32 0, i32 0, !dbg !978
  %1 = load i8*, i8** %base, align 8, !dbg !978
  %2 = load i64, i64* %offs.addr, align 8, !dbg !979
  %add.ptr = getelementptr i8, i8* %1, i64 %2, !dbg !980
  %call = call i32 @readl(i8* %add.ptr) #7, !dbg !981
  ret i32 %call, !dbg !982
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dw_apb_clocksource_read(%struct.dw_apb_clocksource* %dw_cs) #0 !dbg !983 {
entry:
  %dw_cs.addr = alloca %struct.dw_apb_clocksource*, align 8
  store %struct.dw_apb_clocksource* %dw_cs, %struct.dw_apb_clocksource** %dw_cs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clocksource** %dw_cs.addr, metadata !986, metadata !DIExpression()), !dbg !987
  %0 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs.addr, align 8, !dbg !988
  %timer = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %0, i32 0, i32 0, !dbg !989
  %call = call i32 @apbt_readl(%struct.dw_apb_timer* %timer, i64 4) #7, !dbg !990
  %neg = xor i32 %call, -1, !dbg !991
  %conv = zext i32 %neg to i64, !dbg !992
  ret i64 %conv, !dbg !993
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dw_apb_clocksource* @dw_apb_clocksource_init(i32 %rating, i8* %name, i8* %base, i64 %freq) #0 !dbg !994 {
entry:
  %retval = alloca %struct.dw_apb_clocksource*, align 8
  %rating.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %base.addr = alloca i8*, align 8
  %freq.addr = alloca i64, align 8
  %dw_cs = alloca %struct.dw_apb_clocksource*, align 8
  store i32 %rating, i32* %rating.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rating.addr, metadata !997, metadata !DIExpression()), !dbg !998
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !999, metadata !DIExpression()), !dbg !1000
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !1001, metadata !DIExpression()), !dbg !1002
  store i64 %freq, i64* %freq.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %freq.addr, metadata !1003, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clocksource** %dw_cs, metadata !1005, metadata !DIExpression()), !dbg !1006
  %call = call i8* @kzalloc(i64 200, i32 3264) #7, !dbg !1007
  %0 = bitcast i8* %call to %struct.dw_apb_clocksource*, !dbg !1007
  store %struct.dw_apb_clocksource* %0, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1006
  %1 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1008
  %tobool = icmp ne %struct.dw_apb_clocksource* %1, null, !dbg !1008
  br i1 %tobool, label %if.end, label %if.then, !dbg !1010

if.then:                                          ; preds = %entry
  store %struct.dw_apb_clocksource* null, %struct.dw_apb_clocksource** %retval, align 8, !dbg !1011
  br label %return, !dbg !1011

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %base.addr, align 8, !dbg !1012
  %3 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1013
  %timer = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %3, i32 0, i32 0, !dbg !1014
  %base1 = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %timer, i32 0, i32 0, !dbg !1015
  store i8* %2, i8** %base1, align 8, !dbg !1016
  %4 = load i64, i64* %freq.addr, align 8, !dbg !1017
  %5 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1018
  %timer2 = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %5, i32 0, i32 0, !dbg !1019
  %freq3 = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %timer2, i32 0, i32 1, !dbg !1020
  store i64 %4, i64* %freq3, align 8, !dbg !1021
  %6 = load i8*, i8** %name.addr, align 8, !dbg !1022
  %7 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1023
  %cs = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %7, i32 0, i32 1, !dbg !1024
  %name4 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs, i32 0, i32 7, !dbg !1025
  store i8* %6, i8** %name4, align 8, !dbg !1026
  %8 = load i32, i32* %rating.addr, align 4, !dbg !1027
  %9 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1028
  %cs5 = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %9, i32 0, i32 1, !dbg !1029
  %rating6 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs5, i32 0, i32 9, !dbg !1030
  store i32 %8, i32* %rating6, align 8, !dbg !1031
  %10 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1032
  %cs7 = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %10, i32 0, i32 1, !dbg !1033
  %read = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs7, i32 0, i32 0, !dbg !1034
  store i64 (%struct.clocksource*)* @__apbt_read_clocksource, i64 (%struct.clocksource*)** %read, align 8, !dbg !1035
  %11 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1036
  %cs8 = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %11, i32 0, i32 1, !dbg !1037
  %mask = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs8, i32 0, i32 1, !dbg !1038
  store i64 4294967295, i64* %mask, align 8, !dbg !1039
  %12 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1040
  %cs9 = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %12, i32 0, i32 1, !dbg !1041
  %flags = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs9, i32 0, i32 11, !dbg !1042
  store i64 1, i64* %flags, align 8, !dbg !1043
  %13 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1044
  %cs10 = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %13, i32 0, i32 1, !dbg !1045
  %resume = getelementptr inbounds %struct.clocksource, %struct.clocksource* %cs10, i32 0, i32 15, !dbg !1046
  store void (%struct.clocksource*)* @apbt_restart_clocksource, void (%struct.clocksource*)** %resume, align 8, !dbg !1047
  %14 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1048
  store %struct.dw_apb_clocksource* %14, %struct.dw_apb_clocksource** %retval, align 8, !dbg !1049
  br label %return, !dbg !1049

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %retval, align 8, !dbg !1050
  ret %struct.dw_apb_clocksource* %15, !dbg !1050
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__apbt_read_clocksource(%struct.clocksource* %cs) #0 !dbg !1051 {
entry:
  %cs.addr = alloca %struct.clocksource*, align 8
  %current_count = alloca i32, align 4
  %dw_cs = alloca %struct.dw_apb_clocksource*, align 8
  store %struct.clocksource* %cs, %struct.clocksource** %cs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clocksource** %cs.addr, metadata !1052, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.declare(metadata i32* %current_count, metadata !1054, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clocksource** %dw_cs, metadata !1056, metadata !DIExpression()), !dbg !1057
  %0 = load %struct.clocksource*, %struct.clocksource** %cs.addr, align 8, !dbg !1058
  %call = call %struct.dw_apb_clocksource* @clocksource_to_dw_apb_clocksource(%struct.clocksource* %0) #7, !dbg !1059
  store %struct.dw_apb_clocksource* %call, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1057
  %1 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1060
  %timer = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %1, i32 0, i32 0, !dbg !1061
  %call1 = call i32 @apbt_readl_relaxed(%struct.dw_apb_timer* %timer, i64 4) #7, !dbg !1062
  store i32 %call1, i32* %current_count, align 4, !dbg !1063
  %2 = load i32, i32* %current_count, align 4, !dbg !1064
  %neg = xor i32 %2, -1, !dbg !1065
  %conv = zext i32 %neg to i64, !dbg !1066
  ret i64 %conv, !dbg !1067
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apbt_restart_clocksource(%struct.clocksource* %cs) #0 !dbg !1068 {
entry:
  %cs.addr = alloca %struct.clocksource*, align 8
  %dw_cs = alloca %struct.dw_apb_clocksource*, align 8
  store %struct.clocksource* %cs, %struct.clocksource** %cs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clocksource** %cs.addr, metadata !1069, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clocksource** %dw_cs, metadata !1071, metadata !DIExpression()), !dbg !1072
  %0 = load %struct.clocksource*, %struct.clocksource** %cs.addr, align 8, !dbg !1073
  %call = call %struct.dw_apb_clocksource* @clocksource_to_dw_apb_clocksource(%struct.clocksource* %0) #7, !dbg !1074
  store %struct.dw_apb_clocksource* %call, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1072
  %1 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs, align 8, !dbg !1075
  call void @dw_apb_clocksource_start(%struct.dw_apb_clocksource* %1) #7, !dbg !1076
  ret void, !dbg !1077
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dw_apb_clocksource_register(%struct.dw_apb_clocksource* %dw_cs) #0 !dbg !1078 {
entry:
  %dw_cs.addr = alloca %struct.dw_apb_clocksource*, align 8
  store %struct.dw_apb_clocksource* %dw_cs, %struct.dw_apb_clocksource** %dw_cs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_apb_clocksource** %dw_cs.addr, metadata !1079, metadata !DIExpression()), !dbg !1080
  %0 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs.addr, align 8, !dbg !1081
  %cs = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %0, i32 0, i32 1, !dbg !1082
  %1 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %dw_cs.addr, align 8, !dbg !1083
  %timer = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %1, i32 0, i32 0, !dbg !1084
  %freq = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %timer, i32 0, i32 1, !dbg !1085
  %2 = load i64, i64* %freq, align 8, !dbg !1085
  %conv = trunc i64 %2 to i32, !dbg !1083
  %call = call i32 @clocksource_register_hz(%struct.clocksource* %cs, i32 %conv) #7, !dbg !1086
  ret void, !dbg !1087
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clocksource_register_hz(%struct.clocksource* %cs, i32 %hz) #0 !dbg !1088 {
entry:
  %cs.addr = alloca %struct.clocksource*, align 8
  %hz.addr = alloca i32, align 4
  store %struct.clocksource* %cs, %struct.clocksource** %cs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clocksource** %cs.addr, metadata !1091, metadata !DIExpression()), !dbg !1092
  store i32 %hz, i32* %hz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %hz.addr, metadata !1093, metadata !DIExpression()), !dbg !1094
  %0 = load %struct.clocksource*, %struct.clocksource** %cs.addr, align 8, !dbg !1095
  %1 = load i32, i32* %hz.addr, align 4, !dbg !1096
  %call = call i32 @__clocksource_register_scale(%struct.clocksource* %0, i32 1, i32 %1) #7, !dbg !1097
  ret i32 %call, !dbg !1098
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !1099 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1103, metadata !DIExpression()), !dbg !1108
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1110, metadata !DIExpression()), !dbg !1111
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1112, metadata !DIExpression()), !dbg !1113
  %0 = load i64, i64* %size.addr, align 8, !dbg !1114
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1116
  br i1 %1, label %if.then, label %if.end447, !dbg !1117

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1118
  %tobool = icmp ne i64 %2, 0, !dbg !1118
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1121

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1122
  br label %return, !dbg !1122

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1123
  %cmp = icmp ult i64 %3, 4096, !dbg !1125
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1126

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1127
  br label %return, !dbg !1127

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub = sub i64 %4, 1, !dbg !1128
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1128
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1128

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub4 = sub i64 %6, 1, !dbg !1128
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1128
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1128

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub6 = sub i64 %8, 1, !dbg !1128
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1128
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1128

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1128

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub9 = sub i64 %9, 1, !dbg !1128
  %and = and i64 %sub9, -9223372036854775808, !dbg !1128
  %tobool10 = icmp ne i64 %and, 0, !dbg !1128
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1128

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1128

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub13 = sub i64 %10, 1, !dbg !1128
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1128
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1128
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1128

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1128

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub18 = sub i64 %11, 1, !dbg !1128
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1128
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1128
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1128

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1128

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub23 = sub i64 %12, 1, !dbg !1128
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1128
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1128
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1128

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1128

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub28 = sub i64 %13, 1, !dbg !1128
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1128
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1128
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1128

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1128

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub33 = sub i64 %14, 1, !dbg !1128
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1128
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1128
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1128

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1128

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub38 = sub i64 %15, 1, !dbg !1128
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1128
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1128
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1128

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1128

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub43 = sub i64 %16, 1, !dbg !1128
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1128
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1128
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1128

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1128

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub48 = sub i64 %17, 1, !dbg !1128
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1128
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1128
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1128

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1128

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub53 = sub i64 %18, 1, !dbg !1128
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1128
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1128
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1128

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1128

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub58 = sub i64 %19, 1, !dbg !1128
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1128
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1128
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1128

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1128

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub63 = sub i64 %20, 1, !dbg !1128
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1128
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1128
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1128

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1128

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub68 = sub i64 %21, 1, !dbg !1128
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1128
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1128
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1128

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1128

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub73 = sub i64 %22, 1, !dbg !1128
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1128
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1128
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1128

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1128

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub78 = sub i64 %23, 1, !dbg !1128
  %and79 = and i64 %sub78, 562949953421312, !dbg !1128
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1128
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1128

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1128

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub83 = sub i64 %24, 1, !dbg !1128
  %and84 = and i64 %sub83, 281474976710656, !dbg !1128
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1128
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1128

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1128

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub88 = sub i64 %25, 1, !dbg !1128
  %and89 = and i64 %sub88, 140737488355328, !dbg !1128
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1128
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1128

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1128

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub93 = sub i64 %26, 1, !dbg !1128
  %and94 = and i64 %sub93, 70368744177664, !dbg !1128
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1128
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1128

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1128

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub98 = sub i64 %27, 1, !dbg !1128
  %and99 = and i64 %sub98, 35184372088832, !dbg !1128
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1128
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1128

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1128

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub103 = sub i64 %28, 1, !dbg !1128
  %and104 = and i64 %sub103, 17592186044416, !dbg !1128
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1128
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1128

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1128

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub108 = sub i64 %29, 1, !dbg !1128
  %and109 = and i64 %sub108, 8796093022208, !dbg !1128
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1128
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1128

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1128

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub113 = sub i64 %30, 1, !dbg !1128
  %and114 = and i64 %sub113, 4398046511104, !dbg !1128
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1128
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1128

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1128

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub118 = sub i64 %31, 1, !dbg !1128
  %and119 = and i64 %sub118, 2199023255552, !dbg !1128
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1128
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1128

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1128

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub123 = sub i64 %32, 1, !dbg !1128
  %and124 = and i64 %sub123, 1099511627776, !dbg !1128
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1128
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1128

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1128

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub128 = sub i64 %33, 1, !dbg !1128
  %and129 = and i64 %sub128, 549755813888, !dbg !1128
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1128
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1128

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1128

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub133 = sub i64 %34, 1, !dbg !1128
  %and134 = and i64 %sub133, 274877906944, !dbg !1128
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1128
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1128

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1128

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub138 = sub i64 %35, 1, !dbg !1128
  %and139 = and i64 %sub138, 137438953472, !dbg !1128
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1128
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1128

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1128

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub143 = sub i64 %36, 1, !dbg !1128
  %and144 = and i64 %sub143, 68719476736, !dbg !1128
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1128
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1128

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1128

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub148 = sub i64 %37, 1, !dbg !1128
  %and149 = and i64 %sub148, 34359738368, !dbg !1128
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1128
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1128

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1128

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub153 = sub i64 %38, 1, !dbg !1128
  %and154 = and i64 %sub153, 17179869184, !dbg !1128
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1128
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1128

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1128

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub158 = sub i64 %39, 1, !dbg !1128
  %and159 = and i64 %sub158, 8589934592, !dbg !1128
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1128
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1128

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1128

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub163 = sub i64 %40, 1, !dbg !1128
  %and164 = and i64 %sub163, 4294967296, !dbg !1128
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1128
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1128

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1128

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub168 = sub i64 %41, 1, !dbg !1128
  %and169 = and i64 %sub168, 2147483648, !dbg !1128
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1128
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1128

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1128

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub173 = sub i64 %42, 1, !dbg !1128
  %and174 = and i64 %sub173, 1073741824, !dbg !1128
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1128
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1128

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1128

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub178 = sub i64 %43, 1, !dbg !1128
  %and179 = and i64 %sub178, 536870912, !dbg !1128
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1128
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1128

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1128

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub183 = sub i64 %44, 1, !dbg !1128
  %and184 = and i64 %sub183, 268435456, !dbg !1128
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1128
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1128

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1128

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub188 = sub i64 %45, 1, !dbg !1128
  %and189 = and i64 %sub188, 134217728, !dbg !1128
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1128
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1128

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1128

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub193 = sub i64 %46, 1, !dbg !1128
  %and194 = and i64 %sub193, 67108864, !dbg !1128
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1128
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1128

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1128

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub198 = sub i64 %47, 1, !dbg !1128
  %and199 = and i64 %sub198, 33554432, !dbg !1128
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1128
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1128

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1128

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub203 = sub i64 %48, 1, !dbg !1128
  %and204 = and i64 %sub203, 16777216, !dbg !1128
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1128
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1128

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1128

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub208 = sub i64 %49, 1, !dbg !1128
  %and209 = and i64 %sub208, 8388608, !dbg !1128
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1128
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1128

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1128

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub213 = sub i64 %50, 1, !dbg !1128
  %and214 = and i64 %sub213, 4194304, !dbg !1128
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1128
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1128

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1128

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub218 = sub i64 %51, 1, !dbg !1128
  %and219 = and i64 %sub218, 2097152, !dbg !1128
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1128
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1128

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1128

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub223 = sub i64 %52, 1, !dbg !1128
  %and224 = and i64 %sub223, 1048576, !dbg !1128
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1128
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1128

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1128

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub228 = sub i64 %53, 1, !dbg !1128
  %and229 = and i64 %sub228, 524288, !dbg !1128
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1128
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1128

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1128

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub233 = sub i64 %54, 1, !dbg !1128
  %and234 = and i64 %sub233, 262144, !dbg !1128
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1128
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1128

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1128

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub238 = sub i64 %55, 1, !dbg !1128
  %and239 = and i64 %sub238, 131072, !dbg !1128
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1128
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1128

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1128

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub243 = sub i64 %56, 1, !dbg !1128
  %and244 = and i64 %sub243, 65536, !dbg !1128
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1128
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1128

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1128

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub248 = sub i64 %57, 1, !dbg !1128
  %and249 = and i64 %sub248, 32768, !dbg !1128
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1128
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1128

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1128

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub253 = sub i64 %58, 1, !dbg !1128
  %and254 = and i64 %sub253, 16384, !dbg !1128
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1128
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1128

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1128

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub258 = sub i64 %59, 1, !dbg !1128
  %and259 = and i64 %sub258, 8192, !dbg !1128
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1128
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1128

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1128

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub263 = sub i64 %60, 1, !dbg !1128
  %and264 = and i64 %sub263, 4096, !dbg !1128
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1128
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1128

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1128

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub268 = sub i64 %61, 1, !dbg !1128
  %and269 = and i64 %sub268, 2048, !dbg !1128
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1128
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1128

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1128

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub273 = sub i64 %62, 1, !dbg !1128
  %and274 = and i64 %sub273, 1024, !dbg !1128
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1128
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1128

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1128

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub278 = sub i64 %63, 1, !dbg !1128
  %and279 = and i64 %sub278, 512, !dbg !1128
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1128
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1128

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1128

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub283 = sub i64 %64, 1, !dbg !1128
  %and284 = and i64 %sub283, 256, !dbg !1128
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1128
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1128

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1128

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub288 = sub i64 %65, 1, !dbg !1128
  %and289 = and i64 %sub288, 128, !dbg !1128
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1128
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1128

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1128

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub293 = sub i64 %66, 1, !dbg !1128
  %and294 = and i64 %sub293, 64, !dbg !1128
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1128
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1128

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1128

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub298 = sub i64 %67, 1, !dbg !1128
  %and299 = and i64 %sub298, 32, !dbg !1128
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1128
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1128

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1128

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub303 = sub i64 %68, 1, !dbg !1128
  %and304 = and i64 %sub303, 16, !dbg !1128
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1128
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1128

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1128

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub308 = sub i64 %69, 1, !dbg !1128
  %and309 = and i64 %sub308, 8, !dbg !1128
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1128
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1128

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1128

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub313 = sub i64 %70, 1, !dbg !1128
  %and314 = and i64 %sub313, 4, !dbg !1128
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1128
  %71 = zext i1 %tobool315 to i64, !dbg !1128
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1128
  br label %cond.end, !dbg !1128

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1128
  br label %cond.end317, !dbg !1128

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1128
  br label %cond.end319, !dbg !1128

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1128
  br label %cond.end321, !dbg !1128

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1128
  br label %cond.end323, !dbg !1128

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1128
  br label %cond.end325, !dbg !1128

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1128
  br label %cond.end327, !dbg !1128

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1128
  br label %cond.end329, !dbg !1128

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1128
  br label %cond.end331, !dbg !1128

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1128
  br label %cond.end333, !dbg !1128

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1128
  br label %cond.end335, !dbg !1128

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1128
  br label %cond.end337, !dbg !1128

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1128
  br label %cond.end339, !dbg !1128

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1128
  br label %cond.end341, !dbg !1128

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1128
  br label %cond.end343, !dbg !1128

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1128
  br label %cond.end345, !dbg !1128

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1128
  br label %cond.end347, !dbg !1128

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1128
  br label %cond.end349, !dbg !1128

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1128
  br label %cond.end351, !dbg !1128

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1128
  br label %cond.end353, !dbg !1128

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1128
  br label %cond.end355, !dbg !1128

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1128
  br label %cond.end357, !dbg !1128

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1128
  br label %cond.end359, !dbg !1128

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1128
  br label %cond.end361, !dbg !1128

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1128
  br label %cond.end363, !dbg !1128

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1128
  br label %cond.end365, !dbg !1128

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1128
  br label %cond.end367, !dbg !1128

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1128
  br label %cond.end369, !dbg !1128

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1128
  br label %cond.end371, !dbg !1128

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1128
  br label %cond.end373, !dbg !1128

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1128
  br label %cond.end375, !dbg !1128

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1128
  br label %cond.end377, !dbg !1128

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1128
  br label %cond.end379, !dbg !1128

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1128
  br label %cond.end381, !dbg !1128

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1128
  br label %cond.end383, !dbg !1128

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1128
  br label %cond.end385, !dbg !1128

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1128
  br label %cond.end387, !dbg !1128

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1128
  br label %cond.end389, !dbg !1128

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1128
  br label %cond.end391, !dbg !1128

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1128
  br label %cond.end393, !dbg !1128

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1128
  br label %cond.end395, !dbg !1128

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1128
  br label %cond.end397, !dbg !1128

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1128
  br label %cond.end399, !dbg !1128

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1128
  br label %cond.end401, !dbg !1128

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1128
  br label %cond.end403, !dbg !1128

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1128
  br label %cond.end405, !dbg !1128

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1128
  br label %cond.end407, !dbg !1128

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1128
  br label %cond.end409, !dbg !1128

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1128
  br label %cond.end411, !dbg !1128

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1128
  br label %cond.end413, !dbg !1128

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1128
  br label %cond.end415, !dbg !1128

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1128
  br label %cond.end417, !dbg !1128

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1128
  br label %cond.end419, !dbg !1128

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1128
  br label %cond.end421, !dbg !1128

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1128
  br label %cond.end423, !dbg !1128

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1128
  br label %cond.end425, !dbg !1128

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1128
  br label %cond.end427, !dbg !1128

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1128
  br label %cond.end429, !dbg !1128

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1128
  br label %cond.end431, !dbg !1128

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1128
  br label %cond.end433, !dbg !1128

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1128
  br label %cond.end435, !dbg !1128

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1128
  br label %cond.end437, !dbg !1128

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1128
  br label %cond.end440, !dbg !1128

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1128

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1128
  br label %cond.end444, !dbg !1128

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1128
  %sub443 = sub i64 %72, 1, !dbg !1128
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !1128
  br label %cond.end444, !dbg !1128

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1128
  %sub446 = sub i32 %cond445, 12, !dbg !1129
  %add = add i32 %sub446, 1, !dbg !1130
  store i32 %add, i32* %retval, align 4, !dbg !1131
  br label %return, !dbg !1131

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1132
  %dec = add i64 %73, -1, !dbg !1132
  store i64 %dec, i64* %size.addr, align 8, !dbg !1132
  %74 = load i64, i64* %size.addr, align 8, !dbg !1133
  %shr = lshr i64 %74, 12, !dbg !1133
  store i64 %shr, i64* %size.addr, align 8, !dbg !1133
  %75 = load i64, i64* %size.addr, align 8, !dbg !1134
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1111
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1135
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1136
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !1135, !srcloc !1137
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1135
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1138
  %add.i = add i32 %79, 1, !dbg !1139
  store i32 %add.i, i32* %retval, align 4, !dbg !1140
  br label %return, !dbg !1140

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1141
  ret i32 %80, !dbg !1141
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1142 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1103, metadata !DIExpression()), !dbg !1146
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1110, metadata !DIExpression()), !dbg !1148
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1149, metadata !DIExpression()), !dbg !1150
  %0 = load i64, i64* %n.addr, align 8, !dbg !1151
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1148
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1152
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1153
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !1152, !srcloc !1137
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1152
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1154
  %add.i = add i32 %4, 1, !dbg !1155
  %sub = sub i32 %add.i, 1, !dbg !1156
  ret i32 %sub, !dbg !1157
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1158 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1164, metadata !DIExpression()), !dbg !1165
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1166, metadata !DIExpression()), !dbg !1167
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1168, metadata !DIExpression()), !dbg !1169
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1170, metadata !DIExpression()), !dbg !1171
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1172
  ret i8* %0, !dbg !1173
}

; Function Attrs: noredzone
declare dso_local void @clocks_calc_mult_shift(i32*, i32*, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dw_apb_clock_event_device* @ced_to_dw_apb_ced(%struct.clock_event_device* %evt) #0 !dbg !1174 {
entry:
  %evt.addr = alloca %struct.clock_event_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dw_apb_clock_event_device*, align 8
  store %struct.clock_event_device* %evt, %struct.clock_event_device** %evt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %evt.addr, metadata !1177, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1179, metadata !DIExpression()), !dbg !1181
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** %evt.addr, align 8, !dbg !1181
  %1 = bitcast %struct.clock_event_device* %0 to i8*, !dbg !1181
  store i8* %1, i8** %__mptr, align 8, !dbg !1181
  br label %do.body, !dbg !1181

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1182

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1181
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1181
  %3 = bitcast i8* %add.ptr to %struct.dw_apb_clock_event_device*, !dbg !1181
  store %struct.dw_apb_clock_event_device* %3, %struct.dw_apb_clock_event_device** %tmp, align 8, !dbg !1182
  %4 = load %struct.dw_apb_clock_event_device*, %struct.dw_apb_clock_event_device** %tmp, align 8, !dbg !1181
  ret %struct.dw_apb_clock_event_device* %4, !dbg !1184
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apbt_readl_relaxed(%struct.dw_apb_timer* %timer, i64 %offs) #0 !dbg !1185 {
entry:
  %timer.addr = alloca %struct.dw_apb_timer*, align 8
  %offs.addr = alloca i64, align 8
  store %struct.dw_apb_timer* %timer, %struct.dw_apb_timer** %timer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_apb_timer** %timer.addr, metadata !1186, metadata !DIExpression()), !dbg !1187
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !1188, metadata !DIExpression()), !dbg !1189
  %0 = load %struct.dw_apb_timer*, %struct.dw_apb_timer** %timer.addr, align 8, !dbg !1190
  %base = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %0, i32 0, i32 0, !dbg !1190
  %1 = load i8*, i8** %base, align 8, !dbg !1190
  %2 = load i64, i64* %offs.addr, align 8, !dbg !1190
  %add.ptr = getelementptr i8, i8* %1, i64 %2, !dbg !1190
  %call = call i32 @__readl(i8* %add.ptr) #7, !dbg !1190
  ret i32 %call, !dbg !1191
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apbt_writel_relaxed(%struct.dw_apb_timer* %timer, i32 %val, i64 %offs) #0 !dbg !1192 {
entry:
  %timer.addr = alloca %struct.dw_apb_timer*, align 8
  %val.addr = alloca i32, align 4
  %offs.addr = alloca i64, align 8
  store %struct.dw_apb_timer* %timer, %struct.dw_apb_timer** %timer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dw_apb_timer** %timer.addr, metadata !1193, metadata !DIExpression()), !dbg !1194
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !1195, metadata !DIExpression()), !dbg !1196
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !1197, metadata !DIExpression()), !dbg !1198
  %0 = load i32, i32* %val.addr, align 4, !dbg !1199
  %1 = load %struct.dw_apb_timer*, %struct.dw_apb_timer** %timer.addr, align 8, !dbg !1199
  %base = getelementptr inbounds %struct.dw_apb_timer, %struct.dw_apb_timer* %1, i32 0, i32 0, !dbg !1199
  %2 = load i8*, i8** %base, align 8, !dbg !1199
  %3 = load i64, i64* %offs.addr, align 8, !dbg !1199
  %add.ptr = getelementptr i8, i8* %2, i64 %3, !dbg !1199
  call void @__writel(i32 %0, i8* %add.ptr) #7, !dbg !1199
  ret void, !dbg !1200
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__readl(i8* %addr) #0 !dbg !1201 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1208, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1210, metadata !DIExpression()), !dbg !1209
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !1209
  %1 = bitcast i8* %0 to i32*, !dbg !1209
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %1) #9, !dbg !1209, !srcloc !1211
  store i32 %2, i32* %ret, align 4, !dbg !1209
  %3 = load i32, i32* %ret, align 4, !dbg !1209
  ret i32 %3, !dbg !1209
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__writel(i32 %val, i8* %addr) #0 !dbg !1212 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !1216, metadata !DIExpression()), !dbg !1217
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1218, metadata !DIExpression()), !dbg !1217
  %0 = load i32, i32* %val.addr, align 4, !dbg !1217
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !1217
  %2 = bitcast i8* %1 to i32*, !dbg !1217
  call void asm sideeffect "movl $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #9, !dbg !1217, !srcloc !1219
  ret void, !dbg !1217
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !1220 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !1221, metadata !DIExpression()), !dbg !1222
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1223, metadata !DIExpression()), !dbg !1222
  %0 = load i32, i32* %val.addr, align 4, !dbg !1222
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !1222
  %2 = bitcast i8* %1 to i32*, !dbg !1222
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #9, !dbg !1222, !srcloc !1224
  ret void, !dbg !1222
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !1225 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1226, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1228, metadata !DIExpression()), !dbg !1227
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !1227
  %1 = bitcast i8* %0 to i32*, !dbg !1227
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #9, !dbg !1227, !srcloc !1229
  store i32 %2, i32* %ret, align 4, !dbg !1227
  %3 = load i32, i32* %ret, align 4, !dbg !1227
  ret i32 %3, !dbg !1227
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dw_apb_clocksource* @clocksource_to_dw_apb_clocksource(%struct.clocksource* %cs) #0 !dbg !1230 {
entry:
  %cs.addr = alloca %struct.clocksource*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dw_apb_clocksource*, align 8
  store %struct.clocksource* %cs, %struct.clocksource** %cs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clocksource** %cs.addr, metadata !1233, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1235, metadata !DIExpression()), !dbg !1237
  %0 = load %struct.clocksource*, %struct.clocksource** %cs.addr, align 8, !dbg !1237
  %1 = bitcast %struct.clocksource* %0 to i8*, !dbg !1237
  store i8* %1, i8** %__mptr, align 8, !dbg !1237
  br label %do.body, !dbg !1237

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1238

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1237
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !1237
  %3 = bitcast i8* %add.ptr to %struct.dw_apb_clocksource*, !dbg !1237
  store %struct.dw_apb_clocksource* %3, %struct.dw_apb_clocksource** %tmp, align 8, !dbg !1238
  %4 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %tmp, align 8, !dbg !1237
  ret %struct.dw_apb_clocksource* %4, !dbg !1240
}

; Function Attrs: noredzone
declare dso_local i32 @__clocksource_register_scale(%struct.clocksource*, i32, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !34, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/clocksource/dw_apb_timer.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !12, !21, !28}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clock_event_state", file: !4, line: 35, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/clockchips.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "CLOCK_EVT_STATE_DETACHED", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "CLOCK_EVT_STATE_SHUTDOWN", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "CLOCK_EVT_STATE_PERIODIC", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT_STOPPED", value: 4, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vdso_clock_mode", file: !13, line: 11, baseType: !5, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/vdso/clocksource.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16, !17, !18, !19, !20}
!15 = !DIEnumerator(name: "VDSO_CLOCKMODE_NONE", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "VDSO_CLOCKMODE_TSC", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "VDSO_CLOCKMODE_PVCLOCK", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "VDSO_CLOCKMODE_HVCLOCK", value: 3, isUnsigned: true)
!19 = !DIEnumerator(name: "VDSO_CLOCKMODE_MAX", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "VDSO_CLOCKMODE_TIMENS", value: 2147483647, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !22, line: 305, baseType: !5, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!27 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !29, line: 11, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!32 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!34 = !{!35, !37, !47, !48, !53, !54, !55, !135, !137}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !36, line: 148, baseType: !5)
!36 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !40, line: 17, size: 64, elements: !41)
!40 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !39, file: !40, line: 17, baseType: !43, size: 64)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !45)
!44 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !49, line: 23, baseType: !50)
!49 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !51, line: 31, baseType: !52)
!51 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!52 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dw_apb_clock_event_device", file: !57, line: 25, size: 2560, elements: !58)
!57 = !DIFile(filename: "./include/linux/dw_apb_timer.h", directory: "/home/lizy2001/genbc/linux")
!58 = !{!59, !124, !130}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ced", scope: !56, file: !57, line: 26, baseType: !60, size: 2048, align: 512)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clock_event_device", file: !4, line: 100, size: 2048, align: 512, elements: !61)
!61 = !{!62, !67, !71, !80, !81, !82, !83, !86, !87, !88, !89, !90, !94, !95, !96, !97, !98, !102, !103, !104, !105, !106, !110, !111, !112, !113, !114, !120}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "event_handler", scope: !60, file: !4, line: 101, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_event", scope: !60, file: !4, line: 102, baseType: !68, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!47, !44, !66}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_ktime", scope: !60, file: !4, line: 103, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!47, !75, !66}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !76, line: 29, baseType: !77)
!76 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !49, line: 22, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !51, line: 30, baseType: !79)
!79 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next_event", scope: !60, file: !4, line: 104, baseType: !75, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ns", scope: !60, file: !4, line: 105, baseType: !48, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ns", scope: !60, file: !4, line: 106, baseType: !48, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !60, file: !4, line: 107, baseType: !84, size: 32, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !49, line: 21, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !51, line: 27, baseType: !5)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !60, file: !4, line: 108, baseType: !84, size: 32, offset: 416)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !60, file: !4, line: 109, baseType: !3, size: 32, offset: 448)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !60, file: !4, line: 110, baseType: !5, size: 32, offset: 480)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !60, file: !4, line: 111, baseType: !44, size: 64, offset: 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_periodic", scope: !60, file: !4, line: 113, baseType: !91, size: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!47, !66}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot", scope: !60, file: !4, line: 114, baseType: !91, size: 64, offset: 640)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot_stopped", scope: !60, file: !4, line: 115, baseType: !91, size: 64, offset: 704)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_shutdown", scope: !60, file: !4, line: 116, baseType: !91, size: 64, offset: 768)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "tick_resume", scope: !60, file: !4, line: 117, baseType: !91, size: 64, offset: 832)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast", scope: !60, file: !4, line: 119, baseType: !99, size: 64, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !37}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !60, file: !4, line: 120, baseType: !63, size: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !60, file: !4, line: 121, baseType: !63, size: 64, offset: 1024)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ticks", scope: !60, file: !4, line: 122, baseType: !44, size: 64, offset: 1088)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ticks", scope: !60, file: !4, line: 123, baseType: !44, size: 64, offset: 1152)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !60, file: !4, line: 125, baseType: !107, size: 64, offset: 1216)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !60, file: !4, line: 126, baseType: !47, size: 32, offset: 1280)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !60, file: !4, line: 127, baseType: !47, size: 32, offset: 1312)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "bound_on", scope: !60, file: !4, line: 128, baseType: !47, size: 32, offset: 1344)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !60, file: !4, line: 129, baseType: !37, size: 64, offset: 1408)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !60, file: !4, line: 130, baseType: !115, size: 128, offset: 1472)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !36, line: 178, size: 128, elements: !116)
!116 = !{!117, !119}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !36, line: 179, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !115, file: !36, line: 179, baseType: !118, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !60, file: !4, line: 131, baseType: !121, size: 64, offset: 1600)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !123, line: 76, flags: DIFlagFwdDecl)
!123 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!124 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !56, file: !57, line: 27, baseType: !125, size: 192, offset: 2048)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dw_apb_timer", file: !57, line: 19, size: 192, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !125, file: !57, line: 20, baseType: !53, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !125, file: !57, line: 21, baseType: !44, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !125, file: !57, line: 22, baseType: !47, size: 32, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !56, file: !57, line: 28, baseType: !131, size: 64, offset: 2240)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dw_apb_clocksource", file: !57, line: 31, size: 1600, elements: !139)
!139 = !{!140, !141}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !138, file: !57, line: 32, baseType: !125, size: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !138, file: !57, line: 33, baseType: !142, size: 1408, offset: 192)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clocksource", file: !143, line: 89, size: 1408, elements: !144)
!143 = !DIFile(filename: "./include/linux/clocksource.h", directory: "/home/lizy2001/genbc/linux")
!144 = !{!145, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !165, !169, !170, !171, !172, !173, !174, !175, !176}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !142, file: !143, line: 90, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!48, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !142, file: !143, line: 91, baseType: !48, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !142, file: !143, line: 92, baseType: !84, size: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !142, file: !143, line: 93, baseType: !84, size: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "max_idle_ns", scope: !142, file: !143, line: 94, baseType: !48, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "maxadj", scope: !142, file: !143, line: 95, baseType: !84, size: 32, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "max_cycles", scope: !142, file: !143, line: 99, baseType: !48, size: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !142, file: !143, line: 100, baseType: !107, size: 64, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !142, file: !143, line: 101, baseType: !115, size: 128, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !142, file: !143, line: 102, baseType: !47, size: 32, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_clock_mode", scope: !142, file: !143, line: 103, baseType: !12, size: 32, offset: 608)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !142, file: !143, line: 104, baseType: !44, size: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !142, file: !143, line: 106, baseType: !162, size: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!47, !149}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !142, file: !143, line: 107, baseType: !166, size: 64, offset: 768)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !149}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !142, file: !143, line: 108, baseType: !166, size: 64, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !142, file: !143, line: 109, baseType: !166, size: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "mark_unstable", scope: !142, file: !143, line: 110, baseType: !166, size: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tick_stable", scope: !142, file: !143, line: 111, baseType: !166, size: 64, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "wd_list", scope: !142, file: !143, line: 116, baseType: !115, size: 128, offset: 1088)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "cs_last", scope: !142, file: !143, line: 117, baseType: !48, size: 64, offset: 1216)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "wd_last", scope: !142, file: !143, line: 118, baseType: !48, size: 64, offset: 1280)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !142, file: !143, line: 120, baseType: !121, size: 64, offset: 1344)
!177 = !{i32 7, !"Dwarf Version", i32 4}
!178 = !{i32 2, !"Debug Info Version", i32 3}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"Code Model", i32 2}
!181 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!182 = distinct !DISubprogram(name: "dw_apb_clockevent_pause", scope: !1, file: !1, line: 84, type: !183, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !55}
!185 = !{}
!186 = !DILocalVariable(name: "dw_ced", arg: 1, scope: !182, file: !1, line: 84, type: !55)
!187 = !DILocation(line: 84, column: 64, scope: !182)
!188 = !DILocation(line: 86, column: 14, scope: !182)
!189 = !DILocation(line: 86, column: 22, scope: !182)
!190 = !DILocation(line: 86, column: 28, scope: !182)
!191 = !DILocation(line: 86, column: 2, scope: !182)
!192 = !DILocation(line: 87, column: 20, scope: !182)
!193 = !DILocation(line: 87, column: 28, scope: !182)
!194 = !DILocation(line: 87, column: 2, scope: !182)
!195 = !DILocation(line: 88, column: 1, scope: !182)
!196 = distinct !DISubprogram(name: "apbt_disable_int", scope: !1, file: !1, line: 71, type: !132, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!197 = !DILocalVariable(name: "timer", arg: 1, scope: !196, file: !1, line: 71, type: !134)
!198 = !DILocation(line: 71, column: 51, scope: !196)
!199 = !DILocalVariable(name: "ctrl", scope: !196, file: !1, line: 73, type: !84)
!200 = !DILocation(line: 73, column: 6, scope: !196)
!201 = !DILocation(line: 73, column: 24, scope: !196)
!202 = !DILocation(line: 73, column: 13, scope: !196)
!203 = !DILocation(line: 75, column: 7, scope: !196)
!204 = !DILocation(line: 76, column: 14, scope: !196)
!205 = !DILocation(line: 76, column: 21, scope: !196)
!206 = !DILocation(line: 76, column: 2, scope: !196)
!207 = !DILocation(line: 77, column: 1, scope: !196)
!208 = distinct !DISubprogram(name: "dw_apb_clockevent_init", scope: !1, file: !1, line: 241, type: !209, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !185)
!209 = !DISubroutineType(types: !210)
!210 = !{!55, !47, !107, !5, !53, !47, !44}
!211 = !DILocalVariable(name: "cpu", arg: 1, scope: !208, file: !1, line: 241, type: !47)
!212 = !DILocation(line: 241, column: 28, scope: !208)
!213 = !DILocalVariable(name: "name", arg: 2, scope: !208, file: !1, line: 241, type: !107)
!214 = !DILocation(line: 241, column: 45, scope: !208)
!215 = !DILocalVariable(name: "rating", arg: 3, scope: !208, file: !1, line: 241, type: !5)
!216 = !DILocation(line: 241, column: 60, scope: !208)
!217 = !DILocalVariable(name: "base", arg: 4, scope: !208, file: !1, line: 242, type: !53)
!218 = !DILocation(line: 242, column: 24, scope: !208)
!219 = !DILocalVariable(name: "irq", arg: 5, scope: !208, file: !1, line: 242, type: !47)
!220 = !DILocation(line: 242, column: 34, scope: !208)
!221 = !DILocalVariable(name: "freq", arg: 6, scope: !208, file: !1, line: 242, type: !44)
!222 = !DILocation(line: 242, column: 53, scope: !208)
!223 = !DILocalVariable(name: "dw_ced", scope: !208, file: !1, line: 244, type: !55)
!224 = !DILocation(line: 244, column: 36, scope: !208)
!225 = !DILocation(line: 245, column: 3, scope: !208)
!226 = !DILocalVariable(name: "err", scope: !208, file: !1, line: 246, type: !47)
!227 = !DILocation(line: 246, column: 6, scope: !208)
!228 = !DILocation(line: 248, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !208, file: !1, line: 248, column: 6)
!230 = !DILocation(line: 248, column: 6, scope: !208)
!231 = !DILocation(line: 249, column: 3, scope: !229)
!232 = !DILocation(line: 251, column: 23, scope: !208)
!233 = !DILocation(line: 251, column: 2, scope: !208)
!234 = !DILocation(line: 251, column: 10, scope: !208)
!235 = !DILocation(line: 251, column: 16, scope: !208)
!236 = !DILocation(line: 251, column: 21, scope: !208)
!237 = !DILocation(line: 252, column: 22, scope: !208)
!238 = !DILocation(line: 252, column: 2, scope: !208)
!239 = !DILocation(line: 252, column: 10, scope: !208)
!240 = !DILocation(line: 252, column: 16, scope: !208)
!241 = !DILocation(line: 252, column: 20, scope: !208)
!242 = !DILocation(line: 253, column: 23, scope: !208)
!243 = !DILocation(line: 253, column: 2, scope: !208)
!244 = !DILocation(line: 253, column: 10, scope: !208)
!245 = !DILocation(line: 253, column: 16, scope: !208)
!246 = !DILocation(line: 253, column: 21, scope: !208)
!247 = !DILocation(line: 255, column: 31, scope: !208)
!248 = !DILocation(line: 255, column: 39, scope: !208)
!249 = !DILocation(line: 255, column: 44, scope: !208)
!250 = !DILocation(line: 255, column: 2, scope: !208)
!251 = !DILocation(line: 257, column: 15, scope: !208)
!252 = !DILocation(line: 257, column: 23, scope: !208)
!253 = !DILocation(line: 256, column: 29, scope: !208)
!254 = !DILocation(line: 256, column: 2, scope: !208)
!255 = !DILocation(line: 256, column: 10, scope: !208)
!256 = !DILocation(line: 256, column: 14, scope: !208)
!257 = !DILocation(line: 256, column: 27, scope: !208)
!258 = !DILocation(line: 258, column: 2, scope: !208)
!259 = !DILocation(line: 258, column: 10, scope: !208)
!260 = !DILocation(line: 258, column: 14, scope: !208)
!261 = !DILocation(line: 258, column: 30, scope: !208)
!262 = !DILocation(line: 259, column: 56, scope: !208)
!263 = !DILocation(line: 259, column: 64, scope: !208)
!264 = !DILocation(line: 259, column: 29, scope: !208)
!265 = !DILocation(line: 259, column: 2, scope: !208)
!266 = !DILocation(line: 259, column: 10, scope: !208)
!267 = !DILocation(line: 259, column: 14, scope: !208)
!268 = !DILocation(line: 259, column: 27, scope: !208)
!269 = !DILocation(line: 260, column: 2, scope: !208)
!270 = !DILocation(line: 260, column: 10, scope: !208)
!271 = !DILocation(line: 260, column: 14, scope: !208)
!272 = !DILocation(line: 260, column: 30, scope: !208)
!273 = !DILocation(line: 261, column: 24, scope: !208)
!274 = !DILocation(line: 261, column: 28, scope: !208)
!275 = !DILocation(line: 261, column: 54, scope: !208)
!276 = !DILocation(line: 261, column: 2, scope: !208)
!277 = !DILocation(line: 261, column: 10, scope: !208)
!278 = !DILocation(line: 261, column: 14, scope: !208)
!279 = !DILocation(line: 261, column: 22, scope: !208)
!280 = !DILocation(line: 262, column: 2, scope: !208)
!281 = !DILocation(line: 262, column: 10, scope: !208)
!282 = !DILocation(line: 262, column: 14, scope: !208)
!283 = !DILocation(line: 262, column: 23, scope: !208)
!284 = !DILocation(line: 264, column: 2, scope: !208)
!285 = !DILocation(line: 264, column: 10, scope: !208)
!286 = !DILocation(line: 264, column: 14, scope: !208)
!287 = !DILocation(line: 264, column: 33, scope: !208)
!288 = !DILocation(line: 265, column: 2, scope: !208)
!289 = !DILocation(line: 265, column: 10, scope: !208)
!290 = !DILocation(line: 265, column: 14, scope: !208)
!291 = !DILocation(line: 265, column: 33, scope: !208)
!292 = !DILocation(line: 266, column: 2, scope: !208)
!293 = !DILocation(line: 266, column: 10, scope: !208)
!294 = !DILocation(line: 266, column: 14, scope: !208)
!295 = !DILocation(line: 266, column: 32, scope: !208)
!296 = !DILocation(line: 267, column: 2, scope: !208)
!297 = !DILocation(line: 267, column: 10, scope: !208)
!298 = !DILocation(line: 267, column: 14, scope: !208)
!299 = !DILocation(line: 267, column: 40, scope: !208)
!300 = !DILocation(line: 268, column: 2, scope: !208)
!301 = !DILocation(line: 268, column: 10, scope: !208)
!302 = !DILocation(line: 268, column: 14, scope: !208)
!303 = !DILocation(line: 268, column: 26, scope: !208)
!304 = !DILocation(line: 269, column: 2, scope: !208)
!305 = !DILocation(line: 269, column: 10, scope: !208)
!306 = !DILocation(line: 269, column: 14, scope: !208)
!307 = !DILocation(line: 269, column: 29, scope: !208)
!308 = !DILocation(line: 270, column: 20, scope: !208)
!309 = !DILocation(line: 270, column: 28, scope: !208)
!310 = !DILocation(line: 270, column: 34, scope: !208)
!311 = !DILocation(line: 270, column: 2, scope: !208)
!312 = !DILocation(line: 270, column: 10, scope: !208)
!313 = !DILocation(line: 270, column: 14, scope: !208)
!314 = !DILocation(line: 270, column: 18, scope: !208)
!315 = !DILocation(line: 271, column: 23, scope: !208)
!316 = !DILocation(line: 271, column: 2, scope: !208)
!317 = !DILocation(line: 271, column: 10, scope: !208)
!318 = !DILocation(line: 271, column: 14, scope: !208)
!319 = !DILocation(line: 271, column: 21, scope: !208)
!320 = !DILocation(line: 272, column: 21, scope: !208)
!321 = !DILocation(line: 272, column: 2, scope: !208)
!322 = !DILocation(line: 272, column: 10, scope: !208)
!323 = !DILocation(line: 272, column: 14, scope: !208)
!324 = !DILocation(line: 272, column: 19, scope: !208)
!325 = !DILocation(line: 274, column: 2, scope: !208)
!326 = !DILocation(line: 274, column: 10, scope: !208)
!327 = !DILocation(line: 274, column: 14, scope: !208)
!328 = !DILocation(line: 275, column: 20, scope: !208)
!329 = !DILocation(line: 277, column: 6, scope: !208)
!330 = !DILocation(line: 277, column: 14, scope: !208)
!331 = !DILocation(line: 277, column: 18, scope: !208)
!332 = !DILocation(line: 277, column: 25, scope: !208)
!333 = !DILocation(line: 277, column: 33, scope: !208)
!334 = !DILocation(line: 277, column: 24, scope: !208)
!335 = !DILocation(line: 275, column: 8, scope: !208)
!336 = !DILocation(line: 275, column: 6, scope: !208)
!337 = !DILocation(line: 278, column: 6, scope: !338)
!338 = distinct !DILexicalBlock(scope: !208, file: !1, line: 278, column: 6)
!339 = !DILocation(line: 278, column: 6, scope: !208)
!340 = !DILocation(line: 279, column: 3, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !1, line: 278, column: 11)
!342 = !DILocation(line: 280, column: 9, scope: !341)
!343 = !DILocation(line: 280, column: 3, scope: !341)
!344 = !DILocation(line: 281, column: 10, scope: !341)
!345 = !DILocation(line: 282, column: 2, scope: !341)
!346 = !DILocation(line: 284, column: 9, scope: !208)
!347 = !DILocation(line: 284, column: 2, scope: !208)
!348 = !DILocation(line: 285, column: 1, scope: !208)
!349 = distinct !DISubprogram(name: "kzalloc", scope: !22, file: !22, line: 662, type: !350, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!350 = !DISubroutineType(types: !351)
!351 = !{!53, !352, !35}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 55, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !354, line: 72, baseType: !355)
!354 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !354, line: 16, baseType: !44)
!356 = !DILocalVariable(name: "s", arg: 1, scope: !357, file: !22, line: 445, type: !360)
!357 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !22, file: !22, line: 445, type: !358, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!358 = !DISubroutineType(types: !359)
!359 = !{!53, !360, !35, !352}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !362, line: 117, flags: DIFlagFwdDecl)
!362 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!363 = !DILocation(line: 445, column: 72, scope: !357, inlinedAt: !364)
!364 = distinct !DILocation(line: 552, column: 10, scope: !365, inlinedAt: !368)
!365 = distinct !DILexicalBlock(scope: !366, file: !22, line: 540, column: 34)
!366 = distinct !DILexicalBlock(scope: !367, file: !22, line: 540, column: 6)
!367 = distinct !DISubprogram(name: "kmalloc", scope: !22, file: !22, line: 538, type: !350, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!368 = distinct !DILocation(line: 664, column: 9, scope: !349)
!369 = !DILocalVariable(name: "flags", arg: 2, scope: !357, file: !22, line: 446, type: !35)
!370 = !DILocation(line: 446, column: 9, scope: !357, inlinedAt: !364)
!371 = !DILocalVariable(name: "size", arg: 3, scope: !357, file: !22, line: 446, type: !352)
!372 = !DILocation(line: 446, column: 23, scope: !357, inlinedAt: !364)
!373 = !DILocalVariable(name: "ret", scope: !357, file: !22, line: 448, type: !53)
!374 = !DILocation(line: 448, column: 8, scope: !357, inlinedAt: !364)
!375 = !DILocalVariable(name: "flags", arg: 1, scope: !376, file: !22, line: 318, type: !35)
!376 = distinct !DISubprogram(name: "kmalloc_type", scope: !22, file: !22, line: 318, type: !377, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!377 = !DISubroutineType(types: !378)
!378 = !{!21, !35}
!379 = !DILocation(line: 318, column: 67, scope: !376, inlinedAt: !380)
!380 = distinct !DILocation(line: 553, column: 20, scope: !365, inlinedAt: !368)
!381 = !DILocalVariable(name: "size", arg: 1, scope: !382, file: !22, line: 346, type: !352)
!382 = distinct !DISubprogram(name: "kmalloc_index", scope: !22, file: !22, line: 346, type: !383, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!383 = !DISubroutineType(types: !384)
!384 = !{!5, !352}
!385 = !DILocation(line: 346, column: 58, scope: !382, inlinedAt: !386)
!386 = distinct !DILocation(line: 547, column: 11, scope: !365, inlinedAt: !368)
!387 = !DILocalVariable(name: "size", arg: 1, scope: !388, file: !22, line: 472, type: !352)
!388 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !22, file: !22, line: 472, type: !389, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!389 = !DISubroutineType(types: !390)
!390 = !{!53, !352, !35, !5}
!391 = !DILocation(line: 472, column: 28, scope: !388, inlinedAt: !392)
!392 = distinct !DILocation(line: 481, column: 9, scope: !393, inlinedAt: !394)
!393 = distinct !DISubprogram(name: "kmalloc_large", scope: !22, file: !22, line: 478, type: !350, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!394 = distinct !DILocation(line: 545, column: 11, scope: !395, inlinedAt: !368)
!395 = distinct !DILexicalBlock(scope: !365, file: !22, line: 544, column: 7)
!396 = !DILocalVariable(name: "flags", arg: 2, scope: !388, file: !22, line: 472, type: !35)
!397 = !DILocation(line: 472, column: 40, scope: !388, inlinedAt: !392)
!398 = !DILocalVariable(name: "order", arg: 3, scope: !388, file: !22, line: 472, type: !5)
!399 = !DILocation(line: 472, column: 60, scope: !388, inlinedAt: !392)
!400 = !DILocalVariable(name: "size", arg: 1, scope: !393, file: !22, line: 478, type: !352)
!401 = !DILocation(line: 478, column: 51, scope: !393, inlinedAt: !394)
!402 = !DILocalVariable(name: "flags", arg: 2, scope: !393, file: !22, line: 478, type: !35)
!403 = !DILocation(line: 478, column: 63, scope: !393, inlinedAt: !394)
!404 = !DILocalVariable(name: "order", scope: !393, file: !22, line: 480, type: !5)
!405 = !DILocation(line: 480, column: 15, scope: !393, inlinedAt: !394)
!406 = !DILocalVariable(name: "size", arg: 1, scope: !367, file: !22, line: 538, type: !352)
!407 = !DILocation(line: 538, column: 45, scope: !367, inlinedAt: !368)
!408 = !DILocalVariable(name: "flags", arg: 2, scope: !367, file: !22, line: 538, type: !35)
!409 = !DILocation(line: 538, column: 57, scope: !367, inlinedAt: !368)
!410 = !DILocalVariable(name: "index", scope: !365, file: !22, line: 542, type: !5)
!411 = !DILocation(line: 542, column: 16, scope: !365, inlinedAt: !368)
!412 = !DILocalVariable(name: "size", arg: 1, scope: !349, file: !22, line: 662, type: !352)
!413 = !DILocation(line: 662, column: 36, scope: !349)
!414 = !DILocalVariable(name: "flags", arg: 2, scope: !349, file: !22, line: 662, type: !35)
!415 = !DILocation(line: 662, column: 48, scope: !349)
!416 = !DILocation(line: 664, column: 17, scope: !349)
!417 = !DILocation(line: 664, column: 23, scope: !349)
!418 = !DILocation(line: 664, column: 29, scope: !349)
!419 = !DILocation(line: 540, column: 27, scope: !366, inlinedAt: !368)
!420 = !DILocation(line: 540, column: 6, scope: !366, inlinedAt: !368)
!421 = !DILocation(line: 540, column: 6, scope: !367, inlinedAt: !368)
!422 = !DILocation(line: 544, column: 7, scope: !395, inlinedAt: !368)
!423 = !DILocation(line: 544, column: 12, scope: !395, inlinedAt: !368)
!424 = !DILocation(line: 544, column: 7, scope: !365, inlinedAt: !368)
!425 = !DILocation(line: 545, column: 25, scope: !395, inlinedAt: !368)
!426 = !DILocation(line: 545, column: 31, scope: !395, inlinedAt: !368)
!427 = !DILocation(line: 480, column: 33, scope: !393, inlinedAt: !394)
!428 = !DILocation(line: 480, column: 23, scope: !393, inlinedAt: !394)
!429 = !DILocation(line: 481, column: 29, scope: !393, inlinedAt: !394)
!430 = !DILocation(line: 481, column: 35, scope: !393, inlinedAt: !394)
!431 = !DILocation(line: 481, column: 42, scope: !393, inlinedAt: !394)
!432 = !DILocation(line: 474, column: 23, scope: !388, inlinedAt: !392)
!433 = !DILocation(line: 474, column: 29, scope: !388, inlinedAt: !392)
!434 = !DILocation(line: 474, column: 36, scope: !388, inlinedAt: !392)
!435 = !DILocation(line: 474, column: 9, scope: !388, inlinedAt: !392)
!436 = !DILocation(line: 545, column: 4, scope: !395, inlinedAt: !368)
!437 = !DILocation(line: 547, column: 25, scope: !365, inlinedAt: !368)
!438 = !DILocation(line: 348, column: 7, scope: !439, inlinedAt: !386)
!439 = distinct !DILexicalBlock(scope: !382, file: !22, line: 348, column: 6)
!440 = !DILocation(line: 348, column: 6, scope: !382, inlinedAt: !386)
!441 = !DILocation(line: 349, column: 3, scope: !439, inlinedAt: !386)
!442 = !DILocation(line: 351, column: 6, scope: !443, inlinedAt: !386)
!443 = distinct !DILexicalBlock(scope: !382, file: !22, line: 351, column: 6)
!444 = !DILocation(line: 351, column: 11, scope: !443, inlinedAt: !386)
!445 = !DILocation(line: 351, column: 6, scope: !382, inlinedAt: !386)
!446 = !DILocation(line: 352, column: 3, scope: !443, inlinedAt: !386)
!447 = !DILocation(line: 354, column: 32, scope: !448, inlinedAt: !386)
!448 = distinct !DILexicalBlock(scope: !382, file: !22, line: 354, column: 6)
!449 = !DILocation(line: 354, column: 37, scope: !448, inlinedAt: !386)
!450 = !DILocation(line: 354, column: 42, scope: !448, inlinedAt: !386)
!451 = !DILocation(line: 354, column: 45, scope: !448, inlinedAt: !386)
!452 = !DILocation(line: 354, column: 50, scope: !448, inlinedAt: !386)
!453 = !DILocation(line: 354, column: 6, scope: !382, inlinedAt: !386)
!454 = !DILocation(line: 355, column: 3, scope: !448, inlinedAt: !386)
!455 = !DILocation(line: 356, column: 32, scope: !456, inlinedAt: !386)
!456 = distinct !DILexicalBlock(scope: !382, file: !22, line: 356, column: 6)
!457 = !DILocation(line: 356, column: 37, scope: !456, inlinedAt: !386)
!458 = !DILocation(line: 356, column: 43, scope: !456, inlinedAt: !386)
!459 = !DILocation(line: 356, column: 46, scope: !456, inlinedAt: !386)
!460 = !DILocation(line: 356, column: 51, scope: !456, inlinedAt: !386)
!461 = !DILocation(line: 356, column: 6, scope: !382, inlinedAt: !386)
!462 = !DILocation(line: 357, column: 3, scope: !456, inlinedAt: !386)
!463 = !DILocation(line: 358, column: 6, scope: !464, inlinedAt: !386)
!464 = distinct !DILexicalBlock(scope: !382, file: !22, line: 358, column: 6)
!465 = !DILocation(line: 358, column: 11, scope: !464, inlinedAt: !386)
!466 = !DILocation(line: 358, column: 6, scope: !382, inlinedAt: !386)
!467 = !DILocation(line: 358, column: 26, scope: !464, inlinedAt: !386)
!468 = !DILocation(line: 359, column: 6, scope: !469, inlinedAt: !386)
!469 = distinct !DILexicalBlock(scope: !382, file: !22, line: 359, column: 6)
!470 = !DILocation(line: 359, column: 11, scope: !469, inlinedAt: !386)
!471 = !DILocation(line: 359, column: 6, scope: !382, inlinedAt: !386)
!472 = !DILocation(line: 359, column: 26, scope: !469, inlinedAt: !386)
!473 = !DILocation(line: 360, column: 6, scope: !474, inlinedAt: !386)
!474 = distinct !DILexicalBlock(scope: !382, file: !22, line: 360, column: 6)
!475 = !DILocation(line: 360, column: 11, scope: !474, inlinedAt: !386)
!476 = !DILocation(line: 360, column: 6, scope: !382, inlinedAt: !386)
!477 = !DILocation(line: 360, column: 26, scope: !474, inlinedAt: !386)
!478 = !DILocation(line: 361, column: 6, scope: !479, inlinedAt: !386)
!479 = distinct !DILexicalBlock(scope: !382, file: !22, line: 361, column: 6)
!480 = !DILocation(line: 361, column: 11, scope: !479, inlinedAt: !386)
!481 = !DILocation(line: 361, column: 6, scope: !382, inlinedAt: !386)
!482 = !DILocation(line: 361, column: 26, scope: !479, inlinedAt: !386)
!483 = !DILocation(line: 362, column: 6, scope: !484, inlinedAt: !386)
!484 = distinct !DILexicalBlock(scope: !382, file: !22, line: 362, column: 6)
!485 = !DILocation(line: 362, column: 11, scope: !484, inlinedAt: !386)
!486 = !DILocation(line: 362, column: 6, scope: !382, inlinedAt: !386)
!487 = !DILocation(line: 362, column: 26, scope: !484, inlinedAt: !386)
!488 = !DILocation(line: 363, column: 6, scope: !489, inlinedAt: !386)
!489 = distinct !DILexicalBlock(scope: !382, file: !22, line: 363, column: 6)
!490 = !DILocation(line: 363, column: 11, scope: !489, inlinedAt: !386)
!491 = !DILocation(line: 363, column: 6, scope: !382, inlinedAt: !386)
!492 = !DILocation(line: 363, column: 26, scope: !489, inlinedAt: !386)
!493 = !DILocation(line: 364, column: 6, scope: !494, inlinedAt: !386)
!494 = distinct !DILexicalBlock(scope: !382, file: !22, line: 364, column: 6)
!495 = !DILocation(line: 364, column: 11, scope: !494, inlinedAt: !386)
!496 = !DILocation(line: 364, column: 6, scope: !382, inlinedAt: !386)
!497 = !DILocation(line: 364, column: 26, scope: !494, inlinedAt: !386)
!498 = !DILocation(line: 365, column: 6, scope: !499, inlinedAt: !386)
!499 = distinct !DILexicalBlock(scope: !382, file: !22, line: 365, column: 6)
!500 = !DILocation(line: 365, column: 11, scope: !499, inlinedAt: !386)
!501 = !DILocation(line: 365, column: 6, scope: !382, inlinedAt: !386)
!502 = !DILocation(line: 365, column: 26, scope: !499, inlinedAt: !386)
!503 = !DILocation(line: 366, column: 6, scope: !504, inlinedAt: !386)
!504 = distinct !DILexicalBlock(scope: !382, file: !22, line: 366, column: 6)
!505 = !DILocation(line: 366, column: 11, scope: !504, inlinedAt: !386)
!506 = !DILocation(line: 366, column: 6, scope: !382, inlinedAt: !386)
!507 = !DILocation(line: 366, column: 26, scope: !504, inlinedAt: !386)
!508 = !DILocation(line: 367, column: 6, scope: !509, inlinedAt: !386)
!509 = distinct !DILexicalBlock(scope: !382, file: !22, line: 367, column: 6)
!510 = !DILocation(line: 367, column: 11, scope: !509, inlinedAt: !386)
!511 = !DILocation(line: 367, column: 6, scope: !382, inlinedAt: !386)
!512 = !DILocation(line: 367, column: 26, scope: !509, inlinedAt: !386)
!513 = !DILocation(line: 368, column: 6, scope: !514, inlinedAt: !386)
!514 = distinct !DILexicalBlock(scope: !382, file: !22, line: 368, column: 6)
!515 = !DILocation(line: 368, column: 11, scope: !514, inlinedAt: !386)
!516 = !DILocation(line: 368, column: 6, scope: !382, inlinedAt: !386)
!517 = !DILocation(line: 368, column: 26, scope: !514, inlinedAt: !386)
!518 = !DILocation(line: 369, column: 6, scope: !519, inlinedAt: !386)
!519 = distinct !DILexicalBlock(scope: !382, file: !22, line: 369, column: 6)
!520 = !DILocation(line: 369, column: 11, scope: !519, inlinedAt: !386)
!521 = !DILocation(line: 369, column: 6, scope: !382, inlinedAt: !386)
!522 = !DILocation(line: 369, column: 26, scope: !519, inlinedAt: !386)
!523 = !DILocation(line: 370, column: 6, scope: !524, inlinedAt: !386)
!524 = distinct !DILexicalBlock(scope: !382, file: !22, line: 370, column: 6)
!525 = !DILocation(line: 370, column: 11, scope: !524, inlinedAt: !386)
!526 = !DILocation(line: 370, column: 6, scope: !382, inlinedAt: !386)
!527 = !DILocation(line: 370, column: 26, scope: !524, inlinedAt: !386)
!528 = !DILocation(line: 371, column: 6, scope: !529, inlinedAt: !386)
!529 = distinct !DILexicalBlock(scope: !382, file: !22, line: 371, column: 6)
!530 = !DILocation(line: 371, column: 11, scope: !529, inlinedAt: !386)
!531 = !DILocation(line: 371, column: 6, scope: !382, inlinedAt: !386)
!532 = !DILocation(line: 371, column: 26, scope: !529, inlinedAt: !386)
!533 = !DILocation(line: 372, column: 6, scope: !534, inlinedAt: !386)
!534 = distinct !DILexicalBlock(scope: !382, file: !22, line: 372, column: 6)
!535 = !DILocation(line: 372, column: 11, scope: !534, inlinedAt: !386)
!536 = !DILocation(line: 372, column: 6, scope: !382, inlinedAt: !386)
!537 = !DILocation(line: 372, column: 26, scope: !534, inlinedAt: !386)
!538 = !DILocation(line: 373, column: 6, scope: !539, inlinedAt: !386)
!539 = distinct !DILexicalBlock(scope: !382, file: !22, line: 373, column: 6)
!540 = !DILocation(line: 373, column: 11, scope: !539, inlinedAt: !386)
!541 = !DILocation(line: 373, column: 6, scope: !382, inlinedAt: !386)
!542 = !DILocation(line: 373, column: 26, scope: !539, inlinedAt: !386)
!543 = !DILocation(line: 374, column: 6, scope: !544, inlinedAt: !386)
!544 = distinct !DILexicalBlock(scope: !382, file: !22, line: 374, column: 6)
!545 = !DILocation(line: 374, column: 11, scope: !544, inlinedAt: !386)
!546 = !DILocation(line: 374, column: 6, scope: !382, inlinedAt: !386)
!547 = !DILocation(line: 374, column: 26, scope: !544, inlinedAt: !386)
!548 = !DILocation(line: 375, column: 6, scope: !549, inlinedAt: !386)
!549 = distinct !DILexicalBlock(scope: !382, file: !22, line: 375, column: 6)
!550 = !DILocation(line: 375, column: 11, scope: !549, inlinedAt: !386)
!551 = !DILocation(line: 375, column: 6, scope: !382, inlinedAt: !386)
!552 = !DILocation(line: 375, column: 27, scope: !549, inlinedAt: !386)
!553 = !DILocation(line: 376, column: 6, scope: !554, inlinedAt: !386)
!554 = distinct !DILexicalBlock(scope: !382, file: !22, line: 376, column: 6)
!555 = !DILocation(line: 376, column: 11, scope: !554, inlinedAt: !386)
!556 = !DILocation(line: 376, column: 6, scope: !382, inlinedAt: !386)
!557 = !DILocation(line: 376, column: 32, scope: !554, inlinedAt: !386)
!558 = !DILocation(line: 377, column: 6, scope: !559, inlinedAt: !386)
!559 = distinct !DILexicalBlock(scope: !382, file: !22, line: 377, column: 6)
!560 = !DILocation(line: 377, column: 11, scope: !559, inlinedAt: !386)
!561 = !DILocation(line: 377, column: 6, scope: !382, inlinedAt: !386)
!562 = !DILocation(line: 377, column: 32, scope: !559, inlinedAt: !386)
!563 = !DILocation(line: 378, column: 6, scope: !564, inlinedAt: !386)
!564 = distinct !DILexicalBlock(scope: !382, file: !22, line: 378, column: 6)
!565 = !DILocation(line: 378, column: 11, scope: !564, inlinedAt: !386)
!566 = !DILocation(line: 378, column: 6, scope: !382, inlinedAt: !386)
!567 = !DILocation(line: 378, column: 32, scope: !564, inlinedAt: !386)
!568 = !DILocation(line: 379, column: 6, scope: !569, inlinedAt: !386)
!569 = distinct !DILexicalBlock(scope: !382, file: !22, line: 379, column: 6)
!570 = !DILocation(line: 379, column: 11, scope: !569, inlinedAt: !386)
!571 = !DILocation(line: 379, column: 6, scope: !382, inlinedAt: !386)
!572 = !DILocation(line: 379, column: 33, scope: !569, inlinedAt: !386)
!573 = !DILocation(line: 380, column: 6, scope: !574, inlinedAt: !386)
!574 = distinct !DILexicalBlock(scope: !382, file: !22, line: 380, column: 6)
!575 = !DILocation(line: 380, column: 11, scope: !574, inlinedAt: !386)
!576 = !DILocation(line: 380, column: 6, scope: !382, inlinedAt: !386)
!577 = !DILocation(line: 380, column: 33, scope: !574, inlinedAt: !386)
!578 = !DILocation(line: 381, column: 6, scope: !579, inlinedAt: !386)
!579 = distinct !DILexicalBlock(scope: !382, file: !22, line: 381, column: 6)
!580 = !DILocation(line: 381, column: 11, scope: !579, inlinedAt: !386)
!581 = !DILocation(line: 381, column: 6, scope: !382, inlinedAt: !386)
!582 = !DILocation(line: 381, column: 33, scope: !579, inlinedAt: !386)
!583 = !DILocation(line: 382, column: 2, scope: !584, inlinedAt: !386)
!584 = distinct !DILexicalBlock(scope: !585, file: !22, line: 382, column: 2)
!585 = distinct !DILexicalBlock(scope: !382, file: !22, line: 382, column: 2)
!586 = !{i32 -2144022504, i32 -2144022475, i32 -2144022429, i32 -2144022371, i32 -2144022317, i32 -2144022263, i32 -2144022208, i32 -2144022177}
!587 = !DILocation(line: 382, column: 2, scope: !588, inlinedAt: !386)
!588 = distinct !DILexicalBlock(scope: !589, file: !22, line: 382, column: 2)
!589 = distinct !DILexicalBlock(scope: !585, file: !22, line: 382, column: 2)
!590 = !{i32 -2144021734, i32 -2144021727, i32 -2144021673, i32 -2144021642, i32 -2144021612}
!591 = !DILocation(line: 382, column: 2, scope: !589, inlinedAt: !386)
!592 = !DILocation(line: 386, column: 1, scope: !382, inlinedAt: !386)
!593 = !DILocation(line: 547, column: 9, scope: !365, inlinedAt: !368)
!594 = !DILocation(line: 549, column: 8, scope: !595, inlinedAt: !368)
!595 = distinct !DILexicalBlock(scope: !365, file: !22, line: 549, column: 7)
!596 = !DILocation(line: 549, column: 7, scope: !365, inlinedAt: !368)
!597 = !DILocation(line: 550, column: 4, scope: !595, inlinedAt: !368)
!598 = !DILocation(line: 553, column: 33, scope: !365, inlinedAt: !368)
!599 = !DILocation(line: 325, column: 6, scope: !600, inlinedAt: !380)
!600 = distinct !DILexicalBlock(scope: !376, file: !22, line: 325, column: 6)
!601 = !DILocation(line: 325, column: 6, scope: !376, inlinedAt: !380)
!602 = !DILocation(line: 326, column: 3, scope: !600, inlinedAt: !380)
!603 = !DILocation(line: 332, column: 9, scope: !376, inlinedAt: !380)
!604 = !DILocation(line: 332, column: 15, scope: !376, inlinedAt: !380)
!605 = !DILocation(line: 332, column: 2, scope: !376, inlinedAt: !380)
!606 = !DILocation(line: 336, column: 1, scope: !376, inlinedAt: !380)
!607 = !DILocation(line: 553, column: 5, scope: !365, inlinedAt: !368)
!608 = !DILocation(line: 553, column: 41, scope: !365, inlinedAt: !368)
!609 = !DILocation(line: 554, column: 5, scope: !365, inlinedAt: !368)
!610 = !DILocation(line: 554, column: 12, scope: !365, inlinedAt: !368)
!611 = !DILocation(line: 448, column: 31, scope: !357, inlinedAt: !364)
!612 = !DILocation(line: 448, column: 34, scope: !357, inlinedAt: !364)
!613 = !DILocation(line: 448, column: 14, scope: !357, inlinedAt: !364)
!614 = !DILocation(line: 450, column: 22, scope: !357, inlinedAt: !364)
!615 = !DILocation(line: 450, column: 25, scope: !357, inlinedAt: !364)
!616 = !DILocation(line: 450, column: 30, scope: !357, inlinedAt: !364)
!617 = !DILocation(line: 450, column: 36, scope: !357, inlinedAt: !364)
!618 = !DILocation(line: 450, column: 8, scope: !357, inlinedAt: !364)
!619 = !DILocation(line: 450, column: 6, scope: !357, inlinedAt: !364)
!620 = !DILocation(line: 451, column: 9, scope: !357, inlinedAt: !364)
!621 = !DILocation(line: 552, column: 3, scope: !365, inlinedAt: !368)
!622 = !DILocation(line: 557, column: 19, scope: !367, inlinedAt: !368)
!623 = !DILocation(line: 557, column: 25, scope: !367, inlinedAt: !368)
!624 = !DILocation(line: 557, column: 9, scope: !367, inlinedAt: !368)
!625 = !DILocation(line: 557, column: 2, scope: !367, inlinedAt: !368)
!626 = !DILocation(line: 558, column: 1, scope: !367, inlinedAt: !368)
!627 = !DILocation(line: 664, column: 2, scope: !349)
!628 = distinct !DISubprogram(name: "clockevents_calc_mult_shift", scope: !4, file: !4, line: 193, type: !629, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !66, !84, !84}
!631 = !DILocalVariable(name: "ce", arg: 1, scope: !628, file: !4, line: 193, type: !66)
!632 = !DILocation(line: 193, column: 56, scope: !628)
!633 = !DILocalVariable(name: "freq", arg: 2, scope: !628, file: !4, line: 193, type: !84)
!634 = !DILocation(line: 193, column: 64, scope: !628)
!635 = !DILocalVariable(name: "maxsec", arg: 3, scope: !628, file: !4, line: 193, type: !84)
!636 = !DILocation(line: 193, column: 74, scope: !628)
!637 = !DILocation(line: 195, column: 33, scope: !628)
!638 = !DILocation(line: 195, column: 37, scope: !628)
!639 = !DILocation(line: 195, column: 44, scope: !628)
!640 = !DILocation(line: 195, column: 48, scope: !628)
!641 = !DILocation(line: 195, column: 69, scope: !628)
!642 = !DILocation(line: 195, column: 75, scope: !628)
!643 = !DILocation(line: 195, column: 9, scope: !628)
!644 = !DILocation(line: 195, column: 2, scope: !628)
!645 = distinct !DISubprogram(name: "get_cpu_mask", scope: !40, file: !40, line: 884, type: !646, scopeLine: 885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!646 = !DISubroutineType(types: !647)
!647 = !{!37, !5}
!648 = !DILocalVariable(name: "cpu", arg: 1, scope: !645, file: !40, line: 884, type: !5)
!649 = !DILocation(line: 884, column: 63, scope: !645)
!650 = !DILocalVariable(name: "p", scope: !645, file: !40, line: 886, type: !651)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!653 = !DILocation(line: 886, column: 23, scope: !645)
!654 = !DILocation(line: 886, column: 46, scope: !645)
!655 = !DILocation(line: 886, column: 50, scope: !645)
!656 = !DILocation(line: 886, column: 44, scope: !645)
!657 = !DILocation(line: 886, column: 27, scope: !645)
!658 = !DILocation(line: 887, column: 7, scope: !645)
!659 = !DILocation(line: 887, column: 11, scope: !645)
!660 = !DILocation(line: 887, column: 4, scope: !645)
!661 = !DILocation(line: 888, column: 9, scope: !645)
!662 = !DILocation(line: 888, column: 2, scope: !645)
!663 = distinct !DISubprogram(name: "apbt_shutdown", scope: !1, file: !1, line: 121, type: !92, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!664 = !DILocalVariable(name: "evt", arg: 1, scope: !663, file: !1, line: 121, type: !66)
!665 = !DILocation(line: 121, column: 53, scope: !663)
!666 = !DILocalVariable(name: "dw_ced", scope: !663, file: !1, line: 123, type: !55)
!667 = !DILocation(line: 123, column: 36, scope: !663)
!668 = !DILocation(line: 123, column: 63, scope: !663)
!669 = !DILocation(line: 123, column: 45, scope: !663)
!670 = !DILocalVariable(name: "ctrl", scope: !663, file: !1, line: 124, type: !84)
!671 = !DILocation(line: 124, column: 6, scope: !663)
!672 = !DILocation(line: 126, column: 2, scope: !673)
!673 = distinct !DILexicalBlock(scope: !674, file: !1, line: 126, column: 2)
!674 = distinct !DILexicalBlock(scope: !663, file: !1, line: 126, column: 2)
!675 = !DILocation(line: 126, column: 2, scope: !674)
!676 = !DILocation(line: 129, column: 21, scope: !663)
!677 = !DILocation(line: 129, column: 29, scope: !663)
!678 = !DILocation(line: 129, column: 9, scope: !663)
!679 = !DILocation(line: 129, column: 7, scope: !663)
!680 = !DILocation(line: 130, column: 7, scope: !663)
!681 = !DILocation(line: 131, column: 15, scope: !663)
!682 = !DILocation(line: 131, column: 23, scope: !663)
!683 = !DILocation(line: 131, column: 30, scope: !663)
!684 = !DILocation(line: 131, column: 2, scope: !663)
!685 = !DILocation(line: 132, column: 2, scope: !663)
!686 = distinct !DISubprogram(name: "apbt_set_periodic", scope: !1, file: !1, line: 167, type: !92, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!687 = !DILocalVariable(name: "evt", arg: 1, scope: !686, file: !1, line: 167, type: !66)
!688 = !DILocation(line: 167, column: 57, scope: !686)
!689 = !DILocalVariable(name: "dw_ced", scope: !686, file: !1, line: 169, type: !55)
!690 = !DILocation(line: 169, column: 36, scope: !686)
!691 = !DILocation(line: 169, column: 63, scope: !686)
!692 = !DILocation(line: 169, column: 45, scope: !686)
!693 = !DILocalVariable(name: "period", scope: !686, file: !1, line: 170, type: !44)
!694 = !DILocation(line: 170, column: 16, scope: !686)
!695 = !DILocation(line: 170, column: 25, scope: !686)
!696 = !DILocalVariable(name: "ctrl", scope: !686, file: !1, line: 171, type: !84)
!697 = !DILocation(line: 171, column: 6, scope: !686)
!698 = !DILocation(line: 173, column: 2, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !1, line: 173, column: 2)
!700 = distinct !DILexicalBlock(scope: !686, file: !1, line: 173, column: 2)
!701 = !DILocation(line: 173, column: 2, scope: !700)
!702 = !DILocation(line: 176, column: 21, scope: !686)
!703 = !DILocation(line: 176, column: 29, scope: !686)
!704 = !DILocation(line: 176, column: 9, scope: !686)
!705 = !DILocation(line: 176, column: 7, scope: !686)
!706 = !DILocation(line: 177, column: 7, scope: !686)
!707 = !DILocation(line: 178, column: 15, scope: !686)
!708 = !DILocation(line: 178, column: 23, scope: !686)
!709 = !DILocation(line: 178, column: 30, scope: !686)
!710 = !DILocation(line: 178, column: 2, scope: !686)
!711 = !DILocation(line: 183, column: 7, scope: !686)
!712 = !DILocation(line: 184, column: 15, scope: !686)
!713 = !DILocation(line: 184, column: 23, scope: !686)
!714 = !DILocation(line: 184, column: 30, scope: !686)
!715 = !DILocation(line: 184, column: 2, scope: !686)
!716 = !DILocation(line: 185, column: 2, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !1, line: 185, column: 2)
!718 = distinct !DILexicalBlock(scope: !719, file: !1, line: 185, column: 2)
!719 = distinct !DILexicalBlock(scope: !720, file: !1, line: 185, column: 2)
!720 = distinct !DILexicalBlock(scope: !686, file: !1, line: 185, column: 2)
!721 = !DILocation(line: 186, column: 2, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !1, line: 186, column: 2)
!723 = distinct !DILexicalBlock(scope: !686, file: !1, line: 186, column: 2)
!724 = !DILocation(line: 186, column: 2, scope: !723)
!725 = !DILocation(line: 187, column: 15, scope: !686)
!726 = !DILocation(line: 187, column: 23, scope: !686)
!727 = !DILocation(line: 187, column: 30, scope: !686)
!728 = !DILocation(line: 187, column: 2, scope: !686)
!729 = !DILocation(line: 188, column: 7, scope: !686)
!730 = !DILocation(line: 189, column: 15, scope: !686)
!731 = !DILocation(line: 189, column: 23, scope: !686)
!732 = !DILocation(line: 189, column: 30, scope: !686)
!733 = !DILocation(line: 189, column: 2, scope: !686)
!734 = !DILocation(line: 190, column: 2, scope: !686)
!735 = distinct !DISubprogram(name: "apbt_set_oneshot", scope: !1, file: !1, line: 135, type: !92, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!736 = !DILocalVariable(name: "evt", arg: 1, scope: !735, file: !1, line: 135, type: !66)
!737 = !DILocation(line: 135, column: 56, scope: !735)
!738 = !DILocalVariable(name: "dw_ced", scope: !735, file: !1, line: 137, type: !55)
!739 = !DILocation(line: 137, column: 36, scope: !735)
!740 = !DILocation(line: 137, column: 63, scope: !735)
!741 = !DILocation(line: 137, column: 45, scope: !735)
!742 = !DILocalVariable(name: "ctrl", scope: !735, file: !1, line: 138, type: !84)
!743 = !DILocation(line: 138, column: 6, scope: !735)
!744 = !DILocation(line: 140, column: 2, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !1, line: 140, column: 2)
!746 = distinct !DILexicalBlock(scope: !735, file: !1, line: 140, column: 2)
!747 = !DILocation(line: 140, column: 2, scope: !746)
!748 = !DILocation(line: 143, column: 21, scope: !735)
!749 = !DILocation(line: 143, column: 29, scope: !735)
!750 = !DILocation(line: 143, column: 9, scope: !735)
!751 = !DILocation(line: 143, column: 7, scope: !735)
!752 = !DILocation(line: 149, column: 7, scope: !735)
!753 = !DILocation(line: 150, column: 7, scope: !735)
!754 = !DILocation(line: 152, column: 15, scope: !735)
!755 = !DILocation(line: 152, column: 23, scope: !735)
!756 = !DILocation(line: 152, column: 30, scope: !735)
!757 = !DILocation(line: 152, column: 2, scope: !735)
!758 = !DILocation(line: 154, column: 15, scope: !735)
!759 = !DILocation(line: 154, column: 23, scope: !735)
!760 = !DILocation(line: 154, column: 30, scope: !735)
!761 = !DILocation(line: 154, column: 2, scope: !735)
!762 = !DILocation(line: 160, column: 15, scope: !735)
!763 = !DILocation(line: 160, column: 23, scope: !735)
!764 = !DILocation(line: 160, column: 2, scope: !735)
!765 = !DILocation(line: 161, column: 7, scope: !735)
!766 = !DILocation(line: 162, column: 7, scope: !735)
!767 = !DILocation(line: 163, column: 15, scope: !735)
!768 = !DILocation(line: 163, column: 23, scope: !735)
!769 = !DILocation(line: 163, column: 30, scope: !735)
!770 = !DILocation(line: 163, column: 2, scope: !735)
!771 = !DILocation(line: 164, column: 2, scope: !735)
!772 = distinct !DISubprogram(name: "apbt_resume", scope: !1, file: !1, line: 193, type: !92, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!773 = !DILocalVariable(name: "evt", arg: 1, scope: !772, file: !1, line: 193, type: !66)
!774 = !DILocation(line: 193, column: 51, scope: !772)
!775 = !DILocalVariable(name: "dw_ced", scope: !772, file: !1, line: 195, type: !55)
!776 = !DILocation(line: 195, column: 36, scope: !772)
!777 = !DILocation(line: 195, column: 63, scope: !772)
!778 = !DILocation(line: 195, column: 45, scope: !772)
!779 = !DILocation(line: 197, column: 2, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !1, line: 197, column: 2)
!781 = distinct !DILexicalBlock(scope: !772, file: !1, line: 197, column: 2)
!782 = !DILocation(line: 197, column: 2, scope: !781)
!783 = !DILocation(line: 200, column: 19, scope: !772)
!784 = !DILocation(line: 200, column: 27, scope: !772)
!785 = !DILocation(line: 200, column: 2, scope: !772)
!786 = !DILocation(line: 201, column: 2, scope: !772)
!787 = distinct !DISubprogram(name: "apbt_next_event", scope: !1, file: !1, line: 204, type: !69, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!788 = !DILocalVariable(name: "delta", arg: 1, scope: !787, file: !1, line: 204, type: !44)
!789 = !DILocation(line: 204, column: 42, scope: !787)
!790 = !DILocalVariable(name: "evt", arg: 2, scope: !787, file: !1, line: 205, type: !66)
!791 = !DILocation(line: 205, column: 34, scope: !787)
!792 = !DILocalVariable(name: "ctrl", scope: !787, file: !1, line: 207, type: !84)
!793 = !DILocation(line: 207, column: 6, scope: !787)
!794 = !DILocalVariable(name: "dw_ced", scope: !787, file: !1, line: 208, type: !55)
!795 = !DILocation(line: 208, column: 36, scope: !787)
!796 = !DILocation(line: 208, column: 63, scope: !787)
!797 = !DILocation(line: 208, column: 45, scope: !787)
!798 = !DILocation(line: 211, column: 29, scope: !787)
!799 = !DILocation(line: 211, column: 37, scope: !787)
!800 = !DILocation(line: 211, column: 9, scope: !787)
!801 = !DILocation(line: 211, column: 7, scope: !787)
!802 = !DILocation(line: 212, column: 7, scope: !787)
!803 = !DILocation(line: 213, column: 23, scope: !787)
!804 = !DILocation(line: 213, column: 31, scope: !787)
!805 = !DILocation(line: 213, column: 38, scope: !787)
!806 = !DILocation(line: 213, column: 2, scope: !787)
!807 = !DILocation(line: 215, column: 23, scope: !787)
!808 = !DILocation(line: 215, column: 31, scope: !787)
!809 = !DILocation(line: 215, column: 38, scope: !787)
!810 = !DILocation(line: 215, column: 2, scope: !787)
!811 = !DILocation(line: 216, column: 7, scope: !787)
!812 = !DILocation(line: 217, column: 23, scope: !787)
!813 = !DILocation(line: 217, column: 31, scope: !787)
!814 = !DILocation(line: 217, column: 38, scope: !787)
!815 = !DILocation(line: 217, column: 2, scope: !787)
!816 = !DILocation(line: 219, column: 2, scope: !787)
!817 = distinct !DISubprogram(name: "apbt_eoi", scope: !1, file: !1, line: 90, type: !132, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!818 = !DILocalVariable(name: "timer", arg: 1, scope: !817, file: !1, line: 90, type: !134)
!819 = !DILocation(line: 90, column: 43, scope: !817)
!820 = !DILocation(line: 92, column: 21, scope: !817)
!821 = !DILocation(line: 92, column: 2, scope: !817)
!822 = !DILocation(line: 93, column: 1, scope: !817)
!823 = distinct !DISubprogram(name: "request_irq", scope: !824, file: !824, line: 157, type: !825, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!824 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!825 = !DISubroutineType(types: !826)
!826 = !{!47, !5, !827, !44, !107, !53}
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !824, line: 92, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!831, !47, !53}
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !29, line: 17, baseType: !28)
!832 = !DILocalVariable(name: "irq", arg: 1, scope: !823, file: !824, line: 157, type: !5)
!833 = !DILocation(line: 157, column: 26, scope: !823)
!834 = !DILocalVariable(name: "handler", arg: 2, scope: !823, file: !824, line: 157, type: !827)
!835 = !DILocation(line: 157, column: 45, scope: !823)
!836 = !DILocalVariable(name: "flags", arg: 3, scope: !823, file: !824, line: 157, type: !44)
!837 = !DILocation(line: 157, column: 68, scope: !823)
!838 = !DILocalVariable(name: "name", arg: 4, scope: !823, file: !824, line: 158, type: !107)
!839 = !DILocation(line: 158, column: 18, scope: !823)
!840 = !DILocalVariable(name: "dev", arg: 5, scope: !823, file: !824, line: 158, type: !53)
!841 = !DILocation(line: 158, column: 30, scope: !823)
!842 = !DILocation(line: 160, column: 30, scope: !823)
!843 = !DILocation(line: 160, column: 35, scope: !823)
!844 = !DILocation(line: 160, column: 50, scope: !823)
!845 = !DILocation(line: 160, column: 57, scope: !823)
!846 = !DILocation(line: 160, column: 63, scope: !823)
!847 = !DILocation(line: 160, column: 9, scope: !823)
!848 = !DILocation(line: 160, column: 2, scope: !823)
!849 = distinct !DISubprogram(name: "dw_apb_clockevent_irq", scope: !1, file: !1, line: 95, type: !829, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!850 = !DILocalVariable(name: "irq", arg: 1, scope: !849, file: !1, line: 95, type: !47)
!851 = !DILocation(line: 95, column: 46, scope: !849)
!852 = !DILocalVariable(name: "data", arg: 2, scope: !849, file: !1, line: 95, type: !53)
!853 = !DILocation(line: 95, column: 57, scope: !849)
!854 = !DILocalVariable(name: "evt", scope: !849, file: !1, line: 97, type: !66)
!855 = !DILocation(line: 97, column: 29, scope: !849)
!856 = !DILocation(line: 97, column: 35, scope: !849)
!857 = !DILocalVariable(name: "dw_ced", scope: !849, file: !1, line: 98, type: !55)
!858 = !DILocation(line: 98, column: 36, scope: !849)
!859 = !DILocation(line: 98, column: 63, scope: !849)
!860 = !DILocation(line: 98, column: 45, scope: !849)
!861 = !DILocation(line: 100, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !849, file: !1, line: 100, column: 6)
!863 = !DILocation(line: 100, column: 12, scope: !862)
!864 = !DILocation(line: 100, column: 6, scope: !849)
!865 = !DILocation(line: 101, column: 3, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !1, line: 100, column: 27)
!867 = !DILocation(line: 102, column: 3, scope: !866)
!868 = !DILocation(line: 105, column: 6, scope: !869)
!869 = distinct !DILexicalBlock(scope: !849, file: !1, line: 105, column: 6)
!870 = !DILocation(line: 105, column: 14, scope: !869)
!871 = !DILocation(line: 105, column: 6, scope: !849)
!872 = !DILocation(line: 106, column: 3, scope: !869)
!873 = !DILocation(line: 106, column: 11, scope: !869)
!874 = !DILocation(line: 106, column: 16, scope: !869)
!875 = !DILocation(line: 106, column: 24, scope: !869)
!876 = !DILocation(line: 108, column: 2, scope: !849)
!877 = !DILocation(line: 108, column: 7, scope: !849)
!878 = !DILocation(line: 108, column: 21, scope: !849)
!879 = !DILocation(line: 109, column: 2, scope: !849)
!880 = !DILocation(line: 110, column: 1, scope: !849)
!881 = distinct !DISubprogram(name: "dw_apb_clockevent_resume", scope: !1, file: !1, line: 292, type: !183, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !185)
!882 = !DILocalVariable(name: "dw_ced", arg: 1, scope: !881, file: !1, line: 292, type: !55)
!883 = !DILocation(line: 292, column: 65, scope: !881)
!884 = !DILocation(line: 294, column: 13, scope: !881)
!885 = !DILocation(line: 294, column: 21, scope: !881)
!886 = !DILocation(line: 294, column: 27, scope: !881)
!887 = !DILocation(line: 294, column: 2, scope: !881)
!888 = !DILocation(line: 295, column: 1, scope: !881)
!889 = distinct !DISubprogram(name: "dw_apb_clockevent_stop", scope: !1, file: !1, line: 302, type: !183, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !185)
!890 = !DILocalVariable(name: "dw_ced", arg: 1, scope: !889, file: !1, line: 302, type: !55)
!891 = !DILocation(line: 302, column: 63, scope: !889)
!892 = !DILocation(line: 304, column: 11, scope: !889)
!893 = !DILocation(line: 304, column: 19, scope: !889)
!894 = !DILocation(line: 304, column: 25, scope: !889)
!895 = !DILocation(line: 304, column: 31, scope: !889)
!896 = !DILocation(line: 304, column: 39, scope: !889)
!897 = !DILocation(line: 304, column: 30, scope: !889)
!898 = !DILocation(line: 304, column: 2, scope: !889)
!899 = !DILocation(line: 305, column: 1, scope: !889)
!900 = distinct !DISubprogram(name: "dw_apb_clockevent_register", scope: !1, file: !1, line: 312, type: !183, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !185)
!901 = !DILocalVariable(name: "dw_ced", arg: 1, scope: !900, file: !1, line: 312, type: !55)
!902 = !DILocation(line: 312, column: 67, scope: !900)
!903 = !DILocation(line: 314, column: 15, scope: !900)
!904 = !DILocation(line: 314, column: 23, scope: !900)
!905 = !DILocation(line: 314, column: 2, scope: !900)
!906 = !DILocation(line: 315, column: 31, scope: !900)
!907 = !DILocation(line: 315, column: 39, scope: !900)
!908 = !DILocation(line: 315, column: 2, scope: !900)
!909 = !DILocation(line: 316, column: 19, scope: !900)
!910 = !DILocation(line: 316, column: 27, scope: !900)
!911 = !DILocation(line: 316, column: 2, scope: !900)
!912 = !DILocation(line: 317, column: 1, scope: !900)
!913 = distinct !DISubprogram(name: "apbt_writel", scope: !1, file: !1, line: 54, type: !914, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !134, !84, !44}
!916 = !DILocalVariable(name: "timer", arg: 1, scope: !913, file: !1, line: 54, type: !134)
!917 = !DILocation(line: 54, column: 53, scope: !913)
!918 = !DILocalVariable(name: "val", arg: 2, scope: !913, file: !1, line: 54, type: !84)
!919 = !DILocation(line: 54, column: 64, scope: !913)
!920 = !DILocalVariable(name: "offs", arg: 3, scope: !913, file: !1, line: 55, type: !44)
!921 = !DILocation(line: 55, column: 18, scope: !913)
!922 = !DILocation(line: 57, column: 9, scope: !913)
!923 = !DILocation(line: 57, column: 14, scope: !913)
!924 = !DILocation(line: 57, column: 21, scope: !913)
!925 = !DILocation(line: 57, column: 28, scope: !913)
!926 = !DILocation(line: 57, column: 26, scope: !913)
!927 = !DILocation(line: 57, column: 2, scope: !913)
!928 = !DILocation(line: 58, column: 1, scope: !913)
!929 = distinct !DISubprogram(name: "apbt_enable_int", scope: !1, file: !1, line: 112, type: !132, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!930 = !DILocalVariable(name: "timer", arg: 1, scope: !929, file: !1, line: 112, type: !134)
!931 = !DILocation(line: 112, column: 50, scope: !929)
!932 = !DILocalVariable(name: "ctrl", scope: !929, file: !1, line: 114, type: !84)
!933 = !DILocation(line: 114, column: 6, scope: !929)
!934 = !DILocation(line: 114, column: 24, scope: !929)
!935 = !DILocation(line: 114, column: 13, scope: !929)
!936 = !DILocation(line: 116, column: 13, scope: !929)
!937 = !DILocation(line: 116, column: 2, scope: !929)
!938 = !DILocation(line: 117, column: 7, scope: !929)
!939 = !DILocation(line: 118, column: 14, scope: !929)
!940 = !DILocation(line: 118, column: 21, scope: !929)
!941 = !DILocation(line: 118, column: 2, scope: !929)
!942 = !DILocation(line: 119, column: 1, scope: !929)
!943 = distinct !DISubprogram(name: "dw_apb_clocksource_start", scope: !1, file: !1, line: 327, type: !944, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !185)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !137}
!946 = !DILocalVariable(name: "dw_cs", arg: 1, scope: !943, file: !1, line: 327, type: !137)
!947 = !DILocation(line: 327, column: 58, scope: !943)
!948 = !DILocalVariable(name: "ctrl", scope: !943, file: !1, line: 333, type: !84)
!949 = !DILocation(line: 333, column: 6, scope: !943)
!950 = !DILocation(line: 333, column: 25, scope: !943)
!951 = !DILocation(line: 333, column: 32, scope: !943)
!952 = !DILocation(line: 333, column: 13, scope: !943)
!953 = !DILocation(line: 335, column: 7, scope: !943)
!954 = !DILocation(line: 336, column: 15, scope: !943)
!955 = !DILocation(line: 336, column: 22, scope: !943)
!956 = !DILocation(line: 336, column: 29, scope: !943)
!957 = !DILocation(line: 336, column: 2, scope: !943)
!958 = !DILocation(line: 337, column: 15, scope: !943)
!959 = !DILocation(line: 337, column: 22, scope: !943)
!960 = !DILocation(line: 337, column: 2, scope: !943)
!961 = !DILocation(line: 339, column: 7, scope: !943)
!962 = !DILocation(line: 340, column: 7, scope: !943)
!963 = !DILocation(line: 341, column: 15, scope: !943)
!964 = !DILocation(line: 341, column: 22, scope: !943)
!965 = !DILocation(line: 341, column: 29, scope: !943)
!966 = !DILocation(line: 341, column: 2, scope: !943)
!967 = !DILocation(line: 343, column: 26, scope: !943)
!968 = !DILocation(line: 343, column: 2, scope: !943)
!969 = !DILocation(line: 344, column: 1, scope: !943)
!970 = distinct !DISubprogram(name: "apbt_readl", scope: !1, file: !1, line: 49, type: !971, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!971 = !DISubroutineType(types: !972)
!972 = !{!84, !134, !44}
!973 = !DILocalVariable(name: "timer", arg: 1, scope: !970, file: !1, line: 49, type: !134)
!974 = !DILocation(line: 49, column: 51, scope: !970)
!975 = !DILocalVariable(name: "offs", arg: 2, scope: !970, file: !1, line: 49, type: !44)
!976 = !DILocation(line: 49, column: 72, scope: !970)
!977 = !DILocation(line: 51, column: 15, scope: !970)
!978 = !DILocation(line: 51, column: 22, scope: !970)
!979 = !DILocation(line: 51, column: 29, scope: !970)
!980 = !DILocation(line: 51, column: 27, scope: !970)
!981 = !DILocation(line: 51, column: 9, scope: !970)
!982 = !DILocation(line: 51, column: 2, scope: !970)
!983 = distinct !DISubprogram(name: "dw_apb_clocksource_read", scope: !1, file: !1, line: 414, type: !984, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !185)
!984 = !DISubroutineType(types: !985)
!985 = !{!48, !137}
!986 = !DILocalVariable(name: "dw_cs", arg: 1, scope: !983, file: !1, line: 414, type: !137)
!987 = !DILocation(line: 414, column: 56, scope: !983)
!988 = !DILocation(line: 416, column: 27, scope: !983)
!989 = !DILocation(line: 416, column: 34, scope: !983)
!990 = !DILocation(line: 416, column: 15, scope: !983)
!991 = !DILocation(line: 416, column: 14, scope: !983)
!992 = !DILocation(line: 416, column: 9, scope: !983)
!993 = !DILocation(line: 416, column: 2, scope: !983)
!994 = distinct !DISubprogram(name: "dw_apb_clocksource_init", scope: !1, file: !1, line: 379, type: !995, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !185)
!995 = !DISubroutineType(types: !996)
!996 = !{!137, !5, !107, !53, !44}
!997 = !DILocalVariable(name: "rating", arg: 1, scope: !994, file: !1, line: 379, type: !5)
!998 = !DILocation(line: 379, column: 34, scope: !994)
!999 = !DILocalVariable(name: "name", arg: 2, scope: !994, file: !1, line: 379, type: !107)
!1000 = !DILocation(line: 379, column: 54, scope: !994)
!1001 = !DILocalVariable(name: "base", arg: 3, scope: !994, file: !1, line: 379, type: !53)
!1002 = !DILocation(line: 379, column: 74, scope: !994)
!1003 = !DILocalVariable(name: "freq", arg: 4, scope: !994, file: !1, line: 380, type: !44)
!1004 = !DILocation(line: 380, column: 18, scope: !994)
!1005 = !DILocalVariable(name: "dw_cs", scope: !994, file: !1, line: 382, type: !137)
!1006 = !DILocation(line: 382, column: 29, scope: !994)
!1007 = !DILocation(line: 382, column: 37, scope: !994)
!1008 = !DILocation(line: 384, column: 7, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !994, file: !1, line: 384, column: 6)
!1010 = !DILocation(line: 384, column: 6, scope: !994)
!1011 = !DILocation(line: 385, column: 3, scope: !1009)
!1012 = !DILocation(line: 387, column: 22, scope: !994)
!1013 = !DILocation(line: 387, column: 2, scope: !994)
!1014 = !DILocation(line: 387, column: 9, scope: !994)
!1015 = !DILocation(line: 387, column: 15, scope: !994)
!1016 = !DILocation(line: 387, column: 20, scope: !994)
!1017 = !DILocation(line: 388, column: 22, scope: !994)
!1018 = !DILocation(line: 388, column: 2, scope: !994)
!1019 = !DILocation(line: 388, column: 9, scope: !994)
!1020 = !DILocation(line: 388, column: 15, scope: !994)
!1021 = !DILocation(line: 388, column: 20, scope: !994)
!1022 = !DILocation(line: 389, column: 19, scope: !994)
!1023 = !DILocation(line: 389, column: 2, scope: !994)
!1024 = !DILocation(line: 389, column: 9, scope: !994)
!1025 = !DILocation(line: 389, column: 12, scope: !994)
!1026 = !DILocation(line: 389, column: 17, scope: !994)
!1027 = !DILocation(line: 390, column: 21, scope: !994)
!1028 = !DILocation(line: 390, column: 2, scope: !994)
!1029 = !DILocation(line: 390, column: 9, scope: !994)
!1030 = !DILocation(line: 390, column: 12, scope: !994)
!1031 = !DILocation(line: 390, column: 19, scope: !994)
!1032 = !DILocation(line: 391, column: 2, scope: !994)
!1033 = !DILocation(line: 391, column: 9, scope: !994)
!1034 = !DILocation(line: 391, column: 12, scope: !994)
!1035 = !DILocation(line: 391, column: 17, scope: !994)
!1036 = !DILocation(line: 392, column: 2, scope: !994)
!1037 = !DILocation(line: 392, column: 9, scope: !994)
!1038 = !DILocation(line: 392, column: 12, scope: !994)
!1039 = !DILocation(line: 392, column: 17, scope: !994)
!1040 = !DILocation(line: 393, column: 2, scope: !994)
!1041 = !DILocation(line: 393, column: 9, scope: !994)
!1042 = !DILocation(line: 393, column: 12, scope: !994)
!1043 = !DILocation(line: 393, column: 18, scope: !994)
!1044 = !DILocation(line: 394, column: 2, scope: !994)
!1045 = !DILocation(line: 394, column: 9, scope: !994)
!1046 = !DILocation(line: 394, column: 12, scope: !994)
!1047 = !DILocation(line: 394, column: 19, scope: !994)
!1048 = !DILocation(line: 396, column: 9, scope: !994)
!1049 = !DILocation(line: 396, column: 2, scope: !994)
!1050 = !DILocation(line: 397, column: 1, scope: !994)
!1051 = distinct !DISubprogram(name: "__apbt_read_clocksource", scope: !1, file: !1, line: 346, type: !147, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1052 = !DILocalVariable(name: "cs", arg: 1, scope: !1051, file: !1, line: 346, type: !149)
!1053 = !DILocation(line: 346, column: 56, scope: !1051)
!1054 = !DILocalVariable(name: "current_count", scope: !1051, file: !1, line: 348, type: !84)
!1055 = !DILocation(line: 348, column: 6, scope: !1051)
!1056 = !DILocalVariable(name: "dw_cs", scope: !1051, file: !1, line: 349, type: !137)
!1057 = !DILocation(line: 349, column: 29, scope: !1051)
!1058 = !DILocation(line: 350, column: 37, scope: !1051)
!1059 = !DILocation(line: 350, column: 3, scope: !1051)
!1060 = !DILocation(line: 352, column: 38, scope: !1051)
!1061 = !DILocation(line: 352, column: 45, scope: !1051)
!1062 = !DILocation(line: 352, column: 18, scope: !1051)
!1063 = !DILocation(line: 352, column: 16, scope: !1051)
!1064 = !DILocation(line: 355, column: 15, scope: !1051)
!1065 = !DILocation(line: 355, column: 14, scope: !1051)
!1066 = !DILocation(line: 355, column: 9, scope: !1051)
!1067 = !DILocation(line: 355, column: 2, scope: !1051)
!1068 = distinct !DISubprogram(name: "apbt_restart_clocksource", scope: !1, file: !1, line: 358, type: !167, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1069 = !DILocalVariable(name: "cs", arg: 1, scope: !1068, file: !1, line: 358, type: !149)
!1070 = !DILocation(line: 358, column: 58, scope: !1068)
!1071 = !DILocalVariable(name: "dw_cs", scope: !1068, file: !1, line: 360, type: !137)
!1072 = !DILocation(line: 360, column: 29, scope: !1068)
!1073 = !DILocation(line: 361, column: 37, scope: !1068)
!1074 = !DILocation(line: 361, column: 3, scope: !1068)
!1075 = !DILocation(line: 363, column: 27, scope: !1068)
!1076 = !DILocation(line: 363, column: 2, scope: !1068)
!1077 = !DILocation(line: 364, column: 1, scope: !1068)
!1078 = distinct !DISubprogram(name: "dw_apb_clocksource_register", scope: !1, file: !1, line: 404, type: !944, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1079 = !DILocalVariable(name: "dw_cs", arg: 1, scope: !1078, file: !1, line: 404, type: !137)
!1080 = !DILocation(line: 404, column: 61, scope: !1078)
!1081 = !DILocation(line: 406, column: 27, scope: !1078)
!1082 = !DILocation(line: 406, column: 34, scope: !1078)
!1083 = !DILocation(line: 406, column: 38, scope: !1078)
!1084 = !DILocation(line: 406, column: 45, scope: !1078)
!1085 = !DILocation(line: 406, column: 51, scope: !1078)
!1086 = !DILocation(line: 406, column: 2, scope: !1078)
!1087 = !DILocation(line: 407, column: 1, scope: !1078)
!1088 = distinct !DISubprogram(name: "clocksource_register_hz", scope: !143, file: !143, line: 235, type: !1089, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!47, !149, !84}
!1091 = !DILocalVariable(name: "cs", arg: 1, scope: !1088, file: !143, line: 235, type: !149)
!1092 = !DILocation(line: 235, column: 63, scope: !1088)
!1093 = !DILocalVariable(name: "hz", arg: 2, scope: !1088, file: !143, line: 235, type: !84)
!1094 = !DILocation(line: 235, column: 71, scope: !1088)
!1095 = !DILocation(line: 237, column: 38, scope: !1088)
!1096 = !DILocation(line: 237, column: 45, scope: !1088)
!1097 = !DILocation(line: 237, column: 9, scope: !1088)
!1098 = !DILocation(line: 237, column: 2, scope: !1088)
!1099 = distinct !DISubprogram(name: "get_order", scope: !1100, file: !1100, line: 29, type: !1101, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1100 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!47, !44}
!1103 = !DILocalVariable(name: "x", arg: 1, scope: !1104, file: !1105, line: 366, type: !50)
!1104 = distinct !DISubprogram(name: "fls64", scope: !1105, file: !1105, line: 366, type: !1106, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1105 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!47, !50}
!1108 = !DILocation(line: 366, column: 40, scope: !1104, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 46, column: 9, scope: !1099)
!1110 = !DILocalVariable(name: "bitpos", scope: !1104, file: !1105, line: 368, type: !47)
!1111 = !DILocation(line: 368, column: 6, scope: !1104, inlinedAt: !1109)
!1112 = !DILocalVariable(name: "size", arg: 1, scope: !1099, file: !1100, line: 29, type: !44)
!1113 = !DILocation(line: 29, column: 63, scope: !1099)
!1114 = !DILocation(line: 31, column: 27, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1099, file: !1100, line: 31, column: 6)
!1116 = !DILocation(line: 31, column: 6, scope: !1115)
!1117 = !DILocation(line: 31, column: 6, scope: !1099)
!1118 = !DILocation(line: 32, column: 8, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !1100, line: 32, column: 7)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !1100, line: 31, column: 34)
!1121 = !DILocation(line: 32, column: 7, scope: !1120)
!1122 = !DILocation(line: 33, column: 4, scope: !1119)
!1123 = !DILocation(line: 35, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !1100, line: 35, column: 7)
!1125 = !DILocation(line: 35, column: 12, scope: !1124)
!1126 = !DILocation(line: 35, column: 7, scope: !1120)
!1127 = !DILocation(line: 36, column: 4, scope: !1124)
!1128 = !DILocation(line: 38, column: 10, scope: !1120)
!1129 = !DILocation(line: 38, column: 28, scope: !1120)
!1130 = !DILocation(line: 38, column: 41, scope: !1120)
!1131 = !DILocation(line: 38, column: 3, scope: !1120)
!1132 = !DILocation(line: 41, column: 6, scope: !1099)
!1133 = !DILocation(line: 42, column: 7, scope: !1099)
!1134 = !DILocation(line: 46, column: 15, scope: !1099)
!1135 = !DILocation(line: 374, column: 2, scope: !1104, inlinedAt: !1109)
!1136 = !DILocation(line: 376, column: 14, scope: !1104, inlinedAt: !1109)
!1137 = !{i32 882173}
!1138 = !DILocation(line: 377, column: 9, scope: !1104, inlinedAt: !1109)
!1139 = !DILocation(line: 377, column: 16, scope: !1104, inlinedAt: !1109)
!1140 = !DILocation(line: 46, column: 2, scope: !1099)
!1141 = !DILocation(line: 48, column: 1, scope: !1099)
!1142 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1143, file: !1143, line: 30, type: !1144, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1143 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!47, !48}
!1146 = !DILocation(line: 366, column: 40, scope: !1104, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 32, column: 9, scope: !1142)
!1148 = !DILocation(line: 368, column: 6, scope: !1104, inlinedAt: !1147)
!1149 = !DILocalVariable(name: "n", arg: 1, scope: !1142, file: !1143, line: 30, type: !48)
!1150 = !DILocation(line: 30, column: 21, scope: !1142)
!1151 = !DILocation(line: 32, column: 15, scope: !1142)
!1152 = !DILocation(line: 374, column: 2, scope: !1104, inlinedAt: !1147)
!1153 = !DILocation(line: 376, column: 14, scope: !1104, inlinedAt: !1147)
!1154 = !DILocation(line: 377, column: 9, scope: !1104, inlinedAt: !1147)
!1155 = !DILocation(line: 377, column: 16, scope: !1104, inlinedAt: !1147)
!1156 = !DILocation(line: 32, column: 18, scope: !1142)
!1157 = !DILocation(line: 32, column: 2, scope: !1142)
!1158 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1159, file: !1159, line: 137, type: !1160, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1159 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!53, !360, !1162, !352, !35}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1164 = !DILocalVariable(name: "s", arg: 1, scope: !1158, file: !1159, line: 137, type: !360)
!1165 = !DILocation(line: 137, column: 54, scope: !1158)
!1166 = !DILocalVariable(name: "object", arg: 2, scope: !1158, file: !1159, line: 137, type: !1162)
!1167 = !DILocation(line: 137, column: 69, scope: !1158)
!1168 = !DILocalVariable(name: "size", arg: 3, scope: !1158, file: !1159, line: 138, type: !352)
!1169 = !DILocation(line: 138, column: 12, scope: !1158)
!1170 = !DILocalVariable(name: "flags", arg: 4, scope: !1158, file: !1159, line: 138, type: !35)
!1171 = !DILocation(line: 138, column: 24, scope: !1158)
!1172 = !DILocation(line: 140, column: 17, scope: !1158)
!1173 = !DILocation(line: 140, column: 2, scope: !1158)
!1174 = distinct !DISubprogram(name: "ced_to_dw_apb_ced", scope: !1, file: !1, line: 38, type: !1175, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!55, !66}
!1177 = !DILocalVariable(name: "evt", arg: 1, scope: !1174, file: !1, line: 38, type: !66)
!1178 = !DILocation(line: 38, column: 46, scope: !1174)
!1179 = !DILocalVariable(name: "__mptr", scope: !1180, file: !1, line: 40, type: !53)
!1180 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 40, column: 9)
!1181 = !DILocation(line: 40, column: 9, scope: !1180)
!1182 = !DILocation(line: 40, column: 9, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1180, file: !1, line: 40, column: 9)
!1184 = !DILocation(line: 40, column: 2, scope: !1174)
!1185 = distinct !DISubprogram(name: "apbt_readl_relaxed", scope: !1, file: !1, line: 60, type: !971, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1186 = !DILocalVariable(name: "timer", arg: 1, scope: !1185, file: !1, line: 60, type: !134)
!1187 = !DILocation(line: 60, column: 59, scope: !1185)
!1188 = !DILocalVariable(name: "offs", arg: 2, scope: !1185, file: !1, line: 60, type: !44)
!1189 = !DILocation(line: 60, column: 80, scope: !1185)
!1190 = !DILocation(line: 62, column: 9, scope: !1185)
!1191 = !DILocation(line: 62, column: 2, scope: !1185)
!1192 = distinct !DISubprogram(name: "apbt_writel_relaxed", scope: !1, file: !1, line: 65, type: !914, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1193 = !DILocalVariable(name: "timer", arg: 1, scope: !1192, file: !1, line: 65, type: !134)
!1194 = !DILocation(line: 65, column: 61, scope: !1192)
!1195 = !DILocalVariable(name: "val", arg: 2, scope: !1192, file: !1, line: 65, type: !84)
!1196 = !DILocation(line: 65, column: 72, scope: !1192)
!1197 = !DILocalVariable(name: "offs", arg: 3, scope: !1192, file: !1, line: 66, type: !44)
!1198 = !DILocation(line: 66, column: 18, scope: !1192)
!1199 = !DILocation(line: 68, column: 2, scope: !1192)
!1200 = !DILocation(line: 69, column: 1, scope: !1192)
!1201 = distinct !DISubprogram(name: "__readl", scope: !1202, file: !1202, line: 63, type: !1203, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1202 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!5, !1205}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1208 = !DILocalVariable(name: "addr", arg: 1, scope: !1201, file: !1202, line: 63, type: !1205)
!1209 = !DILocation(line: 63, column: 1, scope: !1201)
!1210 = !DILocalVariable(name: "ret", scope: !1201, file: !1202, line: 63, type: !5)
!1211 = !{i32 -2144356386}
!1212 = distinct !DISubprogram(name: "__writel", scope: !1202, file: !1202, line: 71, type: !1213, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !5, !1215}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1216 = !DILocalVariable(name: "val", arg: 1, scope: !1212, file: !1202, line: 71, type: !5)
!1217 = !DILocation(line: 71, column: 1, scope: !1212)
!1218 = !DILocalVariable(name: "addr", arg: 2, scope: !1212, file: !1202, line: 71, type: !1215)
!1219 = !{i32 -2144354083}
!1220 = distinct !DISubprogram(name: "writel", scope: !1202, file: !1202, line: 67, type: !1213, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1221 = !DILocalVariable(name: "val", arg: 1, scope: !1220, file: !1202, line: 67, type: !5)
!1222 = !DILocation(line: 67, column: 1, scope: !1220)
!1223 = !DILocalVariable(name: "addr", arg: 2, scope: !1220, file: !1202, line: 67, type: !1215)
!1224 = !{i32 -2144355219}
!1225 = distinct !DISubprogram(name: "readl", scope: !1202, file: !1202, line: 59, type: !1203, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1226 = !DILocalVariable(name: "addr", arg: 1, scope: !1225, file: !1202, line: 59, type: !1205)
!1227 = !DILocation(line: 59, column: 1, scope: !1225)
!1228 = !DILocalVariable(name: "ret", scope: !1225, file: !1202, line: 59, type: !5)
!1229 = !{i32 -2144357612}
!1230 = distinct !DISubprogram(name: "clocksource_to_dw_apb_clocksource", scope: !1, file: !1, line: 44, type: !1231, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !185)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!137, !149}
!1233 = !DILocalVariable(name: "cs", arg: 1, scope: !1230, file: !1, line: 44, type: !149)
!1234 = !DILocation(line: 44, column: 55, scope: !1230)
!1235 = !DILocalVariable(name: "__mptr", scope: !1236, file: !1, line: 46, type: !53)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !1, line: 46, column: 9)
!1237 = !DILocation(line: 46, column: 9, scope: !1236)
!1238 = !DILocation(line: 46, column: 9, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 46, column: 9)
!1240 = !DILocation(line: 46, column: 2, scope: !1230)
