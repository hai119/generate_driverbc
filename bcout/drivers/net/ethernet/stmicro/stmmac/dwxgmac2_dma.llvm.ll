; ModuleID = '../bcout/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.llvm.bc'
source_filename = "drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.stmmac_dma_ops = type { i32 (i8*)*, void (i8*, %struct.stmmac_dma_cfg*, i32)*, void (i8*, %struct.stmmac_dma_cfg*, i32)*, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)*, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)*, void (i8*, %struct.stmmac_axi*)*, void (i8*, i32*)*, void (i8*, i32, i32, i32, i8)*, void (i8*, i32, i32, i32, i8)*, void (i8*, %struct.stmmac_extra_stats*, i8*)*, void (i8*)*, void (i8*, i32, i1, i1)*, void (i8*, i32, i1, i1)*, void (i8*, i32)*, void (i8*, i32)*, void (i8*, i32)*, void (i8*, i32)*, i32 (i8*, %struct.stmmac_extra_stats*, i32)*, void (i8*, %struct.dma_features*)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i1, i32)*, void (i8*, i32, i8)*, void (i8*, i32, i32)*, void (i8*, i1, i32)*, i32 (i8*, i1, i32)* }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }
%struct.stmmac_extra_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [56 x i8] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dwxgmac210_dma_ops = dso_local constant %struct.stmmac_dma_ops { i32 (i8*)* @dwxgmac2_dma_reset, void (i8*, %struct.stmmac_dma_cfg*, i32)* @dwxgmac2_dma_init, void (i8*, %struct.stmmac_dma_cfg*, i32)* @dwxgmac2_dma_init_chan, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)* @dwxgmac2_dma_init_rx_chan, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)* @dwxgmac2_dma_init_tx_chan, void (i8*, %struct.stmmac_axi*)* @dwxgmac2_dma_axi, void (i8*, i32*)* @dwxgmac2_dma_dump_regs, void (i8*, i32, i32, i32, i8)* @dwxgmac2_dma_rx_mode, void (i8*, i32, i32, i32, i8)* @dwxgmac2_dma_tx_mode, void (i8*, %struct.stmmac_extra_stats*, i8*)* null, void (i8*)* null, void (i8*, i32, i1, i1)* @dwxgmac2_enable_dma_irq, void (i8*, i32, i1, i1)* @dwxgmac2_disable_dma_irq, void (i8*, i32)* @dwxgmac2_dma_start_tx, void (i8*, i32)* @dwxgmac2_dma_stop_tx, void (i8*, i32)* @dwxgmac2_dma_start_rx, void (i8*, i32)* @dwxgmac2_dma_stop_rx, i32 (i8*, %struct.stmmac_extra_stats*, i32)* @dwxgmac2_dma_interrupt, void (i8*, %struct.dma_features*)* @dwxgmac2_get_hw_feature, void (i8*, i32, i32)* @dwxgmac2_rx_watchdog, void (i8*, i32, i32)* @dwxgmac2_set_tx_ring_len, void (i8*, i32, i32)* @dwxgmac2_set_rx_ring_len, void (i8*, i32, i32)* @dwxgmac2_set_rx_tail_ptr, void (i8*, i32, i32)* @dwxgmac2_set_tx_tail_ptr, void (i8*, i1, i32)* @dwxgmac2_enable_tso, void (i8*, i32, i8)* @dwxgmac2_qmode, void (i8*, i32, i32)* @dwxgmac2_set_bfsize, void (i8*, i1, i32)* @dwxgmac2_enable_sph, i32 (i8*, i1, i32)* @dwxgmac2_enable_tbs }, align 8, !dbg !0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwxgmac2_dma_reset(i8* %ioaddr) #0 !dbg !319 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %value = alloca i32, align 4
  %__timeout_us = alloca i64, align 8
  %__sleep_us = alloca i64, align 8
  %__timeout = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !321, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata i32* %value, metadata !323, metadata !DIExpression()), !dbg !324
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !325
  %add.ptr = getelementptr i8, i8* %0, i64 12288, !dbg !326
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !327
  store i32 %call, i32* %value, align 4, !dbg !324
  %1 = load i32, i32* %value, align 4, !dbg !328
  %conv = zext i32 %1 to i64, !dbg !328
  %or = or i64 %conv, 1, !dbg !329
  %conv1 = trunc i64 %or to i32, !dbg !328
  %2 = load i8*, i8** %ioaddr.addr, align 8, !dbg !330
  %add.ptr2 = getelementptr i8, i8* %2, i64 12288, !dbg !331
  call void @writel(i32 %conv1, i8* %add.ptr2) #3, !dbg !332
  call void @llvm.dbg.declare(metadata i64* %__timeout_us, metadata !333, metadata !DIExpression()), !dbg !335
  store i64 100000, i64* %__timeout_us, align 8, !dbg !335
  call void @llvm.dbg.declare(metadata i64* %__sleep_us, metadata !336, metadata !DIExpression()), !dbg !335
  store i64 0, i64* %__sleep_us, align 8, !dbg !335
  call void @llvm.dbg.declare(metadata i64* %__timeout, metadata !337, metadata !DIExpression()), !dbg !335
  %call3 = call i64 @ktime_get() #3, !dbg !335
  %3 = load i64, i64* %__timeout_us, align 8, !dbg !335
  %call4 = call i64 @ktime_add_us(i64 %call3, i64 %3) #3, !dbg !335
  store i64 %call4, i64* %__timeout, align 8, !dbg !335
  br label %do.body, !dbg !335

do.body:                                          ; preds = %entry
  %4 = load i64, i64* %__sleep_us, align 8, !dbg !343
  %cmp = icmp ne i64 %4, 0, !dbg !343
  br i1 %cmp, label %if.then, label %if.end, !dbg !346

if.then:                                          ; preds = %do.body
  br label %do.body6, !dbg !343

do.body6:                                         ; preds = %if.then
  br label %do.body7, !dbg !347

do.body7:                                         ; preds = %do.body6
  br label %do.end, !dbg !349

do.end:                                           ; preds = %do.body7
  br label %do.end8, !dbg !347

do.end8:                                          ; preds = %do.end
  br label %if.end, !dbg !347

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !346

do.end9:                                          ; preds = %if.end
  br label %for.cond, !dbg !335

for.cond:                                         ; preds = %if.end26, %do.end9
  %5 = load i8*, i8** %ioaddr.addr, align 8, !dbg !351
  %add.ptr10 = getelementptr i8, i8* %5, i64 12288, !dbg !351
  %call11 = call i32 @readl(i8* %add.ptr10) #3, !dbg !351
  store i32 %call11, i32* %value, align 4, !dbg !351
  %6 = load i32, i32* %value, align 4, !dbg !355
  %conv12 = zext i32 %6 to i64, !dbg !355
  %and = and i64 %conv12, 1, !dbg !355
  %tobool = icmp ne i64 %and, 0, !dbg !355
  br i1 %tobool, label %if.end14, label %if.then13, !dbg !351

if.then13:                                        ; preds = %for.cond
  br label %for.end, !dbg !355

if.end14:                                         ; preds = %for.cond
  %7 = load i64, i64* %__timeout_us, align 8, !dbg !357
  %tobool15 = icmp ne i64 %7, 0, !dbg !357
  br i1 %tobool15, label %land.lhs.true, label %if.end23, !dbg !357

land.lhs.true:                                    ; preds = %if.end14
  %call16 = call i64 @ktime_get() #3, !dbg !357
  %8 = load i64, i64* %__timeout, align 8, !dbg !357
  %call17 = call i32 @ktime_compare(i64 %call16, i64 %8) #3, !dbg !357
  %cmp18 = icmp sgt i32 %call17, 0, !dbg !357
  br i1 %cmp18, label %if.then20, label %if.end23, !dbg !351

if.then20:                                        ; preds = %land.lhs.true
  %9 = load i8*, i8** %ioaddr.addr, align 8, !dbg !359
  %add.ptr21 = getelementptr i8, i8* %9, i64 12288, !dbg !359
  %call22 = call i32 @readl(i8* %add.ptr21) #3, !dbg !359
  store i32 %call22, i32* %value, align 4, !dbg !359
  br label %for.end, !dbg !359

if.end23:                                         ; preds = %land.lhs.true, %if.end14
  %10 = load i64, i64* %__sleep_us, align 8, !dbg !361
  %tobool24 = icmp ne i64 %10, 0, !dbg !361
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !351

if.then25:                                        ; preds = %if.end23
  %11 = load i64, i64* %__sleep_us, align 8, !dbg !361
  %shr = lshr i64 %11, 2, !dbg !361
  %add = add i64 %shr, 1, !dbg !361
  %12 = load i64, i64* %__sleep_us, align 8, !dbg !361
  call void @usleep_range(i64 %add, i64 %12) #3, !dbg !361
  br label %if.end26, !dbg !361

if.end26:                                         ; preds = %if.then25, %if.end23
  br label %for.cond, !dbg !363, !llvm.loop !364

for.end:                                          ; preds = %if.then20, %if.then13
  %13 = load i32, i32* %value, align 4, !dbg !335
  %conv27 = zext i32 %13 to i64, !dbg !335
  %and28 = and i64 %conv27, 1, !dbg !335
  %tobool29 = icmp ne i64 %and28, 0, !dbg !335
  %lnot = xor i1 %tobool29, true, !dbg !335
  %14 = zext i1 %lnot to i64, !dbg !335
  %cond = select i1 %lnot, i32 0, i32 -110, !dbg !335
  store i32 %cond, i32* %tmp, align 4, !dbg !365
  %15 = load i32, i32* %tmp, align 4, !dbg !335
  ret i32 %15, !dbg !366
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_dma_init(i8* %ioaddr, %struct.stmmac_dma_cfg* %dma_cfg, i32 %atds) #0 !dbg !367 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cfg.addr = alloca %struct.stmmac_dma_cfg*, align 8
  %atds.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !368, metadata !DIExpression()), !dbg !369
  store %struct.stmmac_dma_cfg* %dma_cfg, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_dma_cfg** %dma_cfg.addr, metadata !370, metadata !DIExpression()), !dbg !371
  store i32 %atds, i32* %atds.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %atds.addr, metadata !372, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata i32* %value, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !376
  %add.ptr = getelementptr i8, i8* %0, i64 12292, !dbg !377
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !378
  store i32 %call, i32* %value, align 4, !dbg !375
  %1 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !379
  %aal = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %1, i32 0, i32 6, !dbg !381
  %2 = load i8, i8* %aal, align 4, !dbg !381
  %tobool = trunc i8 %2 to i1, !dbg !381
  br i1 %tobool, label %if.then, label %if.end, !dbg !382

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !383
  %conv = zext i32 %3 to i64, !dbg !383
  %or = or i64 %conv, 4096, !dbg !383
  %conv1 = trunc i64 %or to i32, !dbg !383
  store i32 %conv1, i32* %value, align 4, !dbg !383
  br label %if.end, !dbg !384

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !385
  %eame = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %4, i32 0, i32 7, !dbg !387
  %5 = load i8, i8* %eame, align 1, !dbg !387
  %tobool2 = trunc i8 %5 to i1, !dbg !387
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !388

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %value, align 4, !dbg !389
  %conv4 = zext i32 %6 to i64, !dbg !389
  %or5 = or i64 %conv4, 2048, !dbg !389
  %conv6 = trunc i64 %or5 to i32, !dbg !389
  store i32 %conv6, i32* %value, align 4, !dbg !389
  br label %if.end7, !dbg !390

if.end7:                                          ; preds = %if.then3, %if.end
  %7 = load i32, i32* %value, align 4, !dbg !391
  %8 = load i8*, i8** %ioaddr.addr, align 8, !dbg !392
  %add.ptr8 = getelementptr i8, i8* %8, i64 12292, !dbg !393
  call void @writel(i32 %7, i8* %add.ptr8) #3, !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_dma_init_chan(i8* %ioaddr, %struct.stmmac_dma_cfg* %dma_cfg, i32 %chan) #0 !dbg !396 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cfg.addr = alloca %struct.stmmac_dma_cfg*, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !397, metadata !DIExpression()), !dbg !398
  store %struct.stmmac_dma_cfg* %dma_cfg, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_dma_cfg** %dma_cfg.addr, metadata !399, metadata !DIExpression()), !dbg !400
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata i32* %value, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !405
  %1 = load i32, i32* %chan.addr, align 4, !dbg !406
  %mul = mul i32 128, %1, !dbg !406
  %add = add i32 12544, %mul, !dbg !406
  %idx.ext = zext i32 %add to i64, !dbg !407
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !407
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !408
  store i32 %call, i32* %value, align 4, !dbg !404
  %2 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !409
  %pblx8 = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %2, i32 0, i32 3, !dbg !411
  %3 = load i8, i8* %pblx8, align 4, !dbg !411
  %tobool = trunc i8 %3 to i1, !dbg !411
  br i1 %tobool, label %if.then, label %if.end, !dbg !412

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %value, align 4, !dbg !413
  %conv = zext i32 %4 to i64, !dbg !413
  %or = or i64 %conv, 65536, !dbg !413
  %conv1 = trunc i64 %or to i32, !dbg !413
  store i32 %conv1, i32* %value, align 4, !dbg !413
  br label %if.end, !dbg !414

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %value, align 4, !dbg !415
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !416
  %7 = load i32, i32* %chan.addr, align 4, !dbg !417
  %mul2 = mul i32 128, %7, !dbg !417
  %add3 = add i32 12544, %mul2, !dbg !417
  %idx.ext4 = zext i32 %add3 to i64, !dbg !418
  %add.ptr5 = getelementptr i8, i8* %6, i64 %idx.ext4, !dbg !418
  call void @writel(i32 %5, i8* %add.ptr5) #3, !dbg !419
  %8 = load i8*, i8** %ioaddr.addr, align 8, !dbg !420
  %9 = load i32, i32* %chan.addr, align 4, !dbg !421
  %mul6 = mul i32 128, %9, !dbg !421
  %add7 = add i32 12600, %mul6, !dbg !421
  %idx.ext8 = zext i32 %add7 to i64, !dbg !422
  %add.ptr9 = getelementptr i8, i8* %8, i64 %idx.ext8, !dbg !422
  call void @writel(i32 49345, i8* %add.ptr9) #3, !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_dma_init_rx_chan(i8* %ioaddr, %struct.stmmac_dma_cfg* %dma_cfg, i64 %phy, i32 %chan) #0 !dbg !425 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cfg.addr = alloca %struct.stmmac_dma_cfg*, align 8
  %phy.addr = alloca i64, align 8
  %chan.addr = alloca i32, align 4
  %rxpbl = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !426, metadata !DIExpression()), !dbg !427
  store %struct.stmmac_dma_cfg* %dma_cfg, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_dma_cfg** %dma_cfg.addr, metadata !428, metadata !DIExpression()), !dbg !429
  store i64 %phy, i64* %phy.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %phy.addr, metadata !430, metadata !DIExpression()), !dbg !431
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata i32* %rxpbl, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !436
  %rxpbl1 = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %0, i32 0, i32 2, !dbg !437
  %1 = load i32, i32* %rxpbl1, align 4, !dbg !437
  %tobool = icmp ne i32 %1, 0, !dbg !436
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !436

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !436

cond.false:                                       ; preds = %entry
  %2 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !438
  %pbl = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %2, i32 0, i32 0, !dbg !439
  %3 = load i32, i32* %pbl, align 4, !dbg !439
  br label %cond.end, !dbg !436

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %3, %cond.false ], !dbg !436
  store i32 %cond, i32* %rxpbl, align 4, !dbg !435
  call void @llvm.dbg.declare(metadata i32* %value, metadata !440, metadata !DIExpression()), !dbg !441
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !442
  %5 = load i32, i32* %chan.addr, align 4, !dbg !443
  %mul = mul i32 128, %5, !dbg !443
  %add = add i32 12552, %mul, !dbg !443
  %idx.ext = zext i32 %add to i64, !dbg !444
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !444
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !445
  store i32 %call, i32* %value, align 4, !dbg !446
  %6 = load i32, i32* %value, align 4, !dbg !447
  %conv = zext i32 %6 to i64, !dbg !447
  %and = and i64 %conv, -4128769, !dbg !447
  %conv2 = trunc i64 %and to i32, !dbg !447
  store i32 %conv2, i32* %value, align 4, !dbg !447
  %7 = load i32, i32* %rxpbl, align 4, !dbg !448
  %shl = shl i32 %7, 16, !dbg !449
  %conv3 = zext i32 %shl to i64, !dbg !450
  %and4 = and i64 %conv3, 4128768, !dbg !451
  %8 = load i32, i32* %value, align 4, !dbg !452
  %conv5 = zext i32 %8 to i64, !dbg !452
  %or = or i64 %conv5, %and4, !dbg !452
  %conv6 = trunc i64 %or to i32, !dbg !452
  store i32 %conv6, i32* %value, align 4, !dbg !452
  %9 = load i32, i32* %value, align 4, !dbg !453
  %10 = load i8*, i8** %ioaddr.addr, align 8, !dbg !454
  %11 = load i32, i32* %chan.addr, align 4, !dbg !455
  %mul7 = mul i32 128, %11, !dbg !455
  %add8 = add i32 12552, %mul7, !dbg !455
  %idx.ext9 = zext i32 %add8 to i64, !dbg !456
  %add.ptr10 = getelementptr i8, i8* %10, i64 %idx.ext9, !dbg !456
  call void @writel(i32 %9, i8* %add.ptr10) #3, !dbg !457
  %12 = load i64, i64* %phy.addr, align 8, !dbg !458
  %shr = lshr i64 %12, 16, !dbg !458
  %shr11 = lshr i64 %shr, 16, !dbg !458
  %conv12 = trunc i64 %shr11 to i32, !dbg !458
  %13 = load i8*, i8** %ioaddr.addr, align 8, !dbg !459
  %14 = load i32, i32* %chan.addr, align 4, !dbg !460
  %mul13 = mul i32 128, %14, !dbg !460
  %add14 = add i32 12568, %mul13, !dbg !460
  %idx.ext15 = zext i32 %add14 to i64, !dbg !461
  %add.ptr16 = getelementptr i8, i8* %13, i64 %idx.ext15, !dbg !461
  call void @writel(i32 %conv12, i8* %add.ptr16) #3, !dbg !462
  %15 = load i64, i64* %phy.addr, align 8, !dbg !463
  %and17 = and i64 %15, 4294967295, !dbg !463
  %conv18 = trunc i64 %and17 to i32, !dbg !463
  %16 = load i8*, i8** %ioaddr.addr, align 8, !dbg !464
  %17 = load i32, i32* %chan.addr, align 4, !dbg !465
  %mul19 = mul i32 128, %17, !dbg !465
  %add20 = add i32 12572, %mul19, !dbg !465
  %idx.ext21 = zext i32 %add20 to i64, !dbg !466
  %add.ptr22 = getelementptr i8, i8* %16, i64 %idx.ext21, !dbg !466
  call void @writel(i32 %conv18, i8* %add.ptr22) #3, !dbg !467
  ret void, !dbg !468
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_dma_init_tx_chan(i8* %ioaddr, %struct.stmmac_dma_cfg* %dma_cfg, i64 %phy, i32 %chan) #0 !dbg !469 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cfg.addr = alloca %struct.stmmac_dma_cfg*, align 8
  %phy.addr = alloca i64, align 8
  %chan.addr = alloca i32, align 4
  %txpbl = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !470, metadata !DIExpression()), !dbg !471
  store %struct.stmmac_dma_cfg* %dma_cfg, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_dma_cfg** %dma_cfg.addr, metadata !472, metadata !DIExpression()), !dbg !473
  store i64 %phy, i64* %phy.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %phy.addr, metadata !474, metadata !DIExpression()), !dbg !475
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !476, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.declare(metadata i32* %txpbl, metadata !478, metadata !DIExpression()), !dbg !479
  %0 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !480
  %txpbl1 = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %0, i32 0, i32 1, !dbg !481
  %1 = load i32, i32* %txpbl1, align 4, !dbg !481
  %tobool = icmp ne i32 %1, 0, !dbg !480
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !480

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !480

cond.false:                                       ; preds = %entry
  %2 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !482
  %pbl = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %2, i32 0, i32 0, !dbg !483
  %3 = load i32, i32* %pbl, align 4, !dbg !483
  br label %cond.end, !dbg !480

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %3, %cond.false ], !dbg !480
  store i32 %cond, i32* %txpbl, align 4, !dbg !479
  call void @llvm.dbg.declare(metadata i32* %value, metadata !484, metadata !DIExpression()), !dbg !485
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !486
  %5 = load i32, i32* %chan.addr, align 4, !dbg !487
  %mul = mul i32 128, %5, !dbg !487
  %add = add i32 12548, %mul, !dbg !487
  %idx.ext = zext i32 %add to i64, !dbg !488
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !488
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !489
  store i32 %call, i32* %value, align 4, !dbg !490
  %6 = load i32, i32* %value, align 4, !dbg !491
  %conv = zext i32 %6 to i64, !dbg !491
  %and = and i64 %conv, -4128769, !dbg !491
  %conv2 = trunc i64 %and to i32, !dbg !491
  store i32 %conv2, i32* %value, align 4, !dbg !491
  %7 = load i32, i32* %txpbl, align 4, !dbg !492
  %shl = shl i32 %7, 16, !dbg !493
  %conv3 = zext i32 %shl to i64, !dbg !494
  %and4 = and i64 %conv3, 4128768, !dbg !495
  %8 = load i32, i32* %value, align 4, !dbg !496
  %conv5 = zext i32 %8 to i64, !dbg !496
  %or = or i64 %conv5, %and4, !dbg !496
  %conv6 = trunc i64 %or to i32, !dbg !496
  store i32 %conv6, i32* %value, align 4, !dbg !496
  %9 = load i32, i32* %value, align 4, !dbg !497
  %conv7 = zext i32 %9 to i64, !dbg !497
  %or8 = or i64 %conv7, 16, !dbg !497
  %conv9 = trunc i64 %or8 to i32, !dbg !497
  store i32 %conv9, i32* %value, align 4, !dbg !497
  %10 = load i32, i32* %value, align 4, !dbg !498
  %11 = load i8*, i8** %ioaddr.addr, align 8, !dbg !499
  %12 = load i32, i32* %chan.addr, align 4, !dbg !500
  %mul10 = mul i32 128, %12, !dbg !500
  %add11 = add i32 12548, %mul10, !dbg !500
  %idx.ext12 = zext i32 %add11 to i64, !dbg !501
  %add.ptr13 = getelementptr i8, i8* %11, i64 %idx.ext12, !dbg !501
  call void @writel(i32 %10, i8* %add.ptr13) #3, !dbg !502
  %13 = load i64, i64* %phy.addr, align 8, !dbg !503
  %shr = lshr i64 %13, 16, !dbg !503
  %shr14 = lshr i64 %shr, 16, !dbg !503
  %conv15 = trunc i64 %shr14 to i32, !dbg !503
  %14 = load i8*, i8** %ioaddr.addr, align 8, !dbg !504
  %15 = load i32, i32* %chan.addr, align 4, !dbg !505
  %mul16 = mul i32 128, %15, !dbg !505
  %add17 = add i32 12560, %mul16, !dbg !505
  %idx.ext18 = zext i32 %add17 to i64, !dbg !506
  %add.ptr19 = getelementptr i8, i8* %14, i64 %idx.ext18, !dbg !506
  call void @writel(i32 %conv15, i8* %add.ptr19) #3, !dbg !507
  %16 = load i64, i64* %phy.addr, align 8, !dbg !508
  %and20 = and i64 %16, 4294967295, !dbg !508
  %conv21 = trunc i64 %and20 to i32, !dbg !508
  %17 = load i8*, i8** %ioaddr.addr, align 8, !dbg !509
  %18 = load i32, i32* %chan.addr, align 4, !dbg !510
  %mul22 = mul i32 128, %18, !dbg !510
  %add23 = add i32 12564, %mul22, !dbg !510
  %idx.ext24 = zext i32 %add23 to i64, !dbg !511
  %add.ptr25 = getelementptr i8, i8* %17, i64 %idx.ext24, !dbg !511
  call void @writel(i32 %conv21, i8* %add.ptr25) #3, !dbg !512
  ret void, !dbg !513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_dma_axi(i8* %ioaddr, %struct.stmmac_axi* %axi) #0 !dbg !514 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %axi.addr = alloca %struct.stmmac_axi*, align 8
  %value = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !515, metadata !DIExpression()), !dbg !516
  store %struct.stmmac_axi* %axi, %struct.stmmac_axi** %axi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_axi** %axi.addr, metadata !517, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata i32* %value, metadata !519, metadata !DIExpression()), !dbg !520
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !521
  %add.ptr = getelementptr i8, i8* %0, i64 12292, !dbg !522
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !523
  store i32 %call, i32* %value, align 4, !dbg !520
  call void @llvm.dbg.declare(metadata i32* %i, metadata !524, metadata !DIExpression()), !dbg !525
  %1 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !526
  %axi_lpi_en = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %1, i32 0, i32 0, !dbg !528
  %2 = load i8, i8* %axi_lpi_en, align 4, !dbg !528
  %tobool = trunc i8 %2 to i1, !dbg !528
  br i1 %tobool, label %if.then, label %if.end, !dbg !529

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !530
  %conv = zext i32 %3 to i64, !dbg !530
  %or = or i64 %conv, 32768, !dbg !530
  %conv1 = trunc i64 %or to i32, !dbg !530
  store i32 %conv1, i32* %value, align 4, !dbg !530
  br label %if.end, !dbg !531

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !532
  %axi_xit_frm = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %4, i32 0, i32 1, !dbg !534
  %5 = load i8, i8* %axi_xit_frm, align 1, !dbg !534
  %tobool2 = trunc i8 %5 to i1, !dbg !534
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !535

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %value, align 4, !dbg !536
  %conv4 = zext i32 %6 to i64, !dbg !536
  %or5 = or i64 %conv4, 16384, !dbg !536
  %conv6 = trunc i64 %or5 to i32, !dbg !536
  store i32 %conv6, i32* %value, align 4, !dbg !536
  br label %if.end7, !dbg !537

if.end7:                                          ; preds = %if.then3, %if.end
  %7 = load i32, i32* %value, align 4, !dbg !538
  %conv8 = zext i32 %7 to i64, !dbg !538
  %and = and i64 %conv8, -1056964609, !dbg !538
  %conv9 = trunc i64 %and to i32, !dbg !538
  store i32 %conv9, i32* %value, align 4, !dbg !538
  %8 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !539
  %axi_wr_osr_lmt = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %8, i32 0, i32 2, !dbg !540
  %9 = load i32, i32* %axi_wr_osr_lmt, align 4, !dbg !540
  %shl = shl i32 %9, 24, !dbg !541
  %conv10 = zext i32 %shl to i64, !dbg !542
  %and11 = and i64 %conv10, 1056964608, !dbg !543
  %10 = load i32, i32* %value, align 4, !dbg !544
  %conv12 = zext i32 %10 to i64, !dbg !544
  %or13 = or i64 %conv12, %and11, !dbg !544
  %conv14 = trunc i64 %or13 to i32, !dbg !544
  store i32 %conv14, i32* %value, align 4, !dbg !544
  %11 = load i32, i32* %value, align 4, !dbg !545
  %conv15 = zext i32 %11 to i64, !dbg !545
  %and16 = and i64 %conv15, -4128769, !dbg !545
  %conv17 = trunc i64 %and16 to i32, !dbg !545
  store i32 %conv17, i32* %value, align 4, !dbg !545
  %12 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !546
  %axi_rd_osr_lmt = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %12, i32 0, i32 3, !dbg !547
  %13 = load i32, i32* %axi_rd_osr_lmt, align 4, !dbg !547
  %shl18 = shl i32 %13, 16, !dbg !548
  %conv19 = zext i32 %shl18 to i64, !dbg !549
  %and20 = and i64 %conv19, 4128768, !dbg !550
  %14 = load i32, i32* %value, align 4, !dbg !551
  %conv21 = zext i32 %14 to i64, !dbg !551
  %or22 = or i64 %conv21, %and20, !dbg !551
  %conv23 = trunc i64 %or22 to i32, !dbg !551
  store i32 %conv23, i32* %value, align 4, !dbg !551
  %15 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !552
  %axi_fb = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %15, i32 0, i32 6, !dbg !554
  %16 = load i8, i8* %axi_fb, align 4, !dbg !554
  %tobool24 = trunc i8 %16 to i1, !dbg !554
  br i1 %tobool24, label %if.end29, label %if.then25, !dbg !555

if.then25:                                        ; preds = %if.end7
  %17 = load i32, i32* %value, align 4, !dbg !556
  %conv26 = zext i32 %17 to i64, !dbg !556
  %or27 = or i64 %conv26, 1, !dbg !556
  %conv28 = trunc i64 %or27 to i32, !dbg !556
  store i32 %conv28, i32* %value, align 4, !dbg !556
  br label %if.end29, !dbg !557

if.end29:                                         ; preds = %if.then25, %if.end7
  %18 = load i32, i32* %value, align 4, !dbg !558
  %conv30 = zext i32 %18 to i64, !dbg !558
  %and31 = and i64 %conv30, -255, !dbg !558
  %conv32 = trunc i64 %and31 to i32, !dbg !558
  store i32 %conv32, i32* %value, align 4, !dbg !558
  store i32 0, i32* %i, align 4, !dbg !559
  br label %for.cond, !dbg !561

for.cond:                                         ; preds = %for.inc, %if.end29
  %19 = load i32, i32* %i, align 4, !dbg !562
  %cmp = icmp slt i32 %19, 7, !dbg !564
  br i1 %cmp, label %for.body, label %for.end, !dbg !565

for.body:                                         ; preds = %for.cond
  %20 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !566
  %axi_blen = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %20, i32 0, i32 5, !dbg !568
  %21 = load i32, i32* %i, align 4, !dbg !569
  %idxprom = sext i32 %21 to i64, !dbg !566
  %arrayidx = getelementptr [7 x i32], [7 x i32]* %axi_blen, i64 0, i64 %idxprom, !dbg !566
  %22 = load i32, i32* %arrayidx, align 4, !dbg !566
  switch i32 %22, label %sw.epilog [
    i32 256, label %sw.bb
    i32 128, label %sw.bb37
    i32 64, label %sw.bb41
    i32 32, label %sw.bb45
    i32 16, label %sw.bb49
    i32 8, label %sw.bb53
    i32 4, label %sw.bb57
  ], !dbg !570

sw.bb:                                            ; preds = %for.body
  %23 = load i32, i32* %value, align 4, !dbg !571
  %conv34 = zext i32 %23 to i64, !dbg !571
  %or35 = or i64 %conv34, 128, !dbg !571
  %conv36 = trunc i64 %or35 to i32, !dbg !571
  store i32 %conv36, i32* %value, align 4, !dbg !571
  br label %sw.epilog, !dbg !573

