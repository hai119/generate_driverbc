; ModuleID = '../bcout/drivers/dma-buf/dma-fence-array.llvm.bc'
source_filename = "drivers/dma-buf/dma-fence-array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.dma_fence = type { %struct.spinlock*, %struct.dma_fence_ops*, %union.anon.0, i64, i64, i64, %struct.kref, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.dma_fence_ops = type { i8, {}*, {}*, i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i64 (%struct.dma_fence*, i1, i64)*, void (%struct.dma_fence*)*, void (%struct.dma_fence*, i8*, i32)*, void (%struct.dma_fence*, i8*, i32)* }
%union.anon.0 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kmem_cache = type opaque
%struct.dma_fence_array = type { %struct.dma_fence, %struct.spinlock, i32, %struct.atomic_t, %struct.dma_fence**, %struct.irq_work }
%struct.irq_work = type { %union.anon.1, void (%struct.irq_work*)* }
%union.anon.1 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.2 = type { i32 }
%struct.dma_fence_array_cb = type { %struct.dma_fence_cb, %struct.dma_fence_array* }
%struct.dma_fence_cb = type { %struct.list_head, void (%struct.dma_fence*, %struct.dma_fence_cb*)* }
%struct.anon = type { %struct.llist_node, %struct.atomic_t }

@dma_fence_array_ops = dso_local constant { i8, i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i64 (%struct.dma_fence*, i1, i64)*, void (%struct.dma_fence*)*, void (%struct.dma_fence*, i8*, i32)*, void (%struct.dma_fence*, i8*, i32)* } { i8 0, i8* (%struct.dma_fence*)* @dma_fence_array_get_driver_name, i8* (%struct.dma_fence*)* @dma_fence_array_get_timeline_name, i1 (%struct.dma_fence*)* @dma_fence_array_enable_signaling, i1 (%struct.dma_fence*)* @dma_fence_array_signaled, i64 (%struct.dma_fence*, i1, i64)* null, void (%struct.dma_fence*)* @dma_fence_array_release, void (%struct.dma_fence*, i8*, i32)* null, void (%struct.dma_fence*, i8*, i32)* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [16 x i8] c"dma_fence_array\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unbound\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dma_fence_array_get_driver_name(%struct.dma_fence* %fence) #0 !dbg !210 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !211, metadata !DIExpression()), !dbg !212
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), !dbg !213
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dma_fence_array_get_timeline_name(%struct.dma_fence* %fence) #0 !dbg !214 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !215, metadata !DIExpression()), !dbg !216
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), !dbg !217
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dma_fence_array_enable_signaling(%struct.dma_fence* %fence) #0 !dbg !218 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !219, metadata !DIExpression()), !dbg !225
  %c.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i.i, metadata !236, metadata !DIExpression()), !dbg !238
  %tmp.i.i = alloca i8, align 1
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !239, metadata !DIExpression()), !dbg !251
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !253, metadata !DIExpression()), !dbg !254
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !255, metadata !DIExpression()), !dbg !256
  %retval = alloca i1, align 1
  %fence.addr = alloca %struct.dma_fence*, align 8
  %array = alloca %struct.dma_fence_array*, align 8
  %cb = alloca %struct.dma_fence_array_cb*, align 8
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata %struct.dma_fence_array** %array, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !261
  %call = call %struct.dma_fence_array* @to_dma_fence_array(%struct.dma_fence* %0) #7, !dbg !262
  store %struct.dma_fence_array* %call, %struct.dma_fence_array** %array, align 8, !dbg !260
  call void @llvm.dbg.declare(metadata %struct.dma_fence_array_cb** %cb, metadata !263, metadata !DIExpression()), !dbg !264
  %1 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !265
  %arrayidx = getelementptr %struct.dma_fence_array, %struct.dma_fence_array* %1, i64 1, !dbg !265
  %2 = bitcast %struct.dma_fence_array* %arrayidx to i8*, !dbg !266
  %3 = bitcast i8* %2 to %struct.dma_fence_array_cb*, !dbg !266
  store %struct.dma_fence_array_cb* %3, %struct.dma_fence_array_cb** %cb, align 8, !dbg !264
  call void @llvm.dbg.declare(metadata i32* %i, metadata !267, metadata !DIExpression()), !dbg !268
  store i32 0, i32* %i, align 4, !dbg !269
  br label %for.cond, !dbg !270

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !271
  %5 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !272
  %num_fences = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %5, i32 0, i32 2, !dbg !273
  %6 = load i32, i32* %num_fences, align 8, !dbg !273
  %cmp = icmp ult i32 %4, %6, !dbg !274
  br i1 %cmp, label %for.body, label %for.end, !dbg !275

for.body:                                         ; preds = %for.cond
  %7 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !276
  %8 = load %struct.dma_fence_array_cb*, %struct.dma_fence_array_cb** %cb, align 8, !dbg !277
  %9 = load i32, i32* %i, align 4, !dbg !278
  %idxprom = zext i32 %9 to i64, !dbg !277
  %arrayidx1 = getelementptr %struct.dma_fence_array_cb, %struct.dma_fence_array_cb* %8, i64 %idxprom, !dbg !277
  %array2 = getelementptr inbounds %struct.dma_fence_array_cb, %struct.dma_fence_array_cb* %arrayidx1, i32 0, i32 1, !dbg !279
  store %struct.dma_fence_array* %7, %struct.dma_fence_array** %array2, align 8, !dbg !280
  %10 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !281
  %base = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %10, i32 0, i32 0, !dbg !282
  %call3 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %base) #7, !dbg !283
  %11 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !284
  %fences = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %11, i32 0, i32 4, !dbg !285
  %12 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !285
  %13 = load i32, i32* %i, align 4, !dbg !286
  %idxprom4 = zext i32 %13 to i64, !dbg !284
  %arrayidx5 = getelementptr %struct.dma_fence*, %struct.dma_fence** %12, i64 %idxprom4, !dbg !284
  %14 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx5, align 8, !dbg !284
  %15 = load %struct.dma_fence_array_cb*, %struct.dma_fence_array_cb** %cb, align 8, !dbg !287
  %16 = load i32, i32* %i, align 4, !dbg !288
  %idxprom6 = zext i32 %16 to i64, !dbg !287
  %arrayidx7 = getelementptr %struct.dma_fence_array_cb, %struct.dma_fence_array_cb* %15, i64 %idxprom6, !dbg !287
  %cb8 = getelementptr inbounds %struct.dma_fence_array_cb, %struct.dma_fence_array_cb* %arrayidx7, i32 0, i32 0, !dbg !289
  %call9 = call i32 @dma_fence_add_callback(%struct.dma_fence* %14, %struct.dma_fence_cb* %cb8, void (%struct.dma_fence*, %struct.dma_fence_cb*)* @dma_fence_array_cb_func) #7, !dbg !290
  %tobool = icmp ne i32 %call9, 0, !dbg !290
  br i1 %tobool, label %if.then, label %if.end17, !dbg !291

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i32* %error, metadata !292, metadata !DIExpression()), !dbg !293
  %17 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !294
  %fences10 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %17, i32 0, i32 4, !dbg !295
  %18 = load %struct.dma_fence**, %struct.dma_fence*** %fences10, align 8, !dbg !295
  %19 = load i32, i32* %i, align 4, !dbg !296
  %idxprom11 = zext i32 %19 to i64, !dbg !294
  %arrayidx12 = getelementptr %struct.dma_fence*, %struct.dma_fence** %18, i64 %idxprom11, !dbg !294
  %20 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx12, align 8, !dbg !294
  %error13 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %20, i32 0, i32 7, !dbg !297
  %21 = load i32, i32* %error13, align 4, !dbg !297
  store i32 %21, i32* %error, align 4, !dbg !293
  %22 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !298
  %23 = load i32, i32* %error, align 4, !dbg !299
  call void @dma_fence_array_set_pending_error(%struct.dma_fence_array* %22, i32 %23) #7, !dbg !300
  %24 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !301
  %base14 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %24, i32 0, i32 0, !dbg !302
  call void @dma_fence_put(%struct.dma_fence* %base14) #7, !dbg !303
  %25 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !304
  %num_pending = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %25, i32 0, i32 3, !dbg !305
  store %struct.atomic_t* %num_pending, %struct.atomic_t** %v.addr.i, align 8
  %26 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !306
  %27 = bitcast %struct.atomic_t* %26 to i8*, !dbg !306
  store i8* %27, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %28 = load i8*, i8** %v.addr.i.i, align 8, !dbg !307
  %29 = load i64, i64* %size.addr.i.i, align 8, !dbg !308
  %conv.i.i = trunc i64 %29 to i32, !dbg !308
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %28, i32 %conv.i.i) #8, !dbg !309
  %30 = load i8*, i8** %v.addr.i.i, align 8, !dbg !310
  %31 = load i64, i64* %size.addr.i.i, align 8, !dbg !310
  call void @kcsan_check_access(i8* %30, i64 %31, i32 7) #8, !dbg !310
  %32 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !311
  store %struct.atomic_t* %32, %struct.atomic_t** %v.addr.i1.i, align 8
  %33 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !238
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %33, i32 0, i32 0, !dbg !238
  %34 = call i8 asm sideeffect "decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #9, !dbg !238, !srcloc !312
  store i8 %34, i8* %c.i.i, align 1, !dbg !238
  %35 = load i8, i8* %c.i.i, align 1, !dbg !238
  %tobool.i.i = trunc i8 %35 to i1, !dbg !238
  %frombool.i.i = zext i1 %tobool.i.i to i8, !dbg !238
  store i8 %frombool.i.i, i8* %tmp.i.i, align 1, !dbg !238
  %36 = load i8, i8* %tmp.i.i, align 1, !dbg !238
  %tobool1.i.i = trunc i8 %36 to i1, !dbg !238
  br i1 %tobool1.i.i, label %if.then16, label %if.end, !dbg !313

if.then16:                                        ; preds = %if.then
  %37 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !314
  call void @dma_fence_array_clear_pending_error(%struct.dma_fence_array* %37) #7, !dbg !316
  store i1 false, i1* %retval, align 1, !dbg !317
  br label %return, !dbg !317

if.end:                                           ; preds = %if.then
  br label %if.end17, !dbg !318

if.end17:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !319

for.inc:                                          ; preds = %if.end17
  %38 = load i32, i32* %i, align 4, !dbg !320
  %inc = add i32 %38, 1, !dbg !320
  store i32 %inc, i32* %i, align 4, !dbg !320
  br label %for.cond, !dbg !321, !llvm.loop !322

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1, !dbg !324
  br label %return, !dbg !324

return:                                           ; preds = %for.end, %if.then16
  %39 = load i1, i1* %retval, align 1, !dbg !325
  ret i1 %39, !dbg !325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dma_fence_array_signaled(%struct.dma_fence* %fence) #0 !dbg !326 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !327, metadata !DIExpression()), !dbg !333
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !337, metadata !DIExpression()), !dbg !339
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !341, metadata !DIExpression()), !dbg !342
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !343, metadata !DIExpression()), !dbg !344
  %fence.addr = alloca %struct.dma_fence*, align 8
  %array = alloca %struct.dma_fence_array*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata %struct.dma_fence_array** %array, metadata !347, metadata !DIExpression()), !dbg !348
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !349
  %call = call %struct.dma_fence_array* @to_dma_fence_array(%struct.dma_fence* %0) #7, !dbg !350
  store %struct.dma_fence_array* %call, %struct.dma_fence_array** %array, align 8, !dbg !348
  %1 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !351
  %num_pending = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %1, i32 0, i32 3, !dbg !352
  store %struct.atomic_t* %num_pending, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !353
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !353
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !354
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !355
  %conv.i.i = trunc i64 %5 to i32, !dbg !355
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %4, i32 %conv.i.i) #8, !dbg !356
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !357
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !357
  call void @kcsan_check_access(i8* %6, i64 %7, i32 4) #8, !dbg !357
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !358
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !359
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %9, i32 0, i32 0, !dbg !359
  %10 = load volatile i32, i32* %counter.i.i, align 4, !dbg !359
  %cmp = icmp sle i32 %10, 0, !dbg !360
  ret i1 %cmp, !dbg !361
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_array_release(%struct.dma_fence* %fence) #0 !dbg !362 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  %array = alloca %struct.dma_fence_array*, align 8
  %i = alloca i32, align 4
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata %struct.dma_fence_array** %array, metadata !365, metadata !DIExpression()), !dbg !366
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !367
  %call = call %struct.dma_fence_array* @to_dma_fence_array(%struct.dma_fence* %0) #7, !dbg !368
  store %struct.dma_fence_array* %call, %struct.dma_fence_array** %array, align 8, !dbg !366
  call void @llvm.dbg.declare(metadata i32* %i, metadata !369, metadata !DIExpression()), !dbg !370
  store i32 0, i32* %i, align 4, !dbg !371
  br label %for.cond, !dbg !373

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !374
  %2 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !376
  %num_fences = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %2, i32 0, i32 2, !dbg !377
  %3 = load i32, i32* %num_fences, align 8, !dbg !377
  %cmp = icmp ult i32 %1, %3, !dbg !378
  br i1 %cmp, label %for.body, label %for.end, !dbg !379

for.body:                                         ; preds = %for.cond
  %4 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !380
  %fences = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %4, i32 0, i32 4, !dbg !381
  %5 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !381
  %6 = load i32, i32* %i, align 4, !dbg !382
  %idxprom = zext i32 %6 to i64, !dbg !380
  %arrayidx = getelementptr %struct.dma_fence*, %struct.dma_fence** %5, i64 %idxprom, !dbg !380
  %7 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !380
  call void @dma_fence_put(%struct.dma_fence* %7) #7, !dbg !383
  br label %for.inc, !dbg !383

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !384
  %inc = add i32 %8, 1, !dbg !384
  store i32 %inc, i32* %i, align 4, !dbg !384
  br label %for.cond, !dbg !385, !llvm.loop !386

for.end:                                          ; preds = %for.cond
  %9 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !388
  %fences1 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %9, i32 0, i32 4, !dbg !389
  %10 = load %struct.dma_fence**, %struct.dma_fence*** %fences1, align 8, !dbg !389
  %11 = bitcast %struct.dma_fence** %10 to i8*, !dbg !388
  call void @kfree(i8* %11) #7, !dbg !390
  %12 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !391
  call void @dma_fence_free(%struct.dma_fence* %12) #7, !dbg !392
  ret void, !dbg !393
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dma_fence_array* @dma_fence_array_create(i32 %num_fences, %struct.dma_fence** %fences, i64 %context, i32 %seqno, i1 zeroext %signal_on_any) #0 !dbg !394 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !397, metadata !DIExpression()), !dbg !401
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !405, metadata !DIExpression()), !dbg !406
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !407, metadata !DIExpression()), !dbg !409
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !411, metadata !DIExpression()), !dbg !412
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !413, metadata !DIExpression()), !dbg !414
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !415, metadata !DIExpression()), !dbg !416
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !417, metadata !DIExpression()), !dbg !424
  %retval = alloca %struct.dma_fence_array*, align 8
  %num_fences.addr = alloca i32, align 4
  %fences.addr = alloca %struct.dma_fence**, align 8
  %context.addr = alloca i64, align 8
  %seqno.addr = alloca i32, align 4
  %signal_on_any.addr = alloca i8, align 1
  %array = alloca %struct.dma_fence_array*, align 8
  %size = alloca i64, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  store i32 %num_fences, i32* %num_fences.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_fences.addr, metadata !427, metadata !DIExpression()), !dbg !428
  store %struct.dma_fence** %fences, %struct.dma_fence*** %fences.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %fences.addr, metadata !429, metadata !DIExpression()), !dbg !430
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !431, metadata !DIExpression()), !dbg !432
  store i32 %seqno, i32* %seqno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %seqno.addr, metadata !433, metadata !DIExpression()), !dbg !434
  %frombool = zext i1 %signal_on_any to i8
  store i8 %frombool, i8* %signal_on_any.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %signal_on_any.addr, metadata !435, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.declare(metadata %struct.dma_fence_array** %array, metadata !437, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata i64* %size, metadata !439, metadata !DIExpression()), !dbg !440
  store i64 104, i64* %size, align 8, !dbg !440
  %0 = load i32, i32* %num_fences.addr, align 4, !dbg !441
  %conv = sext i32 %0 to i64, !dbg !441
  %mul = mul i64 %conv, 32, !dbg !442
  %1 = load i64, i64* %size, align 8, !dbg !443
  %add = add i64 %1, %mul, !dbg !443
  store i64 %add, i64* %size, align 8, !dbg !443
  %2 = load i64, i64* %size, align 8, !dbg !444
  %call = call i8* @kzalloc(i64 %2, i32 3264) #7, !dbg !445
  %3 = bitcast i8* %call to %struct.dma_fence_array*, !dbg !445
  store %struct.dma_fence_array* %3, %struct.dma_fence_array** %array, align 8, !dbg !446
  %4 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !447
  %tobool = icmp ne %struct.dma_fence_array* %4, null, !dbg !447
  br i1 %tobool, label %if.end, label %if.then, !dbg !449

if.then:                                          ; preds = %entry
  store %struct.dma_fence_array* null, %struct.dma_fence_array** %retval, align 8, !dbg !450
  br label %return, !dbg !450

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !451

do.body:                                          ; preds = %if.end
  %5 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !452
  %lock = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %5, i32 0, i32 1, !dbg !452
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !453
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !454
  %rlock.i = bitcast %union.anon* %7 to %struct.raw_spinlock*, !dbg !454
  %8 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !452
  %lock2 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %8, i32 0, i32 1, !dbg !452
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !452
  %rlock = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !452
  %10 = bitcast %struct.spinlock* %lock2 to i8*, !dbg !452
  %11 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !452
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 1 %11, i64 0, i1 false), !dbg !452
  br label %do.end, !dbg !452

do.end:                                           ; preds = %do.body
  %12 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !455
  %base = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %12, i32 0, i32 0, !dbg !456
  %13 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !457
  %lock3 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %13, i32 0, i32 1, !dbg !458
  %14 = load i64, i64* %context.addr, align 8, !dbg !459
  %15 = load i32, i32* %seqno.addr, align 4, !dbg !460
  %conv4 = zext i32 %15 to i64, !dbg !460
  call void @dma_fence_init(%struct.dma_fence* %base, %struct.dma_fence_ops* bitcast ({ i8, i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i64 (%struct.dma_fence*, i1, i64)*, void (%struct.dma_fence*)*, void (%struct.dma_fence*, i8*, i32)*, void (%struct.dma_fence*, i8*, i32)* }* @dma_fence_array_ops to %struct.dma_fence_ops*), %struct.spinlock* %lock3, i64 %14, i64 %conv4) #7, !dbg !461
  %16 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !462
  %work = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %16, i32 0, i32 5, !dbg !463
  call void @init_irq_work(%struct.irq_work* %work, void (%struct.irq_work*)* @irq_dma_fence_array_work) #7, !dbg !464
  %17 = load i32, i32* %num_fences.addr, align 4, !dbg !465
  %18 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !466
  %num_fences5 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %18, i32 0, i32 2, !dbg !467
  store i32 %17, i32* %num_fences5, align 8, !dbg !468
  %19 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !469
  %num_pending = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %19, i32 0, i32 3, !dbg !470
  %20 = load i8, i8* %signal_on_any.addr, align 1, !dbg !471
  %tobool6 = trunc i8 %20 to i1, !dbg !471
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !471

cond.true:                                        ; preds = %do.end
  br label %cond.end, !dbg !471

