; ModuleID = '../bcout/drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.llvm.bc'
source_filename = "drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.stmmac_dma_ops = type { i32 (i8*)*, void (i8*, %struct.stmmac_dma_cfg*, i32)*, void (i8*, %struct.stmmac_dma_cfg*, i32)*, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)*, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)*, void (i8*, %struct.stmmac_axi*)*, void (i8*, i32*)*, void (i8*, i32, i32, i32, i8)*, void (i8*, i32, i32, i32, i8)*, void (i8*, %struct.stmmac_extra_stats*, i8*)*, void (i8*)*, void (i8*, i32, i1, i1)*, void (i8*, i32, i1, i1)*, void (i8*, i32)*, void (i8*, i32)*, void (i8*, i32)*, void (i8*, i32)*, i32 (i8*, %struct.stmmac_extra_stats*, i32)*, void (i8*, %struct.dma_features*)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i1, i32)*, void (i8*, i32, i8)*, void (i8*, i32, i32)*, void (i8*, i1, i32)*, i32 (i8*, i1, i32)* }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }
%struct.stmmac_extra_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [56 x i8] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@dwmac100_dma_ops = dso_local constant %struct.stmmac_dma_ops { i32 (i8*)* @dwmac_dma_reset, void (i8*, %struct.stmmac_dma_cfg*, i32)* @dwmac100_dma_init, void (i8*, %struct.stmmac_dma_cfg*, i32)* null, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)* @dwmac100_dma_init_rx, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)* @dwmac100_dma_init_tx, void (i8*, %struct.stmmac_axi*)* null, void (i8*, i32*)* @dwmac100_dump_dma_regs, void (i8*, i32, i32, i32, i8)* null, void (i8*, i32, i32, i32, i8)* @dwmac100_dma_operation_mode_tx, void (i8*, %struct.stmmac_extra_stats*, i8*)* @dwmac100_dma_diagnostic_fr, void (i8*)* @dwmac_enable_dma_transmission, void (i8*, i32, i1, i1)* @dwmac_enable_dma_irq, void (i8*, i32, i1, i1)* @dwmac_disable_dma_irq, void (i8*, i32)* @dwmac_dma_start_tx, void (i8*, i32)* @dwmac_dma_stop_tx, void (i8*, i32)* @dwmac_dma_start_rx, void (i8*, i32)* @dwmac_dma_stop_rx, i32 (i8*, %struct.stmmac_extra_stats*, i32)* @dwmac_dma_interrupt, void (i8*, %struct.dma_features*)* null, void (i8*, i32, i32)* null, void (i8*, i32, i32)* null, void (i8*, i32, i32)* null, void (i8*, i32, i32)* null, void (i8*, i32, i32)* null, void (i8*, i1, i32)* null, void (i8*, i32, i8)* null, void (i8*, i32, i32)* null, void (i8*, i1, i32)* null, i32 (i8*, i1, i32)* null }, align 8, !dbg !0

; Function Attrs: noredzone
declare dso_local i32 @dwmac_dma_reset(i8*) #0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac100_dma_init(i8* %ioaddr, %struct.stmmac_dma_cfg* %dma_cfg, i32 %atds) #1 !dbg !353 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cfg.addr = alloca %struct.stmmac_dma_cfg*, align 8
  %atds.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !355, metadata !DIExpression()), !dbg !356
  store %struct.stmmac_dma_cfg* %dma_cfg, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_dma_cfg** %dma_cfg.addr, metadata !357, metadata !DIExpression()), !dbg !358
  store i32 %atds, i32* %atds.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %atds.addr, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !361
  %pbl = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %0, i32 0, i32 0, !dbg !362
  %1 = load i32, i32* %pbl, align 4, !dbg !362
  %shl = shl i32 %1, 8, !dbg !363
  %or = or i32 0, %shl, !dbg !364
  %2 = load i8*, i8** %ioaddr.addr, align 8, !dbg !365
  %add.ptr = getelementptr i8, i8* %2, i64 4096, !dbg !366
  call void @writel(i32 %or, i8* %add.ptr) #3, !dbg !367
  %3 = load i8*, i8** %ioaddr.addr, align 8, !dbg !368
  %add.ptr1 = getelementptr i8, i8* %3, i64 4124, !dbg !369
  call void @writel(i32 106593, i8* %add.ptr1) #3, !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac100_dma_init_rx(i8* %ioaddr, %struct.stmmac_dma_cfg* %dma_cfg, i64 %dma_rx_phy, i32 %chan) #1 !dbg !372 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cfg.addr = alloca %struct.stmmac_dma_cfg*, align 8
  %dma_rx_phy.addr = alloca i64, align 8
  %chan.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !373, metadata !DIExpression()), !dbg !374
  store %struct.stmmac_dma_cfg* %dma_cfg, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_dma_cfg** %dma_cfg.addr, metadata !375, metadata !DIExpression()), !dbg !376
  store i64 %dma_rx_phy, i64* %dma_rx_phy.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_rx_phy.addr, metadata !377, metadata !DIExpression()), !dbg !378
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !379, metadata !DIExpression()), !dbg !380
  %0 = load i64, i64* %dma_rx_phy.addr, align 8, !dbg !381
  %and = and i64 %0, 4294967295, !dbg !381
  %conv = trunc i64 %and to i32, !dbg !381
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !382
  %add.ptr = getelementptr i8, i8* %1, i64 4108, !dbg !383
  call void @writel(i32 %conv, i8* %add.ptr) #3, !dbg !384
  ret void, !dbg !385
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac100_dma_init_tx(i8* %ioaddr, %struct.stmmac_dma_cfg* %dma_cfg, i64 %dma_tx_phy, i32 %chan) #1 !dbg !386 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cfg.addr = alloca %struct.stmmac_dma_cfg*, align 8
  %dma_tx_phy.addr = alloca i64, align 8
  %chan.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !387, metadata !DIExpression()), !dbg !388
  store %struct.stmmac_dma_cfg* %dma_cfg, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_dma_cfg** %dma_cfg.addr, metadata !389, metadata !DIExpression()), !dbg !390
  store i64 %dma_tx_phy, i64* %dma_tx_phy.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_tx_phy.addr, metadata !391, metadata !DIExpression()), !dbg !392
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !393, metadata !DIExpression()), !dbg !394
  %0 = load i64, i64* %dma_tx_phy.addr, align 8, !dbg !395
  %and = and i64 %0, 4294967295, !dbg !395
  %conv = trunc i64 %and to i32, !dbg !395
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !396
  %add.ptr = getelementptr i8, i8* %1, i64 4112, !dbg !397
  call void @writel(i32 %conv, i8* %add.ptr) #3, !dbg !398
  ret void, !dbg !399
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac100_dump_dma_regs(i8* %ioaddr, i32* %reg_space) #1 !dbg !400 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %reg_space.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !401, metadata !DIExpression()), !dbg !402
  store i32* %reg_space, i32** %reg_space.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %reg_space.addr, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata i32* %i, metadata !405, metadata !DIExpression()), !dbg !406
  store i32 0, i32* %i, align 4, !dbg !407
  br label %for.cond, !dbg !409

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !410
  %cmp = icmp slt i32 %0, 9, !dbg !412
  br i1 %cmp, label %for.body, label %for.end, !dbg !413

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !414
  %add.ptr = getelementptr i8, i8* %1, i64 4096, !dbg !415
  %2 = load i32, i32* %i, align 4, !dbg !416
  %mul = mul i32 %2, 4, !dbg !417
  %idx.ext = sext i32 %mul to i64, !dbg !418
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 %idx.ext, !dbg !418
  %call = call i32 @readl(i8* %add.ptr1) #3, !dbg !419
  %3 = load i32*, i32** %reg_space.addr, align 8, !dbg !420
  %4 = load i32, i32* %i, align 4, !dbg !421
  %add = add i32 1024, %4, !dbg !422
  %idxprom = sext i32 %add to i64, !dbg !420
  %arrayidx = getelementptr i32, i32* %3, i64 %idxprom, !dbg !420
  store i32 %call, i32* %arrayidx, align 4, !dbg !423
  br label %for.inc, !dbg !420

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !424
  %inc = add i32 %5, 1, !dbg !424
  store i32 %inc, i32* %i, align 4, !dbg !424
  br label %for.cond, !dbg !425, !llvm.loop !426