sw.bb37:                                          ; preds = %for.body
  %24 = load i32, i32* %value, align 4, !dbg !574
  %conv38 = zext i32 %24 to i64, !dbg !574
  %or39 = or i64 %conv38, 64, !dbg !574
  %conv40 = trunc i64 %or39 to i32, !dbg !574
  store i32 %conv40, i32* %value, align 4, !dbg !574
  br label %sw.epilog, !dbg !575

sw.bb41:                                          ; preds = %for.body
  %25 = load i32, i32* %value, align 4, !dbg !576
  %conv42 = zext i32 %25 to i64, !dbg !576
  %or43 = or i64 %conv42, 32, !dbg !576
  %conv44 = trunc i64 %or43 to i32, !dbg !576
  store i32 %conv44, i32* %value, align 4, !dbg !576
  br label %sw.epilog, !dbg !577

sw.bb45:                                          ; preds = %for.body
  %26 = load i32, i32* %value, align 4, !dbg !578
  %conv46 = zext i32 %26 to i64, !dbg !578
  %or47 = or i64 %conv46, 16, !dbg !578
  %conv48 = trunc i64 %or47 to i32, !dbg !578
  store i32 %conv48, i32* %value, align 4, !dbg !578
  br label %sw.epilog, !dbg !579

sw.bb49:                                          ; preds = %for.body
  %27 = load i32, i32* %value, align 4, !dbg !580
  %conv50 = zext i32 %27 to i64, !dbg !580
  %or51 = or i64 %conv50, 8, !dbg !580
  %conv52 = trunc i64 %or51 to i32, !dbg !580
  store i32 %conv52, i32* %value, align 4, !dbg !580
  br label %sw.epilog, !dbg !581

sw.bb53:                                          ; preds = %for.body
  %28 = load i32, i32* %value, align 4, !dbg !582
  %conv54 = zext i32 %28 to i64, !dbg !582
  %or55 = or i64 %conv54, 4, !dbg !582
  %conv56 = trunc i64 %or55 to i32, !dbg !582
  store i32 %conv56, i32* %value, align 4, !dbg !582
  br label %sw.epilog, !dbg !583

sw.bb57:                                          ; preds = %for.body
  %29 = load i32, i32* %value, align 4, !dbg !584
  %conv58 = zext i32 %29 to i64, !dbg !584
  %or59 = or i64 %conv58, 2, !dbg !584
  %conv60 = trunc i64 %or59 to i32, !dbg !584
  store i32 %conv60, i32* %value, align 4, !dbg !584
  br label %sw.epilog, !dbg !585

sw.epilog:                                        ; preds = %for.body, %sw.bb57, %sw.bb53, %sw.bb49, %sw.bb45, %sw.bb41, %sw.bb37, %sw.bb
  br label %for.inc, !dbg !586

for.inc:                                          ; preds = %sw.epilog
  %30 = load i32, i32* %i, align 4, !dbg !587
  %inc = add i32 %30, 1, !dbg !587
  store i32 %inc, i32* %i, align 4, !dbg !587
  br label %for.cond, !dbg !588, !llvm.loop !589

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %value, align 4, !dbg !591
  %32 = load i8*, i8** %ioaddr.addr, align 8, !dbg !592
  %add.ptr61 = getelementptr i8, i8* %32, i64 12292, !dbg !593
  call void @writel(i32 %31, i8* %add.ptr61) #3, !dbg !594
  %33 = load i8*, i8** %ioaddr.addr, align 8, !dbg !595
  %add.ptr62 = getelementptr i8, i8* %33, i64 12352, !dbg !596
  call void @writel(i32 1073741823, i8* %add.ptr62) #3, !dbg !597
  %34 = load i8*, i8** %ioaddr.addr, align 8, !dbg !598
  %add.ptr63 = getelementptr i8, i8* %34, i64 12356, !dbg !599
  call void @writel(i32 1073741823, i8* %add.ptr63) #3, !dbg !600
  ret void, !dbg !601
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_dma_dump_regs(i8* %ioaddr, i32* %reg_space) #0 !dbg !602 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %reg_space.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !603, metadata !DIExpression()), !dbg !604
  store i32* %reg_space, i32** %reg_space.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %reg_space.addr, metadata !605, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.declare(metadata i32* %i, metadata !607, metadata !DIExpression()), !dbg !608
  store i32 3072, i32* %i, align 4, !dbg !609
  br label %for.cond, !dbg !611

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !612
  %cmp = icmp slt i32 %0, 3647, !dbg !614
  br i1 %cmp, label %for.body, label %for.end, !dbg !615

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !616
  %2 = load i32, i32* %i, align 4, !dbg !617
  %mul = mul i32 %2, 4, !dbg !618
  %idx.ext = sext i32 %mul to i64, !dbg !619
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !619
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !620
  %3 = load i32*, i32** %reg_space.addr, align 8, !dbg !621
  %4 = load i32, i32* %i, align 4, !dbg !622
  %idxprom = sext i32 %4 to i64, !dbg !621
  %arrayidx = getelementptr i32, i32* %3, i64 %idxprom, !dbg !621
  store i32 %call, i32* %arrayidx, align 4, !dbg !623
  br label %for.inc, !dbg !621

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !624
  %inc = add i32 %5, 1, !dbg !624
  store i32 %inc, i32* %i, align 4, !dbg !624
  br label %for.cond, !dbg !625, !llvm.loop !626

for.end:                                          ; preds = %for.cond
  ret void, !dbg !628
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_dma_rx_mode(i8* %ioaddr, i32 %mode, i32 %channel, i32 %fifosz, i8 zeroext %qmode) #0 !dbg !629 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %fifosz.addr = alloca i32, align 4
  %qmode.addr = alloca i8, align 1
  %value = alloca i32, align 4
  %rqs = alloca i32, align 4
  %flow = alloca i32, align 4
  %rfd = alloca i32, align 4
  %rfa = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !630, metadata !DIExpression()), !dbg !631
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !632, metadata !DIExpression()), !dbg !633
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !634, metadata !DIExpression()), !dbg !635
  store i32 %fifosz, i32* %fifosz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fifosz.addr, metadata !636, metadata !DIExpression()), !dbg !637
  store i8 %qmode, i8* %qmode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %qmode.addr, metadata !638, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.declare(metadata i32* %value, metadata !640, metadata !DIExpression()), !dbg !641
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !642
  %1 = load i32, i32* %channel.addr, align 4, !dbg !643
  %mul = mul i32 128, %1, !dbg !643
  %add = add i32 4416, %mul, !dbg !643
  %idx.ext = zext i32 %add to i64, !dbg !644
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !644
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !645
  store i32 %call, i32* %value, align 4, !dbg !641
  call void @llvm.dbg.declare(metadata i32* %rqs, metadata !646, metadata !DIExpression()), !dbg !647
  %2 = load i32, i32* %fifosz.addr, align 4, !dbg !648
  %div = sdiv i32 %2, 256, !dbg !649
  %sub = sub i32 %div, 1, !dbg !650
  store i32 %sub, i32* %rqs, align 4, !dbg !647
  %3 = load i32, i32* %mode.addr, align 4, !dbg !651
  %cmp = icmp eq i32 %3, 1, !dbg !653
  br i1 %cmp, label %if.then, label %if.else, !dbg !654

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %value, align 4, !dbg !655
  %conv = zext i32 %4 to i64, !dbg !655
  %or = or i64 %conv, 32, !dbg !655
  %conv1 = trunc i64 %or to i32, !dbg !655
  store i32 %conv1, i32* %value, align 4, !dbg !655
  br label %if.end18, !dbg !657

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %value, align 4, !dbg !658
  %conv2 = zext i32 %5 to i64, !dbg !658
  %and = and i64 %conv2, -33, !dbg !658
  %conv3 = trunc i64 %and to i32, !dbg !658
  store i32 %conv3, i32* %value, align 4, !dbg !658
  %6 = load i32, i32* %value, align 4, !dbg !660
  %conv4 = zext i32 %6 to i64, !dbg !660
  %and5 = and i64 %conv4, -4, !dbg !660
  %conv6 = trunc i64 %and5 to i32, !dbg !660
  store i32 %conv6, i32* %value, align 4, !dbg !660
  %7 = load i32, i32* %mode.addr, align 4, !dbg !661
  %cmp7 = icmp sle i32 %7, 64, !dbg !663
  br i1 %cmp7, label %if.then9, label %if.else10, !dbg !664

if.then9:                                         ; preds = %if.else
  %8 = load i32, i32* %value, align 4, !dbg !665
  store i32 %8, i32* %value, align 4, !dbg !665
  br label %if.end17, !dbg !666

if.else10:                                        ; preds = %if.else
  %9 = load i32, i32* %mode.addr, align 4, !dbg !667
  %cmp11 = icmp sle i32 %9, 96, !dbg !669
  br i1 %cmp11, label %if.then13, label %if.else15, !dbg !670

if.then13:                                        ; preds = %if.else10
  %10 = load i32, i32* %value, align 4, !dbg !671
  %or14 = or i32 %10, 2, !dbg !671
  store i32 %or14, i32* %value, align 4, !dbg !671
  br label %if.end, !dbg !672

if.else15:                                        ; preds = %if.else10
  %11 = load i32, i32* %value, align 4, !dbg !673
  %or16 = or i32 %11, 3, !dbg !673
  store i32 %or16, i32* %value, align 4, !dbg !673
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then13
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then9
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then
  %12 = load i32, i32* %value, align 4, !dbg !674
  %conv19 = zext i32 %12 to i64, !dbg !674
  %and20 = and i64 %conv19, -67043329, !dbg !674
  %conv21 = trunc i64 %and20 to i32, !dbg !674
  store i32 %conv21, i32* %value, align 4, !dbg !674
  %13 = load i32, i32* %rqs, align 4, !dbg !675
  %shl = shl i32 %13, 16, !dbg !676
  %conv22 = zext i32 %shl to i64, !dbg !677
  %and23 = and i64 %conv22, 67043328, !dbg !678
  %14 = load i32, i32* %value, align 4, !dbg !679
  %conv24 = zext i32 %14 to i64, !dbg !679
  %or25 = or i64 %conv24, %and23, !dbg !679
  %conv26 = trunc i64 %or25 to i32, !dbg !679
  store i32 %conv26, i32* %value, align 4, !dbg !679
  %15 = load i32, i32* %fifosz.addr, align 4, !dbg !680
  %cmp27 = icmp sge i32 %15, 4096, !dbg !682
  br i1 %cmp27, label %land.lhs.true, label %if.end55, !dbg !683

land.lhs.true:                                    ; preds = %if.end18
  %16 = load i8, i8* %qmode.addr, align 1, !dbg !684
  %conv29 = zext i8 %16 to i32, !dbg !684
  %cmp30 = icmp ne i32 %conv29, 0, !dbg !685
  br i1 %cmp30, label %if.then32, label %if.end55, !dbg !686

if.then32:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %flow, metadata !687, metadata !DIExpression()), !dbg !689
  %17 = load i8*, i8** %ioaddr.addr, align 8, !dbg !690
  %18 = load i32, i32* %channel.addr, align 4, !dbg !691
  %mul33 = mul i32 128, %18, !dbg !691
  %add34 = add i32 4432, %mul33, !dbg !691
  %idx.ext35 = zext i32 %add34 to i64, !dbg !692
  %add.ptr36 = getelementptr i8, i8* %17, i64 %idx.ext35, !dbg !692
  %call37 = call i32 @readl(i8* %add.ptr36) #3, !dbg !693
  store i32 %call37, i32* %flow, align 4, !dbg !689
  call void @llvm.dbg.declare(metadata i32* %rfd, metadata !694, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.declare(metadata i32* %rfa, metadata !696, metadata !DIExpression()), !dbg !697
  %19 = load i32, i32* %value, align 4, !dbg !698
  %conv38 = zext i32 %19 to i64, !dbg !698
  %or39 = or i64 %conv38, 128, !dbg !698
  %conv40 = trunc i64 %or39 to i32, !dbg !698
  store i32 %conv40, i32* %value, align 4, !dbg !698
  %20 = load i32, i32* %fifosz.addr, align 4, !dbg !699
  switch i32 %20, label %sw.default [
    i32 4096, label %sw.bb
  ], !dbg !700

sw.bb:                                            ; preds = %if.then32
  store i32 3, i32* %rfd, align 4, !dbg !701
  store i32 1, i32* %rfa, align 4, !dbg !703
  br label %sw.epilog, !dbg !704

sw.default:                                       ; preds = %if.then32
  store i32 7, i32* %rfd, align 4, !dbg !705
  store i32 4, i32* %rfa, align 4, !dbg !706
  br label %sw.epilog, !dbg !707

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %21 = load i32, i32* %flow, align 4, !dbg !708
  %conv41 = zext i32 %21 to i64, !dbg !708
  %and42 = and i64 %conv41, -4294836225, !dbg !708
  %conv43 = trunc i64 %and42 to i32, !dbg !708
  store i32 %conv43, i32* %flow, align 4, !dbg !708
  %22 = load i32, i32* %rfd, align 4, !dbg !709
  %shl44 = shl i32 %22, 17, !dbg !710
  %23 = load i32, i32* %flow, align 4, !dbg !711
  %or45 = or i32 %23, %shl44, !dbg !711
  store i32 %or45, i32* %flow, align 4, !dbg !711
  %24 = load i32, i32* %flow, align 4, !dbg !712
  %conv46 = zext i32 %24 to i64, !dbg !712
  %and47 = and i64 %conv46, -65535, !dbg !712
  %conv48 = trunc i64 %and47 to i32, !dbg !712
  store i32 %conv48, i32* %flow, align 4, !dbg !712
  %25 = load i32, i32* %rfa, align 4, !dbg !713
  %shl49 = shl i32 %25, 1, !dbg !714
  %26 = load i32, i32* %flow, align 4, !dbg !715
  %or50 = or i32 %26, %shl49, !dbg !715
  store i32 %or50, i32* %flow, align 4, !dbg !715
  %27 = load i32, i32* %flow, align 4, !dbg !716
  %28 = load i8*, i8** %ioaddr.addr, align 8, !dbg !717
  %29 = load i32, i32* %channel.addr, align 4, !dbg !718
  %mul51 = mul i32 128, %29, !dbg !718
  %add52 = add i32 4432, %mul51, !dbg !718
  %idx.ext53 = zext i32 %add52 to i64, !dbg !719
  %add.ptr54 = getelementptr i8, i8* %28, i64 %idx.ext53, !dbg !719
  call void @writel(i32 %27, i8* %add.ptr54) #3, !dbg !720
  br label %if.end55, !dbg !721

if.end55:                                         ; preds = %sw.epilog, %land.lhs.true, %if.end18
  %30 = load i32, i32* %value, align 4, !dbg !722
  %31 = load i8*, i8** %ioaddr.addr, align 8, !dbg !723
  %32 = load i32, i32* %channel.addr, align 4, !dbg !724
  %mul56 = mul i32 128, %32, !dbg !724
  %add57 = add i32 4416, %mul56, !dbg !724
  %idx.ext58 = zext i32 %add57 to i64, !dbg !725
  %add.ptr59 = getelementptr i8, i8* %31, i64 %idx.ext58, !dbg !725
  call void @writel(i32 %30, i8* %add.ptr59) #3, !dbg !726
  %33 = load i8*, i8** %ioaddr.addr, align 8, !dbg !727
  %34 = load i32, i32* %channel.addr, align 4, !dbg !728
  %mul60 = mul i32 128, %34, !dbg !728
  %add61 = add i32 4464, %mul60, !dbg !728
  %idx.ext62 = zext i32 %add61 to i64, !dbg !729
  %add.ptr63 = getelementptr i8, i8* %33, i64 %idx.ext62, !dbg !729
  %call64 = call i32 @readl(i8* %add.ptr63) #3, !dbg !730
  store i32 %call64, i32* %value, align 4, !dbg !731
  %35 = load i32, i32* %value, align 4, !dbg !732
  %conv65 = zext i32 %35 to i64, !dbg !732
  %or66 = or i64 %conv65, 65536, !dbg !733
  %conv67 = trunc i64 %or66 to i32, !dbg !732
  %36 = load i8*, i8** %ioaddr.addr, align 8, !dbg !734
  %37 = load i32, i32* %channel.addr, align 4, !dbg !735
  %mul68 = mul i32 128, %37, !dbg !735
  %add69 = add i32 4464, %mul68, !dbg !735
  %idx.ext70 = zext i32 %add69 to i64, !dbg !736
  %add.ptr71 = getelementptr i8, i8* %36, i64 %idx.ext70, !dbg !736
  call void @writel(i32 %conv67, i8* %add.ptr71) #3, !dbg !737
  ret void, !dbg !738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_dma_tx_mode(i8* %ioaddr, i32 %mode, i32 %channel, i32 %fifosz, i8 zeroext %qmode) #0 !dbg !739 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %fifosz.addr = alloca i32, align 4
  %qmode.addr = alloca i8, align 1
  %value = alloca i32, align 4
  %tqs = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !740, metadata !DIExpression()), !dbg !741
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !742, metadata !DIExpression()), !dbg !743
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !744, metadata !DIExpression()), !dbg !745
  store i32 %fifosz, i32* %fifosz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fifosz.addr, metadata !746, metadata !DIExpression()), !dbg !747
  store i8 %qmode, i8* %qmode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %qmode.addr, metadata !748, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.declare(metadata i32* %value, metadata !750, metadata !DIExpression()), !dbg !751
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !752
  %1 = load i32, i32* %channel.addr, align 4, !dbg !753
  %mul = mul i32 128, %1, !dbg !753
  %add = add i32 4352, %mul, !dbg !753
  %idx.ext = zext i32 %add to i64, !dbg !754
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !754
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !755
  store i32 %call, i32* %value, align 4, !dbg !751
  call void @llvm.dbg.declare(metadata i32* %tqs, metadata !756, metadata !DIExpression()), !dbg !757
  %2 = load i32, i32* %fifosz.addr, align 4, !dbg !758
  %div = sdiv i32 %2, 256, !dbg !759
  %sub = sub i32 %div, 1, !dbg !760
  store i32 %sub, i32* %tqs, align 4, !dbg !757
  %3 = load i32, i32* %mode.addr, align 4, !dbg !761
  %cmp = icmp eq i32 %3, 1, !dbg !763
  br i1 %cmp, label %if.then, label %if.else, !dbg !764

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %value, align 4, !dbg !765
  %conv = zext i32 %4 to i64, !dbg !765
  %or = or i64 %conv, 2, !dbg !765
  %conv1 = trunc i64 %or to i32, !dbg !765
  store i32 %conv1, i32* %value, align 4, !dbg !765
  br label %if.end42, !dbg !767

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %value, align 4, !dbg !768
  %conv2 = zext i32 %5 to i64, !dbg !768
  %and = and i64 %conv2, -3, !dbg !768
  %conv3 = trunc i64 %and to i32, !dbg !768
  store i32 %conv3, i32* %value, align 4, !dbg !768
  %6 = load i32, i32* %value, align 4, !dbg !770
  %conv4 = zext i32 %6 to i64, !dbg !770
  %and5 = and i64 %conv4, -113, !dbg !770
  %conv6 = trunc i64 %and5 to i32, !dbg !770
  store i32 %conv6, i32* %value, align 4, !dbg !770
  %7 = load i32, i32* %mode.addr, align 4, !dbg !771
  %cmp7 = icmp sle i32 %7, 64, !dbg !773
  br i1 %cmp7, label %if.then9, label %if.else10, !dbg !774

if.then9:                                         ; preds = %if.else
  %8 = load i32, i32* %value, align 4, !dbg !775
  store i32 %8, i32* %value, align 4, !dbg !775
  br label %if.end41, !dbg !776

if.else10:                                        ; preds = %if.else
  %9 = load i32, i32* %mode.addr, align 4, !dbg !777
  %cmp11 = icmp sle i32 %9, 96, !dbg !779
  br i1 %cmp11, label %if.then13, label %if.else15, !dbg !780

if.then13:                                        ; preds = %if.else10
  %10 = load i32, i32* %value, align 4, !dbg !781
  %or14 = or i32 %10, 32, !dbg !781
  store i32 %or14, i32* %value, align 4, !dbg !781
  br label %if.end40, !dbg !782

if.else15:                                        ; preds = %if.else10
  %11 = load i32, i32* %mode.addr, align 4, !dbg !783
  %cmp16 = icmp sle i32 %11, 128, !dbg !785
  br i1 %cmp16, label %if.then18, label %if.else20, !dbg !786

if.then18:                                        ; preds = %if.else15
  %12 = load i32, i32* %value, align 4, !dbg !787
  %or19 = or i32 %12, 48, !dbg !787
  store i32 %or19, i32* %value, align 4, !dbg !787
  br label %if.end39, !dbg !788

if.else20:                                        ; preds = %if.else15
  %13 = load i32, i32* %mode.addr, align 4, !dbg !789
  %cmp21 = icmp sle i32 %13, 192, !dbg !791
  br i1 %cmp21, label %if.then23, label %if.else25, !dbg !792

if.then23:                                        ; preds = %if.else20
  %14 = load i32, i32* %value, align 4, !dbg !793
  %or24 = or i32 %14, 64, !dbg !793
  store i32 %or24, i32* %value, align 4, !dbg !793
  br label %if.end38, !dbg !794

if.else25:                                        ; preds = %if.else20
  %15 = load i32, i32* %mode.addr, align 4, !dbg !795
  %cmp26 = icmp sle i32 %15, 256, !dbg !797
  br i1 %cmp26, label %if.then28, label %if.else30, !dbg !798

if.then28:                                        ; preds = %if.else25
  %16 = load i32, i32* %value, align 4, !dbg !799
  %or29 = or i32 %16, 80, !dbg !799
  store i32 %or29, i32* %value, align 4, !dbg !799
  br label %if.end37, !dbg !800

if.else30:                                        ; preds = %if.else25
  %17 = load i32, i32* %mode.addr, align 4, !dbg !801
  %cmp31 = icmp sle i32 %17, 384, !dbg !803
  br i1 %cmp31, label %if.then33, label %if.else35, !dbg !804

if.then33:                                        ; preds = %if.else30
  %18 = load i32, i32* %value, align 4, !dbg !805
  %or34 = or i32 %18, 96, !dbg !805
  store i32 %or34, i32* %value, align 4, !dbg !805
  br label %if.end, !dbg !806

if.else35:                                        ; preds = %if.else30
  %19 = load i32, i32* %value, align 4, !dbg !807
  %or36 = or i32 %19, 112, !dbg !807
  store i32 %or36, i32* %value, align 4, !dbg !807
  br label %if.end

if.end:                                           ; preds = %if.else35, %if.then33
  br label %if.end37

if.end37:                                         ; preds = %if.end, %if.then28
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then23
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then18
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then13
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then9
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then
  %20 = load i32, i32* %channel.addr, align 4, !dbg !808
  %shl = shl i32 %20, 8, !dbg !809
  %conv43 = zext i32 %shl to i64, !dbg !810
  %and44 = and i64 %conv43, 1792, !dbg !811
  %21 = load i32, i32* %value, align 4, !dbg !812
  %conv45 = zext i32 %21 to i64, !dbg !812
  %or46 = or i64 %conv45, %and44, !dbg !812
  %conv47 = trunc i64 %or46 to i32, !dbg !812
  store i32 %conv47, i32* %value, align 4, !dbg !812
  %22 = load i32, i32* %value, align 4, !dbg !813
  %conv48 = zext i32 %22 to i64, !dbg !813
  %and49 = and i64 %conv48, -13, !dbg !813
  %conv50 = trunc i64 %and49 to i32, !dbg !813
  store i32 %conv50, i32* %value, align 4, !dbg !813
  %23 = load i8, i8* %qmode.addr, align 1, !dbg !814
  %conv51 = zext i8 %23 to i32, !dbg !814
  %cmp52 = icmp ne i32 %conv51, 0, !dbg !816
  br i1 %cmp52, label %if.then54, label %if.else56, !dbg !817

if.then54:                                        ; preds = %if.end42
  %24 = load i32, i32* %value, align 4, !dbg !818
  %or55 = or i32 %24, 8, !dbg !818
  store i32 %or55, i32* %value, align 4, !dbg !818
  br label %if.end58, !dbg !819

if.else56:                                        ; preds = %if.end42
  %25 = load i32, i32* %value, align 4, !dbg !820
  %or57 = or i32 %25, 4, !dbg !820
  store i32 %or57, i32* %value, align 4, !dbg !820
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.then54
  %26 = load i32, i32* %value, align 4, !dbg !821
  %conv59 = zext i32 %26 to i64, !dbg !821
  %and60 = and i64 %conv59, -67043329, !dbg !821
  %conv61 = trunc i64 %and60 to i32, !dbg !821
  store i32 %conv61, i32* %value, align 4, !dbg !821
  %27 = load i32, i32* %tqs, align 4, !dbg !822
  %shl62 = shl i32 %27, 16, !dbg !823
  %conv63 = zext i32 %shl62 to i64, !dbg !824
  %and64 = and i64 %conv63, 67043328, !dbg !825
  %28 = load i32, i32* %value, align 4, !dbg !826
  %conv65 = zext i32 %28 to i64, !dbg !826
  %or66 = or i64 %conv65, %and64, !dbg !826
  %conv67 = trunc i64 %or66 to i32, !dbg !826
  store i32 %conv67, i32* %value, align 4, !dbg !826
  %29 = load i32, i32* %value, align 4, !dbg !827
  %30 = load i8*, i8** %ioaddr.addr, align 8, !dbg !828
  %31 = load i32, i32* %channel.addr, align 4, !dbg !829
  %mul68 = mul i32 128, %31, !dbg !829
  %add69 = add i32 4352, %mul68, !dbg !829
  %idx.ext70 = zext i32 %add69 to i64, !dbg !830
  %add.ptr71 = getelementptr i8, i8* %30, i64 %idx.ext70, !dbg !830
  call void @writel(i32 %29, i8* %add.ptr71) #3, !dbg !831
  ret void, !dbg !832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_enable_dma_irq(i8* %ioaddr, i32 %chan, i1 zeroext %rx, i1 zeroext %tx) #0 !dbg !833 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %rx.addr = alloca i8, align 1
  %tx.addr = alloca i8, align 1
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !834, metadata !DIExpression()), !dbg !835
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !836, metadata !DIExpression()), !dbg !837
  %frombool = zext i1 %rx to i8
  store i8 %frombool, i8* %rx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rx.addr, metadata !838, metadata !DIExpression()), !dbg !839
  %frombool1 = zext i1 %tx to i8
  store i8 %frombool1, i8* %tx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tx.addr, metadata !840, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.declare(metadata i32* %value, metadata !842, metadata !DIExpression()), !dbg !843
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !844
  %1 = load i32, i32* %chan.addr, align 4, !dbg !845
  %mul = mul i32 128, %1, !dbg !845
  %add = add i32 12600, %mul, !dbg !845
  %idx.ext = zext i32 %add to i64, !dbg !846
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !846
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !847
  store i32 %call, i32* %value, align 4, !dbg !843
  %2 = load i8, i8* %rx.addr, align 1, !dbg !848
  %tobool = trunc i8 %2 to i1, !dbg !848
  br i1 %tobool, label %if.then, label %if.end, !dbg !850

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !851
  %conv = zext i32 %3 to i64, !dbg !851
  %or = or i64 %conv, 192, !dbg !851
  %conv2 = trunc i64 %or to i32, !dbg !851
  store i32 %conv2, i32* %value, align 4, !dbg !851
  br label %if.end, !dbg !852

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* %tx.addr, align 1, !dbg !853
  %tobool3 = trunc i8 %4 to i1, !dbg !853
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !855

if.then4:                                         ; preds = %if.end
  %5 = load i32, i32* %value, align 4, !dbg !856
  %conv5 = zext i32 %5 to i64, !dbg !856
  %or6 = or i64 %conv5, 1, !dbg !856
  %conv7 = trunc i64 %or6 to i32, !dbg !856
  store i32 %conv7, i32* %value, align 4, !dbg !856
  br label %if.end8, !dbg !857

if.end8:                                          ; preds = %if.then4, %if.end
  %6 = load i32, i32* %value, align 4, !dbg !858
  %7 = load i8*, i8** %ioaddr.addr, align 8, !dbg !859
  %8 = load i32, i32* %chan.addr, align 4, !dbg !860
  %mul9 = mul i32 128, %8, !dbg !860
  %add10 = add i32 12600, %mul9, !dbg !860
  %idx.ext11 = zext i32 %add10 to i64, !dbg !861
  %add.ptr12 = getelementptr i8, i8* %7, i64 %idx.ext11, !dbg !861
  call void @writel(i32 %6, i8* %add.ptr12) #3, !dbg !862
  ret void, !dbg !863
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_disable_dma_irq(i8* %ioaddr, i32 %chan, i1 zeroext %rx, i1 zeroext %tx) #0 !dbg !864 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %rx.addr = alloca i8, align 1
  %tx.addr = alloca i8, align 1
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !865, metadata !DIExpression()), !dbg !866
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !867, metadata !DIExpression()), !dbg !868
  %frombool = zext i1 %rx to i8
  store i8 %frombool, i8* %rx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rx.addr, metadata !869, metadata !DIExpression()), !dbg !870
  %frombool1 = zext i1 %tx to i8
  store i8 %frombool1, i8* %tx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tx.addr, metadata !871, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.declare(metadata i32* %value, metadata !873, metadata !DIExpression()), !dbg !874
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !875
  %1 = load i32, i32* %chan.addr, align 4, !dbg !876
  %mul = mul i32 128, %1, !dbg !876
  %add = add i32 12600, %mul, !dbg !876
  %idx.ext = zext i32 %add to i64, !dbg !877
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !877
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !878
  store i32 %call, i32* %value, align 4, !dbg !874
  %2 = load i8, i8* %rx.addr, align 1, !dbg !879
  %tobool = trunc i8 %2 to i1, !dbg !879
  br i1 %tobool, label %if.then, label %if.end, !dbg !881

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !882
  %conv = zext i32 %3 to i64, !dbg !882
  %and = and i64 %conv, -193, !dbg !882
  %conv2 = trunc i64 %and to i32, !dbg !882
  store i32 %conv2, i32* %value, align 4, !dbg !882
  br label %if.end, !dbg !883

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* %tx.addr, align 1, !dbg !884
  %tobool3 = trunc i8 %4 to i1, !dbg !884
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !886

if.then4:                                         ; preds = %if.end
  %5 = load i32, i32* %value, align 4, !dbg !887
  %conv5 = zext i32 %5 to i64, !dbg !887
  %and6 = and i64 %conv5, -2, !dbg !887
  %conv7 = trunc i64 %and6 to i32, !dbg !887
  store i32 %conv7, i32* %value, align 4, !dbg !887
  br label %if.end8, !dbg !888