cond.false:                                       ; preds = %do.end
  %21 = load i32, i32* %num_fences.addr, align 4, !dbg !472
  br label %cond.end, !dbg !471

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %21, %cond.false ], !dbg !471
  store %struct.atomic_t* %num_pending, %struct.atomic_t** %v.addr.i, align 8
  store i32 %cond, i32* %i.addr.i, align 4
  %22 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !473
  %23 = bitcast %struct.atomic_t* %22 to i8*, !dbg !473
  store i8* %23, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %24 = load i8*, i8** %v.addr.i.i, align 8, !dbg !474
  %25 = load i64, i64* %size.addr.i.i, align 8, !dbg !475
  %conv.i.i = trunc i64 %25 to i32, !dbg !475
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %24, i32 %conv.i.i) #8, !dbg !476
  %26 = load i8*, i8** %v.addr.i.i, align 8, !dbg !477
  %27 = load i64, i64* %size.addr.i.i, align 8, !dbg !477
  call void @kcsan_check_access(i8* %26, i64 %27, i32 5) #8, !dbg !477
  %28 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !478
  %29 = load i32, i32* %i.addr.i, align 4, !dbg !479
  store %struct.atomic_t* %28, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %29, i32* %i.addr.i.i, align 4
  %30 = load i32, i32* %i.addr.i.i, align 4, !dbg !480
  %31 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !480
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %31, i32 0, i32 0, !dbg !480
  store volatile i32 %30, i32* %counter.i.i, align 4, !dbg !480
  %32 = load %struct.dma_fence**, %struct.dma_fence*** %fences.addr, align 8, !dbg !482
  %33 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !483
  %fences8 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %33, i32 0, i32 4, !dbg !484
  store %struct.dma_fence** %32, %struct.dma_fence*** %fences8, align 8, !dbg !485
  %34 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !486
  %base9 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %34, i32 0, i32 0, !dbg !487
  %error = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %base9, i32 0, i32 7, !dbg !488
  store i32 1, i32* %error, align 4, !dbg !489
  %35 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !490
  store %struct.dma_fence_array* %35, %struct.dma_fence_array** %retval, align 8, !dbg !491
  br label %return, !dbg !491

return:                                           ; preds = %cond.end, %if.then
  %36 = load %struct.dma_fence_array*, %struct.dma_fence_array** %retval, align 8, !dbg !492
  ret %struct.dma_fence_array* %36, !dbg !492
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !493 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !496, metadata !DIExpression()), !dbg !503
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !509, metadata !DIExpression()), !dbg !510
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !511, metadata !DIExpression()), !dbg !512
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !513, metadata !DIExpression()), !dbg !514
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !515, metadata !DIExpression()), !dbg !519
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !521, metadata !DIExpression()), !dbg !525
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !527, metadata !DIExpression()), !dbg !531
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !536, metadata !DIExpression()), !dbg !537
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !538, metadata !DIExpression()), !dbg !539
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !540, metadata !DIExpression()), !dbg !541
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !542, metadata !DIExpression()), !dbg !543
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !544, metadata !DIExpression()), !dbg !545
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !546, metadata !DIExpression()), !dbg !547
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !548, metadata !DIExpression()), !dbg !549
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !550, metadata !DIExpression()), !dbg !551
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !552, metadata !DIExpression()), !dbg !553
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = load i64, i64* %size.addr, align 8, !dbg !556
  %1 = load i32, i32* %flags.addr, align 4, !dbg !557
  %or = or i32 %1, 256, !dbg !558
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !559
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !560
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !561

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !562
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !563
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !564

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !565
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !566
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !567
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !568
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !545
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !569
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !570
  %10 = load i32, i32* %order.i.i, align 4, !dbg !571
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !572
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !573
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !574
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #8, !dbg !575
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !575
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !575
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !575
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !575
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !576
  br label %kmalloc.exit, !dbg !576

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !577
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !578
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !578
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !580

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !581
  br label %kmalloc_index.exit.i, !dbg !581

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !582
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !584
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !585

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !586
  br label %kmalloc_index.exit.i, !dbg !586

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !587
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !589
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !590

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !591
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !592
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !593

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !594
  br label %kmalloc_index.exit.i, !dbg !594

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !595
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !597
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !598

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !599
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !600
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !601

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !602
  br label %kmalloc_index.exit.i, !dbg !602

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !603
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !605
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !606

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !607
  br label %kmalloc_index.exit.i, !dbg !607

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !608
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !610
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !611

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !612
  br label %kmalloc_index.exit.i, !dbg !612

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !613
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !615
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !616

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !617
  br label %kmalloc_index.exit.i, !dbg !617

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !618
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !620
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !621

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !622
  br label %kmalloc_index.exit.i, !dbg !622

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !623
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !625
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !626

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !627
  br label %kmalloc_index.exit.i, !dbg !627

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !628
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !630
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !631

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !632
  br label %kmalloc_index.exit.i, !dbg !632

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !633
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !635
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !636

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !637
  br label %kmalloc_index.exit.i, !dbg !637

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !638
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !640
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !641

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !642
  br label %kmalloc_index.exit.i, !dbg !642

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !643
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !645
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !646

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !647
  br label %kmalloc_index.exit.i, !dbg !647

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !648
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !650
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !651

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !652
  br label %kmalloc_index.exit.i, !dbg !652

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !653
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !655
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !656

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !657
  br label %kmalloc_index.exit.i, !dbg !657

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !658
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !660
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !661

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !662
  br label %kmalloc_index.exit.i, !dbg !662

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !663
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !665
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !666

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !667
  br label %kmalloc_index.exit.i, !dbg !667

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !668
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !670
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !671

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !672
  br label %kmalloc_index.exit.i, !dbg !672

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !673
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !675
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !676

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !677
  br label %kmalloc_index.exit.i, !dbg !677

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !678
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !680
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !681

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !682
  br label %kmalloc_index.exit.i, !dbg !682

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !683
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !685
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !686

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !687
  br label %kmalloc_index.exit.i, !dbg !687

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !688
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !690
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !691

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !692
  br label %kmalloc_index.exit.i, !dbg !692

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !693
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !695
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !696

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !697
  br label %kmalloc_index.exit.i, !dbg !697

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !698
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !700
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !701

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !702
  br label %kmalloc_index.exit.i, !dbg !702

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !703
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !705
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !706

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !707
  br label %kmalloc_index.exit.i, !dbg !707

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !708
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !710
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !711

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !712
  br label %kmalloc_index.exit.i, !dbg !712

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !713
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !715
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !716

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !717
  br label %kmalloc_index.exit.i, !dbg !717

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !718
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !720
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !721

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !722
  br label %kmalloc_index.exit.i, !dbg !722

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !723, !srcloc !726
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !727, !srcloc !730
  unreachable, !dbg !731

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !732
  store i32 %45, i32* %index.i, align 4, !dbg !733
  %46 = load i32, i32* %index.i, align 4, !dbg !734
  %tobool.i = icmp ne i32 %46, 0, !dbg !734
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !736

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !737
  br label %kmalloc.exit, !dbg !737

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !738
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !739
  %and.i.i = and i32 %48, 17, !dbg !739
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !739
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !739
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !739
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !739
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !741

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !742
  br label %kmalloc_type.exit.i, !dbg !742

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !743
  %and2.i.i = and i32 %49, 1, !dbg !744
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !743
  %50 = zext i1 %tobool3.i.i to i64, !dbg !743
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !743
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !745
  br label %kmalloc_type.exit.i, !dbg !745

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !746
  %idxprom.i = zext i32 %51 to i64, !dbg !747
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !747
  %52 = load i32, i32* %index.i, align 4, !dbg !748
  %idxprom6.i = zext i32 %52 to i64, !dbg !747
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !747
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !747
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !749
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !750
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !751
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !752
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #8, !dbg !753
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !753
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !753
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !753
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !753
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !514
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !754
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !755
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !756
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !757
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #8, !dbg !758
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !759
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !760
  store i8* %62, i8** %retval.i, align 8, !dbg !761
  br label %kmalloc.exit, !dbg !761

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !762
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !763
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #8, !dbg !764
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !764
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !764
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !764
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !764
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !765
  br label %kmalloc.exit, !dbg !765

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !766
  ret i8* %65, !dbg !767
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local void @dma_fence_init(%struct.dma_fence*, %struct.dma_fence_ops*, %struct.spinlock*, i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @init_irq_work(%struct.irq_work* %work, void (%struct.irq_work*)* %func) #0 !dbg !768 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !397, metadata !DIExpression()), !dbg !771
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !405, metadata !DIExpression()), !dbg !774
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !407, metadata !DIExpression()), !dbg !775
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !411, metadata !DIExpression()), !dbg !777
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !413, metadata !DIExpression()), !dbg !778
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !415, metadata !DIExpression()), !dbg !779
  %work.addr = alloca %struct.irq_work*, align 8
  %func.addr = alloca void (%struct.irq_work*)*, align 8
  store %struct.irq_work* %work, %struct.irq_work** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_work** %work.addr, metadata !780, metadata !DIExpression()), !dbg !781
  store void (%struct.irq_work*)* %func, void (%struct.irq_work*)** %func.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.irq_work*)** %func.addr, metadata !782, metadata !DIExpression()), !dbg !783
  %0 = load %struct.irq_work*, %struct.irq_work** %work.addr, align 8, !dbg !784
  %1 = getelementptr inbounds %struct.irq_work, %struct.irq_work* %0, i32 0, i32 0, !dbg !785
  %2 = bitcast %union.anon.1* %1 to %struct.anon*, !dbg !785
  %flags = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 1, !dbg !785
  store %struct.atomic_t* %flags, %struct.atomic_t** %v.addr.i, align 8
  store i32 0, i32* %i.addr.i, align 4
  %3 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !786
  %4 = bitcast %struct.atomic_t* %3 to i8*, !dbg !786
  store i8* %4, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !787
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !788
  %conv.i.i = trunc i64 %6 to i32, !dbg !788
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %5, i32 %conv.i.i) #8, !dbg !789
  %7 = load i8*, i8** %v.addr.i.i, align 8, !dbg !790
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !790
  call void @kcsan_check_access(i8* %7, i64 %8, i32 5) #8, !dbg !790
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !791
  %10 = load i32, i32* %i.addr.i, align 4, !dbg !792
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %10, i32* %i.addr.i.i, align 4
  %11 = load i32, i32* %i.addr.i.i, align 4, !dbg !793
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !793
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !793
  store volatile i32 %11, i32* %counter.i.i, align 4, !dbg !793
  %13 = load void (%struct.irq_work*)*, void (%struct.irq_work*)** %func.addr, align 8, !dbg !794
  %14 = load %struct.irq_work*, %struct.irq_work** %work.addr, align 8, !dbg !795
  %func1 = getelementptr inbounds %struct.irq_work, %struct.irq_work* %14, i32 0, i32 1, !dbg !796
  store void (%struct.irq_work*)* %13, void (%struct.irq_work*)** %func1, align 8, !dbg !797
  ret void, !dbg !798
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @irq_dma_fence_array_work(%struct.irq_work* %wrk) #0 !dbg !799 {
entry:
  %wrk.addr = alloca %struct.irq_work*, align 8
  %array = alloca %struct.dma_fence_array*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dma_fence_array*, align 8
  store %struct.irq_work* %wrk, %struct.irq_work** %wrk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_work** %wrk.addr, metadata !800, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.declare(metadata %struct.dma_fence_array** %array, metadata !802, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !804, metadata !DIExpression()), !dbg !806
  %0 = load %struct.irq_work*, %struct.irq_work** %wrk.addr, align 8, !dbg !806
  %1 = bitcast %struct.irq_work* %0 to i8*, !dbg !806
  store i8* %1, i8** %__mptr, align 8, !dbg !806
  br label %do.body, !dbg !806

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !807

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !806
  %add.ptr = getelementptr i8, i8* %2, i64 -80, !dbg !806
  %3 = bitcast i8* %add.ptr to %struct.dma_fence_array*, !dbg !806
  store %struct.dma_fence_array* %3, %struct.dma_fence_array** %tmp, align 8, !dbg !807
  %4 = load %struct.dma_fence_array*, %struct.dma_fence_array** %tmp, align 8, !dbg !806
  store %struct.dma_fence_array* %4, %struct.dma_fence_array** %array, align 8, !dbg !803
  %5 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !809
  call void @dma_fence_array_clear_pending_error(%struct.dma_fence_array* %5) #7, !dbg !810
  %6 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !811
  %base = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %6, i32 0, i32 0, !dbg !812
  %call = call i32 @dma_fence_signal(%struct.dma_fence* %base) #7, !dbg !813
  %7 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !814
  %base1 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %7, i32 0, i32 0, !dbg !815
  call void @dma_fence_put(%struct.dma_fence* %base1) #7, !dbg !816
  ret void, !dbg !817
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @dma_fence_match_context(%struct.dma_fence* %fence, i64 %context) #0 !dbg !818 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca %struct.dma_fence*, align 8
  %context.addr = alloca i64, align 8
  %array = alloca %struct.dma_fence_array*, align 8
  %i = alloca i32, align 4
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !821, metadata !DIExpression()), !dbg !822
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !823, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.declare(metadata %struct.dma_fence_array** %array, metadata !825, metadata !DIExpression()), !dbg !826
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !827
  %call = call %struct.dma_fence_array* @to_dma_fence_array(%struct.dma_fence* %0) #7, !dbg !828
  store %struct.dma_fence_array* %call, %struct.dma_fence_array** %array, align 8, !dbg !826
  call void @llvm.dbg.declare(metadata i32* %i, metadata !829, metadata !DIExpression()), !dbg !830
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !831
  %call1 = call zeroext i1 @dma_fence_is_array(%struct.dma_fence* %1) #7, !dbg !833
  br i1 %call1, label %if.end, label %if.then, !dbg !834

if.then:                                          ; preds = %entry
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !835
  %context2 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %2, i32 0, i32 3, !dbg !836
  %3 = load i64, i64* %context2, align 8, !dbg !836
  %4 = load i64, i64* %context.addr, align 8, !dbg !837
  %cmp = icmp eq i64 %3, %4, !dbg !838
  store i1 %cmp, i1* %retval, align 1, !dbg !839
  br label %return, !dbg !839

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !840
  br label %for.cond, !dbg !842

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !843
  %6 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !845
  %num_fences = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %6, i32 0, i32 2, !dbg !846
  %7 = load i32, i32* %num_fences, align 8, !dbg !846
  %cmp3 = icmp ult i32 %5, %7, !dbg !847
  br i1 %cmp3, label %for.body, label %for.end, !dbg !848

for.body:                                         ; preds = %for.cond
  %8 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !849
  %fences = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %8, i32 0, i32 4, !dbg !852
  %9 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !852
  %10 = load i32, i32* %i, align 4, !dbg !853
  %idxprom = zext i32 %10 to i64, !dbg !849
  %arrayidx = getelementptr %struct.dma_fence*, %struct.dma_fence** %9, i64 %idxprom, !dbg !849
  %11 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !849
  %context4 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %11, i32 0, i32 3, !dbg !854
  %12 = load i64, i64* %context4, align 8, !dbg !854
  %13 = load i64, i64* %context.addr, align 8, !dbg !855
  %cmp5 = icmp ne i64 %12, %13, !dbg !856
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !857

if.then6:                                         ; preds = %for.body
  store i1 false, i1* %retval, align 1, !dbg !858
  br label %return, !dbg !858

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !859

for.inc:                                          ; preds = %if.end7
  %14 = load i32, i32* %i, align 4, !dbg !860
  %inc = add i32 %14, 1, !dbg !860
  store i32 %inc, i32* %i, align 4, !dbg !860
  br label %for.cond, !dbg !861, !llvm.loop !862

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1, !dbg !864
  br label %return, !dbg !864

return:                                           ; preds = %for.end, %if.then6, %if.then
  %15 = load i1, i1* %retval, align 1, !dbg !865
  ret i1 %15, !dbg !865
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence_array* @to_dma_fence_array(%struct.dma_fence* %fence) #0 !dbg !866 {
entry:
  %retval = alloca %struct.dma_fence_array*, align 8
  %fence.addr = alloca %struct.dma_fence*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dma_fence_array*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !869, metadata !DIExpression()), !dbg !870
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !871
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 1, !dbg !873
  %1 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !873
  %cmp = icmp ne %struct.dma_fence_ops* %1, bitcast ({ i8, i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i64 (%struct.dma_fence*, i1, i64)*, void (%struct.dma_fence*)*, void (%struct.dma_fence*, i8*, i32)*, void (%struct.dma_fence*, i8*, i32)* }* @dma_fence_array_ops to %struct.dma_fence_ops*), !dbg !874
  br i1 %cmp, label %if.then, label %if.end, !dbg !875

if.then:                                          ; preds = %entry
  store %struct.dma_fence_array* null, %struct.dma_fence_array** %retval, align 8, !dbg !876
  br label %return, !dbg !876

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !877, metadata !DIExpression()), !dbg !879
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !879
  %3 = bitcast %struct.dma_fence* %2 to i8*, !dbg !879
  store i8* %3, i8** %__mptr, align 8, !dbg !879
  br label %do.body, !dbg !879

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !880

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !879
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !879
  %5 = bitcast i8* %add.ptr to %struct.dma_fence_array*, !dbg !879
  store %struct.dma_fence_array* %5, %struct.dma_fence_array** %tmp, align 8, !dbg !880
  %6 = load %struct.dma_fence_array*, %struct.dma_fence_array** %tmp, align 8, !dbg !879
  store %struct.dma_fence_array* %6, %struct.dma_fence_array** %retval, align 8, !dbg !882
  br label %return, !dbg !882

return:                                           ; preds = %do.end, %if.then
  %7 = load %struct.dma_fence_array*, %struct.dma_fence_array** %retval, align 8, !dbg !883
  ret %struct.dma_fence_array* %7, !dbg !883
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dma_fence_is_array(%struct.dma_fence* %fence) #0 !dbg !884 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !885, metadata !DIExpression()), !dbg !886
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !887
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 1, !dbg !888
  %1 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !888
  %cmp = icmp eq %struct.dma_fence_ops* %1, bitcast ({ i8, i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i64 (%struct.dma_fence*, i1, i64)*, void (%struct.dma_fence*)*, void (%struct.dma_fence*, i8*, i32)*, void (%struct.dma_fence*, i8*, i32)* }* @dma_fence_array_ops to %struct.dma_fence_ops*), !dbg !889
  ret i1 %cmp, !dbg !890
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %fence) #0 !dbg !891 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !894, metadata !DIExpression()), !dbg !895
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !896
  %tobool = icmp ne %struct.dma_fence* %0, null, !dbg !896
  br i1 %tobool, label %if.then, label %if.end, !dbg !898

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !899
  %refcount = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 6, !dbg !900
  call void @kref_get(%struct.kref* %refcount) #7, !dbg !901
  br label %if.end, !dbg !901

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !902
  ret %struct.dma_fence* %2, !dbg !903
}

; Function Attrs: noredzone
declare dso_local i32 @dma_fence_add_callback(%struct.dma_fence*, %struct.dma_fence_cb*, void (%struct.dma_fence*, %struct.dma_fence_cb*)*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_array_cb_func(%struct.dma_fence* %f, %struct.dma_fence_cb* %cb) #0 !dbg !904 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !219, metadata !DIExpression()), !dbg !905
  %c.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i.i, metadata !236, metadata !DIExpression()), !dbg !909
  %tmp.i.i = alloca i8, align 1
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !239, metadata !DIExpression()), !dbg !910
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !253, metadata !DIExpression()), !dbg !912
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !255, metadata !DIExpression()), !dbg !913
  %f.addr = alloca %struct.dma_fence*, align 8
  %cb.addr = alloca %struct.dma_fence_cb*, align 8
  %array_cb = alloca %struct.dma_fence_array_cb*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dma_fence_array_cb*, align 8
  %array = alloca %struct.dma_fence_array*, align 8
  store %struct.dma_fence* %f, %struct.dma_fence** %f.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %f.addr, metadata !914, metadata !DIExpression()), !dbg !915
  store %struct.dma_fence_cb* %cb, %struct.dma_fence_cb** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence_cb** %cb.addr, metadata !916, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.declare(metadata %struct.dma_fence_array_cb** %array_cb, metadata !918, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !920, metadata !DIExpression()), !dbg !922
  %0 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cb.addr, align 8, !dbg !922
  %1 = bitcast %struct.dma_fence_cb* %0 to i8*, !dbg !922
  store i8* %1, i8** %__mptr, align 8, !dbg !922
  br label %do.body, !dbg !922

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !923

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !922
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !922
  %3 = bitcast i8* %add.ptr to %struct.dma_fence_array_cb*, !dbg !922
  store %struct.dma_fence_array_cb* %3, %struct.dma_fence_array_cb** %tmp, align 8, !dbg !923
  %4 = load %struct.dma_fence_array_cb*, %struct.dma_fence_array_cb** %tmp, align 8, !dbg !922
  store %struct.dma_fence_array_cb* %4, %struct.dma_fence_array_cb** %array_cb, align 8, !dbg !919
  call void @llvm.dbg.declare(metadata %struct.dma_fence_array** %array, metadata !925, metadata !DIExpression()), !dbg !926
  %5 = load %struct.dma_fence_array_cb*, %struct.dma_fence_array_cb** %array_cb, align 8, !dbg !927
  %array1 = getelementptr inbounds %struct.dma_fence_array_cb, %struct.dma_fence_array_cb* %5, i32 0, i32 1, !dbg !928
  %6 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array1, align 8, !dbg !928
  store %struct.dma_fence_array* %6, %struct.dma_fence_array** %array, align 8, !dbg !926
  %7 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !929
  %8 = load %struct.dma_fence*, %struct.dma_fence** %f.addr, align 8, !dbg !930
  %error = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %8, i32 0, i32 7, !dbg !931
  %9 = load i32, i32* %error, align 4, !dbg !931
  call void @dma_fence_array_set_pending_error(%struct.dma_fence_array* %7, i32 %9) #7, !dbg !932
  %10 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !933
  %num_pending = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %10, i32 0, i32 3, !dbg !934
  store %struct.atomic_t* %num_pending, %struct.atomic_t** %v.addr.i, align 8
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !935
  %12 = bitcast %struct.atomic_t* %11 to i8*, !dbg !935
  store i8* %12, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %13 = load i8*, i8** %v.addr.i.i, align 8, !dbg !936
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !937
  %conv.i.i = trunc i64 %14 to i32, !dbg !937
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %13, i32 %conv.i.i) #8, !dbg !938
  %15 = load i8*, i8** %v.addr.i.i, align 8, !dbg !939
  %16 = load i64, i64* %size.addr.i.i, align 8, !dbg !939
  call void @kcsan_check_access(i8* %15, i64 %16, i32 7) #8, !dbg !939
  %17 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !940
  store %struct.atomic_t* %17, %struct.atomic_t** %v.addr.i1.i, align 8
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !909
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %18, i32 0, i32 0, !dbg !909
  %19 = call i8 asm sideeffect "decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #9, !dbg !909, !srcloc !312
  store i8 %19, i8* %c.i.i, align 1, !dbg !909
  %20 = load i8, i8* %c.i.i, align 1, !dbg !909
  %tobool.i.i = trunc i8 %20 to i1, !dbg !909
  %frombool.i.i = zext i1 %tobool.i.i to i8, !dbg !909
  store i8 %frombool.i.i, i8* %tmp.i.i, align 1, !dbg !909
  %21 = load i8, i8* %tmp.i.i, align 1, !dbg !909
  %tobool1.i.i = trunc i8 %21 to i1, !dbg !909
  br i1 %tobool1.i.i, label %if.then, label %if.else, !dbg !941

