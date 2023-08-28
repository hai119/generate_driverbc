; ModuleID = '../bcout/drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.llvm.bc'
source_filename = "drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.stmmac_dma_ops = type { i32 (i8*)*, void (i8*, %struct.stmmac_dma_cfg*, i32)*, void (i8*, %struct.stmmac_dma_cfg*, i32)*, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)*, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)*, void (i8*, %struct.stmmac_axi*)*, void (i8*, i32*)*, void (i8*, i32, i32, i32, i8)*, void (i8*, i32, i32, i32, i8)*, void (i8*, %struct.stmmac_extra_stats*, i8*)*, void (i8*)*, void (i8*, i32, i1, i1)*, void (i8*, i32, i1, i1)*, void (i8*, i32)*, void (i8*, i32)*, void (i8*, i32)*, void (i8*, i32)*, i32 (i8*, %struct.stmmac_extra_stats*, i32)*, void (i8*, %struct.dma_features*)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i1, i32)*, void (i8*, i32, i8)*, void (i8*, i32, i32)*, void (i8*, i1, i32)*, i32 (i8*, i1, i32)* }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }
%struct.stmmac_extra_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [56 x i8] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dwmac1000_dma_ops = dso_local constant %struct.stmmac_dma_ops { i32 (i8*)* @dwmac_dma_reset, void (i8*, %struct.stmmac_dma_cfg*, i32)* @dwmac1000_dma_init, void (i8*, %struct.stmmac_dma_cfg*, i32)* null, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)* @dwmac1000_dma_init_rx, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)* @dwmac1000_dma_init_tx, void (i8*, %struct.stmmac_axi*)* @dwmac1000_dma_axi, void (i8*, i32*)* @dwmac1000_dump_dma_regs, void (i8*, i32, i32, i32, i8)* @dwmac1000_dma_operation_mode_rx, void (i8*, i32, i32, i32, i8)* @dwmac1000_dma_operation_mode_tx, void (i8*, %struct.stmmac_extra_stats*, i8*)* null, void (i8*)* @dwmac_enable_dma_transmission, void (i8*, i32, i1, i1)* @dwmac_enable_dma_irq, void (i8*, i32, i1, i1)* @dwmac_disable_dma_irq, void (i8*, i32)* @dwmac_dma_start_tx, void (i8*, i32)* @dwmac_dma_stop_tx, void (i8*, i32)* @dwmac_dma_start_rx, void (i8*, i32)* @dwmac_dma_stop_rx, i32 (i8*, %struct.stmmac_extra_stats*, i32)* @dwmac_dma_interrupt, void (i8*, %struct.dma_features*)* @dwmac1000_get_hw_feature, void (i8*, i32, i32)* @dwmac1000_rx_watchdog, void (i8*, i32, i32)* null, void (i8*, i32, i32)* null, void (i8*, i32, i32)* null, void (i8*, i32, i32)* null, void (i8*, i1, i32)* null, void (i8*, i32, i8)* null, void (i8*, i32, i32)* null, void (i8*, i1, i32)* null, i32 (i8*, i1, i32)* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [50 x i8] c"\016dwmac1000: Master AXI performs %s burst length\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"any\00", align 1

; Function Attrs: noredzone
declare dso_local i32 @dwmac_dma_reset(i8*) #0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac1000_dma_init(i8* %ioaddr, %struct.stmmac_dma_cfg* %dma_cfg, i32 %atds) #1 !dbg !330 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cfg.addr = alloca %struct.stmmac_dma_cfg*, align 8
  %atds.addr = alloca i32, align 4
  %value = alloca i32, align 4
  %txpbl = alloca i32, align 4
  %rxpbl = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !332, metadata !DIExpression()), !dbg !333
  store %struct.stmmac_dma_cfg* %dma_cfg, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_dma_cfg** %dma_cfg.addr, metadata !334, metadata !DIExpression()), !dbg !335
  store i32 %atds, i32* %atds.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %atds.addr, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata i32* %value, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !340
  %add.ptr = getelementptr i8, i8* %0, i64 4096, !dbg !341
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !342
  store i32 %call, i32* %value, align 4, !dbg !339
  call void @llvm.dbg.declare(metadata i32* %txpbl, metadata !343, metadata !DIExpression()), !dbg !344
  %1 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !345
  %txpbl1 = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %1, i32 0, i32 1, !dbg !346
  %2 = load i32, i32* %txpbl1, align 4, !dbg !346
  %tobool = icmp ne i32 %2, 0, !dbg !345
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !345

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !345

cond.false:                                       ; preds = %entry
  %3 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !347
  %pbl = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %3, i32 0, i32 0, !dbg !348
  %4 = load i32, i32* %pbl, align 4, !dbg !348
  br label %cond.end, !dbg !345

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %4, %cond.false ], !dbg !345
  store i32 %cond, i32* %txpbl, align 4, !dbg !344
  call void @llvm.dbg.declare(metadata i32* %rxpbl, metadata !349, metadata !DIExpression()), !dbg !350
  %5 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !351
  %rxpbl2 = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %5, i32 0, i32 2, !dbg !352
  %6 = load i32, i32* %rxpbl2, align 4, !dbg !352
  %tobool3 = icmp ne i32 %6, 0, !dbg !351
  br i1 %tobool3, label %cond.true4, label %cond.false5, !dbg !351

cond.true4:                                       ; preds = %cond.end
  br label %cond.end7, !dbg !351

cond.false5:                                      ; preds = %cond.end
  %7 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !353
  %pbl6 = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %7, i32 0, i32 0, !dbg !354
  %8 = load i32, i32* %pbl6, align 4, !dbg !354
  br label %cond.end7, !dbg !351

cond.end7:                                        ; preds = %cond.false5, %cond.true4
  %cond8 = phi i32 [ %6, %cond.true4 ], [ %8, %cond.false5 ], !dbg !351
  store i32 %cond8, i32* %rxpbl, align 4, !dbg !350
  %9 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !355
  %pblx8 = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %9, i32 0, i32 3, !dbg !357
  %10 = load i8, i8* %pblx8, align 4, !dbg !357
  %tobool9 = trunc i8 %10 to i1, !dbg !357
  br i1 %tobool9, label %if.then, label %if.end, !dbg !358

if.then:                                          ; preds = %cond.end7
  %11 = load i32, i32* %value, align 4, !dbg !359
  %or = or i32 %11, 16777216, !dbg !359
  store i32 %or, i32* %value, align 4, !dbg !359
  br label %if.end, !dbg !360

if.end:                                           ; preds = %if.then, %cond.end7
  %12 = load i32, i32* %value, align 4, !dbg !361
  %or10 = or i32 %12, 8388608, !dbg !361
  store i32 %or10, i32* %value, align 4, !dbg !361
  %13 = load i32, i32* %value, align 4, !dbg !362
  %and = and i32 %13, -8273665, !dbg !362
  store i32 %and, i32* %value, align 4, !dbg !362
  %14 = load i32, i32* %txpbl, align 4, !dbg !363
  %shl = shl i32 %14, 8, !dbg !364
  %15 = load i32, i32* %value, align 4, !dbg !365
  %or11 = or i32 %15, %shl, !dbg !365
  store i32 %or11, i32* %value, align 4, !dbg !365
  %16 = load i32, i32* %rxpbl, align 4, !dbg !366
  %shl12 = shl i32 %16, 17, !dbg !367
  %17 = load i32, i32* %value, align 4, !dbg !368
  %or13 = or i32 %17, %shl12, !dbg !368
  store i32 %or13, i32* %value, align 4, !dbg !368
  %18 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !369
  %fixed_burst = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %18, i32 0, i32 4, !dbg !371
  %19 = load i32, i32* %fixed_burst, align 4, !dbg !371
  %tobool14 = icmp ne i32 %19, 0, !dbg !369
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !372

if.then15:                                        ; preds = %if.end
  %20 = load i32, i32* %value, align 4, !dbg !373
  %or16 = or i32 %20, 65536, !dbg !373
  store i32 %or16, i32* %value, align 4, !dbg !373
  br label %if.end17, !dbg !374

if.end17:                                         ; preds = %if.then15, %if.end
  %21 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !375
  %mixed_burst = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %21, i32 0, i32 5, !dbg !377
  %22 = load i32, i32* %mixed_burst, align 4, !dbg !377
  %tobool18 = icmp ne i32 %22, 0, !dbg !375
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !378

if.then19:                                        ; preds = %if.end17
  %23 = load i32, i32* %value, align 4, !dbg !379
  %or20 = or i32 %23, 67108864, !dbg !379
  store i32 %or20, i32* %value, align 4, !dbg !379
  br label %if.end21, !dbg !380

if.end21:                                         ; preds = %if.then19, %if.end17
  %24 = load i32, i32* %atds.addr, align 4, !dbg !381
  %tobool22 = icmp ne i32 %24, 0, !dbg !381
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !383

if.then23:                                        ; preds = %if.end21
  %25 = load i32, i32* %value, align 4, !dbg !384
  %or24 = or i32 %25, 128, !dbg !384
  store i32 %or24, i32* %value, align 4, !dbg !384
  br label %if.end25, !dbg !385

if.end25:                                         ; preds = %if.then23, %if.end21
  %26 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !386
  %aal = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %26, i32 0, i32 6, !dbg !388
  %27 = load i8, i8* %aal, align 4, !dbg !388
  %tobool26 = trunc i8 %27 to i1, !dbg !388
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !389

if.then27:                                        ; preds = %if.end25
  %28 = load i32, i32* %value, align 4, !dbg !390
  %or28 = or i32 %28, 33554432, !dbg !390
  store i32 %or28, i32* %value, align 4, !dbg !390
  br label %if.end29, !dbg !391

if.end29:                                         ; preds = %if.then27, %if.end25
  %29 = load i32, i32* %value, align 4, !dbg !392
  %30 = load i8*, i8** %ioaddr.addr, align 8, !dbg !393
  %add.ptr30 = getelementptr i8, i8* %30, i64 4096, !dbg !394
  call void @writel(i32 %29, i8* %add.ptr30) #4, !dbg !395
  %31 = load i8*, i8** %ioaddr.addr, align 8, !dbg !396
  %add.ptr31 = getelementptr i8, i8* %31, i64 4124, !dbg !397
  call void @writel(i32 106593, i8* %add.ptr31) #4, !dbg !398
  ret void, !dbg !399
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac1000_dma_init_rx(i8* %ioaddr, %struct.stmmac_dma_cfg* %dma_cfg, i64 %dma_rx_phy, i32 %chan) #1 !dbg !400 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cfg.addr = alloca %struct.stmmac_dma_cfg*, align 8
  %dma_rx_phy.addr = alloca i64, align 8
  %chan.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !401, metadata !DIExpression()), !dbg !402
  store %struct.stmmac_dma_cfg* %dma_cfg, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_dma_cfg** %dma_cfg.addr, metadata !403, metadata !DIExpression()), !dbg !404
  store i64 %dma_rx_phy, i64* %dma_rx_phy.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_rx_phy.addr, metadata !405, metadata !DIExpression()), !dbg !406
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !407, metadata !DIExpression()), !dbg !408
  %0 = load i64, i64* %dma_rx_phy.addr, align 8, !dbg !409
  %and = and i64 %0, 4294967295, !dbg !409
  %conv = trunc i64 %and to i32, !dbg !409
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !410
  %add.ptr = getelementptr i8, i8* %1, i64 4108, !dbg !411
  call void @writel(i32 %conv, i8* %add.ptr) #4, !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac1000_dma_init_tx(i8* %ioaddr, %struct.stmmac_dma_cfg* %dma_cfg, i64 %dma_tx_phy, i32 %chan) #1 !dbg !414 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cfg.addr = alloca %struct.stmmac_dma_cfg*, align 8
  %dma_tx_phy.addr = alloca i64, align 8
  %chan.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !415, metadata !DIExpression()), !dbg !416
  store %struct.stmmac_dma_cfg* %dma_cfg, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_dma_cfg** %dma_cfg.addr, metadata !417, metadata !DIExpression()), !dbg !418
  store i64 %dma_tx_phy, i64* %dma_tx_phy.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_tx_phy.addr, metadata !419, metadata !DIExpression()), !dbg !420
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !421, metadata !DIExpression()), !dbg !422
  %0 = load i64, i64* %dma_tx_phy.addr, align 8, !dbg !423
  %and = and i64 %0, 4294967295, !dbg !423
  %conv = trunc i64 %and to i32, !dbg !423
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !424
  %add.ptr = getelementptr i8, i8* %1, i64 4112, !dbg !425
  call void @writel(i32 %conv, i8* %add.ptr) #4, !dbg !426
  ret void, !dbg !427
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac1000_dma_axi(i8* %ioaddr, %struct.stmmac_axi* %axi) #1 !dbg !428 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %axi.addr = alloca %struct.stmmac_axi*, align 8
  %value = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !429, metadata !DIExpression()), !dbg !430
  store %struct.stmmac_axi* %axi, %struct.stmmac_axi** %axi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_axi** %axi.addr, metadata !431, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.declare(metadata i32* %value, metadata !433, metadata !DIExpression()), !dbg !434
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !435
  %add.ptr = getelementptr i8, i8* %0, i64 4136, !dbg !436
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !437
  store i32 %call, i32* %value, align 4, !dbg !434
  call void @llvm.dbg.declare(metadata i32* %i, metadata !438, metadata !DIExpression()), !dbg !439
  %1 = load i32, i32* %value, align 4, !dbg !440
  %conv = zext i32 %1 to i64, !dbg !440
  %and = and i64 %conv, 1, !dbg !440
  %tobool = icmp ne i64 %and, 0, !dbg !440
  %lnot = xor i1 %tobool, true, !dbg !440
  %2 = zext i1 %lnot to i64, !dbg !440
  %cond = select i1 %lnot, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), !dbg !440
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %cond) #5, !dbg !440
  %3 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !441
  %axi_lpi_en = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %3, i32 0, i32 0, !dbg !443
  %4 = load i8, i8* %axi_lpi_en, align 4, !dbg !443
  %tobool2 = trunc i8 %4 to i1, !dbg !443
  br i1 %tobool2, label %if.then, label %if.end, !dbg !444

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %value, align 4, !dbg !445
  %conv3 = zext i32 %5 to i64, !dbg !445
  %or = or i64 %conv3, 2147483648, !dbg !445
  %conv4 = trunc i64 %or to i32, !dbg !445
  store i32 %conv4, i32* %value, align 4, !dbg !445
  br label %if.end, !dbg !446

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !447
  %axi_xit_frm = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %6, i32 0, i32 1, !dbg !449
  %7 = load i8, i8* %axi_xit_frm, align 1, !dbg !449
  %tobool5 = trunc i8 %7 to i1, !dbg !449
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !450

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %value, align 4, !dbg !451
  %conv7 = zext i32 %8 to i64, !dbg !451
  %or8 = or i64 %conv7, 1073741824, !dbg !451
  %conv9 = trunc i64 %or8 to i32, !dbg !451
  store i32 %conv9, i32* %value, align 4, !dbg !451
  br label %if.end10, !dbg !452

