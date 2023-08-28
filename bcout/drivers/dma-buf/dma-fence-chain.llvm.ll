; ModuleID = '../bcout/drivers/dma-buf/dma-fence-chain.llvm.bc'
source_filename = "drivers/dma-buf/dma-fence-chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.dma_fence_ops = type { i8, i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i64 (%struct.dma_fence*, i1, i64)*, void (%struct.dma_fence*)*, void (%struct.dma_fence*, i8*, i32)*, void (%struct.dma_fence*, i8*, i32)* }
%struct.dma_fence = type { %struct.spinlock*, %struct.dma_fence_ops*, %union.anon.0, i64, i64, i64, %struct.kref, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%union.anon.0 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dma_fence_chain = type { %struct.dma_fence, %struct.spinlock, %struct.dma_fence*, i64, %struct.dma_fence*, %struct.dma_fence_cb, %struct.irq_work }
%struct.dma_fence_cb = type { %struct.list_head, void (%struct.dma_fence*, %struct.dma_fence_cb*)* }
%struct.irq_work = type { %union.anon.1, void (%struct.irq_work*)* }
%union.anon.1 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.2 = type { i32 }
%struct.anon = type { %struct.llist_node, %struct.atomic_t }

@dma_fence_chain_ops = dso_local constant %struct.dma_fence_ops { i8 1, i8* (%struct.dma_fence*)* @dma_fence_chain_get_driver_name, i8* (%struct.dma_fence*)* @dma_fence_chain_get_timeline_name, i1 (%struct.dma_fence*)* @dma_fence_chain_enable_signaling, i1 (%struct.dma_fence*)* @dma_fence_chain_signaled, i64 (%struct.dma_fence*, i1, i64)* null, void (%struct.dma_fence*)* @dma_fence_chain_release, void (%struct.dma_fence*, i8*, i32)* null, void (%struct.dma_fence*, i8*, i32)* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [16 x i8] c"dma_fence_chain\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unbound\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dma_fence* @dma_fence_chain_walk(%struct.dma_fence* %fence) #0 !dbg !213 {
entry:
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !216, metadata !DIExpression()), !dbg !228
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !232, metadata !DIExpression()), !dbg !233
  %retval = alloca %struct.dma_fence*, align 8
  %fence.addr = alloca %struct.dma_fence*, align 8
  %chain = alloca %struct.dma_fence_chain*, align 8
  %prev_chain = alloca %struct.dma_fence_chain*, align 8
  %prev = alloca %struct.dma_fence*, align 8
  %replacement = alloca %struct.dma_fence*, align 8
  %tmp = alloca %struct.dma_fence*, align 8
  %__ai_ptr = alloca %struct.dma_fence**, align 8
  %tmp16 = alloca %struct.dma_fence*, align 8
  %__ret = alloca %struct.dma_fence*, align 8
  %__old = alloca %struct.dma_fence*, align 8
  %__new = alloca %struct.dma_fence*, align 8
  %__ptr = alloca i64*, align 8
  %tmp17 = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata %struct.dma_fence_chain** %chain, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata %struct.dma_fence_chain** %prev_chain, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %prev, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %replacement, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %tmp, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !246
  %call = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %0) #5, !dbg !247
  store %struct.dma_fence_chain* %call, %struct.dma_fence_chain** %chain, align 8, !dbg !248
  %1 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !249
  %tobool = icmp ne %struct.dma_fence_chain* %1, null, !dbg !249
  br i1 %tobool, label %if.end, label %if.then, !dbg !251

if.then:                                          ; preds = %entry
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !252
  call void @dma_fence_put(%struct.dma_fence* %2) #5, !dbg !254
  store %struct.dma_fence* null, %struct.dma_fence** %retval, align 8, !dbg !255
  br label %return, !dbg !255

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !256

while.cond:                                       ; preds = %if.end20, %if.end
  %3 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !257
  %call1 = call %struct.dma_fence* @dma_fence_chain_get_prev(%struct.dma_fence_chain* %3) #5, !dbg !258
  store %struct.dma_fence* %call1, %struct.dma_fence** %prev, align 8, !dbg !259
  %tobool2 = icmp ne %struct.dma_fence* %call1, null, !dbg !256
  br i1 %tobool2, label %while.body, label %while.end, !dbg !256

while.body:                                       ; preds = %while.cond
  %4 = load %struct.dma_fence*, %struct.dma_fence** %prev, align 8, !dbg !260
  %call3 = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %4) #5, !dbg !261
  store %struct.dma_fence_chain* %call3, %struct.dma_fence_chain** %prev_chain, align 8, !dbg !262
  %5 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %prev_chain, align 8, !dbg !263
  %tobool4 = icmp ne %struct.dma_fence_chain* %5, null, !dbg !263
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !265

if.then5:                                         ; preds = %while.body
  %6 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %prev_chain, align 8, !dbg !266
  %fence6 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %6, i32 0, i32 4, !dbg !269
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence6, align 8, !dbg !269
  %call7 = call zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %7) #5, !dbg !270
  br i1 %call7, label %if.end9, label %if.then8, !dbg !271

if.then8:                                         ; preds = %if.then5
  br label %while.end, !dbg !272

if.end9:                                          ; preds = %if.then5
  %8 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %prev_chain, align 8, !dbg !273
  %call10 = call %struct.dma_fence* @dma_fence_chain_get_prev(%struct.dma_fence_chain* %8) #5, !dbg !274
  store %struct.dma_fence* %call10, %struct.dma_fence** %replacement, align 8, !dbg !275
  br label %if.end14, !dbg !276

if.else:                                          ; preds = %while.body
  %9 = load %struct.dma_fence*, %struct.dma_fence** %prev, align 8, !dbg !277
  %call11 = call zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %9) #5, !dbg !280
  br i1 %call11, label %if.end13, label %if.then12, !dbg !281

if.then12:                                        ; preds = %if.else
  br label %while.end, !dbg !282

if.end13:                                         ; preds = %if.else
  store %struct.dma_fence* null, %struct.dma_fence** %replacement, align 8, !dbg !283
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end9
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %__ai_ptr, metadata !284, metadata !DIExpression()), !dbg !285
  %10 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !285
  %prev15 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %10, i32 0, i32 2, !dbg !285
  store %struct.dma_fence** %prev15, %struct.dma_fence*** %__ai_ptr, align 8, !dbg !285
  %11 = load %struct.dma_fence**, %struct.dma_fence*** %__ai_ptr, align 8, !dbg !285
  %12 = bitcast %struct.dma_fence** %11 to i8*, !dbg !285
  store i8* %12, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %13 = load i8*, i8** %v.addr.i, align 8, !dbg !286
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !287
  %conv.i = trunc i64 %14 to i32, !dbg !287
  %call.i = call zeroext i1 @kasan_check_write(i8* %13, i32 %conv.i) #6, !dbg !288
  %15 = load i8*, i8** %v.addr.i, align 8, !dbg !289
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !289
  call void @kcsan_check_access(i8* %15, i64 %16, i32 5) #6, !dbg !289
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %__ret, metadata !290, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %__old, metadata !293, metadata !DIExpression()), !dbg !292
  %17 = load %struct.dma_fence*, %struct.dma_fence** %prev, align 8, !dbg !292
  store %struct.dma_fence* %17, %struct.dma_fence** %__old, align 8, !dbg !292
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %__new, metadata !294, metadata !DIExpression()), !dbg !292
  %18 = load %struct.dma_fence*, %struct.dma_fence** %replacement, align 8, !dbg !292
  store %struct.dma_fence* %18, %struct.dma_fence** %__new, align 8, !dbg !292
  call void @llvm.dbg.declare(metadata i64** %__ptr, metadata !295, metadata !DIExpression()), !dbg !292
  %19 = load %struct.dma_fence**, %struct.dma_fence*** %__ai_ptr, align 8, !dbg !292
  %20 = bitcast %struct.dma_fence** %19 to i64*, !dbg !292
  store i64* %20, i64** %__ptr, align 8, !dbg !292
  %21 = load i64*, i64** %__ptr, align 8, !dbg !292
  %22 = load %struct.dma_fence*, %struct.dma_fence** %__new, align 8, !dbg !292
  %23 = load %struct.dma_fence*, %struct.dma_fence** %__old, align 8, !dbg !292
  %24 = call %struct.dma_fence* asm sideeffect "cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %21, %struct.dma_fence* %22, %struct.dma_fence* %23, i64* %21) #7, !dbg !292, !srcloc !296
  store %struct.dma_fence* %24, %struct.dma_fence** %__ret, align 8, !dbg !292
  %25 = load %struct.dma_fence*, %struct.dma_fence** %__ret, align 8, !dbg !292
  store %struct.dma_fence* %25, %struct.dma_fence** %tmp17, align 8, !dbg !292
  %26 = load %struct.dma_fence*, %struct.dma_fence** %tmp17, align 8, !dbg !292
  store %struct.dma_fence* %26, %struct.dma_fence** %tmp16, align 8, !dbg !285
  %27 = load %struct.dma_fence*, %struct.dma_fence** %tmp16, align 8, !dbg !285
  store %struct.dma_fence* %27, %struct.dma_fence** %tmp, align 8, !dbg !297
  %28 = load %struct.dma_fence*, %struct.dma_fence** %tmp, align 8, !dbg !298
  %29 = load %struct.dma_fence*, %struct.dma_fence** %prev, align 8, !dbg !300
  %cmp = icmp eq %struct.dma_fence* %28, %29, !dbg !301
  br i1 %cmp, label %if.then18, label %if.else19, !dbg !302

if.then18:                                        ; preds = %if.end14
  %30 = load %struct.dma_fence*, %struct.dma_fence** %tmp, align 8, !dbg !303
  call void @dma_fence_put(%struct.dma_fence* %30) #5, !dbg !304
  br label %if.end20, !dbg !304

if.else19:                                        ; preds = %if.end14
  %31 = load %struct.dma_fence*, %struct.dma_fence** %replacement, align 8, !dbg !305
  call void @dma_fence_put(%struct.dma_fence* %31) #5, !dbg !306
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  %32 = load %struct.dma_fence*, %struct.dma_fence** %prev, align 8, !dbg !307
  call void @dma_fence_put(%struct.dma_fence* %32) #5, !dbg !308
  br label %while.cond, !dbg !256, !llvm.loop !309

while.end:                                        ; preds = %if.then12, %if.then8, %while.cond
  %33 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !311
  call void @dma_fence_put(%struct.dma_fence* %33) #5, !dbg !312
  %34 = load %struct.dma_fence*, %struct.dma_fence** %prev, align 8, !dbg !313
  store %struct.dma_fence* %34, %struct.dma_fence** %retval, align 8, !dbg !314
  br label %return, !dbg !314

return:                                           ; preds = %while.end, %if.then
  %35 = load %struct.dma_fence*, %struct.dma_fence** %retval, align 8, !dbg !315
  ret %struct.dma_fence* %35, !dbg !315
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %fence) #0 !dbg !316 {
entry:
  %retval = alloca %struct.dma_fence_chain*, align 8
  %fence.addr = alloca %struct.dma_fence*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dma_fence_chain*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !321
  %tobool = icmp ne %struct.dma_fence* %0, null, !dbg !321
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !323

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !324
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 1, !dbg !325
  %2 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !325
  %cmp = icmp ne %struct.dma_fence_ops* %2, @dma_fence_chain_ops, !dbg !326
  br i1 %cmp, label %if.then, label %if.end, !dbg !327

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.dma_fence_chain* null, %struct.dma_fence_chain** %retval, align 8, !dbg !328
  br label %return, !dbg !328

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !329, metadata !DIExpression()), !dbg !331
  %3 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !331
  %4 = bitcast %struct.dma_fence* %3 to i8*, !dbg !331
  store i8* %4, i8** %__mptr, align 8, !dbg !331
  br label %do.body, !dbg !331

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !332

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !331
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !331
  %6 = bitcast i8* %add.ptr to %struct.dma_fence_chain*, !dbg !331
  store %struct.dma_fence_chain* %6, %struct.dma_fence_chain** %tmp, align 8, !dbg !332
  %7 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %tmp, align 8, !dbg !331
  store %struct.dma_fence_chain* %7, %struct.dma_fence_chain** %retval, align 8, !dbg !334
  br label %return, !dbg !334

return:                                           ; preds = %do.end, %if.then
  %8 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %retval, align 8, !dbg !335
  ret %struct.dma_fence_chain* %8, !dbg !335
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_put(%struct.dma_fence* %fence) #0 !dbg !336 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !339
  %tobool = icmp ne %struct.dma_fence* %0, null, !dbg !339
  br i1 %tobool, label %if.then, label %if.end, !dbg !341

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !342
  %refcount = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 6, !dbg !343
  %call = call i32 @kref_put(%struct.kref* %refcount, void (%struct.kref*)* @dma_fence_release) #5, !dbg !344
  br label %if.end, !dbg !344

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !345
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence* @dma_fence_chain_get_prev(%struct.dma_fence_chain* %chain) #0 !dbg !346 {
entry:
  %chain.addr = alloca %struct.dma_fence_chain*, align 8
  %prev = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence_chain* %chain, %struct.dma_fence_chain** %chain.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence_chain** %chain.addr, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %prev, metadata !351, metadata !DIExpression()), !dbg !352
  call void @__rcu_read_lock() #6, !dbg !353
  %0 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain.addr, align 8, !dbg !359
  %prev1 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %0, i32 0, i32 2, !dbg !360
  %call = call %struct.dma_fence* @dma_fence_get_rcu_safe(%struct.dma_fence** %prev1) #5, !dbg !361
  store %struct.dma_fence* %call, %struct.dma_fence** %prev, align 8, !dbg !362
  call void @rcu_read_unlock() #5, !dbg !363
  %1 = load %struct.dma_fence*, %struct.dma_fence** %prev, align 8, !dbg !364
  ret %struct.dma_fence* %1, !dbg !365
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %fence) #0 !dbg !366 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !369
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 5, !dbg !371
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags) #5, !dbg !372
  br i1 %call, label %if.then, label %if.end, !dbg !373

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !374
  br label %return, !dbg !374

if.end:                                           ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !375
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 1, !dbg !377
  %2 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !377
  %signaled = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %2, i32 0, i32 4, !dbg !378
  %3 = load i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)** %signaled, align 8, !dbg !378
  %tobool = icmp ne i1 (%struct.dma_fence*)* %3, null, !dbg !375
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !379

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !380
  %ops1 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %4, i32 0, i32 1, !dbg !381
  %5 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops1, align 8, !dbg !381
  %signaled2 = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %5, i32 0, i32 4, !dbg !382
  %6 = load i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)** %signaled2, align 8, !dbg !382
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !383
  %call3 = call zeroext i1 %6(%struct.dma_fence* %7) #5, !dbg !380
  br i1 %call3, label %if.then4, label %if.end6, !dbg !384

if.then4:                                         ; preds = %land.lhs.true
  %8 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !385
  %call5 = call i32 @dma_fence_signal(%struct.dma_fence* %8) #5, !dbg !387
  store i1 true, i1* %retval, align 1, !dbg !388
  br label %return, !dbg !388

if.end6:                                          ; preds = %land.lhs.true, %if.end
  store i1 false, i1* %retval, align 1, !dbg !389
  br label %return, !dbg !389

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !390
  ret i1 %9, !dbg !390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dma_fence_chain_find_seqno(%struct.dma_fence** %pfence, i64 %seqno) #0 !dbg !391 {
entry:
  %retval = alloca i32, align 4
  %pfence.addr = alloca %struct.dma_fence**, align 8
  %seqno.addr = alloca i64, align 8
  %chain = alloca %struct.dma_fence_chain*, align 8
  store %struct.dma_fence** %pfence, %struct.dma_fence*** %pfence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %pfence.addr, metadata !395, metadata !DIExpression()), !dbg !396
  store i64 %seqno, i64* %seqno.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %seqno.addr, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata %struct.dma_fence_chain** %chain, metadata !399, metadata !DIExpression()), !dbg !400
  %0 = load i64, i64* %seqno.addr, align 8, !dbg !401
  %tobool = icmp ne i64 %0, 0, !dbg !401
  br i1 %tobool, label %if.end, label %if.then, !dbg !403

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !404
  br label %return, !dbg !404

if.end:                                           ; preds = %entry
  %1 = load %struct.dma_fence**, %struct.dma_fence*** %pfence.addr, align 8, !dbg !405
  %2 = load %struct.dma_fence*, %struct.dma_fence** %1, align 8, !dbg !406
  %call = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %2) #5, !dbg !407
  store %struct.dma_fence_chain* %call, %struct.dma_fence_chain** %chain, align 8, !dbg !408
  %3 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !409
  %tobool1 = icmp ne %struct.dma_fence_chain* %3, null, !dbg !409
  br i1 %tobool1, label %lor.lhs.false, label %if.then3, !dbg !411

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !412
  %base = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %4, i32 0, i32 0, !dbg !413
  %seqno2 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %base, i32 0, i32 4, !dbg !414
  %5 = load i64, i64* %seqno2, align 8, !dbg !414
  %6 = load i64, i64* %seqno.addr, align 8, !dbg !415
  %cmp = icmp ult i64 %5, %6, !dbg !416
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !417

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !418
  br label %return, !dbg !418

if.end4:                                          ; preds = %lor.lhs.false
  %7 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !419
  %base5 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %7, i32 0, i32 0, !dbg !419
  %call6 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %base5) #5, !dbg !419
  %8 = load %struct.dma_fence**, %struct.dma_fence*** %pfence.addr, align 8, !dbg !419
  store %struct.dma_fence* %call6, %struct.dma_fence** %8, align 8, !dbg !419
  br label %for.cond, !dbg !419

for.cond:                                         ; preds = %for.inc, %if.end4
  %9 = load %struct.dma_fence**, %struct.dma_fence*** %pfence.addr, align 8, !dbg !421
  %10 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8, !dbg !421
  %tobool7 = icmp ne %struct.dma_fence* %10, null, !dbg !419
  br i1 %tobool7, label %for.body, label %for.end, !dbg !419

for.body:                                         ; preds = %for.cond
  %11 = load %struct.dma_fence**, %struct.dma_fence*** %pfence.addr, align 8, !dbg !423
  %12 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8, !dbg !426
  %context = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %12, i32 0, i32 3, !dbg !427
  %13 = load i64, i64* %context, align 8, !dbg !427
  %14 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !428
  %base8 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %14, i32 0, i32 0, !dbg !429
  %context9 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %base8, i32 0, i32 3, !dbg !430
  %15 = load i64, i64* %context9, align 8, !dbg !430
  %cmp10 = icmp ne i64 %13, %15, !dbg !431
  br i1 %cmp10, label %if.then14, label %lor.lhs.false11, !dbg !432

lor.lhs.false11:                                  ; preds = %for.body
  %16 = load %struct.dma_fence**, %struct.dma_fence*** %pfence.addr, align 8, !dbg !433
  %17 = load %struct.dma_fence*, %struct.dma_fence** %16, align 8, !dbg !434
  %call12 = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %17) #5, !dbg !435
  %prev_seqno = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %call12, i32 0, i32 3, !dbg !436
  %18 = load i64, i64* %prev_seqno, align 8, !dbg !436
  %19 = load i64, i64* %seqno.addr, align 8, !dbg !437
  %cmp13 = icmp ult i64 %18, %19, !dbg !438
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !439

if.then14:                                        ; preds = %lor.lhs.false11, %for.body
  br label %for.end, !dbg !440

if.end15:                                         ; preds = %lor.lhs.false11
  br label %for.inc, !dbg !441

for.inc:                                          ; preds = %if.end15
  %20 = load %struct.dma_fence**, %struct.dma_fence*** %pfence.addr, align 8, !dbg !421
  %21 = load %struct.dma_fence*, %struct.dma_fence** %20, align 8, !dbg !421
  %call16 = call %struct.dma_fence* @dma_fence_chain_walk(%struct.dma_fence* %21) #5, !dbg !421
  %22 = load %struct.dma_fence**, %struct.dma_fence*** %pfence.addr, align 8, !dbg !421
  store %struct.dma_fence* %call16, %struct.dma_fence** %22, align 8, !dbg !421
  br label %for.cond, !dbg !421, !llvm.loop !442

for.end:                                          ; preds = %if.then14, %for.cond
  %23 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !444
  %base17 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %23, i32 0, i32 0, !dbg !445
  call void @dma_fence_put(%struct.dma_fence* %base17) #5, !dbg !446
  store i32 0, i32* %retval, align 4, !dbg !447
  br label %return, !dbg !447