if.then:                                          ; preds = %do.end
  %22 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !942
  %work = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %22, i32 0, i32 5, !dbg !943
  %call2 = call zeroext i1 @irq_work_queue(%struct.irq_work* %work) #7, !dbg !944
  br label %if.end, !dbg !944

if.else:                                          ; preds = %do.end
  %23 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !945
  %base = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %23, i32 0, i32 0, !dbg !946
  call void @dma_fence_put(%struct.dma_fence* %base) #7, !dbg !947
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !948
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_array_set_pending_error(%struct.dma_fence_array* %array, i32 %error) #0 !dbg !949 {
entry:
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !407, metadata !DIExpression()), !dbg !952
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !411, metadata !DIExpression()), !dbg !956
  %array.addr = alloca %struct.dma_fence_array*, align 8
  %error.addr = alloca i32, align 4
  %__ai_ptr = alloca i32*, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca i32*, align 8
  %tmp2 = alloca i32, align 4
  store %struct.dma_fence_array* %array, %struct.dma_fence_array** %array.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence_array** %array.addr, metadata !957, metadata !DIExpression()), !dbg !958
  store i32 %error, i32* %error.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %error.addr, metadata !959, metadata !DIExpression()), !dbg !960
  %0 = load i32, i32* %error.addr, align 4, !dbg !961
  %tobool = icmp ne i32 %0, 0, !dbg !961
  br i1 %tobool, label %if.then, label %if.end, !dbg !962

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32** %__ai_ptr, metadata !963, metadata !DIExpression()), !dbg !965
  %1 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array.addr, align 8, !dbg !965
  %base = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %1, i32 0, i32 0, !dbg !965
  %error1 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %base, i32 0, i32 7, !dbg !965
  store i32* %error1, i32** %__ai_ptr, align 8, !dbg !965
  %2 = load i32*, i32** %__ai_ptr, align 8, !dbg !965
  %3 = bitcast i32* %2 to i8*, !dbg !965
  store i8* %3, i8** %v.addr.i, align 8
  store i64 4, i64* %size.addr.i, align 8
  %4 = load i8*, i8** %v.addr.i, align 8, !dbg !966
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !967
  %conv.i = trunc i64 %5 to i32, !dbg !967
  %call.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i) #8, !dbg !968
  %6 = load i8*, i8** %v.addr.i, align 8, !dbg !969
  %7 = load i64, i64* %size.addr.i, align 8, !dbg !969
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #8, !dbg !969
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !970, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.declare(metadata i32* %__old, metadata !973, metadata !DIExpression()), !dbg !972
  store i32 1, i32* %__old, align 4, !dbg !972
  call void @llvm.dbg.declare(metadata i32* %__new, metadata !974, metadata !DIExpression()), !dbg !972
  %8 = load i32, i32* %error.addr, align 4, !dbg !972
  store i32 %8, i32* %__new, align 4, !dbg !972
  call void @llvm.dbg.declare(metadata i32** %__ptr, metadata !975, metadata !DIExpression()), !dbg !972
  %9 = load i32*, i32** %__ai_ptr, align 8, !dbg !972
  store i32* %9, i32** %__ptr, align 8, !dbg !972
  %10 = load i32*, i32** %__ptr, align 8, !dbg !972
  %11 = load i32, i32* %__new, align 4, !dbg !972
  %12 = load i32, i32* %__old, align 4, !dbg !972
  %13 = call i32 asm sideeffect "cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %10, i32 %11, i32 %12, i32* %10) #9, !dbg !972, !srcloc !976
  store i32 %13, i32* %__ret, align 4, !dbg !972
  %14 = load i32, i32* %__ret, align 4, !dbg !972
  store i32 %14, i32* %tmp2, align 4, !dbg !972
  %15 = load i32, i32* %tmp2, align 4, !dbg !972
  store i32 %15, i32* %tmp, align 4, !dbg !965
  %16 = load i32, i32* %tmp, align 4, !dbg !965
  br label %if.end, !dbg !977

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !978
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_put(%struct.dma_fence* %fence) #0 !dbg !979 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !980, metadata !DIExpression()), !dbg !981
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !982
  %tobool = icmp ne %struct.dma_fence* %0, null, !dbg !982
  br i1 %tobool, label %if.then, label %if.end, !dbg !984

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !985
  %refcount = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 6, !dbg !986
  %call = call i32 @kref_put(%struct.kref* %refcount, void (%struct.kref*)* @dma_fence_release) #7, !dbg !987
  br label %if.end, !dbg !987

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !988
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_array_clear_pending_error(%struct.dma_fence_array* %array) #0 !dbg !989 {
entry:
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !407, metadata !DIExpression()), !dbg !992
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !411, metadata !DIExpression()), !dbg !995
  %array.addr = alloca %struct.dma_fence_array*, align 8
  %__ai_ptr = alloca i32*, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca i32*, align 8
  %tmp1 = alloca i32, align 4
  store %struct.dma_fence_array* %array, %struct.dma_fence_array** %array.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence_array** %array.addr, metadata !996, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.declare(metadata i32** %__ai_ptr, metadata !998, metadata !DIExpression()), !dbg !999
  %0 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array.addr, align 8, !dbg !999
  %base = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %0, i32 0, i32 0, !dbg !999
  %error = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %base, i32 0, i32 7, !dbg !999
  store i32* %error, i32** %__ai_ptr, align 8, !dbg !999
  %1 = load i32*, i32** %__ai_ptr, align 8, !dbg !999
  %2 = bitcast i32* %1 to i8*, !dbg !999
  store i8* %2, i8** %v.addr.i, align 8
  store i64 4, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1000
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1001
  %conv.i = trunc i64 %4 to i32, !dbg !1001
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !1002
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1003
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1003
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #8, !dbg !1003
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.declare(metadata i32* %__old, metadata !1007, metadata !DIExpression()), !dbg !1006
  store i32 1, i32* %__old, align 4, !dbg !1006
  call void @llvm.dbg.declare(metadata i32* %__new, metadata !1008, metadata !DIExpression()), !dbg !1006
  store i32 0, i32* %__new, align 4, !dbg !1006
  call void @llvm.dbg.declare(metadata i32** %__ptr, metadata !1009, metadata !DIExpression()), !dbg !1006
  %7 = load i32*, i32** %__ai_ptr, align 8, !dbg !1006
  store i32* %7, i32** %__ptr, align 8, !dbg !1006
  %8 = load i32*, i32** %__ptr, align 8, !dbg !1006
  %9 = load i32, i32* %__new, align 4, !dbg !1006
  %10 = load i32, i32* %__old, align 4, !dbg !1006
  %11 = call i32 asm sideeffect "cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %8, i32 %9, i32 %10, i32* %8) #9, !dbg !1006, !srcloc !1010
  store i32 %11, i32* %__ret, align 4, !dbg !1006
  %12 = load i32, i32* %__ret, align 4, !dbg !1006
  store i32 %12, i32* %tmp1, align 4, !dbg !1006
  %13 = load i32, i32* %tmp1, align 4, !dbg !1006
  store i32 %13, i32* %tmp, align 4, !dbg !999
  %14 = load i32, i32* %tmp, align 4, !dbg !999
  ret void, !dbg !1011
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !1012 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !1016, metadata !DIExpression()), !dbg !1017
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !1018
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !1019
  call void @refcount_inc(%struct.refcount_struct* %refcount) #7, !dbg !1020
  ret void, !dbg !1021
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !1022 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !1026, metadata !DIExpression()), !dbg !1027
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1028
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #7, !dbg !1029
  ret void, !dbg !1030
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !1031 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !1034, metadata !DIExpression()), !dbg !1035
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !1036, metadata !DIExpression()), !dbg !1037
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1038
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !1039
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #7, !dbg !1040
  ret void, !dbg !1041
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !1042 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !1045, metadata !DIExpression()), !dbg !1049
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !1053, metadata !DIExpression()), !dbg !1054
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !1055, metadata !DIExpression()), !dbg !1057
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !239, metadata !DIExpression()), !dbg !1058
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !253, metadata !DIExpression()), !dbg !1060
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !1061, metadata !DIExpression()), !dbg !1062
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !1063, metadata !DIExpression()), !dbg !1064
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !1065, metadata !DIExpression()), !dbg !1066
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !1067, metadata !DIExpression()), !dbg !1068
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !1069, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.declare(metadata i32* %old, metadata !1071, metadata !DIExpression()), !dbg !1072
  %0 = load i32, i32* %i.addr, align 4, !dbg !1073
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1074
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !1075
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !1076
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !1076
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !1077
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !1078
  %conv.i.i = trunc i64 %5 to i32, !dbg !1078
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #8, !dbg !1079
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !1080
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1080
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #8, !dbg !1080
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !1081
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !1082
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !1057
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !1057
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !1057
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !1057
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !1057
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #9, !dbg !1057, !srcloc !1083
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !1057
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !1057
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !1057
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !1057
  store i32 %15, i32* %old, align 4, !dbg !1072
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !1084
  %tobool = icmp ne i32* %16, null, !dbg !1084
  br i1 %tobool, label %if.then, label %if.end, !dbg !1086

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !1087
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !1088
  store i32 %17, i32* %18, align 4, !dbg !1089
  br label %if.end, !dbg !1090

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !1091
  %tobool1 = icmp ne i32 %19, 0, !dbg !1091
  %lnot = xor i1 %tobool1, true, !dbg !1091
  %lnot2 = xor i1 %lnot, true, !dbg !1091
  %lnot3 = xor i1 %lnot2, true, !dbg !1091
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1091
  %conv = sext i32 %lnot.ext to i64, !dbg !1091
  %tobool4 = icmp ne i64 %conv, 0, !dbg !1091
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !1093

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1094
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #7, !dbg !1095
  br label %if.end17, !dbg !1095

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !1096
  %cmp = icmp slt i32 %21, 0, !dbg !1096
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !1096

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !1096
  %23 = load i32, i32* %i.addr, align 4, !dbg !1096
  %add = add i32 %22, %23, !dbg !1096
  %cmp7 = icmp slt i32 %add, 0, !dbg !1096
  br label %lor.end, !dbg !1096

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !1096
  %lnot11 = xor i1 %lnot9, true, !dbg !1096
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !1096
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !1096
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !1096
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1098

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1099
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #7, !dbg !1100
  br label %if.end16, !dbg !1100

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !1101
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !1102 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1106, metadata !DIExpression()), !dbg !1107
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1108, metadata !DIExpression()), !dbg !1109
  ret i1 true, !dbg !1110
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !1111 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1115, metadata !DIExpression()), !dbg !1116
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1117, metadata !DIExpression()), !dbg !1118
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !1119, metadata !DIExpression()), !dbg !1120
  ret void, !dbg !1121
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @irq_work_queue(%struct.irq_work*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !1122 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !1126, metadata !DIExpression()), !dbg !1127
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !1128, metadata !DIExpression()), !dbg !1129
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !1130
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !1132
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #7, !dbg !1133
  br i1 %call, label %if.then, label %if.end, !dbg !1134

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !1135
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !1137
  call void %1(%struct.kref* %2) #7, !dbg !1135
  store i32 1, i32* %retval, align 4, !dbg !1138
  br label %return, !dbg !1138

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1139
  br label %return, !dbg !1139

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !1140
  ret i32 %3, !dbg !1140
}