for.end:                                          ; preds = %for.cond
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !428
  %add.ptr2 = getelementptr i8, i8* %6, i64 4176, !dbg !429
  %call3 = call i32 @readl(i8* %add.ptr2) #3, !dbg !430
  %7 = load i32*, i32** %reg_space.addr, align 8, !dbg !431
  %arrayidx4 = getelementptr i32, i32* %7, i64 1044, !dbg !431
  store i32 %call3, i32* %arrayidx4, align 4, !dbg !432
  %8 = load i8*, i8** %ioaddr.addr, align 8, !dbg !433
  %add.ptr5 = getelementptr i8, i8* %8, i64 4180, !dbg !434
  %call6 = call i32 @readl(i8* %add.ptr5) #3, !dbg !435
  %9 = load i32*, i32** %reg_space.addr, align 8, !dbg !436
  %arrayidx7 = getelementptr i32, i32* %9, i64 1045, !dbg !436
  store i32 %call6, i32* %arrayidx7, align 4, !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac100_dma_operation_mode_tx(i8* %ioaddr, i32 %mode, i32 %channel, i32 %fifosz, i8 zeroext %qmode) #1 !dbg !439 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %fifosz.addr = alloca i32, align 4
  %qmode.addr = alloca i8, align 1
  %csr6 = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !440, metadata !DIExpression()), !dbg !441
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !442, metadata !DIExpression()), !dbg !443
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !444, metadata !DIExpression()), !dbg !445
  store i32 %fifosz, i32* %fifosz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fifosz.addr, metadata !446, metadata !DIExpression()), !dbg !447
  store i8 %qmode, i8* %qmode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %qmode.addr, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata i32* %csr6, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !452
  %add.ptr = getelementptr i8, i8* %0, i64 4120, !dbg !453
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !454
  store i32 %call, i32* %csr6, align 4, !dbg !451
  %1 = load i32, i32* %mode.addr, align 4, !dbg !455
  %cmp = icmp sle i32 %1, 32, !dbg !457
  br i1 %cmp, label %if.then, label %if.else, !dbg !458

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %csr6, align 4, !dbg !459
  %or = or i32 %2, 4227072, !dbg !459
  store i32 %or, i32* %csr6, align 4, !dbg !459
  br label %if.end6, !dbg !460

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %mode.addr, align 4, !dbg !461
  %cmp1 = icmp sle i32 %3, 64, !dbg !463
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !464

if.then2:                                         ; preds = %if.else
  %4 = load i32, i32* %csr6, align 4, !dbg !465
  %or3 = or i32 %4, 16384, !dbg !465
  store i32 %or3, i32* %csr6, align 4, !dbg !465
  br label %if.end, !dbg !466

if.else4:                                         ; preds = %if.else
  %5 = load i32, i32* %csr6, align 4, !dbg !467
  %or5 = or i32 %5, 32768, !dbg !467
  store i32 %or5, i32* %csr6, align 4, !dbg !467
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then2
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %6 = load i32, i32* %csr6, align 4, !dbg !468
  %7 = load i8*, i8** %ioaddr.addr, align 8, !dbg !469
  %add.ptr7 = getelementptr i8, i8* %7, i64 4120, !dbg !470
  call void @writel(i32 %6, i8* %add.ptr7) #3, !dbg !471
  ret void, !dbg !472
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac100_dma_diagnostic_fr(i8* %data, %struct.stmmac_extra_stats* %x, i8* %ioaddr) #1 !dbg !473 {
entry:
  %data.addr = alloca i8*, align 8
  %x.addr = alloca %struct.stmmac_extra_stats*, align 8
  %ioaddr.addr = alloca i8*, align 8
  %stats = alloca %struct.net_device_stats*, align 8
  %csr8 = alloca i32, align 4
  %ove_cntr = alloca i32, align 4
  %miss_f = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !474, metadata !DIExpression()), !dbg !475
  store %struct.stmmac_extra_stats* %x, %struct.stmmac_extra_stats** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_extra_stats** %x.addr, metadata !476, metadata !DIExpression()), !dbg !477
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !478, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.declare(metadata %struct.net_device_stats** %stats, metadata !480, metadata !DIExpression()), !dbg !481
  %0 = load i8*, i8** %data.addr, align 8, !dbg !482
  %1 = bitcast i8* %0 to %struct.net_device_stats*, !dbg !483
  store %struct.net_device_stats* %1, %struct.net_device_stats** %stats, align 8, !dbg !481
  call void @llvm.dbg.declare(metadata i32* %csr8, metadata !484, metadata !DIExpression()), !dbg !485
  %2 = load i8*, i8** %ioaddr.addr, align 8, !dbg !486
  %add.ptr = getelementptr i8, i8* %2, i64 4128, !dbg !487
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !488
  store i32 %call, i32* %csr8, align 4, !dbg !485
  %3 = load i32, i32* %csr8, align 4, !dbg !489
  %tobool = icmp ne i32 %3, 0, !dbg !489
  %lnot = xor i1 %tobool, true, !dbg !489
  %lnot1 = xor i1 %lnot, true, !dbg !489
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !489
  %conv = sext i32 %lnot.ext to i64, !dbg !489
  %tobool2 = icmp ne i64 %conv, 0, !dbg !489
  br i1 %tobool2, label %if.then, label %if.end27, !dbg !491

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %csr8, align 4, !dbg !492
  %and = and i32 %4, 268435456, !dbg !495
  %tobool3 = icmp ne i32 %and, 0, !dbg !495
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !496

if.then4:                                         ; preds = %if.then
  %5 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !497
  %rx_over_errors = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %5, i32 0, i32 11, !dbg !499
  %6 = load i64, i64* %rx_over_errors, align 8, !dbg !500
  %add = add i64 %6, 2048, !dbg !500
  store i64 %add, i64* %rx_over_errors, align 8, !dbg !500
  %7 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !501
  %rx_overflow_cntr = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %7, i32 0, i32 25, !dbg !502
  %8 = load i64, i64* %rx_overflow_cntr, align 8, !dbg !503
  %add5 = add i64 %8, 2048, !dbg !503
  store i64 %add5, i64* %rx_overflow_cntr, align 8, !dbg !503
  br label %if.end, !dbg !504

if.else:                                          ; preds = %if.then
  call void @llvm.dbg.declare(metadata i32* %ove_cntr, metadata !505, metadata !DIExpression()), !dbg !507
  %9 = load i32, i32* %csr8, align 4, !dbg !508
  %and6 = and i32 %9, 268304384, !dbg !509
  %shr = lshr i32 %and6, 17, !dbg !510
  store i32 %shr, i32* %ove_cntr, align 4, !dbg !511
  %10 = load i32, i32* %ove_cntr, align 4, !dbg !512
  %conv7 = zext i32 %10 to i64, !dbg !512
  %11 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !513
  %rx_over_errors8 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %11, i32 0, i32 11, !dbg !514
  %12 = load i64, i64* %rx_over_errors8, align 8, !dbg !515
  %add9 = add i64 %12, %conv7, !dbg !515
  store i64 %add9, i64* %rx_over_errors8, align 8, !dbg !515
  %13 = load i32, i32* %ove_cntr, align 4, !dbg !516
  %conv10 = zext i32 %13 to i64, !dbg !516
  %14 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !517
  %rx_overflow_cntr11 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %14, i32 0, i32 25, !dbg !518
  %15 = load i64, i64* %rx_overflow_cntr11, align 8, !dbg !519
  %add12 = add i64 %15, %conv10, !dbg !519
  store i64 %add12, i64* %rx_overflow_cntr11, align 8, !dbg !519
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %16 = load i32, i32* %csr8, align 4, !dbg !520
  %and13 = and i32 %16, 65536, !dbg !522
  %tobool14 = icmp ne i32 %and13, 0, !dbg !522
  br i1 %tobool14, label %if.then15, label %if.else18, !dbg !523