return:                                           ; preds = %for.end, %if.then3, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !448
  ret i32 %24, !dbg !448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %fence) #0 !dbg !449 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !452
  %tobool = icmp ne %struct.dma_fence* %0, null, !dbg !452
  br i1 %tobool, label %if.then, label %if.end, !dbg !454

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !455
  %refcount = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 6, !dbg !456
  call void @kref_get(%struct.kref* %refcount) #5, !dbg !457
  br label %if.end, !dbg !457

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !458
  ret %struct.dma_fence* %2, !dbg !459
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dma_fence_chain_get_driver_name(%struct.dma_fence* %fence) #0 !dbg !460 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !461, metadata !DIExpression()), !dbg !462
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), !dbg !463
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dma_fence_chain_get_timeline_name(%struct.dma_fence* %fence) #0 !dbg !464 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !465, metadata !DIExpression()), !dbg !466
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), !dbg !467
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dma_fence_chain_enable_signaling(%struct.dma_fence* %fence) #0 !dbg !468 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca %struct.dma_fence*, align 8
  %head = alloca %struct.dma_fence_chain*, align 8
  %chain = alloca %struct.dma_fence_chain*, align 8
  %f = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata %struct.dma_fence_chain** %head, metadata !471, metadata !DIExpression()), !dbg !472
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !473
  %call = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %0) #5, !dbg !474
  store %struct.dma_fence_chain* %call, %struct.dma_fence_chain** %head, align 8, !dbg !472
  %1 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %head, align 8, !dbg !475
  %base = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %1, i32 0, i32 0, !dbg !476
  %call1 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %base) #5, !dbg !477
  %2 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %head, align 8, !dbg !478
  %base2 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %2, i32 0, i32 0, !dbg !478
  %call3 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %base2) #5, !dbg !478
  store %struct.dma_fence* %call3, %struct.dma_fence** %fence.addr, align 8, !dbg !478
  br label %for.cond, !dbg !478

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !480
  %tobool = icmp ne %struct.dma_fence* %3, null, !dbg !478
  br i1 %tobool, label %for.body, label %for.end, !dbg !478

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.dma_fence_chain** %chain, metadata !482, metadata !DIExpression()), !dbg !484
  %4 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !485
  %call4 = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %4) #5, !dbg !486
  store %struct.dma_fence_chain* %call4, %struct.dma_fence_chain** %chain, align 8, !dbg !484
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %f, metadata !487, metadata !DIExpression()), !dbg !488
  %5 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !489
  %tobool5 = icmp ne %struct.dma_fence_chain* %5, null, !dbg !489
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !489

cond.true:                                        ; preds = %for.body
  %6 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !490
  %fence6 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %6, i32 0, i32 4, !dbg !491
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence6, align 8, !dbg !491
  br label %cond.end, !dbg !489

cond.false:                                       ; preds = %for.body
  %8 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !492
  br label %cond.end, !dbg !489

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dma_fence* [ %7, %cond.true ], [ %8, %cond.false ], !dbg !489
  store %struct.dma_fence* %cond, %struct.dma_fence** %f, align 8, !dbg !488
  %9 = load %struct.dma_fence*, %struct.dma_fence** %f, align 8, !dbg !493
  %call7 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %9) #5, !dbg !494
  %10 = load %struct.dma_fence*, %struct.dma_fence** %f, align 8, !dbg !495
  %11 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %head, align 8, !dbg !497
  %cb = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %11, i32 0, i32 5, !dbg !498
  %call8 = call i32 @dma_fence_add_callback(%struct.dma_fence* %10, %struct.dma_fence_cb* %cb, void (%struct.dma_fence*, %struct.dma_fence_cb*)* @dma_fence_chain_cb) #5, !dbg !499
  %tobool9 = icmp ne i32 %call8, 0, !dbg !499
  br i1 %tobool9, label %if.end, label %if.then, !dbg !500

if.then:                                          ; preds = %cond.end
  %12 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !501
  call void @dma_fence_put(%struct.dma_fence* %12) #5, !dbg !503
  store i1 true, i1* %retval, align 1, !dbg !504
  br label %return, !dbg !504

if.end:                                           ; preds = %cond.end
  %13 = load %struct.dma_fence*, %struct.dma_fence** %f, align 8, !dbg !505
  call void @dma_fence_put(%struct.dma_fence* %13) #5, !dbg !506
  br label %for.inc, !dbg !507

for.inc:                                          ; preds = %if.end
  %14 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !480
  %call10 = call %struct.dma_fence* @dma_fence_chain_walk(%struct.dma_fence* %14) #5, !dbg !480
  store %struct.dma_fence* %call10, %struct.dma_fence** %fence.addr, align 8, !dbg !480
  br label %for.cond, !dbg !480, !llvm.loop !508

for.end:                                          ; preds = %for.cond
  %15 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %head, align 8, !dbg !510
  %base11 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %15, i32 0, i32 0, !dbg !511
  call void @dma_fence_put(%struct.dma_fence* %base11) #5, !dbg !512
  store i1 false, i1* %retval, align 1, !dbg !513
  br label %return, !dbg !513

return:                                           ; preds = %for.end, %if.then
  %16 = load i1, i1* %retval, align 1, !dbg !514
  ret i1 %16, !dbg !514
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dma_fence_chain_signaled(%struct.dma_fence* %fence) #0 !dbg !515 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca %struct.dma_fence*, align 8
  %chain = alloca %struct.dma_fence_chain*, align 8
  %f = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !516, metadata !DIExpression()), !dbg !517
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !518
  %call = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %0) #5, !dbg !518
  store %struct.dma_fence* %call, %struct.dma_fence** %fence.addr, align 8, !dbg !518
  br label %for.cond, !dbg !518

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !520
  %tobool = icmp ne %struct.dma_fence* %1, null, !dbg !518
  br i1 %tobool, label %for.body, label %for.end, !dbg !518

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.dma_fence_chain** %chain, metadata !522, metadata !DIExpression()), !dbg !524
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !525
  %call1 = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %2) #5, !dbg !526
  store %struct.dma_fence_chain* %call1, %struct.dma_fence_chain** %chain, align 8, !dbg !524
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %f, metadata !527, metadata !DIExpression()), !dbg !528
  %3 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !529
  %tobool2 = icmp ne %struct.dma_fence_chain* %3, null, !dbg !529
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !529

cond.true:                                        ; preds = %for.body
  %4 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !530
  %fence3 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %4, i32 0, i32 4, !dbg !531
  %5 = load %struct.dma_fence*, %struct.dma_fence** %fence3, align 8, !dbg !531
  br label %cond.end, !dbg !529

cond.false:                                       ; preds = %for.body
  %6 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !532
  br label %cond.end, !dbg !529

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dma_fence* [ %5, %cond.true ], [ %6, %cond.false ], !dbg !529
  store %struct.dma_fence* %cond, %struct.dma_fence** %f, align 8, !dbg !528
  %7 = load %struct.dma_fence*, %struct.dma_fence** %f, align 8, !dbg !533
  %call4 = call zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %7) #5, !dbg !535
  br i1 %call4, label %if.end, label %if.then, !dbg !536

if.then:                                          ; preds = %cond.end
  %8 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !537
  call void @dma_fence_put(%struct.dma_fence* %8) #5, !dbg !539
  store i1 false, i1* %retval, align 1, !dbg !540
  br label %return, !dbg !540

if.end:                                           ; preds = %cond.end
  br label %for.inc, !dbg !541

for.inc:                                          ; preds = %if.end
  %9 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !520
  %call5 = call %struct.dma_fence* @dma_fence_chain_walk(%struct.dma_fence* %9) #5, !dbg !520
  store %struct.dma_fence* %call5, %struct.dma_fence** %fence.addr, align 8, !dbg !520
  br label %for.cond, !dbg !520, !llvm.loop !542

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1, !dbg !544
  br label %return, !dbg !544

return:                                           ; preds = %for.end, %if.then
  %10 = load i1, i1* %retval, align 1, !dbg !545
  ret i1 %10, !dbg !545
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_chain_release(%struct.dma_fence* %fence) #0 !dbg !546 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  %chain = alloca %struct.dma_fence_chain*, align 8
  %prev = alloca %struct.dma_fence*, align 8
  %tmp = alloca %struct.dma_fence*, align 8
  %prev_chain = alloca %struct.dma_fence_chain*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !547, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.declare(metadata %struct.dma_fence_chain** %chain, metadata !549, metadata !DIExpression()), !dbg !550
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !551
  %call = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %0) #5, !dbg !552
  store %struct.dma_fence_chain* %call, %struct.dma_fence_chain** %chain, align 8, !dbg !550
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %prev, metadata !553, metadata !DIExpression()), !dbg !554
  br label %while.cond, !dbg !555

while.cond:                                       ; preds = %do.end17, %entry
  br label %do.body, !dbg !556

do.body:                                          ; preds = %while.cond
  br label %do.end, !dbg !558

do.end:                                           ; preds = %do.body
  %1 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !556
  %prev1 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %1, i32 0, i32 2, !dbg !556
  %2 = load %struct.dma_fence*, %struct.dma_fence** %prev1, align 8, !dbg !556
  store %struct.dma_fence* %2, %struct.dma_fence** %tmp, align 8, !dbg !558
  %3 = load %struct.dma_fence*, %struct.dma_fence** %tmp, align 8, !dbg !556
  store %struct.dma_fence* %3, %struct.dma_fence** %prev, align 8, !dbg !560
  %tobool = icmp ne %struct.dma_fence* %3, null, !dbg !555
  br i1 %tobool, label %while.body, label %while.end, !dbg !555

while.body:                                       ; preds = %do.end
  call void @llvm.dbg.declare(metadata %struct.dma_fence_chain** %prev_chain, metadata !561, metadata !DIExpression()), !dbg !563
  %4 = load %struct.dma_fence*, %struct.dma_fence** %prev, align 8, !dbg !564
  %refcount = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %4, i32 0, i32 6, !dbg !566
  %call2 = call i32 @kref_read(%struct.kref* %refcount) #5, !dbg !567
  %cmp = icmp ugt i32 %call2, 1, !dbg !568
  br i1 %cmp, label %if.then, label %if.end, !dbg !569

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !570

if.end:                                           ; preds = %while.body
  %5 = load %struct.dma_fence*, %struct.dma_fence** %prev, align 8, !dbg !571
  %call3 = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %5) #5, !dbg !572
  store %struct.dma_fence_chain* %call3, %struct.dma_fence_chain** %prev_chain, align 8, !dbg !573
  %6 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %prev_chain, align 8, !dbg !574
  %tobool4 = icmp ne %struct.dma_fence_chain* %6, null, !dbg !574
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !576

if.then5:                                         ; preds = %if.end
  br label %while.end, !dbg !577

if.end6:                                          ; preds = %if.end
  %7 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %prev_chain, align 8, !dbg !578
  %prev7 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %7, i32 0, i32 2, !dbg !579
  %8 = load %struct.dma_fence*, %struct.dma_fence** %prev7, align 8, !dbg !579
  %9 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !580
  %prev8 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %9, i32 0, i32 2, !dbg !581
  store %struct.dma_fence* %8, %struct.dma_fence** %prev8, align 8, !dbg !582
  br label %do.body9, !dbg !583

do.body9:                                         ; preds = %if.end6
  br label %do.body10, !dbg !584

do.body10:                                        ; preds = %do.body9
  br label %do.body11, !dbg !586

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !588

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !586

do.body13:                                        ; preds = %do.end12
  %10 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %prev_chain, align 8, !dbg !590
  %prev14 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %10, i32 0, i32 2, !dbg !590
  store volatile %struct.dma_fence* null, %struct.dma_fence** %prev14, align 8, !dbg !590
  br label %do.end15, !dbg !590

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !586

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !584

do.end17:                                         ; preds = %do.end16
  %11 = load %struct.dma_fence*, %struct.dma_fence** %prev, align 8, !dbg !592
  call void @dma_fence_put(%struct.dma_fence* %11) #5, !dbg !593
  br label %while.cond, !dbg !555, !llvm.loop !594

while.end:                                        ; preds = %if.then5, %if.then, %do.end
  %12 = load %struct.dma_fence*, %struct.dma_fence** %prev, align 8, !dbg !596
  call void @dma_fence_put(%struct.dma_fence* %12) #5, !dbg !597
  %13 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !598
  %fence18 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %13, i32 0, i32 4, !dbg !599
  %14 = load %struct.dma_fence*, %struct.dma_fence** %fence18, align 8, !dbg !599
  call void @dma_fence_put(%struct.dma_fence* %14) #5, !dbg !600
  %15 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !601
  call void @dma_fence_free(%struct.dma_fence* %15) #5, !dbg !602
  ret void, !dbg !603
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dma_fence_chain_init(%struct.dma_fence_chain* %chain, %struct.dma_fence* %prev, %struct.dma_fence* %fence, i64 %seqno) #0 !dbg !604 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !607, metadata !DIExpression()), !dbg !614
  %chain.addr = alloca %struct.dma_fence_chain*, align 8
  %prev.addr = alloca %struct.dma_fence*, align 8
  %fence.addr = alloca %struct.dma_fence*, align 8
  %seqno.addr = alloca i64, align 8
  %prev_chain = alloca %struct.dma_fence_chain*, align 8
  %context = alloca i64, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  %_r_a_p__v = alloca i64, align 8
  %__UNIQUE_ID___x139 = alloca i64, align 8
  %__UNIQUE_ID___y140 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.dma_fence_chain* %chain, %struct.dma_fence_chain** %chain.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence_chain** %chain.addr, metadata !617, metadata !DIExpression()), !dbg !618
  store %struct.dma_fence* %prev, %struct.dma_fence** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %prev.addr, metadata !619, metadata !DIExpression()), !dbg !620
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !621, metadata !DIExpression()), !dbg !622
  store i64 %seqno, i64* %seqno.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %seqno.addr, metadata !623, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.declare(metadata %struct.dma_fence_chain** %prev_chain, metadata !625, metadata !DIExpression()), !dbg !626
  %0 = load %struct.dma_fence*, %struct.dma_fence** %prev.addr, align 8, !dbg !627
  %call = call %struct.dma_fence_chain* @to_dma_fence_chain(%struct.dma_fence* %0) #5, !dbg !628
  store %struct.dma_fence_chain* %call, %struct.dma_fence_chain** %prev_chain, align 8, !dbg !626
  call void @llvm.dbg.declare(metadata i64* %context, metadata !629, metadata !DIExpression()), !dbg !630
  br label %do.body, !dbg !631

do.body:                                          ; preds = %entry
  %1 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain.addr, align 8, !dbg !632
  %lock = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %1, i32 0, i32 1, !dbg !632
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !633
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !634
  %rlock.i = bitcast %union.anon* %3 to %struct.raw_spinlock*, !dbg !634
  %4 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain.addr, align 8, !dbg !632
  %lock2 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %4, i32 0, i32 1, !dbg !632
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !632
  %rlock = bitcast %union.anon* %5 to %struct.raw_spinlock*, !dbg !632
  %6 = bitcast %struct.spinlock* %lock2 to i8*, !dbg !632
  %7 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !632
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 1 %7, i64 0, i1 false), !dbg !632
  br label %do.end, !dbg !632

do.end:                                           ; preds = %do.body
  br label %do.body3, !dbg !635

do.body3:                                         ; preds = %do.end
  call void @llvm.dbg.declare(metadata i64* %_r_a_p__v, metadata !636, metadata !DIExpression()), !dbg !638
  %8 = load %struct.dma_fence*, %struct.dma_fence** %prev.addr, align 8, !dbg !638
  %9 = ptrtoint %struct.dma_fence* %8 to i64, !dbg !638
  store i64 %9, i64* %_r_a_p__v, align 8, !dbg !638
  br i1 false, label %land.lhs.true, label %if.else, !dbg !639

land.lhs.true:                                    ; preds = %do.body3
  %10 = load i64, i64* %_r_a_p__v, align 8, !dbg !639
  %cmp = icmp eq i64 %10, 0, !dbg !639
  br i1 %cmp, label %if.then, label %if.else, !dbg !638

if.then:                                          ; preds = %land.lhs.true
  br label %do.body4, !dbg !639

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !641

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !643

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !641

do.body7:                                         ; preds = %do.end6
  %11 = load i64, i64* %_r_a_p__v, align 8, !dbg !645
  %12 = inttoptr i64 %11 to %struct.dma_fence*, !dbg !645
  %13 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain.addr, align 8, !dbg !645
  %prev8 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %13, i32 0, i32 2, !dbg !645
  store volatile %struct.dma_fence* %12, %struct.dma_fence** %prev8, align 8, !dbg !645
  br label %do.end9, !dbg !645

do.end9:                                          ; preds = %do.body7
  br label %do.end10, !dbg !641

do.end10:                                         ; preds = %do.end9
  br label %if.end, !dbg !641

if.else:                                          ; preds = %land.lhs.true, %do.body3
  br label %do.body11, !dbg !639

do.body11:                                        ; preds = %if.else
  br label %do.body12, !dbg !647

do.body12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !649

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !647, !srcloc !651
  br label %do.body14, !dbg !647

do.body14:                                        ; preds = %do.end13
  br label %do.body15, !dbg !652

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !654

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !652

do.body17:                                        ; preds = %do.end16
  %14 = load i64, i64* %_r_a_p__v, align 8, !dbg !656
  %15 = inttoptr i64 %14 to %struct.dma_fence*, !dbg !656
  %16 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain.addr, align 8, !dbg !656
  %prev18 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %16, i32 0, i32 2, !dbg !656
  store volatile %struct.dma_fence* %15, %struct.dma_fence** %prev18, align 8, !dbg !656
  br label %do.end19, !dbg !656

do.end19:                                         ; preds = %do.body17
  br label %do.end20, !dbg !652

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !647

do.end21:                                         ; preds = %do.end20
  br label %if.end

if.end:                                           ; preds = %do.end21, %do.end10
  br label %do.end22, !dbg !638

do.end22:                                         ; preds = %if.end
  %17 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !658
  %18 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain.addr, align 8, !dbg !659
  %fence23 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %18, i32 0, i32 4, !dbg !660
  store %struct.dma_fence* %17, %struct.dma_fence** %fence23, align 8, !dbg !661
  %19 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain.addr, align 8, !dbg !662
  %prev_seqno = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %19, i32 0, i32 3, !dbg !663
  store i64 0, i64* %prev_seqno, align 8, !dbg !664
  %20 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain.addr, align 8, !dbg !665
  %work = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %20, i32 0, i32 6, !dbg !666
  call void @init_irq_work(%struct.irq_work* %work, void (%struct.irq_work*)* @dma_fence_chain_irq_work) #5, !dbg !667
  %21 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %prev_chain, align 8, !dbg !668
  %tobool = icmp ne %struct.dma_fence_chain* %21, null, !dbg !668
  br i1 %tobool, label %land.lhs.true24, label %if.else31, !dbg !670

land.lhs.true24:                                  ; preds = %do.end22
  %22 = load i64, i64* %seqno.addr, align 8, !dbg !671
  %23 = load %struct.dma_fence*, %struct.dma_fence** %prev.addr, align 8, !dbg !672
  %seqno25 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %23, i32 0, i32 4, !dbg !673
  %24 = load i64, i64* %seqno25, align 8, !dbg !673
  %25 = load %struct.dma_fence*, %struct.dma_fence** %prev.addr, align 8, !dbg !674
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %25, i32 0, i32 1, !dbg !675
  %26 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !675
  %call26 = call zeroext i1 @__dma_fence_is_later(i64 %22, i64 %24, %struct.dma_fence_ops* %26) #5, !dbg !676
  br i1 %call26, label %if.then27, label %if.else31, !dbg !677

if.then27:                                        ; preds = %land.lhs.true24
  %27 = load %struct.dma_fence*, %struct.dma_fence** %prev.addr, align 8, !dbg !678
  %context28 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %27, i32 0, i32 3, !dbg !680
  %28 = load i64, i64* %context28, align 8, !dbg !680
  store i64 %28, i64* %context, align 8, !dbg !681
  %29 = load %struct.dma_fence*, %struct.dma_fence** %prev.addr, align 8, !dbg !682
  %seqno29 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %29, i32 0, i32 4, !dbg !683
  %30 = load i64, i64* %seqno29, align 8, !dbg !683
  %31 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain.addr, align 8, !dbg !684
  %prev_seqno30 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %31, i32 0, i32 3, !dbg !685
  store i64 %30, i64* %prev_seqno30, align 8, !dbg !686
  br label %if.end38, !dbg !687

if.else31:                                        ; preds = %land.lhs.true24, %do.end22
  %call32 = call i64 @dma_fence_context_alloc(i32 1) #5, !dbg !688
  store i64 %call32, i64* %context, align 8, !dbg !690
  %32 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %prev_chain, align 8, !dbg !691
  %tobool33 = icmp ne %struct.dma_fence_chain* %32, null, !dbg !691
  br i1 %tobool33, label %if.then34, label %if.end37, !dbg !693

if.then34:                                        ; preds = %if.else31
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x139, metadata !694, metadata !DIExpression()), !dbg !696
  %33 = load %struct.dma_fence*, %struct.dma_fence** %prev.addr, align 8, !dbg !696
  %seqno35 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %33, i32 0, i32 4, !dbg !696
  %34 = load i64, i64* %seqno35, align 8, !dbg !696
  store i64 %34, i64* %__UNIQUE_ID___x139, align 8, !dbg !696
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y140, metadata !697, metadata !DIExpression()), !dbg !696
  %35 = load i64, i64* %seqno.addr, align 8, !dbg !696
  store i64 %35, i64* %__UNIQUE_ID___y140, align 8, !dbg !696
  %36 = load i64, i64* %__UNIQUE_ID___x139, align 8, !dbg !696
  %37 = load i64, i64* %__UNIQUE_ID___y140, align 8, !dbg !696
  %cmp36 = icmp ugt i64 %36, %37, !dbg !696
  br i1 %cmp36, label %cond.true, label %cond.false, !dbg !696