; Function Attrs: noredzone
declare dso_local void @dma_fence_release(%struct.kref*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !1141 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !1144, metadata !DIExpression()), !dbg !1145
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1146
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #7, !dbg !1147
  ret i1 %call, !dbg !1148
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !1149 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !1152, metadata !DIExpression()), !dbg !1153
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !1154, metadata !DIExpression()), !dbg !1155
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1156
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !1157
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #7, !dbg !1158
  ret i1 %call, !dbg !1159
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !1160 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !1163, metadata !DIExpression()), !dbg !1165
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !1169, metadata !DIExpression()), !dbg !1170
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !1171, metadata !DIExpression()), !dbg !1173
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !239, metadata !DIExpression()), !dbg !1174
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !253, metadata !DIExpression()), !dbg !1176
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !1177, metadata !DIExpression()), !dbg !1178
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !1179, metadata !DIExpression()), !dbg !1180
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !1181, metadata !DIExpression()), !dbg !1182
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !1183, metadata !DIExpression()), !dbg !1184
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !1185, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.declare(metadata i32* %old, metadata !1187, metadata !DIExpression()), !dbg !1188
  %0 = load i32, i32* %i.addr, align 4, !dbg !1189
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1190
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !1191
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !1192
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !1192
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !1193
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !1194
  %conv.i.i = trunc i64 %5 to i32, !dbg !1194
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #8, !dbg !1195
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !1196
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1196
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #8, !dbg !1196
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !1197
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !1198
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !1173
  %sub.i.i = sub i32 0, %10, !dbg !1173
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !1173
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !1173
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !1173
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !1173
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #9, !dbg !1173, !srcloc !1199
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !1173
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !1173
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !1173
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !1173
  store i32 %15, i32* %old, align 4, !dbg !1188
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !1200
  %tobool = icmp ne i32* %16, null, !dbg !1200
  br i1 %tobool, label %if.then, label %if.end, !dbg !1202

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !1203
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !1204
  store i32 %17, i32* %18, align 4, !dbg !1205
  br label %if.end, !dbg !1206

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !1207
  %20 = load i32, i32* %i.addr, align 4, !dbg !1209
  %cmp = icmp eq i32 %19, %20, !dbg !1210
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1211

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1212, !srcloc !1214
  store i1 true, i1* %retval, align 1, !dbg !1215
  br label %return, !dbg !1215

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !1216
  %cmp3 = icmp slt i32 %21, 0, !dbg !1216
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !1216

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !1216
  %23 = load i32, i32* %i.addr, align 4, !dbg !1216
  %sub = sub i32 %22, %23, !dbg !1216
  %cmp4 = icmp slt i32 %sub, 0, !dbg !1216
  br label %lor.end, !dbg !1216

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !1216
  %lnot5 = xor i1 %lnot, true, !dbg !1216
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !1216
  %conv = sext i32 %lnot.ext to i64, !dbg !1216
  %tobool6 = icmp ne i64 %conv, 0, !dbg !1216
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1218

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1219
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #7, !dbg !1220
  br label %if.end8, !dbg !1220

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !1221
  br label %return, !dbg !1221

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !1222
  ret i1 %26, !dbg !1222
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !1223 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1224, metadata !DIExpression()), !dbg !1225
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1226, metadata !DIExpression()), !dbg !1227
  ret i1 true, !dbg !1228
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noredzone
declare dso_local void @dma_fence_free(%struct.dma_fence*) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !1229 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1233, metadata !DIExpression()), !dbg !1238
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1240, metadata !DIExpression()), !dbg !1241
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1242, metadata !DIExpression()), !dbg !1243
  %0 = load i64, i64* %size.addr, align 8, !dbg !1244
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1246
  br i1 %1, label %if.then, label %if.end447, !dbg !1247

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1248
  %tobool = icmp ne i64 %2, 0, !dbg !1248
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1251

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1252
  br label %return, !dbg !1252

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1253
  %cmp = icmp ult i64 %3, 4096, !dbg !1255
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1256

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1257
  br label %return, !dbg !1257

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub = sub i64 %4, 1, !dbg !1258
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1258
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1258

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub4 = sub i64 %6, 1, !dbg !1258
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1258
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1258

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub6 = sub i64 %8, 1, !dbg !1258
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1258
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1258

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1258

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub9 = sub i64 %9, 1, !dbg !1258
  %and = and i64 %sub9, -9223372036854775808, !dbg !1258
  %tobool10 = icmp ne i64 %and, 0, !dbg !1258
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1258

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1258

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub13 = sub i64 %10, 1, !dbg !1258
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1258
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1258
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1258

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1258

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub18 = sub i64 %11, 1, !dbg !1258
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1258
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1258
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1258

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1258

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub23 = sub i64 %12, 1, !dbg !1258
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1258
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1258
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1258

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1258

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub28 = sub i64 %13, 1, !dbg !1258
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1258
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1258
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1258

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1258

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub33 = sub i64 %14, 1, !dbg !1258
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1258
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1258
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1258

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1258

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub38 = sub i64 %15, 1, !dbg !1258
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1258
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1258
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1258

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1258

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub43 = sub i64 %16, 1, !dbg !1258
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1258
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1258
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1258

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1258

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub48 = sub i64 %17, 1, !dbg !1258
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1258
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1258
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1258

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1258

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub53 = sub i64 %18, 1, !dbg !1258
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1258
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1258
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1258

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1258

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub58 = sub i64 %19, 1, !dbg !1258
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1258
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1258
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1258

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1258

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub63 = sub i64 %20, 1, !dbg !1258
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1258
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1258
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1258

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1258

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub68 = sub i64 %21, 1, !dbg !1258
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1258
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1258
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1258

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1258

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub73 = sub i64 %22, 1, !dbg !1258
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1258
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1258
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1258

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1258

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub78 = sub i64 %23, 1, !dbg !1258
  %and79 = and i64 %sub78, 562949953421312, !dbg !1258
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1258
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1258

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1258

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub83 = sub i64 %24, 1, !dbg !1258
  %and84 = and i64 %sub83, 281474976710656, !dbg !1258
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1258
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1258

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1258

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub88 = sub i64 %25, 1, !dbg !1258
  %and89 = and i64 %sub88, 140737488355328, !dbg !1258
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1258
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1258

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1258

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub93 = sub i64 %26, 1, !dbg !1258
  %and94 = and i64 %sub93, 70368744177664, !dbg !1258
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1258
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1258

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1258

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub98 = sub i64 %27, 1, !dbg !1258
  %and99 = and i64 %sub98, 35184372088832, !dbg !1258
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1258
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1258

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1258

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub103 = sub i64 %28, 1, !dbg !1258
  %and104 = and i64 %sub103, 17592186044416, !dbg !1258
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1258
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1258

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1258

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub108 = sub i64 %29, 1, !dbg !1258
  %and109 = and i64 %sub108, 8796093022208, !dbg !1258
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1258
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1258

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1258

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub113 = sub i64 %30, 1, !dbg !1258
  %and114 = and i64 %sub113, 4398046511104, !dbg !1258
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1258
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1258

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1258

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub118 = sub i64 %31, 1, !dbg !1258
  %and119 = and i64 %sub118, 2199023255552, !dbg !1258
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1258
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1258

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1258

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub123 = sub i64 %32, 1, !dbg !1258
  %and124 = and i64 %sub123, 1099511627776, !dbg !1258
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1258
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1258

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1258

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub128 = sub i64 %33, 1, !dbg !1258
  %and129 = and i64 %sub128, 549755813888, !dbg !1258
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1258
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1258

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1258

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub133 = sub i64 %34, 1, !dbg !1258
  %and134 = and i64 %sub133, 274877906944, !dbg !1258
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1258
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1258

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1258

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub138 = sub i64 %35, 1, !dbg !1258
  %and139 = and i64 %sub138, 137438953472, !dbg !1258
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1258
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1258

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1258

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub143 = sub i64 %36, 1, !dbg !1258
  %and144 = and i64 %sub143, 68719476736, !dbg !1258
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1258
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1258

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1258

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub148 = sub i64 %37, 1, !dbg !1258
  %and149 = and i64 %sub148, 34359738368, !dbg !1258
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1258
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1258

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1258

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub153 = sub i64 %38, 1, !dbg !1258
  %and154 = and i64 %sub153, 17179869184, !dbg !1258
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1258
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1258

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1258

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub158 = sub i64 %39, 1, !dbg !1258
  %and159 = and i64 %sub158, 8589934592, !dbg !1258
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1258
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1258

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1258

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub163 = sub i64 %40, 1, !dbg !1258
  %and164 = and i64 %sub163, 4294967296, !dbg !1258
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1258
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1258

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1258

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub168 = sub i64 %41, 1, !dbg !1258
  %and169 = and i64 %sub168, 2147483648, !dbg !1258
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1258
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1258

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1258

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub173 = sub i64 %42, 1, !dbg !1258
  %and174 = and i64 %sub173, 1073741824, !dbg !1258
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1258
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1258

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1258

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub178 = sub i64 %43, 1, !dbg !1258
  %and179 = and i64 %sub178, 536870912, !dbg !1258
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1258
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1258

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1258

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub183 = sub i64 %44, 1, !dbg !1258
  %and184 = and i64 %sub183, 268435456, !dbg !1258
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1258
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1258

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1258

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub188 = sub i64 %45, 1, !dbg !1258
  %and189 = and i64 %sub188, 134217728, !dbg !1258
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1258
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1258

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1258

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub193 = sub i64 %46, 1, !dbg !1258
  %and194 = and i64 %sub193, 67108864, !dbg !1258
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1258
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1258

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1258

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub198 = sub i64 %47, 1, !dbg !1258
  %and199 = and i64 %sub198, 33554432, !dbg !1258
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1258
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1258

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1258

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub203 = sub i64 %48, 1, !dbg !1258
  %and204 = and i64 %sub203, 16777216, !dbg !1258
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1258
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1258

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1258

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub208 = sub i64 %49, 1, !dbg !1258
  %and209 = and i64 %sub208, 8388608, !dbg !1258
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1258
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1258

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1258

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub213 = sub i64 %50, 1, !dbg !1258
  %and214 = and i64 %sub213, 4194304, !dbg !1258
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1258
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1258

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1258

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub218 = sub i64 %51, 1, !dbg !1258
  %and219 = and i64 %sub218, 2097152, !dbg !1258
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1258
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1258

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1258

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub223 = sub i64 %52, 1, !dbg !1258
  %and224 = and i64 %sub223, 1048576, !dbg !1258
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1258
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1258

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1258

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub228 = sub i64 %53, 1, !dbg !1258
  %and229 = and i64 %sub228, 524288, !dbg !1258
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1258
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1258

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1258

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub233 = sub i64 %54, 1, !dbg !1258
  %and234 = and i64 %sub233, 262144, !dbg !1258
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1258
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1258

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1258

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub238 = sub i64 %55, 1, !dbg !1258
  %and239 = and i64 %sub238, 131072, !dbg !1258
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1258
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1258

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1258

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub243 = sub i64 %56, 1, !dbg !1258
  %and244 = and i64 %sub243, 65536, !dbg !1258
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1258
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1258

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1258

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub248 = sub i64 %57, 1, !dbg !1258
  %and249 = and i64 %sub248, 32768, !dbg !1258
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1258
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1258

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1258

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub253 = sub i64 %58, 1, !dbg !1258
  %and254 = and i64 %sub253, 16384, !dbg !1258
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1258
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1258

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1258

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub258 = sub i64 %59, 1, !dbg !1258
  %and259 = and i64 %sub258, 8192, !dbg !1258
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1258
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1258

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1258

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub263 = sub i64 %60, 1, !dbg !1258
  %and264 = and i64 %sub263, 4096, !dbg !1258
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1258
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1258

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1258

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub268 = sub i64 %61, 1, !dbg !1258
  %and269 = and i64 %sub268, 2048, !dbg !1258
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1258
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1258

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1258

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub273 = sub i64 %62, 1, !dbg !1258
  %and274 = and i64 %sub273, 1024, !dbg !1258
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1258
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1258

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1258

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub278 = sub i64 %63, 1, !dbg !1258
  %and279 = and i64 %sub278, 512, !dbg !1258
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1258
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1258

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1258

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub283 = sub i64 %64, 1, !dbg !1258
  %and284 = and i64 %sub283, 256, !dbg !1258
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1258
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1258

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1258

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub288 = sub i64 %65, 1, !dbg !1258
  %and289 = and i64 %sub288, 128, !dbg !1258
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1258
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1258

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1258

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub293 = sub i64 %66, 1, !dbg !1258
  %and294 = and i64 %sub293, 64, !dbg !1258
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1258
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1258

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1258

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub298 = sub i64 %67, 1, !dbg !1258
  %and299 = and i64 %sub298, 32, !dbg !1258
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1258
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1258

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1258

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub303 = sub i64 %68, 1, !dbg !1258
  %and304 = and i64 %sub303, 16, !dbg !1258
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1258
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1258

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1258

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub308 = sub i64 %69, 1, !dbg !1258
  %and309 = and i64 %sub308, 8, !dbg !1258
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1258
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1258

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1258

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub313 = sub i64 %70, 1, !dbg !1258
  %and314 = and i64 %sub313, 4, !dbg !1258
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1258
  %71 = zext i1 %tobool315 to i64, !dbg !1258
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1258
  br label %cond.end, !dbg !1258

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1258
  br label %cond.end317, !dbg !1258

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1258
  br label %cond.end319, !dbg !1258

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1258
  br label %cond.end321, !dbg !1258

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1258
  br label %cond.end323, !dbg !1258

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1258
  br label %cond.end325, !dbg !1258

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1258
  br label %cond.end327, !dbg !1258

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1258
  br label %cond.end329, !dbg !1258

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1258
  br label %cond.end331, !dbg !1258

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1258
  br label %cond.end333, !dbg !1258

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1258
  br label %cond.end335, !dbg !1258

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1258
  br label %cond.end337, !dbg !1258

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1258
  br label %cond.end339, !dbg !1258

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1258
  br label %cond.end341, !dbg !1258

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1258
  br label %cond.end343, !dbg !1258

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1258
  br label %cond.end345, !dbg !1258

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1258
  br label %cond.end347, !dbg !1258

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1258
  br label %cond.end349, !dbg !1258

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1258
  br label %cond.end351, !dbg !1258

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1258
  br label %cond.end353, !dbg !1258

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1258
  br label %cond.end355, !dbg !1258

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1258
  br label %cond.end357, !dbg !1258

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1258
  br label %cond.end359, !dbg !1258

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1258
  br label %cond.end361, !dbg !1258

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1258
  br label %cond.end363, !dbg !1258

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1258
  br label %cond.end365, !dbg !1258

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1258
  br label %cond.end367, !dbg !1258

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1258
  br label %cond.end369, !dbg !1258

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1258
  br label %cond.end371, !dbg !1258

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1258
  br label %cond.end373, !dbg !1258

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1258
  br label %cond.end375, !dbg !1258

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1258
  br label %cond.end377, !dbg !1258

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1258
  br label %cond.end379, !dbg !1258

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1258
  br label %cond.end381, !dbg !1258

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1258
  br label %cond.end383, !dbg !1258

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1258
  br label %cond.end385, !dbg !1258

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1258
  br label %cond.end387, !dbg !1258

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1258
  br label %cond.end389, !dbg !1258

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1258
  br label %cond.end391, !dbg !1258

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1258
  br label %cond.end393, !dbg !1258

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1258
  br label %cond.end395, !dbg !1258

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1258
  br label %cond.end397, !dbg !1258

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1258
  br label %cond.end399, !dbg !1258

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1258
  br label %cond.end401, !dbg !1258

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1258
  br label %cond.end403, !dbg !1258

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1258
  br label %cond.end405, !dbg !1258

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1258
  br label %cond.end407, !dbg !1258

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1258
  br label %cond.end409, !dbg !1258

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1258
  br label %cond.end411, !dbg !1258

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1258
  br label %cond.end413, !dbg !1258

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1258
  br label %cond.end415, !dbg !1258

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1258
  br label %cond.end417, !dbg !1258

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1258
  br label %cond.end419, !dbg !1258

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1258
  br label %cond.end421, !dbg !1258

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1258
  br label %cond.end423, !dbg !1258

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1258
  br label %cond.end425, !dbg !1258

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1258
  br label %cond.end427, !dbg !1258

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1258
  br label %cond.end429, !dbg !1258

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1258
  br label %cond.end431, !dbg !1258

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1258
  br label %cond.end433, !dbg !1258

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1258
  br label %cond.end435, !dbg !1258

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1258
  br label %cond.end437, !dbg !1258

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1258
  br label %cond.end440, !dbg !1258

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1258

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1258
  br label %cond.end444, !dbg !1258

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1258
  %sub443 = sub i64 %72, 1, !dbg !1258
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !1258
  br label %cond.end444, !dbg !1258

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1258
  %sub446 = sub i32 %cond445, 12, !dbg !1259
  %add = add i32 %sub446, 1, !dbg !1260
  store i32 %add, i32* %retval, align 4, !dbg !1261
  br label %return, !dbg !1261

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1262
  %dec = add i64 %73, -1, !dbg !1262
  store i64 %dec, i64* %size.addr, align 8, !dbg !1262
  %74 = load i64, i64* %size.addr, align 8, !dbg !1263
  %shr = lshr i64 %74, 12, !dbg !1263
  store i64 %shr, i64* %size.addr, align 8, !dbg !1263
  %75 = load i64, i64* %size.addr, align 8, !dbg !1264
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1241
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1265
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1266
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !1265, !srcloc !1267
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1265
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1268
  %add.i = add i32 %79, 1, !dbg !1269
  store i32 %add.i, i32* %retval, align 4, !dbg !1270
  br label %return, !dbg !1270

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1271
  ret i32 %80, !dbg !1271
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1272 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1233, metadata !DIExpression()), !dbg !1276
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1240, metadata !DIExpression()), !dbg !1278
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1279, metadata !DIExpression()), !dbg !1280
  %0 = load i64, i64* %n.addr, align 8, !dbg !1281
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1278
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1282
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1283
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !1282, !srcloc !1267
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1282
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1284
  %add.i = add i32 %4, 1, !dbg !1285
  %sub = sub i32 %add.i, 1, !dbg !1286
  ret i32 %sub, !dbg !1287
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1288 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1294, metadata !DIExpression()), !dbg !1295
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1296, metadata !DIExpression()), !dbg !1297
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1298, metadata !DIExpression()), !dbg !1299
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1300, metadata !DIExpression()), !dbg !1301
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1302
  ret i8* %0, !dbg !1303
}