if.then15:                                        ; preds = %if.end
  %17 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !524
  %rx_missed_errors = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %17, i32 0, i32 15, !dbg !526
  %18 = load i64, i64* %rx_missed_errors, align 8, !dbg !527
  %add16 = add i64 %18, 65535, !dbg !527
  store i64 %add16, i64* %rx_missed_errors, align 8, !dbg !527
  %19 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !528
  %rx_missed_cntr = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %19, i32 0, i32 24, !dbg !529
  %20 = load i64, i64* %rx_missed_cntr, align 64, !dbg !530
  %add17 = add i64 %20, 65535, !dbg !530
  store i64 %add17, i64* %rx_missed_cntr, align 64, !dbg !530
  br label %if.end26, !dbg !531

if.else18:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %miss_f, metadata !532, metadata !DIExpression()), !dbg !534
  %21 = load i32, i32* %csr8, align 4, !dbg !535
  %and19 = and i32 %21, 65535, !dbg !536
  store i32 %and19, i32* %miss_f, align 4, !dbg !534
  %22 = load i32, i32* %miss_f, align 4, !dbg !537
  %conv20 = zext i32 %22 to i64, !dbg !537
  %23 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !538
  %rx_missed_errors21 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %23, i32 0, i32 15, !dbg !539
  %24 = load i64, i64* %rx_missed_errors21, align 8, !dbg !540
  %add22 = add i64 %24, %conv20, !dbg !540
  store i64 %add22, i64* %rx_missed_errors21, align 8, !dbg !540
  %25 = load i32, i32* %miss_f, align 4, !dbg !541
  %conv23 = zext i32 %25 to i64, !dbg !541
  %26 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !542
  %rx_missed_cntr24 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %26, i32 0, i32 24, !dbg !543
  %27 = load i64, i64* %rx_missed_cntr24, align 64, !dbg !544
  %add25 = add i64 %27, %conv23, !dbg !544
  store i64 %add25, i64* %rx_missed_cntr24, align 64, !dbg !544
  br label %if.end26

if.end26:                                         ; preds = %if.else18, %if.then15
  br label %if.end27, !dbg !545

if.end27:                                         ; preds = %if.end26, %entry
  ret void, !dbg !546
}

; Function Attrs: noredzone
declare dso_local void @dwmac_enable_dma_transmission(i8*) #0

; Function Attrs: noredzone
declare dso_local void @dwmac_enable_dma_irq(i8*, i32, i1 zeroext, i1 zeroext) #0

; Function Attrs: noredzone
declare dso_local void @dwmac_disable_dma_irq(i8*, i32, i1 zeroext, i1 zeroext) #0

; Function Attrs: noredzone
declare dso_local void @dwmac_dma_start_tx(i8*, i32) #0

; Function Attrs: noredzone
declare dso_local void @dwmac_dma_stop_tx(i8*, i32) #0

; Function Attrs: noredzone
declare dso_local void @dwmac_dma_start_rx(i8*, i32) #0

; Function Attrs: noredzone
declare dso_local void @dwmac_dma_stop_rx(i8*, i32) #0

; Function Attrs: noredzone
declare dso_local i32 @dwmac_dma_interrupt(i8*, %struct.stmmac_extra_stats*, i32) #0

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #1 !dbg !547 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !553, metadata !DIExpression()), !dbg !554
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !555, metadata !DIExpression()), !dbg !554
  %0 = load i32, i32* %val.addr, align 4, !dbg !554
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !554
  %2 = bitcast i8* %1 to i32*, !dbg !554
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #4, !dbg !554, !srcloc !556
  ret void, !dbg !554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #1 !dbg !557 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !564, metadata !DIExpression()), !dbg !563
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !563
  %1 = bitcast i8* %0 to i32*, !dbg !563
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #4, !dbg !563, !srcloc !565
  store i32 %2, i32* %ret, align 4, !dbg !563
  %3 = load i32, i32* %ret, align 4, !dbg !563
  ret i32 %3, !dbg !563
}