if.end8:                                          ; preds = %if.then4, %if.end
  %6 = load i32, i32* %value, align 4, !dbg !889
  %7 = load i8*, i8** %ioaddr.addr, align 8, !dbg !890
  %8 = load i32, i32* %chan.addr, align 4, !dbg !891
  %mul9 = mul i32 128, %8, !dbg !891
  %add10 = add i32 12600, %mul9, !dbg !891
  %idx.ext11 = zext i32 %add10 to i64, !dbg !892
  %add.ptr12 = getelementptr i8, i8* %7, i64 %idx.ext11, !dbg !892
  call void @writel(i32 %6, i8* %add.ptr12) #3, !dbg !893
  ret void, !dbg !894
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_dma_start_tx(i8* %ioaddr, i32 %chan) #0 !dbg !895 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !896, metadata !DIExpression()), !dbg !897
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !898, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.declare(metadata i32* %value, metadata !900, metadata !DIExpression()), !dbg !901
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !902
  %1 = load i32, i32* %chan.addr, align 4, !dbg !903
  %mul = mul i32 128, %1, !dbg !903
  %add = add i32 12548, %mul, !dbg !903
  %idx.ext = zext i32 %add to i64, !dbg !904
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !904
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !905
  store i32 %call, i32* %value, align 4, !dbg !906
  %2 = load i32, i32* %value, align 4, !dbg !907
  %conv = zext i32 %2 to i64, !dbg !907
  %or = or i64 %conv, 1, !dbg !907
  %conv1 = trunc i64 %or to i32, !dbg !907
  store i32 %conv1, i32* %value, align 4, !dbg !907
  %3 = load i32, i32* %value, align 4, !dbg !908
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !909
  %5 = load i32, i32* %chan.addr, align 4, !dbg !910
  %mul2 = mul i32 128, %5, !dbg !910
  %add3 = add i32 12548, %mul2, !dbg !910
  %idx.ext4 = zext i32 %add3 to i64, !dbg !911
  %add.ptr5 = getelementptr i8, i8* %4, i64 %idx.ext4, !dbg !911
  call void @writel(i32 %3, i8* %add.ptr5) #3, !dbg !912
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !913
  %add.ptr6 = getelementptr i8, i8* %6, i64 0, !dbg !914
  %call7 = call i32 @readl(i8* %add.ptr6) #3, !dbg !915
  store i32 %call7, i32* %value, align 4, !dbg !916
  %7 = load i32, i32* %value, align 4, !dbg !917
  %conv8 = zext i32 %7 to i64, !dbg !917
  %or9 = or i64 %conv8, 1, !dbg !917
  %conv10 = trunc i64 %or9 to i32, !dbg !917
  store i32 %conv10, i32* %value, align 4, !dbg !917
  %8 = load i32, i32* %value, align 4, !dbg !918
  %9 = load i8*, i8** %ioaddr.addr, align 8, !dbg !919
  %add.ptr11 = getelementptr i8, i8* %9, i64 0, !dbg !920
  call void @writel(i32 %8, i8* %add.ptr11) #3, !dbg !921
  ret void, !dbg !922
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_dma_stop_tx(i8* %ioaddr, i32 %chan) #0 !dbg !923 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !924, metadata !DIExpression()), !dbg !925
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !926, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.declare(metadata i32* %value, metadata !928, metadata !DIExpression()), !dbg !929
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !930
  %1 = load i32, i32* %chan.addr, align 4, !dbg !931
  %mul = mul i32 128, %1, !dbg !931
  %add = add i32 12548, %mul, !dbg !931
  %idx.ext = zext i32 %add to i64, !dbg !932
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !932
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !933
  store i32 %call, i32* %value, align 4, !dbg !934
  %2 = load i32, i32* %value, align 4, !dbg !935
  %conv = zext i32 %2 to i64, !dbg !935
  %and = and i64 %conv, -2, !dbg !935
  %conv1 = trunc i64 %and to i32, !dbg !935
  store i32 %conv1, i32* %value, align 4, !dbg !935
  %3 = load i32, i32* %value, align 4, !dbg !936
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !937
  %5 = load i32, i32* %chan.addr, align 4, !dbg !938
  %mul2 = mul i32 128, %5, !dbg !938
  %add3 = add i32 12548, %mul2, !dbg !938
  %idx.ext4 = zext i32 %add3 to i64, !dbg !939
  %add.ptr5 = getelementptr i8, i8* %4, i64 %idx.ext4, !dbg !939
  call void @writel(i32 %3, i8* %add.ptr5) #3, !dbg !940
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !941
  %add.ptr6 = getelementptr i8, i8* %6, i64 0, !dbg !942
  %call7 = call i32 @readl(i8* %add.ptr6) #3, !dbg !943
  store i32 %call7, i32* %value, align 4, !dbg !944
  %7 = load i32, i32* %value, align 4, !dbg !945
  %conv8 = zext i32 %7 to i64, !dbg !945
  %and9 = and i64 %conv8, -2, !dbg !945
  %conv10 = trunc i64 %and9 to i32, !dbg !945
  store i32 %conv10, i32* %value, align 4, !dbg !945
  %8 = load i32, i32* %value, align 4, !dbg !946
  %9 = load i8*, i8** %ioaddr.addr, align 8, !dbg !947
  %add.ptr11 = getelementptr i8, i8* %9, i64 0, !dbg !948
  call void @writel(i32 %8, i8* %add.ptr11) #3, !dbg !949
  ret void, !dbg !950
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_dma_start_rx(i8* %ioaddr, i32 %chan) #0 !dbg !951 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !952, metadata !DIExpression()), !dbg !953
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !954, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.declare(metadata i32* %value, metadata !956, metadata !DIExpression()), !dbg !957
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !958
  %1 = load i32, i32* %chan.addr, align 4, !dbg !959
  %mul = mul i32 128, %1, !dbg !959
  %add = add i32 12552, %mul, !dbg !959
  %idx.ext = zext i32 %add to i64, !dbg !960
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !960
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !961
  store i32 %call, i32* %value, align 4, !dbg !962
  %2 = load i32, i32* %value, align 4, !dbg !963
  %conv = zext i32 %2 to i64, !dbg !963
  %or = or i64 %conv, 1, !dbg !963
  %conv1 = trunc i64 %or to i32, !dbg !963
  store i32 %conv1, i32* %value, align 4, !dbg !963
  %3 = load i32, i32* %value, align 4, !dbg !964
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !965
  %5 = load i32, i32* %chan.addr, align 4, !dbg !966
  %mul2 = mul i32 128, %5, !dbg !966
  %add3 = add i32 12552, %mul2, !dbg !966
  %idx.ext4 = zext i32 %add3 to i64, !dbg !967
  %add.ptr5 = getelementptr i8, i8* %4, i64 %idx.ext4, !dbg !967
  call void @writel(i32 %3, i8* %add.ptr5) #3, !dbg !968
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !969
  %add.ptr6 = getelementptr i8, i8* %6, i64 4, !dbg !970
  %call7 = call i32 @readl(i8* %add.ptr6) #3, !dbg !971
  store i32 %call7, i32* %value, align 4, !dbg !972
  %7 = load i32, i32* %value, align 4, !dbg !973
  %conv8 = zext i32 %7 to i64, !dbg !973
  %or9 = or i64 %conv8, 1, !dbg !973
  %conv10 = trunc i64 %or9 to i32, !dbg !973
  store i32 %conv10, i32* %value, align 4, !dbg !973
  %8 = load i32, i32* %value, align 4, !dbg !974
  %9 = load i8*, i8** %ioaddr.addr, align 8, !dbg !975
  %add.ptr11 = getelementptr i8, i8* %9, i64 4, !dbg !976
  call void @writel(i32 %8, i8* %add.ptr11) #3, !dbg !977
  ret void, !dbg !978
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_dma_stop_rx(i8* %ioaddr, i32 %chan) #0 !dbg !979 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !980, metadata !DIExpression()), !dbg !981
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !982, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.declare(metadata i32* %value, metadata !984, metadata !DIExpression()), !dbg !985
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !986
  %1 = load i32, i32* %chan.addr, align 4, !dbg !987
  %mul = mul i32 128, %1, !dbg !987
  %add = add i32 12552, %mul, !dbg !987
  %idx.ext = zext i32 %add to i64, !dbg !988
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !988
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !989
  store i32 %call, i32* %value, align 4, !dbg !990
  %2 = load i32, i32* %value, align 4, !dbg !991
  %conv = zext i32 %2 to i64, !dbg !991
  %and = and i64 %conv, -2, !dbg !991
  %conv1 = trunc i64 %and to i32, !dbg !991
  store i32 %conv1, i32* %value, align 4, !dbg !991
  %3 = load i32, i32* %value, align 4, !dbg !992
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !993
  %5 = load i32, i32* %chan.addr, align 4, !dbg !994
  %mul2 = mul i32 128, %5, !dbg !994
  %add3 = add i32 12552, %mul2, !dbg !994
  %idx.ext4 = zext i32 %add3 to i64, !dbg !995
  %add.ptr5 = getelementptr i8, i8* %4, i64 %idx.ext4, !dbg !995
  call void @writel(i32 %3, i8* %add.ptr5) #3, !dbg !996
  ret void, !dbg !997
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwxgmac2_dma_interrupt(i8* %ioaddr, %struct.stmmac_extra_stats* %x, i32 %chan) #0 !dbg !998 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %x.addr = alloca %struct.stmmac_extra_stats*, align 8
  %chan.addr = alloca i32, align 4
  %intr_status = alloca i32, align 4
  %intr_en = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !999, metadata !DIExpression()), !dbg !1000
  store %struct.stmmac_extra_stats* %x, %struct.stmmac_extra_stats** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_extra_stats** %x.addr, metadata !1001, metadata !DIExpression()), !dbg !1002
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !1003, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.declare(metadata i32* %intr_status, metadata !1005, metadata !DIExpression()), !dbg !1006
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1007
  %1 = load i32, i32* %chan.addr, align 4, !dbg !1008
  %mul = mul i32 128, %1, !dbg !1008
  %add = add i32 12640, %mul, !dbg !1008
  %idx.ext = zext i32 %add to i64, !dbg !1009
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !1009
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !1010
  store i32 %call, i32* %intr_status, align 4, !dbg !1006
  call void @llvm.dbg.declare(metadata i32* %intr_en, metadata !1011, metadata !DIExpression()), !dbg !1012
  %2 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1013
  %3 = load i32, i32* %chan.addr, align 4, !dbg !1014
  %mul1 = mul i32 128, %3, !dbg !1014
  %add2 = add i32 12600, %mul1, !dbg !1014
  %idx.ext3 = zext i32 %add2 to i64, !dbg !1015
  %add.ptr4 = getelementptr i8, i8* %2, i64 %idx.ext3, !dbg !1015
  %call5 = call i32 @readl(i8* %add.ptr4) #3, !dbg !1016
  store i32 %call5, i32* %intr_en, align 4, !dbg !1012
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1017, metadata !DIExpression()), !dbg !1018
  store i32 0, i32* %ret, align 4, !dbg !1018
  %4 = load i32, i32* %intr_status, align 4, !dbg !1019
  %conv = zext i32 %4 to i64, !dbg !1019
  %and = and i64 %conv, 16384, !dbg !1019
  %tobool = icmp ne i64 %and, 0, !dbg !1019
  %lnot = xor i1 %tobool, true, !dbg !1019
  %lnot6 = xor i1 %lnot, true, !dbg !1019
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !1019
  %conv7 = sext i32 %lnot.ext to i64, !dbg !1019
  %tobool8 = icmp ne i64 %conv7, 0, !dbg !1019
  br i1 %tobool8, label %if.then, label %if.end45, !dbg !1021

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %intr_status, align 4, !dbg !1022
  %conv9 = zext i32 %5 to i64, !dbg !1022
  %and10 = and i64 %conv9, 128, !dbg !1022
  %tobool11 = icmp ne i64 %and10, 0, !dbg !1022
  %lnot12 = xor i1 %tobool11, true, !dbg !1022
  %lnot14 = xor i1 %lnot12, true, !dbg !1022
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !1022
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !1022
  %tobool17 = icmp ne i64 %conv16, 0, !dbg !1022
  br i1 %tobool17, label %if.then18, label %if.end, !dbg !1025

if.then18:                                        ; preds = %if.then
  %6 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !1026
  %rx_buf_unav_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %6, i32 0, i32 32, !dbg !1028
  %7 = load i64, i64* %rx_buf_unav_irq, align 64, !dbg !1029
  %inc = add i64 %7, 1, !dbg !1029
  store i64 %inc, i64* %rx_buf_unav_irq, align 64, !dbg !1029
  %8 = load i32, i32* %ret, align 4, !dbg !1030
  %or = or i32 %8, 4, !dbg !1030
  store i32 %or, i32* %ret, align 4, !dbg !1030
  br label %if.end, !dbg !1031

if.end:                                           ; preds = %if.then18, %if.then
  %9 = load i32, i32* %intr_status, align 4, !dbg !1032
  %conv19 = zext i32 %9 to i64, !dbg !1032
  %and20 = and i64 %conv19, 2, !dbg !1032
  %tobool21 = icmp ne i64 %and20, 0, !dbg !1032
  %lnot22 = xor i1 %tobool21, true, !dbg !1032
  %lnot24 = xor i1 %lnot22, true, !dbg !1032
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !1032
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !1032
  %tobool27 = icmp ne i64 %conv26, 0, !dbg !1032
  br i1 %tobool27, label %if.then28, label %if.end31, !dbg !1034

if.then28:                                        ; preds = %if.end
  %10 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !1035
  %tx_process_stopped_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %10, i32 0, i32 29, !dbg !1037
  %11 = load i64, i64* %tx_process_stopped_irq, align 8, !dbg !1038
  %inc29 = add i64 %11, 1, !dbg !1038
  store i64 %inc29, i64* %tx_process_stopped_irq, align 8, !dbg !1038
  %12 = load i32, i32* %ret, align 4, !dbg !1039
  %or30 = or i32 %12, 1, !dbg !1039
  store i32 %or30, i32* %ret, align 4, !dbg !1039
  br label %if.end31, !dbg !1040

if.end31:                                         ; preds = %if.then28, %if.end
  %13 = load i32, i32* %intr_status, align 4, !dbg !1041
  %conv32 = zext i32 %13 to i64, !dbg !1041
  %and33 = and i64 %conv32, 4096, !dbg !1041
  %tobool34 = icmp ne i64 %and33, 0, !dbg !1041
  %lnot35 = xor i1 %tobool34, true, !dbg !1041
  %lnot37 = xor i1 %lnot35, true, !dbg !1041
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !1041
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !1041
  %tobool40 = icmp ne i64 %conv39, 0, !dbg !1041
  br i1 %tobool40, label %if.then41, label %if.end44, !dbg !1043

if.then41:                                        ; preds = %if.end31
  %14 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !1044
  %fatal_bus_error_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %14, i32 0, i32 36, !dbg !1046
  %15 = load i64, i64* %fatal_bus_error_irq, align 32, !dbg !1047
  %inc42 = add i64 %15, 1, !dbg !1047
  store i64 %inc42, i64* %fatal_bus_error_irq, align 32, !dbg !1047
  %16 = load i32, i32* %ret, align 4, !dbg !1048
  %or43 = or i32 %16, 1, !dbg !1048
  store i32 %or43, i32* %ret, align 4, !dbg !1048
  br label %if.end44, !dbg !1049

if.end44:                                         ; preds = %if.then41, %if.end31
  br label %if.end45, !dbg !1050

if.end45:                                         ; preds = %if.end44, %entry
  %17 = load i32, i32* %intr_status, align 4, !dbg !1051
  %conv46 = zext i32 %17 to i64, !dbg !1051
  %and47 = and i64 %conv46, 32768, !dbg !1051
  %tobool48 = icmp ne i64 %and47, 0, !dbg !1051
  %lnot49 = xor i1 %tobool48, true, !dbg !1051
  %lnot51 = xor i1 %lnot49, true, !dbg !1051
  %lnot.ext52 = zext i1 %lnot51 to i32, !dbg !1051
  %conv53 = sext i32 %lnot.ext52 to i64, !dbg !1051
  %tobool54 = icmp ne i64 %conv53, 0, !dbg !1051
  br i1 %tobool54, label %if.then55, label %if.end83, !dbg !1053

if.then55:                                        ; preds = %if.end45
  %18 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !1054
  %normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %18, i32 0, i32 41, !dbg !1056
  %19 = load i64, i64* %normal_irq_n, align 8, !dbg !1057
  %inc56 = add i64 %19, 1, !dbg !1057
  store i64 %inc56, i64* %normal_irq_n, align 8, !dbg !1057
  %20 = load i32, i32* %intr_status, align 4, !dbg !1058
  %conv57 = zext i32 %20 to i64, !dbg !1058
  %and58 = and i64 %conv57, 64, !dbg !1058
  %tobool59 = icmp ne i64 %and58, 0, !dbg !1058
  %lnot60 = xor i1 %tobool59, true, !dbg !1058
  %lnot62 = xor i1 %lnot60, true, !dbg !1058
  %lnot.ext63 = zext i1 %lnot62 to i32, !dbg !1058
  %conv64 = sext i32 %lnot.ext63 to i64, !dbg !1058
  %tobool65 = icmp ne i64 %conv64, 0, !dbg !1058
  br i1 %tobool65, label %if.then66, label %if.end69, !dbg !1060

if.then66:                                        ; preds = %if.then55
  %21 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !1061
  %rx_normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %21, i32 0, i32 42, !dbg !1063
  %22 = load i64, i64* %rx_normal_irq_n, align 16, !dbg !1064
  %inc67 = add i64 %22, 1, !dbg !1064
  store i64 %inc67, i64* %rx_normal_irq_n, align 16, !dbg !1064
  %23 = load i32, i32* %ret, align 4, !dbg !1065
  %or68 = or i32 %23, 4, !dbg !1065
  store i32 %or68, i32* %ret, align 4, !dbg !1065
  br label %if.end69, !dbg !1066

if.end69:                                         ; preds = %if.then66, %if.then55
  %24 = load i32, i32* %intr_status, align 4, !dbg !1067
  %conv70 = zext i32 %24 to i64, !dbg !1067
  %and71 = and i64 %conv70, 5, !dbg !1067
  %tobool72 = icmp ne i64 %and71, 0, !dbg !1067
  %lnot73 = xor i1 %tobool72, true, !dbg !1067
  %lnot75 = xor i1 %lnot73, true, !dbg !1067
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !1067
  %conv77 = sext i32 %lnot.ext76 to i64, !dbg !1067
  %tobool78 = icmp ne i64 %conv77, 0, !dbg !1067
  br i1 %tobool78, label %if.then79, label %if.end82, !dbg !1069

if.then79:                                        ; preds = %if.end69
  %25 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !1070
  %tx_normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %25, i32 0, i32 44, !dbg !1072
  %26 = load i64, i64* %tx_normal_irq_n, align 32, !dbg !1073
  %inc80 = add i64 %26, 1, !dbg !1073
  store i64 %inc80, i64* %tx_normal_irq_n, align 32, !dbg !1073
  %27 = load i32, i32* %ret, align 4, !dbg !1074
  %or81 = or i32 %27, 8, !dbg !1074
  store i32 %or81, i32* %ret, align 4, !dbg !1074
  br label %if.end82, !dbg !1075

if.end82:                                         ; preds = %if.then79, %if.end69
  br label %if.end83, !dbg !1076

if.end83:                                         ; preds = %if.end82, %if.end45
  %28 = load i32, i32* %intr_en, align 4, !dbg !1077
  %29 = load i32, i32* %intr_status, align 4, !dbg !1078
  %and84 = and i32 %28, %29, !dbg !1079
  %30 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1080
  %31 = load i32, i32* %chan.addr, align 4, !dbg !1081
  %mul85 = mul i32 128, %31, !dbg !1081
  %add86 = add i32 12640, %mul85, !dbg !1081
  %idx.ext87 = zext i32 %add86 to i64, !dbg !1082
  %add.ptr88 = getelementptr i8, i8* %30, i64 %idx.ext87, !dbg !1082
  call void @writel(i32 %and84, i8* %add.ptr88) #3, !dbg !1083
  %32 = load i32, i32* %ret, align 4, !dbg !1084
  ret i32 %32, !dbg !1085
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_get_hw_feature(i8* %ioaddr, %struct.dma_features* %dma_cap) #0 !dbg !1086 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cap.addr = alloca %struct.dma_features*, align 8
  %hw_cap = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1087, metadata !DIExpression()), !dbg !1088
  store %struct.dma_features* %dma_cap, %struct.dma_features** %dma_cap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_features** %dma_cap.addr, metadata !1089, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.declare(metadata i32* %hw_cap, metadata !1091, metadata !DIExpression()), !dbg !1092
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1093
  %add.ptr = getelementptr i8, i8* %0, i64 284, !dbg !1094
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !1095
  store i32 %call, i32* %hw_cap, align 4, !dbg !1096
  %1 = load i32, i32* %hw_cap, align 4, !dbg !1097
  %conv = zext i32 %1 to i64, !dbg !1097
  %and = and i64 %conv, 134217728, !dbg !1098
  %shr = lshr i64 %and, 27, !dbg !1099
  %conv1 = trunc i64 %shr to i32, !dbg !1100
  %2 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1101
  %vlins = getelementptr inbounds %struct.dma_features, %struct.dma_features* %2, i32 0, i32 37, !dbg !1102
  store i32 %conv1, i32* %vlins, align 4, !dbg !1103
  %3 = load i32, i32* %hw_cap, align 4, !dbg !1104
  %conv2 = zext i32 %3 to i64, !dbg !1104
  %and3 = and i64 %conv2, 65536, !dbg !1105
  %shr4 = lshr i64 %and3, 16, !dbg !1106
  %conv5 = trunc i64 %shr4 to i32, !dbg !1107
  %4 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1108
  %rx_coe = getelementptr inbounds %struct.dma_features, %struct.dma_features* %4, i32 0, i32 17, !dbg !1109
  store i32 %conv5, i32* %rx_coe, align 4, !dbg !1110
  %5 = load i32, i32* %hw_cap, align 4, !dbg !1111
  %conv6 = zext i32 %5 to i64, !dbg !1111
  %and7 = and i64 %conv6, 16384, !dbg !1112
  %shr8 = lshr i64 %and7, 14, !dbg !1113
  %conv9 = trunc i64 %shr8 to i32, !dbg !1114
  %6 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1115
  %tx_coe = getelementptr inbounds %struct.dma_features, %struct.dma_features* %6, i32 0, i32 16, !dbg !1116
  store i32 %conv9, i32* %tx_coe, align 4, !dbg !1117
  %7 = load i32, i32* %hw_cap, align 4, !dbg !1118
  %conv10 = zext i32 %7 to i64, !dbg !1118
  %and11 = and i64 %conv10, 8192, !dbg !1119
  %shr12 = lshr i64 %and11, 13, !dbg !1120
  %conv13 = trunc i64 %shr12 to i32, !dbg !1121
  %8 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1122
  %eee = getelementptr inbounds %struct.dma_features, %struct.dma_features* %8, i32 0, i32 12, !dbg !1123
  store i32 %conv13, i32* %eee, align 4, !dbg !1124
  %9 = load i32, i32* %hw_cap, align 4, !dbg !1125
  %conv14 = zext i32 %9 to i64, !dbg !1125
  %and15 = and i64 %conv14, 4096, !dbg !1126
  %shr16 = lshr i64 %and15, 12, !dbg !1127
  %conv17 = trunc i64 %shr16 to i32, !dbg !1128
  %10 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1129
  %atime_stamp = getelementptr inbounds %struct.dma_features, %struct.dma_features* %10, i32 0, i32 11, !dbg !1130
  store i32 %conv17, i32* %atime_stamp, align 4, !dbg !1131
  %11 = load i32, i32* %hw_cap, align 4, !dbg !1132
  %conv18 = zext i32 %11 to i64, !dbg !1132
  %and19 = and i64 %conv18, 2048, !dbg !1133
  %shr20 = lshr i64 %and19, 11, !dbg !1134
  %conv21 = trunc i64 %shr20 to i32, !dbg !1135
  %12 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1136
  %av = getelementptr inbounds %struct.dma_features, %struct.dma_features* %12, i32 0, i32 13, !dbg !1137
  store i32 %conv21, i32* %av, align 4, !dbg !1138
  %13 = load i32, i32* %hw_cap, align 4, !dbg !1139
  %conv22 = zext i32 %13 to i64, !dbg !1139
  %and23 = and i64 %conv22, 1024, !dbg !1140
  %shr24 = lshr i64 %and23, 10, !dbg !1141
  %tobool = icmp ne i64 %shr24, 0, !dbg !1142
  %lnot = xor i1 %tobool, true, !dbg !1142
  %lnot.ext = zext i1 %lnot to i32, !dbg !1142
  %14 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1143
  %av25 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %14, i32 0, i32 13, !dbg !1144
  %15 = load i32, i32* %av25, align 4, !dbg !1145
  %and26 = and i32 %15, %lnot.ext, !dbg !1145
  store i32 %and26, i32* %av25, align 4, !dbg !1145
  %16 = load i32, i32* %hw_cap, align 4, !dbg !1146
  %conv27 = zext i32 %16 to i64, !dbg !1146
  %and28 = and i64 %conv27, 512, !dbg !1147
  %shr29 = lshr i64 %and28, 9, !dbg !1148
  %conv30 = trunc i64 %shr29 to i32, !dbg !1149
  %17 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1150
  %arpoffsel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %17, i32 0, i32 40, !dbg !1151
  store i32 %conv30, i32* %arpoffsel, align 4, !dbg !1152
  %18 = load i32, i32* %hw_cap, align 4, !dbg !1153
  %conv31 = zext i32 %18 to i64, !dbg !1153
  %and32 = and i64 %conv31, 256, !dbg !1154
  %shr33 = lshr i64 %and32, 8, !dbg !1155
  %conv34 = trunc i64 %shr33 to i32, !dbg !1156
  %19 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1157
  %rmon = getelementptr inbounds %struct.dma_features, %struct.dma_features* %19, i32 0, i32 9, !dbg !1158
  store i32 %conv34, i32* %rmon, align 4, !dbg !1159
  %20 = load i32, i32* %hw_cap, align 4, !dbg !1160
  %conv35 = zext i32 %20 to i64, !dbg !1160
  %and36 = and i64 %conv35, 128, !dbg !1161
  %shr37 = lshr i64 %and36, 7, !dbg !1162
  %conv38 = trunc i64 %shr37 to i32, !dbg !1163
  %21 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1164
  %pmt_magic_frame = getelementptr inbounds %struct.dma_features, %struct.dma_features* %21, i32 0, i32 8, !dbg !1165
  store i32 %conv38, i32* %pmt_magic_frame, align 4, !dbg !1166
  %22 = load i32, i32* %hw_cap, align 4, !dbg !1167
  %conv39 = zext i32 %22 to i64, !dbg !1167
  %and40 = and i64 %conv39, 64, !dbg !1168
  %shr41 = lshr i64 %and40, 6, !dbg !1169
  %conv42 = trunc i64 %shr41 to i32, !dbg !1170
  %23 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1171
  %pmt_remote_wake_up = getelementptr inbounds %struct.dma_features, %struct.dma_features* %23, i32 0, i32 7, !dbg !1172
  store i32 %conv42, i32* %pmt_remote_wake_up, align 4, !dbg !1173
  %24 = load i32, i32* %hw_cap, align 4, !dbg !1174
  %conv43 = zext i32 %24 to i64, !dbg !1174
  %and44 = and i64 %conv43, 16, !dbg !1175
  %shr45 = lshr i64 %and44, 4, !dbg !1176
  %conv46 = trunc i64 %shr45 to i32, !dbg !1177
  %25 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1178
  %vlhash = getelementptr inbounds %struct.dma_features, %struct.dma_features* %25, i32 0, i32 35, !dbg !1179
  store i32 %conv46, i32* %vlhash, align 4, !dbg !1180
  %26 = load i32, i32* %hw_cap, align 4, !dbg !1181
  %conv47 = zext i32 %26 to i64, !dbg !1181
  %and48 = and i64 %conv47, 2, !dbg !1182
  %shr49 = lshr i64 %and48, 1, !dbg !1183
  %conv50 = trunc i64 %shr49 to i32, !dbg !1184
  %27 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1185
  %mbps_1000 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %27, i32 0, i32 1, !dbg !1186
  store i32 %conv50, i32* %mbps_1000, align 4, !dbg !1187
  %28 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1188
  %add.ptr51 = getelementptr i8, i8* %28, i64 288, !dbg !1189
  %call52 = call i32 @readl(i8* %add.ptr51) #3, !dbg !1190
  store i32 %call52, i32* %hw_cap, align 4, !dbg !1191
  %29 = load i32, i32* %hw_cap, align 4, !dbg !1192
  %conv53 = zext i32 %29 to i64, !dbg !1192
  %and54 = and i64 %conv53, 2013265920, !dbg !1193
  %shr55 = lshr i64 %and54, 27, !dbg !1194
  %conv56 = trunc i64 %shr55 to i32, !dbg !1195
  %30 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1196
  %l3l4fnum = getelementptr inbounds %struct.dma_features, %struct.dma_features* %30, i32 0, i32 39, !dbg !1197
  store i32 %conv56, i32* %l3l4fnum, align 4, !dbg !1198
  %31 = load i32, i32* %hw_cap, align 4, !dbg !1199
  %conv57 = zext i32 %31 to i64, !dbg !1199
  %and58 = and i64 %conv57, 50331648, !dbg !1200
  %shr59 = lshr i64 %and58, 24, !dbg !1201
  %conv60 = trunc i64 %shr59 to i32, !dbg !1202
  %32 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1203
  %hash_tb_sz = getelementptr inbounds %struct.dma_features, %struct.dma_features* %32, i32 0, i32 14, !dbg !1204
  store i32 %conv60, i32* %hash_tb_sz, align 4, !dbg !1205
  %33 = load i32, i32* %hw_cap, align 4, !dbg !1206
  %conv61 = zext i32 %33 to i64, !dbg !1206
  %and62 = and i64 %conv61, 1048576, !dbg !1207
  %shr63 = lshr i64 %and62, 20, !dbg !1208
  %conv64 = trunc i64 %shr63 to i32, !dbg !1209
  %34 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1210
  %rssen = getelementptr inbounds %struct.dma_features, %struct.dma_features* %34, i32 0, i32 34, !dbg !1211
  store i32 %conv64, i32* %rssen, align 4, !dbg !1212
  %35 = load i32, i32* %hw_cap, align 4, !dbg !1213
  %conv65 = zext i32 %35 to i64, !dbg !1213
  %and66 = and i64 %conv65, 262144, !dbg !1214
  %shr67 = lshr i64 %and66, 18, !dbg !1215
  %conv68 = trunc i64 %shr67 to i32, !dbg !1216
  %36 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1217
  %tsoen = getelementptr inbounds %struct.dma_features, %struct.dma_features* %36, i32 0, i32 15, !dbg !1218
  store i32 %conv68, i32* %tsoen, align 4, !dbg !1219
  %37 = load i32, i32* %hw_cap, align 4, !dbg !1220
  %conv69 = zext i32 %37 to i64, !dbg !1220
  %and70 = and i64 %conv69, 131072, !dbg !1221
  %shr71 = lshr i64 %and70, 17, !dbg !1222
  %conv72 = trunc i64 %shr71 to i32, !dbg !1223
  %38 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1224
  %sphen = getelementptr inbounds %struct.dma_features, %struct.dma_features* %38, i32 0, i32 36, !dbg !1225
  store i32 %conv72, i32* %sphen, align 4, !dbg !1226
  %39 = load i32, i32* %hw_cap, align 4, !dbg !1227
  %conv73 = zext i32 %39 to i64, !dbg !1227
  %and74 = and i64 %conv73, 49152, !dbg !1228
  %shr75 = lshr i64 %and74, 14, !dbg !1229
  %conv76 = trunc i64 %shr75 to i32, !dbg !1230
  %40 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1231
  %addr64 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %40, i32 0, i32 33, !dbg !1232
  store i32 %conv76, i32* %addr64, align 4, !dbg !1233
  %41 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1234
  %addr6477 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %41, i32 0, i32 33, !dbg !1235
  %42 = load i32, i32* %addr6477, align 4, !dbg !1235
  switch i32 %42, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb79
    i32 2, label %sw.bb81
  ], !dbg !1236