if.end10:                                         ; preds = %if.then6, %if.end
  %9 = load i32, i32* %value, align 4, !dbg !453
  %conv11 = zext i32 %9 to i64, !dbg !453
  %and12 = and i64 %conv11, -15728641, !dbg !453
  %conv13 = trunc i64 %and12 to i32, !dbg !453
  store i32 %conv13, i32* %value, align 4, !dbg !453
  %10 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !454
  %axi_wr_osr_lmt = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %10, i32 0, i32 2, !dbg !455
  %11 = load i32, i32* %axi_wr_osr_lmt, align 4, !dbg !455
  %and14 = and i32 %11, 15, !dbg !456
  %shl = shl i32 %and14, 20, !dbg !457
  %12 = load i32, i32* %value, align 4, !dbg !458
  %or15 = or i32 %12, %shl, !dbg !458
  store i32 %or15, i32* %value, align 4, !dbg !458
  %13 = load i32, i32* %value, align 4, !dbg !459
  %conv16 = zext i32 %13 to i64, !dbg !459
  %and17 = and i64 %conv16, -983041, !dbg !459
  %conv18 = trunc i64 %and17 to i32, !dbg !459
  store i32 %conv18, i32* %value, align 4, !dbg !459
  %14 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !460
  %axi_rd_osr_lmt = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %14, i32 0, i32 3, !dbg !461
  %15 = load i32, i32* %axi_rd_osr_lmt, align 4, !dbg !461
  %and19 = and i32 %15, 15, !dbg !462
  %shl20 = shl i32 %and19, 16, !dbg !463
  %16 = load i32, i32* %value, align 4, !dbg !464
  %or21 = or i32 %16, %shl20, !dbg !464
  store i32 %or21, i32* %value, align 4, !dbg !464
  store i32 0, i32* %i, align 4, !dbg !465
  br label %for.cond, !dbg !467

for.cond:                                         ; preds = %for.inc, %if.end10
  %17 = load i32, i32* %i, align 4, !dbg !468
  %cmp = icmp slt i32 %17, 7, !dbg !470
  br i1 %cmp, label %for.body, label %for.end, !dbg !471

for.body:                                         ; preds = %for.cond
  %18 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !472
  %axi_blen = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %18, i32 0, i32 5, !dbg !474
  %19 = load i32, i32* %i, align 4, !dbg !475
  %idxprom = sext i32 %19 to i64, !dbg !472
  %arrayidx = getelementptr [7 x i32], [7 x i32]* %axi_blen, i64 0, i64 %idxprom, !dbg !472
  %20 = load i32, i32* %arrayidx, align 4, !dbg !472
  switch i32 %20, label %sw.epilog [
    i32 256, label %sw.bb
    i32 128, label %sw.bb26
    i32 64, label %sw.bb30
    i32 32, label %sw.bb34
    i32 16, label %sw.bb38
    i32 8, label %sw.bb42
    i32 4, label %sw.bb46
  ], !dbg !476

sw.bb:                                            ; preds = %for.body
  %21 = load i32, i32* %value, align 4, !dbg !477
  %conv23 = zext i32 %21 to i64, !dbg !477
  %or24 = or i64 %conv23, 128, !dbg !477
  %conv25 = trunc i64 %or24 to i32, !dbg !477
  store i32 %conv25, i32* %value, align 4, !dbg !477
  br label %sw.epilog, !dbg !479

sw.bb26:                                          ; preds = %for.body
  %22 = load i32, i32* %value, align 4, !dbg !480
  %conv27 = zext i32 %22 to i64, !dbg !480
  %or28 = or i64 %conv27, 64, !dbg !480
  %conv29 = trunc i64 %or28 to i32, !dbg !480
  store i32 %conv29, i32* %value, align 4, !dbg !480
  br label %sw.epilog, !dbg !481

sw.bb30:                                          ; preds = %for.body
  %23 = load i32, i32* %value, align 4, !dbg !482
  %conv31 = zext i32 %23 to i64, !dbg !482
  %or32 = or i64 %conv31, 32, !dbg !482
  %conv33 = trunc i64 %or32 to i32, !dbg !482
  store i32 %conv33, i32* %value, align 4, !dbg !482
  br label %sw.epilog, !dbg !483

sw.bb34:                                          ; preds = %for.body
  %24 = load i32, i32* %value, align 4, !dbg !484
  %conv35 = zext i32 %24 to i64, !dbg !484
  %or36 = or i64 %conv35, 16, !dbg !484
  %conv37 = trunc i64 %or36 to i32, !dbg !484
  store i32 %conv37, i32* %value, align 4, !dbg !484
  br label %sw.epilog, !dbg !485

sw.bb38:                                          ; preds = %for.body
  %25 = load i32, i32* %value, align 4, !dbg !486
  %conv39 = zext i32 %25 to i64, !dbg !486
  %or40 = or i64 %conv39, 8, !dbg !486
  %conv41 = trunc i64 %or40 to i32, !dbg !486
  store i32 %conv41, i32* %value, align 4, !dbg !486
  br label %sw.epilog, !dbg !487

sw.bb42:                                          ; preds = %for.body
  %26 = load i32, i32* %value, align 4, !dbg !488
  %conv43 = zext i32 %26 to i64, !dbg !488
  %or44 = or i64 %conv43, 4, !dbg !488
  %conv45 = trunc i64 %or44 to i32, !dbg !488
  store i32 %conv45, i32* %value, align 4, !dbg !488
  br label %sw.epilog, !dbg !489

sw.bb46:                                          ; preds = %for.body
  %27 = load i32, i32* %value, align 4, !dbg !490
  %conv47 = zext i32 %27 to i64, !dbg !490
  %or48 = or i64 %conv47, 2, !dbg !490
  %conv49 = trunc i64 %or48 to i32, !dbg !490
  store i32 %conv49, i32* %value, align 4, !dbg !490
  br label %sw.epilog, !dbg !491

sw.epilog:                                        ; preds = %for.body, %sw.bb46, %sw.bb42, %sw.bb38, %sw.bb34, %sw.bb30, %sw.bb26, %sw.bb
  br label %for.inc, !dbg !492

for.inc:                                          ; preds = %sw.epilog
  %28 = load i32, i32* %i, align 4, !dbg !493
  %inc = add i32 %28, 1, !dbg !493
  store i32 %inc, i32* %i, align 4, !dbg !493
  br label %for.cond, !dbg !494, !llvm.loop !495

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %value, align 4, !dbg !497
  %30 = load i8*, i8** %ioaddr.addr, align 8, !dbg !498
  %add.ptr50 = getelementptr i8, i8* %30, i64 4136, !dbg !499
  call void @writel(i32 %29, i8* %add.ptr50) #4, !dbg !500
  ret void, !dbg !501
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac1000_dump_dma_regs(i8* %ioaddr, i32* %reg_space) #1 !dbg !502 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %reg_space.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !503, metadata !DIExpression()), !dbg !504
  store i32* %reg_space, i32** %reg_space.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %reg_space.addr, metadata !505, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.declare(metadata i32* %i, metadata !507, metadata !DIExpression()), !dbg !508
  store i32 0, i32* %i, align 4, !dbg !509
  br label %for.cond, !dbg !511

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !512
  %cmp = icmp slt i32 %0, 23, !dbg !514
  br i1 %cmp, label %for.body, label %for.end, !dbg !515

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !516
  %cmp1 = icmp slt i32 %1, 12, !dbg !518
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !519

lor.lhs.false:                                    ; preds = %for.body
  %2 = load i32, i32* %i, align 4, !dbg !520
  %cmp2 = icmp sgt i32 %2, 17, !dbg !521
  br i1 %cmp2, label %if.then, label %if.end, !dbg !522

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %3 = load i8*, i8** %ioaddr.addr, align 8, !dbg !523
  %add.ptr = getelementptr i8, i8* %3, i64 4096, !dbg !524
  %4 = load i32, i32* %i, align 4, !dbg !525
  %mul = mul i32 %4, 4, !dbg !526
  %idx.ext = sext i32 %mul to i64, !dbg !527
  %add.ptr3 = getelementptr i8, i8* %add.ptr, i64 %idx.ext, !dbg !527
  %call = call i32 @readl(i8* %add.ptr3) #4, !dbg !528
  %5 = load i32*, i32** %reg_space.addr, align 8, !dbg !529
  %6 = load i32, i32* %i, align 4, !dbg !530
  %add = add i32 1024, %6, !dbg !531
  %idxprom = sext i32 %add to i64, !dbg !529
  %arrayidx = getelementptr i32, i32* %5, i64 %idxprom, !dbg !529
  store i32 %call, i32* %arrayidx, align 4, !dbg !532
  br label %if.end, !dbg !529

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc, !dbg !533

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !dbg !534
  %inc = add i32 %7, 1, !dbg !534
  store i32 %inc, i32* %i, align 4, !dbg !534
  br label %for.cond, !dbg !535, !llvm.loop !536

for.end:                                          ; preds = %for.cond
  ret void, !dbg !538
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac1000_dma_operation_mode_rx(i8* %ioaddr, i32 %mode, i32 %channel, i32 %fifosz, i8 zeroext %qmode) #1 !dbg !539 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %fifosz.addr = alloca i32, align 4
  %qmode.addr = alloca i8, align 1
  %csr6 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !540, metadata !DIExpression()), !dbg !541
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !542, metadata !DIExpression()), !dbg !543
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !544, metadata !DIExpression()), !dbg !545
  store i32 %fifosz, i32* %fifosz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fifosz.addr, metadata !546, metadata !DIExpression()), !dbg !547
  store i8 %qmode, i8* %qmode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %qmode.addr, metadata !548, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.declare(metadata i32* %csr6, metadata !550, metadata !DIExpression()), !dbg !551
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !552
  %add.ptr = getelementptr i8, i8* %0, i64 4120, !dbg !553
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !554
  store i32 %call, i32* %csr6, align 4, !dbg !551
  %1 = load i32, i32* %mode.addr, align 4, !dbg !555
  %cmp = icmp eq i32 %1, 1, !dbg !557
  br i1 %cmp, label %if.then, label %if.else, !dbg !558

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !559
  %2 = load i32, i32* %tmp, align 4, !dbg !563
  %3 = load i32, i32* %csr6, align 4, !dbg !564
  %or = or i32 %3, 33554432, !dbg !564
  store i32 %or, i32* %csr6, align 4, !dbg !564
  br label %if.end17, !dbg !565

if.else:                                          ; preds = %entry
  store i32 0, i32* %tmp1, align 4, !dbg !566
  %4 = load i32, i32* %tmp1, align 4, !dbg !570
  %5 = load i32, i32* %csr6, align 4, !dbg !571
  %and = and i32 %5, -33554433, !dbg !571
  store i32 %and, i32* %csr6, align 4, !dbg !571
  %6 = load i32, i32* %csr6, align 4, !dbg !572
  %and2 = and i32 %6, -25, !dbg !572
  store i32 %and2, i32* %csr6, align 4, !dbg !572
  %7 = load i32, i32* %mode.addr, align 4, !dbg !573
  %cmp3 = icmp sle i32 %7, 32, !dbg !575
  br i1 %cmp3, label %if.then4, label %if.else6, !dbg !576

if.then4:                                         ; preds = %if.else
  %8 = load i32, i32* %csr6, align 4, !dbg !577
  %or5 = or i32 %8, 8, !dbg !577
  store i32 %or5, i32* %csr6, align 4, !dbg !577
  br label %if.end16, !dbg !578

if.else6:                                         ; preds = %if.else
  %9 = load i32, i32* %mode.addr, align 4, !dbg !579
  %cmp7 = icmp sle i32 %9, 64, !dbg !581
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !582

if.then8:                                         ; preds = %if.else6
  %10 = load i32, i32* %csr6, align 4, !dbg !583
  store i32 %10, i32* %csr6, align 4, !dbg !583
  br label %if.end15, !dbg !584