attributes #0 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { noredzone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!348, !349, !350, !351}
!llvm.ident = !{!352}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dwmac100_dma_ops", scope: !2, file: !3, line: 111, type: !55, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !54, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttc_control", file: !6, line: 90, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/dwmac100.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "DMA_CONTROL_TTC_DEFAULT", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "DMA_CONTROL_TTC_64", value: 16384, isUnsigned: true)
!11 = !DIEnumerator(name: "DMA_CONTROL_TTC_128", value: 32768, isUnsigned: true)
!12 = !DIEnumerator(name: "DMA_CONTROL_TTC_256", value: 49152, isUnsigned: true)
!13 = !DIEnumerator(name: "DMA_CONTROL_TTC_18", value: 4194304, isUnsigned: true)
!14 = !DIEnumerator(name: "DMA_CONTROL_TTC_24", value: 4210688, isUnsigned: true)
!15 = !DIEnumerator(name: "DMA_CONTROL_TTC_32", value: 4227072, isUnsigned: true)
!16 = !DIEnumerator(name: "DMA_CONTROL_TTC_40", value: 4243456, isUnsigned: true)
!17 = !DIEnumerator(name: "DMA_CONTROL_SE", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "DMA_CONTROL_OSF", value: 4, isUnsigned: true)
!19 = !{!20, !22, !26}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !23, line: 21, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !25, line: 27, baseType: !7)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "net_device_stats", file: !28, line: 169, size: 1472, elements: !29)
!28 = !DIFile(filename: "./include/linux/netdevice.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "rx_packets", scope: !27, file: !28, line: 170, baseType: !31, size: 64)
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tx_packets", scope: !27, file: !28, line: 171, baseType: !31, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "rx_bytes", scope: !27, file: !28, line: 172, baseType: !31, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tx_bytes", scope: !27, file: !28, line: 173, baseType: !31, size: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "rx_errors", scope: !27, file: !28, line: 174, baseType: !31, size: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tx_errors", scope: !27, file: !28, line: 175, baseType: !31, size: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "rx_dropped", scope: !27, file: !28, line: 176, baseType: !31, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tx_dropped", scope: !27, file: !28, line: 177, baseType: !31, size: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "multicast", scope: !27, file: !28, line: 178, baseType: !31, size: 64, offset: 512)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !27, file: !28, line: 179, baseType: !31, size: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "rx_length_errors", scope: !27, file: !28, line: 180, baseType: !31, size: 64, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "rx_over_errors", scope: !27, file: !28, line: 181, baseType: !31, size: 64, offset: 704)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "rx_crc_errors", scope: !27, file: !28, line: 182, baseType: !31, size: 64, offset: 768)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "rx_frame_errors", scope: !27, file: !28, line: 183, baseType: !31, size: 64, offset: 832)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_errors", scope: !27, file: !28, line: 184, baseType: !31, size: 64, offset: 896)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "rx_missed_errors", scope: !27, file: !28, line: 185, baseType: !31, size: 64, offset: 960)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "tx_aborted_errors", scope: !27, file: !28, line: 186, baseType: !31, size: 64, offset: 1024)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tx_carrier_errors", scope: !27, file: !28, line: 187, baseType: !31, size: 64, offset: 1088)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_errors", scope: !27, file: !28, line: 188, baseType: !31, size: 64, offset: 1152)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tx_heartbeat_errors", scope: !27, file: !28, line: 189, baseType: !31, size: 64, offset: 1216)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tx_window_errors", scope: !27, file: !28, line: 190, baseType: !31, size: 64, offset: 1280)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "rx_compressed", scope: !27, file: !28, line: 191, baseType: !31, size: 64, offset: 1344)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tx_compressed", scope: !27, file: !28, line: 192, baseType: !31, size: 64, offset: 1408)
!54 = !{!0}
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_dma_ops", file: !57, line: 169, size: 1856, elements: !58)
!57 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/hwif.h", directory: "/home/lizy2001/genbc/linux")
!58 = !{!59, !65, !84, !88, !96, !97, !116, !121, !128, !129, !250, !254, !258, !259, !263, !264, !265, !266, !270, !323, !327, !328, !329, !330, !331, !335, !339, !343, !344}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !56, file: !57, line: 171, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !64}
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !56, file: !57, line: 172, baseType: !66, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !64, !69, !63}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_dma_cfg", file: !71, line: 89, size: 224, elements: !72)
!71 = !DIFile(filename: "./include/linux/stmmac.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75, !76, !80, !81, !82, !83}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pbl", scope: !70, file: !71, line: 90, baseType: !63, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "txpbl", scope: !70, file: !71, line: 91, baseType: !63, size: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "rxpbl", scope: !70, file: !71, line: 92, baseType: !63, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pblx8", scope: !70, file: !71, line: 93, baseType: !77, size: 8, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !78, line: 30, baseType: !79)
!78 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!79 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_burst", scope: !70, file: !71, line: 94, baseType: !63, size: 32, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_burst", scope: !70, file: !71, line: 95, baseType: !63, size: 32, offset: 160)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "aal", scope: !70, file: !71, line: 96, baseType: !77, size: 8, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "eame", scope: !70, file: !71, line: 97, baseType: !77, size: 8, offset: 200)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "init_chan", scope: !56, file: !57, line: 174, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !64, !69, !22}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "init_rx_chan", scope: !56, file: !57, line: 176, baseType: !89, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !64, !69, !92, !22}
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !78, line: 143, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !23, line: 23, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !25, line: 31, baseType: !95)
!95 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "init_tx_chan", scope: !56, file: !57, line: 179, baseType: !89, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "axi", scope: !56, file: !57, line: 183, baseType: !98, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !64, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_axi", file: !71, line: 101, size: 384, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !113, !114, !115}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "axi_lpi_en", scope: !102, file: !71, line: 102, baseType: !77, size: 8)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "axi_xit_frm", scope: !102, file: !71, line: 103, baseType: !77, size: 8, offset: 8)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "axi_wr_osr_lmt", scope: !102, file: !71, line: 104, baseType: !22, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "axi_rd_osr_lmt", scope: !102, file: !71, line: 105, baseType: !22, size: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "axi_kbbe", scope: !102, file: !71, line: 106, baseType: !77, size: 8, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "axi_blen", scope: !102, file: !71, line: 107, baseType: !110, size: 224, offset: 128)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 224, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 7)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "axi_fb", scope: !102, file: !71, line: 108, baseType: !77, size: 8, offset: 352)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "axi_mb", scope: !102, file: !71, line: 109, baseType: !77, size: 8, offset: 360)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "axi_rb", scope: !102, file: !71, line: 110, baseType: !77, size: 8, offset: 368)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "dump_regs", scope: !56, file: !57, line: 185, baseType: !117, size: 64, offset: 384)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !64, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "dma_rx_mode", scope: !56, file: !57, line: 186, baseType: !122, size: 64, offset: 448)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !64, !63, !22, !63, !125}
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !23, line: 17, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !25, line: 21, baseType: !127)
!127 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "dma_tx_mode", scope: !56, file: !57, line: 188, baseType: !122, size: 64, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "dma_diagnostic_fr", scope: !56, file: !57, line: 191, baseType: !130, size: 64, offset: 576)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !64, !133, !64}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_extra_stats", file: !135, line: 61, size: 7680, elements: !136)
!135 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/common.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tx_underflow", scope: !134, file: !135, line: 63, baseType: !31, size: 64, align: 512)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tx_carrier", scope: !134, file: !135, line: 64, baseType: !31, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tx_losscarrier", scope: !134, file: !135, line: 65, baseType: !31, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag", scope: !134, file: !135, line: 66, baseType: !31, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "tx_deferred", scope: !134, file: !135, line: 67, baseType: !31, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "tx_vlan", scope: !134, file: !135, line: 68, baseType: !31, size: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber", scope: !134, file: !135, line: 69, baseType: !31, size: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tx_frame_flushed", scope: !134, file: !135, line: 70, baseType: !31, size: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tx_payload_error", scope: !134, file: !135, line: 71, baseType: !31, size: 64, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ip_header_error", scope: !134, file: !135, line: 72, baseType: !31, size: 64, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rx_desc", scope: !134, file: !135, line: 74, baseType: !31, size: 64, offset: 640)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sa_filter_fail", scope: !134, file: !135, line: 75, baseType: !31, size: 64, offset: 704)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_error", scope: !134, file: !135, line: 76, baseType: !31, size: 64, offset: 768)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_csum_error", scope: !134, file: !135, line: 77, baseType: !31, size: 64, offset: 832)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "rx_collision", scope: !134, file: !135, line: 78, baseType: !31, size: 64, offset: 896)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "rx_crc_errors", scope: !134, file: !135, line: 79, baseType: !31, size: 64, offset: 960)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "dribbling_bit", scope: !134, file: !135, line: 80, baseType: !31, size: 64, offset: 1024)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rx_length", scope: !134, file: !135, line: 81, baseType: !31, size: 64, offset: 1088)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "rx_mii", scope: !134, file: !135, line: 82, baseType: !31, size: 64, offset: 1152)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rx_multicast", scope: !134, file: !135, line: 83, baseType: !31, size: 64, offset: 1216)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rx_gmac_overflow", scope: !134, file: !135, line: 84, baseType: !31, size: 64, offset: 1280)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog", scope: !134, file: !135, line: 85, baseType: !31, size: 64, offset: 1344)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "da_rx_filter_fail", scope: !134, file: !135, line: 86, baseType: !31, size: 64, offset: 1408)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sa_rx_filter_fail", scope: !134, file: !135, line: 87, baseType: !31, size: 64, offset: 1472)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "rx_missed_cntr", scope: !134, file: !135, line: 88, baseType: !31, size: 64, offset: 1536)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_cntr", scope: !134, file: !135, line: 89, baseType: !31, size: 64, offset: 1600)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rx_vlan", scope: !134, file: !135, line: 90, baseType: !31, size: 64, offset: 1664)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "rx_split_hdr_pkt_n", scope: !134, file: !135, line: 91, baseType: !31, size: 64, offset: 1728)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tx_undeflow_irq", scope: !134, file: !135, line: 93, baseType: !31, size: 64, offset: 1792)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "tx_process_stopped_irq", scope: !134, file: !135, line: 94, baseType: !31, size: 64, offset: 1856)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber_irq", scope: !134, file: !135, line: 95, baseType: !31, size: 64, offset: 1920)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_irq", scope: !134, file: !135, line: 96, baseType: !31, size: 64, offset: 1984)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_unav_irq", scope: !134, file: !135, line: 97, baseType: !31, size: 64, offset: 2048)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "rx_process_stopped_irq", scope: !134, file: !135, line: 98, baseType: !31, size: 64, offset: 2112)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog_irq", scope: !134, file: !135, line: 99, baseType: !31, size: 64, offset: 2176)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tx_early_irq", scope: !134, file: !135, line: 100, baseType: !31, size: 64, offset: 2240)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_bus_error_irq", scope: !134, file: !135, line: 101, baseType: !31, size: 64, offset: 2304)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "rx_early_irq", scope: !134, file: !135, line: 103, baseType: !31, size: 64, offset: 2368)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !134, file: !135, line: 104, baseType: !31, size: 64, offset: 2432)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tx_pkt_n", scope: !134, file: !135, line: 105, baseType: !31, size: 64, offset: 2496)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "rx_pkt_n", scope: !134, file: !135, line: 106, baseType: !31, size: 64, offset: 2560)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "normal_irq_n", scope: !134, file: !135, line: 107, baseType: !31, size: 64, offset: 2624)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "rx_normal_irq_n", scope: !134, file: !135, line: 108, baseType: !31, size: 64, offset: 2688)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "napi_poll", scope: !134, file: !135, line: 109, baseType: !31, size: 64, offset: 2752)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tx_normal_irq_n", scope: !134, file: !135, line: 110, baseType: !31, size: 64, offset: 2816)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "tx_clean", scope: !134, file: !135, line: 111, baseType: !31, size: 64, offset: 2880)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tx_set_ic_bit", scope: !134, file: !135, line: 112, baseType: !31, size: 64, offset: 2944)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "irq_receive_pmt_irq_n", scope: !134, file: !135, line: 113, baseType: !31, size: 64, offset: 3008)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_irq_n", scope: !134, file: !135, line: 115, baseType: !31, size: 64, offset: 3072)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_irq_n", scope: !134, file: !135, line: 116, baseType: !31, size: 64, offset: 3136)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_csum_offload_irq_n", scope: !134, file: !135, line: 117, baseType: !31, size: 64, offset: 3200)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_in_lpi_mode_n", scope: !134, file: !135, line: 119, baseType: !31, size: 64, offset: 3264)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_exit_lpi_mode_n", scope: !134, file: !135, line: 120, baseType: !31, size: 64, offset: 3328)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_in_lpi_mode_n", scope: !134, file: !135, line: 121, baseType: !31, size: 64, offset: 3392)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_exit_lpi_mode_n", scope: !134, file: !135, line: 122, baseType: !31, size: 64, offset: 3456)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "phy_eee_wakeup_error_n", scope: !134, file: !135, line: 123, baseType: !31, size: 64, offset: 3520)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hdr_err", scope: !134, file: !135, line: 125, baseType: !31, size: 64, offset: 3584)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ip_payload_err", scope: !134, file: !135, line: 126, baseType: !31, size: 64, offset: 3648)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ip_csum_bypassed", scope: !134, file: !135, line: 127, baseType: !31, size: 64, offset: 3712)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_pkt_rcvd", scope: !134, file: !135, line: 128, baseType: !31, size: 64, offset: 3776)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_pkt_rcvd", scope: !134, file: !135, line: 129, baseType: !31, size: 64, offset: 3840)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "no_ptp_rx_msg_type_ext", scope: !134, file: !135, line: 130, baseType: !31, size: 64, offset: 3904)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_sync", scope: !134, file: !135, line: 131, baseType: !31, size: 64, offset: 3968)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_follow_up", scope: !134, file: !135, line: 132, baseType: !31, size: 64, offset: 4032)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_req", scope: !134, file: !135, line: 133, baseType: !31, size: 64, offset: 4096)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_resp", scope: !134, file: !135, line: 134, baseType: !31, size: 64, offset: 4160)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_req", scope: !134, file: !135, line: 135, baseType: !31, size: 64, offset: 4224)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_resp", scope: !134, file: !135, line: 136, baseType: !31, size: 64, offset: 4288)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_follow_up", scope: !134, file: !135, line: 137, baseType: !31, size: 64, offset: 4352)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_announce", scope: !134, file: !135, line: 138, baseType: !31, size: 64, offset: 4416)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_management", scope: !134, file: !135, line: 139, baseType: !31, size: 64, offset: 4480)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_pkt_reserved_type", scope: !134, file: !135, line: 140, baseType: !31, size: 64, offset: 4544)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_frame_type", scope: !134, file: !135, line: 141, baseType: !31, size: 64, offset: 4608)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_ver", scope: !134, file: !135, line: 142, baseType: !31, size: 64, offset: 4672)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp_dropped", scope: !134, file: !135, line: 143, baseType: !31, size: 64, offset: 4736)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "av_pkt_rcvd", scope: !134, file: !135, line: 144, baseType: !31, size: 64, offset: 4800)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "av_tagged_pkt_rcvd", scope: !134, file: !135, line: 145, baseType: !31, size: 64, offset: 4864)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag_priority_val", scope: !134, file: !135, line: 146, baseType: !31, size: 64, offset: 4928)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "l3_filter_match", scope: !134, file: !135, line: 147, baseType: !31, size: 64, offset: 4992)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "l4_filter_match", scope: !134, file: !135, line: 148, baseType: !31, size: 64, offset: 5056)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "l3_l4_filter_no_match", scope: !134, file: !135, line: 149, baseType: !31, size: 64, offset: 5120)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_ane_n", scope: !134, file: !135, line: 151, baseType: !31, size: 64, offset: 5184)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_link_n", scope: !134, file: !135, line: 152, baseType: !31, size: 64, offset: 5248)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rgmii_n", scope: !134, file: !135, line: 153, baseType: !31, size: 64, offset: 5312)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_link", scope: !134, file: !135, line: 154, baseType: !31, size: 64, offset: 5376)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_duplex", scope: !134, file: !135, line: 155, baseType: !31, size: 64, offset: 5440)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_speed", scope: !134, file: !135, line: 156, baseType: !31, size: 64, offset: 5504)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_status_fifo_full", scope: !134, file: !135, line: 158, baseType: !31, size: 64, offset: 5568)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_not_empty", scope: !134, file: !135, line: 159, baseType: !31, size: 64, offset: 5632)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "mmtl_fifo_ctrl", scope: !134, file: !135, line: 160, baseType: !31, size: 64, offset: 5696)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_write", scope: !134, file: !135, line: 161, baseType: !31, size: 64, offset: 5760)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_wait", scope: !134, file: !135, line: 162, baseType: !31, size: 64, offset: 5824)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_read", scope: !134, file: !135, line: 163, baseType: !31, size: 64, offset: 5888)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_idle", scope: !134, file: !135, line: 164, baseType: !31, size: 64, offset: 5952)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_in_pause", scope: !134, file: !135, line: 165, baseType: !31, size: 64, offset: 6016)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_xfer", scope: !134, file: !135, line: 166, baseType: !31, size: 64, offset: 6080)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_idle", scope: !134, file: !135, line: 167, baseType: !31, size: 64, offset: 6144)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_wait", scope: !134, file: !135, line: 168, baseType: !31, size: 64, offset: 6208)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_pause", scope: !134, file: !135, line: 169, baseType: !31, size: 64, offset: 6272)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_tx_proto_engine", scope: !134, file: !135, line: 170, baseType: !31, size: 64, offset: 6336)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_full", scope: !134, file: !135, line: 171, baseType: !31, size: 64, offset: 6400)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_above_thresh", scope: !134, file: !135, line: 172, baseType: !31, size: 64, offset: 6464)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_below_thresh", scope: !134, file: !135, line: 173, baseType: !31, size: 64, offset: 6528)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_empty", scope: !134, file: !135, line: 174, baseType: !31, size: 64, offset: 6592)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_flush", scope: !134, file: !135, line: 175, baseType: !31, size: 64, offset: 6656)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_read_data", scope: !134, file: !135, line: 176, baseType: !31, size: 64, offset: 6720)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_status", scope: !134, file: !135, line: 177, baseType: !31, size: 64, offset: 6784)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_idle", scope: !134, file: !135, line: 178, baseType: !31, size: 64, offset: 6848)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_ctrl_active", scope: !134, file: !135, line: 179, baseType: !31, size: 64, offset: 6912)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "mac_rx_frame_ctrl_fifo", scope: !134, file: !135, line: 180, baseType: !31, size: 64, offset: 6976)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_rx_proto_engine", scope: !134, file: !135, line: 181, baseType: !31, size: 64, offset: 7040)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_frames", scope: !134, file: !135, line: 183, baseType: !31, size: 64, offset: 7104)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_nfrags", scope: !134, file: !135, line: 184, baseType: !31, size: 64, offset: 7168)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "enable_dma_transmission", scope: !56, file: !57, line: 193, baseType: !251, size: 64, offset: 640)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !64}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "enable_dma_irq", scope: !56, file: !57, line: 194, baseType: !255, size: 64, offset: 704)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !64, !22, !77, !77}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "disable_dma_irq", scope: !56, file: !57, line: 196, baseType: !255, size: 64, offset: 768)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "start_tx", scope: !56, file: !57, line: 198, baseType: !260, size: 64, offset: 832)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !64, !22}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "stop_tx", scope: !56, file: !57, line: 199, baseType: !260, size: 64, offset: 896)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "start_rx", scope: !56, file: !57, line: 200, baseType: !260, size: 64, offset: 960)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "stop_rx", scope: !56, file: !57, line: 201, baseType: !260, size: 64, offset: 1024)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "dma_interrupt", scope: !56, file: !57, line: 202, baseType: !267, size: 64, offset: 1088)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!63, !64, !133, !22}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "get_hw_feature", scope: !56, file: !57, line: 205, baseType: !271, size: 64, offset: 1152)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !64, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_features", file: !135, line: 326, size: 1472, elements: !276)
!276 = !{!277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "mbps_10_100", scope: !275, file: !135, line: 327, baseType: !7, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mbps_1000", scope: !275, file: !135, line: 328, baseType: !7, size: 32, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "half_duplex", scope: !275, file: !135, line: 329, baseType: !7, size: 32, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "hash_filter", scope: !275, file: !135, line: 330, baseType: !7, size: 32, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "multi_addr", scope: !275, file: !135, line: 331, baseType: !7, size: 32, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "pcs", scope: !275, file: !135, line: 332, baseType: !7, size: 32, offset: 160)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sma_mdio", scope: !275, file: !135, line: 333, baseType: !7, size: 32, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pmt_remote_wake_up", scope: !275, file: !135, line: 334, baseType: !7, size: 32, offset: 224)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pmt_magic_frame", scope: !275, file: !135, line: 335, baseType: !7, size: 32, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rmon", scope: !275, file: !135, line: 336, baseType: !7, size: 32, offset: 288)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "time_stamp", scope: !275, file: !135, line: 338, baseType: !7, size: 32, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "atime_stamp", scope: !275, file: !135, line: 340, baseType: !7, size: 32, offset: 352)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "eee", scope: !275, file: !135, line: 342, baseType: !7, size: 32, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "av", scope: !275, file: !135, line: 343, baseType: !7, size: 32, offset: 416)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "hash_tb_sz", scope: !275, file: !135, line: 344, baseType: !7, size: 32, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tsoen", scope: !275, file: !135, line: 345, baseType: !7, size: 32, offset: 480)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tx_coe", scope: !275, file: !135, line: 347, baseType: !7, size: 32, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "rx_coe", scope: !275, file: !135, line: 348, baseType: !7, size: 32, offset: 544)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rx_coe_type1", scope: !275, file: !135, line: 349, baseType: !7, size: 32, offset: 576)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rx_coe_type2", scope: !275, file: !135, line: 350, baseType: !7, size: 32, offset: 608)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "rxfifo_over_2048", scope: !275, file: !135, line: 351, baseType: !7, size: 32, offset: 640)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "number_rx_channel", scope: !275, file: !135, line: 353, baseType: !7, size: 32, offset: 672)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "number_tx_channel", scope: !275, file: !135, line: 354, baseType: !7, size: 32, offset: 704)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "number_rx_queues", scope: !275, file: !135, line: 356, baseType: !7, size: 32, offset: 736)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "number_tx_queues", scope: !275, file: !135, line: 357, baseType: !7, size: 32, offset: 768)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pps_out_num", scope: !275, file: !135, line: 359, baseType: !7, size: 32, offset: 800)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "enh_desc", scope: !275, file: !135, line: 361, baseType: !7, size: 32, offset: 832)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !275, file: !135, line: 363, baseType: !7, size: 32, offset: 864)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !275, file: !135, line: 364, baseType: !7, size: 32, offset: 896)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "asp", scope: !275, file: !135, line: 366, baseType: !7, size: 32, offset: 928)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "frpsel", scope: !275, file: !135, line: 368, baseType: !7, size: 32, offset: 960)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "frpbs", scope: !275, file: !135, line: 369, baseType: !7, size: 32, offset: 992)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "frpes", scope: !275, file: !135, line: 370, baseType: !7, size: 32, offset: 1024)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "addr64", scope: !275, file: !135, line: 371, baseType: !7, size: 32, offset: 1056)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rssen", scope: !275, file: !135, line: 372, baseType: !7, size: 32, offset: 1088)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "vlhash", scope: !275, file: !135, line: 373, baseType: !7, size: 32, offset: 1120)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "sphen", scope: !275, file: !135, line: 374, baseType: !7, size: 32, offset: 1152)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "vlins", scope: !275, file: !135, line: 375, baseType: !7, size: 32, offset: 1184)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dvlan", scope: !275, file: !135, line: 376, baseType: !7, size: 32, offset: 1216)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "l3l4fnum", scope: !275, file: !135, line: 377, baseType: !7, size: 32, offset: 1248)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "arpoffsel", scope: !275, file: !135, line: 378, baseType: !7, size: 32, offset: 1280)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "estwid", scope: !275, file: !135, line: 380, baseType: !7, size: 32, offset: 1312)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "estdep", scope: !275, file: !135, line: 381, baseType: !7, size: 32, offset: 1344)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "estsel", scope: !275, file: !135, line: 382, baseType: !7, size: 32, offset: 1376)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "fpesel", scope: !275, file: !135, line: 383, baseType: !7, size: 32, offset: 1408)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tbssel", scope: !275, file: !135, line: 384, baseType: !7, size: 32, offset: 1440)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog", scope: !56, file: !57, line: 208, baseType: !324, size: 64, offset: 1216)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !64, !22, !22}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "set_tx_ring_len", scope: !56, file: !57, line: 209, baseType: !324, size: 64, offset: 1280)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "set_rx_ring_len", scope: !56, file: !57, line: 210, baseType: !324, size: 64, offset: 1344)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "set_rx_tail_ptr", scope: !56, file: !57, line: 211, baseType: !324, size: 64, offset: 1408)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "set_tx_tail_ptr", scope: !56, file: !57, line: 212, baseType: !324, size: 64, offset: 1472)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "enable_tso", scope: !56, file: !57, line: 213, baseType: !332, size: 64, offset: 1536)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !64, !77, !22}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "qmode", scope: !56, file: !57, line: 214, baseType: !336, size: 64, offset: 1600)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !64, !22, !125}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "set_bfsize", scope: !56, file: !57, line: 215, baseType: !340, size: 64, offset: 1664)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !64, !63, !22}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "enable_sph", scope: !56, file: !57, line: 216, baseType: !332, size: 64, offset: 1728)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "enable_tbs", scope: !56, file: !57, line: 217, baseType: !345, size: 64, offset: 1792)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!63, !64, !77, !22}
!348 = !{i32 7, !"Dwarf Version", i32 4}
!349 = !{i32 2, !"Debug Info Version", i32 3}
!350 = !{i32 1, !"wchar_size", i32 2}
!351 = !{i32 1, !"Code Model", i32 2}
!352 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!353 = distinct !DISubprogram(name: "dwmac100_dma_init", scope: !3, file: !3, line: 21, type: !67, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!354 = !{}
!355 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !353, file: !3, line: 21, type: !64)
!356 = !DILocation(line: 21, column: 45, scope: !353)
!357 = !DILocalVariable(name: "dma_cfg", arg: 2, scope: !353, file: !3, line: 22, type: !69)
!358 = !DILocation(line: 22, column: 33, scope: !353)
!359 = !DILocalVariable(name: "atds", arg: 3, scope: !353, file: !3, line: 22, type: !63)
!360 = !DILocation(line: 22, column: 46, scope: !353)
!361 = !DILocation(line: 25, column: 33, scope: !353)
!362 = !DILocation(line: 25, column: 42, scope: !353)
!363 = !DILocation(line: 25, column: 46, scope: !353)
!364 = !DILocation(line: 25, column: 30, scope: !353)
!365 = !DILocation(line: 26, column: 9, scope: !353)
!366 = !DILocation(line: 26, column: 16, scope: !353)
!367 = !DILocation(line: 25, column: 2, scope: !353)
!368 = !DILocation(line: 29, column: 32, scope: !353)
!369 = !DILocation(line: 29, column: 39, scope: !353)
!370 = !DILocation(line: 29, column: 2, scope: !353)
!371 = !DILocation(line: 30, column: 1, scope: !353)
!372 = distinct !DISubprogram(name: "dwmac100_dma_init_rx", scope: !3, file: !3, line: 32, type: !90, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!373 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !372, file: !3, line: 32, type: !64)
!374 = !DILocation(line: 32, column: 48, scope: !372)
!375 = !DILocalVariable(name: "dma_cfg", arg: 2, scope: !372, file: !3, line: 33, type: !69)
!376 = !DILocation(line: 33, column: 29, scope: !372)
!377 = !DILocalVariable(name: "dma_rx_phy", arg: 3, scope: !372, file: !3, line: 34, type: !92)
!378 = !DILocation(line: 34, column: 17, scope: !372)
!379 = !DILocalVariable(name: "chan", arg: 4, scope: !372, file: !3, line: 34, type: !22)
!380 = !DILocation(line: 34, column: 33, scope: !372)
!381 = !DILocation(line: 37, column: 9, scope: !372)
!382 = !DILocation(line: 37, column: 36, scope: !372)
!383 = !DILocation(line: 37, column: 43, scope: !372)
!384 = !DILocation(line: 37, column: 2, scope: !372)
!385 = !DILocation(line: 38, column: 1, scope: !372)
!386 = distinct !DISubprogram(name: "dwmac100_dma_init_tx", scope: !3, file: !3, line: 40, type: !90, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!387 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !386, file: !3, line: 40, type: !64)
!388 = !DILocation(line: 40, column: 48, scope: !386)
!389 = !DILocalVariable(name: "dma_cfg", arg: 2, scope: !386, file: !3, line: 41, type: !69)
!390 = !DILocation(line: 41, column: 29, scope: !386)
!391 = !DILocalVariable(name: "dma_tx_phy", arg: 3, scope: !386, file: !3, line: 42, type: !92)
!392 = !DILocation(line: 42, column: 17, scope: !386)
!393 = !DILocalVariable(name: "chan", arg: 4, scope: !386, file: !3, line: 42, type: !22)
!394 = !DILocation(line: 42, column: 33, scope: !386)
!395 = !DILocation(line: 45, column: 9, scope: !386)
!396 = !DILocation(line: 45, column: 36, scope: !386)
!397 = !DILocation(line: 45, column: 43, scope: !386)
!398 = !DILocation(line: 45, column: 2, scope: !386)
!399 = !DILocation(line: 46, column: 1, scope: !386)
!400 = distinct !DISubprogram(name: "dwmac100_dump_dma_regs", scope: !3, file: !3, line: 68, type: !118, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!401 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !400, file: !3, line: 68, type: !64)
!402 = !DILocation(line: 68, column: 50, scope: !400)
!403 = !DILocalVariable(name: "reg_space", arg: 2, scope: !400, file: !3, line: 68, type: !120)
!404 = !DILocation(line: 68, column: 63, scope: !400)
!405 = !DILocalVariable(name: "i", scope: !400, file: !3, line: 70, type: !63)
!406 = !DILocation(line: 70, column: 6, scope: !400)
!407 = !DILocation(line: 72, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !400, file: !3, line: 72, column: 2)
!409 = !DILocation(line: 72, column: 7, scope: !408)
!410 = !DILocation(line: 72, column: 14, scope: !411)
!411 = distinct !DILexicalBlock(scope: !408, file: !3, line: 72, column: 2)
!412 = !DILocation(line: 72, column: 16, scope: !411)
!413 = !DILocation(line: 72, column: 2, scope: !408)
!414 = !DILocation(line: 74, column: 10, scope: !411)
!415 = !DILocation(line: 74, column: 17, scope: !411)
!416 = !DILocation(line: 74, column: 34, scope: !411)
!417 = !DILocation(line: 74, column: 36, scope: !411)
!418 = !DILocation(line: 74, column: 32, scope: !411)
!419 = !DILocation(line: 74, column: 4, scope: !411)
!420 = !DILocation(line: 73, column: 3, scope: !411)
!421 = !DILocation(line: 73, column: 32, scope: !411)
!422 = !DILocation(line: 73, column: 30, scope: !411)
!423 = !DILocation(line: 73, column: 35, scope: !411)
!424 = !DILocation(line: 72, column: 42, scope: !411)
!425 = !DILocation(line: 72, column: 2, scope: !411)
!426 = distinct !{!426, !413, !427}
!427 = !DILocation(line: 74, column: 39, scope: !408)
!428 = !DILocation(line: 77, column: 9, scope: !400)
!429 = !DILocation(line: 77, column: 16, scope: !400)
!430 = !DILocation(line: 77, column: 3, scope: !400)
!431 = !DILocation(line: 76, column: 2, scope: !400)
!432 = !DILocation(line: 76, column: 37, scope: !400)
!433 = !DILocation(line: 79, column: 9, scope: !400)
!434 = !DILocation(line: 79, column: 16, scope: !400)
!435 = !DILocation(line: 79, column: 3, scope: !400)
!436 = !DILocation(line: 78, column: 2, scope: !400)
!437 = !DILocation(line: 78, column: 37, scope: !400)
!438 = !DILocation(line: 80, column: 1, scope: !400)
!439 = distinct !DISubprogram(name: "dwmac100_dma_operation_mode_tx", scope: !3, file: !3, line: 53, type: !123, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!440 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !439, file: !3, line: 53, type: !64)
!441 = !DILocation(line: 53, column: 58, scope: !439)
!442 = !DILocalVariable(name: "mode", arg: 2, scope: !439, file: !3, line: 53, type: !63)
!443 = !DILocation(line: 53, column: 70, scope: !439)
!444 = !DILocalVariable(name: "channel", arg: 3, scope: !439, file: !3, line: 54, type: !22)
!445 = !DILocation(line: 54, column: 13, scope: !439)
!446 = !DILocalVariable(name: "fifosz", arg: 4, scope: !439, file: !3, line: 54, type: !63)
!447 = !DILocation(line: 54, column: 26, scope: !439)
!448 = !DILocalVariable(name: "qmode", arg: 5, scope: !439, file: !3, line: 54, type: !125)
!449 = !DILocation(line: 54, column: 37, scope: !439)
!450 = !DILocalVariable(name: "csr6", scope: !439, file: !3, line: 56, type: !22)
!451 = !DILocation(line: 56, column: 6, scope: !439)
!452 = !DILocation(line: 56, column: 19, scope: !439)
!453 = !DILocation(line: 56, column: 26, scope: !439)
!454 = !DILocation(line: 56, column: 13, scope: !439)
!455 = !DILocation(line: 58, column: 6, scope: !456)
!456 = distinct !DILexicalBlock(scope: !439, file: !3, line: 58, column: 6)
!457 = !DILocation(line: 58, column: 11, scope: !456)
!458 = !DILocation(line: 58, column: 6, scope: !439)
!459 = !DILocation(line: 59, column: 8, scope: !456)
!460 = !DILocation(line: 59, column: 3, scope: !456)
!461 = !DILocation(line: 60, column: 11, scope: !462)
!462 = distinct !DILexicalBlock(scope: !456, file: !3, line: 60, column: 11)
!463 = !DILocation(line: 60, column: 16, scope: !462)
!464 = !DILocation(line: 60, column: 11, scope: !456)
!465 = !DILocation(line: 61, column: 8, scope: !462)
!466 = !DILocation(line: 61, column: 3, scope: !462)
!467 = !DILocation(line: 63, column: 8, scope: !462)
!468 = !DILocation(line: 65, column: 9, scope: !439)
!469 = !DILocation(line: 65, column: 15, scope: !439)
!470 = !DILocation(line: 65, column: 22, scope: !439)
!471 = !DILocation(line: 65, column: 2, scope: !439)
!472 = !DILocation(line: 66, column: 1, scope: !439)
!473 = distinct !DISubprogram(name: "dwmac100_dma_diagnostic_fr", scope: !3, file: !3, line: 83, type: !131, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!474 = !DILocalVariable(name: "data", arg: 1, scope: !473, file: !3, line: 83, type: !64)
!475 = !DILocation(line: 83, column: 46, scope: !473)
!476 = !DILocalVariable(name: "x", arg: 2, scope: !473, file: !3, line: 83, type: !133)
!477 = !DILocation(line: 83, column: 79, scope: !473)
!478 = !DILocalVariable(name: "ioaddr", arg: 3, scope: !473, file: !3, line: 84, type: !64)
!479 = !DILocation(line: 84, column: 26, scope: !473)
!480 = !DILocalVariable(name: "stats", scope: !473, file: !3, line: 86, type: !26)
!481 = !DILocation(line: 86, column: 27, scope: !473)
!482 = !DILocation(line: 86, column: 62, scope: !473)
!483 = !DILocation(line: 86, column: 35, scope: !473)
!484 = !DILocalVariable(name: "csr8", scope: !473, file: !3, line: 87, type: !22)
!485 = !DILocation(line: 87, column: 6, scope: !473)
!486 = !DILocation(line: 87, column: 19, scope: !473)
!487 = !DILocation(line: 87, column: 26, scope: !473)
!488 = !DILocation(line: 87, column: 13, scope: !473)
!489 = !DILocation(line: 89, column: 6, scope: !490)
!490 = distinct !DILexicalBlock(scope: !473, file: !3, line: 89, column: 6)
!491 = !DILocation(line: 89, column: 6, scope: !473)
!492 = !DILocation(line: 90, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 90, column: 7)
!494 = distinct !DILexicalBlock(scope: !490, file: !3, line: 89, column: 22)
!495 = !DILocation(line: 90, column: 12, scope: !493)
!496 = !DILocation(line: 90, column: 7, scope: !494)
!497 = !DILocation(line: 91, column: 4, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !3, line: 90, column: 36)
!499 = !DILocation(line: 91, column: 11, scope: !498)
!500 = !DILocation(line: 91, column: 26, scope: !498)
!501 = !DILocation(line: 92, column: 4, scope: !498)
!502 = !DILocation(line: 92, column: 7, scope: !498)
!503 = !DILocation(line: 92, column: 24, scope: !498)
!504 = !DILocation(line: 93, column: 3, scope: !498)
!505 = !DILocalVariable(name: "ove_cntr", scope: !506, file: !3, line: 94, type: !7)
!506 = distinct !DILexicalBlock(scope: !493, file: !3, line: 93, column: 10)
!507 = !DILocation(line: 94, column: 17, scope: !506)
!508 = !DILocation(line: 95, column: 17, scope: !506)
!509 = !DILocation(line: 95, column: 22, scope: !506)
!510 = !DILocation(line: 95, column: 51, scope: !506)
!511 = !DILocation(line: 95, column: 13, scope: !506)
!512 = !DILocation(line: 96, column: 29, scope: !506)
!513 = !DILocation(line: 96, column: 4, scope: !506)
!514 = !DILocation(line: 96, column: 11, scope: !506)
!515 = !DILocation(line: 96, column: 26, scope: !506)
!516 = !DILocation(line: 97, column: 27, scope: !506)
!517 = !DILocation(line: 97, column: 4, scope: !506)
!518 = !DILocation(line: 97, column: 7, scope: !506)
!519 = !DILocation(line: 97, column: 24, scope: !506)
!520 = !DILocation(line: 100, column: 7, scope: !521)
!521 = distinct !DILexicalBlock(scope: !494, file: !3, line: 100, column: 7)
!522 = !DILocation(line: 100, column: 12, scope: !521)
!523 = !DILocation(line: 100, column: 7, scope: !494)
!524 = !DILocation(line: 101, column: 4, scope: !525)
!525 = distinct !DILexicalBlock(scope: !521, file: !3, line: 100, column: 38)
!526 = !DILocation(line: 101, column: 11, scope: !525)
!527 = !DILocation(line: 101, column: 28, scope: !525)
!528 = !DILocation(line: 102, column: 4, scope: !525)
!529 = !DILocation(line: 102, column: 7, scope: !525)
!530 = !DILocation(line: 102, column: 22, scope: !525)
!531 = !DILocation(line: 103, column: 3, scope: !525)
!532 = !DILocalVariable(name: "miss_f", scope: !533, file: !3, line: 104, type: !7)
!533 = distinct !DILexicalBlock(scope: !521, file: !3, line: 103, column: 10)
!534 = !DILocation(line: 104, column: 17, scope: !533)
!535 = !DILocation(line: 104, column: 27, scope: !533)
!536 = !DILocation(line: 104, column: 32, scope: !533)
!537 = !DILocation(line: 105, column: 31, scope: !533)
!538 = !DILocation(line: 105, column: 4, scope: !533)
!539 = !DILocation(line: 105, column: 11, scope: !533)
!540 = !DILocation(line: 105, column: 28, scope: !533)
!541 = !DILocation(line: 106, column: 25, scope: !533)
!542 = !DILocation(line: 106, column: 4, scope: !533)
!543 = !DILocation(line: 106, column: 7, scope: !533)
!544 = !DILocation(line: 106, column: 22, scope: !533)
!545 = !DILocation(line: 108, column: 2, scope: !494)
!546 = !DILocation(line: 109, column: 1, scope: !473)
!547 = distinct !DISubprogram(name: "writel", scope: !548, file: !548, line: 67, type: !549, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!548 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!549 = !DISubroutineType(types: !550)
!550 = !{null, !7, !551}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!553 = !DILocalVariable(name: "val", arg: 1, scope: !547, file: !548, line: 67, type: !7)
!554 = !DILocation(line: 67, column: 1, scope: !547)
!555 = !DILocalVariable(name: "addr", arg: 2, scope: !547, file: !548, line: 67, type: !551)
!556 = !{i32 -2146536875}
!557 = distinct !DISubprogram(name: "readl", scope: !548, file: !548, line: 59, type: !558, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!558 = !DISubroutineType(types: !559)
!559 = !{!7, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!562 = !DILocalVariable(name: "addr", arg: 1, scope: !557, file: !548, line: 59, type: !560)
!563 = !DILocation(line: 59, column: 1, scope: !557)
!564 = !DILocalVariable(name: "ret", scope: !557, file: !548, line: 59, type: !7)
!565 = !{i32 -2146539268}