; Function Attrs: noredzone
declare dso_local i32 @dma_fence_signal(%struct.dma_fence*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { noredzone nounwind }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dma_fence_array_ops", scope: !2, file: !3, line: 122, type: !71, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !204, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/dma-buf/dma-fence-array.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !19}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !12, line: 119, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!18 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !20, line: 305, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!26 = !{!27, !29, !30, !196, !200, !150, !203}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !28, line: 148, baseType: !7)
!28 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_array_cb", file: !32, line: 23, size: 256, elements: !33)
!32 = !DIFile(filename: "./include/linux/dma-fence-array.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !149}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !31, file: !32, line: 24, baseType: !35, size: 192)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !36, line: 116, size: 192, elements: !37)
!36 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !44}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !35, file: !36, line: 117, baseType: !39, size: 128)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !28, line: 178, size: 128, elements: !40)
!40 = !{!41, !43}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !39, file: !28, line: 179, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !39, file: !28, line: 179, baseType: !42, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !35, file: !36, line: 118, baseType: !45, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !36, line: 105, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49, !148}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !36, line: 65, size: 512, elements: !51)
!51 = !{!52, !69, !106, !127, !131, !132, !134, !147}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !50, file: !36, line: 66, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !55, line: 83, baseType: !56)
!55 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !55, line: 71, elements: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, scope: !56, file: !55, line: 72, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !56, file: !55, line: 72, elements: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !59, file: !55, line: 73, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !55, line: 20, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !62, file: !55, line: 21, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !66, line: 25, baseType: !67)
!66 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 25, elements: !68)
!68 = !{}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !50, file: !36, line: 67, baseType: !70, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !36, line: 125, size: 576, elements: !73)
!73 = !{!74, !77, !84, !85, !89, !90, !95, !99, !105}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !72, file: !36, line: 132, baseType: !75, size: 8)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !28, line: 30, baseType: !76)
!76 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !72, file: !36, line: 143, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !49}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !72, file: !36, line: 155, baseType: !78, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !72, file: !36, line: 192, baseType: !86, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!75, !49}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !72, file: !36, line: 209, baseType: !86, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !72, file: !36, line: 231, baseType: !91, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !49, !75, !94}
!94 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !72, file: !36, line: 242, baseType: !96, size: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !49}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !72, file: !36, line: 252, baseType: !100, size: 64, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !49, !103, !104}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !72, file: !36, line: 262, baseType: !100, size: 64, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_member, scope: !50, file: !36, line: 84, baseType: !107, size: 128, offset: 128)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !50, file: !36, line: 84, size: 128, elements: !108)
!108 = !{!109, !110, !118}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !107, file: !36, line: 85, baseType: !39, size: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !107, file: !36, line: 87, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !112, line: 29, baseType: !113)
!112 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !114, line: 22, baseType: !115)
!114 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !116, line: 30, baseType: !117)
!116 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!117 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !107, file: !36, line: 89, baseType: !119, size: 128, align: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !28, line: 216, size: 128, align: 64, elements: !120)
!120 = !{!121, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !28, line: 217, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !119, file: !28, line: 218, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !122}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !50, file: !36, line: 91, baseType: !128, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !114, line: 23, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !116, line: 31, baseType: !130)
!130 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !50, file: !36, line: 92, baseType: !128, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !36, line: 93, baseType: !133, size: 64, offset: 384)
!133 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !50, file: !36, line: 94, baseType: !135, size: 32, offset: 448)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !136, line: 19, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !135, file: !136, line: 20, baseType: !139, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !12, line: 113, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !12, line: 111, size: 32, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !140, file: !12, line: 112, baseType: !143, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !28, line: 168, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 166, size: 32, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !144, file: !28, line: 167, baseType: !104, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !50, file: !36, line: 95, baseType: !104, size: 32, offset: 480)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !31, file: !32, line: 25, baseType: !150, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_array", file: !32, line: 37, size: 832, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !159}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !151, file: !32, line: 38, baseType: !50, size: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !151, file: !32, line: 40, baseType: !54, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "num_fences", scope: !151, file: !32, line: 41, baseType: !7, size: 32, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "num_pending", scope: !151, file: !32, line: 42, baseType: !143, size: 32, offset: 544)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !151, file: !32, line: 43, baseType: !158, size: 64, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !151, file: !32, line: 45, baseType: !160, size: 192, offset: 640)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !161, line: 16, size: 192, elements: !162)
!161 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !191}
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !161, line: 17, baseType: !164, size: 128)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !161, line: 17, size: 128, elements: !165)
!165 = !{!166, !186}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !164, file: !161, line: 18, baseType: !167, size: 128)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !168, line: 58, size: 128, elements: !169)
!168 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!169 = !{!170, !176, !181, !185}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !167, file: !168, line: 59, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !172, line: 58, size: 64, elements: !173)
!172 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !171, file: !172, line: 59, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, scope: !167, file: !168, line: 60, baseType: !177, size: 32, offset: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !168, line: 60, size: 32, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !177, file: !168, line: 61, baseType: !7, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !177, file: !168, line: 62, baseType: !143, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !167, file: !168, line: 65, baseType: !182, size: 16, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !114, line: 19, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !116, line: 24, baseType: !184)
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !167, file: !168, line: 65, baseType: !182, size: 16, offset: 112)
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !161, line: 19, baseType: !187, size: 128)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !164, file: !161, line: 19, size: 128, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "llnode", scope: !187, file: !161, line: 20, baseType: !171, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !187, file: !161, line: 21, baseType: !143, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !160, file: !161, line: 24, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !114, line: 21, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !116, line: 27, baseType: !7)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!204 = !{!0}
!205 = !{i32 7, !"Dwarf Version", i32 4}
!206 = !{i32 2, !"Debug Info Version", i32 3}
!207 = !{i32 1, !"wchar_size", i32 2}
!208 = !{i32 1, !"Code Model", i32 2}
!209 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!210 = distinct !DISubprogram(name: "dma_fence_array_get_driver_name", scope: !3, file: !3, line: 18, type: !79, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!211 = !DILocalVariable(name: "fence", arg: 1, scope: !210, file: !3, line: 18, type: !49)
!212 = !DILocation(line: 18, column: 70, scope: !210)
!213 = !DILocation(line: 20, column: 2, scope: !210)
!214 = distinct !DISubprogram(name: "dma_fence_array_get_timeline_name", scope: !3, file: !3, line: 23, type: !79, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!215 = !DILocalVariable(name: "fence", arg: 1, scope: !214, file: !3, line: 23, type: !49)
!216 = !DILocation(line: 23, column: 72, scope: !214)
!217 = !DILocation(line: 25, column: 2, scope: !214)
!218 = distinct !DISubprogram(name: "dma_fence_array_enable_signaling", scope: !3, file: !3, line: 70, type: !87, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!219 = !DILocalVariable(name: "v", arg: 1, scope: !220, file: !221, line: 121, type: !224)
!220 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !221, file: !221, line: 121, type: !222, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!221 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!222 = !DISubroutineType(types: !223)
!223 = !{!75, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!225 = !DILocation(line: 121, column: 64, scope: !220, inlinedAt: !226)
!226 = distinct !DILocation(line: 749, column: 9, scope: !227, inlinedAt: !229)
!227 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !228, file: !228, line: 746, type: !222, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!228 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!229 = distinct !DILocation(line: 93, column: 8, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !3, line: 93, column: 8)
!231 = distinct !DILexicalBlock(scope: !232, file: !3, line: 88, column: 35)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 87, column: 7)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 76, column: 42)
!234 = distinct !DILexicalBlock(scope: !235, file: !3, line: 76, column: 2)
!235 = distinct !DILexicalBlock(scope: !218, file: !3, line: 76, column: 2)
!236 = !DILocalVariable(name: "c", scope: !237, file: !221, line: 123, type: !75)
!237 = distinct !DILexicalBlock(scope: !220, file: !221, line: 123, column: 9)
!238 = !DILocation(line: 123, column: 9, scope: !237, inlinedAt: !226)
!239 = !DILocalVariable(name: "v", arg: 1, scope: !240, file: !241, line: 99, type: !244)
!240 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !241, file: !241, line: 99, type: !242, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!241 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!242 = !DISubroutineType(types: !243)
!243 = !{null, !244, !247}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 55, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !249, line: 72, baseType: !250)
!249 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !249, line: 16, baseType: !133)
!251 = !DILocation(line: 99, column: 79, scope: !240, inlinedAt: !252)
!252 = distinct !DILocation(line: 748, column: 2, scope: !227, inlinedAt: !229)
!253 = !DILocalVariable(name: "size", arg: 2, scope: !240, file: !241, line: 99, type: !247)
!254 = !DILocation(line: 99, column: 89, scope: !240, inlinedAt: !252)
!255 = !DILocalVariable(name: "v", arg: 1, scope: !227, file: !228, line: 746, type: !224)
!256 = !DILocation(line: 746, column: 31, scope: !227, inlinedAt: !229)
!257 = !DILocalVariable(name: "fence", arg: 1, scope: !218, file: !3, line: 70, type: !49)
!258 = !DILocation(line: 70, column: 64, scope: !218)
!259 = !DILocalVariable(name: "array", scope: !218, file: !3, line: 72, type: !150)
!260 = !DILocation(line: 72, column: 26, scope: !218)
!261 = !DILocation(line: 72, column: 53, scope: !218)
!262 = !DILocation(line: 72, column: 34, scope: !218)
!263 = !DILocalVariable(name: "cb", scope: !218, file: !3, line: 73, type: !30)
!264 = !DILocation(line: 73, column: 29, scope: !218)
!265 = !DILocation(line: 73, column: 44, scope: !218)
!266 = !DILocation(line: 73, column: 34, scope: !218)
!267 = !DILocalVariable(name: "i", scope: !218, file: !3, line: 74, type: !7)
!268 = !DILocation(line: 74, column: 11, scope: !218)
!269 = !DILocation(line: 76, column: 9, scope: !235)
!270 = !DILocation(line: 76, column: 7, scope: !235)
!271 = !DILocation(line: 76, column: 14, scope: !234)
!272 = !DILocation(line: 76, column: 18, scope: !234)
!273 = !DILocation(line: 76, column: 25, scope: !234)
!274 = !DILocation(line: 76, column: 16, scope: !234)
!275 = !DILocation(line: 76, column: 2, scope: !235)
!276 = !DILocation(line: 77, column: 17, scope: !233)
!277 = !DILocation(line: 77, column: 3, scope: !233)
!278 = !DILocation(line: 77, column: 6, scope: !233)
!279 = !DILocation(line: 77, column: 9, scope: !233)
!280 = !DILocation(line: 77, column: 15, scope: !233)
!281 = !DILocation(line: 86, column: 18, scope: !233)
!282 = !DILocation(line: 86, column: 25, scope: !233)
!283 = !DILocation(line: 86, column: 3, scope: !233)
!284 = !DILocation(line: 87, column: 30, scope: !232)
!285 = !DILocation(line: 87, column: 37, scope: !232)
!286 = !DILocation(line: 87, column: 44, scope: !232)
!287 = !DILocation(line: 87, column: 49, scope: !232)
!288 = !DILocation(line: 87, column: 52, scope: !232)
!289 = !DILocation(line: 87, column: 55, scope: !232)
!290 = !DILocation(line: 87, column: 7, scope: !232)
!291 = !DILocation(line: 87, column: 7, scope: !233)
!292 = !DILocalVariable(name: "error", scope: !231, file: !3, line: 89, type: !104)
!293 = !DILocation(line: 89, column: 8, scope: !231)
!294 = !DILocation(line: 89, column: 16, scope: !231)
!295 = !DILocation(line: 89, column: 23, scope: !231)
!296 = !DILocation(line: 89, column: 30, scope: !231)
!297 = !DILocation(line: 89, column: 34, scope: !231)
!298 = !DILocation(line: 91, column: 38, scope: !231)
!299 = !DILocation(line: 91, column: 45, scope: !231)
!300 = !DILocation(line: 91, column: 4, scope: !231)
!301 = !DILocation(line: 92, column: 19, scope: !231)
!302 = !DILocation(line: 92, column: 26, scope: !231)
!303 = !DILocation(line: 92, column: 4, scope: !231)
!304 = !DILocation(line: 93, column: 29, scope: !230)
!305 = !DILocation(line: 93, column: 36, scope: !230)
!306 = !DILocation(line: 748, column: 31, scope: !227, inlinedAt: !229)
!307 = !DILocation(line: 101, column: 20, scope: !240, inlinedAt: !252)
!308 = !DILocation(line: 101, column: 23, scope: !240, inlinedAt: !252)
!309 = !DILocation(line: 101, column: 2, scope: !240, inlinedAt: !252)
!310 = !DILocation(line: 102, column: 2, scope: !240, inlinedAt: !252)
!311 = !DILocation(line: 749, column: 34, scope: !227, inlinedAt: !229)
!312 = !{i32 -2146455665, i32 -2146455598}
!313 = !DILocation(line: 93, column: 8, scope: !231)
!314 = !DILocation(line: 94, column: 41, scope: !315)
!315 = distinct !DILexicalBlock(scope: !230, file: !3, line: 93, column: 50)
!316 = !DILocation(line: 94, column: 5, scope: !315)
!317 = !DILocation(line: 95, column: 5, scope: !315)
!318 = !DILocation(line: 97, column: 3, scope: !231)
!319 = !DILocation(line: 98, column: 2, scope: !233)
!320 = !DILocation(line: 76, column: 37, scope: !234)
!321 = !DILocation(line: 76, column: 2, scope: !234)
!322 = distinct !{!322, !275, !323}
!323 = !DILocation(line: 98, column: 2, scope: !235)
!324 = !DILocation(line: 100, column: 2, scope: !218)
!325 = !DILocation(line: 101, column: 1, scope: !218)
!326 = distinct !DISubprogram(name: "dma_fence_array_signaled", scope: !3, file: !3, line: 103, type: !87, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!327 = !DILocalVariable(name: "v", arg: 1, scope: !328, file: !221, line: 23, type: !331)
!328 = distinct !DISubprogram(name: "arch_atomic_read", scope: !221, file: !221, line: 23, type: !329, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!329 = !DISubroutineType(types: !330)
!330 = !{!104, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!333 = !DILocation(line: 23, column: 61, scope: !328, inlinedAt: !334)
!334 = distinct !DILocation(line: 28, column: 9, scope: !335, inlinedAt: !336)
!335 = distinct !DISubprogram(name: "atomic_read", scope: !228, file: !228, line: 25, type: !329, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!336 = distinct !DILocation(line: 107, column: 9, scope: !326)
!337 = !DILocalVariable(name: "v", arg: 1, scope: !338, file: !241, line: 69, type: !244)
!338 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !241, file: !241, line: 69, type: !242, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!339 = !DILocation(line: 69, column: 73, scope: !338, inlinedAt: !340)
!340 = distinct !DILocation(line: 27, column: 2, scope: !335, inlinedAt: !336)
!341 = !DILocalVariable(name: "size", arg: 2, scope: !338, file: !241, line: 69, type: !247)
!342 = !DILocation(line: 69, column: 83, scope: !338, inlinedAt: !340)
!343 = !DILocalVariable(name: "v", arg: 1, scope: !335, file: !228, line: 25, type: !331)
!344 = !DILocation(line: 25, column: 29, scope: !335, inlinedAt: !336)
!345 = !DILocalVariable(name: "fence", arg: 1, scope: !326, file: !3, line: 103, type: !49)
!346 = !DILocation(line: 103, column: 56, scope: !326)
!347 = !DILocalVariable(name: "array", scope: !326, file: !3, line: 105, type: !150)
!348 = !DILocation(line: 105, column: 26, scope: !326)
!349 = !DILocation(line: 105, column: 53, scope: !326)
!350 = !DILocation(line: 105, column: 34, scope: !326)
!351 = !DILocation(line: 107, column: 22, scope: !326)
!352 = !DILocation(line: 107, column: 29, scope: !326)
!353 = !DILocation(line: 27, column: 25, scope: !335, inlinedAt: !336)
!354 = !DILocation(line: 71, column: 19, scope: !338, inlinedAt: !340)
!355 = !DILocation(line: 71, column: 22, scope: !338, inlinedAt: !340)
!356 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !340)
!357 = !DILocation(line: 72, column: 2, scope: !338, inlinedAt: !340)
!358 = !DILocation(line: 28, column: 26, scope: !335, inlinedAt: !336)
!359 = !DILocation(line: 29, column: 9, scope: !328, inlinedAt: !334)
!360 = !DILocation(line: 107, column: 42, scope: !326)
!361 = !DILocation(line: 107, column: 2, scope: !326)
!362 = distinct !DISubprogram(name: "dma_fence_array_release", scope: !3, file: !3, line: 110, type: !97, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!363 = !DILocalVariable(name: "fence", arg: 1, scope: !362, file: !3, line: 110, type: !49)
!364 = !DILocation(line: 110, column: 55, scope: !362)
!365 = !DILocalVariable(name: "array", scope: !362, file: !3, line: 112, type: !150)
!366 = !DILocation(line: 112, column: 26, scope: !362)
!367 = !DILocation(line: 112, column: 53, scope: !362)
!368 = !DILocation(line: 112, column: 34, scope: !362)
!369 = !DILocalVariable(name: "i", scope: !362, file: !3, line: 113, type: !7)
!370 = !DILocation(line: 113, column: 11, scope: !362)
!371 = !DILocation(line: 115, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !362, file: !3, line: 115, column: 2)
!373 = !DILocation(line: 115, column: 7, scope: !372)
!374 = !DILocation(line: 115, column: 14, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !3, line: 115, column: 2)
!376 = !DILocation(line: 115, column: 18, scope: !375)
!377 = !DILocation(line: 115, column: 25, scope: !375)
!378 = !DILocation(line: 115, column: 16, scope: !375)
!379 = !DILocation(line: 115, column: 2, scope: !372)
!380 = !DILocation(line: 116, column: 17, scope: !375)
!381 = !DILocation(line: 116, column: 24, scope: !375)
!382 = !DILocation(line: 116, column: 31, scope: !375)
!383 = !DILocation(line: 116, column: 3, scope: !375)
!384 = !DILocation(line: 115, column: 37, scope: !375)
!385 = !DILocation(line: 115, column: 2, scope: !375)
!386 = distinct !{!386, !379, !387}
!387 = !DILocation(line: 116, column: 33, scope: !372)
!388 = !DILocation(line: 118, column: 8, scope: !362)
!389 = !DILocation(line: 118, column: 15, scope: !362)
!390 = !DILocation(line: 118, column: 2, scope: !362)
!391 = !DILocation(line: 119, column: 17, scope: !362)
!392 = !DILocation(line: 119, column: 2, scope: !362)
!393 = !DILocation(line: 120, column: 1, scope: !362)
!394 = distinct !DISubprogram(name: "dma_fence_array_create", scope: !3, file: !3, line: 150, type: !395, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !68)
!395 = !DISubroutineType(types: !396)
!396 = !{!150, !104, !158, !128, !7, !75}
!397 = !DILocalVariable(name: "v", arg: 1, scope: !398, file: !221, line: 39, type: !224)
!398 = distinct !DISubprogram(name: "arch_atomic_set", scope: !221, file: !221, line: 39, type: !399, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !224, !104}
!401 = !DILocation(line: 39, column: 55, scope: !398, inlinedAt: !402)
!402 = distinct !DILocation(line: 46, column: 2, scope: !403, inlinedAt: !404)
!403 = distinct !DISubprogram(name: "atomic_set", scope: !228, file: !228, line: 43, type: !399, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!404 = distinct !DILocation(line: 170, column: 2, scope: !394)
!405 = !DILocalVariable(name: "i", arg: 2, scope: !398, file: !221, line: 39, type: !104)
!406 = !DILocation(line: 39, column: 62, scope: !398, inlinedAt: !402)
!407 = !DILocalVariable(name: "v", arg: 1, scope: !408, file: !241, line: 84, type: !244)
!408 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !241, file: !241, line: 84, type: !242, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!409 = !DILocation(line: 84, column: 74, scope: !408, inlinedAt: !410)
!410 = distinct !DILocation(line: 45, column: 2, scope: !403, inlinedAt: !404)
!411 = !DILocalVariable(name: "size", arg: 2, scope: !408, file: !241, line: 84, type: !247)
!412 = !DILocation(line: 84, column: 84, scope: !408, inlinedAt: !410)
!413 = !DILocalVariable(name: "v", arg: 1, scope: !403, file: !228, line: 43, type: !224)
!414 = !DILocation(line: 43, column: 22, scope: !403, inlinedAt: !404)
!415 = !DILocalVariable(name: "i", arg: 2, scope: !403, file: !228, line: 43, type: !104)
!416 = !DILocation(line: 43, column: 29, scope: !403, inlinedAt: !404)
!417 = !DILocalVariable(name: "lock", arg: 1, scope: !418, file: !419, line: 327, type: !53)
!418 = distinct !DISubprogram(name: "spinlock_check", scope: !419, file: !419, line: 327, type: !420, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!419 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!420 = !DISubroutineType(types: !421)
!421 = !{!422, !53}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !55, line: 29, baseType: !62)
!424 = !DILocation(line: 327, column: 67, scope: !418, inlinedAt: !425)
!425 = distinct !DILocation(line: 164, column: 2, scope: !426)
!426 = distinct !DILexicalBlock(scope: !394, file: !3, line: 164, column: 2)
!427 = !DILocalVariable(name: "num_fences", arg: 1, scope: !394, file: !3, line: 150, type: !104)
!428 = !DILocation(line: 150, column: 52, scope: !394)
!429 = !DILocalVariable(name: "fences", arg: 2, scope: !394, file: !3, line: 151, type: !158)
!430 = !DILocation(line: 151, column: 32, scope: !394)
!431 = !DILocalVariable(name: "context", arg: 3, scope: !394, file: !3, line: 152, type: !128)
!432 = !DILocation(line: 152, column: 17, scope: !394)
!433 = !DILocalVariable(name: "seqno", arg: 4, scope: !394, file: !3, line: 152, type: !7)
!434 = !DILocation(line: 152, column: 35, scope: !394)
!435 = !DILocalVariable(name: "signal_on_any", arg: 5, scope: !394, file: !3, line: 153, type: !75)
!436 = !DILocation(line: 153, column: 18, scope: !394)
!437 = !DILocalVariable(name: "array", scope: !394, file: !3, line: 155, type: !150)
!438 = !DILocation(line: 155, column: 26, scope: !394)
!439 = !DILocalVariable(name: "size", scope: !394, file: !3, line: 156, type: !247)
!440 = !DILocation(line: 156, column: 9, scope: !394)
!441 = !DILocation(line: 159, column: 10, scope: !394)
!442 = !DILocation(line: 159, column: 21, scope: !394)
!443 = !DILocation(line: 159, column: 7, scope: !394)
!444 = !DILocation(line: 160, column: 18, scope: !394)
!445 = !DILocation(line: 160, column: 10, scope: !394)
!446 = !DILocation(line: 160, column: 8, scope: !394)
!447 = !DILocation(line: 161, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !394, file: !3, line: 161, column: 6)
!449 = !DILocation(line: 161, column: 6, scope: !394)
!450 = !DILocation(line: 162, column: 3, scope: !448)
!451 = !DILocation(line: 164, column: 2, scope: !394)
!452 = !DILocation(line: 164, column: 2, scope: !426)
!453 = !DILocation(line: 329, column: 10, scope: !418, inlinedAt: !425)
!454 = !DILocation(line: 329, column: 16, scope: !418, inlinedAt: !425)
!455 = !DILocation(line: 165, column: 18, scope: !394)
!456 = !DILocation(line: 165, column: 25, scope: !394)
!457 = !DILocation(line: 165, column: 54, scope: !394)
!458 = !DILocation(line: 165, column: 61, scope: !394)
!459 = !DILocation(line: 166, column: 10, scope: !394)
!460 = !DILocation(line: 166, column: 19, scope: !394)
!461 = !DILocation(line: 165, column: 2, scope: !394)
!462 = !DILocation(line: 167, column: 17, scope: !394)
!463 = !DILocation(line: 167, column: 24, scope: !394)
!464 = !DILocation(line: 167, column: 2, scope: !394)
!465 = !DILocation(line: 169, column: 22, scope: !394)
!466 = !DILocation(line: 169, column: 2, scope: !394)
!467 = !DILocation(line: 169, column: 9, scope: !394)
!468 = !DILocation(line: 169, column: 20, scope: !394)
!469 = !DILocation(line: 170, column: 14, scope: !394)
!470 = !DILocation(line: 170, column: 21, scope: !394)
!471 = !DILocation(line: 170, column: 34, scope: !394)
!472 = !DILocation(line: 170, column: 54, scope: !394)
!473 = !DILocation(line: 45, column: 26, scope: !403, inlinedAt: !404)
!474 = !DILocation(line: 86, column: 20, scope: !408, inlinedAt: !410)
!475 = !DILocation(line: 86, column: 23, scope: !408, inlinedAt: !410)
!476 = !DILocation(line: 86, column: 2, scope: !408, inlinedAt: !410)
!477 = !DILocation(line: 87, column: 2, scope: !408, inlinedAt: !410)
!478 = !DILocation(line: 46, column: 18, scope: !403, inlinedAt: !404)
!479 = !DILocation(line: 46, column: 21, scope: !403, inlinedAt: !404)
!480 = !DILocation(line: 41, column: 2, scope: !481, inlinedAt: !402)
!481 = distinct !DILexicalBlock(scope: !398, file: !221, line: 41, column: 2)
!482 = !DILocation(line: 171, column: 18, scope: !394)
!483 = !DILocation(line: 171, column: 2, scope: !394)
!484 = !DILocation(line: 171, column: 9, scope: !394)
!485 = !DILocation(line: 171, column: 16, scope: !394)
!486 = !DILocation(line: 173, column: 2, scope: !394)
!487 = !DILocation(line: 173, column: 9, scope: !394)
!488 = !DILocation(line: 173, column: 14, scope: !394)
!489 = !DILocation(line: 173, column: 20, scope: !394)
!490 = !DILocation(line: 175, column: 9, scope: !394)
!491 = !DILocation(line: 175, column: 2, scope: !394)
!492 = !DILocation(line: 176, column: 1, scope: !394)
!493 = distinct !DISubprogram(name: "kzalloc", scope: !20, file: !20, line: 662, type: !494, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!494 = !DISubroutineType(types: !495)
!495 = !{!29, !247, !27}
!496 = !DILocalVariable(name: "s", arg: 1, scope: !497, file: !20, line: 445, type: !500)
!497 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !20, file: !20, line: 445, type: !498, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!498 = !DISubroutineType(types: !499)
!499 = !{!29, !500, !27, !247}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !502, line: 117, flags: DIFlagFwdDecl)
!502 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!503 = !DILocation(line: 445, column: 72, scope: !497, inlinedAt: !504)
!504 = distinct !DILocation(line: 552, column: 10, scope: !505, inlinedAt: !508)
!505 = distinct !DILexicalBlock(scope: !506, file: !20, line: 540, column: 34)
!506 = distinct !DILexicalBlock(scope: !507, file: !20, line: 540, column: 6)
!507 = distinct !DISubprogram(name: "kmalloc", scope: !20, file: !20, line: 538, type: !494, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!508 = distinct !DILocation(line: 664, column: 9, scope: !493)
!509 = !DILocalVariable(name: "flags", arg: 2, scope: !497, file: !20, line: 446, type: !27)
!510 = !DILocation(line: 446, column: 9, scope: !497, inlinedAt: !504)
!511 = !DILocalVariable(name: "size", arg: 3, scope: !497, file: !20, line: 446, type: !247)
!512 = !DILocation(line: 446, column: 23, scope: !497, inlinedAt: !504)
!513 = !DILocalVariable(name: "ret", scope: !497, file: !20, line: 448, type: !29)
!514 = !DILocation(line: 448, column: 8, scope: !497, inlinedAt: !504)
!515 = !DILocalVariable(name: "flags", arg: 1, scope: !516, file: !20, line: 318, type: !27)
!516 = distinct !DISubprogram(name: "kmalloc_type", scope: !20, file: !20, line: 318, type: !517, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!517 = !DISubroutineType(types: !518)
!518 = !{!19, !27}
!519 = !DILocation(line: 318, column: 67, scope: !516, inlinedAt: !520)
!520 = distinct !DILocation(line: 553, column: 20, scope: !505, inlinedAt: !508)
!521 = !DILocalVariable(name: "size", arg: 1, scope: !522, file: !20, line: 346, type: !247)
!522 = distinct !DISubprogram(name: "kmalloc_index", scope: !20, file: !20, line: 346, type: !523, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!523 = !DISubroutineType(types: !524)
!524 = !{!7, !247}
!525 = !DILocation(line: 346, column: 58, scope: !522, inlinedAt: !526)
!526 = distinct !DILocation(line: 547, column: 11, scope: !505, inlinedAt: !508)
!527 = !DILocalVariable(name: "size", arg: 1, scope: !528, file: !20, line: 472, type: !247)
!528 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !20, file: !20, line: 472, type: !529, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!529 = !DISubroutineType(types: !530)
!530 = !{!29, !247, !27, !7}
!531 = !DILocation(line: 472, column: 28, scope: !528, inlinedAt: !532)
!532 = distinct !DILocation(line: 481, column: 9, scope: !533, inlinedAt: !534)
!533 = distinct !DISubprogram(name: "kmalloc_large", scope: !20, file: !20, line: 478, type: !494, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!534 = distinct !DILocation(line: 545, column: 11, scope: !535, inlinedAt: !508)
!535 = distinct !DILexicalBlock(scope: !505, file: !20, line: 544, column: 7)
!536 = !DILocalVariable(name: "flags", arg: 2, scope: !528, file: !20, line: 472, type: !27)
!537 = !DILocation(line: 472, column: 40, scope: !528, inlinedAt: !532)
!538 = !DILocalVariable(name: "order", arg: 3, scope: !528, file: !20, line: 472, type: !7)
!539 = !DILocation(line: 472, column: 60, scope: !528, inlinedAt: !532)
!540 = !DILocalVariable(name: "size", arg: 1, scope: !533, file: !20, line: 478, type: !247)
!541 = !DILocation(line: 478, column: 51, scope: !533, inlinedAt: !534)
!542 = !DILocalVariable(name: "flags", arg: 2, scope: !533, file: !20, line: 478, type: !27)
!543 = !DILocation(line: 478, column: 63, scope: !533, inlinedAt: !534)
!544 = !DILocalVariable(name: "order", scope: !533, file: !20, line: 480, type: !7)
!545 = !DILocation(line: 480, column: 15, scope: !533, inlinedAt: !534)
!546 = !DILocalVariable(name: "size", arg: 1, scope: !507, file: !20, line: 538, type: !247)
!547 = !DILocation(line: 538, column: 45, scope: !507, inlinedAt: !508)
!548 = !DILocalVariable(name: "flags", arg: 2, scope: !507, file: !20, line: 538, type: !27)
!549 = !DILocation(line: 538, column: 57, scope: !507, inlinedAt: !508)
!550 = !DILocalVariable(name: "index", scope: !505, file: !20, line: 542, type: !7)
!551 = !DILocation(line: 542, column: 16, scope: !505, inlinedAt: !508)
!552 = !DILocalVariable(name: "size", arg: 1, scope: !493, file: !20, line: 662, type: !247)
!553 = !DILocation(line: 662, column: 36, scope: !493)
!554 = !DILocalVariable(name: "flags", arg: 2, scope: !493, file: !20, line: 662, type: !27)
!555 = !DILocation(line: 662, column: 48, scope: !493)
!556 = !DILocation(line: 664, column: 17, scope: !493)
!557 = !DILocation(line: 664, column: 23, scope: !493)
!558 = !DILocation(line: 664, column: 29, scope: !493)
!559 = !DILocation(line: 540, column: 27, scope: !506, inlinedAt: !508)
!560 = !DILocation(line: 540, column: 6, scope: !506, inlinedAt: !508)
!561 = !DILocation(line: 540, column: 6, scope: !507, inlinedAt: !508)
!562 = !DILocation(line: 544, column: 7, scope: !535, inlinedAt: !508)
!563 = !DILocation(line: 544, column: 12, scope: !535, inlinedAt: !508)
!564 = !DILocation(line: 544, column: 7, scope: !505, inlinedAt: !508)
!565 = !DILocation(line: 545, column: 25, scope: !535, inlinedAt: !508)
!566 = !DILocation(line: 545, column: 31, scope: !535, inlinedAt: !508)
!567 = !DILocation(line: 480, column: 33, scope: !533, inlinedAt: !534)
!568 = !DILocation(line: 480, column: 23, scope: !533, inlinedAt: !534)
!569 = !DILocation(line: 481, column: 29, scope: !533, inlinedAt: !534)
!570 = !DILocation(line: 481, column: 35, scope: !533, inlinedAt: !534)
!571 = !DILocation(line: 481, column: 42, scope: !533, inlinedAt: !534)
!572 = !DILocation(line: 474, column: 23, scope: !528, inlinedAt: !532)
!573 = !DILocation(line: 474, column: 29, scope: !528, inlinedAt: !532)
!574 = !DILocation(line: 474, column: 36, scope: !528, inlinedAt: !532)
!575 = !DILocation(line: 474, column: 9, scope: !528, inlinedAt: !532)
!576 = !DILocation(line: 545, column: 4, scope: !535, inlinedAt: !508)
!577 = !DILocation(line: 547, column: 25, scope: !505, inlinedAt: !508)
!578 = !DILocation(line: 348, column: 7, scope: !579, inlinedAt: !526)
!579 = distinct !DILexicalBlock(scope: !522, file: !20, line: 348, column: 6)
!580 = !DILocation(line: 348, column: 6, scope: !522, inlinedAt: !526)
!581 = !DILocation(line: 349, column: 3, scope: !579, inlinedAt: !526)
!582 = !DILocation(line: 351, column: 6, scope: !583, inlinedAt: !526)
!583 = distinct !DILexicalBlock(scope: !522, file: !20, line: 351, column: 6)
!584 = !DILocation(line: 351, column: 11, scope: !583, inlinedAt: !526)
!585 = !DILocation(line: 351, column: 6, scope: !522, inlinedAt: !526)
!586 = !DILocation(line: 352, column: 3, scope: !583, inlinedAt: !526)
!587 = !DILocation(line: 354, column: 32, scope: !588, inlinedAt: !526)
!588 = distinct !DILexicalBlock(scope: !522, file: !20, line: 354, column: 6)
!589 = !DILocation(line: 354, column: 37, scope: !588, inlinedAt: !526)
!590 = !DILocation(line: 354, column: 42, scope: !588, inlinedAt: !526)
!591 = !DILocation(line: 354, column: 45, scope: !588, inlinedAt: !526)
!592 = !DILocation(line: 354, column: 50, scope: !588, inlinedAt: !526)
!593 = !DILocation(line: 354, column: 6, scope: !522, inlinedAt: !526)
!594 = !DILocation(line: 355, column: 3, scope: !588, inlinedAt: !526)
!595 = !DILocation(line: 356, column: 32, scope: !596, inlinedAt: !526)
!596 = distinct !DILexicalBlock(scope: !522, file: !20, line: 356, column: 6)
!597 = !DILocation(line: 356, column: 37, scope: !596, inlinedAt: !526)
!598 = !DILocation(line: 356, column: 43, scope: !596, inlinedAt: !526)
!599 = !DILocation(line: 356, column: 46, scope: !596, inlinedAt: !526)
!600 = !DILocation(line: 356, column: 51, scope: !596, inlinedAt: !526)
!601 = !DILocation(line: 356, column: 6, scope: !522, inlinedAt: !526)
!602 = !DILocation(line: 357, column: 3, scope: !596, inlinedAt: !526)
!603 = !DILocation(line: 358, column: 6, scope: !604, inlinedAt: !526)
!604 = distinct !DILexicalBlock(scope: !522, file: !20, line: 358, column: 6)
!605 = !DILocation(line: 358, column: 11, scope: !604, inlinedAt: !526)
!606 = !DILocation(line: 358, column: 6, scope: !522, inlinedAt: !526)
!607 = !DILocation(line: 358, column: 26, scope: !604, inlinedAt: !526)
!608 = !DILocation(line: 359, column: 6, scope: !609, inlinedAt: !526)
!609 = distinct !DILexicalBlock(scope: !522, file: !20, line: 359, column: 6)
!610 = !DILocation(line: 359, column: 11, scope: !609, inlinedAt: !526)
!611 = !DILocation(line: 359, column: 6, scope: !522, inlinedAt: !526)
!612 = !DILocation(line: 359, column: 26, scope: !609, inlinedAt: !526)
!613 = !DILocation(line: 360, column: 6, scope: !614, inlinedAt: !526)
!614 = distinct !DILexicalBlock(scope: !522, file: !20, line: 360, column: 6)
!615 = !DILocation(line: 360, column: 11, scope: !614, inlinedAt: !526)
!616 = !DILocation(line: 360, column: 6, scope: !522, inlinedAt: !526)
!617 = !DILocation(line: 360, column: 26, scope: !614, inlinedAt: !526)
!618 = !DILocation(line: 361, column: 6, scope: !619, inlinedAt: !526)
!619 = distinct !DILexicalBlock(scope: !522, file: !20, line: 361, column: 6)
!620 = !DILocation(line: 361, column: 11, scope: !619, inlinedAt: !526)
!621 = !DILocation(line: 361, column: 6, scope: !522, inlinedAt: !526)
!622 = !DILocation(line: 361, column: 26, scope: !619, inlinedAt: !526)
!623 = !DILocation(line: 362, column: 6, scope: !624, inlinedAt: !526)
!624 = distinct !DILexicalBlock(scope: !522, file: !20, line: 362, column: 6)
!625 = !DILocation(line: 362, column: 11, scope: !624, inlinedAt: !526)
!626 = !DILocation(line: 362, column: 6, scope: !522, inlinedAt: !526)
!627 = !DILocation(line: 362, column: 26, scope: !624, inlinedAt: !526)
!628 = !DILocation(line: 363, column: 6, scope: !629, inlinedAt: !526)
!629 = distinct !DILexicalBlock(scope: !522, file: !20, line: 363, column: 6)
!630 = !DILocation(line: 363, column: 11, scope: !629, inlinedAt: !526)
!631 = !DILocation(line: 363, column: 6, scope: !522, inlinedAt: !526)
!632 = !DILocation(line: 363, column: 26, scope: !629, inlinedAt: !526)
!633 = !DILocation(line: 364, column: 6, scope: !634, inlinedAt: !526)
!634 = distinct !DILexicalBlock(scope: !522, file: !20, line: 364, column: 6)
!635 = !DILocation(line: 364, column: 11, scope: !634, inlinedAt: !526)
!636 = !DILocation(line: 364, column: 6, scope: !522, inlinedAt: !526)
!637 = !DILocation(line: 364, column: 26, scope: !634, inlinedAt: !526)
!638 = !DILocation(line: 365, column: 6, scope: !639, inlinedAt: !526)
!639 = distinct !DILexicalBlock(scope: !522, file: !20, line: 365, column: 6)
!640 = !DILocation(line: 365, column: 11, scope: !639, inlinedAt: !526)
!641 = !DILocation(line: 365, column: 6, scope: !522, inlinedAt: !526)
!642 = !DILocation(line: 365, column: 26, scope: !639, inlinedAt: !526)
!643 = !DILocation(line: 366, column: 6, scope: !644, inlinedAt: !526)
!644 = distinct !DILexicalBlock(scope: !522, file: !20, line: 366, column: 6)
!645 = !DILocation(line: 366, column: 11, scope: !644, inlinedAt: !526)
!646 = !DILocation(line: 366, column: 6, scope: !522, inlinedAt: !526)
!647 = !DILocation(line: 366, column: 26, scope: !644, inlinedAt: !526)
!648 = !DILocation(line: 367, column: 6, scope: !649, inlinedAt: !526)
!649 = distinct !DILexicalBlock(scope: !522, file: !20, line: 367, column: 6)
!650 = !DILocation(line: 367, column: 11, scope: !649, inlinedAt: !526)
!651 = !DILocation(line: 367, column: 6, scope: !522, inlinedAt: !526)
!652 = !DILocation(line: 367, column: 26, scope: !649, inlinedAt: !526)
!653 = !DILocation(line: 368, column: 6, scope: !654, inlinedAt: !526)
!654 = distinct !DILexicalBlock(scope: !522, file: !20, line: 368, column: 6)
!655 = !DILocation(line: 368, column: 11, scope: !654, inlinedAt: !526)
!656 = !DILocation(line: 368, column: 6, scope: !522, inlinedAt: !526)
!657 = !DILocation(line: 368, column: 26, scope: !654, inlinedAt: !526)
!658 = !DILocation(line: 369, column: 6, scope: !659, inlinedAt: !526)
!659 = distinct !DILexicalBlock(scope: !522, file: !20, line: 369, column: 6)
!660 = !DILocation(line: 369, column: 11, scope: !659, inlinedAt: !526)
!661 = !DILocation(line: 369, column: 6, scope: !522, inlinedAt: !526)
!662 = !DILocation(line: 369, column: 26, scope: !659, inlinedAt: !526)
!663 = !DILocation(line: 370, column: 6, scope: !664, inlinedAt: !526)
!664 = distinct !DILexicalBlock(scope: !522, file: !20, line: 370, column: 6)
!665 = !DILocation(line: 370, column: 11, scope: !664, inlinedAt: !526)
!666 = !DILocation(line: 370, column: 6, scope: !522, inlinedAt: !526)
!667 = !DILocation(line: 370, column: 26, scope: !664, inlinedAt: !526)
!668 = !DILocation(line: 371, column: 6, scope: !669, inlinedAt: !526)
!669 = distinct !DILexicalBlock(scope: !522, file: !20, line: 371, column: 6)
!670 = !DILocation(line: 371, column: 11, scope: !669, inlinedAt: !526)
!671 = !DILocation(line: 371, column: 6, scope: !522, inlinedAt: !526)
!672 = !DILocation(line: 371, column: 26, scope: !669, inlinedAt: !526)
!673 = !DILocation(line: 372, column: 6, scope: !674, inlinedAt: !526)
!674 = distinct !DILexicalBlock(scope: !522, file: !20, line: 372, column: 6)
!675 = !DILocation(line: 372, column: 11, scope: !674, inlinedAt: !526)
!676 = !DILocation(line: 372, column: 6, scope: !522, inlinedAt: !526)
!677 = !DILocation(line: 372, column: 26, scope: !674, inlinedAt: !526)
!678 = !DILocation(line: 373, column: 6, scope: !679, inlinedAt: !526)
!679 = distinct !DILexicalBlock(scope: !522, file: !20, line: 373, column: 6)
!680 = !DILocation(line: 373, column: 11, scope: !679, inlinedAt: !526)
!681 = !DILocation(line: 373, column: 6, scope: !522, inlinedAt: !526)
!682 = !DILocation(line: 373, column: 26, scope: !679, inlinedAt: !526)
!683 = !DILocation(line: 374, column: 6, scope: !684, inlinedAt: !526)
!684 = distinct !DILexicalBlock(scope: !522, file: !20, line: 374, column: 6)
!685 = !DILocation(line: 374, column: 11, scope: !684, inlinedAt: !526)
!686 = !DILocation(line: 374, column: 6, scope: !522, inlinedAt: !526)
!687 = !DILocation(line: 374, column: 26, scope: !684, inlinedAt: !526)
!688 = !DILocation(line: 375, column: 6, scope: !689, inlinedAt: !526)
!689 = distinct !DILexicalBlock(scope: !522, file: !20, line: 375, column: 6)
!690 = !DILocation(line: 375, column: 11, scope: !689, inlinedAt: !526)
!691 = !DILocation(line: 375, column: 6, scope: !522, inlinedAt: !526)
!692 = !DILocation(line: 375, column: 27, scope: !689, inlinedAt: !526)
!693 = !DILocation(line: 376, column: 6, scope: !694, inlinedAt: !526)
!694 = distinct !DILexicalBlock(scope: !522, file: !20, line: 376, column: 6)
!695 = !DILocation(line: 376, column: 11, scope: !694, inlinedAt: !526)
!696 = !DILocation(line: 376, column: 6, scope: !522, inlinedAt: !526)
!697 = !DILocation(line: 376, column: 32, scope: !694, inlinedAt: !526)
!698 = !DILocation(line: 377, column: 6, scope: !699, inlinedAt: !526)
!699 = distinct !DILexicalBlock(scope: !522, file: !20, line: 377, column: 6)
!700 = !DILocation(line: 377, column: 11, scope: !699, inlinedAt: !526)
!701 = !DILocation(line: 377, column: 6, scope: !522, inlinedAt: !526)
!702 = !DILocation(line: 377, column: 32, scope: !699, inlinedAt: !526)
!703 = !DILocation(line: 378, column: 6, scope: !704, inlinedAt: !526)
!704 = distinct !DILexicalBlock(scope: !522, file: !20, line: 378, column: 6)
!705 = !DILocation(line: 378, column: 11, scope: !704, inlinedAt: !526)
!706 = !DILocation(line: 378, column: 6, scope: !522, inlinedAt: !526)
!707 = !DILocation(line: 378, column: 32, scope: !704, inlinedAt: !526)
!708 = !DILocation(line: 379, column: 6, scope: !709, inlinedAt: !526)
!709 = distinct !DILexicalBlock(scope: !522, file: !20, line: 379, column: 6)
!710 = !DILocation(line: 379, column: 11, scope: !709, inlinedAt: !526)
!711 = !DILocation(line: 379, column: 6, scope: !522, inlinedAt: !526)
!712 = !DILocation(line: 379, column: 33, scope: !709, inlinedAt: !526)
!713 = !DILocation(line: 380, column: 6, scope: !714, inlinedAt: !526)
!714 = distinct !DILexicalBlock(scope: !522, file: !20, line: 380, column: 6)
!715 = !DILocation(line: 380, column: 11, scope: !714, inlinedAt: !526)
!716 = !DILocation(line: 380, column: 6, scope: !522, inlinedAt: !526)
!717 = !DILocation(line: 380, column: 33, scope: !714, inlinedAt: !526)
!718 = !DILocation(line: 381, column: 6, scope: !719, inlinedAt: !526)
!719 = distinct !DILexicalBlock(scope: !522, file: !20, line: 381, column: 6)
!720 = !DILocation(line: 381, column: 11, scope: !719, inlinedAt: !526)
!721 = !DILocation(line: 381, column: 6, scope: !522, inlinedAt: !526)
!722 = !DILocation(line: 381, column: 33, scope: !719, inlinedAt: !526)
!723 = !DILocation(line: 382, column: 2, scope: !724, inlinedAt: !526)
!724 = distinct !DILexicalBlock(scope: !725, file: !20, line: 382, column: 2)
!725 = distinct !DILexicalBlock(scope: !522, file: !20, line: 382, column: 2)
!726 = !{i32 -2144649358, i32 -2144649329, i32 -2144649283, i32 -2144649225, i32 -2144649171, i32 -2144649117, i32 -2144649062, i32 -2144649031}
!727 = !DILocation(line: 382, column: 2, scope: !728, inlinedAt: !526)
!728 = distinct !DILexicalBlock(scope: !729, file: !20, line: 382, column: 2)
!729 = distinct !DILexicalBlock(scope: !725, file: !20, line: 382, column: 2)
!730 = !{i32 -2144648588, i32 -2144648581, i32 -2144648527, i32 -2144648496, i32 -2144648466}
!731 = !DILocation(line: 382, column: 2, scope: !729, inlinedAt: !526)
!732 = !DILocation(line: 386, column: 1, scope: !522, inlinedAt: !526)
!733 = !DILocation(line: 547, column: 9, scope: !505, inlinedAt: !508)
!734 = !DILocation(line: 549, column: 8, scope: !735, inlinedAt: !508)
!735 = distinct !DILexicalBlock(scope: !505, file: !20, line: 549, column: 7)
!736 = !DILocation(line: 549, column: 7, scope: !505, inlinedAt: !508)
!737 = !DILocation(line: 550, column: 4, scope: !735, inlinedAt: !508)
!738 = !DILocation(line: 553, column: 33, scope: !505, inlinedAt: !508)
!739 = !DILocation(line: 325, column: 6, scope: !740, inlinedAt: !520)
!740 = distinct !DILexicalBlock(scope: !516, file: !20, line: 325, column: 6)
!741 = !DILocation(line: 325, column: 6, scope: !516, inlinedAt: !520)
!742 = !DILocation(line: 326, column: 3, scope: !740, inlinedAt: !520)
!743 = !DILocation(line: 332, column: 9, scope: !516, inlinedAt: !520)
!744 = !DILocation(line: 332, column: 15, scope: !516, inlinedAt: !520)
!745 = !DILocation(line: 332, column: 2, scope: !516, inlinedAt: !520)
!746 = !DILocation(line: 336, column: 1, scope: !516, inlinedAt: !520)
!747 = !DILocation(line: 553, column: 5, scope: !505, inlinedAt: !508)
!748 = !DILocation(line: 553, column: 41, scope: !505, inlinedAt: !508)
!749 = !DILocation(line: 554, column: 5, scope: !505, inlinedAt: !508)
!750 = !DILocation(line: 554, column: 12, scope: !505, inlinedAt: !508)
!751 = !DILocation(line: 448, column: 31, scope: !497, inlinedAt: !504)
!752 = !DILocation(line: 448, column: 34, scope: !497, inlinedAt: !504)
!753 = !DILocation(line: 448, column: 14, scope: !497, inlinedAt: !504)
!754 = !DILocation(line: 450, column: 22, scope: !497, inlinedAt: !504)
!755 = !DILocation(line: 450, column: 25, scope: !497, inlinedAt: !504)
!756 = !DILocation(line: 450, column: 30, scope: !497, inlinedAt: !504)
!757 = !DILocation(line: 450, column: 36, scope: !497, inlinedAt: !504)
!758 = !DILocation(line: 450, column: 8, scope: !497, inlinedAt: !504)
!759 = !DILocation(line: 450, column: 6, scope: !497, inlinedAt: !504)
!760 = !DILocation(line: 451, column: 9, scope: !497, inlinedAt: !504)
!761 = !DILocation(line: 552, column: 3, scope: !505, inlinedAt: !508)
!762 = !DILocation(line: 557, column: 19, scope: !507, inlinedAt: !508)
!763 = !DILocation(line: 557, column: 25, scope: !507, inlinedAt: !508)
!764 = !DILocation(line: 557, column: 9, scope: !507, inlinedAt: !508)
!765 = !DILocation(line: 557, column: 2, scope: !507, inlinedAt: !508)
!766 = !DILocation(line: 558, column: 1, scope: !507, inlinedAt: !508)
!767 = !DILocation(line: 664, column: 2, scope: !493)
!768 = distinct !DISubprogram(name: "init_irq_work", scope: !161, file: !161, line: 28, type: !769, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !195, !192}
!771 = !DILocation(line: 39, column: 55, scope: !398, inlinedAt: !772)
!772 = distinct !DILocation(line: 46, column: 2, scope: !403, inlinedAt: !773)
!773 = distinct !DILocation(line: 30, column: 2, scope: !768)
!774 = !DILocation(line: 39, column: 62, scope: !398, inlinedAt: !772)
!775 = !DILocation(line: 84, column: 74, scope: !408, inlinedAt: !776)
!776 = distinct !DILocation(line: 45, column: 2, scope: !403, inlinedAt: !773)
!777 = !DILocation(line: 84, column: 84, scope: !408, inlinedAt: !776)
!778 = !DILocation(line: 43, column: 22, scope: !403, inlinedAt: !773)
!779 = !DILocation(line: 43, column: 29, scope: !403, inlinedAt: !773)
!780 = !DILocalVariable(name: "work", arg: 1, scope: !768, file: !161, line: 28, type: !195)
!781 = !DILocation(line: 28, column: 37, scope: !768)
!782 = !DILocalVariable(name: "func", arg: 2, scope: !768, file: !161, line: 28, type: !192)
!783 = !DILocation(line: 28, column: 50, scope: !768)
!784 = !DILocation(line: 30, column: 14, scope: !768)
!785 = !DILocation(line: 30, column: 20, scope: !768)
!786 = !DILocation(line: 45, column: 26, scope: !403, inlinedAt: !773)
!787 = !DILocation(line: 86, column: 20, scope: !408, inlinedAt: !776)
!788 = !DILocation(line: 86, column: 23, scope: !408, inlinedAt: !776)
!789 = !DILocation(line: 86, column: 2, scope: !408, inlinedAt: !776)
!790 = !DILocation(line: 87, column: 2, scope: !408, inlinedAt: !776)
!791 = !DILocation(line: 46, column: 18, scope: !403, inlinedAt: !773)
!792 = !DILocation(line: 46, column: 21, scope: !403, inlinedAt: !773)
!793 = !DILocation(line: 41, column: 2, scope: !481, inlinedAt: !772)
!794 = !DILocation(line: 31, column: 15, scope: !768)
!795 = !DILocation(line: 31, column: 2, scope: !768)
!796 = !DILocation(line: 31, column: 8, scope: !768)
!797 = !DILocation(line: 31, column: 13, scope: !768)
!798 = !DILocation(line: 32, column: 1, scope: !768)
!799 = distinct !DISubprogram(name: "irq_dma_fence_array_work", scope: !3, file: !3, line: 45, type: !193, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!800 = !DILocalVariable(name: "wrk", arg: 1, scope: !799, file: !3, line: 45, type: !195)
!801 = !DILocation(line: 45, column: 55, scope: !799)
!802 = !DILocalVariable(name: "array", scope: !799, file: !3, line: 47, type: !150)
!803 = !DILocation(line: 47, column: 26, scope: !799)
!804 = !DILocalVariable(name: "__mptr", scope: !805, file: !3, line: 47, type: !29)
!805 = distinct !DILexicalBlock(scope: !799, file: !3, line: 47, column: 34)
!806 = !DILocation(line: 47, column: 34, scope: !805)
!807 = !DILocation(line: 47, column: 34, scope: !808)
!808 = distinct !DILexicalBlock(scope: !805, file: !3, line: 47, column: 34)
!809 = !DILocation(line: 49, column: 38, scope: !799)
!810 = !DILocation(line: 49, column: 2, scope: !799)
!811 = !DILocation(line: 51, column: 20, scope: !799)
!812 = !DILocation(line: 51, column: 27, scope: !799)
!813 = !DILocation(line: 51, column: 2, scope: !799)
!814 = !DILocation(line: 52, column: 17, scope: !799)
!815 = !DILocation(line: 52, column: 24, scope: !799)
!816 = !DILocation(line: 52, column: 2, scope: !799)
!817 = !DILocation(line: 53, column: 1, scope: !799)
!818 = distinct !DISubprogram(name: "dma_fence_match_context", scope: !3, file: !3, line: 188, type: !819, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !68)
!819 = !DISubroutineType(types: !820)
!820 = !{!75, !49, !128}
!821 = !DILocalVariable(name: "fence", arg: 1, scope: !818, file: !3, line: 188, type: !49)
!822 = !DILocation(line: 188, column: 48, scope: !818)
!823 = !DILocalVariable(name: "context", arg: 2, scope: !818, file: !3, line: 188, type: !128)
!824 = !DILocation(line: 188, column: 59, scope: !818)
!825 = !DILocalVariable(name: "array", scope: !818, file: !3, line: 190, type: !150)
!826 = !DILocation(line: 190, column: 26, scope: !818)
!827 = !DILocation(line: 190, column: 53, scope: !818)
!828 = !DILocation(line: 190, column: 34, scope: !818)
!829 = !DILocalVariable(name: "i", scope: !818, file: !3, line: 191, type: !7)
!830 = !DILocation(line: 191, column: 11, scope: !818)
!831 = !DILocation(line: 193, column: 26, scope: !832)
!832 = distinct !DILexicalBlock(scope: !818, file: !3, line: 193, column: 6)
!833 = !DILocation(line: 193, column: 7, scope: !832)
!834 = !DILocation(line: 193, column: 6, scope: !818)
!835 = !DILocation(line: 194, column: 10, scope: !832)
!836 = !DILocation(line: 194, column: 17, scope: !832)
!837 = !DILocation(line: 194, column: 28, scope: !832)
!838 = !DILocation(line: 194, column: 25, scope: !832)
!839 = !DILocation(line: 194, column: 3, scope: !832)
!840 = !DILocation(line: 196, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !818, file: !3, line: 196, column: 2)
!842 = !DILocation(line: 196, column: 7, scope: !841)
!843 = !DILocation(line: 196, column: 14, scope: !844)
!844 = distinct !DILexicalBlock(scope: !841, file: !3, line: 196, column: 2)
!845 = !DILocation(line: 196, column: 18, scope: !844)
!846 = !DILocation(line: 196, column: 25, scope: !844)
!847 = !DILocation(line: 196, column: 16, scope: !844)
!848 = !DILocation(line: 196, column: 2, scope: !841)
!849 = !DILocation(line: 197, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !3, line: 197, column: 7)
!851 = distinct !DILexicalBlock(scope: !844, file: !3, line: 196, column: 42)
!852 = !DILocation(line: 197, column: 14, scope: !850)
!853 = !DILocation(line: 197, column: 21, scope: !850)
!854 = !DILocation(line: 197, column: 25, scope: !850)
!855 = !DILocation(line: 197, column: 36, scope: !850)
!856 = !DILocation(line: 197, column: 33, scope: !850)
!857 = !DILocation(line: 197, column: 7, scope: !851)
!858 = !DILocation(line: 198, column: 4, scope: !850)
!859 = !DILocation(line: 199, column: 2, scope: !851)
!860 = !DILocation(line: 196, column: 38, scope: !844)
!861 = !DILocation(line: 196, column: 2, scope: !844)
!862 = distinct !{!862, !848, !863}
!863 = !DILocation(line: 199, column: 2, scope: !841)
!864 = !DILocation(line: 201, column: 2, scope: !818)
!865 = !DILocation(line: 202, column: 1, scope: !818)
!866 = distinct !DISubprogram(name: "to_dma_fence_array", scope: !32, file: !32, line: 69, type: !867, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!867 = !DISubroutineType(types: !868)
!868 = !{!150, !49}
!869 = !DILocalVariable(name: "fence", arg: 1, scope: !866, file: !32, line: 69, type: !49)
!870 = !DILocation(line: 69, column: 38, scope: !866)
!871 = !DILocation(line: 71, column: 6, scope: !872)
!872 = distinct !DILexicalBlock(scope: !866, file: !32, line: 71, column: 6)
!873 = !DILocation(line: 71, column: 13, scope: !872)
!874 = !DILocation(line: 71, column: 17, scope: !872)
!875 = !DILocation(line: 71, column: 6, scope: !866)
!876 = !DILocation(line: 72, column: 3, scope: !872)
!877 = !DILocalVariable(name: "__mptr", scope: !878, file: !32, line: 74, type: !29)
!878 = distinct !DILexicalBlock(scope: !866, file: !32, line: 74, column: 9)
!879 = !DILocation(line: 74, column: 9, scope: !878)
!880 = !DILocation(line: 74, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !32, line: 74, column: 9)
!882 = !DILocation(line: 74, column: 2, scope: !866)
!883 = !DILocation(line: 75, column: 1, scope: !866)
!884 = distinct !DISubprogram(name: "dma_fence_is_array", scope: !32, file: !32, line: 56, type: !87, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!885 = !DILocalVariable(name: "fence", arg: 1, scope: !884, file: !32, line: 56, type: !49)
!886 = !DILocation(line: 56, column: 57, scope: !884)
!887 = !DILocation(line: 58, column: 9, scope: !884)
!888 = !DILocation(line: 58, column: 16, scope: !884)
!889 = !DILocation(line: 58, column: 20, scope: !884)
!890 = !DILocation(line: 58, column: 2, scope: !884)
!891 = distinct !DISubprogram(name: "dma_fence_get", scope: !36, file: !36, line: 288, type: !892, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!892 = !DISubroutineType(types: !893)
!893 = !{!49, !49}
!894 = !DILocalVariable(name: "fence", arg: 1, scope: !891, file: !36, line: 288, type: !49)
!895 = !DILocation(line: 288, column: 65, scope: !891)
!896 = !DILocation(line: 290, column: 6, scope: !897)
!897 = distinct !DILexicalBlock(scope: !891, file: !36, line: 290, column: 6)
!898 = !DILocation(line: 290, column: 6, scope: !891)
!899 = !DILocation(line: 291, column: 13, scope: !897)
!900 = !DILocation(line: 291, column: 20, scope: !897)
!901 = !DILocation(line: 291, column: 3, scope: !897)
!902 = !DILocation(line: 292, column: 9, scope: !891)
!903 = !DILocation(line: 292, column: 2, scope: !891)
!904 = distinct !DISubprogram(name: "dma_fence_array_cb_func", scope: !3, file: !3, line: 55, type: !47, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!905 = !DILocation(line: 121, column: 64, scope: !220, inlinedAt: !906)
!906 = distinct !DILocation(line: 749, column: 9, scope: !227, inlinedAt: !907)
!907 = distinct !DILocation(line: 64, column: 6, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !3, line: 64, column: 6)
!909 = !DILocation(line: 123, column: 9, scope: !237, inlinedAt: !906)
!910 = !DILocation(line: 99, column: 79, scope: !240, inlinedAt: !911)
!911 = distinct !DILocation(line: 748, column: 2, scope: !227, inlinedAt: !907)
!912 = !DILocation(line: 99, column: 89, scope: !240, inlinedAt: !911)
!913 = !DILocation(line: 746, column: 31, scope: !227, inlinedAt: !907)
!914 = !DILocalVariable(name: "f", arg: 1, scope: !904, file: !3, line: 55, type: !49)
!915 = !DILocation(line: 55, column: 55, scope: !904)
!916 = !DILocalVariable(name: "cb", arg: 2, scope: !904, file: !3, line: 56, type: !148)
!917 = !DILocation(line: 56, column: 30, scope: !904)
!918 = !DILocalVariable(name: "array_cb", scope: !904, file: !3, line: 58, type: !30)
!919 = !DILocation(line: 58, column: 29, scope: !904)
!920 = !DILocalVariable(name: "__mptr", scope: !921, file: !3, line: 59, type: !29)
!921 = distinct !DILexicalBlock(scope: !904, file: !3, line: 59, column: 3)
!922 = !DILocation(line: 59, column: 3, scope: !921)
!923 = !DILocation(line: 59, column: 3, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !3, line: 59, column: 3)
!925 = !DILocalVariable(name: "array", scope: !904, file: !3, line: 60, type: !150)
!926 = !DILocation(line: 60, column: 26, scope: !904)
!927 = !DILocation(line: 60, column: 34, scope: !904)
!928 = !DILocation(line: 60, column: 44, scope: !904)
!929 = !DILocation(line: 62, column: 36, scope: !904)
!930 = !DILocation(line: 62, column: 43, scope: !904)
!931 = !DILocation(line: 62, column: 46, scope: !904)
!932 = !DILocation(line: 62, column: 2, scope: !904)
!933 = !DILocation(line: 64, column: 27, scope: !908)
!934 = !DILocation(line: 64, column: 34, scope: !908)
!935 = !DILocation(line: 748, column: 31, scope: !227, inlinedAt: !907)
!936 = !DILocation(line: 101, column: 20, scope: !240, inlinedAt: !911)
!937 = !DILocation(line: 101, column: 23, scope: !240, inlinedAt: !911)
!938 = !DILocation(line: 101, column: 2, scope: !240, inlinedAt: !911)
!939 = !DILocation(line: 102, column: 2, scope: !240, inlinedAt: !911)
!940 = !DILocation(line: 749, column: 34, scope: !227, inlinedAt: !907)
!941 = !DILocation(line: 64, column: 6, scope: !904)
!942 = !DILocation(line: 65, column: 19, scope: !908)
!943 = !DILocation(line: 65, column: 26, scope: !908)
!944 = !DILocation(line: 65, column: 3, scope: !908)
!945 = !DILocation(line: 67, column: 18, scope: !908)
!946 = !DILocation(line: 67, column: 25, scope: !908)
!947 = !DILocation(line: 67, column: 3, scope: !908)
!948 = !DILocation(line: 68, column: 1, scope: !904)
!949 = distinct !DISubprogram(name: "dma_fence_array_set_pending_error", scope: !3, file: !3, line: 28, type: !950, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !150, !104}
!952 = !DILocation(line: 84, column: 74, scope: !408, inlinedAt: !953)
!953 = distinct !DILocation(line: 36, column: 3, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 36, column: 3)
!955 = distinct !DILexicalBlock(scope: !949, file: !3, line: 35, column: 6)
!956 = !DILocation(line: 84, column: 84, scope: !408, inlinedAt: !953)
!957 = !DILocalVariable(name: "array", arg: 1, scope: !949, file: !3, line: 28, type: !150)
!958 = !DILocation(line: 28, column: 71, scope: !949)
!959 = !DILocalVariable(name: "error", arg: 2, scope: !949, file: !3, line: 29, type: !104)
!960 = !DILocation(line: 29, column: 16, scope: !949)
!961 = !DILocation(line: 35, column: 6, scope: !955)
!962 = !DILocation(line: 35, column: 6, scope: !949)
!963 = !DILocalVariable(name: "__ai_ptr", scope: !954, file: !3, line: 36, type: !964)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!965 = !DILocation(line: 36, column: 3, scope: !954)
!966 = !DILocation(line: 86, column: 20, scope: !408, inlinedAt: !953)
!967 = !DILocation(line: 86, column: 23, scope: !408, inlinedAt: !953)
!968 = !DILocation(line: 86, column: 2, scope: !408, inlinedAt: !953)
!969 = !DILocation(line: 87, column: 2, scope: !408, inlinedAt: !953)
!970 = !DILocalVariable(name: "__ret", scope: !971, file: !3, line: 36, type: !104)
!971 = distinct !DILexicalBlock(scope: !954, file: !3, line: 36, column: 3)
!972 = !DILocation(line: 36, column: 3, scope: !971)
!973 = !DILocalVariable(name: "__old", scope: !971, file: !3, line: 36, type: !104)
!974 = !DILocalVariable(name: "__new", scope: !971, file: !3, line: 36, type: !104)
!975 = !DILocalVariable(name: "__ptr", scope: !971, file: !3, line: 36, type: !196)
!976 = !{i32 -2144080664}
!977 = !DILocation(line: 36, column: 3, scope: !955)
!978 = !DILocation(line: 37, column: 1, scope: !949)
!979 = distinct !DISubprogram(name: "dma_fence_put", scope: !36, file: !36, line: 276, type: !97, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!980 = !DILocalVariable(name: "fence", arg: 1, scope: !979, file: !36, line: 276, type: !49)
!981 = !DILocation(line: 276, column: 52, scope: !979)
!982 = !DILocation(line: 278, column: 6, scope: !983)
!983 = distinct !DILexicalBlock(scope: !979, file: !36, line: 278, column: 6)
!984 = !DILocation(line: 278, column: 6, scope: !979)
!985 = !DILocation(line: 279, column: 13, scope: !983)
!986 = !DILocation(line: 279, column: 20, scope: !983)
!987 = !DILocation(line: 279, column: 3, scope: !983)
!988 = !DILocation(line: 280, column: 1, scope: !979)
!989 = distinct !DISubprogram(name: "dma_fence_array_clear_pending_error", scope: !3, file: !3, line: 39, type: !990, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !150}
!992 = !DILocation(line: 84, column: 74, scope: !408, inlinedAt: !993)
!993 = distinct !DILocation(line: 42, column: 2, scope: !994)
!994 = distinct !DILexicalBlock(scope: !989, file: !3, line: 42, column: 2)
!995 = !DILocation(line: 84, column: 84, scope: !408, inlinedAt: !993)
!996 = !DILocalVariable(name: "array", arg: 1, scope: !989, file: !3, line: 39, type: !150)
!997 = !DILocation(line: 39, column: 73, scope: !989)
!998 = !DILocalVariable(name: "__ai_ptr", scope: !994, file: !3, line: 42, type: !964)
!999 = !DILocation(line: 42, column: 2, scope: !994)
!1000 = !DILocation(line: 86, column: 20, scope: !408, inlinedAt: !993)
!1001 = !DILocation(line: 86, column: 23, scope: !408, inlinedAt: !993)
!1002 = !DILocation(line: 86, column: 2, scope: !408, inlinedAt: !993)
!1003 = !DILocation(line: 87, column: 2, scope: !408, inlinedAt: !993)
!1004 = !DILocalVariable(name: "__ret", scope: !1005, file: !3, line: 42, type: !104)
!1005 = distinct !DILexicalBlock(scope: !994, file: !3, line: 42, column: 2)
!1006 = !DILocation(line: 42, column: 2, scope: !1005)
!1007 = !DILocalVariable(name: "__old", scope: !1005, file: !3, line: 42, type: !104)
!1008 = !DILocalVariable(name: "__new", scope: !1005, file: !3, line: 42, type: !104)
!1009 = !DILocalVariable(name: "__ptr", scope: !1005, file: !3, line: 42, type: !196)
!1010 = !{i32 -2144078863}
!1011 = !DILocation(line: 43, column: 1, scope: !989)
!1012 = distinct !DISubprogram(name: "kref_get", scope: !136, file: !136, line: 43, type: !1013, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !1015}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!1016 = !DILocalVariable(name: "kref", arg: 1, scope: !1012, file: !136, line: 43, type: !1015)
!1017 = !DILocation(line: 43, column: 42, scope: !1012)
!1018 = !DILocation(line: 45, column: 16, scope: !1012)
!1019 = !DILocation(line: 45, column: 22, scope: !1012)
!1020 = !DILocation(line: 45, column: 2, scope: !1012)
!1021 = !DILocation(line: 46, column: 1, scope: !1012)
!1022 = distinct !DISubprogram(name: "refcount_inc", scope: !12, file: !12, line: 265, type: !1023, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1026 = !DILocalVariable(name: "r", arg: 1, scope: !1022, file: !12, line: 265, type: !1025)
!1027 = !DILocation(line: 265, column: 45, scope: !1022)
!1028 = !DILocation(line: 267, column: 17, scope: !1022)
!1029 = !DILocation(line: 267, column: 2, scope: !1022)
!1030 = !DILocation(line: 268, column: 1, scope: !1022)
!1031 = distinct !DISubprogram(name: "__refcount_inc", scope: !12, file: !12, line: 248, type: !1032, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !1025, !964}
!1034 = !DILocalVariable(name: "r", arg: 1, scope: !1031, file: !12, line: 248, type: !1025)
!1035 = !DILocation(line: 248, column: 47, scope: !1031)
!1036 = !DILocalVariable(name: "oldp", arg: 2, scope: !1031, file: !12, line: 248, type: !964)
!1037 = !DILocation(line: 248, column: 55, scope: !1031)
!1038 = !DILocation(line: 250, column: 20, scope: !1031)
!1039 = !DILocation(line: 250, column: 23, scope: !1031)
!1040 = !DILocation(line: 250, column: 2, scope: !1031)
!1041 = !DILocation(line: 251, column: 1, scope: !1031)
!1042 = distinct !DISubprogram(name: "__refcount_add", scope: !12, file: !12, line: 191, type: !1043, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !104, !1025, !964}
!1045 = !DILocalVariable(name: "i", arg: 1, scope: !1046, file: !221, line: 182, type: !104)
!1046 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !221, file: !221, line: 182, type: !1047, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!104, !104, !224}
!1049 = !DILocation(line: 182, column: 54, scope: !1046, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 143, column: 9, scope: !1051, inlinedAt: !1052)
!1051 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !228, file: !228, line: 140, type: !1047, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1052 = distinct !DILocation(line: 193, column: 12, scope: !1042)
!1053 = !DILocalVariable(name: "v", arg: 2, scope: !1046, file: !221, line: 182, type: !224)
!1054 = !DILocation(line: 182, column: 67, scope: !1046, inlinedAt: !1050)
!1055 = !DILocalVariable(name: "__ret", scope: !1056, file: !221, line: 184, type: !104)
!1056 = distinct !DILexicalBlock(scope: !1046, file: !221, line: 184, column: 9)
!1057 = !DILocation(line: 184, column: 9, scope: !1056, inlinedAt: !1050)
!1058 = !DILocation(line: 99, column: 79, scope: !240, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 142, column: 2, scope: !1051, inlinedAt: !1052)
!1060 = !DILocation(line: 99, column: 89, scope: !240, inlinedAt: !1059)
!1061 = !DILocalVariable(name: "i", arg: 1, scope: !1051, file: !228, line: 140, type: !104)
!1062 = !DILocation(line: 140, column: 30, scope: !1051, inlinedAt: !1052)
!1063 = !DILocalVariable(name: "v", arg: 2, scope: !1051, file: !228, line: 140, type: !224)
!1064 = !DILocation(line: 140, column: 43, scope: !1051, inlinedAt: !1052)
!1065 = !DILocalVariable(name: "i", arg: 1, scope: !1042, file: !12, line: 191, type: !104)
!1066 = !DILocation(line: 191, column: 39, scope: !1042)
!1067 = !DILocalVariable(name: "r", arg: 2, scope: !1042, file: !12, line: 191, type: !1025)
!1068 = !DILocation(line: 191, column: 54, scope: !1042)
!1069 = !DILocalVariable(name: "oldp", arg: 3, scope: !1042, file: !12, line: 191, type: !964)
!1070 = !DILocation(line: 191, column: 62, scope: !1042)
!1071 = !DILocalVariable(name: "old", scope: !1042, file: !12, line: 193, type: !104)
!1072 = !DILocation(line: 193, column: 6, scope: !1042)
!1073 = !DILocation(line: 193, column: 37, scope: !1042)
!1074 = !DILocation(line: 193, column: 41, scope: !1042)
!1075 = !DILocation(line: 193, column: 44, scope: !1042)
!1076 = !DILocation(line: 142, column: 31, scope: !1051, inlinedAt: !1052)
!1077 = !DILocation(line: 101, column: 20, scope: !240, inlinedAt: !1059)
!1078 = !DILocation(line: 101, column: 23, scope: !240, inlinedAt: !1059)
!1079 = !DILocation(line: 101, column: 2, scope: !240, inlinedAt: !1059)
!1080 = !DILocation(line: 102, column: 2, scope: !240, inlinedAt: !1059)
!1081 = !DILocation(line: 143, column: 39, scope: !1051, inlinedAt: !1052)
!1082 = !DILocation(line: 143, column: 42, scope: !1051, inlinedAt: !1052)
!1083 = !{i32 -2146450743}
!1084 = !DILocation(line: 195, column: 6, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1042, file: !12, line: 195, column: 6)
!1086 = !DILocation(line: 195, column: 6, scope: !1042)
!1087 = !DILocation(line: 196, column: 11, scope: !1085)
!1088 = !DILocation(line: 196, column: 4, scope: !1085)
!1089 = !DILocation(line: 196, column: 9, scope: !1085)
!1090 = !DILocation(line: 196, column: 3, scope: !1085)
!1091 = !DILocation(line: 198, column: 6, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1042, file: !12, line: 198, column: 6)
!1093 = !DILocation(line: 198, column: 6, scope: !1042)
!1094 = !DILocation(line: 199, column: 26, scope: !1092)
!1095 = !DILocation(line: 199, column: 3, scope: !1092)
!1096 = !DILocation(line: 200, column: 11, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !12, line: 200, column: 11)
!1098 = !DILocation(line: 200, column: 11, scope: !1092)
!1099 = !DILocation(line: 201, column: 26, scope: !1097)
!1100 = !DILocation(line: 201, column: 3, scope: !1097)
!1101 = !DILocation(line: 202, column: 1, scope: !1042)
!1102 = distinct !DISubprogram(name: "kasan_check_write", scope: !1103, file: !1103, line: 38, type: !1104, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1103 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!75, !244, !7}
!1106 = !DILocalVariable(name: "p", arg: 1, scope: !1102, file: !1103, line: 38, type: !244)
!1107 = !DILocation(line: 38, column: 59, scope: !1102)
!1108 = !DILocalVariable(name: "size", arg: 2, scope: !1102, file: !1103, line: 38, type: !7)
!1109 = !DILocation(line: 38, column: 75, scope: !1102)
!1110 = !DILocation(line: 40, column: 2, scope: !1102)
!1111 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1112, file: !1112, line: 178, type: !1113, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1112 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !244, !247, !104}
!1115 = !DILocalVariable(name: "ptr", arg: 1, scope: !1111, file: !1112, line: 178, type: !244)
!1116 = !DILocation(line: 178, column: 60, scope: !1111)
!1117 = !DILocalVariable(name: "size", arg: 2, scope: !1111, file: !1112, line: 178, type: !247)
!1118 = !DILocation(line: 178, column: 72, scope: !1111)
!1119 = !DILocalVariable(name: "type", arg: 3, scope: !1111, file: !1112, line: 179, type: !104)
!1120 = !DILocation(line: 179, column: 15, scope: !1111)
!1121 = !DILocation(line: 179, column: 23, scope: !1111)
!1122 = distinct !DISubprogram(name: "kref_put", scope: !136, file: !136, line: 62, type: !1123, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!104, !1015, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1126 = !DILocalVariable(name: "kref", arg: 1, scope: !1122, file: !136, line: 62, type: !1015)
!1127 = !DILocation(line: 62, column: 41, scope: !1122)
!1128 = !DILocalVariable(name: "release", arg: 2, scope: !1122, file: !136, line: 62, type: !1125)
!1129 = !DILocation(line: 62, column: 54, scope: !1122)
!1130 = !DILocation(line: 64, column: 29, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1122, file: !136, line: 64, column: 6)
!1132 = !DILocation(line: 64, column: 35, scope: !1131)
!1133 = !DILocation(line: 64, column: 6, scope: !1131)
!1134 = !DILocation(line: 64, column: 6, scope: !1122)
!1135 = !DILocation(line: 65, column: 3, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !136, line: 64, column: 46)
!1137 = !DILocation(line: 65, column: 11, scope: !1136)
!1138 = !DILocation(line: 66, column: 3, scope: !1136)
!1139 = !DILocation(line: 68, column: 2, scope: !1122)
!1140 = !DILocation(line: 69, column: 1, scope: !1122)
!1141 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !12, file: !12, line: 331, type: !1142, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!75, !1025}
!1144 = !DILocalVariable(name: "r", arg: 1, scope: !1141, file: !12, line: 331, type: !1025)
!1145 = !DILocation(line: 331, column: 67, scope: !1141)
!1146 = !DILocation(line: 333, column: 33, scope: !1141)
!1147 = !DILocation(line: 333, column: 9, scope: !1141)
!1148 = !DILocation(line: 333, column: 2, scope: !1141)
!1149 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !12, file: !12, line: 313, type: !1150, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!75, !1025, !964}
!1152 = !DILocalVariable(name: "r", arg: 1, scope: !1149, file: !12, line: 313, type: !1025)
!1153 = !DILocation(line: 313, column: 69, scope: !1149)
!1154 = !DILocalVariable(name: "oldp", arg: 2, scope: !1149, file: !12, line: 313, type: !964)
!1155 = !DILocation(line: 313, column: 77, scope: !1149)
!1156 = !DILocation(line: 315, column: 36, scope: !1149)
!1157 = !DILocation(line: 315, column: 39, scope: !1149)
!1158 = !DILocation(line: 315, column: 9, scope: !1149)
!1159 = !DILocation(line: 315, column: 2, scope: !1149)
!1160 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !12, file: !12, line: 270, type: !1161, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!75, !104, !1025, !964}
!1163 = !DILocalVariable(name: "i", arg: 1, scope: !1164, file: !221, line: 188, type: !104)
!1164 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !221, file: !221, line: 188, type: !1047, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1165 = !DILocation(line: 188, column: 54, scope: !1164, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 221, column: 9, scope: !1167, inlinedAt: !1168)
!1167 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !228, file: !228, line: 218, type: !1047, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1168 = distinct !DILocation(line: 272, column: 12, scope: !1160)
!1169 = !DILocalVariable(name: "v", arg: 2, scope: !1164, file: !221, line: 188, type: !224)
!1170 = !DILocation(line: 188, column: 67, scope: !1164, inlinedAt: !1166)
!1171 = !DILocalVariable(name: "__ret", scope: !1172, file: !221, line: 190, type: !104)
!1172 = distinct !DILexicalBlock(scope: !1164, file: !221, line: 190, column: 9)
!1173 = !DILocation(line: 190, column: 9, scope: !1172, inlinedAt: !1166)
!1174 = !DILocation(line: 99, column: 79, scope: !240, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 220, column: 2, scope: !1167, inlinedAt: !1168)
!1176 = !DILocation(line: 99, column: 89, scope: !240, inlinedAt: !1175)
!1177 = !DILocalVariable(name: "i", arg: 1, scope: !1167, file: !228, line: 218, type: !104)
!1178 = !DILocation(line: 218, column: 30, scope: !1167, inlinedAt: !1168)
!1179 = !DILocalVariable(name: "v", arg: 2, scope: !1167, file: !228, line: 218, type: !224)
!1180 = !DILocation(line: 218, column: 43, scope: !1167, inlinedAt: !1168)
!1181 = !DILocalVariable(name: "i", arg: 1, scope: !1160, file: !12, line: 270, type: !104)
!1182 = !DILocation(line: 270, column: 61, scope: !1160)
!1183 = !DILocalVariable(name: "r", arg: 2, scope: !1160, file: !12, line: 270, type: !1025)
!1184 = !DILocation(line: 270, column: 76, scope: !1160)
!1185 = !DILocalVariable(name: "oldp", arg: 3, scope: !1160, file: !12, line: 270, type: !964)
!1186 = !DILocation(line: 270, column: 84, scope: !1160)
!1187 = !DILocalVariable(name: "old", scope: !1160, file: !12, line: 272, type: !104)
!1188 = !DILocation(line: 272, column: 6, scope: !1160)
!1189 = !DILocation(line: 272, column: 37, scope: !1160)
!1190 = !DILocation(line: 272, column: 41, scope: !1160)
!1191 = !DILocation(line: 272, column: 44, scope: !1160)
!1192 = !DILocation(line: 220, column: 31, scope: !1167, inlinedAt: !1168)
!1193 = !DILocation(line: 101, column: 20, scope: !240, inlinedAt: !1175)
!1194 = !DILocation(line: 101, column: 23, scope: !240, inlinedAt: !1175)
!1195 = !DILocation(line: 101, column: 2, scope: !240, inlinedAt: !1175)
!1196 = !DILocation(line: 102, column: 2, scope: !240, inlinedAt: !1175)
!1197 = !DILocation(line: 221, column: 39, scope: !1167, inlinedAt: !1168)
!1198 = !DILocation(line: 221, column: 42, scope: !1167, inlinedAt: !1168)
!1199 = !{i32 -2146449391}
!1200 = !DILocation(line: 274, column: 6, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1160, file: !12, line: 274, column: 6)
!1202 = !DILocation(line: 274, column: 6, scope: !1160)
!1203 = !DILocation(line: 275, column: 11, scope: !1201)
!1204 = !DILocation(line: 275, column: 4, scope: !1201)
!1205 = !DILocation(line: 275, column: 9, scope: !1201)
!1206 = !DILocation(line: 275, column: 3, scope: !1201)
!1207 = !DILocation(line: 277, column: 6, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1160, file: !12, line: 277, column: 6)
!1209 = !DILocation(line: 277, column: 13, scope: !1208)
!1210 = !DILocation(line: 277, column: 10, scope: !1208)
!1211 = !DILocation(line: 277, column: 6, scope: !1160)
!1212 = !DILocation(line: 278, column: 3, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !12, line: 277, column: 16)
!1214 = !{i32 -2144602876}
!1215 = !DILocation(line: 279, column: 3, scope: !1213)
!1216 = !DILocation(line: 282, column: 6, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1160, file: !12, line: 282, column: 6)
!1218 = !DILocation(line: 282, column: 6, scope: !1160)
!1219 = !DILocation(line: 283, column: 26, scope: !1217)
!1220 = !DILocation(line: 283, column: 3, scope: !1217)
!1221 = !DILocation(line: 285, column: 2, scope: !1160)
!1222 = !DILocation(line: 286, column: 1, scope: !1160)
!1223 = distinct !DISubprogram(name: "kasan_check_read", scope: !1103, file: !1103, line: 34, type: !1104, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1224 = !DILocalVariable(name: "p", arg: 1, scope: !1223, file: !1103, line: 34, type: !244)
!1225 = !DILocation(line: 34, column: 58, scope: !1223)
!1226 = !DILocalVariable(name: "size", arg: 2, scope: !1223, file: !1103, line: 34, type: !7)
!1227 = !DILocation(line: 34, column: 74, scope: !1223)
!1228 = !DILocation(line: 36, column: 2, scope: !1223)
!1229 = distinct !DISubprogram(name: "get_order", scope: !1230, file: !1230, line: 29, type: !1231, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1230 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!104, !133}
!1233 = !DILocalVariable(name: "x", arg: 1, scope: !1234, file: !1235, line: 366, type: !129)
!1234 = distinct !DISubprogram(name: "fls64", scope: !1235, file: !1235, line: 366, type: !1236, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1235 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!104, !129}
!1238 = !DILocation(line: 366, column: 40, scope: !1234, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 46, column: 9, scope: !1229)
!1240 = !DILocalVariable(name: "bitpos", scope: !1234, file: !1235, line: 368, type: !104)
!1241 = !DILocation(line: 368, column: 6, scope: !1234, inlinedAt: !1239)
!1242 = !DILocalVariable(name: "size", arg: 1, scope: !1229, file: !1230, line: 29, type: !133)
!1243 = !DILocation(line: 29, column: 63, scope: !1229)
!1244 = !DILocation(line: 31, column: 27, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1229, file: !1230, line: 31, column: 6)
!1246 = !DILocation(line: 31, column: 6, scope: !1245)
!1247 = !DILocation(line: 31, column: 6, scope: !1229)
!1248 = !DILocation(line: 32, column: 8, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !1230, line: 32, column: 7)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !1230, line: 31, column: 34)
!1251 = !DILocation(line: 32, column: 7, scope: !1250)
!1252 = !DILocation(line: 33, column: 4, scope: !1249)
!1253 = !DILocation(line: 35, column: 7, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !1230, line: 35, column: 7)
!1255 = !DILocation(line: 35, column: 12, scope: !1254)
!1256 = !DILocation(line: 35, column: 7, scope: !1250)
!1257 = !DILocation(line: 36, column: 4, scope: !1254)
!1258 = !DILocation(line: 38, column: 10, scope: !1250)
!1259 = !DILocation(line: 38, column: 28, scope: !1250)
!1260 = !DILocation(line: 38, column: 41, scope: !1250)
!1261 = !DILocation(line: 38, column: 3, scope: !1250)
!1262 = !DILocation(line: 41, column: 6, scope: !1229)
!1263 = !DILocation(line: 42, column: 7, scope: !1229)
!1264 = !DILocation(line: 46, column: 15, scope: !1229)
!1265 = !DILocation(line: 374, column: 2, scope: !1234, inlinedAt: !1239)
!1266 = !DILocation(line: 376, column: 14, scope: !1234, inlinedAt: !1239)
!1267 = !{i32 305954}
!1268 = !DILocation(line: 377, column: 9, scope: !1234, inlinedAt: !1239)
!1269 = !DILocation(line: 377, column: 16, scope: !1234, inlinedAt: !1239)
!1270 = !DILocation(line: 46, column: 2, scope: !1229)
!1271 = !DILocation(line: 48, column: 1, scope: !1229)
!1272 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1273, file: !1273, line: 30, type: !1274, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1273 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!104, !128}
!1276 = !DILocation(line: 366, column: 40, scope: !1234, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 32, column: 9, scope: !1272)
!1278 = !DILocation(line: 368, column: 6, scope: !1234, inlinedAt: !1277)
!1279 = !DILocalVariable(name: "n", arg: 1, scope: !1272, file: !1273, line: 30, type: !128)
!1280 = !DILocation(line: 30, column: 21, scope: !1272)
!1281 = !DILocation(line: 32, column: 15, scope: !1272)
!1282 = !DILocation(line: 374, column: 2, scope: !1234, inlinedAt: !1277)
!1283 = !DILocation(line: 376, column: 14, scope: !1234, inlinedAt: !1277)
!1284 = !DILocation(line: 377, column: 9, scope: !1234, inlinedAt: !1277)
!1285 = !DILocation(line: 377, column: 16, scope: !1234, inlinedAt: !1277)
!1286 = !DILocation(line: 32, column: 18, scope: !1272)
!1287 = !DILocation(line: 32, column: 2, scope: !1272)
!1288 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1289, file: !1289, line: 137, type: !1290, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !68)
!1289 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!29, !500, !1292, !247, !27}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1294 = !DILocalVariable(name: "s", arg: 1, scope: !1288, file: !1289, line: 137, type: !500)
!1295 = !DILocation(line: 137, column: 54, scope: !1288)
!1296 = !DILocalVariable(name: "object", arg: 2, scope: !1288, file: !1289, line: 137, type: !1292)
!1297 = !DILocation(line: 137, column: 69, scope: !1288)
!1298 = !DILocalVariable(name: "size", arg: 3, scope: !1288, file: !1289, line: 138, type: !247)
!1299 = !DILocation(line: 138, column: 12, scope: !1288)
!1300 = !DILocalVariable(name: "flags", arg: 4, scope: !1288, file: !1289, line: 138, type: !27)
!1301 = !DILocation(line: 138, column: 24, scope: !1288)
!1302 = !DILocation(line: 140, column: 17, scope: !1288)
!1303 = !DILocation(line: 140, column: 2, scope: !1288)