if.else9:                                         ; preds = %if.else6
  %11 = load i32, i32* %mode.addr, align 4, !dbg !585
  %cmp10 = icmp sle i32 %11, 96, !dbg !587
  br i1 %cmp10, label %if.then11, label %if.else13, !dbg !588

if.then11:                                        ; preds = %if.else9
  %12 = load i32, i32* %csr6, align 4, !dbg !589
  %or12 = or i32 %12, 16, !dbg !589
  store i32 %or12, i32* %csr6, align 4, !dbg !589
  br label %if.end, !dbg !590

if.else13:                                        ; preds = %if.else9
  %13 = load i32, i32* %csr6, align 4, !dbg !591
  %or14 = or i32 %13, 24, !dbg !591
  store i32 %or14, i32* %csr6, align 4, !dbg !591
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then11
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then8
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then4
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %14 = load i32, i32* %csr6, align 4, !dbg !592
  %15 = load i32, i32* %fifosz.addr, align 4, !dbg !593
  %call18 = call i32 @dwmac1000_configure_fc(i32 %14, i32 %15) #4, !dbg !594
  store i32 %call18, i32* %csr6, align 4, !dbg !595
  %16 = load i32, i32* %csr6, align 4, !dbg !596
  %17 = load i8*, i8** %ioaddr.addr, align 8, !dbg !597
  %add.ptr19 = getelementptr i8, i8* %17, i64 4120, !dbg !598
  call void @writel(i32 %16, i8* %add.ptr19) #4, !dbg !599
  ret void, !dbg !600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac1000_dma_operation_mode_tx(i8* %ioaddr, i32 %mode, i32 %channel, i32 %fifosz, i8 zeroext %qmode) #1 !dbg !601 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %fifosz.addr = alloca i32, align 4
  %qmode.addr = alloca i8, align 1
  %csr6 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !602, metadata !DIExpression()), !dbg !603
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !604, metadata !DIExpression()), !dbg !605
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !606, metadata !DIExpression()), !dbg !607
  store i32 %fifosz, i32* %fifosz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fifosz.addr, metadata !608, metadata !DIExpression()), !dbg !609
  store i8 %qmode, i8* %qmode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %qmode.addr, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata i32* %csr6, metadata !612, metadata !DIExpression()), !dbg !613
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !614
  %add.ptr = getelementptr i8, i8* %0, i64 4120, !dbg !615
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !616
  store i32 %call, i32* %csr6, align 4, !dbg !613
  %1 = load i32, i32* %mode.addr, align 4, !dbg !617
  %cmp = icmp eq i32 %1, 1, !dbg !619
  br i1 %cmp, label %if.then, label %if.else, !dbg !620

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !621
  %2 = load i32, i32* %tmp, align 4, !dbg !625
  %3 = load i32, i32* %csr6, align 4, !dbg !626
  %or = or i32 %3, 2097152, !dbg !626
  store i32 %or, i32* %csr6, align 4, !dbg !626
  %4 = load i32, i32* %csr6, align 4, !dbg !627
  %or1 = or i32 %4, 4, !dbg !627
  store i32 %or1, i32* %csr6, align 4, !dbg !627
  br label %if.end23, !dbg !628

if.else:                                          ; preds = %entry
  store i32 0, i32* %tmp2, align 4, !dbg !629
  %5 = load i32, i32* %tmp2, align 4, !dbg !633
  %6 = load i32, i32* %csr6, align 4, !dbg !634
  %and = and i32 %6, -2097153, !dbg !634
  store i32 %and, i32* %csr6, align 4, !dbg !634
  %7 = load i32, i32* %csr6, align 4, !dbg !635
  %and3 = and i32 %7, -114689, !dbg !635
  store i32 %and3, i32* %csr6, align 4, !dbg !635
  %8 = load i32, i32* %mode.addr, align 4, !dbg !636
  %cmp4 = icmp sle i32 %8, 32, !dbg !638
  br i1 %cmp4, label %if.then5, label %if.else7, !dbg !639

if.then5:                                         ; preds = %if.else
  %9 = load i32, i32* %csr6, align 4, !dbg !640
  %or6 = or i32 %9, 81920, !dbg !640
  store i32 %or6, i32* %csr6, align 4, !dbg !640
  br label %if.end22, !dbg !641

if.else7:                                         ; preds = %if.else
  %10 = load i32, i32* %mode.addr, align 4, !dbg !642
  %cmp8 = icmp sle i32 %10, 64, !dbg !644
  br i1 %cmp8, label %if.then9, label %if.else10, !dbg !645

if.then9:                                         ; preds = %if.else7
  %11 = load i32, i32* %csr6, align 4, !dbg !646
  store i32 %11, i32* %csr6, align 4, !dbg !646
  br label %if.end21, !dbg !647

if.else10:                                        ; preds = %if.else7
  %12 = load i32, i32* %mode.addr, align 4, !dbg !648
  %cmp11 = icmp sle i32 %12, 128, !dbg !650
  br i1 %cmp11, label %if.then12, label %if.else14, !dbg !651

if.then12:                                        ; preds = %if.else10
  %13 = load i32, i32* %csr6, align 4, !dbg !652
  %or13 = or i32 %13, 16384, !dbg !652
  store i32 %or13, i32* %csr6, align 4, !dbg !652
  br label %if.end20, !dbg !653

if.else14:                                        ; preds = %if.else10
  %14 = load i32, i32* %mode.addr, align 4, !dbg !654
  %cmp15 = icmp sle i32 %14, 192, !dbg !656
  br i1 %cmp15, label %if.then16, label %if.else18, !dbg !657

if.then16:                                        ; preds = %if.else14
  %15 = load i32, i32* %csr6, align 4, !dbg !658
  %or17 = or i32 %15, 32768, !dbg !658
  store i32 %or17, i32* %csr6, align 4, !dbg !658
  br label %if.end, !dbg !659

if.else18:                                        ; preds = %if.else14
  %16 = load i32, i32* %csr6, align 4, !dbg !660
  %or19 = or i32 %16, 49152, !dbg !660
  store i32 %or19, i32* %csr6, align 4, !dbg !660
  br label %if.end

if.end:                                           ; preds = %if.else18, %if.then16
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then12
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then9
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then5
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then
  %17 = load i32, i32* %csr6, align 4, !dbg !661
  %18 = load i8*, i8** %ioaddr.addr, align 8, !dbg !662
  %add.ptr24 = getelementptr i8, i8* %18, i64 4120, !dbg !663
  call void @writel(i32 %17, i8* %add.ptr24) #4, !dbg !664
  ret void, !dbg !665
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

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac1000_get_hw_feature(i8* %ioaddr, %struct.dma_features* %dma_cap) #1 !dbg !666 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cap.addr = alloca %struct.dma_features*, align 8
  %hw_cap = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !667, metadata !DIExpression()), !dbg !668
  store %struct.dma_features* %dma_cap, %struct.dma_features** %dma_cap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_features** %dma_cap.addr, metadata !669, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.declare(metadata i32* %hw_cap, metadata !671, metadata !DIExpression()), !dbg !672
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !673
  %add.ptr = getelementptr i8, i8* %0, i64 4184, !dbg !674
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !675
  store i32 %call, i32* %hw_cap, align 4, !dbg !672
  %1 = load i32, i32* %hw_cap, align 4, !dbg !676
  %and = and i32 %1, 1, !dbg !677
  %2 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !678
  %mbps_10_100 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %2, i32 0, i32 0, !dbg !679
  store i32 %and, i32* %mbps_10_100, align 4, !dbg !680
  %3 = load i32, i32* %hw_cap, align 4, !dbg !681
  %and1 = and i32 %3, 2, !dbg !682
  %shr = lshr i32 %and1, 1, !dbg !683
  %4 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !684
  %mbps_1000 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %4, i32 0, i32 1, !dbg !685
  store i32 %shr, i32* %mbps_1000, align 4, !dbg !686
  %5 = load i32, i32* %hw_cap, align 4, !dbg !687
  %and2 = and i32 %5, 4, !dbg !688
  %shr3 = lshr i32 %and2, 2, !dbg !689
  %6 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !690
  %half_duplex = getelementptr inbounds %struct.dma_features, %struct.dma_features* %6, i32 0, i32 2, !dbg !691
  store i32 %shr3, i32* %half_duplex, align 4, !dbg !692
  %7 = load i32, i32* %hw_cap, align 4, !dbg !693
  %and4 = and i32 %7, 16, !dbg !694
  %shr5 = lshr i32 %and4, 4, !dbg !695
  %8 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !696
  %hash_filter = getelementptr inbounds %struct.dma_features, %struct.dma_features* %8, i32 0, i32 3, !dbg !697
  store i32 %shr5, i32* %hash_filter, align 4, !dbg !698
  %9 = load i32, i32* %hw_cap, align 4, !dbg !699
  %and6 = and i32 %9, 32, !dbg !700
  %shr7 = lshr i32 %and6, 5, !dbg !701
  %10 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !702
  %multi_addr = getelementptr inbounds %struct.dma_features, %struct.dma_features* %10, i32 0, i32 4, !dbg !703
  store i32 %shr7, i32* %multi_addr, align 4, !dbg !704
  %11 = load i32, i32* %hw_cap, align 4, !dbg !705
  %and8 = and i32 %11, 64, !dbg !706
  %shr9 = lshr i32 %and8, 6, !dbg !707
  %12 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !708
  %pcs = getelementptr inbounds %struct.dma_features, %struct.dma_features* %12, i32 0, i32 5, !dbg !709
  store i32 %shr9, i32* %pcs, align 4, !dbg !710
  %13 = load i32, i32* %hw_cap, align 4, !dbg !711
  %and10 = and i32 %13, 256, !dbg !712
  %shr11 = lshr i32 %and10, 8, !dbg !713
  %14 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !714
  %sma_mdio = getelementptr inbounds %struct.dma_features, %struct.dma_features* %14, i32 0, i32 6, !dbg !715
  store i32 %shr11, i32* %sma_mdio, align 4, !dbg !716
  %15 = load i32, i32* %hw_cap, align 4, !dbg !717
  %and12 = and i32 %15, 512, !dbg !718
  %shr13 = lshr i32 %and12, 9, !dbg !719
  %16 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !720
  %pmt_remote_wake_up = getelementptr inbounds %struct.dma_features, %struct.dma_features* %16, i32 0, i32 7, !dbg !721
  store i32 %shr13, i32* %pmt_remote_wake_up, align 4, !dbg !722
  %17 = load i32, i32* %hw_cap, align 4, !dbg !723
  %and14 = and i32 %17, 1024, !dbg !724
  %shr15 = lshr i32 %and14, 10, !dbg !725
  %18 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !726
  %pmt_magic_frame = getelementptr inbounds %struct.dma_features, %struct.dma_features* %18, i32 0, i32 8, !dbg !727
  store i32 %shr15, i32* %pmt_magic_frame, align 4, !dbg !728
  %19 = load i32, i32* %hw_cap, align 4, !dbg !729
  %and16 = and i32 %19, 2048, !dbg !730
  %shr17 = lshr i32 %and16, 11, !dbg !731
  %20 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !732
  %rmon = getelementptr inbounds %struct.dma_features, %struct.dma_features* %20, i32 0, i32 9, !dbg !733
  store i32 %shr17, i32* %rmon, align 4, !dbg !734
  %21 = load i32, i32* %hw_cap, align 4, !dbg !735
  %and18 = and i32 %21, 4096, !dbg !736
  %shr19 = lshr i32 %and18, 12, !dbg !737
  %22 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !738
  %time_stamp = getelementptr inbounds %struct.dma_features, %struct.dma_features* %22, i32 0, i32 10, !dbg !739
  store i32 %shr19, i32* %time_stamp, align 4, !dbg !740
  %23 = load i32, i32* %hw_cap, align 4, !dbg !741
  %and20 = and i32 %23, 8192, !dbg !742
  %shr21 = lshr i32 %and20, 13, !dbg !743
  %24 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !744
  %atime_stamp = getelementptr inbounds %struct.dma_features, %struct.dma_features* %24, i32 0, i32 11, !dbg !745
  store i32 %shr21, i32* %atime_stamp, align 4, !dbg !746
  %25 = load i32, i32* %hw_cap, align 4, !dbg !747
  %and22 = and i32 %25, 16384, !dbg !748
  %shr23 = lshr i32 %and22, 14, !dbg !749
  %26 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !750
  %eee = getelementptr inbounds %struct.dma_features, %struct.dma_features* %26, i32 0, i32 12, !dbg !751
  store i32 %shr23, i32* %eee, align 4, !dbg !752
  %27 = load i32, i32* %hw_cap, align 4, !dbg !753
  %and24 = and i32 %27, 32768, !dbg !754
  %shr25 = lshr i32 %and24, 15, !dbg !755
  %28 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !756
  %av = getelementptr inbounds %struct.dma_features, %struct.dma_features* %28, i32 0, i32 13, !dbg !757
  store i32 %shr25, i32* %av, align 4, !dbg !758
  %29 = load i32, i32* %hw_cap, align 4, !dbg !759
  %and26 = and i32 %29, 65536, !dbg !760
  %shr27 = lshr i32 %and26, 16, !dbg !761
  %30 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !762
  %tx_coe = getelementptr inbounds %struct.dma_features, %struct.dma_features* %30, i32 0, i32 16, !dbg !763
  store i32 %shr27, i32* %tx_coe, align 4, !dbg !764
  %31 = load i32, i32* %hw_cap, align 4, !dbg !765
  %and28 = and i32 %31, 131072, !dbg !766
  %shr29 = lshr i32 %and28, 17, !dbg !767
  %32 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !768
  %rx_coe_type1 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %32, i32 0, i32 18, !dbg !769
  store i32 %shr29, i32* %rx_coe_type1, align 4, !dbg !770
  %33 = load i32, i32* %hw_cap, align 4, !dbg !771
  %and30 = and i32 %33, 262144, !dbg !772
  %shr31 = lshr i32 %and30, 18, !dbg !773
  %34 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !774
  %rx_coe_type2 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %34, i32 0, i32 19, !dbg !775
  store i32 %shr31, i32* %rx_coe_type2, align 4, !dbg !776
  %35 = load i32, i32* %hw_cap, align 4, !dbg !777
  %and32 = and i32 %35, 524288, !dbg !778
  %shr33 = lshr i32 %and32, 19, !dbg !779
  %36 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !780
  %rxfifo_over_2048 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %36, i32 0, i32 20, !dbg !781
  store i32 %shr33, i32* %rxfifo_over_2048, align 4, !dbg !782
  %37 = load i32, i32* %hw_cap, align 4, !dbg !783
  %and34 = and i32 %37, 3145728, !dbg !784
  %shr35 = lshr i32 %and34, 20, !dbg !785
  %38 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !786
  %number_rx_channel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %38, i32 0, i32 21, !dbg !787
  store i32 %shr35, i32* %number_rx_channel, align 4, !dbg !788
  %39 = load i32, i32* %hw_cap, align 4, !dbg !789
  %and36 = and i32 %39, 12582912, !dbg !790
  %shr37 = lshr i32 %and36, 22, !dbg !791
  %40 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !792
  %number_tx_channel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %40, i32 0, i32 22, !dbg !793
  store i32 %shr37, i32* %number_tx_channel, align 4, !dbg !794
  %41 = load i32, i32* %hw_cap, align 4, !dbg !795
  %and38 = and i32 %41, 16777216, !dbg !796
  %shr39 = lshr i32 %and38, 24, !dbg !797
  %42 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !798
  %enh_desc = getelementptr inbounds %struct.dma_features, %struct.dma_features* %42, i32 0, i32 26, !dbg !799
  store i32 %shr39, i32* %enh_desc, align 4, !dbg !800
  ret void, !dbg !801
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac1000_rx_watchdog(i8* %ioaddr, i32 %riwt, i32 %number_chan) #1 !dbg !802 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %riwt.addr = alloca i32, align 4
  %number_chan.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !803, metadata !DIExpression()), !dbg !804
  store i32 %riwt, i32* %riwt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %riwt.addr, metadata !805, metadata !DIExpression()), !dbg !806
  store i32 %number_chan, i32* %number_chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %number_chan.addr, metadata !807, metadata !DIExpression()), !dbg !808
  %0 = load i32, i32* %riwt.addr, align 4, !dbg !809
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !810
  %add.ptr = getelementptr i8, i8* %1, i64 4132, !dbg !811
  call void @writel(i32 %0, i8* %add.ptr) #4, !dbg !812
  ret void, !dbg !813
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #1 !dbg !814 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !821, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !823, metadata !DIExpression()), !dbg !822
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !822
  %1 = bitcast i8* %0 to i32*, !dbg !822
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #6, !dbg !822, !srcloc !824
  store i32 %2, i32* %ret, align 4, !dbg !822
  %3 = load i32, i32* %ret, align 4, !dbg !822
  ret i32 %3, !dbg !822
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #1 !dbg !825 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !829, metadata !DIExpression()), !dbg !830
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !831, metadata !DIExpression()), !dbg !830
  %0 = load i32, i32* %val.addr, align 4, !dbg !830
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !830
  %2 = bitcast i8* %1 to i32*, !dbg !830
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #6, !dbg !830, !srcloc !832
  ret void, !dbg !830
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwmac1000_configure_fc(i32 %csr6, i32 %rxfifosz) #1 !dbg !833 {
entry:
  %csr6.addr = alloca i32, align 4
  %rxfifosz.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %csr6, i32* %csr6.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %csr6.addr, metadata !836, metadata !DIExpression()), !dbg !837
  store i32 %rxfifosz, i32* %rxfifosz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rxfifosz.addr, metadata !838, metadata !DIExpression()), !dbg !839
  %0 = load i32, i32* %csr6.addr, align 4, !dbg !840
  %and = and i32 %0, -8390145, !dbg !840
  store i32 %and, i32* %csr6.addr, align 4, !dbg !840
  %1 = load i32, i32* %csr6.addr, align 4, !dbg !841
  %and1 = and i32 %1, -4200449, !dbg !841
  store i32 %and1, i32* %csr6.addr, align 4, !dbg !841
  %2 = load i32, i32* %rxfifosz.addr, align 4, !dbg !842
  %cmp = icmp slt i32 %2, 4096, !dbg !844
  br i1 %cmp, label %if.then, label %if.else, !dbg !845

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %csr6.addr, align 4, !dbg !846
  %and2 = and i32 %3, -257, !dbg !846
  store i32 %and2, i32* %csr6.addr, align 4, !dbg !846
  store i32 0, i32* %tmp, align 4, !dbg !848
  %4 = load i32, i32* %tmp, align 4, !dbg !851
  br label %if.end, !dbg !852

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %csr6.addr, align 4, !dbg !853
  %or = or i32 %5, 256, !dbg !853
  store i32 %or, i32* %csr6.addr, align 4, !dbg !853
  %6 = load i32, i32* %csr6.addr, align 4, !dbg !855
  store i32 %6, i32* %csr6.addr, align 4, !dbg !855
  %7 = load i32, i32* %csr6.addr, align 4, !dbg !856
  %or3 = or i32 %7, 2048, !dbg !856
  store i32 %or3, i32* %csr6.addr, align 4, !dbg !856
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %csr6.addr, align 4, !dbg !857
  ret i32 %8, !dbg !858
}