sw.bb:                                            ; preds = %entry
  %43 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1237
  %addr6478 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %43, i32 0, i32 33, !dbg !1239
  store i32 32, i32* %addr6478, align 4, !dbg !1240
  br label %sw.epilog, !dbg !1241

sw.bb79:                                          ; preds = %entry
  %44 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1242
  %addr6480 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %44, i32 0, i32 33, !dbg !1243
  store i32 40, i32* %addr6480, align 4, !dbg !1244
  br label %sw.epilog, !dbg !1245

sw.bb81:                                          ; preds = %entry
  %45 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1246
  %addr6482 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %45, i32 0, i32 33, !dbg !1247
  store i32 48, i32* %addr6482, align 4, !dbg !1248
  br label %sw.epilog, !dbg !1249

sw.default:                                       ; preds = %entry
  %46 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1250
  %addr6483 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %46, i32 0, i32 33, !dbg !1251
  store i32 32, i32* %addr6483, align 4, !dbg !1252
  br label %sw.epilog, !dbg !1253

sw.epilog:                                        ; preds = %sw.default, %sw.bb81, %sw.bb79, %sw.bb
  %47 = load i32, i32* %hw_cap, align 4, !dbg !1254
  %conv84 = zext i32 %47 to i64, !dbg !1254
  %and85 = and i64 %conv84, 1984, !dbg !1255
  %shr86 = lshr i64 %and85, 6, !dbg !1256
  %sh_prom = trunc i64 %shr86 to i32, !dbg !1257
  %shl = shl i32 128, %sh_prom, !dbg !1257
  %48 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1258
  %tx_fifo_size = getelementptr inbounds %struct.dma_features, %struct.dma_features* %48, i32 0, i32 27, !dbg !1259
  store i32 %shl, i32* %tx_fifo_size, align 4, !dbg !1260
  %49 = load i32, i32* %hw_cap, align 4, !dbg !1261
  %conv87 = zext i32 %49 to i64, !dbg !1261
  %and88 = and i64 %conv87, 31, !dbg !1262
  %shr89 = lshr i64 %and88, 0, !dbg !1263
  %sh_prom90 = trunc i64 %shr89 to i32, !dbg !1264
  %shl91 = shl i32 128, %sh_prom90, !dbg !1264
  %50 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1265
  %rx_fifo_size = getelementptr inbounds %struct.dma_features, %struct.dma_features* %50, i32 0, i32 28, !dbg !1266
  store i32 %shl91, i32* %rx_fifo_size, align 4, !dbg !1267
  %51 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1268
  %add.ptr92 = getelementptr i8, i8* %51, i64 292, !dbg !1269
  %call93 = call i32 @readl(i8* %add.ptr92) #3, !dbg !1270
  store i32 %call93, i32* %hw_cap, align 4, !dbg !1271
  %52 = load i32, i32* %hw_cap, align 4, !dbg !1272
  %conv94 = zext i32 %52 to i64, !dbg !1272
  %and95 = and i64 %conv94, 117440512, !dbg !1273
  %shr96 = lshr i64 %and95, 24, !dbg !1274
  %conv97 = trunc i64 %shr96 to i32, !dbg !1275
  %53 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1276
  %pps_out_num = getelementptr inbounds %struct.dma_features, %struct.dma_features* %53, i32 0, i32 25, !dbg !1277
  store i32 %conv97, i32* %pps_out_num, align 4, !dbg !1278
  %54 = load i32, i32* %hw_cap, align 4, !dbg !1279
  %conv98 = zext i32 %54 to i64, !dbg !1279
  %and99 = and i64 %conv98, 3932160, !dbg !1280
  %shr100 = lshr i64 %and99, 18, !dbg !1281
  %add = add i64 %shr100, 1, !dbg !1282
  %conv101 = trunc i64 %add to i32, !dbg !1283
  %55 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1284
  %number_tx_channel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %55, i32 0, i32 22, !dbg !1285
  store i32 %conv101, i32* %number_tx_channel, align 4, !dbg !1286
  %56 = load i32, i32* %hw_cap, align 4, !dbg !1287
  %conv102 = zext i32 %56 to i64, !dbg !1287
  %and103 = and i64 %conv102, 61440, !dbg !1288
  %shr104 = lshr i64 %and103, 12, !dbg !1289
  %add105 = add i64 %shr104, 1, !dbg !1290
  %conv106 = trunc i64 %add105 to i32, !dbg !1291
  %57 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1292
  %number_rx_channel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %57, i32 0, i32 21, !dbg !1293
  store i32 %conv106, i32* %number_rx_channel, align 4, !dbg !1294
  %58 = load i32, i32* %hw_cap, align 4, !dbg !1295
  %conv107 = zext i32 %58 to i64, !dbg !1295
  %and108 = and i64 %conv107, 960, !dbg !1296
  %shr109 = lshr i64 %and108, 6, !dbg !1297
  %add110 = add i64 %shr109, 1, !dbg !1298
  %conv111 = trunc i64 %add110 to i32, !dbg !1299
  %59 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1300
  %number_tx_queues = getelementptr inbounds %struct.dma_features, %struct.dma_features* %59, i32 0, i32 24, !dbg !1301
  store i32 %conv111, i32* %number_tx_queues, align 4, !dbg !1302
  %60 = load i32, i32* %hw_cap, align 4, !dbg !1303
  %conv112 = zext i32 %60 to i64, !dbg !1303
  %and113 = and i64 %conv112, 15, !dbg !1304
  %shr114 = lshr i64 %and113, 0, !dbg !1305
  %add115 = add i64 %shr114, 1, !dbg !1306
  %conv116 = trunc i64 %add115 to i32, !dbg !1307
  %61 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1308
  %number_rx_queues = getelementptr inbounds %struct.dma_features, %struct.dma_features* %61, i32 0, i32 23, !dbg !1309
  store i32 %conv116, i32* %number_rx_queues, align 4, !dbg !1310
  %62 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1311
  %add.ptr117 = getelementptr i8, i8* %62, i64 296, !dbg !1312
  %call118 = call i32 @readl(i8* %add.ptr117) #3, !dbg !1313
  store i32 %call118, i32* %hw_cap, align 4, !dbg !1314
  %63 = load i32, i32* %hw_cap, align 4, !dbg !1315
  %conv119 = zext i32 %63 to i64, !dbg !1315
  %and120 = and i64 %conv119, 134217728, !dbg !1316
  %shr121 = lshr i64 %and120, 27, !dbg !1317
  %conv122 = trunc i64 %shr121 to i32, !dbg !1318
  %64 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1319
  %tbssel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %64, i32 0, i32 45, !dbg !1320
  store i32 %conv122, i32* %tbssel, align 4, !dbg !1321
  %65 = load i32, i32* %hw_cap, align 4, !dbg !1322
  %conv123 = zext i32 %65 to i64, !dbg !1322
  %and124 = and i64 %conv123, 67108864, !dbg !1323
  %shr125 = lshr i64 %and124, 26, !dbg !1324
  %conv126 = trunc i64 %shr125 to i32, !dbg !1325
  %66 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1326
  %fpesel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %66, i32 0, i32 44, !dbg !1327
  store i32 %conv126, i32* %fpesel, align 4, !dbg !1328
  %67 = load i32, i32* %hw_cap, align 4, !dbg !1329
  %conv127 = zext i32 %67 to i64, !dbg !1329
  %and128 = and i64 %conv127, 25165824, !dbg !1330
  %shr129 = lshr i64 %and128, 23, !dbg !1331
  %conv130 = trunc i64 %shr129 to i32, !dbg !1332
  %68 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1333
  %estwid = getelementptr inbounds %struct.dma_features, %struct.dma_features* %68, i32 0, i32 41, !dbg !1334
  store i32 %conv130, i32* %estwid, align 4, !dbg !1335
  %69 = load i32, i32* %hw_cap, align 4, !dbg !1336
  %conv131 = zext i32 %69 to i64, !dbg !1336
  %and132 = and i64 %conv131, 7340032, !dbg !1337
  %shr133 = lshr i64 %and132, 20, !dbg !1338
  %conv134 = trunc i64 %shr133 to i32, !dbg !1339
  %70 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1340
  %estdep = getelementptr inbounds %struct.dma_features, %struct.dma_features* %70, i32 0, i32 42, !dbg !1341
  store i32 %conv134, i32* %estdep, align 4, !dbg !1342
  %71 = load i32, i32* %hw_cap, align 4, !dbg !1343
  %conv135 = zext i32 %71 to i64, !dbg !1343
  %and136 = and i64 %conv135, 524288, !dbg !1344
  %shr137 = lshr i64 %and136, 19, !dbg !1345
  %conv138 = trunc i64 %shr137 to i32, !dbg !1346
  %72 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1347
  %estsel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %72, i32 0, i32 43, !dbg !1348
  store i32 %conv138, i32* %estsel, align 4, !dbg !1349
  %73 = load i32, i32* %hw_cap, align 4, !dbg !1350
  %conv139 = zext i32 %73 to i64, !dbg !1350
  %and140 = and i64 %conv139, 49152, !dbg !1351
  %shr141 = lshr i64 %and140, 14, !dbg !1352
  %conv142 = trunc i64 %shr141 to i32, !dbg !1353
  %74 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1354
  %asp = getelementptr inbounds %struct.dma_features, %struct.dma_features* %74, i32 0, i32 29, !dbg !1355
  store i32 %conv142, i32* %asp, align 4, !dbg !1356
  %75 = load i32, i32* %hw_cap, align 4, !dbg !1357
  %conv143 = zext i32 %75 to i64, !dbg !1357
  %and144 = and i64 %conv143, 8192, !dbg !1358
  %shr145 = lshr i64 %and144, 13, !dbg !1359
  %conv146 = trunc i64 %shr145 to i32, !dbg !1360
  %76 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1361
  %dvlan = getelementptr inbounds %struct.dma_features, %struct.dma_features* %76, i32 0, i32 38, !dbg !1362
  store i32 %conv146, i32* %dvlan, align 4, !dbg !1363
  %77 = load i32, i32* %hw_cap, align 4, !dbg !1364
  %conv147 = zext i32 %77 to i64, !dbg !1364
  %and148 = and i64 %conv147, 6144, !dbg !1365
  %shr149 = lshr i64 %and148, 11, !dbg !1366
  %conv150 = trunc i64 %shr149 to i32, !dbg !1367
  %78 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1368
  %frpes = getelementptr inbounds %struct.dma_features, %struct.dma_features* %78, i32 0, i32 32, !dbg !1369
  store i32 %conv150, i32* %frpes, align 4, !dbg !1370
  %79 = load i32, i32* %hw_cap, align 4, !dbg !1371
  %conv151 = zext i32 %79 to i64, !dbg !1371
  %and152 = and i64 %conv151, 1536, !dbg !1372
  %shr153 = lshr i64 %and152, 9, !dbg !1373
  %conv154 = trunc i64 %shr153 to i32, !dbg !1374
  %80 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1375
  %frpbs = getelementptr inbounds %struct.dma_features, %struct.dma_features* %80, i32 0, i32 31, !dbg !1376
  store i32 %conv154, i32* %frpbs, align 4, !dbg !1377
  %81 = load i32, i32* %hw_cap, align 4, !dbg !1378
  %conv155 = zext i32 %81 to i64, !dbg !1378
  %and156 = and i64 %conv155, 8, !dbg !1379
  %shr157 = lshr i64 %and156, 3, !dbg !1380
  %conv158 = trunc i64 %shr157 to i32, !dbg !1381
  %82 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1382
  %frpsel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %82, i32 0, i32 30, !dbg !1383
  store i32 %conv158, i32* %frpsel, align 4, !dbg !1384
  ret void, !dbg !1385
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_rx_watchdog(i8* %ioaddr, i32 %riwt, i32 %nchan) #0 !dbg !1386 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %riwt.addr = alloca i32, align 4
  %nchan.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1387, metadata !DIExpression()), !dbg !1388
  store i32 %riwt, i32* %riwt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %riwt.addr, metadata !1389, metadata !DIExpression()), !dbg !1390
  store i32 %nchan, i32* %nchan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nchan.addr, metadata !1391, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1393, metadata !DIExpression()), !dbg !1394
  store i32 0, i32* %i, align 4, !dbg !1395
  br label %for.cond, !dbg !1397

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1398
  %1 = load i32, i32* %nchan.addr, align 4, !dbg !1400
  %cmp = icmp ult i32 %0, %1, !dbg !1401
  br i1 %cmp, label %for.body, label %for.end, !dbg !1402

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %riwt.addr, align 4, !dbg !1403
  %conv = zext i32 %2 to i64, !dbg !1403
  %and = and i64 %conv, 255, !dbg !1404
  %conv1 = trunc i64 %and to i32, !dbg !1403
  %3 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1405
  %4 = load i32, i32* %i, align 4, !dbg !1406
  %mul = mul i32 128, %4, !dbg !1406
  %add = add i32 12604, %mul, !dbg !1406
  %idx.ext = zext i32 %add to i64, !dbg !1407
  %add.ptr = getelementptr i8, i8* %3, i64 %idx.ext, !dbg !1407
  call void @writel(i32 %conv1, i8* %add.ptr) #3, !dbg !1408
  br label %for.inc, !dbg !1408

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !1409
  %inc = add i32 %5, 1, !dbg !1409
  store i32 %inc, i32* %i, align 4, !dbg !1409
  br label %for.cond, !dbg !1410, !llvm.loop !1411

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1413
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_tx_ring_len(i8* %ioaddr, i32 %len, i32 %chan) #0 !dbg !1414 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1415, metadata !DIExpression()), !dbg !1416
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !1417, metadata !DIExpression()), !dbg !1418
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !1419, metadata !DIExpression()), !dbg !1420
  %0 = load i32, i32* %len.addr, align 4, !dbg !1421
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1422
  %2 = load i32, i32* %chan.addr, align 4, !dbg !1423
  %mul = mul i32 128, %2, !dbg !1423
  %add = add i32 12592, %mul, !dbg !1423
  %idx.ext = zext i32 %add to i64, !dbg !1424
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !1424
  call void @writel(i32 %0, i8* %add.ptr) #3, !dbg !1425
  ret void, !dbg !1426
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_rx_ring_len(i8* %ioaddr, i32 %len, i32 %chan) #0 !dbg !1427 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1428, metadata !DIExpression()), !dbg !1429
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !1430, metadata !DIExpression()), !dbg !1431
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !1432, metadata !DIExpression()), !dbg !1433
  %0 = load i32, i32* %len.addr, align 4, !dbg !1434
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1435
  %2 = load i32, i32* %chan.addr, align 4, !dbg !1436
  %mul = mul i32 128, %2, !dbg !1436
  %add = add i32 12596, %mul, !dbg !1436
  %idx.ext = zext i32 %add to i64, !dbg !1437
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !1437
  call void @writel(i32 %0, i8* %add.ptr) #3, !dbg !1438
  ret void, !dbg !1439
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_rx_tail_ptr(i8* %ioaddr, i32 %ptr, i32 %chan) #0 !dbg !1440 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %ptr.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1441, metadata !DIExpression()), !dbg !1442
  store i32 %ptr, i32* %ptr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ptr.addr, metadata !1443, metadata !DIExpression()), !dbg !1444
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !1445, metadata !DIExpression()), !dbg !1446
  %0 = load i32, i32* %ptr.addr, align 4, !dbg !1447
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1448
  %2 = load i32, i32* %chan.addr, align 4, !dbg !1449
  %mul = mul i32 128, %2, !dbg !1449
  %add = add i32 12588, %mul, !dbg !1449
  %idx.ext = zext i32 %add to i64, !dbg !1450
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !1450
  call void @writel(i32 %0, i8* %add.ptr) #3, !dbg !1451
  ret void, !dbg !1452
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_tx_tail_ptr(i8* %ioaddr, i32 %ptr, i32 %chan) #0 !dbg !1453 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %ptr.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1454, metadata !DIExpression()), !dbg !1455
  store i32 %ptr, i32* %ptr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ptr.addr, metadata !1456, metadata !DIExpression()), !dbg !1457
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !1458, metadata !DIExpression()), !dbg !1459
  %0 = load i32, i32* %ptr.addr, align 4, !dbg !1460
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1461
  %2 = load i32, i32* %chan.addr, align 4, !dbg !1462
  %mul = mul i32 128, %2, !dbg !1462
  %add = add i32 12580, %mul, !dbg !1462
  %idx.ext = zext i32 %add to i64, !dbg !1463
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !1463
  call void @writel(i32 %0, i8* %add.ptr) #3, !dbg !1464
  ret void, !dbg !1465
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_enable_tso(i8* %ioaddr, i1 zeroext %en, i32 %chan) #0 !dbg !1466 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %en.addr = alloca i8, align 1
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1467, metadata !DIExpression()), !dbg !1468
  %frombool = zext i1 %en to i8
  store i8 %frombool, i8* %en.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %en.addr, metadata !1469, metadata !DIExpression()), !dbg !1470
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !1471, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.declare(metadata i32* %value, metadata !1473, metadata !DIExpression()), !dbg !1474
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1475
  %1 = load i32, i32* %chan.addr, align 4, !dbg !1476
  %mul = mul i32 128, %1, !dbg !1476
  %add = add i32 12548, %mul, !dbg !1476
  %idx.ext = zext i32 %add to i64, !dbg !1477
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !1477
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !1478
  store i32 %call, i32* %value, align 4, !dbg !1474
  %2 = load i8, i8* %en.addr, align 1, !dbg !1479
  %tobool = trunc i8 %2 to i1, !dbg !1479
  br i1 %tobool, label %if.then, label %if.else, !dbg !1481

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !1482
  %conv = zext i32 %3 to i64, !dbg !1482
  %or = or i64 %conv, 4096, !dbg !1482
  %conv1 = trunc i64 %or to i32, !dbg !1482
  store i32 %conv1, i32* %value, align 4, !dbg !1482
  br label %if.end, !dbg !1483

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %value, align 4, !dbg !1484
  %conv2 = zext i32 %4 to i64, !dbg !1484
  %and = and i64 %conv2, -4097, !dbg !1484
  %conv3 = trunc i64 %and to i32, !dbg !1484
  store i32 %conv3, i32* %value, align 4, !dbg !1484
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %value, align 4, !dbg !1485
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1486
  %7 = load i32, i32* %chan.addr, align 4, !dbg !1487
  %mul4 = mul i32 128, %7, !dbg !1487
  %add5 = add i32 12548, %mul4, !dbg !1487
  %idx.ext6 = zext i32 %add5 to i64, !dbg !1488
  %add.ptr7 = getelementptr i8, i8* %6, i64 %idx.ext6, !dbg !1488
  call void @writel(i32 %5, i8* %add.ptr7) #3, !dbg !1489
  ret void, !dbg !1490
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_qmode(i8* %ioaddr, i32 %channel, i8 zeroext %qmode) #0 !dbg !1491 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %channel.addr = alloca i32, align 4
  %qmode.addr = alloca i8, align 1
  %value = alloca i32, align 4
  %flow = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1492, metadata !DIExpression()), !dbg !1493
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !1494, metadata !DIExpression()), !dbg !1495
  store i8 %qmode, i8* %qmode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %qmode.addr, metadata !1496, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.declare(metadata i32* %value, metadata !1498, metadata !DIExpression()), !dbg !1499
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1500
  %1 = load i32, i32* %channel.addr, align 4, !dbg !1501
  %mul = mul i32 128, %1, !dbg !1501
  %add = add i32 4352, %mul, !dbg !1501
  %idx.ext = zext i32 %add to i64, !dbg !1502
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !1502
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !1503
  store i32 %call, i32* %value, align 4, !dbg !1499
  call void @llvm.dbg.declare(metadata i32* %flow, metadata !1504, metadata !DIExpression()), !dbg !1505
  %2 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1506
  %add.ptr1 = getelementptr i8, i8* %2, i64 144, !dbg !1507
  %call2 = call i32 @readl(i8* %add.ptr1) #3, !dbg !1508
  store i32 %call2, i32* %flow, align 4, !dbg !1505
  %3 = load i32, i32* %value, align 4, !dbg !1509
  %conv = zext i32 %3 to i64, !dbg !1509
  %and = and i64 %conv, -13, !dbg !1509
  %conv3 = trunc i64 %and to i32, !dbg !1509
  store i32 %conv3, i32* %value, align 4, !dbg !1509
  %4 = load i8, i8* %qmode.addr, align 1, !dbg !1510
  %conv4 = zext i8 %4 to i32, !dbg !1510
  %cmp = icmp ne i32 %conv4, 0, !dbg !1512
  br i1 %cmp, label %if.then, label %if.else, !dbg !1513

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %value, align 4, !dbg !1514
  %or = or i32 %5, 8, !dbg !1514
  store i32 %or, i32* %value, align 4, !dbg !1514
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1516
  %7 = load i32, i32* %channel.addr, align 4, !dbg !1517
  %mul6 = mul i32 128, %7, !dbg !1517
  %add7 = add i32 4368, %mul6, !dbg !1517
  %idx.ext8 = zext i32 %add7 to i64, !dbg !1518
  %add.ptr9 = getelementptr i8, i8* %6, i64 %idx.ext8, !dbg !1518
  call void @writel(i32 0, i8* %add.ptr9) #3, !dbg !1519
  br label %if.end, !dbg !1520

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %value, align 4, !dbg !1521
  %or10 = or i32 %8, 4, !dbg !1521
  store i32 %or10, i32* %value, align 4, !dbg !1521
  %9 = load i32, i32* %flow, align 4, !dbg !1523
  %conv11 = zext i32 %9 to i64, !dbg !1523
  %and12 = and i64 %conv11, -2, !dbg !1524
  %conv13 = trunc i64 %and12 to i32, !dbg !1523
  %10 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1525
  %add.ptr14 = getelementptr i8, i8* %10, i64 144, !dbg !1526
  call void @writel(i32 %conv13, i8* %add.ptr14) #3, !dbg !1527
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %value, align 4, !dbg !1528
  %12 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1529
  %13 = load i32, i32* %channel.addr, align 4, !dbg !1530
  %mul15 = mul i32 128, %13, !dbg !1530
  %add16 = add i32 4352, %mul15, !dbg !1530
  %idx.ext17 = zext i32 %add16 to i64, !dbg !1531
  %add.ptr18 = getelementptr i8, i8* %12, i64 %idx.ext17, !dbg !1531
  call void @writel(i32 %11, i8* %add.ptr18) #3, !dbg !1532
  ret void, !dbg !1533
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_bfsize(i8* %ioaddr, i32 %bfsize, i32 %chan) #0 !dbg !1534 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %bfsize.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1535, metadata !DIExpression()), !dbg !1536
  store i32 %bfsize, i32* %bfsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bfsize.addr, metadata !1537, metadata !DIExpression()), !dbg !1538
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !1539, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.declare(metadata i32* %value, metadata !1541, metadata !DIExpression()), !dbg !1542
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1543
  %1 = load i32, i32* %chan.addr, align 4, !dbg !1544
  %mul = mul i32 128, %1, !dbg !1544
  %add = add i32 12552, %mul, !dbg !1544
  %idx.ext = zext i32 %add to i64, !dbg !1545
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !1545
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !1546
  store i32 %call, i32* %value, align 4, !dbg !1547
  %2 = load i32, i32* %value, align 4, !dbg !1548
  %conv = zext i32 %2 to i64, !dbg !1548
  %and = and i64 %conv, -32767, !dbg !1548
  %conv1 = trunc i64 %and to i32, !dbg !1548
  store i32 %conv1, i32* %value, align 4, !dbg !1548
  %3 = load i32, i32* %bfsize.addr, align 4, !dbg !1549
  %shl = shl i32 %3, 1, !dbg !1550
  %4 = load i32, i32* %value, align 4, !dbg !1551
  %or = or i32 %4, %shl, !dbg !1551
  store i32 %or, i32* %value, align 4, !dbg !1551
  %5 = load i32, i32* %value, align 4, !dbg !1552
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1553
  %7 = load i32, i32* %chan.addr, align 4, !dbg !1554
  %mul2 = mul i32 128, %7, !dbg !1554
  %add3 = add i32 12552, %mul2, !dbg !1554
  %idx.ext4 = zext i32 %add3 to i64, !dbg !1555
  %add.ptr5 = getelementptr i8, i8* %6, i64 %idx.ext4, !dbg !1555
  call void @writel(i32 %5, i8* %add.ptr5) #3, !dbg !1556
  ret void, !dbg !1557
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_enable_sph(i8* %ioaddr, i1 zeroext %en, i32 %chan) #0 !dbg !1558 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %en.addr = alloca i8, align 1
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1559, metadata !DIExpression()), !dbg !1560
  %frombool = zext i1 %en to i8
  store i8 %frombool, i8* %en.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %en.addr, metadata !1561, metadata !DIExpression()), !dbg !1562
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !1563, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.declare(metadata i32* %value, metadata !1565, metadata !DIExpression()), !dbg !1566
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1567
  %add.ptr = getelementptr i8, i8* %0, i64 4, !dbg !1568
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !1569
  store i32 %call, i32* %value, align 4, !dbg !1566
  %1 = load i32, i32* %value, align 4, !dbg !1570
  %conv = zext i32 %1 to i64, !dbg !1570
  %and = and i64 %conv, -28673, !dbg !1570
  %conv1 = trunc i64 %and to i32, !dbg !1570
  store i32 %conv1, i32* %value, align 4, !dbg !1570
  %2 = load i32, i32* %value, align 4, !dbg !1571
  %or = or i32 %2, 8192, !dbg !1571
  store i32 %or, i32* %value, align 4, !dbg !1571
  %3 = load i32, i32* %value, align 4, !dbg !1572
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1573
  %add.ptr2 = getelementptr i8, i8* %4, i64 4, !dbg !1574
  call void @writel(i32 %3, i8* %add.ptr2) #3, !dbg !1575
  %5 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1576
  %6 = load i32, i32* %chan.addr, align 4, !dbg !1577
  %mul = mul i32 128, %6, !dbg !1577
  %add = add i32 12544, %mul, !dbg !1577
  %idx.ext = zext i32 %add to i64, !dbg !1578
  %add.ptr3 = getelementptr i8, i8* %5, i64 %idx.ext, !dbg !1578
  %call4 = call i32 @readl(i8* %add.ptr3) #3, !dbg !1579
  store i32 %call4, i32* %value, align 4, !dbg !1580
  %7 = load i8, i8* %en.addr, align 1, !dbg !1581
  %tobool = trunc i8 %7 to i1, !dbg !1581
  br i1 %tobool, label %if.then, label %if.else, !dbg !1583

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %value, align 4, !dbg !1584
  %conv5 = zext i32 %8 to i64, !dbg !1584
  %or6 = or i64 %conv5, 16777216, !dbg !1584
  %conv7 = trunc i64 %or6 to i32, !dbg !1584
  store i32 %conv7, i32* %value, align 4, !dbg !1584
  br label %if.end, !dbg !1585

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %value, align 4, !dbg !1586
  %conv8 = zext i32 %9 to i64, !dbg !1586
  %and9 = and i64 %conv8, -16777217, !dbg !1586
  %conv10 = trunc i64 %and9 to i32, !dbg !1586
  store i32 %conv10, i32* %value, align 4, !dbg !1586
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %value, align 4, !dbg !1587
  %11 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1588
  %12 = load i32, i32* %chan.addr, align 4, !dbg !1589
  %mul11 = mul i32 128, %12, !dbg !1589
  %add12 = add i32 12544, %mul11, !dbg !1589
  %idx.ext13 = zext i32 %add12 to i64, !dbg !1590
  %add.ptr14 = getelementptr i8, i8* %11, i64 %idx.ext13, !dbg !1590
  call void @writel(i32 %10, i8* %add.ptr14) #3, !dbg !1591
  ret void, !dbg !1592
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwxgmac2_enable_tbs(i8* %ioaddr, i1 zeroext %en, i32 %chan) #0 !dbg !1593 {
entry:
  %retval = alloca i32, align 4
  %ioaddr.addr = alloca i8*, align 8
  %en.addr = alloca i8, align 1
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1594, metadata !DIExpression()), !dbg !1595
  %frombool = zext i1 %en to i8
  store i8 %frombool, i8* %en.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %en.addr, metadata !1596, metadata !DIExpression()), !dbg !1597
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !1598, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.declare(metadata i32* %value, metadata !1600, metadata !DIExpression()), !dbg !1601
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1602
  %1 = load i32, i32* %chan.addr, align 4, !dbg !1603
  %mul = mul i32 128, %1, !dbg !1603
  %add = add i32 12548, %mul, !dbg !1603
  %idx.ext = zext i32 %add to i64, !dbg !1604
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !1604
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !1605
  store i32 %call, i32* %value, align 4, !dbg !1601
  %2 = load i8, i8* %en.addr, align 1, !dbg !1606
  %tobool = trunc i8 %2 to i1, !dbg !1606
  br i1 %tobool, label %if.then, label %if.else, !dbg !1608

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !1609
  %conv = zext i32 %3 to i64, !dbg !1609
  %or = or i64 %conv, 268435456, !dbg !1609
  %conv1 = trunc i64 %or to i32, !dbg !1609
  store i32 %conv1, i32* %value, align 4, !dbg !1609
  br label %if.end, !dbg !1610

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %value, align 4, !dbg !1611
  %conv2 = zext i32 %4 to i64, !dbg !1611
  %and = and i64 %conv2, -268435457, !dbg !1611
  %conv3 = trunc i64 %and to i32, !dbg !1611
  store i32 %conv3, i32* %value, align 4, !dbg !1611
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %value, align 4, !dbg !1612
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1613
  %7 = load i32, i32* %chan.addr, align 4, !dbg !1614
  %mul4 = mul i32 128, %7, !dbg !1614
  %add5 = add i32 12548, %mul4, !dbg !1614
  %idx.ext6 = zext i32 %add5 to i64, !dbg !1615
  %add.ptr7 = getelementptr i8, i8* %6, i64 %idx.ext6, !dbg !1615
  call void @writel(i32 %5, i8* %add.ptr7) #3, !dbg !1616
  %8 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1617
  %9 = load i32, i32* %chan.addr, align 4, !dbg !1618
  %mul8 = mul i32 128, %9, !dbg !1618
  %add9 = add i32 12548, %mul8, !dbg !1618
  %idx.ext10 = zext i32 %add9 to i64, !dbg !1619
  %add.ptr11 = getelementptr i8, i8* %8, i64 %idx.ext10, !dbg !1619
  %call12 = call i32 @readl(i8* %add.ptr11) #3, !dbg !1620
  %conv13 = zext i32 %call12 to i64, !dbg !1620
  %and14 = and i64 %conv13, 268435456, !dbg !1621
  %conv15 = trunc i64 %and14 to i32, !dbg !1620
  store i32 %conv15, i32* %value, align 4, !dbg !1622
  %10 = load i8, i8* %en.addr, align 1, !dbg !1623
  %tobool16 = trunc i8 %10 to i1, !dbg !1623
  br i1 %tobool16, label %land.lhs.true, label %if.end20, !dbg !1625

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %value, align 4, !dbg !1626
  %tobool18 = icmp ne i32 %11, 0, !dbg !1626
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !1627