cond.true:                                        ; preds = %if.then34
  %38 = load i64, i64* %__UNIQUE_ID___x139, align 8, !dbg !696
  br label %cond.end, !dbg !696

cond.false:                                       ; preds = %if.then34
  %39 = load i64, i64* %__UNIQUE_ID___y140, align 8, !dbg !696
  br label %cond.end, !dbg !696

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %38, %cond.true ], [ %39, %cond.false ], !dbg !696
  store i64 %cond, i64* %tmp, align 8, !dbg !696
  %40 = load i64, i64* %tmp, align 8, !dbg !696
  store i64 %40, i64* %seqno.addr, align 8, !dbg !698
  br label %if.end37, !dbg !699

if.end37:                                         ; preds = %cond.end, %if.else31
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then27
  %41 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain.addr, align 8, !dbg !700
  %base = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %41, i32 0, i32 0, !dbg !701
  %42 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain.addr, align 8, !dbg !702
  %lock39 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %42, i32 0, i32 1, !dbg !703
  %43 = load i64, i64* %context, align 8, !dbg !704
  %44 = load i64, i64* %seqno.addr, align 8, !dbg !705
  call void @dma_fence_init(%struct.dma_fence* %base, %struct.dma_fence_ops* @dma_fence_chain_ops, %struct.spinlock* %lock39, i64 %43, i64 %44) #5, !dbg !706
  ret void, !dbg !707
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @init_irq_work(%struct.irq_work* %work, void (%struct.irq_work*)* %func) #0 !dbg !708 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !711, metadata !DIExpression()), !dbg !717
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !722, metadata !DIExpression()), !dbg !723
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !216, metadata !DIExpression()), !dbg !724
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !232, metadata !DIExpression()), !dbg !726
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !727, metadata !DIExpression()), !dbg !728
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !729, metadata !DIExpression()), !dbg !730
  %work.addr = alloca %struct.irq_work*, align 8
  %func.addr = alloca void (%struct.irq_work*)*, align 8
  store %struct.irq_work* %work, %struct.irq_work** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_work** %work.addr, metadata !731, metadata !DIExpression()), !dbg !732
  store void (%struct.irq_work*)* %func, void (%struct.irq_work*)** %func.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.irq_work*)** %func.addr, metadata !733, metadata !DIExpression()), !dbg !734
  %0 = load %struct.irq_work*, %struct.irq_work** %work.addr, align 8, !dbg !735
  %1 = getelementptr inbounds %struct.irq_work, %struct.irq_work* %0, i32 0, i32 0, !dbg !736
  %2 = bitcast %union.anon.1* %1 to %struct.anon*, !dbg !736
  %flags = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 1, !dbg !736
  store %struct.atomic_t* %flags, %struct.atomic_t** %v.addr.i, align 8
  store i32 0, i32* %i.addr.i, align 4
  %3 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !737
  %4 = bitcast %struct.atomic_t* %3 to i8*, !dbg !737
  store i8* %4, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !738
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !739
  %conv.i.i = trunc i64 %6 to i32, !dbg !739
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %5, i32 %conv.i.i) #6, !dbg !740
  %7 = load i8*, i8** %v.addr.i.i, align 8, !dbg !741
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !741
  call void @kcsan_check_access(i8* %7, i64 %8, i32 5) #6, !dbg !741
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !742
  %10 = load i32, i32* %i.addr.i, align 4, !dbg !743
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %10, i32* %i.addr.i.i, align 4
  %11 = load i32, i32* %i.addr.i.i, align 4, !dbg !744
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !744
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !744
  store volatile i32 %11, i32* %counter.i.i, align 4, !dbg !744
  %13 = load void (%struct.irq_work*)*, void (%struct.irq_work*)** %func.addr, align 8, !dbg !746
  %14 = load %struct.irq_work*, %struct.irq_work** %work.addr, align 8, !dbg !747
  %func1 = getelementptr inbounds %struct.irq_work, %struct.irq_work* %14, i32 0, i32 1, !dbg !748
  store void (%struct.irq_work*)* %13, void (%struct.irq_work*)** %func1, align 8, !dbg !749
  ret void, !dbg !750
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_chain_irq_work(%struct.irq_work* %work) #0 !dbg !751 {
entry:
  %work.addr = alloca %struct.irq_work*, align 8
  %chain = alloca %struct.dma_fence_chain*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dma_fence_chain*, align 8
  store %struct.irq_work* %work, %struct.irq_work** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_work** %work.addr, metadata !752, metadata !DIExpression()), !dbg !753
  call void @llvm.dbg.declare(metadata %struct.dma_fence_chain** %chain, metadata !754, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !756, metadata !DIExpression()), !dbg !758
  %0 = load %struct.irq_work*, %struct.irq_work** %work.addr, align 8, !dbg !758
  %1 = bitcast %struct.irq_work* %0 to i8*, !dbg !758
  store i8* %1, i8** %__mptr, align 8, !dbg !758
  br label %do.body, !dbg !758

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !759

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !758
  %add.ptr = getelementptr i8, i8* %2, i64 -112, !dbg !758
  %3 = bitcast i8* %add.ptr to %struct.dma_fence_chain*, !dbg !758
  store %struct.dma_fence_chain* %3, %struct.dma_fence_chain** %tmp, align 8, !dbg !759
  %4 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %tmp, align 8, !dbg !758
  store %struct.dma_fence_chain* %4, %struct.dma_fence_chain** %chain, align 8, !dbg !761
  %5 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !762
  %base = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %5, i32 0, i32 0, !dbg !764
  %call = call zeroext i1 @dma_fence_chain_enable_signaling(%struct.dma_fence* %base) #5, !dbg !765
  br i1 %call, label %if.end, label %if.then, !dbg !766

if.then:                                          ; preds = %do.end
  %6 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !767
  %base1 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %6, i32 0, i32 0, !dbg !768
  %call2 = call i32 @dma_fence_signal(%struct.dma_fence* %base1) #5, !dbg !769
  br label %if.end, !dbg !769

if.end:                                           ; preds = %if.then, %do.end
  %7 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !770
  %base3 = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %7, i32 0, i32 0, !dbg !771
  call void @dma_fence_put(%struct.dma_fence* %base3) #5, !dbg !772
  ret void, !dbg !773
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__dma_fence_is_later(i64 %f1, i64 %f2, %struct.dma_fence_ops* %ops) #0 !dbg !774 {
entry:
  %retval = alloca i1, align 1
  %f1.addr = alloca i64, align 8
  %f2.addr = alloca i64, align 8
  %ops.addr = alloca %struct.dma_fence_ops*, align 8
  store i64 %f1, i64* %f1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f1.addr, metadata !777, metadata !DIExpression()), !dbg !778
  store i64 %f2, i64* %f2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f2.addr, metadata !779, metadata !DIExpression()), !dbg !780
  store %struct.dma_fence_ops* %ops, %struct.dma_fence_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence_ops** %ops.addr, metadata !781, metadata !DIExpression()), !dbg !782
  %0 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops.addr, align 8, !dbg !783
  %use_64bit_seqno = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %0, i32 0, i32 0, !dbg !785
  %1 = load i8, i8* %use_64bit_seqno, align 8, !dbg !785
  %tobool = trunc i8 %1 to i1, !dbg !785
  br i1 %tobool, label %if.then, label %if.end, !dbg !786

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %f1.addr, align 8, !dbg !787
  %3 = load i64, i64* %f2.addr, align 8, !dbg !788
  %cmp = icmp ugt i64 %2, %3, !dbg !789
  store i1 %cmp, i1* %retval, align 1, !dbg !790
  br label %return, !dbg !790

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %f1.addr, align 8, !dbg !791
  %and = and i64 %4, 4294967295, !dbg !791
  %conv = trunc i64 %and to i32, !dbg !791
  %5 = load i64, i64* %f2.addr, align 8, !dbg !792
  %and1 = and i64 %5, 4294967295, !dbg !792
  %conv2 = trunc i64 %and1 to i32, !dbg !792
  %sub = sub i32 %conv, %conv2, !dbg !793
  %cmp3 = icmp sgt i32 %sub, 0, !dbg !794
  store i1 %cmp3, i1* %retval, align 1, !dbg !795
  br label %return, !dbg !795

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, i1* %retval, align 1, !dbg !796
  ret i1 %6, !dbg !796
}

; Function Attrs: noredzone
declare dso_local i64 @dma_fence_context_alloc(i32) #3

; Function Attrs: noredzone
declare dso_local void @dma_fence_init(%struct.dma_fence*, %struct.dma_fence_ops*, %struct.spinlock*, i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !797 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !804, metadata !DIExpression()), !dbg !805
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !806, metadata !DIExpression()), !dbg !807
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !808
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !810
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #5, !dbg !811
  br i1 %call, label %if.then, label %if.end, !dbg !812

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !813
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !815
  call void %1(%struct.kref* %2) #5, !dbg !813
  store i32 1, i32* %retval, align 4, !dbg !816
  br label %return, !dbg !816

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !817
  br label %return, !dbg !817

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !818
  ret i32 %3, !dbg !818
}

; Function Attrs: noredzone
declare dso_local void @dma_fence_release(%struct.kref*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !819 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !823, metadata !DIExpression()), !dbg !824
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !825
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #5, !dbg !826
  ret i1 %call, !dbg !827
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !828 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !831, metadata !DIExpression()), !dbg !832
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !833, metadata !DIExpression()), !dbg !834
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !835
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !836
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #5, !dbg !837
  ret i1 %call, !dbg !838
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !839 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !842, metadata !DIExpression()), !dbg !846
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !850, metadata !DIExpression()), !dbg !851
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !852, metadata !DIExpression()), !dbg !854
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !855, metadata !DIExpression()), !dbg !857
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !859, metadata !DIExpression()), !dbg !860
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !861, metadata !DIExpression()), !dbg !862
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !863, metadata !DIExpression()), !dbg !864
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !865, metadata !DIExpression()), !dbg !866
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !867, metadata !DIExpression()), !dbg !868
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !869, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.declare(metadata i32* %old, metadata !871, metadata !DIExpression()), !dbg !872
  %0 = load i32, i32* %i.addr, align 4, !dbg !873
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !874
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !875
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !876
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !876
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !877
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !878
  %conv.i.i = trunc i64 %5 to i32, !dbg !878
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #6, !dbg !879
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !880
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !880
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #6, !dbg !880
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !881
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !882
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !854
  %sub.i.i = sub i32 0, %10, !dbg !854
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !854
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !854
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !854
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !854
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #7, !dbg !854, !srcloc !883
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !854
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !854
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !854
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !854
  store i32 %15, i32* %old, align 4, !dbg !872
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !884
  %tobool = icmp ne i32* %16, null, !dbg !884
  br i1 %tobool, label %if.then, label %if.end, !dbg !886

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !887
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !888
  store i32 %17, i32* %18, align 4, !dbg !889
  br label %if.end, !dbg !890

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !891
  %20 = load i32, i32* %i.addr, align 4, !dbg !893
  %cmp = icmp eq i32 %19, %20, !dbg !894
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !895

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !896, !srcloc !898
  store i1 true, i1* %retval, align 1, !dbg !899
  br label %return, !dbg !899

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !900
  %cmp3 = icmp slt i32 %21, 0, !dbg !900
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !900

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !900
  %23 = load i32, i32* %i.addr, align 4, !dbg !900
  %sub = sub i32 %22, %23, !dbg !900
  %cmp4 = icmp slt i32 %sub, 0, !dbg !900
  br label %lor.end, !dbg !900

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !900
  %lnot5 = xor i1 %lnot, true, !dbg !900
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !900
  %conv = sext i32 %lnot.ext to i64, !dbg !900
  %tobool6 = icmp ne i64 %conv, 0, !dbg !900
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !902

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !903
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #5, !dbg !904
  br label %if.end8, !dbg !904

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !905
  br label %return, !dbg !905

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !906
  ret i1 %26, !dbg !906
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !907 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !911, metadata !DIExpression()), !dbg !912
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !913, metadata !DIExpression()), !dbg !914
  ret i1 true, !dbg !915
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !916 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !920, metadata !DIExpression()), !dbg !921
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !922, metadata !DIExpression()), !dbg !923
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !924, metadata !DIExpression()), !dbg !925
  ret void, !dbg !926
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence* @dma_fence_get_rcu_safe(%struct.dma_fence** %fencep) #0 !dbg !927 {
entry:
  %retval = alloca %struct.dma_fence*, align 8
  %fencep.addr = alloca %struct.dma_fence**, align 8
  %fence = alloca %struct.dma_fence*, align 8
  %________p1 = alloca %struct.dma_fence*, align 8
  %tmp = alloca %struct.dma_fence*, align 8
  %tmp4 = alloca %struct.dma_fence*, align 8
  %_________p1 = alloca %struct.dma_fence*, align 8
  %tmp10 = alloca %struct.dma_fence*, align 8
  %tmp11 = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence** %fencep, %struct.dma_fence*** %fencep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %fencep.addr, metadata !930, metadata !DIExpression()), !dbg !931
  br label %do.body, !dbg !932

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence, metadata !933, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %________p1, metadata !936, metadata !DIExpression()), !dbg !938
  br label %do.body1, !dbg !939

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !941

do.end:                                           ; preds = %do.body1
  %0 = load %struct.dma_fence**, %struct.dma_fence*** %fencep.addr, align 8, !dbg !939
  %1 = load volatile %struct.dma_fence*, %struct.dma_fence** %0, align 8, !dbg !939
  store %struct.dma_fence* %1, %struct.dma_fence** %tmp, align 8, !dbg !941
  %2 = load %struct.dma_fence*, %struct.dma_fence** %tmp, align 8, !dbg !939
  store %struct.dma_fence* %2, %struct.dma_fence** %________p1, align 8, !dbg !938
  br label %do.body2, !dbg !938

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !943

do.end3:                                          ; preds = %do.body2
  %3 = load %struct.dma_fence*, %struct.dma_fence** %________p1, align 8, !dbg !938
  store %struct.dma_fence* %3, %struct.dma_fence** %tmp4, align 8, !dbg !943
  %4 = load %struct.dma_fence*, %struct.dma_fence** %tmp4, align 8, !dbg !938
  store %struct.dma_fence* %4, %struct.dma_fence** %fence, align 8, !dbg !945
  %5 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !946
  %tobool = icmp ne %struct.dma_fence* %5, null, !dbg !946
  br i1 %tobool, label %if.end, label %if.then, !dbg !948

if.then:                                          ; preds = %do.end3
  store %struct.dma_fence* null, %struct.dma_fence** %retval, align 8, !dbg !949
  br label %do.end14, !dbg !949

if.end:                                           ; preds = %do.end3
  %6 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !950
  %call = call %struct.dma_fence* @dma_fence_get_rcu(%struct.dma_fence* %6) #5, !dbg !952
  %tobool5 = icmp ne %struct.dma_fence* %call, null, !dbg !952
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !953

if.then6:                                         ; preds = %if.end
  br label %do.cond, !dbg !954

if.end7:                                          ; preds = %if.end
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !955
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %_________p1, metadata !957, metadata !DIExpression()), !dbg !959
  br label %do.body8, !dbg !960

do.body8:                                         ; preds = %if.end7
  br label %do.end9, !dbg !962

do.end9:                                          ; preds = %do.body8
  %8 = load %struct.dma_fence**, %struct.dma_fence*** %fencep.addr, align 8, !dbg !960
  %9 = load volatile %struct.dma_fence*, %struct.dma_fence** %8, align 8, !dbg !960
  store %struct.dma_fence* %9, %struct.dma_fence** %tmp10, align 8, !dbg !962
  %10 = load %struct.dma_fence*, %struct.dma_fence** %tmp10, align 8, !dbg !960
  store %struct.dma_fence* %10, %struct.dma_fence** %_________p1, align 8, !dbg !959
  %11 = load %struct.dma_fence*, %struct.dma_fence** %_________p1, align 8, !dbg !959
  store %struct.dma_fence* %11, %struct.dma_fence** %tmp11, align 8, !dbg !959
  %12 = load %struct.dma_fence*, %struct.dma_fence** %tmp11, align 8, !dbg !959
  %cmp = icmp eq %struct.dma_fence* %7, %12, !dbg !964
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !965

if.then12:                                        ; preds = %do.end9
  %13 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !966
  store %struct.dma_fence* %13, %struct.dma_fence** %retval, align 8, !dbg !967
  br label %do.end14, !dbg !967

if.end13:                                         ; preds = %do.end9
  %14 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !968
  call void @dma_fence_put(%struct.dma_fence* %14) #5, !dbg !969
  br label %do.cond, !dbg !970

do.cond:                                          ; preds = %if.end13, %if.then6
  br i1 true, label %do.body, label %do.end14, !dbg !970, !llvm.loop !971

do.end14:                                         ; preds = %if.then, %if.then12, %do.cond
  %15 = load %struct.dma_fence*, %struct.dma_fence** %retval, align 8, !dbg !973
  ret %struct.dma_fence* %15, !dbg !973
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rcu_read_unlock() #0 !dbg !974 {
entry:
  br label %do.body, !dbg !975

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !976

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #5, !dbg !978
  br label %do.body1, !dbg !979

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !980

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !982
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__rcu_read_lock() #0 !dbg !983 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !984, !srcloc !985
  ret void, !dbg !986
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence* @dma_fence_get_rcu(%struct.dma_fence* %fence) #0 !dbg !987 {
entry:
  %retval = alloca %struct.dma_fence*, align 8
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !988, metadata !DIExpression()), !dbg !989
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !990
  %refcount = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 6, !dbg !992
  %call = call i32 @kref_get_unless_zero(%struct.kref* %refcount) #5, !dbg !993
  %tobool = icmp ne i32 %call, 0, !dbg !993
  br i1 %tobool, label %if.then, label %if.else, !dbg !994

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !995
  store %struct.dma_fence* %1, %struct.dma_fence** %retval, align 8, !dbg !996
  br label %return, !dbg !996

if.else:                                          ; preds = %entry
  store %struct.dma_fence* null, %struct.dma_fence** %retval, align 8, !dbg !997
  br label %return, !dbg !997

return:                                           ; preds = %if.else, %if.then
  %2 = load %struct.dma_fence*, %struct.dma_fence** %retval, align 8, !dbg !998
  ret %struct.dma_fence* %2, !dbg !998
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_get_unless_zero(%struct.kref* %kref) #0 !dbg !999 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !1002, metadata !DIExpression()), !dbg !1003
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !1004
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !1005
  %call = call zeroext i1 @refcount_inc_not_zero(%struct.refcount_struct* %refcount) #5, !dbg !1006
  %conv = zext i1 %call to i32, !dbg !1006
  ret i32 %conv, !dbg !1007
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_inc_not_zero(%struct.refcount_struct* %r) #0 !dbg !1008 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !1009, metadata !DIExpression()), !dbg !1010
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1011
  %call = call zeroext i1 @__refcount_inc_not_zero(%struct.refcount_struct* %0, i32* null) #5, !dbg !1012
  ret i1 %call, !dbg !1013
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !1014 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !1015, metadata !DIExpression()), !dbg !1016
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !1017, metadata !DIExpression()), !dbg !1018
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1019
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !1020
  %call = call zeroext i1 @__refcount_add_not_zero(i32 1, %struct.refcount_struct* %0, i32* %1) #5, !dbg !1021
  ret i1 %call, !dbg !1022
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !1023 {
entry:
  %v.addr.i5.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i, metadata !1024, metadata !DIExpression()), !dbg !1028
  %old.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i, metadata !1032, metadata !DIExpression()), !dbg !1033
  %new.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i, metadata !1034, metadata !DIExpression()), !dbg !1035
  %success.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i, metadata !1036, metadata !DIExpression()), !dbg !1038
  %_old.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i, metadata !1039, metadata !DIExpression()), !dbg !1038
  %__old.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i, metadata !1040, metadata !DIExpression()), !dbg !1038
  %__new.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i, metadata !1041, metadata !DIExpression()), !dbg !1038
  %__ptr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i, metadata !1042, metadata !DIExpression()), !dbg !1038
  %tmp.i.i = alloca i64, align 8
  %v.addr.i1.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i1.i, metadata !855, metadata !DIExpression()), !dbg !1043
  %size.addr.i2.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i2.i, metadata !859, metadata !DIExpression()), !dbg !1045
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !855, metadata !DIExpression()), !dbg !1046
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !859, metadata !DIExpression()), !dbg !1048
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !1049, metadata !DIExpression()), !dbg !1050
  %old.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i, metadata !1051, metadata !DIExpression()), !dbg !1052
  %new.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i, metadata !1053, metadata !DIExpression()), !dbg !1054
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !1055, metadata !DIExpression()), !dbg !1056
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !1057, metadata !DIExpression()), !dbg !1058
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !1059, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.declare(metadata i32* %old, metadata !1061, metadata !DIExpression()), !dbg !1062
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1063
  %call = call i32 @refcount_read(%struct.refcount_struct* %0) #5, !dbg !1064
  store i32 %call, i32* %old, align 4, !dbg !1062
  br label %do.body, !dbg !1065