attributes #0 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { cold noredzone }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!325, !326, !327, !328}
!llvm.ident = !{!329}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dwmac1000_dma_ops", scope: !2, file: !3, line: 263, type: !32, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtc_control", file: !6, line: 315, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/dwmac1000.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "DMA_CONTROL_RTC_64", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "DMA_CONTROL_RTC_32", value: 8, isUnsigned: true)
!11 = !DIEnumerator(name: "DMA_CONTROL_RTC_96", value: 16, isUnsigned: true)
!12 = !DIEnumerator(name: "DMA_CONTROL_RTC_128", value: 24, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttc_control", file: !6, line: 249, baseType: !7, size: 32, elements: !14)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22}
!15 = !DIEnumerator(name: "DMA_CONTROL_TTC_64", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "DMA_CONTROL_TTC_128", value: 16384, isUnsigned: true)
!17 = !DIEnumerator(name: "DMA_CONTROL_TTC_192", value: 32768, isUnsigned: true)
!18 = !DIEnumerator(name: "DMA_CONTROL_TTC_256", value: 49152, isUnsigned: true)
!19 = !DIEnumerator(name: "DMA_CONTROL_TTC_40", value: 65536, isUnsigned: true)
!20 = !DIEnumerator(name: "DMA_CONTROL_TTC_32", value: 81920, isUnsigned: true)
!21 = !DIEnumerator(name: "DMA_CONTROL_TTC_24", value: 98304, isUnsigned: true)
!22 = !DIEnumerator(name: "DMA_CONTROL_TTC_16", value: 114688, isUnsigned: true)
!23 = !{!24, !26, !30}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !27, line: 21, baseType: !28)
!27 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !29, line: 27, baseType: !7)
!29 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !{!0}
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_dma_ops", file: !34, line: 169, size: 1856, elements: !35)
!34 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/hwif.h", directory: "/home/lizy2001/genbc/linux")
!35 = !{!36, !41, !60, !64, !72, !73, !92, !97, !104, !105, !227, !231, !235, !236, !240, !241, !242, !243, !247, !300, !304, !305, !306, !307, !308, !312, !316, !320, !321}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !33, file: !34, line: 171, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!30, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !33, file: !34, line: 172, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !40, !45, !30}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_dma_cfg", file: !47, line: 89, size: 224, elements: !48)
!47 = !DIFile(filename: "./include/linux/stmmac.h", directory: "/home/lizy2001/genbc/linux")
!48 = !{!49, !50, !51, !52, !56, !57, !58, !59}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "pbl", scope: !46, file: !47, line: 90, baseType: !30, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "txpbl", scope: !46, file: !47, line: 91, baseType: !30, size: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "rxpbl", scope: !46, file: !47, line: 92, baseType: !30, size: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "pblx8", scope: !46, file: !47, line: 93, baseType: !53, size: 8, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !54, line: 30, baseType: !55)
!54 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!55 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_burst", scope: !46, file: !47, line: 94, baseType: !30, size: 32, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_burst", scope: !46, file: !47, line: 95, baseType: !30, size: 32, offset: 160)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "aal", scope: !46, file: !47, line: 96, baseType: !53, size: 8, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "eame", scope: !46, file: !47, line: 97, baseType: !53, size: 8, offset: 200)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "init_chan", scope: !33, file: !34, line: 174, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !40, !45, !26}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "init_rx_chan", scope: !33, file: !34, line: 176, baseType: !65, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !40, !45, !68, !26}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !54, line: 143, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !27, line: 23, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !29, line: 31, baseType: !71)
!71 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "init_tx_chan", scope: !33, file: !34, line: 179, baseType: !65, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "axi", scope: !33, file: !34, line: 183, baseType: !74, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !40, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_axi", file: !47, line: 101, size: 384, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !89, !90, !91}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "axi_lpi_en", scope: !78, file: !47, line: 102, baseType: !53, size: 8)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "axi_xit_frm", scope: !78, file: !47, line: 103, baseType: !53, size: 8, offset: 8)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "axi_wr_osr_lmt", scope: !78, file: !47, line: 104, baseType: !26, size: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "axi_rd_osr_lmt", scope: !78, file: !47, line: 105, baseType: !26, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "axi_kbbe", scope: !78, file: !47, line: 106, baseType: !53, size: 8, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "axi_blen", scope: !78, file: !47, line: 107, baseType: !86, size: 224, offset: 128)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 224, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 7)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "axi_fb", scope: !78, file: !47, line: 108, baseType: !53, size: 8, offset: 352)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "axi_mb", scope: !78, file: !47, line: 109, baseType: !53, size: 8, offset: 360)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "axi_rb", scope: !78, file: !47, line: 110, baseType: !53, size: 8, offset: 368)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "dump_regs", scope: !33, file: !34, line: 185, baseType: !93, size: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !40, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "dma_rx_mode", scope: !33, file: !34, line: 186, baseType: !98, size: 64, offset: 448)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !40, !30, !26, !30, !101}
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !27, line: 17, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !29, line: 21, baseType: !103)
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "dma_tx_mode", scope: !33, file: !34, line: 188, baseType: !98, size: 64, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "dma_diagnostic_fr", scope: !33, file: !34, line: 191, baseType: !106, size: 64, offset: 576)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !40, !109, !40}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_extra_stats", file: !111, line: 61, size: 7680, elements: !112)
!111 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/common.h", directory: "/home/lizy2001/genbc/linux")
!112 = !{!113, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tx_underflow", scope: !110, file: !111, line: 63, baseType: !114, size: 64, align: 512)
!114 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tx_carrier", scope: !110, file: !111, line: 64, baseType: !114, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tx_losscarrier", scope: !110, file: !111, line: 65, baseType: !114, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag", scope: !110, file: !111, line: 66, baseType: !114, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tx_deferred", scope: !110, file: !111, line: 67, baseType: !114, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tx_vlan", scope: !110, file: !111, line: 68, baseType: !114, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber", scope: !110, file: !111, line: 69, baseType: !114, size: 64, offset: 384)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tx_frame_flushed", scope: !110, file: !111, line: 70, baseType: !114, size: 64, offset: 448)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tx_payload_error", scope: !110, file: !111, line: 71, baseType: !114, size: 64, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ip_header_error", scope: !110, file: !111, line: 72, baseType: !114, size: 64, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "rx_desc", scope: !110, file: !111, line: 74, baseType: !114, size: 64, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sa_filter_fail", scope: !110, file: !111, line: 75, baseType: !114, size: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_error", scope: !110, file: !111, line: 76, baseType: !114, size: 64, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_csum_error", scope: !110, file: !111, line: 77, baseType: !114, size: 64, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "rx_collision", scope: !110, file: !111, line: 78, baseType: !114, size: 64, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "rx_crc_errors", scope: !110, file: !111, line: 79, baseType: !114, size: 64, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dribbling_bit", scope: !110, file: !111, line: 80, baseType: !114, size: 64, offset: 1024)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "rx_length", scope: !110, file: !111, line: 81, baseType: !114, size: 64, offset: 1088)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "rx_mii", scope: !110, file: !111, line: 82, baseType: !114, size: 64, offset: 1152)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "rx_multicast", scope: !110, file: !111, line: 83, baseType: !114, size: 64, offset: 1216)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "rx_gmac_overflow", scope: !110, file: !111, line: 84, baseType: !114, size: 64, offset: 1280)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog", scope: !110, file: !111, line: 85, baseType: !114, size: 64, offset: 1344)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "da_rx_filter_fail", scope: !110, file: !111, line: 86, baseType: !114, size: 64, offset: 1408)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sa_rx_filter_fail", scope: !110, file: !111, line: 87, baseType: !114, size: 64, offset: 1472)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "rx_missed_cntr", scope: !110, file: !111, line: 88, baseType: !114, size: 64, offset: 1536)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_cntr", scope: !110, file: !111, line: 89, baseType: !114, size: 64, offset: 1600)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "rx_vlan", scope: !110, file: !111, line: 90, baseType: !114, size: 64, offset: 1664)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "rx_split_hdr_pkt_n", scope: !110, file: !111, line: 91, baseType: !114, size: 64, offset: 1728)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "tx_undeflow_irq", scope: !110, file: !111, line: 93, baseType: !114, size: 64, offset: 1792)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tx_process_stopped_irq", scope: !110, file: !111, line: 94, baseType: !114, size: 64, offset: 1856)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber_irq", scope: !110, file: !111, line: 95, baseType: !114, size: 64, offset: 1920)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_irq", scope: !110, file: !111, line: 96, baseType: !114, size: 64, offset: 1984)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_unav_irq", scope: !110, file: !111, line: 97, baseType: !114, size: 64, offset: 2048)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rx_process_stopped_irq", scope: !110, file: !111, line: 98, baseType: !114, size: 64, offset: 2112)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog_irq", scope: !110, file: !111, line: 99, baseType: !114, size: 64, offset: 2176)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tx_early_irq", scope: !110, file: !111, line: 100, baseType: !114, size: 64, offset: 2240)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_bus_error_irq", scope: !110, file: !111, line: 101, baseType: !114, size: 64, offset: 2304)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "rx_early_irq", scope: !110, file: !111, line: 103, baseType: !114, size: 64, offset: 2368)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !110, file: !111, line: 104, baseType: !114, size: 64, offset: 2432)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "tx_pkt_n", scope: !110, file: !111, line: 105, baseType: !114, size: 64, offset: 2496)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rx_pkt_n", scope: !110, file: !111, line: 106, baseType: !114, size: 64, offset: 2560)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "normal_irq_n", scope: !110, file: !111, line: 107, baseType: !114, size: 64, offset: 2624)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rx_normal_irq_n", scope: !110, file: !111, line: 108, baseType: !114, size: 64, offset: 2688)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "napi_poll", scope: !110, file: !111, line: 109, baseType: !114, size: 64, offset: 2752)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tx_normal_irq_n", scope: !110, file: !111, line: 110, baseType: !114, size: 64, offset: 2816)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "tx_clean", scope: !110, file: !111, line: 111, baseType: !114, size: 64, offset: 2880)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tx_set_ic_bit", scope: !110, file: !111, line: 112, baseType: !114, size: 64, offset: 2944)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "irq_receive_pmt_irq_n", scope: !110, file: !111, line: 113, baseType: !114, size: 64, offset: 3008)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_irq_n", scope: !110, file: !111, line: 115, baseType: !114, size: 64, offset: 3072)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_irq_n", scope: !110, file: !111, line: 116, baseType: !114, size: 64, offset: 3136)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_csum_offload_irq_n", scope: !110, file: !111, line: 117, baseType: !114, size: 64, offset: 3200)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_in_lpi_mode_n", scope: !110, file: !111, line: 119, baseType: !114, size: 64, offset: 3264)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_exit_lpi_mode_n", scope: !110, file: !111, line: 120, baseType: !114, size: 64, offset: 3328)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_in_lpi_mode_n", scope: !110, file: !111, line: 121, baseType: !114, size: 64, offset: 3392)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_exit_lpi_mode_n", scope: !110, file: !111, line: 122, baseType: !114, size: 64, offset: 3456)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "phy_eee_wakeup_error_n", scope: !110, file: !111, line: 123, baseType: !114, size: 64, offset: 3520)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hdr_err", scope: !110, file: !111, line: 125, baseType: !114, size: 64, offset: 3584)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ip_payload_err", scope: !110, file: !111, line: 126, baseType: !114, size: 64, offset: 3648)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ip_csum_bypassed", scope: !110, file: !111, line: 127, baseType: !114, size: 64, offset: 3712)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_pkt_rcvd", scope: !110, file: !111, line: 128, baseType: !114, size: 64, offset: 3776)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_pkt_rcvd", scope: !110, file: !111, line: 129, baseType: !114, size: 64, offset: 3840)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "no_ptp_rx_msg_type_ext", scope: !110, file: !111, line: 130, baseType: !114, size: 64, offset: 3904)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_sync", scope: !110, file: !111, line: 131, baseType: !114, size: 64, offset: 3968)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_follow_up", scope: !110, file: !111, line: 132, baseType: !114, size: 64, offset: 4032)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_req", scope: !110, file: !111, line: 133, baseType: !114, size: 64, offset: 4096)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_resp", scope: !110, file: !111, line: 134, baseType: !114, size: 64, offset: 4160)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_req", scope: !110, file: !111, line: 135, baseType: !114, size: 64, offset: 4224)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_resp", scope: !110, file: !111, line: 136, baseType: !114, size: 64, offset: 4288)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_follow_up", scope: !110, file: !111, line: 137, baseType: !114, size: 64, offset: 4352)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_announce", scope: !110, file: !111, line: 138, baseType: !114, size: 64, offset: 4416)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_management", scope: !110, file: !111, line: 139, baseType: !114, size: 64, offset: 4480)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_pkt_reserved_type", scope: !110, file: !111, line: 140, baseType: !114, size: 64, offset: 4544)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_frame_type", scope: !110, file: !111, line: 141, baseType: !114, size: 64, offset: 4608)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_ver", scope: !110, file: !111, line: 142, baseType: !114, size: 64, offset: 4672)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp_dropped", scope: !110, file: !111, line: 143, baseType: !114, size: 64, offset: 4736)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "av_pkt_rcvd", scope: !110, file: !111, line: 144, baseType: !114, size: 64, offset: 4800)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "av_tagged_pkt_rcvd", scope: !110, file: !111, line: 145, baseType: !114, size: 64, offset: 4864)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag_priority_val", scope: !110, file: !111, line: 146, baseType: !114, size: 64, offset: 4928)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "l3_filter_match", scope: !110, file: !111, line: 147, baseType: !114, size: 64, offset: 4992)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "l4_filter_match", scope: !110, file: !111, line: 148, baseType: !114, size: 64, offset: 5056)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "l3_l4_filter_no_match", scope: !110, file: !111, line: 149, baseType: !114, size: 64, offset: 5120)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_ane_n", scope: !110, file: !111, line: 151, baseType: !114, size: 64, offset: 5184)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_link_n", scope: !110, file: !111, line: 152, baseType: !114, size: 64, offset: 5248)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rgmii_n", scope: !110, file: !111, line: 153, baseType: !114, size: 64, offset: 5312)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_link", scope: !110, file: !111, line: 154, baseType: !114, size: 64, offset: 5376)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_duplex", scope: !110, file: !111, line: 155, baseType: !114, size: 64, offset: 5440)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_speed", scope: !110, file: !111, line: 156, baseType: !114, size: 64, offset: 5504)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_status_fifo_full", scope: !110, file: !111, line: 158, baseType: !114, size: 64, offset: 5568)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_not_empty", scope: !110, file: !111, line: 159, baseType: !114, size: 64, offset: 5632)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "mmtl_fifo_ctrl", scope: !110, file: !111, line: 160, baseType: !114, size: 64, offset: 5696)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_write", scope: !110, file: !111, line: 161, baseType: !114, size: 64, offset: 5760)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_wait", scope: !110, file: !111, line: 162, baseType: !114, size: 64, offset: 5824)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_read", scope: !110, file: !111, line: 163, baseType: !114, size: 64, offset: 5888)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_idle", scope: !110, file: !111, line: 164, baseType: !114, size: 64, offset: 5952)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_in_pause", scope: !110, file: !111, line: 165, baseType: !114, size: 64, offset: 6016)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_xfer", scope: !110, file: !111, line: 166, baseType: !114, size: 64, offset: 6080)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_idle", scope: !110, file: !111, line: 167, baseType: !114, size: 64, offset: 6144)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_wait", scope: !110, file: !111, line: 168, baseType: !114, size: 64, offset: 6208)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_pause", scope: !110, file: !111, line: 169, baseType: !114, size: 64, offset: 6272)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_tx_proto_engine", scope: !110, file: !111, line: 170, baseType: !114, size: 64, offset: 6336)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_full", scope: !110, file: !111, line: 171, baseType: !114, size: 64, offset: 6400)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_above_thresh", scope: !110, file: !111, line: 172, baseType: !114, size: 64, offset: 6464)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_below_thresh", scope: !110, file: !111, line: 173, baseType: !114, size: 64, offset: 6528)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_empty", scope: !110, file: !111, line: 174, baseType: !114, size: 64, offset: 6592)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_flush", scope: !110, file: !111, line: 175, baseType: !114, size: 64, offset: 6656)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_read_data", scope: !110, file: !111, line: 176, baseType: !114, size: 64, offset: 6720)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_status", scope: !110, file: !111, line: 177, baseType: !114, size: 64, offset: 6784)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_idle", scope: !110, file: !111, line: 178, baseType: !114, size: 64, offset: 6848)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_ctrl_active", scope: !110, file: !111, line: 179, baseType: !114, size: 64, offset: 6912)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mac_rx_frame_ctrl_fifo", scope: !110, file: !111, line: 180, baseType: !114, size: 64, offset: 6976)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_rx_proto_engine", scope: !110, file: !111, line: 181, baseType: !114, size: 64, offset: 7040)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_frames", scope: !110, file: !111, line: 183, baseType: !114, size: 64, offset: 7104)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_nfrags", scope: !110, file: !111, line: 184, baseType: !114, size: 64, offset: 7168)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "enable_dma_transmission", scope: !33, file: !34, line: 193, baseType: !228, size: 64, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !40}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "enable_dma_irq", scope: !33, file: !34, line: 194, baseType: !232, size: 64, offset: 704)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !40, !26, !53, !53}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "disable_dma_irq", scope: !33, file: !34, line: 196, baseType: !232, size: 64, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "start_tx", scope: !33, file: !34, line: 198, baseType: !237, size: 64, offset: 832)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !40, !26}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "stop_tx", scope: !33, file: !34, line: 199, baseType: !237, size: 64, offset: 896)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "start_rx", scope: !33, file: !34, line: 200, baseType: !237, size: 64, offset: 960)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "stop_rx", scope: !33, file: !34, line: 201, baseType: !237, size: 64, offset: 1024)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dma_interrupt", scope: !33, file: !34, line: 202, baseType: !244, size: 64, offset: 1088)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!30, !40, !109, !26}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "get_hw_feature", scope: !33, file: !34, line: 205, baseType: !248, size: 64, offset: 1152)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !40, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_features", file: !111, line: 326, size: 1472, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "mbps_10_100", scope: !252, file: !111, line: 327, baseType: !7, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "mbps_1000", scope: !252, file: !111, line: 328, baseType: !7, size: 32, offset: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "half_duplex", scope: !252, file: !111, line: 329, baseType: !7, size: 32, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "hash_filter", scope: !252, file: !111, line: 330, baseType: !7, size: 32, offset: 96)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "multi_addr", scope: !252, file: !111, line: 331, baseType: !7, size: 32, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "pcs", scope: !252, file: !111, line: 332, baseType: !7, size: 32, offset: 160)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "sma_mdio", scope: !252, file: !111, line: 333, baseType: !7, size: 32, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pmt_remote_wake_up", scope: !252, file: !111, line: 334, baseType: !7, size: 32, offset: 224)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pmt_magic_frame", scope: !252, file: !111, line: 335, baseType: !7, size: 32, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rmon", scope: !252, file: !111, line: 336, baseType: !7, size: 32, offset: 288)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "time_stamp", scope: !252, file: !111, line: 338, baseType: !7, size: 32, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "atime_stamp", scope: !252, file: !111, line: 340, baseType: !7, size: 32, offset: 352)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "eee", scope: !252, file: !111, line: 342, baseType: !7, size: 32, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "av", scope: !252, file: !111, line: 343, baseType: !7, size: 32, offset: 416)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "hash_tb_sz", scope: !252, file: !111, line: 344, baseType: !7, size: 32, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tsoen", scope: !252, file: !111, line: 345, baseType: !7, size: 32, offset: 480)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tx_coe", scope: !252, file: !111, line: 347, baseType: !7, size: 32, offset: 512)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rx_coe", scope: !252, file: !111, line: 348, baseType: !7, size: 32, offset: 544)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "rx_coe_type1", scope: !252, file: !111, line: 349, baseType: !7, size: 32, offset: 576)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rx_coe_type2", scope: !252, file: !111, line: 350, baseType: !7, size: 32, offset: 608)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "rxfifo_over_2048", scope: !252, file: !111, line: 351, baseType: !7, size: 32, offset: 640)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "number_rx_channel", scope: !252, file: !111, line: 353, baseType: !7, size: 32, offset: 672)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "number_tx_channel", scope: !252, file: !111, line: 354, baseType: !7, size: 32, offset: 704)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "number_rx_queues", scope: !252, file: !111, line: 356, baseType: !7, size: 32, offset: 736)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "number_tx_queues", scope: !252, file: !111, line: 357, baseType: !7, size: 32, offset: 768)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "pps_out_num", scope: !252, file: !111, line: 359, baseType: !7, size: 32, offset: 800)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "enh_desc", scope: !252, file: !111, line: 361, baseType: !7, size: 32, offset: 832)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !252, file: !111, line: 363, baseType: !7, size: 32, offset: 864)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !252, file: !111, line: 364, baseType: !7, size: 32, offset: 896)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "asp", scope: !252, file: !111, line: 366, baseType: !7, size: 32, offset: 928)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "frpsel", scope: !252, file: !111, line: 368, baseType: !7, size: 32, offset: 960)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "frpbs", scope: !252, file: !111, line: 369, baseType: !7, size: 32, offset: 992)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "frpes", scope: !252, file: !111, line: 370, baseType: !7, size: 32, offset: 1024)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "addr64", scope: !252, file: !111, line: 371, baseType: !7, size: 32, offset: 1056)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "rssen", scope: !252, file: !111, line: 372, baseType: !7, size: 32, offset: 1088)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "vlhash", scope: !252, file: !111, line: 373, baseType: !7, size: 32, offset: 1120)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "sphen", scope: !252, file: !111, line: 374, baseType: !7, size: 32, offset: 1152)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "vlins", scope: !252, file: !111, line: 375, baseType: !7, size: 32, offset: 1184)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "dvlan", scope: !252, file: !111, line: 376, baseType: !7, size: 32, offset: 1216)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "l3l4fnum", scope: !252, file: !111, line: 377, baseType: !7, size: 32, offset: 1248)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "arpoffsel", scope: !252, file: !111, line: 378, baseType: !7, size: 32, offset: 1280)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "estwid", scope: !252, file: !111, line: 380, baseType: !7, size: 32, offset: 1312)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "estdep", scope: !252, file: !111, line: 381, baseType: !7, size: 32, offset: 1344)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "estsel", scope: !252, file: !111, line: 382, baseType: !7, size: 32, offset: 1376)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "fpesel", scope: !252, file: !111, line: 383, baseType: !7, size: 32, offset: 1408)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tbssel", scope: !252, file: !111, line: 384, baseType: !7, size: 32, offset: 1440)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog", scope: !33, file: !34, line: 208, baseType: !301, size: 64, offset: 1216)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !40, !26, !26}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "set_tx_ring_len", scope: !33, file: !34, line: 209, baseType: !301, size: 64, offset: 1280)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "set_rx_ring_len", scope: !33, file: !34, line: 210, baseType: !301, size: 64, offset: 1344)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "set_rx_tail_ptr", scope: !33, file: !34, line: 211, baseType: !301, size: 64, offset: 1408)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "set_tx_tail_ptr", scope: !33, file: !34, line: 212, baseType: !301, size: 64, offset: 1472)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "enable_tso", scope: !33, file: !34, line: 213, baseType: !309, size: 64, offset: 1536)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !40, !53, !26}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "qmode", scope: !33, file: !34, line: 214, baseType: !313, size: 64, offset: 1600)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !40, !26, !101}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "set_bfsize", scope: !33, file: !34, line: 215, baseType: !317, size: 64, offset: 1664)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !40, !30, !26}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "enable_sph", scope: !33, file: !34, line: 216, baseType: !309, size: 64, offset: 1728)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "enable_tbs", scope: !33, file: !34, line: 217, baseType: !322, size: 64, offset: 1792)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!30, !40, !53, !26}
!325 = !{i32 7, !"Dwarf Version", i32 4}
!326 = !{i32 2, !"Debug Info Version", i32 3}
!327 = !{i32 1, !"wchar_size", i32 2}
!328 = !{i32 1, !"Code Model", i32 2}
!329 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!330 = distinct !DISubprogram(name: "dwmac1000_dma_init", scope: !3, file: !3, line: 73, type: !43, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !331)
!331 = !{}
!332 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !330, file: !3, line: 73, type: !40)
!333 = !DILocation(line: 73, column: 46, scope: !330)
!334 = !DILocalVariable(name: "dma_cfg", arg: 2, scope: !330, file: !3, line: 74, type: !45)
!335 = !DILocation(line: 74, column: 34, scope: !330)
!336 = !DILocalVariable(name: "atds", arg: 3, scope: !330, file: !3, line: 74, type: !30)
!337 = !DILocation(line: 74, column: 47, scope: !330)
!338 = !DILocalVariable(name: "value", scope: !330, file: !3, line: 76, type: !26)
!339 = !DILocation(line: 76, column: 6, scope: !330)
!340 = !DILocation(line: 76, column: 20, scope: !330)
!341 = !DILocation(line: 76, column: 27, scope: !330)
!342 = !DILocation(line: 76, column: 14, scope: !330)
!343 = !DILocalVariable(name: "txpbl", scope: !330, file: !3, line: 77, type: !30)
!344 = !DILocation(line: 77, column: 6, scope: !330)
!345 = !DILocation(line: 77, column: 14, scope: !330)
!346 = !DILocation(line: 77, column: 23, scope: !330)
!347 = !DILocation(line: 77, column: 32, scope: !330)
!348 = !DILocation(line: 77, column: 41, scope: !330)
!349 = !DILocalVariable(name: "rxpbl", scope: !330, file: !3, line: 78, type: !30)
!350 = !DILocation(line: 78, column: 6, scope: !330)
!351 = !DILocation(line: 78, column: 14, scope: !330)
!352 = !DILocation(line: 78, column: 23, scope: !330)
!353 = !DILocation(line: 78, column: 32, scope: !330)
!354 = !DILocation(line: 78, column: 41, scope: !330)
!355 = !DILocation(line: 86, column: 6, scope: !356)
!356 = distinct !DILexicalBlock(scope: !330, file: !3, line: 86, column: 6)
!357 = !DILocation(line: 86, column: 15, scope: !356)
!358 = !DILocation(line: 86, column: 6, scope: !330)
!359 = !DILocation(line: 87, column: 9, scope: !356)
!360 = !DILocation(line: 87, column: 3, scope: !356)
!361 = !DILocation(line: 88, column: 8, scope: !330)
!362 = !DILocation(line: 89, column: 8, scope: !330)
!363 = !DILocation(line: 90, column: 12, scope: !330)
!364 = !DILocation(line: 90, column: 18, scope: !330)
!365 = !DILocation(line: 90, column: 8, scope: !330)
!366 = !DILocation(line: 91, column: 12, scope: !330)
!367 = !DILocation(line: 91, column: 18, scope: !330)
!368 = !DILocation(line: 91, column: 8, scope: !330)
!369 = !DILocation(line: 94, column: 6, scope: !370)
!370 = distinct !DILexicalBlock(scope: !330, file: !3, line: 94, column: 6)
!371 = !DILocation(line: 94, column: 15, scope: !370)
!372 = !DILocation(line: 94, column: 6, scope: !330)
!373 = !DILocation(line: 95, column: 9, scope: !370)
!374 = !DILocation(line: 95, column: 3, scope: !370)
!375 = !DILocation(line: 98, column: 6, scope: !376)
!376 = distinct !DILexicalBlock(scope: !330, file: !3, line: 98, column: 6)
!377 = !DILocation(line: 98, column: 15, scope: !376)
!378 = !DILocation(line: 98, column: 6, scope: !330)
!379 = !DILocation(line: 99, column: 9, scope: !376)
!380 = !DILocation(line: 99, column: 3, scope: !376)
!381 = !DILocation(line: 101, column: 6, scope: !382)
!382 = distinct !DILexicalBlock(scope: !330, file: !3, line: 101, column: 6)
!383 = !DILocation(line: 101, column: 6, scope: !330)
!384 = !DILocation(line: 102, column: 9, scope: !382)
!385 = !DILocation(line: 102, column: 3, scope: !382)
!386 = !DILocation(line: 104, column: 6, scope: !387)
!387 = distinct !DILexicalBlock(scope: !330, file: !3, line: 104, column: 6)
!388 = !DILocation(line: 104, column: 15, scope: !387)
!389 = !DILocation(line: 104, column: 6, scope: !330)
!390 = !DILocation(line: 105, column: 9, scope: !387)
!391 = !DILocation(line: 105, column: 3, scope: !387)
!392 = !DILocation(line: 107, column: 9, scope: !330)
!393 = !DILocation(line: 107, column: 16, scope: !330)
!394 = !DILocation(line: 107, column: 23, scope: !330)
!395 = !DILocation(line: 107, column: 2, scope: !330)
!396 = !DILocation(line: 110, column: 32, scope: !330)
!397 = !DILocation(line: 110, column: 39, scope: !330)
!398 = !DILocation(line: 110, column: 2, scope: !330)
!399 = !DILocation(line: 111, column: 1, scope: !330)
!400 = distinct !DISubprogram(name: "dwmac1000_dma_init_rx", scope: !3, file: !3, line: 113, type: !66, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !331)
!401 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !400, file: !3, line: 113, type: !40)
!402 = !DILocation(line: 113, column: 49, scope: !400)
!403 = !DILocalVariable(name: "dma_cfg", arg: 2, scope: !400, file: !3, line: 114, type: !45)
!404 = !DILocation(line: 114, column: 30, scope: !400)
!405 = !DILocalVariable(name: "dma_rx_phy", arg: 3, scope: !400, file: !3, line: 115, type: !68)
!406 = !DILocation(line: 115, column: 18, scope: !400)
!407 = !DILocalVariable(name: "chan", arg: 4, scope: !400, file: !3, line: 115, type: !26)
!408 = !DILocation(line: 115, column: 34, scope: !400)
!409 = !DILocation(line: 118, column: 9, scope: !400)
!410 = !DILocation(line: 118, column: 36, scope: !400)
!411 = !DILocation(line: 118, column: 43, scope: !400)
!412 = !DILocation(line: 118, column: 2, scope: !400)
!413 = !DILocation(line: 119, column: 1, scope: !400)
!414 = distinct !DISubprogram(name: "dwmac1000_dma_init_tx", scope: !3, file: !3, line: 121, type: !66, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !331)
!415 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !414, file: !3, line: 121, type: !40)
!416 = !DILocation(line: 121, column: 49, scope: !414)
!417 = !DILocalVariable(name: "dma_cfg", arg: 2, scope: !414, file: !3, line: 122, type: !45)
!418 = !DILocation(line: 122, column: 30, scope: !414)
!419 = !DILocalVariable(name: "dma_tx_phy", arg: 3, scope: !414, file: !3, line: 123, type: !68)
!420 = !DILocation(line: 123, column: 18, scope: !414)
!421 = !DILocalVariable(name: "chan", arg: 4, scope: !414, file: !3, line: 123, type: !26)
!422 = !DILocation(line: 123, column: 34, scope: !414)
!423 = !DILocation(line: 126, column: 9, scope: !414)
!424 = !DILocation(line: 126, column: 36, scope: !414)
!425 = !DILocation(line: 126, column: 43, scope: !414)
!426 = !DILocation(line: 126, column: 2, scope: !414)
!427 = !DILocation(line: 127, column: 1, scope: !414)
!428 = distinct !DISubprogram(name: "dwmac1000_dma_axi", scope: !3, file: !3, line: 19, type: !75, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !331)
!429 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !428, file: !3, line: 19, type: !40)
!430 = !DILocation(line: 19, column: 45, scope: !428)
!431 = !DILocalVariable(name: "axi", arg: 2, scope: !428, file: !3, line: 19, type: !77)
!432 = !DILocation(line: 19, column: 72, scope: !428)
!433 = !DILocalVariable(name: "value", scope: !428, file: !3, line: 21, type: !26)
!434 = !DILocation(line: 21, column: 6, scope: !428)
!435 = !DILocation(line: 21, column: 20, scope: !428)
!436 = !DILocation(line: 21, column: 27, scope: !428)
!437 = !DILocation(line: 21, column: 14, scope: !428)
!438 = !DILocalVariable(name: "i", scope: !428, file: !3, line: 22, type: !30)
!439 = !DILocation(line: 22, column: 6, scope: !428)
!440 = !DILocation(line: 24, column: 2, scope: !428)
!441 = !DILocation(line: 27, column: 6, scope: !442)
!442 = distinct !DILexicalBlock(scope: !428, file: !3, line: 27, column: 6)
!443 = !DILocation(line: 27, column: 11, scope: !442)
!444 = !DILocation(line: 27, column: 6, scope: !428)
!445 = !DILocation(line: 28, column: 9, scope: !442)
!446 = !DILocation(line: 28, column: 3, scope: !442)
!447 = !DILocation(line: 29, column: 6, scope: !448)
!448 = distinct !DILexicalBlock(scope: !428, file: !3, line: 29, column: 6)
!449 = !DILocation(line: 29, column: 11, scope: !448)
!450 = !DILocation(line: 29, column: 6, scope: !428)
!451 = !DILocation(line: 30, column: 9, scope: !448)
!452 = !DILocation(line: 30, column: 3, scope: !448)
!453 = !DILocation(line: 32, column: 8, scope: !428)
!454 = !DILocation(line: 33, column: 12, scope: !428)
!455 = !DILocation(line: 33, column: 17, scope: !428)
!456 = !DILocation(line: 33, column: 32, scope: !428)
!457 = !DILocation(line: 33, column: 59, scope: !428)
!458 = !DILocation(line: 33, column: 8, scope: !428)
!459 = !DILocation(line: 36, column: 8, scope: !428)
!460 = !DILocation(line: 37, column: 12, scope: !428)
!461 = !DILocation(line: 37, column: 17, scope: !428)
!462 = !DILocation(line: 37, column: 32, scope: !428)
!463 = !DILocation(line: 37, column: 59, scope: !428)
!464 = !DILocation(line: 37, column: 8, scope: !428)
!465 = !DILocation(line: 44, column: 9, scope: !466)
!466 = distinct !DILexicalBlock(scope: !428, file: !3, line: 44, column: 2)
!467 = !DILocation(line: 44, column: 7, scope: !466)
!468 = !DILocation(line: 44, column: 14, scope: !469)
!469 = distinct !DILexicalBlock(scope: !466, file: !3, line: 44, column: 2)
!470 = !DILocation(line: 44, column: 16, scope: !469)
!471 = !DILocation(line: 44, column: 2, scope: !466)
!472 = !DILocation(line: 45, column: 11, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !3, line: 44, column: 33)
!474 = !DILocation(line: 45, column: 16, scope: !473)
!475 = !DILocation(line: 45, column: 25, scope: !473)
!476 = !DILocation(line: 45, column: 3, scope: !473)
!477 = !DILocation(line: 47, column: 10, scope: !478)
!478 = distinct !DILexicalBlock(scope: !473, file: !3, line: 45, column: 29)
!479 = !DILocation(line: 48, column: 4, scope: !478)
!480 = !DILocation(line: 50, column: 10, scope: !478)
!481 = !DILocation(line: 51, column: 4, scope: !478)
!482 = !DILocation(line: 53, column: 10, scope: !478)
!483 = !DILocation(line: 54, column: 4, scope: !478)
!484 = !DILocation(line: 56, column: 10, scope: !478)
!485 = !DILocation(line: 57, column: 4, scope: !478)
!486 = !DILocation(line: 59, column: 10, scope: !478)
!487 = !DILocation(line: 60, column: 4, scope: !478)
!488 = !DILocation(line: 62, column: 10, scope: !478)
!489 = !DILocation(line: 63, column: 4, scope: !478)
!490 = !DILocation(line: 65, column: 10, scope: !478)
!491 = !DILocation(line: 66, column: 4, scope: !478)
!492 = !DILocation(line: 68, column: 2, scope: !473)
!493 = !DILocation(line: 44, column: 29, scope: !469)
!494 = !DILocation(line: 44, column: 2, scope: !469)
!495 = distinct !{!495, !471, !496}
!496 = !DILocation(line: 68, column: 2, scope: !466)
!497 = !DILocation(line: 70, column: 9, scope: !428)
!498 = !DILocation(line: 70, column: 16, scope: !428)
!499 = !DILocation(line: 70, column: 23, scope: !428)
!500 = !DILocation(line: 70, column: 2, scope: !428)
!501 = !DILocation(line: 71, column: 1, scope: !428)
!502 = distinct !DISubprogram(name: "dwmac1000_dump_dma_regs", scope: !3, file: !3, line: 211, type: !94, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !331)
!503 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !502, file: !3, line: 211, type: !40)
!504 = !DILocation(line: 211, column: 51, scope: !502)
!505 = !DILocalVariable(name: "reg_space", arg: 2, scope: !502, file: !3, line: 211, type: !96)
!506 = !DILocation(line: 211, column: 64, scope: !502)
!507 = !DILocalVariable(name: "i", scope: !502, file: !3, line: 213, type: !30)
!508 = !DILocation(line: 213, column: 6, scope: !502)
!509 = !DILocation(line: 215, column: 9, scope: !510)
!510 = distinct !DILexicalBlock(scope: !502, file: !3, line: 215, column: 2)
!511 = !DILocation(line: 215, column: 7, scope: !510)
!512 = !DILocation(line: 215, column: 14, scope: !513)
!513 = distinct !DILexicalBlock(scope: !510, file: !3, line: 215, column: 2)
!514 = !DILocation(line: 215, column: 16, scope: !513)
!515 = !DILocation(line: 215, column: 2, scope: !510)
!516 = !DILocation(line: 216, column: 8, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !3, line: 216, column: 7)
!518 = !DILocation(line: 216, column: 10, scope: !517)
!519 = !DILocation(line: 216, column: 16, scope: !517)
!520 = !DILocation(line: 216, column: 20, scope: !517)
!521 = !DILocation(line: 216, column: 22, scope: !517)
!522 = !DILocation(line: 216, column: 7, scope: !513)
!523 = !DILocation(line: 218, column: 11, scope: !517)
!524 = !DILocation(line: 218, column: 18, scope: !517)
!525 = !DILocation(line: 218, column: 35, scope: !517)
!526 = !DILocation(line: 218, column: 37, scope: !517)
!527 = !DILocation(line: 218, column: 33, scope: !517)
!528 = !DILocation(line: 218, column: 5, scope: !517)
!529 = !DILocation(line: 217, column: 4, scope: !517)
!530 = !DILocation(line: 217, column: 33, scope: !517)
!531 = !DILocation(line: 217, column: 31, scope: !517)
!532 = !DILocation(line: 217, column: 36, scope: !517)
!533 = !DILocation(line: 216, column: 26, scope: !517)
!534 = !DILocation(line: 215, column: 43, scope: !513)
!535 = !DILocation(line: 215, column: 2, scope: !513)
!536 = distinct !{!536, !515, !537}
!537 = !DILocation(line: 218, column: 40, scope: !510)
!538 = !DILocation(line: 219, column: 1, scope: !502)
!539 = distinct !DISubprogram(name: "dwmac1000_dma_operation_mode_rx", scope: !3, file: !3, line: 150, type: !99, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !331)
!540 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !539, file: !3, line: 150, type: !40)
!541 = !DILocation(line: 150, column: 59, scope: !539)
!542 = !DILocalVariable(name: "mode", arg: 2, scope: !539, file: !3, line: 150, type: !30)
!543 = !DILocation(line: 150, column: 71, scope: !539)
!544 = !DILocalVariable(name: "channel", arg: 3, scope: !539, file: !3, line: 151, type: !26)
!545 = !DILocation(line: 151, column: 14, scope: !539)
!546 = !DILocalVariable(name: "fifosz", arg: 4, scope: !539, file: !3, line: 151, type: !30)
!547 = !DILocation(line: 151, column: 27, scope: !539)
!548 = !DILocalVariable(name: "qmode", arg: 5, scope: !539, file: !3, line: 151, type: !101)
!549 = !DILocation(line: 151, column: 38, scope: !539)
!550 = !DILocalVariable(name: "csr6", scope: !539, file: !3, line: 153, type: !26)
!551 = !DILocation(line: 153, column: 6, scope: !539)
!552 = !DILocation(line: 153, column: 19, scope: !539)
!553 = !DILocation(line: 153, column: 26, scope: !539)
!554 = !DILocation(line: 153, column: 13, scope: !539)
!555 = !DILocation(line: 155, column: 6, scope: !556)
!556 = distinct !DILexicalBlock(scope: !539, file: !3, line: 155, column: 6)
!557 = !DILocation(line: 155, column: 11, scope: !556)
!558 = !DILocation(line: 155, column: 6, scope: !539)
!559 = !DILocation(line: 156, column: 3, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !3, line: 156, column: 3)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 156, column: 3)
!562 = distinct !DILexicalBlock(scope: !556, file: !3, line: 155, column: 27)
!563 = !DILocation(line: 156, column: 3, scope: !561)
!564 = !DILocation(line: 157, column: 8, scope: !562)
!565 = !DILocation(line: 158, column: 2, scope: !562)
!566 = !DILocation(line: 159, column: 3, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 159, column: 3)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 159, column: 3)
!569 = distinct !DILexicalBlock(scope: !556, file: !3, line: 158, column: 9)
!570 = !DILocation(line: 159, column: 3, scope: !568)
!571 = !DILocation(line: 160, column: 8, scope: !569)
!572 = !DILocation(line: 161, column: 8, scope: !569)
!573 = !DILocation(line: 162, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !569, file: !3, line: 162, column: 7)
!575 = !DILocation(line: 162, column: 12, scope: !574)
!576 = !DILocation(line: 162, column: 7, scope: !569)
!577 = !DILocation(line: 163, column: 9, scope: !574)
!578 = !DILocation(line: 163, column: 4, scope: !574)
!579 = !DILocation(line: 164, column: 12, scope: !580)
!580 = distinct !DILexicalBlock(scope: !574, file: !3, line: 164, column: 12)
!581 = !DILocation(line: 164, column: 17, scope: !580)
!582 = !DILocation(line: 164, column: 12, scope: !574)
!583 = !DILocation(line: 165, column: 9, scope: !580)
!584 = !DILocation(line: 165, column: 4, scope: !580)
!585 = !DILocation(line: 166, column: 12, scope: !586)
!586 = distinct !DILexicalBlock(scope: !580, file: !3, line: 166, column: 12)
!587 = !DILocation(line: 166, column: 17, scope: !586)
!588 = !DILocation(line: 166, column: 12, scope: !580)
!589 = !DILocation(line: 167, column: 9, scope: !586)
!590 = !DILocation(line: 167, column: 4, scope: !586)
!591 = !DILocation(line: 169, column: 9, scope: !586)
!592 = !DILocation(line: 173, column: 32, scope: !539)
!593 = !DILocation(line: 173, column: 38, scope: !539)
!594 = !DILocation(line: 173, column: 9, scope: !539)
!595 = !DILocation(line: 173, column: 7, scope: !539)
!596 = !DILocation(line: 175, column: 9, scope: !539)
!597 = !DILocation(line: 175, column: 15, scope: !539)
!598 = !DILocation(line: 175, column: 22, scope: !539)
!599 = !DILocation(line: 175, column: 2, scope: !539)
!600 = !DILocation(line: 176, column: 1, scope: !539)
!601 = distinct !DISubprogram(name: "dwmac1000_dma_operation_mode_tx", scope: !3, file: !3, line: 178, type: !99, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !331)
!602 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !601, file: !3, line: 178, type: !40)
!603 = !DILocation(line: 178, column: 59, scope: !601)
!604 = !DILocalVariable(name: "mode", arg: 2, scope: !601, file: !3, line: 178, type: !30)
!605 = !DILocation(line: 178, column: 71, scope: !601)
!606 = !DILocalVariable(name: "channel", arg: 3, scope: !601, file: !3, line: 179, type: !26)
!607 = !DILocation(line: 179, column: 14, scope: !601)
!608 = !DILocalVariable(name: "fifosz", arg: 4, scope: !601, file: !3, line: 179, type: !30)
!609 = !DILocation(line: 179, column: 27, scope: !601)
!610 = !DILocalVariable(name: "qmode", arg: 5, scope: !601, file: !3, line: 179, type: !101)
!611 = !DILocation(line: 179, column: 38, scope: !601)
!612 = !DILocalVariable(name: "csr6", scope: !601, file: !3, line: 181, type: !26)
!613 = !DILocation(line: 181, column: 6, scope: !601)
!614 = !DILocation(line: 181, column: 19, scope: !601)
!615 = !DILocation(line: 181, column: 26, scope: !601)
!616 = !DILocation(line: 181, column: 13, scope: !601)
!617 = !DILocation(line: 183, column: 6, scope: !618)
!618 = distinct !DILexicalBlock(scope: !601, file: !3, line: 183, column: 6)
!619 = !DILocation(line: 183, column: 11, scope: !618)
!620 = !DILocation(line: 183, column: 6, scope: !601)
!621 = !DILocation(line: 184, column: 3, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 184, column: 3)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 184, column: 3)
!624 = distinct !DILexicalBlock(scope: !618, file: !3, line: 183, column: 27)
!625 = !DILocation(line: 184, column: 3, scope: !623)
!626 = !DILocation(line: 186, column: 8, scope: !624)
!627 = !DILocation(line: 190, column: 8, scope: !624)
!628 = !DILocation(line: 191, column: 2, scope: !624)
!629 = !DILocation(line: 192, column: 3, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !3, line: 192, column: 3)
!631 = distinct !DILexicalBlock(scope: !632, file: !3, line: 192, column: 3)
!632 = distinct !DILexicalBlock(scope: !618, file: !3, line: 191, column: 9)
!633 = !DILocation(line: 192, column: 3, scope: !631)
!634 = !DILocation(line: 193, column: 8, scope: !632)
!635 = !DILocation(line: 194, column: 8, scope: !632)
!636 = !DILocation(line: 196, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !3, line: 196, column: 7)
!638 = !DILocation(line: 196, column: 12, scope: !637)
!639 = !DILocation(line: 196, column: 7, scope: !632)
!640 = !DILocation(line: 197, column: 9, scope: !637)
!641 = !DILocation(line: 197, column: 4, scope: !637)
!642 = !DILocation(line: 198, column: 12, scope: !643)
!643 = distinct !DILexicalBlock(scope: !637, file: !3, line: 198, column: 12)
!644 = !DILocation(line: 198, column: 17, scope: !643)
!645 = !DILocation(line: 198, column: 12, scope: !637)
!646 = !DILocation(line: 199, column: 9, scope: !643)
!647 = !DILocation(line: 199, column: 4, scope: !643)
!648 = !DILocation(line: 200, column: 12, scope: !649)
!649 = distinct !DILexicalBlock(scope: !643, file: !3, line: 200, column: 12)
!650 = !DILocation(line: 200, column: 17, scope: !649)
!651 = !DILocation(line: 200, column: 12, scope: !643)
!652 = !DILocation(line: 201, column: 9, scope: !649)
!653 = !DILocation(line: 201, column: 4, scope: !649)
!654 = !DILocation(line: 202, column: 12, scope: !655)
!655 = distinct !DILexicalBlock(scope: !649, file: !3, line: 202, column: 12)
!656 = !DILocation(line: 202, column: 17, scope: !655)
!657 = !DILocation(line: 202, column: 12, scope: !649)
!658 = !DILocation(line: 203, column: 9, scope: !655)
!659 = !DILocation(line: 203, column: 4, scope: !655)
!660 = !DILocation(line: 205, column: 9, scope: !655)
!661 = !DILocation(line: 208, column: 9, scope: !601)
!662 = !DILocation(line: 208, column: 15, scope: !601)
!663 = !DILocation(line: 208, column: 22, scope: !601)
!664 = !DILocation(line: 208, column: 2, scope: !601)
!665 = !DILocation(line: 209, column: 1, scope: !601)
!666 = distinct !DISubprogram(name: "dwmac1000_get_hw_feature", scope: !3, file: !3, line: 221, type: !249, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !331)
!667 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !666, file: !3, line: 221, type: !40)
!668 = !DILocation(line: 221, column: 52, scope: !666)
!669 = !DILocalVariable(name: "dma_cap", arg: 2, scope: !666, file: !3, line: 222, type: !251)
!670 = !DILocation(line: 222, column: 31, scope: !666)
!671 = !DILocalVariable(name: "hw_cap", scope: !666, file: !3, line: 224, type: !26)
!672 = !DILocation(line: 224, column: 6, scope: !666)
!673 = !DILocation(line: 224, column: 21, scope: !666)
!674 = !DILocation(line: 224, column: 28, scope: !666)
!675 = !DILocation(line: 224, column: 15, scope: !666)
!676 = !DILocation(line: 226, column: 26, scope: !666)
!677 = !DILocation(line: 226, column: 33, scope: !666)
!678 = !DILocation(line: 226, column: 2, scope: !666)
!679 = !DILocation(line: 226, column: 11, scope: !666)
!680 = !DILocation(line: 226, column: 23, scope: !666)
!681 = !DILocation(line: 227, column: 24, scope: !666)
!682 = !DILocation(line: 227, column: 31, scope: !666)
!683 = !DILocation(line: 227, column: 54, scope: !666)
!684 = !DILocation(line: 227, column: 2, scope: !666)
!685 = !DILocation(line: 227, column: 11, scope: !666)
!686 = !DILocation(line: 227, column: 21, scope: !666)
!687 = !DILocation(line: 228, column: 26, scope: !666)
!688 = !DILocation(line: 228, column: 33, scope: !666)
!689 = !DILocation(line: 228, column: 54, scope: !666)
!690 = !DILocation(line: 228, column: 2, scope: !666)
!691 = !DILocation(line: 228, column: 11, scope: !666)
!692 = !DILocation(line: 228, column: 23, scope: !666)
!693 = !DILocation(line: 229, column: 26, scope: !666)
!694 = !DILocation(line: 229, column: 33, scope: !666)
!695 = !DILocation(line: 229, column: 56, scope: !666)
!696 = !DILocation(line: 229, column: 2, scope: !666)
!697 = !DILocation(line: 229, column: 11, scope: !666)
!698 = !DILocation(line: 229, column: 23, scope: !666)
!699 = !DILocation(line: 230, column: 25, scope: !666)
!700 = !DILocation(line: 230, column: 32, scope: !666)
!701 = !DILocation(line: 230, column: 54, scope: !666)
!702 = !DILocation(line: 230, column: 2, scope: !666)
!703 = !DILocation(line: 230, column: 11, scope: !666)
!704 = !DILocation(line: 230, column: 22, scope: !666)
!705 = !DILocation(line: 231, column: 18, scope: !666)
!706 = !DILocation(line: 231, column: 25, scope: !666)
!707 = !DILocation(line: 231, column: 47, scope: !666)
!708 = !DILocation(line: 231, column: 2, scope: !666)
!709 = !DILocation(line: 231, column: 11, scope: !666)
!710 = !DILocation(line: 231, column: 15, scope: !666)
!711 = !DILocation(line: 232, column: 23, scope: !666)
!712 = !DILocation(line: 232, column: 30, scope: !666)
!713 = !DILocation(line: 232, column: 52, scope: !666)
!714 = !DILocation(line: 232, column: 2, scope: !666)
!715 = !DILocation(line: 232, column: 11, scope: !666)
!716 = !DILocation(line: 232, column: 20, scope: !666)
!717 = !DILocation(line: 233, column: 33, scope: !666)
!718 = !DILocation(line: 233, column: 40, scope: !666)
!719 = !DILocation(line: 233, column: 62, scope: !666)
!720 = !DILocation(line: 233, column: 2, scope: !666)
!721 = !DILocation(line: 233, column: 11, scope: !666)
!722 = !DILocation(line: 233, column: 30, scope: !666)
!723 = !DILocation(line: 234, column: 30, scope: !666)
!724 = !DILocation(line: 234, column: 37, scope: !666)
!725 = !DILocation(line: 234, column: 59, scope: !666)
!726 = !DILocation(line: 234, column: 2, scope: !666)
!727 = !DILocation(line: 234, column: 11, scope: !666)
!728 = !DILocation(line: 234, column: 27, scope: !666)
!729 = !DILocation(line: 236, column: 19, scope: !666)
!730 = !DILocation(line: 236, column: 26, scope: !666)
!731 = !DILocation(line: 236, column: 48, scope: !666)
!732 = !DILocation(line: 236, column: 2, scope: !666)
!733 = !DILocation(line: 236, column: 11, scope: !666)
!734 = !DILocation(line: 236, column: 16, scope: !666)
!735 = !DILocation(line: 239, column: 7, scope: !666)
!736 = !DILocation(line: 239, column: 14, scope: !666)
!737 = !DILocation(line: 239, column: 39, scope: !666)
!738 = !DILocation(line: 238, column: 2, scope: !666)
!739 = !DILocation(line: 238, column: 11, scope: !666)
!740 = !DILocation(line: 238, column: 22, scope: !666)
!741 = !DILocation(line: 241, column: 26, scope: !666)
!742 = !DILocation(line: 241, column: 33, scope: !666)
!743 = !DILocation(line: 241, column: 58, scope: !666)
!744 = !DILocation(line: 241, column: 2, scope: !666)
!745 = !DILocation(line: 241, column: 11, scope: !666)
!746 = !DILocation(line: 241, column: 23, scope: !666)
!747 = !DILocation(line: 243, column: 18, scope: !666)
!748 = !DILocation(line: 243, column: 25, scope: !666)
!749 = !DILocation(line: 243, column: 47, scope: !666)
!750 = !DILocation(line: 243, column: 2, scope: !666)
!751 = !DILocation(line: 243, column: 11, scope: !666)
!752 = !DILocation(line: 243, column: 15, scope: !666)
!753 = !DILocation(line: 244, column: 17, scope: !666)
!754 = !DILocation(line: 244, column: 24, scope: !666)
!755 = !DILocation(line: 244, column: 45, scope: !666)
!756 = !DILocation(line: 244, column: 2, scope: !666)
!757 = !DILocation(line: 244, column: 11, scope: !666)
!758 = !DILocation(line: 244, column: 14, scope: !666)
!759 = !DILocation(line: 246, column: 21, scope: !666)
!760 = !DILocation(line: 246, column: 28, scope: !666)
!761 = !DILocation(line: 246, column: 52, scope: !666)
!762 = !DILocation(line: 246, column: 2, scope: !666)
!763 = !DILocation(line: 246, column: 11, scope: !666)
!764 = !DILocation(line: 246, column: 18, scope: !666)
!765 = !DILocation(line: 247, column: 27, scope: !666)
!766 = !DILocation(line: 247, column: 34, scope: !666)
!767 = !DILocation(line: 247, column: 59, scope: !666)
!768 = !DILocation(line: 247, column: 2, scope: !666)
!769 = !DILocation(line: 247, column: 11, scope: !666)
!770 = !DILocation(line: 247, column: 24, scope: !666)
!771 = !DILocation(line: 248, column: 27, scope: !666)
!772 = !DILocation(line: 248, column: 34, scope: !666)
!773 = !DILocation(line: 248, column: 59, scope: !666)
!774 = !DILocation(line: 248, column: 2, scope: !666)
!775 = !DILocation(line: 248, column: 11, scope: !666)
!776 = !DILocation(line: 248, column: 24, scope: !666)
!777 = !DILocation(line: 249, column: 31, scope: !666)
!778 = !DILocation(line: 249, column: 38, scope: !666)
!779 = !DILocation(line: 249, column: 64, scope: !666)
!780 = !DILocation(line: 249, column: 2, scope: !666)
!781 = !DILocation(line: 249, column: 11, scope: !666)
!782 = !DILocation(line: 249, column: 28, scope: !666)
!783 = !DILocation(line: 251, column: 32, scope: !666)
!784 = !DILocation(line: 251, column: 39, scope: !666)
!785 = !DILocation(line: 251, column: 62, scope: !666)
!786 = !DILocation(line: 251, column: 2, scope: !666)
!787 = !DILocation(line: 251, column: 11, scope: !666)
!788 = !DILocation(line: 251, column: 29, scope: !666)
!789 = !DILocation(line: 252, column: 32, scope: !666)
!790 = !DILocation(line: 252, column: 39, scope: !666)
!791 = !DILocation(line: 252, column: 62, scope: !666)
!792 = !DILocation(line: 252, column: 2, scope: !666)
!793 = !DILocation(line: 252, column: 11, scope: !666)
!794 = !DILocation(line: 252, column: 29, scope: !666)
!795 = !DILocation(line: 254, column: 23, scope: !666)
!796 = !DILocation(line: 254, column: 30, scope: !666)
!797 = !DILocation(line: 254, column: 55, scope: !666)
!798 = !DILocation(line: 254, column: 2, scope: !666)
!799 = !DILocation(line: 254, column: 11, scope: !666)
!800 = !DILocation(line: 254, column: 20, scope: !666)
!801 = !DILocation(line: 255, column: 1, scope: !666)
!802 = distinct !DISubprogram(name: "dwmac1000_rx_watchdog", scope: !3, file: !3, line: 257, type: !302, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !331)
!803 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !802, file: !3, line: 257, type: !40)
!804 = !DILocation(line: 257, column: 49, scope: !802)
!805 = !DILocalVariable(name: "riwt", arg: 2, scope: !802, file: !3, line: 257, type: !26)
!806 = !DILocation(line: 257, column: 61, scope: !802)
!807 = !DILocalVariable(name: "number_chan", arg: 3, scope: !802, file: !3, line: 258, type: !26)
!808 = !DILocation(line: 258, column: 11, scope: !802)
!809 = !DILocation(line: 260, column: 9, scope: !802)
!810 = !DILocation(line: 260, column: 15, scope: !802)
!811 = !DILocation(line: 260, column: 22, scope: !802)
!812 = !DILocation(line: 260, column: 2, scope: !802)
!813 = !DILocation(line: 261, column: 1, scope: !802)
!814 = distinct !DISubprogram(name: "readl", scope: !815, file: !815, line: 59, type: !816, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !331)
!815 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!816 = !DISubroutineType(types: !817)
!817 = !{!7, !818}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!821 = !DILocalVariable(name: "addr", arg: 1, scope: !814, file: !815, line: 59, type: !818)
!822 = !DILocation(line: 59, column: 1, scope: !814)
!823 = !DILocalVariable(name: "ret", scope: !814, file: !815, line: 59, type: !7)
!824 = !{i32 -2146534778}
!825 = distinct !DISubprogram(name: "writel", scope: !815, file: !815, line: 67, type: !826, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !331)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !7, !828}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!829 = !DILocalVariable(name: "val", arg: 1, scope: !825, file: !815, line: 67, type: !7)
!830 = !DILocation(line: 67, column: 1, scope: !825)
!831 = !DILocalVariable(name: "addr", arg: 2, scope: !825, file: !815, line: 67, type: !828)
!832 = !{i32 -2146532385}
!833 = distinct !DISubprogram(name: "dwmac1000_configure_fc", scope: !3, file: !3, line: 129, type: !834, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !331)
!834 = !DISubroutineType(types: !835)
!835 = !{!26, !26, !30}
!836 = !DILocalVariable(name: "csr6", arg: 1, scope: !833, file: !3, line: 129, type: !26)
!837 = !DILocation(line: 129, column: 39, scope: !833)
!838 = !DILocalVariable(name: "rxfifosz", arg: 2, scope: !833, file: !3, line: 129, type: !30)
!839 = !DILocation(line: 129, column: 49, scope: !833)
!840 = !DILocation(line: 131, column: 7, scope: !833)
!841 = !DILocation(line: 132, column: 7, scope: !833)
!842 = !DILocation(line: 138, column: 6, scope: !843)
!843 = distinct !DILexicalBlock(scope: !833, file: !3, line: 138, column: 6)
!844 = !DILocation(line: 138, column: 15, scope: !843)
!845 = !DILocation(line: 138, column: 6, scope: !833)
!846 = !DILocation(line: 139, column: 8, scope: !847)
!847 = distinct !DILexicalBlock(scope: !843, file: !3, line: 138, column: 23)
!848 = !DILocation(line: 140, column: 3, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 140, column: 3)
!850 = distinct !DILexicalBlock(scope: !847, file: !3, line: 140, column: 3)
!851 = !DILocation(line: 140, column: 3, scope: !850)
!852 = !DILocation(line: 142, column: 2, scope: !847)
!853 = !DILocation(line: 143, column: 8, scope: !854)
!854 = distinct !DILexicalBlock(scope: !843, file: !3, line: 142, column: 9)
!855 = !DILocation(line: 144, column: 8, scope: !854)
!856 = !DILocation(line: 145, column: 8, scope: !854)
!857 = !DILocation(line: 147, column: 9, scope: !833)
!858 = !DILocation(line: 147, column: 2, scope: !833)