if.then19:                                        ; preds = %land.lhs.true
  store i32 -5, i32* %retval, align 4, !dbg !1628
  br label %return, !dbg !1628

if.end20:                                         ; preds = %land.lhs.true, %if.end
  %12 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1629
  %add.ptr21 = getelementptr i8, i8* %12, i64 12372, !dbg !1630
  call void @writel(i32 -255, i8* %add.ptr21) #3, !dbg !1631
  %13 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1632
  %add.ptr22 = getelementptr i8, i8* %13, i64 12376, !dbg !1633
  call void @writel(i32 -255, i8* %add.ptr22) #3, !dbg !1634
  %14 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1635
  %add.ptr23 = getelementptr i8, i8* %14, i64 12380, !dbg !1636
  call void @writel(i32 -255, i8* %add.ptr23) #3, !dbg !1637
  %15 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1638
  %add.ptr24 = getelementptr i8, i8* %15, i64 12384, !dbg !1639
  call void @writel(i32 -255, i8* %add.ptr24) #3, !dbg !1640
  store i32 0, i32* %retval, align 4, !dbg !1641
  br label %return, !dbg !1641

return:                                           ; preds = %if.end20, %if.then19
  %16 = load i32, i32* %retval, align 4, !dbg !1642
  ret i32 %16, !dbg !1642
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !1643 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1650, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1652, metadata !DIExpression()), !dbg !1651
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !1651
  %1 = bitcast i8* %0 to i32*, !dbg !1651
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #4, !dbg !1651, !srcloc !1653
  store i32 %2, i32* %ret, align 4, !dbg !1651
  %3 = load i32, i32* %ret, align 4, !dbg !1651
  ret i32 %3, !dbg !1651
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !1654 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !1658, metadata !DIExpression()), !dbg !1659
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1660, metadata !DIExpression()), !dbg !1659
  %0 = load i32, i32* %val.addr, align 4, !dbg !1659
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !1659
  %2 = bitcast i8* %1 to i32*, !dbg !1659
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #4, !dbg !1659, !srcloc !1661
  ret void, !dbg !1659
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_add_us(i64 %kt, i64 %usec) #0 !dbg !1662 {
entry:
  %kt.addr = alloca i64, align 8
  %usec.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !1667, metadata !DIExpression()), !dbg !1668
  store i64 %usec, i64* %usec.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %usec.addr, metadata !1669, metadata !DIExpression()), !dbg !1670
  %0 = load i64, i64* %kt.addr, align 8, !dbg !1671
  %1 = load i64, i64* %usec.addr, align 8, !dbg !1671
  %mul = mul i64 %1, 1000, !dbg !1671
  %add = add i64 %0, %mul, !dbg !1671
  ret i64 %add, !dbg !1672
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ktime_compare(i64 %cmp1, i64 %cmp2) #0 !dbg !1673 {
entry:
  %retval = alloca i32, align 4
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !1676, metadata !DIExpression()), !dbg !1677
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !1678, metadata !DIExpression()), !dbg !1679
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !1680
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !1682
  %cmp = icmp slt i64 %0, %1, !dbg !1683
  br i1 %cmp, label %if.then, label %if.end, !dbg !1684

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !1685
  br label %return, !dbg !1685

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %cmp1.addr, align 8, !dbg !1686
  %3 = load i64, i64* %cmp2.addr, align 8, !dbg !1688
  %cmp3 = icmp sgt i64 %2, %3, !dbg !1689
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1690

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !1691
  br label %return, !dbg !1691

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1692
  br label %return, !dbg !1692

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !1693
  ret i32 %4, !dbg !1693
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!314, !315, !316, !317}
!llvm.ident = !{!318}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dwxgmac210_dma_ops", scope: !2, file: !3, line: 549, type: !22, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !21, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_irq_status", file: !6, line: 299, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/common.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "tx_hard_error", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "tx_hard_error_bump_tc", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "handle_rx", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "handle_tx", value: 8, isUnsigned: true)
!13 = !{!14, !16, !17}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !18, line: 21, baseType: !19)
!18 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !20, line: 27, baseType: !7)
!20 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!0}
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_dma_ops", file: !24, line: 169, size: 1856, elements: !25)
!24 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/hwif.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !31, !50, !54, !62, !63, !82, !87, !94, !95, !216, !220, !224, !225, !229, !230, !231, !232, !236, !289, !293, !294, !295, !296, !297, !301, !305, !309, !310}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !23, file: !24, line: 171, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!16, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !23, file: !24, line: 172, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !30, !35, !16}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_dma_cfg", file: !37, line: 89, size: 224, elements: !38)
!37 = !DIFile(filename: "./include/linux/stmmac.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42, !46, !47, !48, !49}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "pbl", scope: !36, file: !37, line: 90, baseType: !16, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "txpbl", scope: !36, file: !37, line: 91, baseType: !16, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "rxpbl", scope: !36, file: !37, line: 92, baseType: !16, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "pblx8", scope: !36, file: !37, line: 93, baseType: !43, size: 8, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !44, line: 30, baseType: !45)
!44 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!45 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_burst", scope: !36, file: !37, line: 94, baseType: !16, size: 32, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_burst", scope: !36, file: !37, line: 95, baseType: !16, size: 32, offset: 160)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "aal", scope: !36, file: !37, line: 96, baseType: !43, size: 8, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "eame", scope: !36, file: !37, line: 97, baseType: !43, size: 8, offset: 200)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "init_chan", scope: !23, file: !24, line: 174, baseType: !51, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !30, !35, !17}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "init_rx_chan", scope: !23, file: !24, line: 176, baseType: !55, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !30, !35, !58, !17}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !44, line: 143, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !18, line: 23, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !20, line: 31, baseType: !61)
!61 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "init_tx_chan", scope: !23, file: !24, line: 179, baseType: !55, size: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "axi", scope: !23, file: !24, line: 183, baseType: !64, size: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !30, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_axi", file: !37, line: 101, size: 384, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !79, !80, !81}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "axi_lpi_en", scope: !68, file: !37, line: 102, baseType: !43, size: 8)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "axi_xit_frm", scope: !68, file: !37, line: 103, baseType: !43, size: 8, offset: 8)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "axi_wr_osr_lmt", scope: !68, file: !37, line: 104, baseType: !17, size: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "axi_rd_osr_lmt", scope: !68, file: !37, line: 105, baseType: !17, size: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "axi_kbbe", scope: !68, file: !37, line: 106, baseType: !43, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "axi_blen", scope: !68, file: !37, line: 107, baseType: !76, size: 224, offset: 128)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 224, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 7)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "axi_fb", scope: !68, file: !37, line: 108, baseType: !43, size: 8, offset: 352)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "axi_mb", scope: !68, file: !37, line: 109, baseType: !43, size: 8, offset: 360)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "axi_rb", scope: !68, file: !37, line: 110, baseType: !43, size: 8, offset: 368)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "dump_regs", scope: !23, file: !24, line: 185, baseType: !83, size: 64, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !30, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "dma_rx_mode", scope: !23, file: !24, line: 186, baseType: !88, size: 64, offset: 448)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !30, !16, !17, !16, !91}
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !18, line: 17, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !20, line: 21, baseType: !93)
!93 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "dma_tx_mode", scope: !23, file: !24, line: 188, baseType: !88, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "dma_diagnostic_fr", scope: !23, file: !24, line: 191, baseType: !96, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !30, !99, !30}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_extra_stats", file: !6, line: 61, size: 7680, elements: !101)
!101 = !{!102, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tx_underflow", scope: !100, file: !6, line: 63, baseType: !103, size: 64, align: 512)
!103 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tx_carrier", scope: !100, file: !6, line: 64, baseType: !103, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tx_losscarrier", scope: !100, file: !6, line: 65, baseType: !103, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag", scope: !100, file: !6, line: 66, baseType: !103, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tx_deferred", scope: !100, file: !6, line: 67, baseType: !103, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tx_vlan", scope: !100, file: !6, line: 68, baseType: !103, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber", scope: !100, file: !6, line: 69, baseType: !103, size: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tx_frame_flushed", scope: !100, file: !6, line: 70, baseType: !103, size: 64, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tx_payload_error", scope: !100, file: !6, line: 71, baseType: !103, size: 64, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ip_header_error", scope: !100, file: !6, line: 72, baseType: !103, size: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "rx_desc", scope: !100, file: !6, line: 74, baseType: !103, size: 64, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "sa_filter_fail", scope: !100, file: !6, line: 75, baseType: !103, size: 64, offset: 704)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_error", scope: !100, file: !6, line: 76, baseType: !103, size: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_csum_error", scope: !100, file: !6, line: 77, baseType: !103, size: 64, offset: 832)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "rx_collision", scope: !100, file: !6, line: 78, baseType: !103, size: 64, offset: 896)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "rx_crc_errors", scope: !100, file: !6, line: 79, baseType: !103, size: 64, offset: 960)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "dribbling_bit", scope: !100, file: !6, line: 80, baseType: !103, size: 64, offset: 1024)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "rx_length", scope: !100, file: !6, line: 81, baseType: !103, size: 64, offset: 1088)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "rx_mii", scope: !100, file: !6, line: 82, baseType: !103, size: 64, offset: 1152)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "rx_multicast", scope: !100, file: !6, line: 83, baseType: !103, size: 64, offset: 1216)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "rx_gmac_overflow", scope: !100, file: !6, line: 84, baseType: !103, size: 64, offset: 1280)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog", scope: !100, file: !6, line: 85, baseType: !103, size: 64, offset: 1344)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "da_rx_filter_fail", scope: !100, file: !6, line: 86, baseType: !103, size: 64, offset: 1408)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sa_rx_filter_fail", scope: !100, file: !6, line: 87, baseType: !103, size: 64, offset: 1472)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "rx_missed_cntr", scope: !100, file: !6, line: 88, baseType: !103, size: 64, offset: 1536)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_cntr", scope: !100, file: !6, line: 89, baseType: !103, size: 64, offset: 1600)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "rx_vlan", scope: !100, file: !6, line: 90, baseType: !103, size: 64, offset: 1664)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "rx_split_hdr_pkt_n", scope: !100, file: !6, line: 91, baseType: !103, size: 64, offset: 1728)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tx_undeflow_irq", scope: !100, file: !6, line: 93, baseType: !103, size: 64, offset: 1792)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tx_process_stopped_irq", scope: !100, file: !6, line: 94, baseType: !103, size: 64, offset: 1856)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber_irq", scope: !100, file: !6, line: 95, baseType: !103, size: 64, offset: 1920)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_irq", scope: !100, file: !6, line: 96, baseType: !103, size: 64, offset: 1984)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_unav_irq", scope: !100, file: !6, line: 97, baseType: !103, size: 64, offset: 2048)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "rx_process_stopped_irq", scope: !100, file: !6, line: 98, baseType: !103, size: 64, offset: 2112)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog_irq", scope: !100, file: !6, line: 99, baseType: !103, size: 64, offset: 2176)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tx_early_irq", scope: !100, file: !6, line: 100, baseType: !103, size: 64, offset: 2240)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_bus_error_irq", scope: !100, file: !6, line: 101, baseType: !103, size: 64, offset: 2304)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "rx_early_irq", scope: !100, file: !6, line: 103, baseType: !103, size: 64, offset: 2368)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !100, file: !6, line: 104, baseType: !103, size: 64, offset: 2432)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "tx_pkt_n", scope: !100, file: !6, line: 105, baseType: !103, size: 64, offset: 2496)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "rx_pkt_n", scope: !100, file: !6, line: 106, baseType: !103, size: 64, offset: 2560)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "normal_irq_n", scope: !100, file: !6, line: 107, baseType: !103, size: 64, offset: 2624)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rx_normal_irq_n", scope: !100, file: !6, line: 108, baseType: !103, size: 64, offset: 2688)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "napi_poll", scope: !100, file: !6, line: 109, baseType: !103, size: 64, offset: 2752)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "tx_normal_irq_n", scope: !100, file: !6, line: 110, baseType: !103, size: 64, offset: 2816)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "tx_clean", scope: !100, file: !6, line: 111, baseType: !103, size: 64, offset: 2880)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tx_set_ic_bit", scope: !100, file: !6, line: 112, baseType: !103, size: 64, offset: 2944)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "irq_receive_pmt_irq_n", scope: !100, file: !6, line: 113, baseType: !103, size: 64, offset: 3008)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_irq_n", scope: !100, file: !6, line: 115, baseType: !103, size: 64, offset: 3072)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_irq_n", scope: !100, file: !6, line: 116, baseType: !103, size: 64, offset: 3136)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_csum_offload_irq_n", scope: !100, file: !6, line: 117, baseType: !103, size: 64, offset: 3200)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_in_lpi_mode_n", scope: !100, file: !6, line: 119, baseType: !103, size: 64, offset: 3264)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_exit_lpi_mode_n", scope: !100, file: !6, line: 120, baseType: !103, size: 64, offset: 3328)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_in_lpi_mode_n", scope: !100, file: !6, line: 121, baseType: !103, size: 64, offset: 3392)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_exit_lpi_mode_n", scope: !100, file: !6, line: 122, baseType: !103, size: 64, offset: 3456)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "phy_eee_wakeup_error_n", scope: !100, file: !6, line: 123, baseType: !103, size: 64, offset: 3520)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hdr_err", scope: !100, file: !6, line: 125, baseType: !103, size: 64, offset: 3584)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ip_payload_err", scope: !100, file: !6, line: 126, baseType: !103, size: 64, offset: 3648)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ip_csum_bypassed", scope: !100, file: !6, line: 127, baseType: !103, size: 64, offset: 3712)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_pkt_rcvd", scope: !100, file: !6, line: 128, baseType: !103, size: 64, offset: 3776)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_pkt_rcvd", scope: !100, file: !6, line: 129, baseType: !103, size: 64, offset: 3840)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "no_ptp_rx_msg_type_ext", scope: !100, file: !6, line: 130, baseType: !103, size: 64, offset: 3904)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_sync", scope: !100, file: !6, line: 131, baseType: !103, size: 64, offset: 3968)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_follow_up", scope: !100, file: !6, line: 132, baseType: !103, size: 64, offset: 4032)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_req", scope: !100, file: !6, line: 133, baseType: !103, size: 64, offset: 4096)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_resp", scope: !100, file: !6, line: 134, baseType: !103, size: 64, offset: 4160)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_req", scope: !100, file: !6, line: 135, baseType: !103, size: 64, offset: 4224)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_resp", scope: !100, file: !6, line: 136, baseType: !103, size: 64, offset: 4288)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_follow_up", scope: !100, file: !6, line: 137, baseType: !103, size: 64, offset: 4352)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_announce", scope: !100, file: !6, line: 138, baseType: !103, size: 64, offset: 4416)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_management", scope: !100, file: !6, line: 139, baseType: !103, size: 64, offset: 4480)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_pkt_reserved_type", scope: !100, file: !6, line: 140, baseType: !103, size: 64, offset: 4544)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_frame_type", scope: !100, file: !6, line: 141, baseType: !103, size: 64, offset: 4608)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_ver", scope: !100, file: !6, line: 142, baseType: !103, size: 64, offset: 4672)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp_dropped", scope: !100, file: !6, line: 143, baseType: !103, size: 64, offset: 4736)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "av_pkt_rcvd", scope: !100, file: !6, line: 144, baseType: !103, size: 64, offset: 4800)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "av_tagged_pkt_rcvd", scope: !100, file: !6, line: 145, baseType: !103, size: 64, offset: 4864)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag_priority_val", scope: !100, file: !6, line: 146, baseType: !103, size: 64, offset: 4928)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "l3_filter_match", scope: !100, file: !6, line: 147, baseType: !103, size: 64, offset: 4992)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "l4_filter_match", scope: !100, file: !6, line: 148, baseType: !103, size: 64, offset: 5056)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "l3_l4_filter_no_match", scope: !100, file: !6, line: 149, baseType: !103, size: 64, offset: 5120)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_ane_n", scope: !100, file: !6, line: 151, baseType: !103, size: 64, offset: 5184)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_link_n", scope: !100, file: !6, line: 152, baseType: !103, size: 64, offset: 5248)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rgmii_n", scope: !100, file: !6, line: 153, baseType: !103, size: 64, offset: 5312)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_link", scope: !100, file: !6, line: 154, baseType: !103, size: 64, offset: 5376)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_duplex", scope: !100, file: !6, line: 155, baseType: !103, size: 64, offset: 5440)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_speed", scope: !100, file: !6, line: 156, baseType: !103, size: 64, offset: 5504)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_status_fifo_full", scope: !100, file: !6, line: 158, baseType: !103, size: 64, offset: 5568)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_not_empty", scope: !100, file: !6, line: 159, baseType: !103, size: 64, offset: 5632)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "mmtl_fifo_ctrl", scope: !100, file: !6, line: 160, baseType: !103, size: 64, offset: 5696)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_write", scope: !100, file: !6, line: 161, baseType: !103, size: 64, offset: 5760)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_wait", scope: !100, file: !6, line: 162, baseType: !103, size: 64, offset: 5824)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_read", scope: !100, file: !6, line: 163, baseType: !103, size: 64, offset: 5888)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_idle", scope: !100, file: !6, line: 164, baseType: !103, size: 64, offset: 5952)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_in_pause", scope: !100, file: !6, line: 165, baseType: !103, size: 64, offset: 6016)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_xfer", scope: !100, file: !6, line: 166, baseType: !103, size: 64, offset: 6080)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_idle", scope: !100, file: !6, line: 167, baseType: !103, size: 64, offset: 6144)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_wait", scope: !100, file: !6, line: 168, baseType: !103, size: 64, offset: 6208)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_pause", scope: !100, file: !6, line: 169, baseType: !103, size: 64, offset: 6272)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_tx_proto_engine", scope: !100, file: !6, line: 170, baseType: !103, size: 64, offset: 6336)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_full", scope: !100, file: !6, line: 171, baseType: !103, size: 64, offset: 6400)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_above_thresh", scope: !100, file: !6, line: 172, baseType: !103, size: 64, offset: 6464)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_below_thresh", scope: !100, file: !6, line: 173, baseType: !103, size: 64, offset: 6528)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_empty", scope: !100, file: !6, line: 174, baseType: !103, size: 64, offset: 6592)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_flush", scope: !100, file: !6, line: 175, baseType: !103, size: 64, offset: 6656)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_read_data", scope: !100, file: !6, line: 176, baseType: !103, size: 64, offset: 6720)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_status", scope: !100, file: !6, line: 177, baseType: !103, size: 64, offset: 6784)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_idle", scope: !100, file: !6, line: 178, baseType: !103, size: 64, offset: 6848)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_ctrl_active", scope: !100, file: !6, line: 179, baseType: !103, size: 64, offset: 6912)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mac_rx_frame_ctrl_fifo", scope: !100, file: !6, line: 180, baseType: !103, size: 64, offset: 6976)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_rx_proto_engine", scope: !100, file: !6, line: 181, baseType: !103, size: 64, offset: 7040)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_frames", scope: !100, file: !6, line: 183, baseType: !103, size: 64, offset: 7104)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_nfrags", scope: !100, file: !6, line: 184, baseType: !103, size: 64, offset: 7168)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "enable_dma_transmission", scope: !23, file: !24, line: 193, baseType: !217, size: 64, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !30}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "enable_dma_irq", scope: !23, file: !24, line: 194, baseType: !221, size: 64, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !30, !17, !43, !43}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "disable_dma_irq", scope: !23, file: !24, line: 196, baseType: !221, size: 64, offset: 768)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "start_tx", scope: !23, file: !24, line: 198, baseType: !226, size: 64, offset: 832)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !30, !17}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "stop_tx", scope: !23, file: !24, line: 199, baseType: !226, size: 64, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "start_rx", scope: !23, file: !24, line: 200, baseType: !226, size: 64, offset: 960)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "stop_rx", scope: !23, file: !24, line: 201, baseType: !226, size: 64, offset: 1024)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "dma_interrupt", scope: !23, file: !24, line: 202, baseType: !233, size: 64, offset: 1088)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!16, !30, !99, !17}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "get_hw_feature", scope: !23, file: !24, line: 205, baseType: !237, size: 64, offset: 1152)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !30, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_features", file: !6, line: 326, size: 1472, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "mbps_10_100", scope: !241, file: !6, line: 327, baseType: !7, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mbps_1000", scope: !241, file: !6, line: 328, baseType: !7, size: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "half_duplex", scope: !241, file: !6, line: 329, baseType: !7, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "hash_filter", scope: !241, file: !6, line: 330, baseType: !7, size: 32, offset: 96)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "multi_addr", scope: !241, file: !6, line: 331, baseType: !7, size: 32, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pcs", scope: !241, file: !6, line: 332, baseType: !7, size: 32, offset: 160)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sma_mdio", scope: !241, file: !6, line: 333, baseType: !7, size: 32, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pmt_remote_wake_up", scope: !241, file: !6, line: 334, baseType: !7, size: 32, offset: 224)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "pmt_magic_frame", scope: !241, file: !6, line: 335, baseType: !7, size: 32, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rmon", scope: !241, file: !6, line: 336, baseType: !7, size: 32, offset: 288)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "time_stamp", scope: !241, file: !6, line: 338, baseType: !7, size: 32, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "atime_stamp", scope: !241, file: !6, line: 340, baseType: !7, size: 32, offset: 352)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "eee", scope: !241, file: !6, line: 342, baseType: !7, size: 32, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "av", scope: !241, file: !6, line: 343, baseType: !7, size: 32, offset: 416)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "hash_tb_sz", scope: !241, file: !6, line: 344, baseType: !7, size: 32, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tsoen", scope: !241, file: !6, line: 345, baseType: !7, size: 32, offset: 480)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tx_coe", scope: !241, file: !6, line: 347, baseType: !7, size: 32, offset: 512)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "rx_coe", scope: !241, file: !6, line: 348, baseType: !7, size: 32, offset: 544)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "rx_coe_type1", scope: !241, file: !6, line: 349, baseType: !7, size: 32, offset: 576)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rx_coe_type2", scope: !241, file: !6, line: 350, baseType: !7, size: 32, offset: 608)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rxfifo_over_2048", scope: !241, file: !6, line: 351, baseType: !7, size: 32, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "number_rx_channel", scope: !241, file: !6, line: 353, baseType: !7, size: 32, offset: 672)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "number_tx_channel", scope: !241, file: !6, line: 354, baseType: !7, size: 32, offset: 704)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "number_rx_queues", scope: !241, file: !6, line: 356, baseType: !7, size: 32, offset: 736)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "number_tx_queues", scope: !241, file: !6, line: 357, baseType: !7, size: 32, offset: 768)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pps_out_num", scope: !241, file: !6, line: 359, baseType: !7, size: 32, offset: 800)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "enh_desc", scope: !241, file: !6, line: 361, baseType: !7, size: 32, offset: 832)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !241, file: !6, line: 363, baseType: !7, size: 32, offset: 864)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !241, file: !6, line: 364, baseType: !7, size: 32, offset: 896)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "asp", scope: !241, file: !6, line: 366, baseType: !7, size: 32, offset: 928)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "frpsel", scope: !241, file: !6, line: 368, baseType: !7, size: 32, offset: 960)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "frpbs", scope: !241, file: !6, line: 369, baseType: !7, size: 32, offset: 992)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "frpes", scope: !241, file: !6, line: 370, baseType: !7, size: 32, offset: 1024)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "addr64", scope: !241, file: !6, line: 371, baseType: !7, size: 32, offset: 1056)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rssen", scope: !241, file: !6, line: 372, baseType: !7, size: 32, offset: 1088)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "vlhash", scope: !241, file: !6, line: 373, baseType: !7, size: 32, offset: 1120)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sphen", scope: !241, file: !6, line: 374, baseType: !7, size: 32, offset: 1152)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "vlins", scope: !241, file: !6, line: 375, baseType: !7, size: 32, offset: 1184)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "dvlan", scope: !241, file: !6, line: 376, baseType: !7, size: 32, offset: 1216)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "l3l4fnum", scope: !241, file: !6, line: 377, baseType: !7, size: 32, offset: 1248)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "arpoffsel", scope: !241, file: !6, line: 378, baseType: !7, size: 32, offset: 1280)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "estwid", scope: !241, file: !6, line: 380, baseType: !7, size: 32, offset: 1312)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "estdep", scope: !241, file: !6, line: 381, baseType: !7, size: 32, offset: 1344)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "estsel", scope: !241, file: !6, line: 382, baseType: !7, size: 32, offset: 1376)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "fpesel", scope: !241, file: !6, line: 383, baseType: !7, size: 32, offset: 1408)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tbssel", scope: !241, file: !6, line: 384, baseType: !7, size: 32, offset: 1440)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog", scope: !23, file: !24, line: 208, baseType: !290, size: 64, offset: 1216)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !30, !17, !17}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "set_tx_ring_len", scope: !23, file: !24, line: 209, baseType: !290, size: 64, offset: 1280)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "set_rx_ring_len", scope: !23, file: !24, line: 210, baseType: !290, size: 64, offset: 1344)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "set_rx_tail_ptr", scope: !23, file: !24, line: 211, baseType: !290, size: 64, offset: 1408)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "set_tx_tail_ptr", scope: !23, file: !24, line: 212, baseType: !290, size: 64, offset: 1472)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "enable_tso", scope: !23, file: !24, line: 213, baseType: !298, size: 64, offset: 1536)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !30, !43, !17}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "qmode", scope: !23, file: !24, line: 214, baseType: !302, size: 64, offset: 1600)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !30, !17, !91}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "set_bfsize", scope: !23, file: !24, line: 215, baseType: !306, size: 64, offset: 1664)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !30, !16, !17}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "enable_sph", scope: !23, file: !24, line: 216, baseType: !298, size: 64, offset: 1728)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "enable_tbs", scope: !23, file: !24, line: 217, baseType: !311, size: 64, offset: 1792)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!16, !30, !43, !17}
!314 = !{i32 7, !"Dwarf Version", i32 4}
!315 = !{i32 2, !"Debug Info Version", i32 3}
!316 = !{i32 1, !"wchar_size", i32 2}
!317 = !{i32 1, !"Code Model", i32 2}
!318 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!319 = distinct !DISubprogram(name: "dwxgmac2_dma_reset", scope: !3, file: !3, line: 11, type: !28, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!320 = !{}
!321 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !319, file: !3, line: 11, type: !30)
!322 = !DILocation(line: 11, column: 45, scope: !319)
!323 = !DILocalVariable(name: "value", scope: !319, file: !3, line: 13, type: !17)
!324 = !DILocation(line: 13, column: 6, scope: !319)
!325 = !DILocation(line: 13, column: 20, scope: !319)
!326 = !DILocation(line: 13, column: 27, scope: !319)
!327 = !DILocation(line: 13, column: 14, scope: !319)
!328 = !DILocation(line: 16, column: 9, scope: !319)
!329 = !DILocation(line: 16, column: 15, scope: !319)
!330 = !DILocation(line: 16, column: 28, scope: !319)
!331 = !DILocation(line: 16, column: 35, scope: !319)
!332 = !DILocation(line: 16, column: 2, scope: !319)
!333 = !DILocalVariable(name: "__timeout_us", scope: !334, file: !3, line: 18, type: !59)
!334 = distinct !DILexicalBlock(scope: !319, file: !3, line: 18, column: 9)
!335 = !DILocation(line: 18, column: 9, scope: !334)
!336 = !DILocalVariable(name: "__sleep_us", scope: !334, file: !3, line: 18, type: !103)
!337 = !DILocalVariable(name: "__timeout", scope: !334, file: !3, line: 18, type: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !339, line: 29, baseType: !340)
!339 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !18, line: 22, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !20, line: 30, baseType: !342)
!342 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!343 = !DILocation(line: 18, column: 9, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 18, column: 9)
!345 = distinct !DILexicalBlock(scope: !334, file: !3, line: 18, column: 9)
!346 = !DILocation(line: 18, column: 9, scope: !345)
!347 = !DILocation(line: 18, column: 9, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !3, line: 18, column: 9)
!349 = !DILocation(line: 18, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !348, file: !3, line: 18, column: 9)
!351 = !DILocation(line: 18, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 18, column: 9)
!353 = distinct !DILexicalBlock(scope: !354, file: !3, line: 18, column: 9)
!354 = distinct !DILexicalBlock(scope: !334, file: !3, line: 18, column: 9)
!355 = !DILocation(line: 18, column: 9, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !3, line: 18, column: 9)
!357 = !DILocation(line: 18, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !352, file: !3, line: 18, column: 9)
!359 = !DILocation(line: 18, column: 9, scope: !360)
!360 = distinct !DILexicalBlock(scope: !358, file: !3, line: 18, column: 9)
!361 = !DILocation(line: 18, column: 9, scope: !362)
!362 = distinct !DILexicalBlock(scope: !352, file: !3, line: 18, column: 9)
!363 = !DILocation(line: 18, column: 9, scope: !353)
!364 = distinct !{!364, !365, !365}
!365 = !DILocation(line: 18, column: 9, scope: !354)
!366 = !DILocation(line: 18, column: 2, scope: !319)
!367 = distinct !DISubprogram(name: "dwxgmac2_dma_init", scope: !3, file: !3, line: 22, type: !33, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!368 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !367, file: !3, line: 22, type: !30)
!369 = !DILocation(line: 22, column: 45, scope: !367)
!370 = !DILocalVariable(name: "dma_cfg", arg: 2, scope: !367, file: !3, line: 23, type: !35)
!371 = !DILocation(line: 23, column: 33, scope: !367)
!372 = !DILocalVariable(name: "atds", arg: 3, scope: !367, file: !3, line: 23, type: !16)
!373 = !DILocation(line: 23, column: 46, scope: !367)
!374 = !DILocalVariable(name: "value", scope: !367, file: !3, line: 25, type: !17)
!375 = !DILocation(line: 25, column: 6, scope: !367)
!376 = !DILocation(line: 25, column: 20, scope: !367)
!377 = !DILocation(line: 25, column: 27, scope: !367)
!378 = !DILocation(line: 25, column: 14, scope: !367)
!379 = !DILocation(line: 27, column: 6, scope: !380)
!380 = distinct !DILexicalBlock(scope: !367, file: !3, line: 27, column: 6)
!381 = !DILocation(line: 27, column: 15, scope: !380)
!382 = !DILocation(line: 27, column: 6, scope: !367)
!383 = !DILocation(line: 28, column: 9, scope: !380)
!384 = !DILocation(line: 28, column: 3, scope: !380)
!385 = !DILocation(line: 30, column: 6, scope: !386)
!386 = distinct !DILexicalBlock(scope: !367, file: !3, line: 30, column: 6)
!387 = !DILocation(line: 30, column: 15, scope: !386)
!388 = !DILocation(line: 30, column: 6, scope: !367)
!389 = !DILocation(line: 31, column: 9, scope: !386)
!390 = !DILocation(line: 31, column: 3, scope: !386)
!391 = !DILocation(line: 33, column: 9, scope: !367)
!392 = !DILocation(line: 33, column: 16, scope: !367)
!393 = !DILocation(line: 33, column: 23, scope: !367)
!394 = !DILocation(line: 33, column: 2, scope: !367)
!395 = !DILocation(line: 34, column: 1, scope: !367)
!396 = distinct !DISubprogram(name: "dwxgmac2_dma_init_chan", scope: !3, file: !3, line: 36, type: !52, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!397 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !396, file: !3, line: 36, type: !30)
!398 = !DILocation(line: 36, column: 50, scope: !396)
!399 = !DILocalVariable(name: "dma_cfg", arg: 2, scope: !396, file: !3, line: 37, type: !35)
!400 = !DILocation(line: 37, column: 31, scope: !396)
!401 = !DILocalVariable(name: "chan", arg: 3, scope: !396, file: !3, line: 37, type: !17)
!402 = !DILocation(line: 37, column: 44, scope: !396)
!403 = !DILocalVariable(name: "value", scope: !396, file: !3, line: 39, type: !17)
!404 = !DILocation(line: 39, column: 6, scope: !396)
!405 = !DILocation(line: 39, column: 20, scope: !396)
!406 = !DILocation(line: 39, column: 29, scope: !396)
!407 = !DILocation(line: 39, column: 27, scope: !396)
!408 = !DILocation(line: 39, column: 14, scope: !396)
!409 = !DILocation(line: 41, column: 6, scope: !410)
!410 = distinct !DILexicalBlock(scope: !396, file: !3, line: 41, column: 6)
!411 = !DILocation(line: 41, column: 15, scope: !410)
!412 = !DILocation(line: 41, column: 6, scope: !396)
!413 = !DILocation(line: 42, column: 9, scope: !410)
!414 = !DILocation(line: 42, column: 3, scope: !410)
!415 = !DILocation(line: 44, column: 9, scope: !396)
!416 = !DILocation(line: 44, column: 16, scope: !396)
!417 = !DILocation(line: 44, column: 25, scope: !396)
!418 = !DILocation(line: 44, column: 23, scope: !396)
!419 = !DILocation(line: 44, column: 2, scope: !396)
!420 = !DILocation(line: 45, column: 35, scope: !396)
!421 = !DILocation(line: 45, column: 44, scope: !396)
!422 = !DILocation(line: 45, column: 42, scope: !396)
!423 = !DILocation(line: 45, column: 2, scope: !396)
!424 = !DILocation(line: 46, column: 1, scope: !396)
!425 = distinct !DISubprogram(name: "dwxgmac2_dma_init_rx_chan", scope: !3, file: !3, line: 48, type: !56, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!426 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !425, file: !3, line: 48, type: !30)
!427 = !DILocation(line: 48, column: 53, scope: !425)
!428 = !DILocalVariable(name: "dma_cfg", arg: 2, scope: !425, file: !3, line: 49, type: !35)
!429 = !DILocation(line: 49, column: 34, scope: !425)
!430 = !DILocalVariable(name: "phy", arg: 3, scope: !425, file: !3, line: 50, type: !58)
!431 = !DILocation(line: 50, column: 22, scope: !425)
!432 = !DILocalVariable(name: "chan", arg: 4, scope: !425, file: !3, line: 50, type: !17)
!433 = !DILocation(line: 50, column: 31, scope: !425)
!434 = !DILocalVariable(name: "rxpbl", scope: !425, file: !3, line: 52, type: !17)
!435 = !DILocation(line: 52, column: 6, scope: !425)
!436 = !DILocation(line: 52, column: 14, scope: !425)
!437 = !DILocation(line: 52, column: 23, scope: !425)
!438 = !DILocation(line: 52, column: 32, scope: !425)
!439 = !DILocation(line: 52, column: 41, scope: !425)
!440 = !DILocalVariable(name: "value", scope: !425, file: !3, line: 53, type: !17)
!441 = !DILocation(line: 53, column: 6, scope: !425)
!442 = !DILocation(line: 55, column: 16, scope: !425)
!443 = !DILocation(line: 55, column: 25, scope: !425)
!444 = !DILocation(line: 55, column: 23, scope: !425)
!445 = !DILocation(line: 55, column: 10, scope: !425)
!446 = !DILocation(line: 55, column: 8, scope: !425)
!447 = !DILocation(line: 56, column: 8, scope: !425)
!448 = !DILocation(line: 57, column: 12, scope: !425)
!449 = !DILocation(line: 57, column: 18, scope: !425)
!450 = !DILocation(line: 57, column: 11, scope: !425)
!451 = !DILocation(line: 57, column: 40, scope: !425)
!452 = !DILocation(line: 57, column: 8, scope: !425)
!453 = !DILocation(line: 58, column: 9, scope: !425)
!454 = !DILocation(line: 58, column: 16, scope: !425)
!455 = !DILocation(line: 58, column: 25, scope: !425)
!456 = !DILocation(line: 58, column: 23, scope: !425)
!457 = !DILocation(line: 58, column: 2, scope: !425)
!458 = !DILocation(line: 60, column: 9, scope: !425)
!459 = !DILocation(line: 60, column: 29, scope: !425)
!460 = !DILocation(line: 60, column: 38, scope: !425)
!461 = !DILocation(line: 60, column: 36, scope: !425)
!462 = !DILocation(line: 60, column: 2, scope: !425)
!463 = !DILocation(line: 61, column: 9, scope: !425)
!464 = !DILocation(line: 61, column: 29, scope: !425)
!465 = !DILocation(line: 61, column: 38, scope: !425)
!466 = !DILocation(line: 61, column: 36, scope: !425)
!467 = !DILocation(line: 61, column: 2, scope: !425)
!468 = !DILocation(line: 62, column: 1, scope: !425)
!469 = distinct !DISubprogram(name: "dwxgmac2_dma_init_tx_chan", scope: !3, file: !3, line: 64, type: !56, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!470 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !469, file: !3, line: 64, type: !30)
!471 = !DILocation(line: 64, column: 53, scope: !469)
!472 = !DILocalVariable(name: "dma_cfg", arg: 2, scope: !469, file: !3, line: 65, type: !35)
!473 = !DILocation(line: 65, column: 34, scope: !469)
!474 = !DILocalVariable(name: "phy", arg: 3, scope: !469, file: !3, line: 66, type: !58)
!475 = !DILocation(line: 66, column: 22, scope: !469)
!476 = !DILocalVariable(name: "chan", arg: 4, scope: !469, file: !3, line: 66, type: !17)
!477 = !DILocation(line: 66, column: 31, scope: !469)
!478 = !DILocalVariable(name: "txpbl", scope: !469, file: !3, line: 68, type: !17)
!479 = !DILocation(line: 68, column: 6, scope: !469)
!480 = !DILocation(line: 68, column: 14, scope: !469)
!481 = !DILocation(line: 68, column: 23, scope: !469)
!482 = !DILocation(line: 68, column: 32, scope: !469)
!483 = !DILocation(line: 68, column: 41, scope: !469)
!484 = !DILocalVariable(name: "value", scope: !469, file: !3, line: 69, type: !17)
!485 = !DILocation(line: 69, column: 6, scope: !469)
!486 = !DILocation(line: 71, column: 16, scope: !469)
!487 = !DILocation(line: 71, column: 25, scope: !469)
!488 = !DILocation(line: 71, column: 23, scope: !469)
!489 = !DILocation(line: 71, column: 10, scope: !469)
!490 = !DILocation(line: 71, column: 8, scope: !469)
!491 = !DILocation(line: 72, column: 8, scope: !469)
!492 = !DILocation(line: 73, column: 12, scope: !469)
!493 = !DILocation(line: 73, column: 18, scope: !469)
!494 = !DILocation(line: 73, column: 11, scope: !469)
!495 = !DILocation(line: 73, column: 40, scope: !469)
!496 = !DILocation(line: 73, column: 8, scope: !469)
!497 = !DILocation(line: 74, column: 8, scope: !469)
!498 = !DILocation(line: 75, column: 9, scope: !469)
!499 = !DILocation(line: 75, column: 16, scope: !469)
!500 = !DILocation(line: 75, column: 25, scope: !469)
!501 = !DILocation(line: 75, column: 23, scope: !469)
!502 = !DILocation(line: 75, column: 2, scope: !469)
!503 = !DILocation(line: 77, column: 9, scope: !469)
!504 = !DILocation(line: 77, column: 29, scope: !469)
!505 = !DILocation(line: 77, column: 38, scope: !469)
!506 = !DILocation(line: 77, column: 36, scope: !469)
!507 = !DILocation(line: 77, column: 2, scope: !469)
!508 = !DILocation(line: 78, column: 9, scope: !469)
!509 = !DILocation(line: 78, column: 29, scope: !469)
!510 = !DILocation(line: 78, column: 38, scope: !469)
!511 = !DILocation(line: 78, column: 36, scope: !469)
!512 = !DILocation(line: 78, column: 2, scope: !469)
!513 = !DILocation(line: 79, column: 1, scope: !469)
!514 = distinct !DISubprogram(name: "dwxgmac2_dma_axi", scope: !3, file: !3, line: 81, type: !65, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!515 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !514, file: !3, line: 81, type: !30)
!516 = !DILocation(line: 81, column: 44, scope: !514)
!517 = !DILocalVariable(name: "axi", arg: 2, scope: !514, file: !3, line: 81, type: !67)
!518 = !DILocation(line: 81, column: 71, scope: !514)
!519 = !DILocalVariable(name: "value", scope: !514, file: !3, line: 83, type: !17)
!520 = !DILocation(line: 83, column: 6, scope: !514)
!521 = !DILocation(line: 83, column: 20, scope: !514)
!522 = !DILocation(line: 83, column: 27, scope: !514)
!523 = !DILocation(line: 83, column: 14, scope: !514)
!524 = !DILocalVariable(name: "i", scope: !514, file: !3, line: 84, type: !16)
!525 = !DILocation(line: 84, column: 6, scope: !514)
!526 = !DILocation(line: 86, column: 6, scope: !527)
!527 = distinct !DILexicalBlock(scope: !514, file: !3, line: 86, column: 6)
!528 = !DILocation(line: 86, column: 11, scope: !527)
!529 = !DILocation(line: 86, column: 6, scope: !514)
!530 = !DILocation(line: 87, column: 9, scope: !527)
!531 = !DILocation(line: 87, column: 3, scope: !527)
!532 = !DILocation(line: 88, column: 6, scope: !533)
!533 = distinct !DILexicalBlock(scope: !514, file: !3, line: 88, column: 6)
!534 = !DILocation(line: 88, column: 11, scope: !533)
!535 = !DILocation(line: 88, column: 6, scope: !514)
!536 = !DILocation(line: 89, column: 9, scope: !533)
!537 = !DILocation(line: 89, column: 3, scope: !533)
!538 = !DILocation(line: 91, column: 8, scope: !514)
!539 = !DILocation(line: 92, column: 12, scope: !514)
!540 = !DILocation(line: 92, column: 17, scope: !514)
!541 = !DILocation(line: 92, column: 32, scope: !514)
!542 = !DILocation(line: 92, column: 11, scope: !514)
!543 = !DILocation(line: 92, column: 59, scope: !514)
!544 = !DILocation(line: 92, column: 8, scope: !514)
!545 = !DILocation(line: 95, column: 8, scope: !514)
!546 = !DILocation(line: 96, column: 12, scope: !514)
!547 = !DILocation(line: 96, column: 17, scope: !514)
!548 = !DILocation(line: 96, column: 32, scope: !514)
!549 = !DILocation(line: 96, column: 11, scope: !514)
!550 = !DILocation(line: 96, column: 59, scope: !514)
!551 = !DILocation(line: 96, column: 8, scope: !514)
!552 = !DILocation(line: 99, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !514, file: !3, line: 99, column: 6)
!554 = !DILocation(line: 99, column: 12, scope: !553)
!555 = !DILocation(line: 99, column: 6, scope: !514)
!556 = !DILocation(line: 100, column: 9, scope: !553)
!557 = !DILocation(line: 100, column: 3, scope: !553)
!558 = !DILocation(line: 102, column: 8, scope: !514)
!559 = !DILocation(line: 103, column: 9, scope: !560)
!560 = distinct !DILexicalBlock(scope: !514, file: !3, line: 103, column: 2)
!561 = !DILocation(line: 103, column: 7, scope: !560)
!562 = !DILocation(line: 103, column: 14, scope: !563)
!563 = distinct !DILexicalBlock(scope: !560, file: !3, line: 103, column: 2)
!564 = !DILocation(line: 103, column: 16, scope: !563)
!565 = !DILocation(line: 103, column: 2, scope: !560)
!566 = !DILocation(line: 104, column: 11, scope: !567)
!567 = distinct !DILexicalBlock(scope: !563, file: !3, line: 103, column: 33)
!568 = !DILocation(line: 104, column: 16, scope: !567)
!569 = !DILocation(line: 104, column: 25, scope: !567)
!570 = !DILocation(line: 104, column: 3, scope: !567)
!571 = !DILocation(line: 106, column: 10, scope: !572)
!572 = distinct !DILexicalBlock(scope: !567, file: !3, line: 104, column: 29)
!573 = !DILocation(line: 107, column: 4, scope: !572)
!574 = !DILocation(line: 109, column: 10, scope: !572)
!575 = !DILocation(line: 110, column: 4, scope: !572)
!576 = !DILocation(line: 112, column: 10, scope: !572)
!577 = !DILocation(line: 113, column: 4, scope: !572)
!578 = !DILocation(line: 115, column: 10, scope: !572)
!579 = !DILocation(line: 116, column: 4, scope: !572)
!580 = !DILocation(line: 118, column: 10, scope: !572)
!581 = !DILocation(line: 119, column: 4, scope: !572)
!582 = !DILocation(line: 121, column: 10, scope: !572)
!583 = !DILocation(line: 122, column: 4, scope: !572)
!584 = !DILocation(line: 124, column: 10, scope: !572)
!585 = !DILocation(line: 125, column: 4, scope: !572)
!586 = !DILocation(line: 127, column: 2, scope: !567)
!587 = !DILocation(line: 103, column: 29, scope: !563)
!588 = !DILocation(line: 103, column: 2, scope: !563)
!589 = distinct !{!589, !565, !590}
!590 = !DILocation(line: 127, column: 2, scope: !560)
!591 = !DILocation(line: 129, column: 9, scope: !514)
!592 = !DILocation(line: 129, column: 16, scope: !514)
!593 = !DILocation(line: 129, column: 23, scope: !514)
!594 = !DILocation(line: 129, column: 2, scope: !514)
!595 = !DILocation(line: 130, column: 21, scope: !514)
!596 = !DILocation(line: 130, column: 28, scope: !514)
!597 = !DILocation(line: 130, column: 2, scope: !514)
!598 = !DILocation(line: 131, column: 21, scope: !514)
!599 = !DILocation(line: 131, column: 28, scope: !514)
!600 = !DILocation(line: 131, column: 2, scope: !514)
!601 = !DILocation(line: 132, column: 1, scope: !514)
!602 = distinct !DISubprogram(name: "dwxgmac2_dma_dump_regs", scope: !3, file: !3, line: 134, type: !84, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!603 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !602, file: !3, line: 134, type: !30)
!604 = !DILocation(line: 134, column: 50, scope: !602)
!605 = !DILocalVariable(name: "reg_space", arg: 2, scope: !602, file: !3, line: 134, type: !86)
!606 = !DILocation(line: 134, column: 63, scope: !602)
!607 = !DILocalVariable(name: "i", scope: !602, file: !3, line: 136, type: !16)
!608 = !DILocation(line: 136, column: 6, scope: !602)
!609 = !DILocation(line: 138, column: 9, scope: !610)
!610 = distinct !DILexicalBlock(scope: !602, file: !3, line: 138, column: 2)
!611 = !DILocation(line: 138, column: 7, scope: !610)
!612 = !DILocation(line: 138, column: 33, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !3, line: 138, column: 2)
!614 = !DILocation(line: 138, column: 35, scope: !613)
!615 = !DILocation(line: 138, column: 2, scope: !610)
!616 = !DILocation(line: 139, column: 24, scope: !613)
!617 = !DILocation(line: 139, column: 33, scope: !613)
!618 = !DILocation(line: 139, column: 35, scope: !613)
!619 = !DILocation(line: 139, column: 31, scope: !613)
!620 = !DILocation(line: 139, column: 18, scope: !613)
!621 = !DILocation(line: 139, column: 3, scope: !613)
!622 = !DILocation(line: 139, column: 13, scope: !613)
!623 = !DILocation(line: 139, column: 16, scope: !613)
!624 = !DILocation(line: 138, column: 53, scope: !613)
!625 = !DILocation(line: 138, column: 2, scope: !613)
!626 = distinct !{!626, !615, !627}
!627 = !DILocation(line: 139, column: 38, scope: !610)
!628 = !DILocation(line: 140, column: 1, scope: !602)
!629 = distinct !DISubprogram(name: "dwxgmac2_dma_rx_mode", scope: !3, file: !3, line: 142, type: !89, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!630 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !629, file: !3, line: 142, type: !30)
!631 = !DILocation(line: 142, column: 48, scope: !629)
!632 = !DILocalVariable(name: "mode", arg: 2, scope: !629, file: !3, line: 142, type: !16)
!633 = !DILocation(line: 142, column: 60, scope: !629)
!634 = !DILocalVariable(name: "channel", arg: 3, scope: !629, file: !3, line: 143, type: !17)
!635 = !DILocation(line: 143, column: 10, scope: !629)
!636 = !DILocalVariable(name: "fifosz", arg: 4, scope: !629, file: !3, line: 143, type: !16)
!637 = !DILocation(line: 143, column: 23, scope: !629)
!638 = !DILocalVariable(name: "qmode", arg: 5, scope: !629, file: !3, line: 143, type: !91)
!639 = !DILocation(line: 143, column: 34, scope: !629)
!640 = !DILocalVariable(name: "value", scope: !629, file: !3, line: 145, type: !17)
!641 = !DILocation(line: 145, column: 6, scope: !629)
!642 = !DILocation(line: 145, column: 20, scope: !629)
!643 = !DILocation(line: 145, column: 29, scope: !629)
!644 = !DILocation(line: 145, column: 27, scope: !629)
!645 = !DILocation(line: 145, column: 14, scope: !629)
!646 = !DILocalVariable(name: "rqs", scope: !629, file: !3, line: 146, type: !7)
!647 = !DILocation(line: 146, column: 15, scope: !629)
!648 = !DILocation(line: 146, column: 21, scope: !629)
!649 = !DILocation(line: 146, column: 28, scope: !629)
!650 = !DILocation(line: 146, column: 34, scope: !629)
!651 = !DILocation(line: 148, column: 6, scope: !652)
!652 = distinct !DILexicalBlock(scope: !629, file: !3, line: 148, column: 6)
!653 = !DILocation(line: 148, column: 11, scope: !652)
!654 = !DILocation(line: 148, column: 6, scope: !629)
!655 = !DILocation(line: 149, column: 9, scope: !656)
!656 = distinct !DILexicalBlock(scope: !652, file: !3, line: 148, column: 27)
!657 = !DILocation(line: 150, column: 2, scope: !656)
!658 = !DILocation(line: 151, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !652, file: !3, line: 150, column: 9)
!660 = !DILocation(line: 152, column: 9, scope: !659)
!661 = !DILocation(line: 154, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !659, file: !3, line: 154, column: 7)
!663 = !DILocation(line: 154, column: 12, scope: !662)
!664 = !DILocation(line: 154, column: 7, scope: !659)
!665 = !DILocation(line: 155, column: 10, scope: !662)
!666 = !DILocation(line: 155, column: 4, scope: !662)
!667 = !DILocation(line: 156, column: 12, scope: !668)
!668 = distinct !DILexicalBlock(scope: !662, file: !3, line: 156, column: 12)
!669 = !DILocation(line: 156, column: 17, scope: !668)
!670 = !DILocation(line: 156, column: 12, scope: !662)
!671 = !DILocation(line: 157, column: 10, scope: !668)
!672 = !DILocation(line: 157, column: 4, scope: !668)
!673 = !DILocation(line: 159, column: 10, scope: !668)
!674 = !DILocation(line: 162, column: 8, scope: !629)
!675 = !DILocation(line: 163, column: 12, scope: !629)
!676 = !DILocation(line: 163, column: 16, scope: !629)
!677 = !DILocation(line: 163, column: 11, scope: !629)
!678 = !DILocation(line: 163, column: 36, scope: !629)
!679 = !DILocation(line: 163, column: 8, scope: !629)
!680 = !DILocation(line: 165, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !629, file: !3, line: 165, column: 6)
!682 = !DILocation(line: 165, column: 14, scope: !681)
!683 = !DILocation(line: 165, column: 23, scope: !681)
!684 = !DILocation(line: 165, column: 27, scope: !681)
!685 = !DILocation(line: 165, column: 33, scope: !681)
!686 = !DILocation(line: 165, column: 6, scope: !629)
!687 = !DILocalVariable(name: "flow", scope: !688, file: !3, line: 166, type: !17)
!688 = distinct !DILexicalBlock(scope: !681, file: !3, line: 165, column: 52)
!689 = !DILocation(line: 166, column: 7, scope: !688)
!690 = !DILocation(line: 166, column: 20, scope: !688)
!691 = !DILocation(line: 166, column: 29, scope: !688)
!692 = !DILocation(line: 166, column: 27, scope: !688)
!693 = !DILocation(line: 166, column: 14, scope: !688)
!694 = !DILocalVariable(name: "rfd", scope: !688, file: !3, line: 167, type: !7)
!695 = !DILocation(line: 167, column: 16, scope: !688)
!696 = !DILocalVariable(name: "rfa", scope: !688, file: !3, line: 167, type: !7)
!697 = !DILocation(line: 167, column: 21, scope: !688)
!698 = !DILocation(line: 169, column: 9, scope: !688)
!699 = !DILocation(line: 177, column: 11, scope: !688)
!700 = !DILocation(line: 177, column: 3, scope: !688)
!701 = !DILocation(line: 182, column: 8, scope: !702)
!702 = distinct !DILexicalBlock(scope: !688, file: !3, line: 177, column: 19)
!703 = !DILocation(line: 183, column: 8, scope: !702)
!704 = !DILocation(line: 184, column: 4, scope: !702)
!705 = !DILocation(line: 187, column: 8, scope: !702)
!706 = !DILocation(line: 188, column: 8, scope: !702)
!707 = !DILocation(line: 189, column: 4, scope: !702)
!708 = !DILocation(line: 192, column: 8, scope: !688)
!709 = !DILocation(line: 193, column: 11, scope: !688)
!710 = !DILocation(line: 193, column: 15, scope: !688)
!711 = !DILocation(line: 193, column: 8, scope: !688)
!712 = !DILocation(line: 195, column: 8, scope: !688)
!713 = !DILocation(line: 196, column: 11, scope: !688)
!714 = !DILocation(line: 196, column: 15, scope: !688)
!715 = !DILocation(line: 196, column: 8, scope: !688)
!716 = !DILocation(line: 198, column: 10, scope: !688)
!717 = !DILocation(line: 198, column: 16, scope: !688)
!718 = !DILocation(line: 198, column: 25, scope: !688)
!719 = !DILocation(line: 198, column: 23, scope: !688)
!720 = !DILocation(line: 198, column: 3, scope: !688)
!721 = !DILocation(line: 199, column: 2, scope: !688)
!722 = !DILocation(line: 201, column: 9, scope: !629)
!723 = !DILocation(line: 201, column: 16, scope: !629)
!724 = !DILocation(line: 201, column: 25, scope: !629)
!725 = !DILocation(line: 201, column: 23, scope: !629)
!726 = !DILocation(line: 201, column: 2, scope: !629)
!727 = !DILocation(line: 204, column: 16, scope: !629)
!728 = !DILocation(line: 204, column: 25, scope: !629)
!729 = !DILocation(line: 204, column: 23, scope: !629)
!730 = !DILocation(line: 204, column: 10, scope: !629)
!731 = !DILocation(line: 204, column: 8, scope: !629)
!732 = !DILocation(line: 205, column: 9, scope: !629)
!733 = !DILocation(line: 205, column: 15, scope: !629)
!734 = !DILocation(line: 205, column: 30, scope: !629)
!735 = !DILocation(line: 205, column: 39, scope: !629)
!736 = !DILocation(line: 205, column: 37, scope: !629)
!737 = !DILocation(line: 205, column: 2, scope: !629)
!738 = !DILocation(line: 206, column: 1, scope: !629)
!739 = distinct !DISubprogram(name: "dwxgmac2_dma_tx_mode", scope: !3, file: !3, line: 208, type: !89, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!740 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !739, file: !3, line: 208, type: !30)
!741 = !DILocation(line: 208, column: 48, scope: !739)
!742 = !DILocalVariable(name: "mode", arg: 2, scope: !739, file: !3, line: 208, type: !16)
!743 = !DILocation(line: 208, column: 60, scope: !739)
!744 = !DILocalVariable(name: "channel", arg: 3, scope: !739, file: !3, line: 209, type: !17)
!745 = !DILocation(line: 209, column: 10, scope: !739)
!746 = !DILocalVariable(name: "fifosz", arg: 4, scope: !739, file: !3, line: 209, type: !16)
!747 = !DILocation(line: 209, column: 23, scope: !739)
!748 = !DILocalVariable(name: "qmode", arg: 5, scope: !739, file: !3, line: 209, type: !91)
!749 = !DILocation(line: 209, column: 34, scope: !739)
!750 = !DILocalVariable(name: "value", scope: !739, file: !3, line: 211, type: !17)
!751 = !DILocation(line: 211, column: 6, scope: !739)
!752 = !DILocation(line: 211, column: 20, scope: !739)
!753 = !DILocation(line: 211, column: 29, scope: !739)
!754 = !DILocation(line: 211, column: 27, scope: !739)
!755 = !DILocation(line: 211, column: 14, scope: !739)
!756 = !DILocalVariable(name: "tqs", scope: !739, file: !3, line: 212, type: !7)
!757 = !DILocation(line: 212, column: 15, scope: !739)
!758 = !DILocation(line: 212, column: 21, scope: !739)
!759 = !DILocation(line: 212, column: 28, scope: !739)
!760 = !DILocation(line: 212, column: 34, scope: !739)
!761 = !DILocation(line: 214, column: 6, scope: !762)
!762 = distinct !DILexicalBlock(scope: !739, file: !3, line: 214, column: 6)
!763 = !DILocation(line: 214, column: 11, scope: !762)
!764 = !DILocation(line: 214, column: 6, scope: !739)
!765 = !DILocation(line: 215, column: 9, scope: !766)
!766 = distinct !DILexicalBlock(scope: !762, file: !3, line: 214, column: 27)
!767 = !DILocation(line: 216, column: 2, scope: !766)
!768 = !DILocation(line: 217, column: 9, scope: !769)
!769 = distinct !DILexicalBlock(scope: !762, file: !3, line: 216, column: 9)
!770 = !DILocation(line: 218, column: 9, scope: !769)
!771 = !DILocation(line: 220, column: 7, scope: !772)
!772 = distinct !DILexicalBlock(scope: !769, file: !3, line: 220, column: 7)
!773 = !DILocation(line: 220, column: 12, scope: !772)
!774 = !DILocation(line: 220, column: 7, scope: !769)
!775 = !DILocation(line: 221, column: 10, scope: !772)
!776 = !DILocation(line: 221, column: 4, scope: !772)
!777 = !DILocation(line: 222, column: 12, scope: !778)
!778 = distinct !DILexicalBlock(scope: !772, file: !3, line: 222, column: 12)
!779 = !DILocation(line: 222, column: 17, scope: !778)
!780 = !DILocation(line: 222, column: 12, scope: !772)
!781 = !DILocation(line: 223, column: 10, scope: !778)
!782 = !DILocation(line: 223, column: 4, scope: !778)
!783 = !DILocation(line: 224, column: 12, scope: !784)
!784 = distinct !DILexicalBlock(scope: !778, file: !3, line: 224, column: 12)
!785 = !DILocation(line: 224, column: 17, scope: !784)
!786 = !DILocation(line: 224, column: 12, scope: !778)
!787 = !DILocation(line: 225, column: 10, scope: !784)
!788 = !DILocation(line: 225, column: 4, scope: !784)
!789 = !DILocation(line: 226, column: 12, scope: !790)
!790 = distinct !DILexicalBlock(scope: !784, file: !3, line: 226, column: 12)
!791 = !DILocation(line: 226, column: 17, scope: !790)
!792 = !DILocation(line: 226, column: 12, scope: !784)
!793 = !DILocation(line: 227, column: 10, scope: !790)
!794 = !DILocation(line: 227, column: 4, scope: !790)
!795 = !DILocation(line: 228, column: 12, scope: !796)
!796 = distinct !DILexicalBlock(scope: !790, file: !3, line: 228, column: 12)
!797 = !DILocation(line: 228, column: 17, scope: !796)
!798 = !DILocation(line: 228, column: 12, scope: !790)
!799 = !DILocation(line: 229, column: 10, scope: !796)
!800 = !DILocation(line: 229, column: 4, scope: !796)
!801 = !DILocation(line: 230, column: 12, scope: !802)
!802 = distinct !DILexicalBlock(scope: !796, file: !3, line: 230, column: 12)
!803 = !DILocation(line: 230, column: 17, scope: !802)
!804 = !DILocation(line: 230, column: 12, scope: !796)
!805 = !DILocation(line: 231, column: 10, scope: !802)
!806 = !DILocation(line: 231, column: 4, scope: !802)
!807 = !DILocation(line: 233, column: 10, scope: !802)
!808 = !DILocation(line: 237, column: 12, scope: !739)
!809 = !DILocation(line: 237, column: 20, scope: !739)
!810 = !DILocation(line: 237, column: 11, scope: !739)
!811 = !DILocation(line: 237, column: 44, scope: !739)
!812 = !DILocation(line: 237, column: 8, scope: !739)
!813 = !DILocation(line: 239, column: 8, scope: !739)
!814 = !DILocation(line: 240, column: 6, scope: !815)
!815 = distinct !DILexicalBlock(scope: !739, file: !3, line: 240, column: 6)
!816 = !DILocation(line: 240, column: 12, scope: !815)
!817 = !DILocation(line: 240, column: 6, scope: !739)
!818 = !DILocation(line: 241, column: 9, scope: !815)
!819 = !DILocation(line: 241, column: 3, scope: !815)
!820 = !DILocation(line: 243, column: 9, scope: !815)
!821 = !DILocation(line: 245, column: 8, scope: !739)
!822 = !DILocation(line: 246, column: 12, scope: !739)
!823 = !DILocation(line: 246, column: 16, scope: !739)
!824 = !DILocation(line: 246, column: 11, scope: !739)
!825 = !DILocation(line: 246, column: 36, scope: !739)
!826 = !DILocation(line: 246, column: 8, scope: !739)
!827 = !DILocation(line: 248, column: 9, scope: !739)
!828 = !DILocation(line: 248, column: 16, scope: !739)
!829 = !DILocation(line: 248, column: 26, scope: !739)
!830 = !DILocation(line: 248, column: 23, scope: !739)
!831 = !DILocation(line: 248, column: 2, scope: !739)
!832 = !DILocation(line: 249, column: 1, scope: !739)
!833 = distinct !DISubprogram(name: "dwxgmac2_enable_dma_irq", scope: !3, file: !3, line: 251, type: !222, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!834 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !833, file: !3, line: 251, type: !30)
!835 = !DILocation(line: 251, column: 51, scope: !833)
!836 = !DILocalVariable(name: "chan", arg: 2, scope: !833, file: !3, line: 251, type: !17)
!837 = !DILocation(line: 251, column: 63, scope: !833)
!838 = !DILocalVariable(name: "rx", arg: 3, scope: !833, file: !3, line: 252, type: !43)
!839 = !DILocation(line: 252, column: 14, scope: !833)
!840 = !DILocalVariable(name: "tx", arg: 4, scope: !833, file: !3, line: 252, type: !43)
!841 = !DILocation(line: 252, column: 23, scope: !833)
!842 = !DILocalVariable(name: "value", scope: !833, file: !3, line: 254, type: !17)
!843 = !DILocation(line: 254, column: 6, scope: !833)
!844 = !DILocation(line: 254, column: 20, scope: !833)
!845 = !DILocation(line: 254, column: 29, scope: !833)
!846 = !DILocation(line: 254, column: 27, scope: !833)
!847 = !DILocation(line: 254, column: 14, scope: !833)
!848 = !DILocation(line: 256, column: 6, scope: !849)
!849 = distinct !DILexicalBlock(scope: !833, file: !3, line: 256, column: 6)
!850 = !DILocation(line: 256, column: 6, scope: !833)
!851 = !DILocation(line: 257, column: 9, scope: !849)
!852 = !DILocation(line: 257, column: 3, scope: !849)
!853 = !DILocation(line: 258, column: 6, scope: !854)
!854 = distinct !DILexicalBlock(scope: !833, file: !3, line: 258, column: 6)
!855 = !DILocation(line: 258, column: 6, scope: !833)
!856 = !DILocation(line: 259, column: 9, scope: !854)
!857 = !DILocation(line: 259, column: 3, scope: !854)
!858 = !DILocation(line: 261, column: 9, scope: !833)
!859 = !DILocation(line: 261, column: 16, scope: !833)
!860 = !DILocation(line: 261, column: 25, scope: !833)
!861 = !DILocation(line: 261, column: 23, scope: !833)
!862 = !DILocation(line: 261, column: 2, scope: !833)
!863 = !DILocation(line: 262, column: 1, scope: !833)
!864 = distinct !DISubprogram(name: "dwxgmac2_disable_dma_irq", scope: !3, file: !3, line: 264, type: !222, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!865 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !864, file: !3, line: 264, type: !30)
!866 = !DILocation(line: 264, column: 52, scope: !864)
!867 = !DILocalVariable(name: "chan", arg: 2, scope: !864, file: !3, line: 264, type: !17)
!868 = !DILocation(line: 264, column: 64, scope: !864)
!869 = !DILocalVariable(name: "rx", arg: 3, scope: !864, file: !3, line: 265, type: !43)
!870 = !DILocation(line: 265, column: 15, scope: !864)
!871 = !DILocalVariable(name: "tx", arg: 4, scope: !864, file: !3, line: 265, type: !43)
!872 = !DILocation(line: 265, column: 24, scope: !864)
!873 = !DILocalVariable(name: "value", scope: !864, file: !3, line: 267, type: !17)
!874 = !DILocation(line: 267, column: 6, scope: !864)
!875 = !DILocation(line: 267, column: 20, scope: !864)
!876 = !DILocation(line: 267, column: 29, scope: !864)
!877 = !DILocation(line: 267, column: 27, scope: !864)
!878 = !DILocation(line: 267, column: 14, scope: !864)
!879 = !DILocation(line: 269, column: 6, scope: !880)
!880 = distinct !DILexicalBlock(scope: !864, file: !3, line: 269, column: 6)
!881 = !DILocation(line: 269, column: 6, scope: !864)
!882 = !DILocation(line: 270, column: 9, scope: !880)
!883 = !DILocation(line: 270, column: 3, scope: !880)
!884 = !DILocation(line: 271, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !864, file: !3, line: 271, column: 6)
!886 = !DILocation(line: 271, column: 6, scope: !864)
!887 = !DILocation(line: 272, column: 9, scope: !885)
!888 = !DILocation(line: 272, column: 3, scope: !885)
!889 = !DILocation(line: 274, column: 9, scope: !864)
!890 = !DILocation(line: 274, column: 16, scope: !864)
!891 = !DILocation(line: 274, column: 25, scope: !864)
!892 = !DILocation(line: 274, column: 23, scope: !864)
!893 = !DILocation(line: 274, column: 2, scope: !864)
!894 = !DILocation(line: 275, column: 1, scope: !864)
!895 = distinct !DISubprogram(name: "dwxgmac2_dma_start_tx", scope: !3, file: !3, line: 277, type: !227, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!896 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !895, file: !3, line: 277, type: !30)
!897 = !DILocation(line: 277, column: 49, scope: !895)
!898 = !DILocalVariable(name: "chan", arg: 2, scope: !895, file: !3, line: 277, type: !17)
!899 = !DILocation(line: 277, column: 61, scope: !895)
!900 = !DILocalVariable(name: "value", scope: !895, file: !3, line: 279, type: !17)
!901 = !DILocation(line: 279, column: 6, scope: !895)
!902 = !DILocation(line: 281, column: 16, scope: !895)
!903 = !DILocation(line: 281, column: 25, scope: !895)
!904 = !DILocation(line: 281, column: 23, scope: !895)
!905 = !DILocation(line: 281, column: 10, scope: !895)
!906 = !DILocation(line: 281, column: 8, scope: !895)
!907 = !DILocation(line: 282, column: 8, scope: !895)
!908 = !DILocation(line: 283, column: 9, scope: !895)
!909 = !DILocation(line: 283, column: 16, scope: !895)
!910 = !DILocation(line: 283, column: 25, scope: !895)
!911 = !DILocation(line: 283, column: 23, scope: !895)
!912 = !DILocation(line: 283, column: 2, scope: !895)
!913 = !DILocation(line: 285, column: 16, scope: !895)
!914 = !DILocation(line: 285, column: 23, scope: !895)
!915 = !DILocation(line: 285, column: 10, scope: !895)
!916 = !DILocation(line: 285, column: 8, scope: !895)
!917 = !DILocation(line: 286, column: 8, scope: !895)
!918 = !DILocation(line: 287, column: 9, scope: !895)
!919 = !DILocation(line: 287, column: 16, scope: !895)
!920 = !DILocation(line: 287, column: 23, scope: !895)
!921 = !DILocation(line: 287, column: 2, scope: !895)
!922 = !DILocation(line: 288, column: 1, scope: !895)
!923 = distinct !DISubprogram(name: "dwxgmac2_dma_stop_tx", scope: !3, file: !3, line: 290, type: !227, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!924 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !923, file: !3, line: 290, type: !30)
!925 = !DILocation(line: 290, column: 48, scope: !923)
!926 = !DILocalVariable(name: "chan", arg: 2, scope: !923, file: !3, line: 290, type: !17)
!927 = !DILocation(line: 290, column: 60, scope: !923)
!928 = !DILocalVariable(name: "value", scope: !923, file: !3, line: 292, type: !17)
!929 = !DILocation(line: 292, column: 6, scope: !923)
!930 = !DILocation(line: 294, column: 16, scope: !923)
!931 = !DILocation(line: 294, column: 25, scope: !923)
!932 = !DILocation(line: 294, column: 23, scope: !923)
!933 = !DILocation(line: 294, column: 10, scope: !923)
!934 = !DILocation(line: 294, column: 8, scope: !923)
!935 = !DILocation(line: 295, column: 8, scope: !923)
!936 = !DILocation(line: 296, column: 9, scope: !923)
!937 = !DILocation(line: 296, column: 16, scope: !923)
!938 = !DILocation(line: 296, column: 25, scope: !923)
!939 = !DILocation(line: 296, column: 23, scope: !923)
!940 = !DILocation(line: 296, column: 2, scope: !923)
!941 = !DILocation(line: 298, column: 16, scope: !923)
!942 = !DILocation(line: 298, column: 23, scope: !923)
!943 = !DILocation(line: 298, column: 10, scope: !923)
!944 = !DILocation(line: 298, column: 8, scope: !923)
!945 = !DILocation(line: 299, column: 8, scope: !923)
!946 = !DILocation(line: 300, column: 9, scope: !923)
!947 = !DILocation(line: 300, column: 16, scope: !923)
!948 = !DILocation(line: 300, column: 23, scope: !923)
!949 = !DILocation(line: 300, column: 2, scope: !923)
!950 = !DILocation(line: 301, column: 1, scope: !923)
!951 = distinct !DISubprogram(name: "dwxgmac2_dma_start_rx", scope: !3, file: !3, line: 303, type: !227, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!952 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !951, file: !3, line: 303, type: !30)
!953 = !DILocation(line: 303, column: 49, scope: !951)
!954 = !DILocalVariable(name: "chan", arg: 2, scope: !951, file: !3, line: 303, type: !17)
!955 = !DILocation(line: 303, column: 61, scope: !951)
!956 = !DILocalVariable(name: "value", scope: !951, file: !3, line: 305, type: !17)
!957 = !DILocation(line: 305, column: 6, scope: !951)
!958 = !DILocation(line: 307, column: 16, scope: !951)
!959 = !DILocation(line: 307, column: 25, scope: !951)
!960 = !DILocation(line: 307, column: 23, scope: !951)
!961 = !DILocation(line: 307, column: 10, scope: !951)
!962 = !DILocation(line: 307, column: 8, scope: !951)
!963 = !DILocation(line: 308, column: 8, scope: !951)
!964 = !DILocation(line: 309, column: 9, scope: !951)
!965 = !DILocation(line: 309, column: 16, scope: !951)
!966 = !DILocation(line: 309, column: 25, scope: !951)
!967 = !DILocation(line: 309, column: 23, scope: !951)
!968 = !DILocation(line: 309, column: 2, scope: !951)
!969 = !DILocation(line: 311, column: 16, scope: !951)
!970 = !DILocation(line: 311, column: 23, scope: !951)
!971 = !DILocation(line: 311, column: 10, scope: !951)
!972 = !DILocation(line: 311, column: 8, scope: !951)
!973 = !DILocation(line: 312, column: 8, scope: !951)
!974 = !DILocation(line: 313, column: 9, scope: !951)
!975 = !DILocation(line: 313, column: 16, scope: !951)
!976 = !DILocation(line: 313, column: 23, scope: !951)
!977 = !DILocation(line: 313, column: 2, scope: !951)
!978 = !DILocation(line: 314, column: 1, scope: !951)
!979 = distinct !DISubprogram(name: "dwxgmac2_dma_stop_rx", scope: !3, file: !3, line: 316, type: !227, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!980 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !979, file: !3, line: 316, type: !30)
!981 = !DILocation(line: 316, column: 48, scope: !979)
!982 = !DILocalVariable(name: "chan", arg: 2, scope: !979, file: !3, line: 316, type: !17)
!983 = !DILocation(line: 316, column: 60, scope: !979)
!984 = !DILocalVariable(name: "value", scope: !979, file: !3, line: 318, type: !17)
!985 = !DILocation(line: 318, column: 6, scope: !979)
!986 = !DILocation(line: 320, column: 16, scope: !979)
!987 = !DILocation(line: 320, column: 25, scope: !979)
!988 = !DILocation(line: 320, column: 23, scope: !979)
!989 = !DILocation(line: 320, column: 10, scope: !979)
!990 = !DILocation(line: 320, column: 8, scope: !979)
!991 = !DILocation(line: 321, column: 8, scope: !979)
!992 = !DILocation(line: 322, column: 9, scope: !979)
!993 = !DILocation(line: 322, column: 16, scope: !979)
!994 = !DILocation(line: 322, column: 25, scope: !979)
!995 = !DILocation(line: 322, column: 23, scope: !979)
!996 = !DILocation(line: 322, column: 2, scope: !979)
!997 = !DILocation(line: 323, column: 1, scope: !979)
!998 = distinct !DISubprogram(name: "dwxgmac2_dma_interrupt", scope: !3, file: !3, line: 325, type: !234, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!999 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !998, file: !3, line: 325, type: !30)
!1000 = !DILocation(line: 325, column: 49, scope: !998)
!1001 = !DILocalVariable(name: "x", arg: 2, scope: !998, file: !3, line: 326, type: !99)
!1002 = !DILocation(line: 326, column: 34, scope: !998)
!1003 = !DILocalVariable(name: "chan", arg: 3, scope: !998, file: !3, line: 326, type: !17)
!1004 = !DILocation(line: 326, column: 41, scope: !998)
!1005 = !DILocalVariable(name: "intr_status", scope: !998, file: !3, line: 328, type: !17)
!1006 = !DILocation(line: 328, column: 6, scope: !998)
!1007 = !DILocation(line: 328, column: 26, scope: !998)
!1008 = !DILocation(line: 328, column: 35, scope: !998)
!1009 = !DILocation(line: 328, column: 33, scope: !998)
!1010 = !DILocation(line: 328, column: 20, scope: !998)
!1011 = !DILocalVariable(name: "intr_en", scope: !998, file: !3, line: 329, type: !17)
!1012 = !DILocation(line: 329, column: 6, scope: !998)
!1013 = !DILocation(line: 329, column: 22, scope: !998)
!1014 = !DILocation(line: 329, column: 31, scope: !998)
!1015 = !DILocation(line: 329, column: 29, scope: !998)
!1016 = !DILocation(line: 329, column: 16, scope: !998)
!1017 = !DILocalVariable(name: "ret", scope: !998, file: !3, line: 330, type: !16)
!1018 = !DILocation(line: 330, column: 6, scope: !998)
!1019 = !DILocation(line: 333, column: 6, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !998, file: !3, line: 333, column: 6)
!1021 = !DILocation(line: 333, column: 6, scope: !998)
!1022 = !DILocation(line: 334, column: 7, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 334, column: 7)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 333, column: 41)
!1025 = !DILocation(line: 334, column: 7, scope: !1024)
!1026 = !DILocation(line: 335, column: 4, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 334, column: 42)
!1028 = !DILocation(line: 335, column: 7, scope: !1027)
!1029 = !DILocation(line: 335, column: 22, scope: !1027)
!1030 = !DILocation(line: 336, column: 8, scope: !1027)
!1031 = !DILocation(line: 337, column: 3, scope: !1027)
!1032 = !DILocation(line: 338, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 338, column: 7)
!1034 = !DILocation(line: 338, column: 7, scope: !1024)
!1035 = !DILocation(line: 339, column: 4, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 338, column: 42)
!1037 = !DILocation(line: 339, column: 7, scope: !1036)
!1038 = !DILocation(line: 339, column: 29, scope: !1036)
!1039 = !DILocation(line: 340, column: 8, scope: !1036)
!1040 = !DILocation(line: 341, column: 3, scope: !1036)
!1041 = !DILocation(line: 342, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 342, column: 7)
!1043 = !DILocation(line: 342, column: 7, scope: !1024)
!1044 = !DILocation(line: 343, column: 4, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 342, column: 42)
!1046 = !DILocation(line: 343, column: 7, scope: !1045)
!1047 = !DILocation(line: 343, column: 26, scope: !1045)
!1048 = !DILocation(line: 344, column: 8, scope: !1045)
!1049 = !DILocation(line: 345, column: 3, scope: !1045)
!1050 = !DILocation(line: 346, column: 2, scope: !1024)
!1051 = !DILocation(line: 349, column: 6, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !998, file: !3, line: 349, column: 6)
!1053 = !DILocation(line: 349, column: 6, scope: !998)
!1054 = !DILocation(line: 350, column: 3, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 349, column: 39)
!1056 = !DILocation(line: 350, column: 6, scope: !1055)
!1057 = !DILocation(line: 350, column: 18, scope: !1055)
!1058 = !DILocation(line: 352, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 352, column: 7)
!1060 = !DILocation(line: 352, column: 7, scope: !1055)
!1061 = !DILocation(line: 353, column: 4, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 352, column: 39)
!1063 = !DILocation(line: 353, column: 7, scope: !1062)
!1064 = !DILocation(line: 353, column: 22, scope: !1062)
!1065 = !DILocation(line: 354, column: 8, scope: !1062)
!1066 = !DILocation(line: 355, column: 3, scope: !1062)
!1067 = !DILocation(line: 356, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 356, column: 7)
!1069 = !DILocation(line: 356, column: 7, scope: !1055)
!1070 = !DILocation(line: 357, column: 4, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 356, column: 53)
!1072 = !DILocation(line: 357, column: 7, scope: !1071)
!1073 = !DILocation(line: 357, column: 22, scope: !1071)
!1074 = !DILocation(line: 358, column: 8, scope: !1071)
!1075 = !DILocation(line: 359, column: 3, scope: !1071)
!1076 = !DILocation(line: 360, column: 2, scope: !1055)
!1077 = !DILocation(line: 363, column: 9, scope: !998)
!1078 = !DILocation(line: 363, column: 19, scope: !998)
!1079 = !DILocation(line: 363, column: 17, scope: !998)
!1080 = !DILocation(line: 363, column: 32, scope: !998)
!1081 = !DILocation(line: 363, column: 41, scope: !998)
!1082 = !DILocation(line: 363, column: 39, scope: !998)
!1083 = !DILocation(line: 363, column: 2, scope: !998)
!1084 = !DILocation(line: 365, column: 9, scope: !998)
!1085 = !DILocation(line: 365, column: 2, scope: !998)
!1086 = distinct !DISubprogram(name: "dwxgmac2_get_hw_feature", scope: !3, file: !3, line: 368, type: !238, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1087 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1086, file: !3, line: 368, type: !30)
!1088 = !DILocation(line: 368, column: 51, scope: !1086)
!1089 = !DILocalVariable(name: "dma_cap", arg: 2, scope: !1086, file: !3, line: 369, type: !240)
!1090 = !DILocation(line: 369, column: 30, scope: !1086)
!1091 = !DILocalVariable(name: "hw_cap", scope: !1086, file: !3, line: 371, type: !17)
!1092 = !DILocation(line: 371, column: 6, scope: !1086)
!1093 = !DILocation(line: 374, column: 17, scope: !1086)
!1094 = !DILocation(line: 374, column: 24, scope: !1086)
!1095 = !DILocation(line: 374, column: 11, scope: !1086)
!1096 = !DILocation(line: 374, column: 9, scope: !1086)
!1097 = !DILocation(line: 375, column: 20, scope: !1086)
!1098 = !DILocation(line: 375, column: 27, scope: !1086)
!1099 = !DILocation(line: 375, column: 53, scope: !1086)
!1100 = !DILocation(line: 375, column: 19, scope: !1086)
!1101 = !DILocation(line: 375, column: 2, scope: !1086)
!1102 = !DILocation(line: 375, column: 11, scope: !1086)
!1103 = !DILocation(line: 375, column: 17, scope: !1086)
!1104 = !DILocation(line: 376, column: 21, scope: !1086)
!1105 = !DILocation(line: 376, column: 28, scope: !1086)
!1106 = !DILocation(line: 376, column: 53, scope: !1086)
!1107 = !DILocation(line: 376, column: 20, scope: !1086)
!1108 = !DILocation(line: 376, column: 2, scope: !1086)
!1109 = !DILocation(line: 376, column: 11, scope: !1086)
!1110 = !DILocation(line: 376, column: 18, scope: !1086)
!1111 = !DILocation(line: 377, column: 21, scope: !1086)
!1112 = !DILocation(line: 377, column: 28, scope: !1086)
!1113 = !DILocation(line: 377, column: 53, scope: !1086)
!1114 = !DILocation(line: 377, column: 20, scope: !1086)
!1115 = !DILocation(line: 377, column: 2, scope: !1086)
!1116 = !DILocation(line: 377, column: 11, scope: !1086)
!1117 = !DILocation(line: 377, column: 18, scope: !1086)
!1118 = !DILocation(line: 378, column: 18, scope: !1086)
!1119 = !DILocation(line: 378, column: 25, scope: !1086)
!1120 = !DILocation(line: 378, column: 48, scope: !1086)
!1121 = !DILocation(line: 378, column: 17, scope: !1086)
!1122 = !DILocation(line: 378, column: 2, scope: !1086)
!1123 = !DILocation(line: 378, column: 11, scope: !1086)
!1124 = !DILocation(line: 378, column: 15, scope: !1086)
!1125 = !DILocation(line: 379, column: 26, scope: !1086)
!1126 = !DILocation(line: 379, column: 33, scope: !1086)
!1127 = !DILocation(line: 379, column: 55, scope: !1086)
!1128 = !DILocation(line: 379, column: 25, scope: !1086)
!1129 = !DILocation(line: 379, column: 2, scope: !1086)
!1130 = !DILocation(line: 379, column: 11, scope: !1086)
!1131 = !DILocation(line: 379, column: 23, scope: !1086)
!1132 = !DILocation(line: 380, column: 17, scope: !1086)
!1133 = !DILocation(line: 380, column: 24, scope: !1086)
!1134 = !DILocation(line: 380, column: 46, scope: !1086)
!1135 = !DILocation(line: 380, column: 16, scope: !1086)
!1136 = !DILocation(line: 380, column: 2, scope: !1086)
!1137 = !DILocation(line: 380, column: 11, scope: !1086)
!1138 = !DILocation(line: 380, column: 14, scope: !1086)
!1139 = !DILocation(line: 381, column: 20, scope: !1086)
!1140 = !DILocation(line: 381, column: 27, scope: !1086)
!1141 = !DILocation(line: 381, column: 50, scope: !1086)
!1142 = !DILocation(line: 381, column: 17, scope: !1086)
!1143 = !DILocation(line: 381, column: 2, scope: !1086)
!1144 = !DILocation(line: 381, column: 11, scope: !1086)
!1145 = !DILocation(line: 381, column: 14, scope: !1086)
!1146 = !DILocation(line: 382, column: 24, scope: !1086)
!1147 = !DILocation(line: 382, column: 31, scope: !1086)
!1148 = !DILocation(line: 382, column: 57, scope: !1086)
!1149 = !DILocation(line: 382, column: 23, scope: !1086)
!1150 = !DILocation(line: 382, column: 2, scope: !1086)
!1151 = !DILocation(line: 382, column: 11, scope: !1086)
!1152 = !DILocation(line: 382, column: 21, scope: !1086)
!1153 = !DILocation(line: 383, column: 19, scope: !1086)
!1154 = !DILocation(line: 383, column: 26, scope: !1086)
!1155 = !DILocation(line: 383, column: 49, scope: !1086)
!1156 = !DILocation(line: 383, column: 18, scope: !1086)
!1157 = !DILocation(line: 383, column: 2, scope: !1086)
!1158 = !DILocation(line: 383, column: 11, scope: !1086)
!1159 = !DILocation(line: 383, column: 16, scope: !1086)
!1160 = !DILocation(line: 384, column: 30, scope: !1086)
!1161 = !DILocation(line: 384, column: 37, scope: !1086)
!1162 = !DILocation(line: 384, column: 60, scope: !1086)
!1163 = !DILocation(line: 384, column: 29, scope: !1086)
!1164 = !DILocation(line: 384, column: 2, scope: !1086)
!1165 = !DILocation(line: 384, column: 11, scope: !1086)
!1166 = !DILocation(line: 384, column: 27, scope: !1086)
!1167 = !DILocation(line: 385, column: 33, scope: !1086)
!1168 = !DILocation(line: 385, column: 40, scope: !1086)
!1169 = !DILocation(line: 385, column: 63, scope: !1086)
!1170 = !DILocation(line: 385, column: 32, scope: !1086)
!1171 = !DILocation(line: 385, column: 2, scope: !1086)
!1172 = !DILocation(line: 385, column: 11, scope: !1086)
!1173 = !DILocation(line: 385, column: 30, scope: !1086)
!1174 = !DILocation(line: 386, column: 21, scope: !1086)
!1175 = !DILocation(line: 386, column: 28, scope: !1086)
!1176 = !DILocation(line: 386, column: 51, scope: !1086)
!1177 = !DILocation(line: 386, column: 20, scope: !1086)
!1178 = !DILocation(line: 386, column: 2, scope: !1086)
!1179 = !DILocation(line: 386, column: 11, scope: !1086)
!1180 = !DILocation(line: 386, column: 18, scope: !1086)
!1181 = !DILocation(line: 387, column: 24, scope: !1086)
!1182 = !DILocation(line: 387, column: 31, scope: !1086)
!1183 = !DILocation(line: 387, column: 55, scope: !1086)
!1184 = !DILocation(line: 387, column: 23, scope: !1086)
!1185 = !DILocation(line: 387, column: 2, scope: !1086)
!1186 = !DILocation(line: 387, column: 11, scope: !1086)
!1187 = !DILocation(line: 387, column: 21, scope: !1086)
!1188 = !DILocation(line: 390, column: 17, scope: !1086)
!1189 = !DILocation(line: 390, column: 24, scope: !1086)
!1190 = !DILocation(line: 390, column: 11, scope: !1086)
!1191 = !DILocation(line: 390, column: 9, scope: !1086)
!1192 = !DILocation(line: 391, column: 23, scope: !1086)
!1193 = !DILocation(line: 391, column: 30, scope: !1086)
!1194 = !DILocation(line: 391, column: 55, scope: !1086)
!1195 = !DILocation(line: 391, column: 22, scope: !1086)
!1196 = !DILocation(line: 391, column: 2, scope: !1086)
!1197 = !DILocation(line: 391, column: 11, scope: !1086)
!1198 = !DILocation(line: 391, column: 20, scope: !1086)
!1199 = !DILocation(line: 392, column: 25, scope: !1086)
!1200 = !DILocation(line: 392, column: 32, scope: !1086)
!1201 = !DILocation(line: 392, column: 58, scope: !1086)
!1202 = !DILocation(line: 392, column: 24, scope: !1086)
!1203 = !DILocation(line: 392, column: 2, scope: !1086)
!1204 = !DILocation(line: 392, column: 11, scope: !1086)
!1205 = !DILocation(line: 392, column: 22, scope: !1086)
!1206 = !DILocation(line: 393, column: 20, scope: !1086)
!1207 = !DILocation(line: 393, column: 27, scope: !1086)
!1208 = !DILocation(line: 393, column: 49, scope: !1086)
!1209 = !DILocation(line: 393, column: 19, scope: !1086)
!1210 = !DILocation(line: 393, column: 2, scope: !1086)
!1211 = !DILocation(line: 393, column: 11, scope: !1086)
!1212 = !DILocation(line: 393, column: 17, scope: !1086)
!1213 = !DILocation(line: 394, column: 20, scope: !1086)
!1214 = !DILocation(line: 394, column: 27, scope: !1086)
!1215 = !DILocation(line: 394, column: 49, scope: !1086)
!1216 = !DILocation(line: 394, column: 19, scope: !1086)
!1217 = !DILocation(line: 394, column: 2, scope: !1086)
!1218 = !DILocation(line: 394, column: 11, scope: !1086)
!1219 = !DILocation(line: 394, column: 17, scope: !1086)
!1220 = !DILocation(line: 395, column: 20, scope: !1086)
!1221 = !DILocation(line: 395, column: 27, scope: !1086)
!1222 = !DILocation(line: 395, column: 49, scope: !1086)
!1223 = !DILocation(line: 395, column: 19, scope: !1086)
!1224 = !DILocation(line: 395, column: 2, scope: !1086)
!1225 = !DILocation(line: 395, column: 11, scope: !1086)
!1226 = !DILocation(line: 395, column: 17, scope: !1086)
!1227 = !DILocation(line: 397, column: 21, scope: !1086)
!1228 = !DILocation(line: 397, column: 28, scope: !1086)
!1229 = !DILocation(line: 397, column: 51, scope: !1086)
!1230 = !DILocation(line: 397, column: 20, scope: !1086)
!1231 = !DILocation(line: 397, column: 2, scope: !1086)
!1232 = !DILocation(line: 397, column: 11, scope: !1086)
!1233 = !DILocation(line: 397, column: 18, scope: !1086)
!1234 = !DILocation(line: 398, column: 10, scope: !1086)
!1235 = !DILocation(line: 398, column: 19, scope: !1086)
!1236 = !DILocation(line: 398, column: 2, scope: !1086)
!1237 = !DILocation(line: 400, column: 3, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 398, column: 27)
!1239 = !DILocation(line: 400, column: 12, scope: !1238)
!1240 = !DILocation(line: 400, column: 19, scope: !1238)
!1241 = !DILocation(line: 401, column: 3, scope: !1238)
!1242 = !DILocation(line: 403, column: 3, scope: !1238)
!1243 = !DILocation(line: 403, column: 12, scope: !1238)
!1244 = !DILocation(line: 403, column: 19, scope: !1238)
!1245 = !DILocation(line: 404, column: 3, scope: !1238)
!1246 = !DILocation(line: 406, column: 3, scope: !1238)
!1247 = !DILocation(line: 406, column: 12, scope: !1238)
!1248 = !DILocation(line: 406, column: 19, scope: !1238)
!1249 = !DILocation(line: 407, column: 3, scope: !1238)
!1250 = !DILocation(line: 409, column: 3, scope: !1238)
!1251 = !DILocation(line: 409, column: 12, scope: !1238)
!1252 = !DILocation(line: 409, column: 19, scope: !1238)
!1253 = !DILocation(line: 410, column: 3, scope: !1238)
!1254 = !DILocation(line: 414, column: 12, scope: !1086)
!1255 = !DILocation(line: 414, column: 19, scope: !1086)
!1256 = !DILocation(line: 414, column: 46, scope: !1086)
!1257 = !DILocation(line: 414, column: 7, scope: !1086)
!1258 = !DILocation(line: 413, column: 2, scope: !1086)
!1259 = !DILocation(line: 413, column: 11, scope: !1086)
!1260 = !DILocation(line: 413, column: 24, scope: !1086)
!1261 = !DILocation(line: 416, column: 12, scope: !1086)
!1262 = !DILocation(line: 416, column: 19, scope: !1086)
!1263 = !DILocation(line: 416, column: 46, scope: !1086)
!1264 = !DILocation(line: 416, column: 7, scope: !1086)
!1265 = !DILocation(line: 415, column: 2, scope: !1086)
!1266 = !DILocation(line: 415, column: 11, scope: !1086)
!1267 = !DILocation(line: 415, column: 24, scope: !1086)
!1268 = !DILocation(line: 419, column: 17, scope: !1086)
!1269 = !DILocation(line: 419, column: 24, scope: !1086)
!1270 = !DILocation(line: 419, column: 11, scope: !1086)
!1271 = !DILocation(line: 419, column: 9, scope: !1086)
!1272 = !DILocation(line: 420, column: 26, scope: !1086)
!1273 = !DILocation(line: 420, column: 33, scope: !1086)
!1274 = !DILocation(line: 420, column: 59, scope: !1086)
!1275 = !DILocation(line: 420, column: 25, scope: !1086)
!1276 = !DILocation(line: 420, column: 2, scope: !1086)
!1277 = !DILocation(line: 420, column: 11, scope: !1086)
!1278 = !DILocation(line: 420, column: 23, scope: !1086)
!1279 = !DILocation(line: 422, column: 5, scope: !1086)
!1280 = !DILocation(line: 422, column: 12, scope: !1086)
!1281 = !DILocation(line: 422, column: 36, scope: !1086)
!1282 = !DILocation(line: 422, column: 43, scope: !1086)
!1283 = !DILocation(line: 422, column: 3, scope: !1086)
!1284 = !DILocation(line: 421, column: 2, scope: !1086)
!1285 = !DILocation(line: 421, column: 11, scope: !1086)
!1286 = !DILocation(line: 421, column: 29, scope: !1086)
!1287 = !DILocation(line: 424, column: 5, scope: !1086)
!1288 = !DILocation(line: 424, column: 12, scope: !1086)
!1289 = !DILocation(line: 424, column: 36, scope: !1086)
!1290 = !DILocation(line: 424, column: 43, scope: !1086)
!1291 = !DILocation(line: 424, column: 3, scope: !1086)
!1292 = !DILocation(line: 423, column: 2, scope: !1086)
!1293 = !DILocation(line: 423, column: 11, scope: !1086)
!1294 = !DILocation(line: 423, column: 29, scope: !1086)
!1295 = !DILocation(line: 426, column: 5, scope: !1086)
!1296 = !DILocation(line: 426, column: 12, scope: !1086)
!1297 = !DILocation(line: 426, column: 35, scope: !1086)
!1298 = !DILocation(line: 426, column: 41, scope: !1086)
!1299 = !DILocation(line: 426, column: 3, scope: !1086)
!1300 = !DILocation(line: 425, column: 2, scope: !1086)
!1301 = !DILocation(line: 425, column: 11, scope: !1086)
!1302 = !DILocation(line: 425, column: 28, scope: !1086)
!1303 = !DILocation(line: 428, column: 5, scope: !1086)
!1304 = !DILocation(line: 428, column: 12, scope: !1086)
!1305 = !DILocation(line: 428, column: 35, scope: !1086)
!1306 = !DILocation(line: 428, column: 41, scope: !1086)
!1307 = !DILocation(line: 428, column: 3, scope: !1086)
!1308 = !DILocation(line: 427, column: 2, scope: !1086)
!1309 = !DILocation(line: 427, column: 11, scope: !1086)
!1310 = !DILocation(line: 427, column: 28, scope: !1086)
!1311 = !DILocation(line: 431, column: 17, scope: !1086)
!1312 = !DILocation(line: 431, column: 24, scope: !1086)
!1313 = !DILocation(line: 431, column: 11, scope: !1086)
!1314 = !DILocation(line: 431, column: 9, scope: !1086)
!1315 = !DILocation(line: 432, column: 21, scope: !1086)
!1316 = !DILocation(line: 432, column: 28, scope: !1086)
!1317 = !DILocation(line: 432, column: 51, scope: !1086)
!1318 = !DILocation(line: 432, column: 20, scope: !1086)
!1319 = !DILocation(line: 432, column: 2, scope: !1086)
!1320 = !DILocation(line: 432, column: 11, scope: !1086)
!1321 = !DILocation(line: 432, column: 18, scope: !1086)
!1322 = !DILocation(line: 433, column: 21, scope: !1086)
!1323 = !DILocation(line: 433, column: 28, scope: !1086)
!1324 = !DILocation(line: 433, column: 51, scope: !1086)
!1325 = !DILocation(line: 433, column: 20, scope: !1086)
!1326 = !DILocation(line: 433, column: 2, scope: !1086)
!1327 = !DILocation(line: 433, column: 11, scope: !1086)
!1328 = !DILocation(line: 433, column: 18, scope: !1086)
!1329 = !DILocation(line: 434, column: 21, scope: !1086)
!1330 = !DILocation(line: 434, column: 28, scope: !1086)
!1331 = !DILocation(line: 434, column: 51, scope: !1086)
!1332 = !DILocation(line: 434, column: 20, scope: !1086)
!1333 = !DILocation(line: 434, column: 2, scope: !1086)
!1334 = !DILocation(line: 434, column: 11, scope: !1086)
!1335 = !DILocation(line: 434, column: 18, scope: !1086)
!1336 = !DILocation(line: 435, column: 21, scope: !1086)
!1337 = !DILocation(line: 435, column: 28, scope: !1086)
!1338 = !DILocation(line: 435, column: 51, scope: !1086)
!1339 = !DILocation(line: 435, column: 20, scope: !1086)
!1340 = !DILocation(line: 435, column: 2, scope: !1086)
!1341 = !DILocation(line: 435, column: 11, scope: !1086)
!1342 = !DILocation(line: 435, column: 18, scope: !1086)
!1343 = !DILocation(line: 436, column: 21, scope: !1086)
!1344 = !DILocation(line: 436, column: 28, scope: !1086)
!1345 = !DILocation(line: 436, column: 51, scope: !1086)
!1346 = !DILocation(line: 436, column: 20, scope: !1086)
!1347 = !DILocation(line: 436, column: 2, scope: !1086)
!1348 = !DILocation(line: 436, column: 11, scope: !1086)
!1349 = !DILocation(line: 436, column: 18, scope: !1086)
!1350 = !DILocation(line: 437, column: 18, scope: !1086)
!1351 = !DILocation(line: 437, column: 25, scope: !1086)
!1352 = !DILocation(line: 437, column: 45, scope: !1086)
!1353 = !DILocation(line: 437, column: 17, scope: !1086)
!1354 = !DILocation(line: 437, column: 2, scope: !1086)
!1355 = !DILocation(line: 437, column: 11, scope: !1086)
!1356 = !DILocation(line: 437, column: 15, scope: !1086)
!1357 = !DILocation(line: 438, column: 20, scope: !1086)
!1358 = !DILocation(line: 438, column: 27, scope: !1086)
!1359 = !DILocation(line: 438, column: 49, scope: !1086)
!1360 = !DILocation(line: 438, column: 19, scope: !1086)
!1361 = !DILocation(line: 438, column: 2, scope: !1086)
!1362 = !DILocation(line: 438, column: 11, scope: !1086)
!1363 = !DILocation(line: 438, column: 17, scope: !1086)
!1364 = !DILocation(line: 439, column: 20, scope: !1086)
!1365 = !DILocation(line: 439, column: 27, scope: !1086)
!1366 = !DILocation(line: 439, column: 49, scope: !1086)
!1367 = !DILocation(line: 439, column: 19, scope: !1086)
!1368 = !DILocation(line: 439, column: 2, scope: !1086)
!1369 = !DILocation(line: 439, column: 11, scope: !1086)
!1370 = !DILocation(line: 439, column: 17, scope: !1086)
!1371 = !DILocation(line: 440, column: 20, scope: !1086)
!1372 = !DILocation(line: 440, column: 27, scope: !1086)
!1373 = !DILocation(line: 440, column: 49, scope: !1086)
!1374 = !DILocation(line: 440, column: 19, scope: !1086)
!1375 = !DILocation(line: 440, column: 2, scope: !1086)
!1376 = !DILocation(line: 440, column: 11, scope: !1086)
!1377 = !DILocation(line: 440, column: 17, scope: !1086)
!1378 = !DILocation(line: 441, column: 21, scope: !1086)
!1379 = !DILocation(line: 441, column: 28, scope: !1086)
!1380 = !DILocation(line: 441, column: 51, scope: !1086)
!1381 = !DILocation(line: 441, column: 20, scope: !1086)
!1382 = !DILocation(line: 441, column: 2, scope: !1086)
!1383 = !DILocation(line: 441, column: 11, scope: !1086)
!1384 = !DILocation(line: 441, column: 18, scope: !1086)
!1385 = !DILocation(line: 442, column: 1, scope: !1086)
!1386 = distinct !DISubprogram(name: "dwxgmac2_rx_watchdog", scope: !3, file: !3, line: 444, type: !291, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1387 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1386, file: !3, line: 444, type: !30)
!1388 = !DILocation(line: 444, column: 48, scope: !1386)
!1389 = !DILocalVariable(name: "riwt", arg: 2, scope: !1386, file: !3, line: 444, type: !17)
!1390 = !DILocation(line: 444, column: 60, scope: !1386)
!1391 = !DILocalVariable(name: "nchan", arg: 3, scope: !1386, file: !3, line: 444, type: !17)
!1392 = !DILocation(line: 444, column: 70, scope: !1386)
!1393 = !DILocalVariable(name: "i", scope: !1386, file: !3, line: 446, type: !17)
!1394 = !DILocation(line: 446, column: 6, scope: !1386)
!1395 = !DILocation(line: 448, column: 9, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 448, column: 2)
!1397 = !DILocation(line: 448, column: 7, scope: !1396)
!1398 = !DILocation(line: 448, column: 14, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 448, column: 2)
!1400 = !DILocation(line: 448, column: 18, scope: !1399)
!1401 = !DILocation(line: 448, column: 16, scope: !1399)
!1402 = !DILocation(line: 448, column: 2, scope: !1396)
!1403 = !DILocation(line: 449, column: 10, scope: !1399)
!1404 = !DILocation(line: 449, column: 15, scope: !1399)
!1405 = !DILocation(line: 449, column: 28, scope: !1399)
!1406 = !DILocation(line: 449, column: 37, scope: !1399)
!1407 = !DILocation(line: 449, column: 35, scope: !1399)
!1408 = !DILocation(line: 449, column: 3, scope: !1399)
!1409 = !DILocation(line: 448, column: 26, scope: !1399)
!1410 = !DILocation(line: 448, column: 2, scope: !1399)
!1411 = distinct !{!1411, !1402, !1412}
!1412 = !DILocation(line: 449, column: 64, scope: !1396)
!1413 = !DILocation(line: 450, column: 1, scope: !1386)
!1414 = distinct !DISubprogram(name: "dwxgmac2_set_tx_ring_len", scope: !3, file: !3, line: 457, type: !291, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1415 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1414, file: !3, line: 457, type: !30)
!1416 = !DILocation(line: 457, column: 52, scope: !1414)
!1417 = !DILocalVariable(name: "len", arg: 2, scope: !1414, file: !3, line: 457, type: !17)
!1418 = !DILocation(line: 457, column: 64, scope: !1414)
!1419 = !DILocalVariable(name: "chan", arg: 3, scope: !1414, file: !3, line: 457, type: !17)
!1420 = !DILocation(line: 457, column: 73, scope: !1414)
!1421 = !DILocation(line: 459, column: 9, scope: !1414)
!1422 = !DILocation(line: 459, column: 14, scope: !1414)
!1423 = !DILocation(line: 459, column: 23, scope: !1414)
!1424 = !DILocation(line: 459, column: 21, scope: !1414)
!1425 = !DILocation(line: 459, column: 2, scope: !1414)
!1426 = !DILocation(line: 460, column: 1, scope: !1414)
!1427 = distinct !DISubprogram(name: "dwxgmac2_set_rx_ring_len", scope: !3, file: !3, line: 452, type: !291, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1428 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1427, file: !3, line: 452, type: !30)
!1429 = !DILocation(line: 452, column: 52, scope: !1427)
!1430 = !DILocalVariable(name: "len", arg: 2, scope: !1427, file: !3, line: 452, type: !17)
!1431 = !DILocation(line: 452, column: 64, scope: !1427)
!1432 = !DILocalVariable(name: "chan", arg: 3, scope: !1427, file: !3, line: 452, type: !17)
!1433 = !DILocation(line: 452, column: 73, scope: !1427)
!1434 = !DILocation(line: 454, column: 9, scope: !1427)
!1435 = !DILocation(line: 454, column: 14, scope: !1427)
!1436 = !DILocation(line: 454, column: 23, scope: !1427)
!1437 = !DILocation(line: 454, column: 21, scope: !1427)
!1438 = !DILocation(line: 454, column: 2, scope: !1427)
!1439 = !DILocation(line: 455, column: 1, scope: !1427)
!1440 = distinct !DISubprogram(name: "dwxgmac2_set_rx_tail_ptr", scope: !3, file: !3, line: 462, type: !291, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1441 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1440, file: !3, line: 462, type: !30)
!1442 = !DILocation(line: 462, column: 52, scope: !1440)
!1443 = !DILocalVariable(name: "ptr", arg: 2, scope: !1440, file: !3, line: 462, type: !17)
!1444 = !DILocation(line: 462, column: 64, scope: !1440)
!1445 = !DILocalVariable(name: "chan", arg: 3, scope: !1440, file: !3, line: 462, type: !17)
!1446 = !DILocation(line: 462, column: 73, scope: !1440)
!1447 = !DILocation(line: 464, column: 9, scope: !1440)
!1448 = !DILocation(line: 464, column: 14, scope: !1440)
!1449 = !DILocation(line: 464, column: 23, scope: !1440)
!1450 = !DILocation(line: 464, column: 21, scope: !1440)
!1451 = !DILocation(line: 464, column: 2, scope: !1440)
!1452 = !DILocation(line: 465, column: 1, scope: !1440)
!1453 = distinct !DISubprogram(name: "dwxgmac2_set_tx_tail_ptr", scope: !3, file: !3, line: 467, type: !291, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1454 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1453, file: !3, line: 467, type: !30)
!1455 = !DILocation(line: 467, column: 52, scope: !1453)
!1456 = !DILocalVariable(name: "ptr", arg: 2, scope: !1453, file: !3, line: 467, type: !17)
!1457 = !DILocation(line: 467, column: 64, scope: !1453)
!1458 = !DILocalVariable(name: "chan", arg: 3, scope: !1453, file: !3, line: 467, type: !17)
!1459 = !DILocation(line: 467, column: 73, scope: !1453)
!1460 = !DILocation(line: 469, column: 9, scope: !1453)
!1461 = !DILocation(line: 469, column: 14, scope: !1453)
!1462 = !DILocation(line: 469, column: 23, scope: !1453)
!1463 = !DILocation(line: 469, column: 21, scope: !1453)
!1464 = !DILocation(line: 469, column: 2, scope: !1453)
!1465 = !DILocation(line: 470, column: 1, scope: !1453)
!1466 = distinct !DISubprogram(name: "dwxgmac2_enable_tso", scope: !3, file: !3, line: 472, type: !299, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1467 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1466, file: !3, line: 472, type: !30)
!1468 = !DILocation(line: 472, column: 47, scope: !1466)
!1469 = !DILocalVariable(name: "en", arg: 2, scope: !1466, file: !3, line: 472, type: !43)
!1470 = !DILocation(line: 472, column: 60, scope: !1466)
!1471 = !DILocalVariable(name: "chan", arg: 3, scope: !1466, file: !3, line: 472, type: !17)
!1472 = !DILocation(line: 472, column: 68, scope: !1466)
!1473 = !DILocalVariable(name: "value", scope: !1466, file: !3, line: 474, type: !17)
!1474 = !DILocation(line: 474, column: 6, scope: !1466)
!1475 = !DILocation(line: 474, column: 20, scope: !1466)
!1476 = !DILocation(line: 474, column: 29, scope: !1466)
!1477 = !DILocation(line: 474, column: 27, scope: !1466)
!1478 = !DILocation(line: 474, column: 14, scope: !1466)
!1479 = !DILocation(line: 476, column: 6, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 476, column: 6)
!1481 = !DILocation(line: 476, column: 6, scope: !1466)
!1482 = !DILocation(line: 477, column: 9, scope: !1480)
!1483 = !DILocation(line: 477, column: 3, scope: !1480)
!1484 = !DILocation(line: 479, column: 9, scope: !1480)
!1485 = !DILocation(line: 481, column: 9, scope: !1466)
!1486 = !DILocation(line: 481, column: 16, scope: !1466)
!1487 = !DILocation(line: 481, column: 25, scope: !1466)
!1488 = !DILocation(line: 481, column: 23, scope: !1466)
!1489 = !DILocation(line: 481, column: 2, scope: !1466)
!1490 = !DILocation(line: 482, column: 1, scope: !1466)
!1491 = distinct !DISubprogram(name: "dwxgmac2_qmode", scope: !3, file: !3, line: 484, type: !303, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1492 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1491, file: !3, line: 484, type: !30)
!1493 = !DILocation(line: 484, column: 42, scope: !1491)
!1494 = !DILocalVariable(name: "channel", arg: 2, scope: !1491, file: !3, line: 484, type: !17)
!1495 = !DILocation(line: 484, column: 54, scope: !1491)
!1496 = !DILocalVariable(name: "qmode", arg: 3, scope: !1491, file: !3, line: 484, type: !91)
!1497 = !DILocation(line: 484, column: 66, scope: !1491)
!1498 = !DILocalVariable(name: "value", scope: !1491, file: !3, line: 486, type: !17)
!1499 = !DILocation(line: 486, column: 6, scope: !1491)
!1500 = !DILocation(line: 486, column: 20, scope: !1491)
!1501 = !DILocation(line: 486, column: 29, scope: !1491)
!1502 = !DILocation(line: 486, column: 27, scope: !1491)
!1503 = !DILocation(line: 486, column: 14, scope: !1491)
!1504 = !DILocalVariable(name: "flow", scope: !1491, file: !3, line: 487, type: !17)
!1505 = !DILocation(line: 487, column: 6, scope: !1491)
!1506 = !DILocation(line: 487, column: 19, scope: !1491)
!1507 = !DILocation(line: 487, column: 26, scope: !1491)
!1508 = !DILocation(line: 487, column: 13, scope: !1491)
!1509 = !DILocation(line: 489, column: 8, scope: !1491)
!1510 = !DILocation(line: 490, column: 6, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 490, column: 6)
!1512 = !DILocation(line: 490, column: 12, scope: !1511)
!1513 = !DILocation(line: 490, column: 6, scope: !1491)
!1514 = !DILocation(line: 491, column: 9, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 490, column: 30)
!1516 = !DILocation(line: 492, column: 13, scope: !1515)
!1517 = !DILocation(line: 492, column: 22, scope: !1515)
!1518 = !DILocation(line: 492, column: 20, scope: !1515)
!1519 = !DILocation(line: 492, column: 3, scope: !1515)
!1520 = !DILocation(line: 493, column: 2, scope: !1515)
!1521 = !DILocation(line: 494, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 493, column: 9)
!1523 = !DILocation(line: 495, column: 10, scope: !1522)
!1524 = !DILocation(line: 495, column: 15, scope: !1522)
!1525 = !DILocation(line: 495, column: 31, scope: !1522)
!1526 = !DILocation(line: 495, column: 38, scope: !1522)
!1527 = !DILocation(line: 495, column: 3, scope: !1522)
!1528 = !DILocation(line: 498, column: 9, scope: !1491)
!1529 = !DILocation(line: 498, column: 16, scope: !1491)
!1530 = !DILocation(line: 498, column: 26, scope: !1491)
!1531 = !DILocation(line: 498, column: 23, scope: !1491)
!1532 = !DILocation(line: 498, column: 2, scope: !1491)
!1533 = !DILocation(line: 499, column: 1, scope: !1491)
!1534 = distinct !DISubprogram(name: "dwxgmac2_set_bfsize", scope: !3, file: !3, line: 501, type: !307, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1535 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1534, file: !3, line: 501, type: !30)
!1536 = !DILocation(line: 501, column: 47, scope: !1534)
!1537 = !DILocalVariable(name: "bfsize", arg: 2, scope: !1534, file: !3, line: 501, type: !16)
!1538 = !DILocation(line: 501, column: 59, scope: !1534)
!1539 = !DILocalVariable(name: "chan", arg: 3, scope: !1534, file: !3, line: 501, type: !17)
!1540 = !DILocation(line: 501, column: 71, scope: !1534)
!1541 = !DILocalVariable(name: "value", scope: !1534, file: !3, line: 503, type: !17)
!1542 = !DILocation(line: 503, column: 6, scope: !1534)
!1543 = !DILocation(line: 505, column: 16, scope: !1534)
!1544 = !DILocation(line: 505, column: 25, scope: !1534)
!1545 = !DILocation(line: 505, column: 23, scope: !1534)
!1546 = !DILocation(line: 505, column: 10, scope: !1534)
!1547 = !DILocation(line: 505, column: 8, scope: !1534)
!1548 = !DILocation(line: 506, column: 8, scope: !1534)
!1549 = !DILocation(line: 507, column: 11, scope: !1534)
!1550 = !DILocation(line: 507, column: 18, scope: !1534)
!1551 = !DILocation(line: 507, column: 8, scope: !1534)
!1552 = !DILocation(line: 508, column: 9, scope: !1534)
!1553 = !DILocation(line: 508, column: 16, scope: !1534)
!1554 = !DILocation(line: 508, column: 25, scope: !1534)
!1555 = !DILocation(line: 508, column: 23, scope: !1534)
!1556 = !DILocation(line: 508, column: 2, scope: !1534)
!1557 = !DILocation(line: 509, column: 1, scope: !1534)
!1558 = distinct !DISubprogram(name: "dwxgmac2_enable_sph", scope: !3, file: !3, line: 511, type: !299, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1559 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1558, file: !3, line: 511, type: !30)
!1560 = !DILocation(line: 511, column: 47, scope: !1558)
!1561 = !DILocalVariable(name: "en", arg: 2, scope: !1558, file: !3, line: 511, type: !43)
!1562 = !DILocation(line: 511, column: 60, scope: !1558)
!1563 = !DILocalVariable(name: "chan", arg: 3, scope: !1558, file: !3, line: 511, type: !17)
!1564 = !DILocation(line: 511, column: 68, scope: !1558)
!1565 = !DILocalVariable(name: "value", scope: !1558, file: !3, line: 513, type: !17)
!1566 = !DILocation(line: 513, column: 6, scope: !1558)
!1567 = !DILocation(line: 513, column: 20, scope: !1558)
!1568 = !DILocation(line: 513, column: 27, scope: !1558)
!1569 = !DILocation(line: 513, column: 14, scope: !1558)
!1570 = !DILocation(line: 515, column: 8, scope: !1558)
!1571 = !DILocation(line: 516, column: 8, scope: !1558)
!1572 = !DILocation(line: 517, column: 9, scope: !1558)
!1573 = !DILocation(line: 517, column: 16, scope: !1558)
!1574 = !DILocation(line: 517, column: 23, scope: !1558)
!1575 = !DILocation(line: 517, column: 2, scope: !1558)
!1576 = !DILocation(line: 519, column: 16, scope: !1558)
!1577 = !DILocation(line: 519, column: 25, scope: !1558)
!1578 = !DILocation(line: 519, column: 23, scope: !1558)
!1579 = !DILocation(line: 519, column: 10, scope: !1558)
!1580 = !DILocation(line: 519, column: 8, scope: !1558)
!1581 = !DILocation(line: 520, column: 6, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 520, column: 6)
!1583 = !DILocation(line: 520, column: 6, scope: !1558)
!1584 = !DILocation(line: 521, column: 9, scope: !1582)
!1585 = !DILocation(line: 521, column: 3, scope: !1582)
!1586 = !DILocation(line: 523, column: 9, scope: !1582)
!1587 = !DILocation(line: 524, column: 9, scope: !1558)
!1588 = !DILocation(line: 524, column: 16, scope: !1558)
!1589 = !DILocation(line: 524, column: 25, scope: !1558)
!1590 = !DILocation(line: 524, column: 23, scope: !1558)
!1591 = !DILocation(line: 524, column: 2, scope: !1558)
!1592 = !DILocation(line: 525, column: 1, scope: !1558)
!1593 = distinct !DISubprogram(name: "dwxgmac2_enable_tbs", scope: !3, file: !3, line: 527, type: !312, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1594 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1593, file: !3, line: 527, type: !30)
!1595 = !DILocation(line: 527, column: 46, scope: !1593)
!1596 = !DILocalVariable(name: "en", arg: 2, scope: !1593, file: !3, line: 527, type: !43)
!1597 = !DILocation(line: 527, column: 59, scope: !1593)
!1598 = !DILocalVariable(name: "chan", arg: 3, scope: !1593, file: !3, line: 527, type: !17)
!1599 = !DILocation(line: 527, column: 67, scope: !1593)
!1600 = !DILocalVariable(name: "value", scope: !1593, file: !3, line: 529, type: !17)
!1601 = !DILocation(line: 529, column: 6, scope: !1593)
!1602 = !DILocation(line: 529, column: 20, scope: !1593)
!1603 = !DILocation(line: 529, column: 29, scope: !1593)
!1604 = !DILocation(line: 529, column: 27, scope: !1593)
!1605 = !DILocation(line: 529, column: 14, scope: !1593)
!1606 = !DILocation(line: 531, column: 6, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 531, column: 6)
!1608 = !DILocation(line: 531, column: 6, scope: !1593)
!1609 = !DILocation(line: 532, column: 9, scope: !1607)
!1610 = !DILocation(line: 532, column: 3, scope: !1607)
!1611 = !DILocation(line: 534, column: 9, scope: !1607)
!1612 = !DILocation(line: 536, column: 9, scope: !1593)
!1613 = !DILocation(line: 536, column: 16, scope: !1593)
!1614 = !DILocation(line: 536, column: 25, scope: !1593)
!1615 = !DILocation(line: 536, column: 23, scope: !1593)
!1616 = !DILocation(line: 536, column: 2, scope: !1593)
!1617 = !DILocation(line: 538, column: 16, scope: !1593)
!1618 = !DILocation(line: 538, column: 25, scope: !1593)
!1619 = !DILocation(line: 538, column: 23, scope: !1593)
!1620 = !DILocation(line: 538, column: 10, scope: !1593)
!1621 = !DILocation(line: 538, column: 56, scope: !1593)
!1622 = !DILocation(line: 538, column: 8, scope: !1593)
!1623 = !DILocation(line: 539, column: 6, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 539, column: 6)
!1625 = !DILocation(line: 539, column: 9, scope: !1624)
!1626 = !DILocation(line: 539, column: 13, scope: !1624)
!1627 = !DILocation(line: 539, column: 6, scope: !1593)
!1628 = !DILocation(line: 540, column: 3, scope: !1624)
!1629 = !DILocation(line: 542, column: 25, scope: !1593)
!1630 = !DILocation(line: 542, column: 32, scope: !1593)
!1631 = !DILocation(line: 542, column: 2, scope: !1593)
!1632 = !DILocation(line: 543, column: 25, scope: !1593)
!1633 = !DILocation(line: 543, column: 32, scope: !1593)
!1634 = !DILocation(line: 543, column: 2, scope: !1593)
!1635 = !DILocation(line: 544, column: 25, scope: !1593)
!1636 = !DILocation(line: 544, column: 32, scope: !1593)
!1637 = !DILocation(line: 544, column: 2, scope: !1593)
!1638 = !DILocation(line: 545, column: 25, scope: !1593)
!1639 = !DILocation(line: 545, column: 32, scope: !1593)
!1640 = !DILocation(line: 545, column: 2, scope: !1593)
!1641 = !DILocation(line: 546, column: 2, scope: !1593)
!1642 = !DILocation(line: 547, column: 1, scope: !1593)
!1643 = distinct !DISubprogram(name: "readl", scope: !1644, file: !1644, line: 59, type: !1645, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1644 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!7, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1649 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1650 = !DILocalVariable(name: "addr", arg: 1, scope: !1643, file: !1644, line: 59, type: !1647)
!1651 = !DILocation(line: 59, column: 1, scope: !1643)
!1652 = !DILocalVariable(name: "ret", scope: !1643, file: !1644, line: 59, type: !7)
!1653 = !{i32 -2145708226}
!1654 = distinct !DISubprogram(name: "writel", scope: !1644, file: !1644, line: 67, type: !1655, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !7, !1657}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1658 = !DILocalVariable(name: "val", arg: 1, scope: !1654, file: !1644, line: 67, type: !7)
!1659 = !DILocation(line: 67, column: 1, scope: !1654)
!1660 = !DILocalVariable(name: "addr", arg: 2, scope: !1654, file: !1644, line: 67, type: !1657)
!1661 = !{i32 -2145705833}
!1662 = distinct !DISubprogram(name: "ktime_add_us", scope: !339, file: !339, line: 179, type: !1663, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!338, !1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1667 = !DILocalVariable(name: "kt", arg: 1, scope: !1662, file: !339, line: 179, type: !1665)
!1668 = !DILocation(line: 179, column: 50, scope: !1662)
!1669 = !DILocalVariable(name: "usec", arg: 2, scope: !1662, file: !339, line: 179, type: !1666)
!1670 = !DILocation(line: 179, column: 64, scope: !1662)
!1671 = !DILocation(line: 181, column: 9, scope: !1662)
!1672 = !DILocation(line: 181, column: 2, scope: !1662)
!1673 = distinct !DISubprogram(name: "ktime_compare", scope: !339, file: !339, line: 95, type: !1674, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !320)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!16, !1665, !1665}
!1676 = !DILocalVariable(name: "cmp1", arg: 1, scope: !1673, file: !339, line: 95, type: !1665)
!1677 = !DILocation(line: 95, column: 47, scope: !1673)
!1678 = !DILocalVariable(name: "cmp2", arg: 2, scope: !1673, file: !339, line: 95, type: !1665)
!1679 = !DILocation(line: 95, column: 67, scope: !1673)
!1680 = !DILocation(line: 97, column: 6, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1673, file: !339, line: 97, column: 6)
!1682 = !DILocation(line: 97, column: 13, scope: !1681)
!1683 = !DILocation(line: 97, column: 11, scope: !1681)
!1684 = !DILocation(line: 97, column: 6, scope: !1673)
!1685 = !DILocation(line: 98, column: 3, scope: !1681)
!1686 = !DILocation(line: 99, column: 6, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1673, file: !339, line: 99, column: 6)
!1688 = !DILocation(line: 99, column: 13, scope: !1687)
!1689 = !DILocation(line: 99, column: 11, scope: !1687)
!1690 = !DILocation(line: 99, column: 6, scope: !1673)
!1691 = !DILocation(line: 100, column: 3, scope: !1687)
!1692 = !DILocation(line: 101, column: 2, scope: !1673)
!1693 = !DILocation(line: 102, column: 1, scope: !1673)