do.body:                                          ; preds = %atomic_try_cmpxchg_relaxed.exit, %entry
  %1 = load i32, i32* %old, align 4, !dbg !1066
  %tobool = icmp ne i32 %1, 0, !dbg !1066
  br i1 %tobool, label %if.end, label %if.then, !dbg !1069

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !1070

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !1071

do.cond:                                          ; preds = %if.end
  %2 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1072
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %2, i32 0, i32 0, !dbg !1073
  %3 = load i32, i32* %old, align 4, !dbg !1074
  %4 = load i32, i32* %i.addr, align 4, !dbg !1075
  %add = add i32 %3, %4, !dbg !1076
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32* %old, i32** %old.addr.i, align 8
  store i32 %add, i32* %new.addr.i, align 4
  %5 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !1077
  %6 = bitcast %struct.atomic_t* %5 to i8*, !dbg !1077
  store i8* %6, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %7 = load i8*, i8** %v.addr.i.i, align 8, !dbg !1078
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1079
  %conv.i.i = trunc i64 %8 to i32, !dbg !1079
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %7, i32 %conv.i.i) #6, !dbg !1080
  %9 = load i8*, i8** %v.addr.i.i, align 8, !dbg !1081
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !1081
  call void @kcsan_check_access(i8* %9, i64 %10, i32 7) #6, !dbg !1081
  %11 = load i32*, i32** %old.addr.i, align 8, !dbg !1082
  %12 = bitcast i32* %11 to i8*, !dbg !1082
  store i8* %12, i8** %v.addr.i1.i, align 8
  store i64 4, i64* %size.addr.i2.i, align 8
  %13 = load i8*, i8** %v.addr.i1.i, align 8, !dbg !1083
  %14 = load i64, i64* %size.addr.i2.i, align 8, !dbg !1084
  %conv.i3.i = trunc i64 %14 to i32, !dbg !1084
  %call.i4.i = call zeroext i1 @kasan_check_write(i8* %13, i32 %conv.i3.i) #6, !dbg !1085
  %15 = load i8*, i8** %v.addr.i1.i, align 8, !dbg !1086
  %16 = load i64, i64* %size.addr.i2.i, align 8, !dbg !1086
  call void @kcsan_check_access(i8* %15, i64 %16, i32 7) #6, !dbg !1086
  %17 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !1087
  %18 = load i32*, i32** %old.addr.i, align 8, !dbg !1088
  %19 = load i32, i32* %new.addr.i, align 4, !dbg !1089
  store %struct.atomic_t* %17, %struct.atomic_t** %v.addr.i5.i, align 8
  store i32* %18, i32** %old.addr.i.i, align 8
  store i32 %19, i32* %new.addr.i.i, align 4
  %20 = load i32*, i32** %old.addr.i.i, align 8, !dbg !1038
  store i32* %20, i32** %_old.i.i, align 8, !dbg !1038
  %21 = load i32*, i32** %_old.i.i, align 8, !dbg !1038
  %22 = load i32, i32* %21, align 4, !dbg !1038
  store i32 %22, i32* %__old.i.i, align 4, !dbg !1038
  %23 = load i32, i32* %new.addr.i.i, align 4, !dbg !1038
  store i32 %23, i32* %__new.i.i, align 4, !dbg !1038
  %24 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i, align 8, !dbg !1038
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %24, i32 0, i32 0, !dbg !1038
  store i32* %counter.i.i, i32** %__ptr.i.i, align 8, !dbg !1038
  %25 = load i32*, i32** %__ptr.i.i, align 8, !dbg !1038
  %26 = load i32, i32* %__old.i.i, align 4, !dbg !1038
  %27 = load i32, i32* %__new.i.i, align 4, !dbg !1038
  %28 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %25, i32 %27, i32* %25, i32 %26) #7, !dbg !1038, !srcloc !1090
  %asmresult.i.i = extractvalue { i8, i32 } %28, 0, !dbg !1038
  %asmresult1.i.i = extractvalue { i8, i32 } %28, 1, !dbg !1038
  store i8 %asmresult.i.i, i8* %success.i.i, align 1, !dbg !1038
  store i32 %asmresult1.i.i, i32* %__old.i.i, align 4, !dbg !1038
  %29 = load i8, i8* %success.i.i, align 1, !dbg !1091
  %tobool.i.i = trunc i8 %29 to i1, !dbg !1091
  %lnot.i.i = xor i1 %tobool.i.i, true, !dbg !1091
  %lnot3.i.i = xor i1 %tobool.i.i, true, !dbg !1091
  %lnot.ext.i.i = zext i1 %lnot3.i.i to i32, !dbg !1091
  %conv.i6.i = sext i32 %lnot.ext.i.i to i64, !dbg !1091
  br i1 %lnot3.i.i, label %if.then.i.i, label %atomic_try_cmpxchg_relaxed.exit, !dbg !1038

if.then.i.i:                                      ; preds = %do.cond
  %30 = load i32, i32* %__old.i.i, align 4, !dbg !1091
  %31 = load i32*, i32** %_old.i.i, align 8, !dbg !1091
  store i32 %30, i32* %31, align 4, !dbg !1091
  br label %atomic_try_cmpxchg_relaxed.exit, !dbg !1091

atomic_try_cmpxchg_relaxed.exit:                  ; preds = %do.cond, %if.then.i.i
  %32 = load i8, i8* %success.i.i, align 1, !dbg !1038
  %tobool5.i.i = trunc i8 %32 to i1, !dbg !1038
  %lnot6.i.i = xor i1 %tobool5.i.i, true, !dbg !1038
  %lnot.ext9.i.i = zext i1 %tobool5.i.i to i32, !dbg !1038
  %conv10.i.i = sext i32 %lnot.ext9.i.i to i64, !dbg !1038
  store i64 %conv10.i.i, i64* %tmp.i.i, align 8, !dbg !1091
  %33 = load i64, i64* %tmp.i.i, align 8, !dbg !1038
  %tobool11.i.i = icmp ne i64 %33, 0, !dbg !1093
  %lnot = xor i1 %tobool11.i.i, true, !dbg !1094
  br i1 %lnot, label %do.body, label %do.end, !dbg !1071, !llvm.loop !1095

do.end:                                           ; preds = %atomic_try_cmpxchg_relaxed.exit, %if.then
  %34 = load i32*, i32** %oldp.addr, align 8, !dbg !1097
  %tobool2 = icmp ne i32* %34, null, !dbg !1097
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1099

if.then3:                                         ; preds = %do.end
  %35 = load i32, i32* %old, align 4, !dbg !1100
  %36 = load i32*, i32** %oldp.addr, align 8, !dbg !1101
  store i32 %35, i32* %36, align 4, !dbg !1102
  br label %if.end4, !dbg !1103

if.end4:                                          ; preds = %if.then3, %do.end
  %37 = load i32, i32* %old, align 4, !dbg !1104
  %cmp = icmp slt i32 %37, 0, !dbg !1104
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !1104

lor.rhs:                                          ; preds = %if.end4
  %38 = load i32, i32* %old, align 4, !dbg !1104
  %39 = load i32, i32* %i.addr, align 4, !dbg !1104
  %add5 = add i32 %38, %39, !dbg !1104
  %cmp6 = icmp slt i32 %add5, 0, !dbg !1104
  br label %lor.end, !dbg !1104

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %40 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %40, true, !dbg !1104
  %lnot8 = xor i1 %lnot7, true, !dbg !1104
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !1104
  %conv = sext i32 %lnot.ext to i64, !dbg !1104
  %tobool9 = icmp ne i64 %conv, 0, !dbg !1104
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1106

if.then10:                                        ; preds = %lor.end
  %41 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1107
  call void @refcount_warn_saturate(%struct.refcount_struct* %41, i32 0) #5, !dbg !1108
  br label %if.end11, !dbg !1108

if.end11:                                         ; preds = %if.then10, %lor.end
  %42 = load i32, i32* %old, align 4, !dbg !1109
  %tobool12 = icmp ne i32 %42, 0, !dbg !1109
  ret i1 %tobool12, !dbg !1110
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @refcount_read(%struct.refcount_struct* %r) #0 !dbg !1111 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !1116, metadata !DIExpression()), !dbg !1122
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !1126, metadata !DIExpression()), !dbg !1128
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1130, metadata !DIExpression()), !dbg !1131
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !1132, metadata !DIExpression()), !dbg !1133
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !1134, metadata !DIExpression()), !dbg !1135
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1136
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !1137
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !1138
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !1138
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !1139
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !1140
  %conv.i.i = trunc i64 %4 to i32, !dbg !1140
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i.i) #6, !dbg !1141
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !1142
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !1142
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #6, !dbg !1142
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !1143
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !1144
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !1144
  %9 = load volatile i32, i32* %counter.i.i, align 4, !dbg !1144
  ret i32 %9, !dbg !1145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !1146 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1147, metadata !DIExpression()), !dbg !1148
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1149, metadata !DIExpression()), !dbg !1150
  ret i1 true, !dbg !1151
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__rcu_read_unlock() #0 !dbg !1152 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1153, !srcloc !1154
  br label %do.body, !dbg !1155

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1156

do.end:                                           ; preds = %do.body
  ret void, !dbg !1158
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !1159 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !1166, metadata !DIExpression()), !dbg !1169
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !1171, metadata !DIExpression()), !dbg !1172
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !1173, metadata !DIExpression()), !dbg !1174
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1175, metadata !DIExpression()), !dbg !1177
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1179, metadata !DIExpression()), !dbg !1180
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !1126, metadata !DIExpression()), !dbg !1181
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1130, metadata !DIExpression()), !dbg !1183
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1184, metadata !DIExpression()), !dbg !1185
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1186, metadata !DIExpression()), !dbg !1187
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1188
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1189
  %div = sdiv i64 %1, 64, !dbg !1189
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1190
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1188
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1191
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1192
  %conv.i = trunc i64 %4 to i32, !dbg !1192
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #6, !dbg !1193
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1194
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1194
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #6, !dbg !1194
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1195
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !1195
  br i1 %8, label %cond.true, label %cond.false, !dbg !1195

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !1195
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !1195
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !1196
  %and.i = and i64 %11, 63, !dbg !1197
  %shl.i = shl i64 1, %and.i, !dbg !1198
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !1199
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !1200
  %shr.i = ashr i64 %13, 6, !dbg !1201
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !1199
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !1199
  %and1.i = and i64 %shl.i, %14, !dbg !1202
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !1203
  %conv = zext i1 %cmp.i to i32, !dbg !1195
  br label %cond.end, !dbg !1195

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !1195
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !1195
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !1204
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !1205
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #7, !dbg !1206, !srcloc !1207
  store i8 %19, i8* %oldbit.i, align 1, !dbg !1206
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !1208
  %tobool.i = trunc i8 %20 to i1, !dbg !1208
  %conv2 = zext i1 %tobool.i to i32, !dbg !1195
  br label %cond.end, !dbg !1195

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1195
  %tobool = icmp ne i32 %cond, 0, !dbg !1195
  ret i1 %tobool, !dbg !1209
}

; Function Attrs: noredzone
declare dso_local i32 @dma_fence_signal(%struct.dma_fence*) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !1210 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !1211, metadata !DIExpression()), !dbg !1212
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !1213
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !1214
  call void @refcount_inc(%struct.refcount_struct* %refcount) #5, !dbg !1215
  ret void, !dbg !1216
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !1217 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !1220, metadata !DIExpression()), !dbg !1221
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1222
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #5, !dbg !1223
  ret void, !dbg !1224
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !1225 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !1228, metadata !DIExpression()), !dbg !1229
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !1230, metadata !DIExpression()), !dbg !1231
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1232
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !1233
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #5, !dbg !1234
  ret void, !dbg !1235
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !1236 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !1239, metadata !DIExpression()), !dbg !1241
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !1245, metadata !DIExpression()), !dbg !1246
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !1247, metadata !DIExpression()), !dbg !1249
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !855, metadata !DIExpression()), !dbg !1250
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !859, metadata !DIExpression()), !dbg !1252
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !1253, metadata !DIExpression()), !dbg !1254
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !1255, metadata !DIExpression()), !dbg !1256
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !1257, metadata !DIExpression()), !dbg !1258
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !1259, metadata !DIExpression()), !dbg !1260
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !1261, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.declare(metadata i32* %old, metadata !1263, metadata !DIExpression()), !dbg !1264
  %0 = load i32, i32* %i.addr, align 4, !dbg !1265
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1266
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !1267
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !1268
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !1268
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !1269
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !1270
  %conv.i.i = trunc i64 %5 to i32, !dbg !1270
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #6, !dbg !1271
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !1272
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1272
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #6, !dbg !1272
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !1273
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !1274
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !1249
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !1249
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !1249
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !1249
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !1249
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #7, !dbg !1249, !srcloc !1275
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !1249
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !1249
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !1249
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !1249
  store i32 %15, i32* %old, align 4, !dbg !1264
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !1276
  %tobool = icmp ne i32* %16, null, !dbg !1276
  br i1 %tobool, label %if.then, label %if.end, !dbg !1278

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !1279
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !1280
  store i32 %17, i32* %18, align 4, !dbg !1281
  br label %if.end, !dbg !1282

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !1283
  %tobool1 = icmp ne i32 %19, 0, !dbg !1283
  %lnot = xor i1 %tobool1, true, !dbg !1283
  %lnot2 = xor i1 %lnot, true, !dbg !1283
  %lnot3 = xor i1 %lnot2, true, !dbg !1283
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1283
  %conv = sext i32 %lnot.ext to i64, !dbg !1283
  %tobool4 = icmp ne i64 %conv, 0, !dbg !1283
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !1285

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1286
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #5, !dbg !1287
  br label %if.end17, !dbg !1287

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !1288
  %cmp = icmp slt i32 %21, 0, !dbg !1288
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !1288

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !1288
  %23 = load i32, i32* %i.addr, align 4, !dbg !1288
  %add = add i32 %22, %23, !dbg !1288
  %cmp7 = icmp slt i32 %add, 0, !dbg !1288
  br label %lor.end, !dbg !1288

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !1288
  %lnot11 = xor i1 %lnot9, true, !dbg !1288
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !1288
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !1288
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !1288
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1290

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !1291
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #5, !dbg !1292
  br label %if.end16, !dbg !1292

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !1293
}

; Function Attrs: noredzone
declare dso_local i32 @dma_fence_add_callback(%struct.dma_fence*, %struct.dma_fence_cb*, void (%struct.dma_fence*, %struct.dma_fence_cb*)*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_chain_cb(%struct.dma_fence* %f, %struct.dma_fence_cb* %cb) #0 !dbg !1294 {
entry:
  %f.addr = alloca %struct.dma_fence*, align 8
  %cb.addr = alloca %struct.dma_fence_cb*, align 8
  %chain = alloca %struct.dma_fence_chain*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dma_fence_chain*, align 8
  store %struct.dma_fence* %f, %struct.dma_fence** %f.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %f.addr, metadata !1295, metadata !DIExpression()), !dbg !1296
  store %struct.dma_fence_cb* %cb, %struct.dma_fence_cb** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence_cb** %cb.addr, metadata !1297, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.declare(metadata %struct.dma_fence_chain** %chain, metadata !1299, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1301, metadata !DIExpression()), !dbg !1303
  %0 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cb.addr, align 8, !dbg !1303
  %1 = bitcast %struct.dma_fence_cb* %0 to i8*, !dbg !1303
  store i8* %1, i8** %__mptr, align 8, !dbg !1303
  br label %do.body, !dbg !1303

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1304

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1303
  %add.ptr = getelementptr i8, i8* %2, i64 -88, !dbg !1303
  %3 = bitcast i8* %add.ptr to %struct.dma_fence_chain*, !dbg !1303
  store %struct.dma_fence_chain* %3, %struct.dma_fence_chain** %tmp, align 8, !dbg !1304
  %4 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %tmp, align 8, !dbg !1303
  store %struct.dma_fence_chain* %4, %struct.dma_fence_chain** %chain, align 8, !dbg !1306
  %5 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %chain, align 8, !dbg !1307
  %work = getelementptr inbounds %struct.dma_fence_chain, %struct.dma_fence_chain* %5, i32 0, i32 6, !dbg !1308
  %call = call zeroext i1 @irq_work_queue(%struct.irq_work* %work) #5, !dbg !1309
  %6 = load %struct.dma_fence*, %struct.dma_fence** %f.addr, align 8, !dbg !1310
  call void @dma_fence_put(%struct.dma_fence* %6) #5, !dbg !1311
  ret void, !dbg !1312
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @irq_work_queue(%struct.irq_work*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_read(%struct.kref* %kref) #0 !dbg !1313 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !1318, metadata !DIExpression()), !dbg !1319
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !1320
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !1321
  %call = call i32 @refcount_read(%struct.refcount_struct* %refcount) #5, !dbg !1322
  ret i32 %call, !dbg !1323
}

; Function Attrs: noredzone
declare dso_local void @dma_fence_free(%struct.dma_fence*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { noredzone }
attributes #6 = { noredzone nounwind }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!208, !209, !210, !211}
!llvm.ident = !{!212}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dma_fence_chain_ops", scope: !2, file: !3, line: 210, type: !50, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !207, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/dma-buf/dma-fence-chain.c", directory: "/home/lizy2001/genbc/linux")
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_fence_flag_bits", file: !20, line: 98, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "DMA_FENCE_FLAG_SIGNALED_BIT", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "DMA_FENCE_FLAG_TIMESTAMP_BIT", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "DMA_FENCE_FLAG_USER_BITS", value: 3, isUnsigned: true)
!26 = !{!27, !133, !135, !136, !28, !137, !139, !195, !197, !200, !201, !205, !206, !84, !203}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !20, line: 65, size: 512, elements: !30)
!30 = !{!31, !48, !86, !112, !116, !117, !119, !132}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !29, file: !20, line: 66, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !34, line: 83, baseType: !35)
!34 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !34, line: 71, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, scope: !35, file: !34, line: 72, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !35, file: !34, line: 72, elements: !39)
!39 = !{!40}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !38, file: !34, line: 73, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !34, line: 20, elements: !42)
!42 = !{!43}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !41, file: !34, line: 21, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !45, line: 25, baseType: !46)
!45 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 25, elements: !47)
!47 = !{}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !29, file: !20, line: 67, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !20, line: 125, size: 576, elements: !52)
!52 = !{!53, !57, !64, !65, !69, !70, !75, !79, !85}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !51, file: !20, line: 132, baseType: !54, size: 8)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !55, line: 30, baseType: !56)
!55 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!56 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !51, file: !20, line: 143, baseType: !58, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !28}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !51, file: !20, line: 155, baseType: !58, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !51, file: !20, line: 192, baseType: !66, size: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!54, !28}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !51, file: !20, line: 209, baseType: !66, size: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !51, file: !20, line: 231, baseType: !71, size: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !28, !54, !74}
!74 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !51, file: !20, line: 242, baseType: !76, size: 64, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !28}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !51, file: !20, line: 252, baseType: !80, size: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !28, !83, !84}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!84 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !51, file: !20, line: 262, baseType: !80, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_member, scope: !29, file: !20, line: 84, baseType: !87, size: 128, offset: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !29, file: !20, line: 84, size: 128, elements: !88)
!88 = !{!89, !95, !103}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !87, file: !20, line: 85, baseType: !90, size: 128)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !55, line: 178, size: 128, elements: !91)
!91 = !{!92, !94}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !55, line: 179, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !90, file: !55, line: 179, baseType: !93, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !87, file: !20, line: 87, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !97, line: 29, baseType: !98)
!97 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !99, line: 22, baseType: !100)
!99 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !101, line: 30, baseType: !102)
!101 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!102 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !87, file: !20, line: 89, baseType: !104, size: 128, align: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !55, line: 216, size: 128, align: 64, elements: !105)
!105 = !{!106, !108}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !55, line: 217, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !104, file: !55, line: 218, baseType: !109, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !107}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !29, file: !20, line: 91, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !99, line: 23, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !101, line: 31, baseType: !115)
!115 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !29, file: !20, line: 92, baseType: !113, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !29, file: !20, line: 93, baseType: !118, size: 64, offset: 384)
!118 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !29, file: !20, line: 94, baseType: !120, size: 32, offset: 448)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !121, line: 19, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !120, file: !121, line: 20, baseType: !124, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !12, line: 113, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !12, line: 111, size: 32, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !125, file: !12, line: 112, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !55, line: 168, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 166, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !129, file: !55, line: 167, baseType: !84, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !29, file: !20, line: 95, baseType: !84, size: 32, offset: 480)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !55, line: 37, baseType: !118)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_chain", file: !141, line: 26, size: 1088, elements: !142)
!141 = !DIFile(filename: "./include/linux/dma-fence-chain.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144, !145, !146, !147, !148, !158}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !140, file: !141, line: 27, baseType: !29, size: 512)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !140, file: !141, line: 28, baseType: !33, offset: 512)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !140, file: !141, line: 29, baseType: !28, size: 64, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "prev_seqno", scope: !140, file: !141, line: 30, baseType: !113, size: 64, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !140, file: !141, line: 31, baseType: !28, size: 64, offset: 640)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !140, file: !141, line: 32, baseType: !149, size: 192, offset: 704)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !20, line: 116, size: 192, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !149, file: !20, line: 117, baseType: !90, size: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !149, file: !20, line: 118, baseType: !153, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !20, line: 105, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !28, !157}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !140, file: !141, line: 33, baseType: !159, size: 192, offset: 896)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !160, line: 16, size: 192, elements: !161)
!160 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/lizy2001/genbc/linux")
!161 = !{!162, !190}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !160, line: 17, baseType: !163, size: 128)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !159, file: !160, line: 17, size: 128, elements: !164)
!164 = !{!165, !185}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !163, file: !160, line: 18, baseType: !166, size: 128)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !167, line: 58, size: 128, elements: !168)
!167 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!168 = !{!169, !175, !180, !184}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !166, file: !167, line: 59, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !171, line: 58, size: 64, elements: !172)
!171 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !171, line: 59, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !167, line: 60, baseType: !176, size: 32, offset: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !167, line: 60, size: 32, elements: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !176, file: !167, line: 61, baseType: !7, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !176, file: !167, line: 62, baseType: !128, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !166, file: !167, line: 65, baseType: !181, size: 16, offset: 96)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !99, line: 19, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !101, line: 24, baseType: !183)
!183 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !166, file: !167, line: 65, baseType: !181, size: 16, offset: 112)
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !160, line: 19, baseType: !186, size: 128)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !163, file: !160, line: 19, size: 128, elements: !187)
!187 = !{!188, !189}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "llnode", scope: !186, file: !160, line: 20, baseType: !170, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !160, line: 21, baseType: !128, size: 32, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !159, file: !160, line: 24, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !194}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !84)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !99, line: 21, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !101, line: 27, baseType: !7)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!207 = !{!0}
!208 = !{i32 7, !"Dwarf Version", i32 4}
!209 = !{i32 2, !"Debug Info Version", i32 3}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"Code Model", i32 2}
!212 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!213 = distinct !DISubprogram(name: "dma_fence_chain_walk", scope: !3, file: !3, line: 39, type: !214, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!214 = !DISubroutineType(types: !215)
!215 = !{!28, !28}
!216 = !DILocalVariable(name: "v", arg: 1, scope: !217, file: !218, line: 84, type: !221)
!217 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !218, file: !218, line: 84, type: !219, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!218 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221, !224}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 55, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !226, line: 72, baseType: !227)
!226 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !226, line: 16, baseType: !118)
!228 = !DILocation(line: 84, column: 74, scope: !217, inlinedAt: !229)
!229 = distinct !DILocation(line: 65, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !3, line: 65, column: 9)
!231 = distinct !DILexicalBlock(scope: !213, file: !3, line: 50, column: 51)
!232 = !DILocalVariable(name: "size", arg: 2, scope: !217, file: !218, line: 84, type: !224)
!233 = !DILocation(line: 84, column: 84, scope: !217, inlinedAt: !229)
!234 = !DILocalVariable(name: "fence", arg: 1, scope: !213, file: !3, line: 39, type: !28)
!235 = !DILocation(line: 39, column: 58, scope: !213)
!236 = !DILocalVariable(name: "chain", scope: !213, file: !3, line: 41, type: !139)
!237 = !DILocation(line: 41, column: 26, scope: !213)
!238 = !DILocalVariable(name: "prev_chain", scope: !213, file: !3, line: 41, type: !139)
!239 = !DILocation(line: 41, column: 34, scope: !213)
!240 = !DILocalVariable(name: "prev", scope: !213, file: !3, line: 42, type: !28)
!241 = !DILocation(line: 42, column: 20, scope: !213)
!242 = !DILocalVariable(name: "replacement", scope: !213, file: !3, line: 42, type: !28)
!243 = !DILocation(line: 42, column: 27, scope: !213)
!244 = !DILocalVariable(name: "tmp", scope: !213, file: !3, line: 42, type: !28)
!245 = !DILocation(line: 42, column: 41, scope: !213)
!246 = !DILocation(line: 44, column: 29, scope: !213)
!247 = !DILocation(line: 44, column: 10, scope: !213)
!248 = !DILocation(line: 44, column: 8, scope: !213)
!249 = !DILocation(line: 45, column: 7, scope: !250)
!250 = distinct !DILexicalBlock(scope: !213, file: !3, line: 45, column: 6)
!251 = !DILocation(line: 45, column: 6, scope: !213)
!252 = !DILocation(line: 46, column: 17, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !3, line: 45, column: 14)
!254 = !DILocation(line: 46, column: 3, scope: !253)
!255 = !DILocation(line: 47, column: 3, scope: !253)
!256 = !DILocation(line: 50, column: 2, scope: !213)
!257 = !DILocation(line: 50, column: 42, scope: !213)
!258 = !DILocation(line: 50, column: 17, scope: !213)
!259 = !DILocation(line: 50, column: 15, scope: !213)
!260 = !DILocation(line: 52, column: 35, scope: !231)
!261 = !DILocation(line: 52, column: 16, scope: !231)
!262 = !DILocation(line: 52, column: 14, scope: !231)
!263 = !DILocation(line: 53, column: 7, scope: !264)
!264 = distinct !DILexicalBlock(scope: !231, file: !3, line: 53, column: 7)
!265 = !DILocation(line: 53, column: 7, scope: !231)
!266 = !DILocation(line: 54, column: 31, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 54, column: 8)
!268 = distinct !DILexicalBlock(scope: !264, file: !3, line: 53, column: 19)
!269 = !DILocation(line: 54, column: 43, scope: !267)
!270 = !DILocation(line: 54, column: 9, scope: !267)
!271 = !DILocation(line: 54, column: 8, scope: !268)
!272 = !DILocation(line: 55, column: 5, scope: !267)
!273 = !DILocation(line: 57, column: 43, scope: !268)
!274 = !DILocation(line: 57, column: 18, scope: !268)
!275 = !DILocation(line: 57, column: 16, scope: !268)
!276 = !DILocation(line: 58, column: 3, scope: !268)
!277 = !DILocation(line: 59, column: 31, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !3, line: 59, column: 8)
!279 = distinct !DILexicalBlock(scope: !264, file: !3, line: 58, column: 10)
!280 = !DILocation(line: 59, column: 9, scope: !278)
!281 = !DILocation(line: 59, column: 8, scope: !279)
!282 = !DILocation(line: 60, column: 5, scope: !278)
!283 = !DILocation(line: 62, column: 16, scope: !279)
!284 = !DILocalVariable(name: "__ai_ptr", scope: !230, file: !3, line: 65, type: !27)
!285 = !DILocation(line: 65, column: 9, scope: !230)
!286 = !DILocation(line: 86, column: 20, scope: !217, inlinedAt: !229)
!287 = !DILocation(line: 86, column: 23, scope: !217, inlinedAt: !229)
!288 = !DILocation(line: 86, column: 2, scope: !217, inlinedAt: !229)
!289 = !DILocation(line: 87, column: 2, scope: !217, inlinedAt: !229)
!290 = !DILocalVariable(name: "__ret", scope: !291, file: !3, line: 65, type: !28)
!291 = distinct !DILexicalBlock(scope: !230, file: !3, line: 65, column: 9)
!292 = !DILocation(line: 65, column: 9, scope: !291)
!293 = !DILocalVariable(name: "__old", scope: !291, file: !3, line: 65, type: !28)
!294 = !DILocalVariable(name: "__new", scope: !291, file: !3, line: 65, type: !28)
!295 = !DILocalVariable(name: "__ptr", scope: !291, file: !3, line: 65, type: !133)
!296 = !{i32 -2144656380}
!297 = !DILocation(line: 65, column: 7, scope: !231)
!298 = !DILocation(line: 67, column: 7, scope: !299)
!299 = distinct !DILexicalBlock(scope: !231, file: !3, line: 67, column: 7)
!300 = !DILocation(line: 67, column: 14, scope: !299)
!301 = !DILocation(line: 67, column: 11, scope: !299)
!302 = !DILocation(line: 67, column: 7, scope: !231)
!303 = !DILocation(line: 68, column: 18, scope: !299)
!304 = !DILocation(line: 68, column: 4, scope: !299)
!305 = !DILocation(line: 70, column: 18, scope: !299)
!306 = !DILocation(line: 70, column: 4, scope: !299)
!307 = !DILocation(line: 71, column: 17, scope: !231)
!308 = !DILocation(line: 71, column: 3, scope: !231)
!309 = distinct !{!309, !256, !310}
!310 = !DILocation(line: 72, column: 2, scope: !213)
!311 = !DILocation(line: 74, column: 16, scope: !213)
!312 = !DILocation(line: 74, column: 2, scope: !213)
!313 = !DILocation(line: 75, column: 9, scope: !213)
!314 = !DILocation(line: 75, column: 2, scope: !213)
!315 = !DILocation(line: 76, column: 1, scope: !213)
!316 = distinct !DISubprogram(name: "to_dma_fence_chain", scope: !141, file: !141, line: 46, type: !317, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!317 = !DISubroutineType(types: !318)
!318 = !{!139, !28}
!319 = !DILocalVariable(name: "fence", arg: 1, scope: !316, file: !141, line: 46, type: !28)
!320 = !DILocation(line: 46, column: 38, scope: !316)
!321 = !DILocation(line: 48, column: 7, scope: !322)
!322 = distinct !DILexicalBlock(scope: !316, file: !141, line: 48, column: 6)
!323 = !DILocation(line: 48, column: 13, scope: !322)
!324 = !DILocation(line: 48, column: 16, scope: !322)
!325 = !DILocation(line: 48, column: 23, scope: !322)
!326 = !DILocation(line: 48, column: 27, scope: !322)
!327 = !DILocation(line: 48, column: 6, scope: !316)
!328 = !DILocation(line: 49, column: 3, scope: !322)
!329 = !DILocalVariable(name: "__mptr", scope: !330, file: !141, line: 51, type: !136)
!330 = distinct !DILexicalBlock(scope: !316, file: !141, line: 51, column: 9)
!331 = !DILocation(line: 51, column: 9, scope: !330)
!332 = !DILocation(line: 51, column: 9, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !141, line: 51, column: 9)
!334 = !DILocation(line: 51, column: 2, scope: !316)
!335 = !DILocation(line: 52, column: 1, scope: !316)
!336 = distinct !DISubprogram(name: "dma_fence_put", scope: !20, file: !20, line: 276, type: !77, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!337 = !DILocalVariable(name: "fence", arg: 1, scope: !336, file: !20, line: 276, type: !28)
!338 = !DILocation(line: 276, column: 52, scope: !336)
!339 = !DILocation(line: 278, column: 6, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !20, line: 278, column: 6)
!341 = !DILocation(line: 278, column: 6, scope: !336)
!342 = !DILocation(line: 279, column: 13, scope: !340)
!343 = !DILocation(line: 279, column: 20, scope: !340)
!344 = !DILocation(line: 279, column: 3, scope: !340)
!345 = !DILocation(line: 280, column: 1, scope: !336)
!346 = distinct !DISubprogram(name: "dma_fence_chain_get_prev", scope: !3, file: !3, line: 21, type: !347, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!347 = !DISubroutineType(types: !348)
!348 = !{!28, !139}
!349 = !DILocalVariable(name: "chain", arg: 1, scope: !346, file: !3, line: 21, type: !139)
!350 = !DILocation(line: 21, column: 75, scope: !346)
!351 = !DILocalVariable(name: "prev", scope: !346, file: !3, line: 23, type: !28)
!352 = !DILocation(line: 23, column: 20, scope: !346)
!353 = !DILocation(line: 639, column: 2, scope: !354, inlinedAt: !358)
!354 = distinct !DISubprogram(name: "rcu_read_lock", scope: !355, file: !355, line: 637, type: !356, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!355 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/lizy2001/genbc/linux")
!356 = !DISubroutineType(types: !357)
!357 = !{null}
!358 = distinct !DILocation(line: 25, column: 2, scope: !346)
!359 = !DILocation(line: 26, column: 33, scope: !346)
!360 = !DILocation(line: 26, column: 40, scope: !346)
!361 = !DILocation(line: 26, column: 9, scope: !346)
!362 = !DILocation(line: 26, column: 7, scope: !346)
!363 = !DILocation(line: 27, column: 2, scope: !346)
!364 = !DILocation(line: 28, column: 9, scope: !346)
!365 = !DILocation(line: 28, column: 2, scope: !346)
!366 = distinct !DISubprogram(name: "dma_fence_is_signaled", scope: !20, file: !20, line: 429, type: !67, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!367 = !DILocalVariable(name: "fence", arg: 1, scope: !366, file: !20, line: 429, type: !28)
!368 = !DILocation(line: 429, column: 41, scope: !366)
!369 = !DILocation(line: 431, column: 45, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !20, line: 431, column: 6)
!371 = !DILocation(line: 431, column: 52, scope: !370)
!372 = !DILocation(line: 431, column: 6, scope: !370)
!373 = !DILocation(line: 431, column: 6, scope: !366)
!374 = !DILocation(line: 432, column: 3, scope: !370)
!375 = !DILocation(line: 434, column: 6, scope: !376)
!376 = distinct !DILexicalBlock(scope: !366, file: !20, line: 434, column: 6)
!377 = !DILocation(line: 434, column: 13, scope: !376)
!378 = !DILocation(line: 434, column: 18, scope: !376)
!379 = !DILocation(line: 434, column: 27, scope: !376)
!380 = !DILocation(line: 434, column: 30, scope: !376)
!381 = !DILocation(line: 434, column: 37, scope: !376)
!382 = !DILocation(line: 434, column: 42, scope: !376)
!383 = !DILocation(line: 434, column: 51, scope: !376)
!384 = !DILocation(line: 434, column: 6, scope: !366)
!385 = !DILocation(line: 435, column: 20, scope: !386)
!386 = distinct !DILexicalBlock(scope: !376, file: !20, line: 434, column: 59)
!387 = !DILocation(line: 435, column: 3, scope: !386)
!388 = !DILocation(line: 436, column: 3, scope: !386)
!389 = !DILocation(line: 439, column: 2, scope: !366)
!390 = !DILocation(line: 440, column: 1, scope: !366)
!391 = distinct !DISubprogram(name: "dma_fence_chain_find_seqno", scope: !3, file: !3, line: 90, type: !392, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!392 = !DISubroutineType(types: !393)
!393 = !{!84, !27, !394}
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !55, line: 107, baseType: !113)
!395 = !DILocalVariable(name: "pfence", arg: 1, scope: !391, file: !3, line: 90, type: !27)
!396 = !DILocation(line: 90, column: 51, scope: !391)
!397 = !DILocalVariable(name: "seqno", arg: 2, scope: !391, file: !3, line: 90, type: !394)
!398 = !DILocation(line: 90, column: 68, scope: !391)
!399 = !DILocalVariable(name: "chain", scope: !391, file: !3, line: 92, type: !139)
!400 = !DILocation(line: 92, column: 26, scope: !391)
!401 = !DILocation(line: 94, column: 7, scope: !402)
!402 = distinct !DILexicalBlock(scope: !391, file: !3, line: 94, column: 6)
!403 = !DILocation(line: 94, column: 6, scope: !391)
!404 = !DILocation(line: 95, column: 3, scope: !402)
!405 = !DILocation(line: 97, column: 30, scope: !391)
!406 = !DILocation(line: 97, column: 29, scope: !391)
!407 = !DILocation(line: 97, column: 10, scope: !391)
!408 = !DILocation(line: 97, column: 8, scope: !391)
!409 = !DILocation(line: 98, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !391, file: !3, line: 98, column: 6)
!411 = !DILocation(line: 98, column: 13, scope: !410)
!412 = !DILocation(line: 98, column: 16, scope: !410)
!413 = !DILocation(line: 98, column: 23, scope: !410)
!414 = !DILocation(line: 98, column: 28, scope: !410)
!415 = !DILocation(line: 98, column: 36, scope: !410)
!416 = !DILocation(line: 98, column: 34, scope: !410)
!417 = !DILocation(line: 98, column: 6, scope: !391)
!418 = !DILocation(line: 99, column: 3, scope: !410)
!419 = !DILocation(line: 101, column: 2, scope: !420)
!420 = distinct !DILexicalBlock(scope: !391, file: !3, line: 101, column: 2)
!421 = !DILocation(line: 101, column: 2, scope: !422)
!422 = distinct !DILexicalBlock(scope: !420, file: !3, line: 101, column: 2)
!423 = !DILocation(line: 102, column: 9, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 102, column: 7)
!425 = distinct !DILexicalBlock(scope: !422, file: !3, line: 101, column: 50)
!426 = !DILocation(line: 102, column: 8, scope: !424)
!427 = !DILocation(line: 102, column: 18, scope: !424)
!428 = !DILocation(line: 102, column: 29, scope: !424)
!429 = !DILocation(line: 102, column: 36, scope: !424)
!430 = !DILocation(line: 102, column: 41, scope: !424)
!431 = !DILocation(line: 102, column: 26, scope: !424)
!432 = !DILocation(line: 102, column: 49, scope: !424)
!433 = !DILocation(line: 103, column: 27, scope: !424)
!434 = !DILocation(line: 103, column: 26, scope: !424)
!435 = !DILocation(line: 103, column: 7, scope: !424)
!436 = !DILocation(line: 103, column: 36, scope: !424)
!437 = !DILocation(line: 103, column: 49, scope: !424)
!438 = !DILocation(line: 103, column: 47, scope: !424)
!439 = !DILocation(line: 102, column: 7, scope: !425)
!440 = !DILocation(line: 104, column: 4, scope: !424)
!441 = !DILocation(line: 105, column: 2, scope: !425)
!442 = distinct !{!442, !419, !443}
!443 = !DILocation(line: 105, column: 2, scope: !420)
!444 = !DILocation(line: 106, column: 17, scope: !391)
!445 = !DILocation(line: 106, column: 24, scope: !391)
!446 = !DILocation(line: 106, column: 2, scope: !391)
!447 = !DILocation(line: 108, column: 2, scope: !391)
!448 = !DILocation(line: 109, column: 1, scope: !391)
!449 = distinct !DISubprogram(name: "dma_fence_get", scope: !20, file: !20, line: 288, type: !214, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!450 = !DILocalVariable(name: "fence", arg: 1, scope: !449, file: !20, line: 288, type: !28)
!451 = !DILocation(line: 288, column: 65, scope: !449)
!452 = !DILocation(line: 290, column: 6, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !20, line: 290, column: 6)
!454 = !DILocation(line: 290, column: 6, scope: !449)
!455 = !DILocation(line: 291, column: 13, scope: !453)
!456 = !DILocation(line: 291, column: 20, scope: !453)
!457 = !DILocation(line: 291, column: 3, scope: !453)
!458 = !DILocation(line: 292, column: 9, scope: !449)
!459 = !DILocation(line: 292, column: 2, scope: !449)
!460 = distinct !DISubprogram(name: "dma_fence_chain_get_driver_name", scope: !3, file: !3, line: 112, type: !59, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!461 = !DILocalVariable(name: "fence", arg: 1, scope: !460, file: !3, line: 112, type: !28)
!462 = !DILocation(line: 112, column: 70, scope: !460)
!463 = !DILocation(line: 114, column: 9, scope: !460)
!464 = distinct !DISubprogram(name: "dma_fence_chain_get_timeline_name", scope: !3, file: !3, line: 117, type: !59, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!465 = !DILocalVariable(name: "fence", arg: 1, scope: !464, file: !3, line: 117, type: !28)
!466 = !DILocation(line: 117, column: 72, scope: !464)
!467 = !DILocation(line: 119, column: 9, scope: !464)
!468 = distinct !DISubprogram(name: "dma_fence_chain_enable_signaling", scope: !3, file: !3, line: 144, type: !67, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!469 = !DILocalVariable(name: "fence", arg: 1, scope: !468, file: !3, line: 144, type: !28)
!470 = !DILocation(line: 144, column: 64, scope: !468)
!471 = !DILocalVariable(name: "head", scope: !468, file: !3, line: 146, type: !139)
!472 = !DILocation(line: 146, column: 26, scope: !468)
!473 = !DILocation(line: 146, column: 52, scope: !468)
!474 = !DILocation(line: 146, column: 33, scope: !468)
!475 = !DILocation(line: 148, column: 17, scope: !468)
!476 = !DILocation(line: 148, column: 23, scope: !468)
!477 = !DILocation(line: 148, column: 2, scope: !468)
!478 = !DILocation(line: 149, column: 2, scope: !479)
!479 = distinct !DILexicalBlock(scope: !468, file: !3, line: 149, column: 2)
!480 = !DILocation(line: 149, column: 2, scope: !481)
!481 = distinct !DILexicalBlock(scope: !479, file: !3, line: 149, column: 2)
!482 = !DILocalVariable(name: "chain", scope: !483, file: !3, line: 150, type: !139)
!483 = distinct !DILexicalBlock(scope: !481, file: !3, line: 149, column: 47)
!484 = !DILocation(line: 150, column: 27, scope: !483)
!485 = !DILocation(line: 150, column: 54, scope: !483)
!486 = !DILocation(line: 150, column: 35, scope: !483)
!487 = !DILocalVariable(name: "f", scope: !483, file: !3, line: 151, type: !28)
!488 = !DILocation(line: 151, column: 21, scope: !483)
!489 = !DILocation(line: 151, column: 25, scope: !483)
!490 = !DILocation(line: 151, column: 33, scope: !483)
!491 = !DILocation(line: 151, column: 40, scope: !483)
!492 = !DILocation(line: 151, column: 48, scope: !483)
!493 = !DILocation(line: 153, column: 17, scope: !483)
!494 = !DILocation(line: 153, column: 3, scope: !483)
!495 = !DILocation(line: 154, column: 31, scope: !496)
!496 = distinct !DILexicalBlock(scope: !483, file: !3, line: 154, column: 7)
!497 = !DILocation(line: 154, column: 35, scope: !496)
!498 = !DILocation(line: 154, column: 41, scope: !496)
!499 = !DILocation(line: 154, column: 8, scope: !496)
!500 = !DILocation(line: 154, column: 7, scope: !483)
!501 = !DILocation(line: 155, column: 18, scope: !502)
!502 = distinct !DILexicalBlock(scope: !496, file: !3, line: 154, column: 66)
!503 = !DILocation(line: 155, column: 4, scope: !502)
!504 = !DILocation(line: 156, column: 4, scope: !502)
!505 = !DILocation(line: 158, column: 17, scope: !483)
!506 = !DILocation(line: 158, column: 3, scope: !483)
!507 = !DILocation(line: 159, column: 2, scope: !483)
!508 = distinct !{!508, !478, !509}
!509 = !DILocation(line: 159, column: 2, scope: !479)
!510 = !DILocation(line: 160, column: 17, scope: !468)
!511 = !DILocation(line: 160, column: 23, scope: !468)
!512 = !DILocation(line: 160, column: 2, scope: !468)
!513 = !DILocation(line: 161, column: 2, scope: !468)
!514 = !DILocation(line: 162, column: 1, scope: !468)
!515 = distinct !DISubprogram(name: "dma_fence_chain_signaled", scope: !3, file: !3, line: 164, type: !67, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!516 = !DILocalVariable(name: "fence", arg: 1, scope: !515, file: !3, line: 164, type: !28)
!517 = !DILocation(line: 164, column: 56, scope: !515)
!518 = !DILocation(line: 166, column: 2, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !3, line: 166, column: 2)
!520 = !DILocation(line: 166, column: 2, scope: !521)
!521 = distinct !DILexicalBlock(scope: !519, file: !3, line: 166, column: 2)
!522 = !DILocalVariable(name: "chain", scope: !523, file: !3, line: 167, type: !139)
!523 = distinct !DILexicalBlock(scope: !521, file: !3, line: 166, column: 41)
!524 = !DILocation(line: 167, column: 27, scope: !523)
!525 = !DILocation(line: 167, column: 54, scope: !523)
!526 = !DILocation(line: 167, column: 35, scope: !523)
!527 = !DILocalVariable(name: "f", scope: !523, file: !3, line: 168, type: !28)
!528 = !DILocation(line: 168, column: 21, scope: !523)
!529 = !DILocation(line: 168, column: 25, scope: !523)
!530 = !DILocation(line: 168, column: 33, scope: !523)
!531 = !DILocation(line: 168, column: 40, scope: !523)
!532 = !DILocation(line: 168, column: 48, scope: !523)
!533 = !DILocation(line: 170, column: 30, scope: !534)
!534 = distinct !DILexicalBlock(scope: !523, file: !3, line: 170, column: 7)
!535 = !DILocation(line: 170, column: 8, scope: !534)
!536 = !DILocation(line: 170, column: 7, scope: !523)
!537 = !DILocation(line: 171, column: 18, scope: !538)
!538 = distinct !DILexicalBlock(scope: !534, file: !3, line: 170, column: 34)
!539 = !DILocation(line: 171, column: 4, scope: !538)
!540 = !DILocation(line: 172, column: 4, scope: !538)
!541 = !DILocation(line: 174, column: 2, scope: !523)
!542 = distinct !{!542, !518, !543}
!543 = !DILocation(line: 174, column: 2, scope: !519)
!544 = !DILocation(line: 176, column: 2, scope: !515)
!545 = !DILocation(line: 177, column: 1, scope: !515)
!546 = distinct !DISubprogram(name: "dma_fence_chain_release", scope: !3, file: !3, line: 179, type: !77, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!547 = !DILocalVariable(name: "fence", arg: 1, scope: !546, file: !3, line: 179, type: !28)
!548 = !DILocation(line: 179, column: 55, scope: !546)
!549 = !DILocalVariable(name: "chain", scope: !546, file: !3, line: 181, type: !139)
!550 = !DILocation(line: 181, column: 26, scope: !546)
!551 = !DILocation(line: 181, column: 53, scope: !546)
!552 = !DILocation(line: 181, column: 34, scope: !546)
!553 = !DILocalVariable(name: "prev", scope: !546, file: !3, line: 182, type: !28)
!554 = !DILocation(line: 182, column: 20, scope: !546)
!555 = !DILocation(line: 187, column: 2, scope: !546)
!556 = !DILocation(line: 187, column: 17, scope: !557)
!557 = distinct !DILexicalBlock(scope: !546, file: !3, line: 187, column: 17)
!558 = !DILocation(line: 187, column: 17, scope: !559)
!559 = distinct !DILexicalBlock(scope: !557, file: !3, line: 187, column: 17)
!560 = !DILocation(line: 187, column: 15, scope: !546)
!561 = !DILocalVariable(name: "prev_chain", scope: !562, file: !3, line: 188, type: !139)
!562 = distinct !DILexicalBlock(scope: !546, file: !3, line: 187, column: 64)
!563 = !DILocation(line: 188, column: 27, scope: !562)
!564 = !DILocation(line: 190, column: 18, scope: !565)
!565 = distinct !DILexicalBlock(scope: !562, file: !3, line: 190, column: 7)
!566 = !DILocation(line: 190, column: 24, scope: !565)
!567 = !DILocation(line: 190, column: 7, scope: !565)
!568 = !DILocation(line: 190, column: 34, scope: !565)
!569 = !DILocation(line: 190, column: 7, scope: !562)
!570 = !DILocation(line: 191, column: 10, scope: !565)
!571 = !DILocation(line: 193, column: 35, scope: !562)
!572 = !DILocation(line: 193, column: 16, scope: !562)
!573 = !DILocation(line: 193, column: 14, scope: !562)
!574 = !DILocation(line: 194, column: 8, scope: !575)
!575 = distinct !DILexicalBlock(scope: !562, file: !3, line: 194, column: 7)
!576 = !DILocation(line: 194, column: 7, scope: !562)
!577 = !DILocation(line: 195, column: 4, scope: !575)
!578 = !DILocation(line: 200, column: 17, scope: !562)
!579 = !DILocation(line: 200, column: 29, scope: !562)
!580 = !DILocation(line: 200, column: 3, scope: !562)
!581 = !DILocation(line: 200, column: 10, scope: !562)
!582 = !DILocation(line: 200, column: 15, scope: !562)
!583 = !DILocation(line: 201, column: 3, scope: !562)
!584 = !DILocation(line: 201, column: 3, scope: !585)
!585 = distinct !DILexicalBlock(scope: !562, file: !3, line: 201, column: 3)
!586 = !DILocation(line: 201, column: 3, scope: !587)
!587 = distinct !DILexicalBlock(scope: !585, file: !3, line: 201, column: 3)
!588 = !DILocation(line: 201, column: 3, scope: !589)
!589 = distinct !DILexicalBlock(scope: !587, file: !3, line: 201, column: 3)
!590 = !DILocation(line: 201, column: 3, scope: !591)
!591 = distinct !DILexicalBlock(scope: !587, file: !3, line: 201, column: 3)
!592 = !DILocation(line: 202, column: 17, scope: !562)
!593 = !DILocation(line: 202, column: 3, scope: !562)
!594 = distinct !{!594, !555, !595}
!595 = !DILocation(line: 203, column: 2, scope: !546)
!596 = !DILocation(line: 204, column: 16, scope: !546)
!597 = !DILocation(line: 204, column: 2, scope: !546)
!598 = !DILocation(line: 206, column: 16, scope: !546)
!599 = !DILocation(line: 206, column: 23, scope: !546)
!600 = !DILocation(line: 206, column: 2, scope: !546)
!601 = !DILocation(line: 207, column: 17, scope: !546)
!602 = !DILocation(line: 207, column: 2, scope: !546)
!603 = !DILocation(line: 208, column: 1, scope: !546)
!604 = distinct !DISubprogram(name: "dma_fence_chain_init", scope: !3, file: !3, line: 230, type: !605, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !139, !28, !28, !394}
!607 = !DILocalVariable(name: "lock", arg: 1, scope: !608, file: !609, line: 327, type: !32)
!608 = distinct !DISubprogram(name: "spinlock_check", scope: !609, file: !609, line: 327, type: !610, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!609 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!610 = !DISubroutineType(types: !611)
!611 = !{!612, !32}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !34, line: 29, baseType: !41)
!614 = !DILocation(line: 327, column: 67, scope: !608, inlinedAt: !615)
!615 = distinct !DILocation(line: 238, column: 2, scope: !616)
!616 = distinct !DILexicalBlock(scope: !604, file: !3, line: 238, column: 2)
!617 = !DILocalVariable(name: "chain", arg: 1, scope: !604, file: !3, line: 230, type: !139)
!618 = !DILocation(line: 230, column: 51, scope: !604)
!619 = !DILocalVariable(name: "prev", arg: 2, scope: !604, file: !3, line: 231, type: !28)
!620 = !DILocation(line: 231, column: 24, scope: !604)
!621 = !DILocalVariable(name: "fence", arg: 3, scope: !604, file: !3, line: 232, type: !28)
!622 = !DILocation(line: 232, column: 24, scope: !604)
!623 = !DILocalVariable(name: "seqno", arg: 4, scope: !604, file: !3, line: 233, type: !394)
!624 = !DILocation(line: 233, column: 15, scope: !604)
!625 = !DILocalVariable(name: "prev_chain", scope: !604, file: !3, line: 235, type: !139)
!626 = !DILocation(line: 235, column: 26, scope: !604)
!627 = !DILocation(line: 235, column: 58, scope: !604)
!628 = !DILocation(line: 235, column: 39, scope: !604)
!629 = !DILocalVariable(name: "context", scope: !604, file: !3, line: 236, type: !394)
!630 = !DILocation(line: 236, column: 11, scope: !604)
!631 = !DILocation(line: 238, column: 2, scope: !604)
!632 = !DILocation(line: 238, column: 2, scope: !616)
!633 = !DILocation(line: 329, column: 10, scope: !608, inlinedAt: !615)
!634 = !DILocation(line: 329, column: 16, scope: !608, inlinedAt: !615)
!635 = !DILocation(line: 239, column: 2, scope: !604)
!636 = !DILocalVariable(name: "_r_a_p__v", scope: !637, file: !3, line: 239, type: !135)
!637 = distinct !DILexicalBlock(scope: !604, file: !3, line: 239, column: 2)
!638 = !DILocation(line: 239, column: 2, scope: !637)
!639 = !DILocation(line: 239, column: 2, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !3, line: 239, column: 2)
!641 = !DILocation(line: 239, column: 2, scope: !642)
!642 = distinct !DILexicalBlock(scope: !640, file: !3, line: 239, column: 2)
!643 = !DILocation(line: 239, column: 2, scope: !644)
!644 = distinct !DILexicalBlock(scope: !642, file: !3, line: 239, column: 2)
!645 = !DILocation(line: 239, column: 2, scope: !646)
!646 = distinct !DILexicalBlock(scope: !642, file: !3, line: 239, column: 2)
!647 = !DILocation(line: 239, column: 2, scope: !648)
!648 = distinct !DILexicalBlock(scope: !640, file: !3, line: 239, column: 2)
!649 = !DILocation(line: 239, column: 2, scope: !650)
!650 = distinct !DILexicalBlock(scope: !648, file: !3, line: 239, column: 2)
!651 = !{i32 -2144647408}
!652 = !DILocation(line: 239, column: 2, scope: !653)
!653 = distinct !DILexicalBlock(scope: !648, file: !3, line: 239, column: 2)
!654 = !DILocation(line: 239, column: 2, scope: !655)
!655 = distinct !DILexicalBlock(scope: !653, file: !3, line: 239, column: 2)
!656 = !DILocation(line: 239, column: 2, scope: !657)
!657 = distinct !DILexicalBlock(scope: !653, file: !3, line: 239, column: 2)
!658 = !DILocation(line: 240, column: 17, scope: !604)
!659 = !DILocation(line: 240, column: 2, scope: !604)
!660 = !DILocation(line: 240, column: 9, scope: !604)
!661 = !DILocation(line: 240, column: 15, scope: !604)
!662 = !DILocation(line: 241, column: 2, scope: !604)
!663 = !DILocation(line: 241, column: 9, scope: !604)
!664 = !DILocation(line: 241, column: 20, scope: !604)
!665 = !DILocation(line: 242, column: 17, scope: !604)
!666 = !DILocation(line: 242, column: 24, scope: !604)
!667 = !DILocation(line: 242, column: 2, scope: !604)
!668 = !DILocation(line: 245, column: 6, scope: !669)
!669 = distinct !DILexicalBlock(scope: !604, file: !3, line: 245, column: 6)
!670 = !DILocation(line: 245, column: 17, scope: !669)
!671 = !DILocation(line: 245, column: 41, scope: !669)
!672 = !DILocation(line: 245, column: 48, scope: !669)
!673 = !DILocation(line: 245, column: 54, scope: !669)
!674 = !DILocation(line: 245, column: 61, scope: !669)
!675 = !DILocation(line: 245, column: 67, scope: !669)
!676 = !DILocation(line: 245, column: 20, scope: !669)
!677 = !DILocation(line: 245, column: 6, scope: !604)
!678 = !DILocation(line: 246, column: 13, scope: !679)
!679 = distinct !DILexicalBlock(scope: !669, file: !3, line: 245, column: 73)
!680 = !DILocation(line: 246, column: 19, scope: !679)
!681 = !DILocation(line: 246, column: 11, scope: !679)
!682 = !DILocation(line: 247, column: 23, scope: !679)
!683 = !DILocation(line: 247, column: 29, scope: !679)
!684 = !DILocation(line: 247, column: 3, scope: !679)
!685 = !DILocation(line: 247, column: 10, scope: !679)
!686 = !DILocation(line: 247, column: 21, scope: !679)
!687 = !DILocation(line: 248, column: 2, scope: !679)
!688 = !DILocation(line: 249, column: 13, scope: !689)
!689 = distinct !DILexicalBlock(scope: !669, file: !3, line: 248, column: 9)
!690 = !DILocation(line: 249, column: 11, scope: !689)
!691 = !DILocation(line: 251, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !3, line: 251, column: 7)
!693 = !DILocation(line: 251, column: 7, scope: !689)
!694 = !DILocalVariable(name: "__UNIQUE_ID___x139", scope: !695, file: !3, line: 252, type: !113)
!695 = distinct !DILexicalBlock(scope: !692, file: !3, line: 252, column: 12)
!696 = !DILocation(line: 252, column: 12, scope: !695)
!697 = !DILocalVariable(name: "__UNIQUE_ID___y140", scope: !695, file: !3, line: 252, type: !394)
!698 = !DILocation(line: 252, column: 10, scope: !692)
!699 = !DILocation(line: 252, column: 4, scope: !692)
!700 = !DILocation(line: 255, column: 18, scope: !604)
!701 = !DILocation(line: 255, column: 25, scope: !604)
!702 = !DILocation(line: 256, column: 11, scope: !604)
!703 = !DILocation(line: 256, column: 18, scope: !604)
!704 = !DILocation(line: 256, column: 24, scope: !604)
!705 = !DILocation(line: 256, column: 33, scope: !604)
!706 = !DILocation(line: 255, column: 2, scope: !604)
!707 = !DILocation(line: 257, column: 1, scope: !604)
!708 = distinct !DISubprogram(name: "init_irq_work", scope: !160, file: !160, line: 28, type: !709, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !194, !191}
!711 = !DILocalVariable(name: "v", arg: 1, scope: !712, file: !713, line: 39, type: !716)
!712 = distinct !DISubprogram(name: "arch_atomic_set", scope: !713, file: !713, line: 39, type: !714, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!713 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!714 = !DISubroutineType(types: !715)
!715 = !{null, !716, !84}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!717 = !DILocation(line: 39, column: 55, scope: !712, inlinedAt: !718)
!718 = distinct !DILocation(line: 46, column: 2, scope: !719, inlinedAt: !721)
!719 = distinct !DISubprogram(name: "atomic_set", scope: !720, file: !720, line: 43, type: !714, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!720 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!721 = distinct !DILocation(line: 30, column: 2, scope: !708)
!722 = !DILocalVariable(name: "i", arg: 2, scope: !712, file: !713, line: 39, type: !84)
!723 = !DILocation(line: 39, column: 62, scope: !712, inlinedAt: !718)
!724 = !DILocation(line: 84, column: 74, scope: !217, inlinedAt: !725)
!725 = distinct !DILocation(line: 45, column: 2, scope: !719, inlinedAt: !721)
!726 = !DILocation(line: 84, column: 84, scope: !217, inlinedAt: !725)
!727 = !DILocalVariable(name: "v", arg: 1, scope: !719, file: !720, line: 43, type: !716)
!728 = !DILocation(line: 43, column: 22, scope: !719, inlinedAt: !721)
!729 = !DILocalVariable(name: "i", arg: 2, scope: !719, file: !720, line: 43, type: !84)
!730 = !DILocation(line: 43, column: 29, scope: !719, inlinedAt: !721)
!731 = !DILocalVariable(name: "work", arg: 1, scope: !708, file: !160, line: 28, type: !194)
!732 = !DILocation(line: 28, column: 37, scope: !708)
!733 = !DILocalVariable(name: "func", arg: 2, scope: !708, file: !160, line: 28, type: !191)
!734 = !DILocation(line: 28, column: 50, scope: !708)
!735 = !DILocation(line: 30, column: 14, scope: !708)
!736 = !DILocation(line: 30, column: 20, scope: !708)
!737 = !DILocation(line: 45, column: 26, scope: !719, inlinedAt: !721)
!738 = !DILocation(line: 86, column: 20, scope: !217, inlinedAt: !725)
!739 = !DILocation(line: 86, column: 23, scope: !217, inlinedAt: !725)
!740 = !DILocation(line: 86, column: 2, scope: !217, inlinedAt: !725)
!741 = !DILocation(line: 87, column: 2, scope: !217, inlinedAt: !725)
!742 = !DILocation(line: 46, column: 18, scope: !719, inlinedAt: !721)
!743 = !DILocation(line: 46, column: 21, scope: !719, inlinedAt: !721)
!744 = !DILocation(line: 41, column: 2, scope: !745, inlinedAt: !718)
!745 = distinct !DILexicalBlock(scope: !712, file: !713, line: 41, column: 2)
!746 = !DILocation(line: 31, column: 15, scope: !708)
!747 = !DILocation(line: 31, column: 2, scope: !708)
!748 = !DILocation(line: 31, column: 8, scope: !708)
!749 = !DILocation(line: 31, column: 13, scope: !708)
!750 = !DILocation(line: 32, column: 1, scope: !708)
!751 = distinct !DISubprogram(name: "dma_fence_chain_irq_work", scope: !3, file: !3, line: 122, type: !192, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!752 = !DILocalVariable(name: "work", arg: 1, scope: !751, file: !3, line: 122, type: !194)
!753 = !DILocation(line: 122, column: 55, scope: !751)
!754 = !DILocalVariable(name: "chain", scope: !751, file: !3, line: 124, type: !139)
!755 = !DILocation(line: 124, column: 26, scope: !751)
!756 = !DILocalVariable(name: "__mptr", scope: !757, file: !3, line: 126, type: !136)
!757 = distinct !DILexicalBlock(scope: !751, file: !3, line: 126, column: 10)
!758 = !DILocation(line: 126, column: 10, scope: !757)
!759 = !DILocation(line: 126, column: 10, scope: !760)
!760 = distinct !DILexicalBlock(scope: !757, file: !3, line: 126, column: 10)
!761 = !DILocation(line: 126, column: 8, scope: !751)
!762 = !DILocation(line: 129, column: 41, scope: !763)
!763 = distinct !DILexicalBlock(scope: !751, file: !3, line: 129, column: 6)
!764 = !DILocation(line: 129, column: 48, scope: !763)
!765 = !DILocation(line: 129, column: 7, scope: !763)
!766 = !DILocation(line: 129, column: 6, scope: !751)
!767 = !DILocation(line: 131, column: 21, scope: !763)
!768 = !DILocation(line: 131, column: 28, scope: !763)
!769 = !DILocation(line: 131, column: 3, scope: !763)
!770 = !DILocation(line: 132, column: 17, scope: !751)
!771 = !DILocation(line: 132, column: 24, scope: !751)
!772 = !DILocation(line: 132, column: 2, scope: !751)
!773 = !DILocation(line: 133, column: 1, scope: !751)
!774 = distinct !DISubprogram(name: "__dma_fence_is_later", scope: !20, file: !20, line: 451, type: !775, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!775 = !DISubroutineType(types: !776)
!776 = !{!54, !113, !113, !49}
!777 = !DILocalVariable(name: "f1", arg: 1, scope: !774, file: !20, line: 451, type: !113)
!778 = !DILocation(line: 451, column: 45, scope: !774)
!779 = !DILocalVariable(name: "f2", arg: 2, scope: !774, file: !20, line: 451, type: !113)
!780 = !DILocation(line: 451, column: 53, scope: !774)
!781 = !DILocalVariable(name: "ops", arg: 3, scope: !774, file: !20, line: 452, type: !49)
!782 = !DILocation(line: 452, column: 34, scope: !774)
!783 = !DILocation(line: 458, column: 6, scope: !784)
!784 = distinct !DILexicalBlock(scope: !774, file: !20, line: 458, column: 6)
!785 = !DILocation(line: 458, column: 11, scope: !784)
!786 = !DILocation(line: 458, column: 6, scope: !774)
!787 = !DILocation(line: 459, column: 10, scope: !784)
!788 = !DILocation(line: 459, column: 15, scope: !784)
!789 = !DILocation(line: 459, column: 13, scope: !784)
!790 = !DILocation(line: 459, column: 3, scope: !784)
!791 = !DILocation(line: 461, column: 15, scope: !774)
!792 = !DILocation(line: 461, column: 35, scope: !774)
!793 = !DILocation(line: 461, column: 33, scope: !774)
!794 = !DILocation(line: 461, column: 54, scope: !774)
!795 = !DILocation(line: 461, column: 2, scope: !774)
!796 = !DILocation(line: 462, column: 1, scope: !774)
!797 = distinct !DISubprogram(name: "kref_put", scope: !121, file: !121, line: 62, type: !798, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!798 = !DISubroutineType(types: !799)
!799 = !{!84, !800, !801}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !800}
!804 = !DILocalVariable(name: "kref", arg: 1, scope: !797, file: !121, line: 62, type: !800)
!805 = !DILocation(line: 62, column: 41, scope: !797)
!806 = !DILocalVariable(name: "release", arg: 2, scope: !797, file: !121, line: 62, type: !801)
!807 = !DILocation(line: 62, column: 54, scope: !797)
!808 = !DILocation(line: 64, column: 29, scope: !809)
!809 = distinct !DILexicalBlock(scope: !797, file: !121, line: 64, column: 6)
!810 = !DILocation(line: 64, column: 35, scope: !809)
!811 = !DILocation(line: 64, column: 6, scope: !809)
!812 = !DILocation(line: 64, column: 6, scope: !797)
!813 = !DILocation(line: 65, column: 3, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !121, line: 64, column: 46)
!815 = !DILocation(line: 65, column: 11, scope: !814)
!816 = !DILocation(line: 66, column: 3, scope: !814)
!817 = !DILocation(line: 68, column: 2, scope: !797)
!818 = !DILocation(line: 69, column: 1, scope: !797)
!819 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !12, file: !12, line: 331, type: !820, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!820 = !DISubroutineType(types: !821)
!821 = !{!54, !822}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!823 = !DILocalVariable(name: "r", arg: 1, scope: !819, file: !12, line: 331, type: !822)
!824 = !DILocation(line: 331, column: 67, scope: !819)
!825 = !DILocation(line: 333, column: 33, scope: !819)
!826 = !DILocation(line: 333, column: 9, scope: !819)
!827 = !DILocation(line: 333, column: 2, scope: !819)
!828 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !12, file: !12, line: 313, type: !829, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!829 = !DISubroutineType(types: !830)
!830 = !{!54, !822, !200}
!831 = !DILocalVariable(name: "r", arg: 1, scope: !828, file: !12, line: 313, type: !822)
!832 = !DILocation(line: 313, column: 69, scope: !828)
!833 = !DILocalVariable(name: "oldp", arg: 2, scope: !828, file: !12, line: 313, type: !200)
!834 = !DILocation(line: 313, column: 77, scope: !828)
!835 = !DILocation(line: 315, column: 36, scope: !828)
!836 = !DILocation(line: 315, column: 39, scope: !828)
!837 = !DILocation(line: 315, column: 9, scope: !828)
!838 = !DILocation(line: 315, column: 2, scope: !828)
!839 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !12, file: !12, line: 270, type: !840, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!840 = !DISubroutineType(types: !841)
!841 = !{!54, !84, !822, !200}
!842 = !DILocalVariable(name: "i", arg: 1, scope: !843, file: !713, line: 188, type: !84)
!843 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !713, file: !713, line: 188, type: !844, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!844 = !DISubroutineType(types: !845)
!845 = !{!84, !84, !716}
!846 = !DILocation(line: 188, column: 54, scope: !843, inlinedAt: !847)
!847 = distinct !DILocation(line: 221, column: 9, scope: !848, inlinedAt: !849)
!848 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !720, file: !720, line: 218, type: !844, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!849 = distinct !DILocation(line: 272, column: 12, scope: !839)
!850 = !DILocalVariable(name: "v", arg: 2, scope: !843, file: !713, line: 188, type: !716)
!851 = !DILocation(line: 188, column: 67, scope: !843, inlinedAt: !847)
!852 = !DILocalVariable(name: "__ret", scope: !853, file: !713, line: 190, type: !84)
!853 = distinct !DILexicalBlock(scope: !843, file: !713, line: 190, column: 9)
!854 = !DILocation(line: 190, column: 9, scope: !853, inlinedAt: !847)
!855 = !DILocalVariable(name: "v", arg: 1, scope: !856, file: !218, line: 99, type: !221)
!856 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !218, file: !218, line: 99, type: !219, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!857 = !DILocation(line: 99, column: 79, scope: !856, inlinedAt: !858)
!858 = distinct !DILocation(line: 220, column: 2, scope: !848, inlinedAt: !849)
!859 = !DILocalVariable(name: "size", arg: 2, scope: !856, file: !218, line: 99, type: !224)
!860 = !DILocation(line: 99, column: 89, scope: !856, inlinedAt: !858)
!861 = !DILocalVariable(name: "i", arg: 1, scope: !848, file: !720, line: 218, type: !84)
!862 = !DILocation(line: 218, column: 30, scope: !848, inlinedAt: !849)
!863 = !DILocalVariable(name: "v", arg: 2, scope: !848, file: !720, line: 218, type: !716)
!864 = !DILocation(line: 218, column: 43, scope: !848, inlinedAt: !849)
!865 = !DILocalVariable(name: "i", arg: 1, scope: !839, file: !12, line: 270, type: !84)
!866 = !DILocation(line: 270, column: 61, scope: !839)
!867 = !DILocalVariable(name: "r", arg: 2, scope: !839, file: !12, line: 270, type: !822)
!868 = !DILocation(line: 270, column: 76, scope: !839)
!869 = !DILocalVariable(name: "oldp", arg: 3, scope: !839, file: !12, line: 270, type: !200)
!870 = !DILocation(line: 270, column: 84, scope: !839)
!871 = !DILocalVariable(name: "old", scope: !839, file: !12, line: 272, type: !84)
!872 = !DILocation(line: 272, column: 6, scope: !839)
!873 = !DILocation(line: 272, column: 37, scope: !839)
!874 = !DILocation(line: 272, column: 41, scope: !839)
!875 = !DILocation(line: 272, column: 44, scope: !839)
!876 = !DILocation(line: 220, column: 31, scope: !848, inlinedAt: !849)
!877 = !DILocation(line: 101, column: 20, scope: !856, inlinedAt: !858)
!878 = !DILocation(line: 101, column: 23, scope: !856, inlinedAt: !858)
!879 = !DILocation(line: 101, column: 2, scope: !856, inlinedAt: !858)
!880 = !DILocation(line: 102, column: 2, scope: !856, inlinedAt: !858)
!881 = !DILocation(line: 221, column: 39, scope: !848, inlinedAt: !849)
!882 = !DILocation(line: 221, column: 42, scope: !848, inlinedAt: !849)
!883 = !{i32 -2146468112}
!884 = !DILocation(line: 274, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !839, file: !12, line: 274, column: 6)
!886 = !DILocation(line: 274, column: 6, scope: !839)
!887 = !DILocation(line: 275, column: 11, scope: !885)
!888 = !DILocation(line: 275, column: 4, scope: !885)
!889 = !DILocation(line: 275, column: 9, scope: !885)
!890 = !DILocation(line: 275, column: 3, scope: !885)
!891 = !DILocation(line: 277, column: 6, scope: !892)
!892 = distinct !DILexicalBlock(scope: !839, file: !12, line: 277, column: 6)
!893 = !DILocation(line: 277, column: 13, scope: !892)
!894 = !DILocation(line: 277, column: 10, scope: !892)
!895 = !DILocation(line: 277, column: 6, scope: !839)
!896 = !DILocation(line: 278, column: 3, scope: !897)
!897 = distinct !DILexicalBlock(scope: !892, file: !12, line: 277, column: 16)
!898 = !{i32 -2145534068}
!899 = !DILocation(line: 279, column: 3, scope: !897)
!900 = !DILocation(line: 282, column: 6, scope: !901)
!901 = distinct !DILexicalBlock(scope: !839, file: !12, line: 282, column: 6)
!902 = !DILocation(line: 282, column: 6, scope: !839)
!903 = !DILocation(line: 283, column: 26, scope: !901)
!904 = !DILocation(line: 283, column: 3, scope: !901)
!905 = !DILocation(line: 285, column: 2, scope: !839)
!906 = !DILocation(line: 286, column: 1, scope: !839)
!907 = distinct !DISubprogram(name: "kasan_check_write", scope: !908, file: !908, line: 38, type: !909, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!908 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!909 = !DISubroutineType(types: !910)
!910 = !{!54, !221, !7}
!911 = !DILocalVariable(name: "p", arg: 1, scope: !907, file: !908, line: 38, type: !221)
!912 = !DILocation(line: 38, column: 59, scope: !907)
!913 = !DILocalVariable(name: "size", arg: 2, scope: !907, file: !908, line: 38, type: !7)
!914 = !DILocation(line: 38, column: 75, scope: !907)
!915 = !DILocation(line: 40, column: 2, scope: !907)
!916 = distinct !DISubprogram(name: "kcsan_check_access", scope: !917, file: !917, line: 178, type: !918, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!917 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!918 = !DISubroutineType(types: !919)
!919 = !{null, !221, !224, !84}
!920 = !DILocalVariable(name: "ptr", arg: 1, scope: !916, file: !917, line: 178, type: !221)
!921 = !DILocation(line: 178, column: 60, scope: !916)
!922 = !DILocalVariable(name: "size", arg: 2, scope: !916, file: !917, line: 178, type: !224)
!923 = !DILocation(line: 178, column: 72, scope: !916)
!924 = !DILocalVariable(name: "type", arg: 3, scope: !916, file: !917, line: 179, type: !84)
!925 = !DILocation(line: 179, column: 15, scope: !916)
!926 = !DILocation(line: 179, column: 23, scope: !916)
!927 = distinct !DISubprogram(name: "dma_fence_get_rcu_safe", scope: !20, file: !20, line: 327, type: !928, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!928 = !DISubroutineType(types: !929)
!929 = !{!28, !27}
!930 = !DILocalVariable(name: "fencep", arg: 1, scope: !927, file: !20, line: 327, type: !27)
!931 = !DILocation(line: 327, column: 49, scope: !927)
!932 = !DILocation(line: 329, column: 2, scope: !927)
!933 = !DILocalVariable(name: "fence", scope: !934, file: !20, line: 330, type: !28)
!934 = distinct !DILexicalBlock(scope: !927, file: !20, line: 329, column: 5)
!935 = !DILocation(line: 330, column: 21, scope: !934)
!936 = !DILocalVariable(name: "________p1", scope: !937, file: !20, line: 332, type: !28)
!937 = distinct !DILexicalBlock(scope: !934, file: !20, line: 332, column: 11)
!938 = !DILocation(line: 332, column: 11, scope: !937)
!939 = !DILocation(line: 332, column: 11, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !20, line: 332, column: 11)
!941 = !DILocation(line: 332, column: 11, scope: !942)
!942 = distinct !DILexicalBlock(scope: !940, file: !20, line: 332, column: 11)
!943 = !DILocation(line: 332, column: 11, scope: !944)
!944 = distinct !DILexicalBlock(scope: !937, file: !20, line: 332, column: 11)
!945 = !DILocation(line: 332, column: 9, scope: !934)
!946 = !DILocation(line: 333, column: 8, scope: !947)
!947 = distinct !DILexicalBlock(scope: !934, file: !20, line: 333, column: 7)
!948 = !DILocation(line: 333, column: 7, scope: !934)
!949 = !DILocation(line: 334, column: 4, scope: !947)
!950 = !DILocation(line: 336, column: 26, scope: !951)
!951 = distinct !DILexicalBlock(scope: !934, file: !20, line: 336, column: 7)
!952 = !DILocation(line: 336, column: 8, scope: !951)
!953 = !DILocation(line: 336, column: 7, scope: !934)
!954 = !DILocation(line: 337, column: 4, scope: !951)
!955 = !DILocation(line: 353, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !934, file: !20, line: 353, column: 7)
!957 = !DILocalVariable(name: "_________p1", scope: !958, file: !20, line: 353, type: !28)
!958 = distinct !DILexicalBlock(scope: !956, file: !20, line: 353, column: 16)
!959 = !DILocation(line: 353, column: 16, scope: !958)
!960 = !DILocation(line: 353, column: 16, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !20, line: 353, column: 16)
!962 = !DILocation(line: 353, column: 16, scope: !963)
!963 = distinct !DILexicalBlock(scope: !961, file: !20, line: 353, column: 16)
!964 = !DILocation(line: 353, column: 13, scope: !956)
!965 = !DILocation(line: 353, column: 7, scope: !934)
!966 = !DILocation(line: 354, column: 11, scope: !956)
!967 = !DILocation(line: 354, column: 4, scope: !956)
!968 = !DILocation(line: 356, column: 17, scope: !934)
!969 = !DILocation(line: 356, column: 3, scope: !934)
!970 = !DILocation(line: 357, column: 2, scope: !934)
!971 = distinct !{!971, !932, !972}
!972 = !DILocation(line: 357, column: 12, scope: !927)
!973 = !DILocation(line: 358, column: 1, scope: !927)
!974 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !355, file: !355, line: 689, type: !356, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!975 = !DILocation(line: 691, column: 2, scope: !974)
!976 = !DILocation(line: 691, column: 2, scope: !977)
!977 = distinct !DILexicalBlock(scope: !974, file: !355, line: 691, column: 2)
!978 = !DILocation(line: 694, column: 2, scope: !974)
!979 = !DILocation(line: 695, column: 2, scope: !974)
!980 = !DILocation(line: 695, column: 2, scope: !981)
!981 = distinct !DILexicalBlock(scope: !974, file: !355, line: 695, column: 2)
!982 = !DILocation(line: 696, column: 1, scope: !974)
!983 = distinct !DISubprogram(name: "__rcu_read_lock", scope: !355, file: !355, line: 64, type: !356, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!984 = !DILocation(line: 66, column: 2, scope: !983)
!985 = !{i32 -2145394248}
!986 = !DILocation(line: 67, column: 1, scope: !983)
!987 = distinct !DISubprogram(name: "dma_fence_get_rcu", scope: !20, file: !20, line: 302, type: !214, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!988 = !DILocalVariable(name: "fence", arg: 1, scope: !987, file: !20, line: 302, type: !28)
!989 = !DILocation(line: 302, column: 69, scope: !987)
!990 = !DILocation(line: 304, column: 28, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !20, line: 304, column: 6)
!992 = !DILocation(line: 304, column: 35, scope: !991)
!993 = !DILocation(line: 304, column: 6, scope: !991)
!994 = !DILocation(line: 304, column: 6, scope: !987)
!995 = !DILocation(line: 305, column: 10, scope: !991)
!996 = !DILocation(line: 305, column: 3, scope: !991)
!997 = !DILocation(line: 307, column: 3, scope: !991)
!998 = !DILocation(line: 308, column: 1, scope: !987)
!999 = distinct !DISubprogram(name: "kref_get_unless_zero", scope: !121, file: !121, line: 109, type: !1000, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!84, !800}
!1002 = !DILocalVariable(name: "kref", arg: 1, scope: !999, file: !121, line: 109, type: !800)
!1003 = !DILocation(line: 109, column: 66, scope: !999)
!1004 = !DILocation(line: 111, column: 32, scope: !999)
!1005 = !DILocation(line: 111, column: 38, scope: !999)
!1006 = !DILocation(line: 111, column: 9, scope: !999)
!1007 = !DILocation(line: 111, column: 2, scope: !999)
!1008 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !12, file: !12, line: 243, type: !820, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1009 = !DILocalVariable(name: "r", arg: 1, scope: !1008, file: !12, line: 243, type: !822)
!1010 = !DILocation(line: 243, column: 67, scope: !1008)
!1011 = !DILocation(line: 245, column: 33, scope: !1008)
!1012 = !DILocation(line: 245, column: 9, scope: !1008)
!1013 = !DILocation(line: 245, column: 2, scope: !1008)
!1014 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !12, file: !12, line: 225, type: !829, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1015 = !DILocalVariable(name: "r", arg: 1, scope: !1014, file: !12, line: 225, type: !822)
!1016 = !DILocation(line: 225, column: 69, scope: !1014)
!1017 = !DILocalVariable(name: "oldp", arg: 2, scope: !1014, file: !12, line: 225, type: !200)
!1018 = !DILocation(line: 225, column: 77, scope: !1014)
!1019 = !DILocation(line: 227, column: 36, scope: !1014)
!1020 = !DILocation(line: 227, column: 39, scope: !1014)
!1021 = !DILocation(line: 227, column: 9, scope: !1014)
!1022 = !DILocation(line: 227, column: 2, scope: !1014)
!1023 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !12, file: !12, line: 150, type: !840, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1024 = !DILocalVariable(name: "v", arg: 1, scope: !1025, file: !713, line: 200, type: !716)
!1025 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !713, file: !713, line: 200, type: !1026, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!54, !716, !200, !84}
!1028 = !DILocation(line: 200, column: 63, scope: !1025, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 729, column: 9, scope: !1030, inlinedAt: !1031)
!1030 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !720, file: !720, line: 725, type: !1026, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1031 = distinct !DILocation(line: 157, column: 12, scope: !1023)
!1032 = !DILocalVariable(name: "old", arg: 2, scope: !1025, file: !713, line: 200, type: !200)
!1033 = !DILocation(line: 200, column: 71, scope: !1025, inlinedAt: !1029)
!1034 = !DILocalVariable(name: "new", arg: 3, scope: !1025, file: !713, line: 200, type: !84)
!1035 = !DILocation(line: 200, column: 80, scope: !1025, inlinedAt: !1029)
!1036 = !DILocalVariable(name: "success", scope: !1037, file: !713, line: 202, type: !54)
!1037 = distinct !DILexicalBlock(scope: !1025, file: !713, line: 202, column: 9)
!1038 = !DILocation(line: 202, column: 9, scope: !1037, inlinedAt: !1029)
!1039 = !DILocalVariable(name: "_old", scope: !1037, file: !713, line: 202, type: !200)
!1040 = !DILocalVariable(name: "__old", scope: !1037, file: !713, line: 202, type: !84)
!1041 = !DILocalVariable(name: "__new", scope: !1037, file: !713, line: 202, type: !84)
!1042 = !DILocalVariable(name: "__ptr", scope: !1037, file: !713, line: 202, type: !201)
!1043 = !DILocation(line: 99, column: 79, scope: !856, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 728, column: 2, scope: !1030, inlinedAt: !1031)
!1045 = !DILocation(line: 99, column: 89, scope: !856, inlinedAt: !1044)
!1046 = !DILocation(line: 99, column: 79, scope: !856, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 727, column: 2, scope: !1030, inlinedAt: !1031)
!1048 = !DILocation(line: 99, column: 89, scope: !856, inlinedAt: !1047)
!1049 = !DILocalVariable(name: "v", arg: 1, scope: !1030, file: !720, line: 725, type: !716)
!1050 = !DILocation(line: 725, column: 38, scope: !1030, inlinedAt: !1031)
!1051 = !DILocalVariable(name: "old", arg: 2, scope: !1030, file: !720, line: 725, type: !200)
!1052 = !DILocation(line: 725, column: 46, scope: !1030, inlinedAt: !1031)
!1053 = !DILocalVariable(name: "new", arg: 3, scope: !1030, file: !720, line: 725, type: !84)
!1054 = !DILocation(line: 725, column: 55, scope: !1030, inlinedAt: !1031)
!1055 = !DILocalVariable(name: "i", arg: 1, scope: !1023, file: !12, line: 150, type: !84)
!1056 = !DILocation(line: 150, column: 61, scope: !1023)
!1057 = !DILocalVariable(name: "r", arg: 2, scope: !1023, file: !12, line: 150, type: !822)
!1058 = !DILocation(line: 150, column: 76, scope: !1023)
!1059 = !DILocalVariable(name: "oldp", arg: 3, scope: !1023, file: !12, line: 150, type: !200)
!1060 = !DILocation(line: 150, column: 84, scope: !1023)
!1061 = !DILocalVariable(name: "old", scope: !1023, file: !12, line: 152, type: !84)
!1062 = !DILocation(line: 152, column: 6, scope: !1023)
!1063 = !DILocation(line: 152, column: 26, scope: !1023)
!1064 = !DILocation(line: 152, column: 12, scope: !1023)
!1065 = !DILocation(line: 154, column: 2, scope: !1023)
!1066 = !DILocation(line: 155, column: 8, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !12, line: 155, column: 7)
!1068 = distinct !DILexicalBlock(scope: !1023, file: !12, line: 154, column: 5)
!1069 = !DILocation(line: 155, column: 7, scope: !1068)
!1070 = !DILocation(line: 156, column: 4, scope: !1067)
!1071 = !DILocation(line: 157, column: 2, scope: !1068)
!1072 = !DILocation(line: 157, column: 40, scope: !1023)
!1073 = !DILocation(line: 157, column: 43, scope: !1023)
!1074 = !DILocation(line: 157, column: 55, scope: !1023)
!1075 = !DILocation(line: 157, column: 61, scope: !1023)
!1076 = !DILocation(line: 157, column: 59, scope: !1023)
!1077 = !DILocation(line: 727, column: 31, scope: !1030, inlinedAt: !1031)
!1078 = !DILocation(line: 101, column: 20, scope: !856, inlinedAt: !1047)
!1079 = !DILocation(line: 101, column: 23, scope: !856, inlinedAt: !1047)
!1080 = !DILocation(line: 101, column: 2, scope: !856, inlinedAt: !1047)
!1081 = !DILocation(line: 102, column: 2, scope: !856, inlinedAt: !1047)
!1082 = !DILocation(line: 728, column: 31, scope: !1030, inlinedAt: !1031)
!1083 = !DILocation(line: 101, column: 20, scope: !856, inlinedAt: !1044)
!1084 = !DILocation(line: 101, column: 23, scope: !856, inlinedAt: !1044)
!1085 = !DILocation(line: 101, column: 2, scope: !856, inlinedAt: !1044)
!1086 = !DILocation(line: 102, column: 2, scope: !856, inlinedAt: !1044)
!1087 = !DILocation(line: 729, column: 41, scope: !1030, inlinedAt: !1031)
!1088 = !DILocation(line: 729, column: 44, scope: !1030, inlinedAt: !1031)
!1089 = !DILocation(line: 729, column: 49, scope: !1030, inlinedAt: !1031)
!1090 = !{i32 -2146463799, i32 -2146463644}
!1091 = !DILocation(line: 202, column: 9, scope: !1092, inlinedAt: !1029)
!1092 = distinct !DILexicalBlock(scope: !1037, file: !713, line: 202, column: 9)
!1093 = !DILocation(line: 202, column: 9, scope: !1025, inlinedAt: !1029)
!1094 = !DILocation(line: 157, column: 11, scope: !1023)
!1095 = distinct !{!1095, !1065, !1096}
!1096 = !DILocation(line: 157, column: 63, scope: !1023)
!1097 = !DILocation(line: 159, column: 6, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1023, file: !12, line: 159, column: 6)
!1099 = !DILocation(line: 159, column: 6, scope: !1023)
!1100 = !DILocation(line: 160, column: 11, scope: !1098)
!1101 = !DILocation(line: 160, column: 4, scope: !1098)
!1102 = !DILocation(line: 160, column: 9, scope: !1098)
!1103 = !DILocation(line: 160, column: 3, scope: !1098)
!1104 = !DILocation(line: 162, column: 6, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1023, file: !12, line: 162, column: 6)
!1106 = !DILocation(line: 162, column: 6, scope: !1023)
!1107 = !DILocation(line: 163, column: 26, scope: !1105)
!1108 = !DILocation(line: 163, column: 3, scope: !1105)
!1109 = !DILocation(line: 165, column: 9, scope: !1023)
!1110 = !DILocation(line: 165, column: 2, scope: !1023)
!1111 = distinct !DISubprogram(name: "refcount_read", scope: !12, file: !12, line: 145, type: !1112, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!7, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!1116 = !DILocalVariable(name: "v", arg: 1, scope: !1117, file: !713, line: 23, type: !1120)
!1117 = distinct !DISubprogram(name: "arch_atomic_read", scope: !713, file: !713, line: 23, type: !1118, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!84, !1120}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!1122 = !DILocation(line: 23, column: 61, scope: !1117, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 28, column: 9, scope: !1124, inlinedAt: !1125)
!1124 = distinct !DISubprogram(name: "atomic_read", scope: !720, file: !720, line: 25, type: !1118, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1125 = distinct !DILocation(line: 147, column: 9, scope: !1111)
!1126 = !DILocalVariable(name: "v", arg: 1, scope: !1127, file: !218, line: 69, type: !221)
!1127 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !218, file: !218, line: 69, type: !219, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1128 = !DILocation(line: 69, column: 73, scope: !1127, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 27, column: 2, scope: !1124, inlinedAt: !1125)
!1130 = !DILocalVariable(name: "size", arg: 2, scope: !1127, file: !218, line: 69, type: !224)
!1131 = !DILocation(line: 69, column: 83, scope: !1127, inlinedAt: !1129)
!1132 = !DILocalVariable(name: "v", arg: 1, scope: !1124, file: !720, line: 25, type: !1120)
!1133 = !DILocation(line: 25, column: 29, scope: !1124, inlinedAt: !1125)
!1134 = !DILocalVariable(name: "r", arg: 1, scope: !1111, file: !12, line: 145, type: !1114)
!1135 = !DILocation(line: 145, column: 60, scope: !1111)
!1136 = !DILocation(line: 147, column: 22, scope: !1111)
!1137 = !DILocation(line: 147, column: 25, scope: !1111)
!1138 = !DILocation(line: 27, column: 25, scope: !1124, inlinedAt: !1125)
!1139 = !DILocation(line: 71, column: 19, scope: !1127, inlinedAt: !1129)
!1140 = !DILocation(line: 71, column: 22, scope: !1127, inlinedAt: !1129)
!1141 = !DILocation(line: 71, column: 2, scope: !1127, inlinedAt: !1129)
!1142 = !DILocation(line: 72, column: 2, scope: !1127, inlinedAt: !1129)
!1143 = !DILocation(line: 28, column: 26, scope: !1124, inlinedAt: !1125)
!1144 = !DILocation(line: 29, column: 9, scope: !1117, inlinedAt: !1123)
!1145 = !DILocation(line: 147, column: 2, scope: !1111)
!1146 = distinct !DISubprogram(name: "kasan_check_read", scope: !908, file: !908, line: 34, type: !909, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1147 = !DILocalVariable(name: "p", arg: 1, scope: !1146, file: !908, line: 34, type: !221)
!1148 = !DILocation(line: 34, column: 58, scope: !1146)
!1149 = !DILocalVariable(name: "size", arg: 2, scope: !1146, file: !908, line: 34, type: !7)
!1150 = !DILocation(line: 34, column: 74, scope: !1146)
!1151 = !DILocation(line: 36, column: 2, scope: !1146)
!1152 = distinct !DISubprogram(name: "__rcu_read_unlock", scope: !355, file: !355, line: 69, type: !356, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1153 = !DILocation(line: 71, column: 2, scope: !1152)
!1154 = !{i32 -2145394035}
!1155 = !DILocation(line: 72, column: 2, scope: !1152)
!1156 = !DILocation(line: 72, column: 2, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !355, line: 72, column: 2)
!1158 = !DILocation(line: 73, column: 1, scope: !1152)
!1159 = distinct !DISubprogram(name: "test_bit", scope: !1160, file: !1160, line: 132, type: !1161, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1160 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!54, !74, !1163}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!1165 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!1166 = !DILocalVariable(name: "nr", arg: 1, scope: !1167, file: !1168, line: 210, type: !74)
!1167 = distinct !DISubprogram(name: "variable_test_bit", scope: !1168, file: !1168, line: 210, type: !1161, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1168 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1169 = !DILocation(line: 210, column: 52, scope: !1167, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 135, column: 9, scope: !1159)
!1171 = !DILocalVariable(name: "addr", arg: 2, scope: !1167, file: !1168, line: 210, type: !1163)
!1172 = !DILocation(line: 210, column: 86, scope: !1167, inlinedAt: !1170)
!1173 = !DILocalVariable(name: "oldbit", scope: !1167, file: !1168, line: 212, type: !54)
!1174 = !DILocation(line: 212, column: 7, scope: !1167, inlinedAt: !1170)
!1175 = !DILocalVariable(name: "nr", arg: 1, scope: !1176, file: !1168, line: 204, type: !74)
!1176 = distinct !DISubprogram(name: "constant_test_bit", scope: !1168, file: !1168, line: 204, type: !1161, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1177 = !DILocation(line: 204, column: 52, scope: !1176, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 135, column: 9, scope: !1159)
!1179 = !DILocalVariable(name: "addr", arg: 2, scope: !1176, file: !1168, line: 204, type: !1163)
!1180 = !DILocation(line: 204, column: 86, scope: !1176, inlinedAt: !1178)
!1181 = !DILocation(line: 69, column: 73, scope: !1127, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 134, column: 2, scope: !1159)
!1183 = !DILocation(line: 69, column: 83, scope: !1127, inlinedAt: !1182)
!1184 = !DILocalVariable(name: "nr", arg: 1, scope: !1159, file: !1160, line: 132, type: !74)
!1185 = !DILocation(line: 132, column: 34, scope: !1159)
!1186 = !DILocalVariable(name: "addr", arg: 2, scope: !1159, file: !1160, line: 132, type: !1163)
!1187 = !DILocation(line: 132, column: 68, scope: !1159)
!1188 = !DILocation(line: 134, column: 25, scope: !1159)
!1189 = !DILocation(line: 134, column: 32, scope: !1159)
!1190 = !DILocation(line: 134, column: 30, scope: !1159)
!1191 = !DILocation(line: 71, column: 19, scope: !1127, inlinedAt: !1182)
!1192 = !DILocation(line: 71, column: 22, scope: !1127, inlinedAt: !1182)
!1193 = !DILocation(line: 71, column: 2, scope: !1127, inlinedAt: !1182)
!1194 = !DILocation(line: 72, column: 2, scope: !1127, inlinedAt: !1182)
!1195 = !DILocation(line: 135, column: 9, scope: !1159)
!1196 = !DILocation(line: 206, column: 19, scope: !1176, inlinedAt: !1178)
!1197 = !DILocation(line: 206, column: 22, scope: !1176, inlinedAt: !1178)
!1198 = !DILocation(line: 206, column: 15, scope: !1176, inlinedAt: !1178)
!1199 = !DILocation(line: 207, column: 4, scope: !1176, inlinedAt: !1178)
!1200 = !DILocation(line: 207, column: 9, scope: !1176, inlinedAt: !1178)
!1201 = !DILocation(line: 207, column: 12, scope: !1176, inlinedAt: !1178)
!1202 = !DILocation(line: 206, column: 44, scope: !1176, inlinedAt: !1178)
!1203 = !DILocation(line: 207, column: 37, scope: !1176, inlinedAt: !1178)
!1204 = !DILocation(line: 217, column: 33, scope: !1167, inlinedAt: !1170)
!1205 = !DILocation(line: 217, column: 46, scope: !1167, inlinedAt: !1170)
!1206 = !DILocation(line: 214, column: 2, scope: !1167, inlinedAt: !1170)
!1207 = !{i32 -2147089544, i32 -2147089484}
!1208 = !DILocation(line: 219, column: 9, scope: !1167, inlinedAt: !1170)
!1209 = !DILocation(line: 135, column: 2, scope: !1159)
!1210 = distinct !DISubprogram(name: "kref_get", scope: !121, file: !121, line: 43, type: !802, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1211 = !DILocalVariable(name: "kref", arg: 1, scope: !1210, file: !121, line: 43, type: !800)
!1212 = !DILocation(line: 43, column: 42, scope: !1210)
!1213 = !DILocation(line: 45, column: 16, scope: !1210)
!1214 = !DILocation(line: 45, column: 22, scope: !1210)
!1215 = !DILocation(line: 45, column: 2, scope: !1210)
!1216 = !DILocation(line: 46, column: 1, scope: !1210)
!1217 = distinct !DISubprogram(name: "refcount_inc", scope: !12, file: !12, line: 265, type: !1218, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !822}
!1220 = !DILocalVariable(name: "r", arg: 1, scope: !1217, file: !12, line: 265, type: !822)
!1221 = !DILocation(line: 265, column: 45, scope: !1217)
!1222 = !DILocation(line: 267, column: 17, scope: !1217)
!1223 = !DILocation(line: 267, column: 2, scope: !1217)
!1224 = !DILocation(line: 268, column: 1, scope: !1217)
!1225 = distinct !DISubprogram(name: "__refcount_inc", scope: !12, file: !12, line: 248, type: !1226, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !822, !200}
!1228 = !DILocalVariable(name: "r", arg: 1, scope: !1225, file: !12, line: 248, type: !822)
!1229 = !DILocation(line: 248, column: 47, scope: !1225)
!1230 = !DILocalVariable(name: "oldp", arg: 2, scope: !1225, file: !12, line: 248, type: !200)
!1231 = !DILocation(line: 248, column: 55, scope: !1225)
!1232 = !DILocation(line: 250, column: 20, scope: !1225)
!1233 = !DILocation(line: 250, column: 23, scope: !1225)
!1234 = !DILocation(line: 250, column: 2, scope: !1225)
!1235 = !DILocation(line: 251, column: 1, scope: !1225)
!1236 = distinct !DISubprogram(name: "__refcount_add", scope: !12, file: !12, line: 191, type: !1237, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !84, !822, !200}
!1239 = !DILocalVariable(name: "i", arg: 1, scope: !1240, file: !713, line: 182, type: !84)
!1240 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !713, file: !713, line: 182, type: !844, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1241 = !DILocation(line: 182, column: 54, scope: !1240, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 143, column: 9, scope: !1243, inlinedAt: !1244)
!1243 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !720, file: !720, line: 140, type: !844, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1244 = distinct !DILocation(line: 193, column: 12, scope: !1236)
!1245 = !DILocalVariable(name: "v", arg: 2, scope: !1240, file: !713, line: 182, type: !716)
!1246 = !DILocation(line: 182, column: 67, scope: !1240, inlinedAt: !1242)
!1247 = !DILocalVariable(name: "__ret", scope: !1248, file: !713, line: 184, type: !84)
!1248 = distinct !DILexicalBlock(scope: !1240, file: !713, line: 184, column: 9)
!1249 = !DILocation(line: 184, column: 9, scope: !1248, inlinedAt: !1242)
!1250 = !DILocation(line: 99, column: 79, scope: !856, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 142, column: 2, scope: !1243, inlinedAt: !1244)
!1252 = !DILocation(line: 99, column: 89, scope: !856, inlinedAt: !1251)
!1253 = !DILocalVariable(name: "i", arg: 1, scope: !1243, file: !720, line: 140, type: !84)
!1254 = !DILocation(line: 140, column: 30, scope: !1243, inlinedAt: !1244)
!1255 = !DILocalVariable(name: "v", arg: 2, scope: !1243, file: !720, line: 140, type: !716)
!1256 = !DILocation(line: 140, column: 43, scope: !1243, inlinedAt: !1244)
!1257 = !DILocalVariable(name: "i", arg: 1, scope: !1236, file: !12, line: 191, type: !84)
!1258 = !DILocation(line: 191, column: 39, scope: !1236)
!1259 = !DILocalVariable(name: "r", arg: 2, scope: !1236, file: !12, line: 191, type: !822)
!1260 = !DILocation(line: 191, column: 54, scope: !1236)
!1261 = !DILocalVariable(name: "oldp", arg: 3, scope: !1236, file: !12, line: 191, type: !200)
!1262 = !DILocation(line: 191, column: 62, scope: !1236)
!1263 = !DILocalVariable(name: "old", scope: !1236, file: !12, line: 193, type: !84)
!1264 = !DILocation(line: 193, column: 6, scope: !1236)
!1265 = !DILocation(line: 193, column: 37, scope: !1236)
!1266 = !DILocation(line: 193, column: 41, scope: !1236)
!1267 = !DILocation(line: 193, column: 44, scope: !1236)
!1268 = !DILocation(line: 142, column: 31, scope: !1243, inlinedAt: !1244)
!1269 = !DILocation(line: 101, column: 20, scope: !856, inlinedAt: !1251)
!1270 = !DILocation(line: 101, column: 23, scope: !856, inlinedAt: !1251)
!1271 = !DILocation(line: 101, column: 2, scope: !856, inlinedAt: !1251)
!1272 = !DILocation(line: 102, column: 2, scope: !856, inlinedAt: !1251)
!1273 = !DILocation(line: 143, column: 39, scope: !1243, inlinedAt: !1244)
!1274 = !DILocation(line: 143, column: 42, scope: !1243, inlinedAt: !1244)
!1275 = !{i32 -2146469464}
!1276 = !DILocation(line: 195, column: 6, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1236, file: !12, line: 195, column: 6)
!1278 = !DILocation(line: 195, column: 6, scope: !1236)
!1279 = !DILocation(line: 196, column: 11, scope: !1277)
!1280 = !DILocation(line: 196, column: 4, scope: !1277)
!1281 = !DILocation(line: 196, column: 9, scope: !1277)
!1282 = !DILocation(line: 196, column: 3, scope: !1277)
!1283 = !DILocation(line: 198, column: 6, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1236, file: !12, line: 198, column: 6)
!1285 = !DILocation(line: 198, column: 6, scope: !1236)
!1286 = !DILocation(line: 199, column: 26, scope: !1284)
!1287 = !DILocation(line: 199, column: 3, scope: !1284)
!1288 = !DILocation(line: 200, column: 11, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1284, file: !12, line: 200, column: 11)
!1290 = !DILocation(line: 200, column: 11, scope: !1284)
!1291 = !DILocation(line: 201, column: 26, scope: !1289)
!1292 = !DILocation(line: 201, column: 3, scope: !1289)
!1293 = !DILocation(line: 202, column: 1, scope: !1236)
!1294 = distinct !DISubprogram(name: "dma_fence_chain_cb", scope: !3, file: !3, line: 135, type: !155, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1295 = !DILocalVariable(name: "f", arg: 1, scope: !1294, file: !3, line: 135, type: !28)
!1296 = !DILocation(line: 135, column: 50, scope: !1294)
!1297 = !DILocalVariable(name: "cb", arg: 2, scope: !1294, file: !3, line: 135, type: !157)
!1298 = !DILocation(line: 135, column: 74, scope: !1294)
!1299 = !DILocalVariable(name: "chain", scope: !1294, file: !3, line: 137, type: !139)
!1300 = !DILocation(line: 137, column: 26, scope: !1294)
!1301 = !DILocalVariable(name: "__mptr", scope: !1302, file: !3, line: 139, type: !136)
!1302 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 139, column: 10)
!1303 = !DILocation(line: 139, column: 10, scope: !1302)
!1304 = !DILocation(line: 139, column: 10, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 139, column: 10)
!1306 = !DILocation(line: 139, column: 8, scope: !1294)
!1307 = !DILocation(line: 140, column: 18, scope: !1294)
!1308 = !DILocation(line: 140, column: 25, scope: !1294)
!1309 = !DILocation(line: 140, column: 2, scope: !1294)
!1310 = !DILocation(line: 141, column: 16, scope: !1294)
!1311 = !DILocation(line: 141, column: 2, scope: !1294)
!1312 = !DILocation(line: 142, column: 1, scope: !1294)
!1313 = distinct !DISubprogram(name: "kref_read", scope: !121, file: !121, line: 34, type: !1314, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !47)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!7, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!1318 = !DILocalVariable(name: "kref", arg: 1, scope: !1313, file: !121, line: 34, type: !1316)
!1319 = !DILocation(line: 34, column: 57, scope: !1313)
!1320 = !DILocation(line: 36, column: 24, scope: !1313)
!1321 = !DILocation(line: 36, column: 30, scope: !1313)
!1322 = !DILocation(line: 36, column: 9, scope: !1313)
!1323 = !DILocation(line: 36, column: 2, scope: !1313)
