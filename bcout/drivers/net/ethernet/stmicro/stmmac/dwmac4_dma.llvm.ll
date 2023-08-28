; ModuleID = '../bcout/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.llvm.bc'
source_filename = "drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.stmmac_dma_ops = type { i32 (i8*)*, void (i8*, %struct.stmmac_dma_cfg*, i32)*, void (i8*, %struct.stmmac_dma_cfg*, i32)*, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)*, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)*, void (i8*, %struct.stmmac_axi*)*, void (i8*, i32*)*, void (i8*, i32, i32, i32, i8)*, void (i8*, i32, i32, i32, i8)*, void (i8*, %struct.stmmac_extra_stats*, i8*)*, void (i8*)*, void (i8*, i32, i1, i1)*, void (i8*, i32, i1, i1)*, void (i8*, i32)*, void (i8*, i32)*, void (i8*, i32)*, void (i8*, i32)*, i32 (i8*, %struct.stmmac_extra_stats*, i32)*, void (i8*, %struct.dma_features*)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i1, i32)*, void (i8*, i32, i8)*, void (i8*, i32, i32)*, void (i8*, i1, i32)*, i32 (i8*, i1, i32)* }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }
%struct.stmmac_extra_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [56 x i8] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dwmac4_dma_ops = dso_local constant %struct.stmmac_dma_ops { i32 (i8*)* @dwmac4_dma_reset, void (i8*, %struct.stmmac_dma_cfg*, i32)* @dwmac4_dma_init, void (i8*, %struct.stmmac_dma_cfg*, i32)* @dwmac4_dma_init_channel, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)* @dwmac4_dma_init_rx_chan, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)* @dwmac4_dma_init_tx_chan, void (i8*, %struct.stmmac_axi*)* @dwmac4_dma_axi, void (i8*, i32*)* @dwmac4_dump_dma_regs, void (i8*, i32, i32, i32, i8)* @dwmac4_dma_rx_chan_op_mode, void (i8*, i32, i32, i32, i8)* @dwmac4_dma_tx_chan_op_mode, void (i8*, %struct.stmmac_extra_stats*, i8*)* null, void (i8*)* null, void (i8*, i32, i1, i1)* @dwmac4_enable_dma_irq, void (i8*, i32, i1, i1)* @dwmac4_disable_dma_irq, void (i8*, i32)* @dwmac4_dma_start_tx, void (i8*, i32)* @dwmac4_dma_stop_tx, void (i8*, i32)* @dwmac4_dma_start_rx, void (i8*, i32)* @dwmac4_dma_stop_rx, i32 (i8*, %struct.stmmac_extra_stats*, i32)* @dwmac4_dma_interrupt, void (i8*, %struct.dma_features*)* @dwmac4_get_hw_feature, void (i8*, i32, i32)* @dwmac4_rx_watchdog, void (i8*, i32, i32)* @dwmac4_set_tx_ring_len, void (i8*, i32, i32)* @dwmac4_set_rx_ring_len, void (i8*, i32, i32)* @dwmac4_set_rx_tail_ptr, void (i8*, i32, i32)* @dwmac4_set_tx_tail_ptr, void (i8*, i1, i32)* @dwmac4_enable_tso, void (i8*, i32, i8)* @dwmac4_qmode, void (i8*, i32, i32)* @dwmac4_set_bfsize, void (i8*, i1, i32)* @dwmac4_enable_sph, i32 (i8*, i1, i32)* null }, align 8, !dbg !0
@dwmac410_dma_ops = dso_local constant %struct.stmmac_dma_ops { i32 (i8*)* @dwmac4_dma_reset, void (i8*, %struct.stmmac_dma_cfg*, i32)* @dwmac4_dma_init, void (i8*, %struct.stmmac_dma_cfg*, i32)* @dwmac4_dma_init_channel, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)* @dwmac4_dma_init_rx_chan, void (i8*, %struct.stmmac_dma_cfg*, i64, i32)* @dwmac4_dma_init_tx_chan, void (i8*, %struct.stmmac_axi*)* @dwmac4_dma_axi, void (i8*, i32*)* @dwmac4_dump_dma_regs, void (i8*, i32, i32, i32, i8)* @dwmac4_dma_rx_chan_op_mode, void (i8*, i32, i32, i32, i8)* @dwmac4_dma_tx_chan_op_mode, void (i8*, %struct.stmmac_extra_stats*, i8*)* null, void (i8*)* null, void (i8*, i32, i1, i1)* @dwmac410_enable_dma_irq, void (i8*, i32, i1, i1)* @dwmac4_disable_dma_irq, void (i8*, i32)* @dwmac4_dma_start_tx, void (i8*, i32)* @dwmac4_dma_stop_tx, void (i8*, i32)* @dwmac4_dma_start_rx, void (i8*, i32)* @dwmac4_dma_stop_rx, i32 (i8*, %struct.stmmac_extra_stats*, i32)* @dwmac4_dma_interrupt, void (i8*, %struct.dma_features*)* @dwmac4_get_hw_feature, void (i8*, i32, i32)* @dwmac4_rx_watchdog, void (i8*, i32, i32)* @dwmac4_set_tx_ring_len, void (i8*, i32, i32)* @dwmac4_set_rx_ring_len, void (i8*, i32, i32)* @dwmac4_set_rx_tail_ptr, void (i8*, i32, i32)* @dwmac4_set_tx_tail_ptr, void (i8*, i1, i32)* @dwmac4_enable_tso, void (i8*, i32, i8)* @dwmac4_qmode, void (i8*, i32, i32)* @dwmac4_set_bfsize, void (i8*, i1, i32)* @dwmac4_enable_sph, i32 (i8*, i1, i32)* @dwmac4_enable_tbs }, align 8, !dbg !15
@.str = private unnamed_addr constant [47 x i8] c"\016dwmac4: Master AXI performs %s burst length\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"any\00", align 1

; Function Attrs: noredzone
declare dso_local i32 @dwmac4_dma_reset(i8*) #0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac4_dma_init(i8* %ioaddr, %struct.stmmac_dma_cfg* %dma_cfg, i32 %atds) #1 !dbg !315 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cfg.addr = alloca %struct.stmmac_dma_cfg*, align 8
  %atds.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !316, metadata !DIExpression()), !dbg !317
  store %struct.stmmac_dma_cfg* %dma_cfg, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_dma_cfg** %dma_cfg.addr, metadata !318, metadata !DIExpression()), !dbg !319
  store i32 %atds, i32* %atds.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %atds.addr, metadata !320, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.declare(metadata i32* %value, metadata !322, metadata !DIExpression()), !dbg !323
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !324
  %add.ptr = getelementptr i8, i8* %0, i64 4100, !dbg !325
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !326
  store i32 %call, i32* %value, align 4, !dbg !323
  %1 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !327
  %fixed_burst = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %1, i32 0, i32 4, !dbg !329
  %2 = load i32, i32* %fixed_burst, align 4, !dbg !329
  %tobool = icmp ne i32 %2, 0, !dbg !327
  br i1 %tobool, label %if.then, label %if.end, !dbg !330

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !331
  %conv = zext i32 %3 to i64, !dbg !331
  %or = or i64 %conv, 1, !dbg !331
  %conv1 = trunc i64 %or to i32, !dbg !331
  store i32 %conv1, i32* %value, align 4, !dbg !331
  br label %if.end, !dbg !332

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !333
  %mixed_burst = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %4, i32 0, i32 5, !dbg !335
  %5 = load i32, i32* %mixed_burst, align 4, !dbg !335
  %tobool2 = icmp ne i32 %5, 0, !dbg !333
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !336

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %value, align 4, !dbg !337
  %conv4 = zext i32 %6 to i64, !dbg !337
  %or5 = or i64 %conv4, 16384, !dbg !337
  %conv6 = trunc i64 %or5 to i32, !dbg !337
  store i32 %conv6, i32* %value, align 4, !dbg !337
  br label %if.end7, !dbg !338

if.end7:                                          ; preds = %if.then3, %if.end
  %7 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !339
  %aal = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %7, i32 0, i32 6, !dbg !341
  %8 = load i8, i8* %aal, align 4, !dbg !341
  %tobool8 = trunc i8 %8 to i1, !dbg !341
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !342

if.then9:                                         ; preds = %if.end7
  %9 = load i32, i32* %value, align 4, !dbg !343
  %conv10 = zext i32 %9 to i64, !dbg !343
  %or11 = or i64 %conv10, 4096, !dbg !343
  %conv12 = trunc i64 %or11 to i32, !dbg !343
  store i32 %conv12, i32* %value, align 4, !dbg !343
  br label %if.end13, !dbg !344

if.end13:                                         ; preds = %if.then9, %if.end7
  %10 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !345
  %eame = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %10, i32 0, i32 7, !dbg !347
  %11 = load i8, i8* %eame, align 1, !dbg !347
  %tobool14 = trunc i8 %11 to i1, !dbg !347
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !348

if.then15:                                        ; preds = %if.end13
  %12 = load i32, i32* %value, align 4, !dbg !349
  %conv16 = zext i32 %12 to i64, !dbg !349
  %or17 = or i64 %conv16, 2048, !dbg !349
  %conv18 = trunc i64 %or17 to i32, !dbg !349
  store i32 %conv18, i32* %value, align 4, !dbg !349
  br label %if.end19, !dbg !350

if.end19:                                         ; preds = %if.then15, %if.end13
  %13 = load i32, i32* %value, align 4, !dbg !351
  %14 = load i8*, i8** %ioaddr.addr, align 8, !dbg !352
  %add.ptr20 = getelementptr i8, i8* %14, i64 4100, !dbg !353
  call void @writel(i32 %13, i8* %add.ptr20) #4, !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac4_dma_init_channel(i8* %ioaddr, %struct.stmmac_dma_cfg* %dma_cfg, i32 %chan) #1 !dbg !356 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cfg.addr = alloca %struct.stmmac_dma_cfg*, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !357, metadata !DIExpression()), !dbg !358
  store %struct.stmmac_dma_cfg* %dma_cfg, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_dma_cfg** %dma_cfg.addr, metadata !359, metadata !DIExpression()), !dbg !360
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !361, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata i32* %value, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !365
  %1 = load i32, i32* %chan.addr, align 4, !dbg !366
  %mul = mul i32 %1, 128, !dbg !366
  %add = add i32 4352, %mul, !dbg !366
  %idx.ext = zext i32 %add to i64, !dbg !367
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !367
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !368
  store i32 %call, i32* %value, align 4, !dbg !369
  %2 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !370
  %pblx8 = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %2, i32 0, i32 3, !dbg !372
  %3 = load i8, i8* %pblx8, align 4, !dbg !372
  %tobool = trunc i8 %3 to i1, !dbg !372
  br i1 %tobool, label %if.then, label %if.end, !dbg !373

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %value, align 4, !dbg !374
  %conv = zext i32 %4 to i64, !dbg !374
  %or = or i64 %conv, 65536, !dbg !375
  %conv1 = trunc i64 %or to i32, !dbg !374
  store i32 %conv1, i32* %value, align 4, !dbg !376
  br label %if.end, !dbg !377

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %value, align 4, !dbg !378
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !379
  %7 = load i32, i32* %chan.addr, align 4, !dbg !380
  %mul2 = mul i32 %7, 128, !dbg !380
  %add3 = add i32 4352, %mul2, !dbg !380
  %idx.ext4 = zext i32 %add3 to i64, !dbg !381
  %add.ptr5 = getelementptr i8, i8* %6, i64 %idx.ext4, !dbg !381
  call void @writel(i32 %5, i8* %add.ptr5) #4, !dbg !382
  %8 = load i8*, i8** %ioaddr.addr, align 8, !dbg !383
  %9 = load i32, i32* %chan.addr, align 4, !dbg !384
  %mul6 = mul i32 %9, 128, !dbg !384
  %add7 = add i32 4352, %mul6, !dbg !384
  %add8 = add i32 %add7, 52, !dbg !384
  %idx.ext9 = zext i32 %add8 to i64, !dbg !385
  %add.ptr10 = getelementptr i8, i8* %8, i64 %idx.ext9, !dbg !385
  call void @writel(i32 102465, i8* %add.ptr10) #4, !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac4_dma_init_rx_chan(i8* %ioaddr, %struct.stmmac_dma_cfg* %dma_cfg, i64 %dma_rx_phy, i32 %chan) #1 !dbg !388 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cfg.addr = alloca %struct.stmmac_dma_cfg*, align 8
  %dma_rx_phy.addr = alloca i64, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  %rxpbl = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !389, metadata !DIExpression()), !dbg !390
  store %struct.stmmac_dma_cfg* %dma_cfg, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_dma_cfg** %dma_cfg.addr, metadata !391, metadata !DIExpression()), !dbg !392
  store i64 %dma_rx_phy, i64* %dma_rx_phy.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_rx_phy.addr, metadata !393, metadata !DIExpression()), !dbg !394
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata i32* %value, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata i32* %rxpbl, metadata !399, metadata !DIExpression()), !dbg !400
  %0 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !401
  %rxpbl1 = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %0, i32 0, i32 2, !dbg !402
  %1 = load i32, i32* %rxpbl1, align 4, !dbg !402
  %tobool = icmp ne i32 %1, 0, !dbg !401
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !401

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !401

cond.false:                                       ; preds = %entry
  %2 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !403
  %pbl = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %2, i32 0, i32 0, !dbg !404
  %3 = load i32, i32* %pbl, align 4, !dbg !404
  br label %cond.end, !dbg !401

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %3, %cond.false ], !dbg !401
  store i32 %cond, i32* %rxpbl, align 4, !dbg !400
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !405
  %5 = load i32, i32* %chan.addr, align 4, !dbg !406
  %mul = mul i32 %5, 128, !dbg !406
  %add = add i32 4352, %mul, !dbg !406
  %add2 = add i32 %add, 8, !dbg !406
  %idx.ext = zext i32 %add2 to i64, !dbg !407
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !407
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !408
  store i32 %call, i32* %value, align 4, !dbg !409
  %6 = load i32, i32* %value, align 4, !dbg !410
  %7 = load i32, i32* %rxpbl, align 4, !dbg !411
  %shl = shl i32 %7, 16, !dbg !412
  %or = or i32 %6, %shl, !dbg !413
  store i32 %or, i32* %value, align 4, !dbg !414
  %8 = load i32, i32* %value, align 4, !dbg !415
  %9 = load i8*, i8** %ioaddr.addr, align 8, !dbg !416
  %10 = load i32, i32* %chan.addr, align 4, !dbg !417
  %mul3 = mul i32 %10, 128, !dbg !417
  %add4 = add i32 4352, %mul3, !dbg !417
  %add5 = add i32 %add4, 8, !dbg !417
  %idx.ext6 = zext i32 %add5 to i64, !dbg !418
  %add.ptr7 = getelementptr i8, i8* %9, i64 %idx.ext6, !dbg !418
  call void @writel(i32 %8, i8* %add.ptr7) #4, !dbg !419
  %11 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !420
  %eame = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %11, i32 0, i32 7, !dbg !420
  %12 = load i8, i8* %eame, align 1, !dbg !420
  %tobool8 = trunc i8 %12 to i1, !dbg !420
  %lnot = xor i1 %tobool8, true, !dbg !420
  %lnot9 = xor i1 %lnot, true, !dbg !420
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !420
  %conv = sext i32 %lnot.ext to i64, !dbg !420
  %tobool10 = icmp ne i64 %conv, 0, !dbg !420
  br i1 %tobool10, label %if.then, label %if.end, !dbg !422

if.then:                                          ; preds = %cond.end
  %13 = load i64, i64* %dma_rx_phy.addr, align 8, !dbg !423
  %shr = lshr i64 %13, 16, !dbg !423
  %shr11 = lshr i64 %shr, 16, !dbg !423
  %conv12 = trunc i64 %shr11 to i32, !dbg !423
  %14 = load i8*, i8** %ioaddr.addr, align 8, !dbg !424
  %15 = load i32, i32* %chan.addr, align 4, !dbg !425
  %mul13 = mul i32 %15, 128, !dbg !425
  %add14 = add i32 4352, %mul13, !dbg !425
  %add15 = add i32 %add14, 24, !dbg !425
  %idx.ext16 = zext i32 %add15 to i64, !dbg !426
  %add.ptr17 = getelementptr i8, i8* %14, i64 %idx.ext16, !dbg !426
  call void @writel(i32 %conv12, i8* %add.ptr17) #4, !dbg !427
  br label %if.end, !dbg !427

if.end:                                           ; preds = %if.then, %cond.end
  %16 = load i64, i64* %dma_rx_phy.addr, align 8, !dbg !428
  %and = and i64 %16, 4294967295, !dbg !428
  %conv18 = trunc i64 %and to i32, !dbg !428
  %17 = load i8*, i8** %ioaddr.addr, align 8, !dbg !429
  %18 = load i32, i32* %chan.addr, align 4, !dbg !430
  %mul19 = mul i32 %18, 128, !dbg !430
  %add20 = add i32 4352, %mul19, !dbg !430
  %add21 = add i32 %add20, 28, !dbg !430
  %idx.ext22 = zext i32 %add21 to i64, !dbg !431
  %add.ptr23 = getelementptr i8, i8* %17, i64 %idx.ext22, !dbg !431
  call void @writel(i32 %conv18, i8* %add.ptr23) #4, !dbg !432
  ret void, !dbg !433
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac4_dma_init_tx_chan(i8* %ioaddr, %struct.stmmac_dma_cfg* %dma_cfg, i64 %dma_tx_phy, i32 %chan) #1 !dbg !434 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cfg.addr = alloca %struct.stmmac_dma_cfg*, align 8
  %dma_tx_phy.addr = alloca i64, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  %txpbl = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !435, metadata !DIExpression()), !dbg !436
  store %struct.stmmac_dma_cfg* %dma_cfg, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_dma_cfg** %dma_cfg.addr, metadata !437, metadata !DIExpression()), !dbg !438
  store i64 %dma_tx_phy, i64* %dma_tx_phy.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_tx_phy.addr, metadata !439, metadata !DIExpression()), !dbg !440
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata i32* %value, metadata !443, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata i32* %txpbl, metadata !445, metadata !DIExpression()), !dbg !446
  %0 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !447
  %txpbl1 = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %0, i32 0, i32 1, !dbg !448
  %1 = load i32, i32* %txpbl1, align 4, !dbg !448
  %tobool = icmp ne i32 %1, 0, !dbg !447
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !447

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !447

cond.false:                                       ; preds = %entry
  %2 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !449
  %pbl = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %2, i32 0, i32 0, !dbg !450
  %3 = load i32, i32* %pbl, align 4, !dbg !450
  br label %cond.end, !dbg !447

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %3, %cond.false ], !dbg !447
  store i32 %cond, i32* %txpbl, align 4, !dbg !446
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !451
  %5 = load i32, i32* %chan.addr, align 4, !dbg !452
  %mul = mul i32 %5, 128, !dbg !452
  %add = add i32 4352, %mul, !dbg !452
  %add2 = add i32 %add, 4, !dbg !452
  %idx.ext = zext i32 %add2 to i64, !dbg !453
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !453
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !454
  store i32 %call, i32* %value, align 4, !dbg !455
  %6 = load i32, i32* %value, align 4, !dbg !456
  %7 = load i32, i32* %txpbl, align 4, !dbg !457
  %shl = shl i32 %7, 16, !dbg !458
  %or = or i32 %6, %shl, !dbg !459
  store i32 %or, i32* %value, align 4, !dbg !460
  %8 = load i32, i32* %value, align 4, !dbg !461
  %conv = zext i32 %8 to i64, !dbg !461
  %or3 = or i64 %conv, 16, !dbg !461
  %conv4 = trunc i64 %or3 to i32, !dbg !461
  store i32 %conv4, i32* %value, align 4, !dbg !461
  %9 = load i32, i32* %value, align 4, !dbg !462
  %10 = load i8*, i8** %ioaddr.addr, align 8, !dbg !463
  %11 = load i32, i32* %chan.addr, align 4, !dbg !464
  %mul5 = mul i32 %11, 128, !dbg !464
  %add6 = add i32 4352, %mul5, !dbg !464
  %add7 = add i32 %add6, 4, !dbg !464
  %idx.ext8 = zext i32 %add7 to i64, !dbg !465
  %add.ptr9 = getelementptr i8, i8* %10, i64 %idx.ext8, !dbg !465
  call void @writel(i32 %9, i8* %add.ptr9) #4, !dbg !466
  %12 = load %struct.stmmac_dma_cfg*, %struct.stmmac_dma_cfg** %dma_cfg.addr, align 8, !dbg !467
  %eame = getelementptr inbounds %struct.stmmac_dma_cfg, %struct.stmmac_dma_cfg* %12, i32 0, i32 7, !dbg !467
  %13 = load i8, i8* %eame, align 1, !dbg !467
  %tobool10 = trunc i8 %13 to i1, !dbg !467
  %lnot = xor i1 %tobool10, true, !dbg !467
  %lnot11 = xor i1 %lnot, true, !dbg !467
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !467
  %conv12 = sext i32 %lnot.ext to i64, !dbg !467
  %tobool13 = icmp ne i64 %conv12, 0, !dbg !467
  br i1 %tobool13, label %if.then, label %if.end, !dbg !469

if.then:                                          ; preds = %cond.end
  %14 = load i64, i64* %dma_tx_phy.addr, align 8, !dbg !470
  %shr = lshr i64 %14, 16, !dbg !470
  %shr14 = lshr i64 %shr, 16, !dbg !470
  %conv15 = trunc i64 %shr14 to i32, !dbg !470
  %15 = load i8*, i8** %ioaddr.addr, align 8, !dbg !471
  %16 = load i32, i32* %chan.addr, align 4, !dbg !472
  %mul16 = mul i32 %16, 128, !dbg !472
  %add17 = add i32 4352, %mul16, !dbg !472
  %add18 = add i32 %add17, 16, !dbg !472
  %idx.ext19 = zext i32 %add18 to i64, !dbg !473
  %add.ptr20 = getelementptr i8, i8* %15, i64 %idx.ext19, !dbg !473
  call void @writel(i32 %conv15, i8* %add.ptr20) #4, !dbg !474
  br label %if.end, !dbg !474

if.end:                                           ; preds = %if.then, %cond.end
  %17 = load i64, i64* %dma_tx_phy.addr, align 8, !dbg !475
  %and = and i64 %17, 4294967295, !dbg !475
  %conv21 = trunc i64 %and to i32, !dbg !475
  %18 = load i8*, i8** %ioaddr.addr, align 8, !dbg !476
  %19 = load i32, i32* %chan.addr, align 4, !dbg !477
  %mul22 = mul i32 %19, 128, !dbg !477
  %add23 = add i32 4352, %mul22, !dbg !477
  %add24 = add i32 %add23, 20, !dbg !477
  %idx.ext25 = zext i32 %add24 to i64, !dbg !478
  %add.ptr26 = getelementptr i8, i8* %18, i64 %idx.ext25, !dbg !478
  call void @writel(i32 %conv21, i8* %add.ptr26) #4, !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac4_dma_axi(i8* %ioaddr, %struct.stmmac_axi* %axi) #1 !dbg !481 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %axi.addr = alloca %struct.stmmac_axi*, align 8
  %value = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !482, metadata !DIExpression()), !dbg !483
  store %struct.stmmac_axi* %axi, %struct.stmmac_axi** %axi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_axi** %axi.addr, metadata !484, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.declare(metadata i32* %value, metadata !486, metadata !DIExpression()), !dbg !487
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !488
  %add.ptr = getelementptr i8, i8* %0, i64 4100, !dbg !489
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !490
  store i32 %call, i32* %value, align 4, !dbg !487
  call void @llvm.dbg.declare(metadata i32* %i, metadata !491, metadata !DIExpression()), !dbg !492
  %1 = load i32, i32* %value, align 4, !dbg !493
  %conv = zext i32 %1 to i64, !dbg !493
  %and = and i64 %conv, 1, !dbg !493
  %tobool = icmp ne i64 %and, 0, !dbg !493
  %2 = zext i1 %tobool to i64, !dbg !493
  %cond = select i1 %tobool, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), !dbg !493
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %cond) #5, !dbg !493
  %3 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !494
  %axi_lpi_en = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %3, i32 0, i32 0, !dbg !496
  %4 = load i8, i8* %axi_lpi_en, align 4, !dbg !496
  %tobool2 = trunc i8 %4 to i1, !dbg !496
  br i1 %tobool2, label %if.then, label %if.end, !dbg !497

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %value, align 4, !dbg !498
  %conv3 = zext i32 %5 to i64, !dbg !498
  %or = or i64 %conv3, 2147483648, !dbg !498
  %conv4 = trunc i64 %or to i32, !dbg !498
  store i32 %conv4, i32* %value, align 4, !dbg !498
  br label %if.end, !dbg !499

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !500
  %axi_xit_frm = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %6, i32 0, i32 1, !dbg !502
  %7 = load i8, i8* %axi_xit_frm, align 1, !dbg !502
  %tobool5 = trunc i8 %7 to i1, !dbg !502
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !503

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %value, align 4, !dbg !504
  %conv7 = zext i32 %8 to i64, !dbg !504
  %or8 = or i64 %conv7, 1073741824, !dbg !504
  %conv9 = trunc i64 %or8 to i32, !dbg !504
  store i32 %conv9, i32* %value, align 4, !dbg !504
  br label %if.end10, !dbg !505

if.end10:                                         ; preds = %if.then6, %if.end
  %9 = load i32, i32* %value, align 4, !dbg !506
  %conv11 = zext i32 %9 to i64, !dbg !506
  %and12 = and i64 %conv11, -251658241, !dbg !506
  %conv13 = trunc i64 %and12 to i32, !dbg !506
  store i32 %conv13, i32* %value, align 4, !dbg !506
  %10 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !507
  %axi_wr_osr_lmt = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %10, i32 0, i32 2, !dbg !508
  %11 = load i32, i32* %axi_wr_osr_lmt, align 4, !dbg !508
  %and14 = and i32 %11, 15, !dbg !509
  %shl = shl i32 %and14, 24, !dbg !510
  %12 = load i32, i32* %value, align 4, !dbg !511
  %or15 = or i32 %12, %shl, !dbg !511
  store i32 %or15, i32* %value, align 4, !dbg !511
  %13 = load i32, i32* %value, align 4, !dbg !512
  %conv16 = zext i32 %13 to i64, !dbg !512
  %and17 = and i64 %conv16, -983041, !dbg !512
  %conv18 = trunc i64 %and17 to i32, !dbg !512
  store i32 %conv18, i32* %value, align 4, !dbg !512
  %14 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !513
  %axi_rd_osr_lmt = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %14, i32 0, i32 3, !dbg !514
  %15 = load i32, i32* %axi_rd_osr_lmt, align 4, !dbg !514
  %and19 = and i32 %15, 15, !dbg !515
  %shl20 = shl i32 %and19, 16, !dbg !516
  %16 = load i32, i32* %value, align 4, !dbg !517
  %or21 = or i32 %16, %shl20, !dbg !517
  store i32 %or21, i32* %value, align 4, !dbg !517
  store i32 0, i32* %i, align 4, !dbg !518
  br label %for.cond, !dbg !520

for.cond:                                         ; preds = %for.inc, %if.end10
  %17 = load i32, i32* %i, align 4, !dbg !521
  %cmp = icmp slt i32 %17, 7, !dbg !523
  br i1 %cmp, label %for.body, label %for.end, !dbg !524

for.body:                                         ; preds = %for.cond
  %18 = load %struct.stmmac_axi*, %struct.stmmac_axi** %axi.addr, align 8, !dbg !525
  %axi_blen = getelementptr inbounds %struct.stmmac_axi, %struct.stmmac_axi* %18, i32 0, i32 5, !dbg !527
  %19 = load i32, i32* %i, align 4, !dbg !528
  %idxprom = sext i32 %19 to i64, !dbg !525
  %arrayidx = getelementptr [7 x i32], [7 x i32]* %axi_blen, i64 0, i64 %idxprom, !dbg !525
  %20 = load i32, i32* %arrayidx, align 4, !dbg !525
  switch i32 %20, label %sw.epilog [
    i32 256, label %sw.bb
    i32 128, label %sw.bb26
    i32 64, label %sw.bb30
    i32 32, label %sw.bb34
    i32 16, label %sw.bb38
    i32 8, label %sw.bb42
    i32 4, label %sw.bb46
  ], !dbg !529

sw.bb:                                            ; preds = %for.body
  %21 = load i32, i32* %value, align 4, !dbg !530
  %conv23 = zext i32 %21 to i64, !dbg !530
  %or24 = or i64 %conv23, 128, !dbg !530
  %conv25 = trunc i64 %or24 to i32, !dbg !530
  store i32 %conv25, i32* %value, align 4, !dbg !530
  br label %sw.epilog, !dbg !532

sw.bb26:                                          ; preds = %for.body
  %22 = load i32, i32* %value, align 4, !dbg !533
  %conv27 = zext i32 %22 to i64, !dbg !533
  %or28 = or i64 %conv27, 64, !dbg !533
  %conv29 = trunc i64 %or28 to i32, !dbg !533
  store i32 %conv29, i32* %value, align 4, !dbg !533
  br label %sw.epilog, !dbg !534

sw.bb30:                                          ; preds = %for.body
  %23 = load i32, i32* %value, align 4, !dbg !535
  %conv31 = zext i32 %23 to i64, !dbg !535
  %or32 = or i64 %conv31, 32, !dbg !535
  %conv33 = trunc i64 %or32 to i32, !dbg !535
  store i32 %conv33, i32* %value, align 4, !dbg !535
  br label %sw.epilog, !dbg !536

sw.bb34:                                          ; preds = %for.body
  %24 = load i32, i32* %value, align 4, !dbg !537
  %conv35 = zext i32 %24 to i64, !dbg !537
  %or36 = or i64 %conv35, 16, !dbg !537
  %conv37 = trunc i64 %or36 to i32, !dbg !537
  store i32 %conv37, i32* %value, align 4, !dbg !537
  br label %sw.epilog, !dbg !538

sw.bb38:                                          ; preds = %for.body
  %25 = load i32, i32* %value, align 4, !dbg !539
  %conv39 = zext i32 %25 to i64, !dbg !539
  %or40 = or i64 %conv39, 8, !dbg !539
  %conv41 = trunc i64 %or40 to i32, !dbg !539
  store i32 %conv41, i32* %value, align 4, !dbg !539
  br label %sw.epilog, !dbg !540

sw.bb42:                                          ; preds = %for.body
  %26 = load i32, i32* %value, align 4, !dbg !541
  %conv43 = zext i32 %26 to i64, !dbg !541
  %or44 = or i64 %conv43, 4, !dbg !541
  %conv45 = trunc i64 %or44 to i32, !dbg !541
  store i32 %conv45, i32* %value, align 4, !dbg !541
  br label %sw.epilog, !dbg !542

sw.bb46:                                          ; preds = %for.body
  %27 = load i32, i32* %value, align 4, !dbg !543
  %conv47 = zext i32 %27 to i64, !dbg !543
  %or48 = or i64 %conv47, 2, !dbg !543
  %conv49 = trunc i64 %or48 to i32, !dbg !543
  store i32 %conv49, i32* %value, align 4, !dbg !543
  br label %sw.epilog, !dbg !544

sw.epilog:                                        ; preds = %for.body, %sw.bb46, %sw.bb42, %sw.bb38, %sw.bb34, %sw.bb30, %sw.bb26, %sw.bb
  br label %for.inc, !dbg !545

for.inc:                                          ; preds = %sw.epilog
  %28 = load i32, i32* %i, align 4, !dbg !546
  %inc = add i32 %28, 1, !dbg !546
  store i32 %inc, i32* %i, align 4, !dbg !546
  br label %for.cond, !dbg !547, !llvm.loop !548

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %value, align 4, !dbg !550
  %30 = load i8*, i8** %ioaddr.addr, align 8, !dbg !551
  %add.ptr50 = getelementptr i8, i8* %30, i64 4100, !dbg !552
  call void @writel(i32 %29, i8* %add.ptr50) #4, !dbg !553
  ret void, !dbg !554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac4_dump_dma_regs(i8* %ioaddr, i32* %reg_space) #1 !dbg !555 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %reg_space.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !556, metadata !DIExpression()), !dbg !557
  store i32* %reg_space, i32** %reg_space.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %reg_space.addr, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.declare(metadata i32* %i, metadata !560, metadata !DIExpression()), !dbg !561
  store i32 0, i32* %i, align 4, !dbg !562
  br label %for.cond, !dbg !564

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !565
  %cmp = icmp slt i32 %0, 1, !dbg !567
  br i1 %cmp, label %for.body, label %for.end, !dbg !568

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !569
  %2 = load i32, i32* %i, align 4, !dbg !570
  %3 = load i32*, i32** %reg_space.addr, align 8, !dbg !571
  call void @_dwmac4_dump_dma_regs(i8* %1, i32 %2, i32* %3) #4, !dbg !572
  br label %for.inc, !dbg !572

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !573
  %inc = add i32 %4, 1, !dbg !573
  store i32 %inc, i32* %i, align 4, !dbg !573
  br label %for.cond, !dbg !574, !llvm.loop !575

for.end:                                          ; preds = %for.cond
  ret void, !dbg !577
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac4_dma_rx_chan_op_mode(i8* %ioaddr, i32 %mode, i32 %channel, i32 %fifosz, i8 zeroext %qmode) #1 !dbg !578 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %fifosz.addr = alloca i32, align 4
  %qmode.addr = alloca i8, align 1
  %rqs = alloca i32, align 4
  %mtl_rx_op = alloca i32, align 4
  %mtl_rx_int = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %rfd = alloca i32, align 4
  %rfa = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !579, metadata !DIExpression()), !dbg !580
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !581, metadata !DIExpression()), !dbg !582
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !583, metadata !DIExpression()), !dbg !584
  store i32 %fifosz, i32* %fifosz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fifosz.addr, metadata !585, metadata !DIExpression()), !dbg !586
  store i8 %qmode, i8* %qmode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %qmode.addr, metadata !587, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.declare(metadata i32* %rqs, metadata !589, metadata !DIExpression()), !dbg !590
  %0 = load i32, i32* %fifosz.addr, align 4, !dbg !591
  %div = sdiv i32 %0, 256, !dbg !592
  %sub = sub i32 %div, 1, !dbg !593
  store i32 %sub, i32* %rqs, align 4, !dbg !590
  call void @llvm.dbg.declare(metadata i32* %mtl_rx_op, metadata !594, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.declare(metadata i32* %mtl_rx_int, metadata !596, metadata !DIExpression()), !dbg !597
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !598
  %2 = load i32, i32* %channel.addr, align 4, !dbg !599
  %mul = mul i32 %2, 64, !dbg !599
  %add = add i32 3328, %mul, !dbg !599
  %add1 = add i32 %add, 48, !dbg !599
  %idx.ext = zext i32 %add1 to i64, !dbg !600
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !600
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !601
  store i32 %call, i32* %mtl_rx_op, align 4, !dbg !602
  %3 = load i32, i32* %mode.addr, align 4, !dbg !603
  %cmp = icmp eq i32 %3, 1, !dbg !605
  br i1 %cmp, label %if.then, label %if.else, !dbg !606

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !607
  %4 = load i32, i32* %tmp, align 4, !dbg !611
  %5 = load i32, i32* %mtl_rx_op, align 4, !dbg !612
  %conv = zext i32 %5 to i64, !dbg !612
  %or = or i64 %conv, 32, !dbg !612
  %conv2 = trunc i64 %or to i32, !dbg !612
  store i32 %conv2, i32* %mtl_rx_op, align 4, !dbg !612
  br label %if.end24, !dbg !613

if.else:                                          ; preds = %entry
  store i32 0, i32* %tmp3, align 4, !dbg !614
  %6 = load i32, i32* %tmp3, align 4, !dbg !618
  %7 = load i32, i32* %mtl_rx_op, align 4, !dbg !619
  %conv4 = zext i32 %7 to i64, !dbg !619
  %and = and i64 %conv4, -33, !dbg !619
  %conv5 = trunc i64 %and to i32, !dbg !619
  store i32 %conv5, i32* %mtl_rx_op, align 4, !dbg !619
  %8 = load i32, i32* %mtl_rx_op, align 4, !dbg !620
  %and6 = and i32 %8, 24, !dbg !620
  store i32 %and6, i32* %mtl_rx_op, align 4, !dbg !620
  %9 = load i32, i32* %mode.addr, align 4, !dbg !621
  %cmp7 = icmp sle i32 %9, 32, !dbg !623
  br i1 %cmp7, label %if.then9, label %if.else11, !dbg !624

if.then9:                                         ; preds = %if.else
  %10 = load i32, i32* %mtl_rx_op, align 4, !dbg !625
  %or10 = or i32 %10, 8, !dbg !625
  store i32 %or10, i32* %mtl_rx_op, align 4, !dbg !625
  br label %if.end23, !dbg !626

if.else11:                                        ; preds = %if.else
  %11 = load i32, i32* %mode.addr, align 4, !dbg !627
  %cmp12 = icmp sle i32 %11, 64, !dbg !629
  br i1 %cmp12, label %if.then14, label %if.else15, !dbg !630

if.then14:                                        ; preds = %if.else11
  %12 = load i32, i32* %mtl_rx_op, align 4, !dbg !631
  store i32 %12, i32* %mtl_rx_op, align 4, !dbg !631
  br label %if.end22, !dbg !632

if.else15:                                        ; preds = %if.else11
  %13 = load i32, i32* %mode.addr, align 4, !dbg !633
  %cmp16 = icmp sle i32 %13, 96, !dbg !635
  br i1 %cmp16, label %if.then18, label %if.else20, !dbg !636

if.then18:                                        ; preds = %if.else15
  %14 = load i32, i32* %mtl_rx_op, align 4, !dbg !637
  %or19 = or i32 %14, 16, !dbg !637
  store i32 %or19, i32* %mtl_rx_op, align 4, !dbg !637
  br label %if.end, !dbg !638

if.else20:                                        ; preds = %if.else15
  %15 = load i32, i32* %mtl_rx_op, align 4, !dbg !639
  %or21 = or i32 %15, 24, !dbg !639
  store i32 %or21, i32* %mtl_rx_op, align 4, !dbg !639
  br label %if.end

if.end:                                           ; preds = %if.else20, %if.then18
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then14
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then9
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  %16 = load i32, i32* %mtl_rx_op, align 4, !dbg !640
  %conv25 = zext i32 %16 to i64, !dbg !640
  %and26 = and i64 %conv25, -1072693249, !dbg !640
  %conv27 = trunc i64 %and26 to i32, !dbg !640
  store i32 %conv27, i32* %mtl_rx_op, align 4, !dbg !640
  %17 = load i32, i32* %rqs, align 4, !dbg !641
  %shl = shl i32 %17, 20, !dbg !642
  %18 = load i32, i32* %mtl_rx_op, align 4, !dbg !643
  %or28 = or i32 %18, %shl, !dbg !643
  store i32 %or28, i32* %mtl_rx_op, align 4, !dbg !643
  %19 = load i32, i32* %fifosz.addr, align 4, !dbg !644
  %cmp29 = icmp sge i32 %19, 4096, !dbg !646
  br i1 %cmp29, label %land.lhs.true, label %if.end48, !dbg !647

land.lhs.true:                                    ; preds = %if.end24
  %20 = load i8, i8* %qmode.addr, align 1, !dbg !648
  %conv31 = zext i8 %20 to i32, !dbg !648
  %cmp32 = icmp ne i32 %conv31, 0, !dbg !649
  br i1 %cmp32, label %if.then34, label %if.end48, !dbg !650

if.then34:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %rfd, metadata !651, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.declare(metadata i32* %rfa, metadata !654, metadata !DIExpression()), !dbg !655
  %21 = load i32, i32* %mtl_rx_op, align 4, !dbg !656
  %conv35 = zext i32 %21 to i64, !dbg !656
  %or36 = or i64 %conv35, 128, !dbg !656
  %conv37 = trunc i64 %or36 to i32, !dbg !656
  store i32 %conv37, i32* %mtl_rx_op, align 4, !dbg !656
  %22 = load i32, i32* %fifosz.addr, align 4, !dbg !657
  switch i32 %22, label %sw.default [
    i32 4096, label %sw.bb
  ], !dbg !658

sw.bb:                                            ; preds = %if.then34
  store i32 3, i32* %rfd, align 4, !dbg !659
  store i32 1, i32* %rfa, align 4, !dbg !661
  br label %sw.epilog, !dbg !662

sw.default:                                       ; preds = %if.then34
  store i32 7, i32* %rfd, align 4, !dbg !663
  store i32 4, i32* %rfa, align 4, !dbg !664
  br label %sw.epilog, !dbg !665

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %23 = load i32, i32* %mtl_rx_op, align 4, !dbg !666
  %conv38 = zext i32 %23 to i64, !dbg !666
  %and39 = and i64 %conv38, -1032193, !dbg !666
  %conv40 = trunc i64 %and39 to i32, !dbg !666
  store i32 %conv40, i32* %mtl_rx_op, align 4, !dbg !666
  %24 = load i32, i32* %rfd, align 4, !dbg !667
  %shl41 = shl i32 %24, 14, !dbg !668
  %25 = load i32, i32* %mtl_rx_op, align 4, !dbg !669
  %or42 = or i32 %25, %shl41, !dbg !669
  store i32 %or42, i32* %mtl_rx_op, align 4, !dbg !669
  %26 = load i32, i32* %mtl_rx_op, align 4, !dbg !670
  %conv43 = zext i32 %26 to i64, !dbg !670
  %and44 = and i64 %conv43, -16129, !dbg !670
  %conv45 = trunc i64 %and44 to i32, !dbg !670
  store i32 %conv45, i32* %mtl_rx_op, align 4, !dbg !670
  %27 = load i32, i32* %rfa, align 4, !dbg !671
  %shl46 = shl i32 %27, 8, !dbg !672
  %28 = load i32, i32* %mtl_rx_op, align 4, !dbg !673
  %or47 = or i32 %28, %shl46, !dbg !673
  store i32 %or47, i32* %mtl_rx_op, align 4, !dbg !673
  br label %if.end48, !dbg !674

if.end48:                                         ; preds = %sw.epilog, %land.lhs.true, %if.end24
  %29 = load i32, i32* %mtl_rx_op, align 4, !dbg !675
  %30 = load i8*, i8** %ioaddr.addr, align 8, !dbg !676
  %31 = load i32, i32* %channel.addr, align 4, !dbg !677
  %mul49 = mul i32 %31, 64, !dbg !677
  %add50 = add i32 3328, %mul49, !dbg !677
  %add51 = add i32 %add50, 48, !dbg !677
  %idx.ext52 = zext i32 %add51 to i64, !dbg !678
  %add.ptr53 = getelementptr i8, i8* %30, i64 %idx.ext52, !dbg !678
  call void @writel(i32 %29, i8* %add.ptr53) #4, !dbg !679
  %32 = load i8*, i8** %ioaddr.addr, align 8, !dbg !680
  %33 = load i32, i32* %channel.addr, align 4, !dbg !681
  %mul54 = mul i32 %33, 64, !dbg !681
  %add55 = add i32 3328, %mul54, !dbg !681
  %add56 = add i32 %add55, 44, !dbg !681
  %idx.ext57 = zext i32 %add56 to i64, !dbg !682
  %add.ptr58 = getelementptr i8, i8* %32, i64 %idx.ext57, !dbg !682
  %call59 = call i32 @readl(i8* %add.ptr58) #4, !dbg !683
  store i32 %call59, i32* %mtl_rx_int, align 4, !dbg !684
  %34 = load i32, i32* %mtl_rx_int, align 4, !dbg !685
  %conv60 = zext i32 %34 to i64, !dbg !685
  %or61 = or i64 %conv60, 16777216, !dbg !686
  %conv62 = trunc i64 %or61 to i32, !dbg !685
  %35 = load i8*, i8** %ioaddr.addr, align 8, !dbg !687
  %36 = load i32, i32* %channel.addr, align 4, !dbg !688
  %mul63 = mul i32 %36, 64, !dbg !688
  %add64 = add i32 3328, %mul63, !dbg !688
  %add65 = add i32 %add64, 44, !dbg !688
  %idx.ext66 = zext i32 %add65 to i64, !dbg !689
  %add.ptr67 = getelementptr i8, i8* %35, i64 %idx.ext66, !dbg !689
  call void @writel(i32 %conv62, i8* %add.ptr67) #4, !dbg !690
  ret void, !dbg !691
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac4_dma_tx_chan_op_mode(i8* %ioaddr, i32 %mode, i32 %channel, i32 %fifosz, i8 zeroext %qmode) #1 !dbg !692 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %fifosz.addr = alloca i32, align 4
  %qmode.addr = alloca i8, align 1
  %mtl_tx_op = alloca i32, align 4
  %tqs = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !693, metadata !DIExpression()), !dbg !694
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !695, metadata !DIExpression()), !dbg !696
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !697, metadata !DIExpression()), !dbg !698
  store i32 %fifosz, i32* %fifosz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fifosz.addr, metadata !699, metadata !DIExpression()), !dbg !700
  store i8 %qmode, i8* %qmode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %qmode.addr, metadata !701, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.declare(metadata i32* %mtl_tx_op, metadata !703, metadata !DIExpression()), !dbg !704
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !705
  %1 = load i32, i32* %channel.addr, align 4, !dbg !706
  %mul = mul i32 %1, 64, !dbg !706
  %add = add i32 3328, %mul, !dbg !706
  %idx.ext = zext i32 %add to i64, !dbg !707
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !707
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !708
  store i32 %call, i32* %mtl_tx_op, align 4, !dbg !704
  call void @llvm.dbg.declare(metadata i32* %tqs, metadata !709, metadata !DIExpression()), !dbg !710
  %2 = load i32, i32* %fifosz.addr, align 4, !dbg !711
  %div = sdiv i32 %2, 256, !dbg !712
  %sub = sub i32 %div, 1, !dbg !713
  store i32 %sub, i32* %tqs, align 4, !dbg !710
  %3 = load i32, i32* %mode.addr, align 4, !dbg !714
  %cmp = icmp eq i32 %3, 1, !dbg !716
  br i1 %cmp, label %if.then, label %if.else, !dbg !717

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !718
  %4 = load i32, i32* %tmp, align 4, !dbg !722
  %5 = load i32, i32* %mtl_tx_op, align 4, !dbg !723
  %conv = zext i32 %5 to i64, !dbg !723
  %or = or i64 %conv, 2, !dbg !723
  %conv1 = trunc i64 %or to i32, !dbg !723
  store i32 %conv1, i32* %mtl_tx_op, align 4, !dbg !723
  br label %if.end47, !dbg !724

if.else:                                          ; preds = %entry
  store i32 0, i32* %tmp2, align 4, !dbg !725
  %6 = load i32, i32* %tmp2, align 4, !dbg !729
  %7 = load i32, i32* %mtl_tx_op, align 4, !dbg !730
  %conv3 = zext i32 %7 to i64, !dbg !730
  %and = and i64 %conv3, -3, !dbg !730
  %conv4 = trunc i64 %and to i32, !dbg !730
  store i32 %conv4, i32* %mtl_tx_op, align 4, !dbg !730
  %8 = load i32, i32* %mtl_tx_op, align 4, !dbg !731
  %and5 = and i32 %8, 112, !dbg !731
  store i32 %and5, i32* %mtl_tx_op, align 4, !dbg !731
  %9 = load i32, i32* %mode.addr, align 4, !dbg !732
  %cmp6 = icmp sle i32 %9, 32, !dbg !734
  br i1 %cmp6, label %if.then8, label %if.else9, !dbg !735

if.then8:                                         ; preds = %if.else
  %10 = load i32, i32* %mtl_tx_op, align 4, !dbg !736
  store i32 %10, i32* %mtl_tx_op, align 4, !dbg !736
  br label %if.end46, !dbg !737

if.else9:                                         ; preds = %if.else
  %11 = load i32, i32* %mode.addr, align 4, !dbg !738
  %cmp10 = icmp sle i32 %11, 64, !dbg !740
  br i1 %cmp10, label %if.then12, label %if.else14, !dbg !741

if.then12:                                        ; preds = %if.else9
  %12 = load i32, i32* %mtl_tx_op, align 4, !dbg !742
  %or13 = or i32 %12, 16, !dbg !742
  store i32 %or13, i32* %mtl_tx_op, align 4, !dbg !742
  br label %if.end45, !dbg !743

if.else14:                                        ; preds = %if.else9
  %13 = load i32, i32* %mode.addr, align 4, !dbg !744
  %cmp15 = icmp sle i32 %13, 96, !dbg !746
  br i1 %cmp15, label %if.then17, label %if.else19, !dbg !747

if.then17:                                        ; preds = %if.else14
  %14 = load i32, i32* %mtl_tx_op, align 4, !dbg !748
  %or18 = or i32 %14, 32, !dbg !748
  store i32 %or18, i32* %mtl_tx_op, align 4, !dbg !748
  br label %if.end44, !dbg !749

if.else19:                                        ; preds = %if.else14
  %15 = load i32, i32* %mode.addr, align 4, !dbg !750
  %cmp20 = icmp sle i32 %15, 128, !dbg !752
  br i1 %cmp20, label %if.then22, label %if.else24, !dbg !753

if.then22:                                        ; preds = %if.else19
  %16 = load i32, i32* %mtl_tx_op, align 4, !dbg !754
  %or23 = or i32 %16, 48, !dbg !754
  store i32 %or23, i32* %mtl_tx_op, align 4, !dbg !754
  br label %if.end43, !dbg !755

if.else24:                                        ; preds = %if.else19
  %17 = load i32, i32* %mode.addr, align 4, !dbg !756
  %cmp25 = icmp sle i32 %17, 192, !dbg !758
  br i1 %cmp25, label %if.then27, label %if.else29, !dbg !759

if.then27:                                        ; preds = %if.else24
  %18 = load i32, i32* %mtl_tx_op, align 4, !dbg !760
  %or28 = or i32 %18, 64, !dbg !760
  store i32 %or28, i32* %mtl_tx_op, align 4, !dbg !760
  br label %if.end42, !dbg !761

if.else29:                                        ; preds = %if.else24
  %19 = load i32, i32* %mode.addr, align 4, !dbg !762
  %cmp30 = icmp sle i32 %19, 256, !dbg !764
  br i1 %cmp30, label %if.then32, label %if.else34, !dbg !765

if.then32:                                        ; preds = %if.else29
  %20 = load i32, i32* %mtl_tx_op, align 4, !dbg !766
  %or33 = or i32 %20, 80, !dbg !766
  store i32 %or33, i32* %mtl_tx_op, align 4, !dbg !766
  br label %if.end41, !dbg !767

if.else34:                                        ; preds = %if.else29
  %21 = load i32, i32* %mode.addr, align 4, !dbg !768
  %cmp35 = icmp sle i32 %21, 384, !dbg !770
  br i1 %cmp35, label %if.then37, label %if.else39, !dbg !771

if.then37:                                        ; preds = %if.else34
  %22 = load i32, i32* %mtl_tx_op, align 4, !dbg !772
  %or38 = or i32 %22, 96, !dbg !772
  store i32 %or38, i32* %mtl_tx_op, align 4, !dbg !772
  br label %if.end, !dbg !773

if.else39:                                        ; preds = %if.else34
  %23 = load i32, i32* %mtl_tx_op, align 4, !dbg !774
  %or40 = or i32 %23, 112, !dbg !774
  store i32 %or40, i32* %mtl_tx_op, align 4, !dbg !774
  br label %if.end

if.end:                                           ; preds = %if.else39, %if.then37
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.then32
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then27
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then22
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then17
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then12
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then8
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then
  %24 = load i32, i32* %mtl_tx_op, align 4, !dbg !775
  %conv48 = zext i32 %24 to i64, !dbg !775
  %and49 = and i64 %conv48, -13, !dbg !775
  %conv50 = trunc i64 %and49 to i32, !dbg !775
  store i32 %conv50, i32* %mtl_tx_op, align 4, !dbg !775
  %25 = load i8, i8* %qmode.addr, align 1, !dbg !776
  %conv51 = zext i8 %25 to i32, !dbg !776
  %cmp52 = icmp ne i32 %conv51, 0, !dbg !778
  br i1 %cmp52, label %if.then54, label %if.else58, !dbg !779

if.then54:                                        ; preds = %if.end47
  %26 = load i32, i32* %mtl_tx_op, align 4, !dbg !780
  %conv55 = zext i32 %26 to i64, !dbg !780
  %or56 = or i64 %conv55, 8, !dbg !780
  %conv57 = trunc i64 %or56 to i32, !dbg !780
  store i32 %conv57, i32* %mtl_tx_op, align 4, !dbg !780
  br label %if.end62, !dbg !781

if.else58:                                        ; preds = %if.end47
  %27 = load i32, i32* %mtl_tx_op, align 4, !dbg !782
  %conv59 = zext i32 %27 to i64, !dbg !782
  %or60 = or i64 %conv59, 4, !dbg !782
  %conv61 = trunc i64 %or60 to i32, !dbg !782
  store i32 %conv61, i32* %mtl_tx_op, align 4, !dbg !782
  br label %if.end62

if.end62:                                         ; preds = %if.else58, %if.then54
  %28 = load i32, i32* %mtl_tx_op, align 4, !dbg !783
  %conv63 = zext i32 %28 to i64, !dbg !783
  %and64 = and i64 %conv63, -33488897, !dbg !783
  %conv65 = trunc i64 %and64 to i32, !dbg !783
  store i32 %conv65, i32* %mtl_tx_op, align 4, !dbg !783
  %29 = load i32, i32* %tqs, align 4, !dbg !784
  %shl = shl i32 %29, 16, !dbg !785
  %30 = load i32, i32* %mtl_tx_op, align 4, !dbg !786
  %or66 = or i32 %30, %shl, !dbg !786
  store i32 %or66, i32* %mtl_tx_op, align 4, !dbg !786
  %31 = load i32, i32* %mtl_tx_op, align 4, !dbg !787
  %32 = load i8*, i8** %ioaddr.addr, align 8, !dbg !788
  %33 = load i32, i32* %channel.addr, align 4, !dbg !789
  %mul67 = mul i32 %33, 64, !dbg !789
  %add68 = add i32 3328, %mul67, !dbg !789
  %idx.ext69 = zext i32 %add68 to i64, !dbg !790
  %add.ptr70 = getelementptr i8, i8* %32, i64 %idx.ext69, !dbg !790
  call void @writel(i32 %31, i8* %add.ptr70) #4, !dbg !791
  ret void, !dbg !792
}

; Function Attrs: noredzone
declare dso_local void @dwmac4_enable_dma_irq(i8*, i32, i1 zeroext, i1 zeroext) #0

; Function Attrs: noredzone
declare dso_local void @dwmac4_disable_dma_irq(i8*, i32, i1 zeroext, i1 zeroext) #0

; Function Attrs: noredzone
declare dso_local void @dwmac4_dma_start_tx(i8*, i32) #0

; Function Attrs: noredzone
declare dso_local void @dwmac4_dma_stop_tx(i8*, i32) #0

; Function Attrs: noredzone
declare dso_local void @dwmac4_dma_start_rx(i8*, i32) #0

; Function Attrs: noredzone
declare dso_local void @dwmac4_dma_stop_rx(i8*, i32) #0

; Function Attrs: noredzone
declare dso_local i32 @dwmac4_dma_interrupt(i8*, %struct.stmmac_extra_stats*, i32) #0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac4_get_hw_feature(i8* %ioaddr, %struct.dma_features* %dma_cap) #1 !dbg !793 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %dma_cap.addr = alloca %struct.dma_features*, align 8
  %hw_cap = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !794, metadata !DIExpression()), !dbg !795
  store %struct.dma_features* %dma_cap, %struct.dma_features** %dma_cap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_features** %dma_cap.addr, metadata !796, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.declare(metadata i32* %hw_cap, metadata !798, metadata !DIExpression()), !dbg !799
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !800
  %add.ptr = getelementptr i8, i8* %0, i64 284, !dbg !801
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !802
  store i32 %call, i32* %hw_cap, align 4, !dbg !799
  %1 = load i32, i32* %hw_cap, align 4, !dbg !803
  %conv = zext i32 %1 to i64, !dbg !803
  %and = and i64 %conv, 1, !dbg !804
  %conv1 = trunc i64 %and to i32, !dbg !805
  %2 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !806
  %mbps_10_100 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %2, i32 0, i32 0, !dbg !807
  store i32 %conv1, i32* %mbps_10_100, align 4, !dbg !808
  %3 = load i32, i32* %hw_cap, align 4, !dbg !809
  %conv2 = zext i32 %3 to i64, !dbg !809
  %and3 = and i64 %conv2, 2, !dbg !810
  %shr = lshr i64 %and3, 1, !dbg !811
  %conv4 = trunc i64 %shr to i32, !dbg !812
  %4 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !813
  %mbps_1000 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %4, i32 0, i32 1, !dbg !814
  store i32 %conv4, i32* %mbps_1000, align 4, !dbg !815
  %5 = load i32, i32* %hw_cap, align 4, !dbg !816
  %conv5 = zext i32 %5 to i64, !dbg !816
  %and6 = and i64 %conv5, 4, !dbg !817
  %shr7 = lshr i64 %and6, 2, !dbg !818
  %conv8 = trunc i64 %shr7 to i32, !dbg !819
  %6 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !820
  %half_duplex = getelementptr inbounds %struct.dma_features, %struct.dma_features* %6, i32 0, i32 2, !dbg !821
  store i32 %conv8, i32* %half_duplex, align 4, !dbg !822
  %7 = load i32, i32* %hw_cap, align 4, !dbg !823
  %conv9 = zext i32 %7 to i64, !dbg !823
  %and10 = and i64 %conv9, 16, !dbg !824
  %shr11 = lshr i64 %and10, 4, !dbg !825
  %conv12 = trunc i64 %shr11 to i32, !dbg !826
  %8 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !827
  %vlhash = getelementptr inbounds %struct.dma_features, %struct.dma_features* %8, i32 0, i32 35, !dbg !828
  store i32 %conv12, i32* %vlhash, align 4, !dbg !829
  %9 = load i32, i32* %hw_cap, align 4, !dbg !830
  %conv13 = zext i32 %9 to i64, !dbg !830
  %and14 = and i64 %conv13, 262144, !dbg !831
  %shr15 = lshr i64 %and14, 18, !dbg !832
  %conv16 = trunc i64 %shr15 to i32, !dbg !833
  %10 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !834
  %multi_addr = getelementptr inbounds %struct.dma_features, %struct.dma_features* %10, i32 0, i32 4, !dbg !835
  store i32 %conv16, i32* %multi_addr, align 4, !dbg !836
  %11 = load i32, i32* %hw_cap, align 4, !dbg !837
  %conv17 = zext i32 %11 to i64, !dbg !837
  %and18 = and i64 %conv17, 8, !dbg !838
  %shr19 = lshr i64 %and18, 3, !dbg !839
  %conv20 = trunc i64 %shr19 to i32, !dbg !840
  %12 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !841
  %pcs = getelementptr inbounds %struct.dma_features, %struct.dma_features* %12, i32 0, i32 5, !dbg !842
  store i32 %conv20, i32* %pcs, align 4, !dbg !843
  %13 = load i32, i32* %hw_cap, align 4, !dbg !844
  %conv21 = zext i32 %13 to i64, !dbg !844
  %and22 = and i64 %conv21, 32, !dbg !845
  %shr23 = lshr i64 %and22, 5, !dbg !846
  %conv24 = trunc i64 %shr23 to i32, !dbg !847
  %14 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !848
  %sma_mdio = getelementptr inbounds %struct.dma_features, %struct.dma_features* %14, i32 0, i32 6, !dbg !849
  store i32 %conv24, i32* %sma_mdio, align 4, !dbg !850
  %15 = load i32, i32* %hw_cap, align 4, !dbg !851
  %conv25 = zext i32 %15 to i64, !dbg !851
  %and26 = and i64 %conv25, 64, !dbg !852
  %shr27 = lshr i64 %and26, 6, !dbg !853
  %conv28 = trunc i64 %shr27 to i32, !dbg !854
  %16 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !855
  %pmt_remote_wake_up = getelementptr inbounds %struct.dma_features, %struct.dma_features* %16, i32 0, i32 7, !dbg !856
  store i32 %conv28, i32* %pmt_remote_wake_up, align 4, !dbg !857
  %17 = load i32, i32* %hw_cap, align 4, !dbg !858
  %conv29 = zext i32 %17 to i64, !dbg !858
  %and30 = and i64 %conv29, 128, !dbg !859
  %shr31 = lshr i64 %and30, 7, !dbg !860
  %conv32 = trunc i64 %shr31 to i32, !dbg !861
  %18 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !862
  %pmt_magic_frame = getelementptr inbounds %struct.dma_features, %struct.dma_features* %18, i32 0, i32 8, !dbg !863
  store i32 %conv32, i32* %pmt_magic_frame, align 4, !dbg !864
  %19 = load i32, i32* %hw_cap, align 4, !dbg !865
  %conv33 = zext i32 %19 to i64, !dbg !865
  %and34 = and i64 %conv33, 256, !dbg !866
  %shr35 = lshr i64 %and34, 8, !dbg !867
  %conv36 = trunc i64 %shr35 to i32, !dbg !868
  %20 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !869
  %rmon = getelementptr inbounds %struct.dma_features, %struct.dma_features* %20, i32 0, i32 9, !dbg !870
  store i32 %conv36, i32* %rmon, align 4, !dbg !871
  %21 = load i32, i32* %hw_cap, align 4, !dbg !872
  %conv37 = zext i32 %21 to i64, !dbg !872
  %and38 = and i64 %conv37, 4096, !dbg !873
  %shr39 = lshr i64 %and38, 12, !dbg !874
  %conv40 = trunc i64 %shr39 to i32, !dbg !875
  %22 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !876
  %atime_stamp = getelementptr inbounds %struct.dma_features, %struct.dma_features* %22, i32 0, i32 11, !dbg !877
  store i32 %conv40, i32* %atime_stamp, align 4, !dbg !878
  %23 = load i32, i32* %hw_cap, align 4, !dbg !879
  %conv41 = zext i32 %23 to i64, !dbg !879
  %and42 = and i64 %conv41, 8192, !dbg !880
  %shr43 = lshr i64 %and42, 13, !dbg !881
  %conv44 = trunc i64 %shr43 to i32, !dbg !882
  %24 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !883
  %eee = getelementptr inbounds %struct.dma_features, %struct.dma_features* %24, i32 0, i32 12, !dbg !884
  store i32 %conv44, i32* %eee, align 4, !dbg !885
  %25 = load i32, i32* %hw_cap, align 4, !dbg !886
  %conv45 = zext i32 %25 to i64, !dbg !886
  %and46 = and i64 %conv45, 16384, !dbg !887
  %shr47 = lshr i64 %and46, 14, !dbg !888
  %conv48 = trunc i64 %shr47 to i32, !dbg !889
  %26 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !890
  %tx_coe = getelementptr inbounds %struct.dma_features, %struct.dma_features* %26, i32 0, i32 16, !dbg !891
  store i32 %conv48, i32* %tx_coe, align 4, !dbg !892
  %27 = load i32, i32* %hw_cap, align 4, !dbg !893
  %conv49 = zext i32 %27 to i64, !dbg !893
  %and50 = and i64 %conv49, 65536, !dbg !894
  %shr51 = lshr i64 %and50, 16, !dbg !895
  %conv52 = trunc i64 %shr51 to i32, !dbg !896
  %28 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !897
  %rx_coe = getelementptr inbounds %struct.dma_features, %struct.dma_features* %28, i32 0, i32 17, !dbg !898
  store i32 %conv52, i32* %rx_coe, align 4, !dbg !899
  %29 = load i32, i32* %hw_cap, align 4, !dbg !900
  %conv53 = zext i32 %29 to i64, !dbg !900
  %and54 = and i64 %conv53, 134217728, !dbg !901
  %shr55 = lshr i64 %and54, 27, !dbg !902
  %conv56 = trunc i64 %shr55 to i32, !dbg !903
  %30 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !904
  %vlins = getelementptr inbounds %struct.dma_features, %struct.dma_features* %30, i32 0, i32 37, !dbg !905
  store i32 %conv56, i32* %vlins, align 4, !dbg !906
  %31 = load i32, i32* %hw_cap, align 4, !dbg !907
  %conv57 = zext i32 %31 to i64, !dbg !907
  %and58 = and i64 %conv57, 512, !dbg !908
  %shr59 = lshr i64 %and58, 9, !dbg !909
  %conv60 = trunc i64 %shr59 to i32, !dbg !910
  %32 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !911
  %arpoffsel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %32, i32 0, i32 40, !dbg !912
  store i32 %conv60, i32* %arpoffsel, align 4, !dbg !913
  %33 = load i8*, i8** %ioaddr.addr, align 8, !dbg !914
  %add.ptr61 = getelementptr i8, i8* %33, i64 288, !dbg !915
  %call62 = call i32 @readl(i8* %add.ptr61) #4, !dbg !916
  store i32 %call62, i32* %hw_cap, align 4, !dbg !917
  %34 = load i32, i32* %hw_cap, align 4, !dbg !918
  %conv63 = zext i32 %34 to i64, !dbg !918
  %and64 = and i64 %conv63, 2013265920, !dbg !919
  %shr65 = lshr i64 %and64, 27, !dbg !920
  %conv66 = trunc i64 %shr65 to i32, !dbg !921
  %35 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !922
  %l3l4fnum = getelementptr inbounds %struct.dma_features, %struct.dma_features* %35, i32 0, i32 39, !dbg !923
  store i32 %conv66, i32* %l3l4fnum, align 4, !dbg !924
  %36 = load i32, i32* %hw_cap, align 4, !dbg !925
  %conv67 = zext i32 %36 to i64, !dbg !925
  %and68 = and i64 %conv67, 50331648, !dbg !926
  %shr69 = lshr i64 %and68, 24, !dbg !927
  %conv70 = trunc i64 %shr69 to i32, !dbg !928
  %37 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !929
  %hash_tb_sz = getelementptr inbounds %struct.dma_features, %struct.dma_features* %37, i32 0, i32 14, !dbg !930
  store i32 %conv70, i32* %hash_tb_sz, align 4, !dbg !931
  %38 = load i32, i32* %hw_cap, align 4, !dbg !932
  %conv71 = zext i32 %38 to i64, !dbg !932
  %and72 = and i64 %conv71, 1048576, !dbg !933
  %shr73 = lshr i64 %and72, 20, !dbg !934
  %conv74 = trunc i64 %shr73 to i32, !dbg !935
  %39 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !936
  %av = getelementptr inbounds %struct.dma_features, %struct.dma_features* %39, i32 0, i32 13, !dbg !937
  store i32 %conv74, i32* %av, align 4, !dbg !938
  %40 = load i32, i32* %hw_cap, align 4, !dbg !939
  %conv75 = zext i32 %40 to i64, !dbg !939
  %and76 = and i64 %conv75, 262144, !dbg !940
  %shr77 = lshr i64 %and76, 18, !dbg !941
  %conv78 = trunc i64 %shr77 to i32, !dbg !942
  %41 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !943
  %tsoen = getelementptr inbounds %struct.dma_features, %struct.dma_features* %41, i32 0, i32 15, !dbg !944
  store i32 %conv78, i32* %tsoen, align 4, !dbg !945
  %42 = load i32, i32* %hw_cap, align 4, !dbg !946
  %conv79 = zext i32 %42 to i64, !dbg !946
  %and80 = and i64 %conv79, 131072, !dbg !947
  %shr81 = lshr i64 %and80, 17, !dbg !948
  %conv82 = trunc i64 %shr81 to i32, !dbg !949
  %43 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !950
  %sphen = getelementptr inbounds %struct.dma_features, %struct.dma_features* %43, i32 0, i32 36, !dbg !951
  store i32 %conv82, i32* %sphen, align 4, !dbg !952
  %44 = load i32, i32* %hw_cap, align 4, !dbg !953
  %conv83 = zext i32 %44 to i64, !dbg !953
  %and84 = and i64 %conv83, 49152, !dbg !954
  %shr85 = lshr i64 %and84, 14, !dbg !955
  %conv86 = trunc i64 %shr85 to i32, !dbg !956
  %45 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !957
  %addr64 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %45, i32 0, i32 33, !dbg !958
  store i32 %conv86, i32* %addr64, align 4, !dbg !959
  %46 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !960
  %addr6487 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %46, i32 0, i32 33, !dbg !961
  %47 = load i32, i32* %addr6487, align 4, !dbg !961
  switch i32 %47, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb89
    i32 2, label %sw.bb91
  ], !dbg !962

sw.bb:                                            ; preds = %entry
  %48 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !963
  %addr6488 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %48, i32 0, i32 33, !dbg !965
  store i32 32, i32* %addr6488, align 4, !dbg !966
  br label %sw.epilog, !dbg !967

sw.bb89:                                          ; preds = %entry
  %49 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !968
  %addr6490 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %49, i32 0, i32 33, !dbg !969
  store i32 40, i32* %addr6490, align 4, !dbg !970
  br label %sw.epilog, !dbg !971

sw.bb91:                                          ; preds = %entry
  %50 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !972
  %addr6492 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %50, i32 0, i32 33, !dbg !973
  store i32 48, i32* %addr6492, align 4, !dbg !974
  br label %sw.epilog, !dbg !975

sw.default:                                       ; preds = %entry
  %51 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !976
  %addr6493 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %51, i32 0, i32 33, !dbg !977
  store i32 32, i32* %addr6493, align 4, !dbg !978
  br label %sw.epilog, !dbg !979

sw.epilog:                                        ; preds = %sw.default, %sw.bb91, %sw.bb89, %sw.bb
  %52 = load i32, i32* %hw_cap, align 4, !dbg !980
  %conv94 = zext i32 %52 to i64, !dbg !980
  %and95 = and i64 %conv94, 1984, !dbg !981
  %shr96 = lshr i64 %and95, 6, !dbg !982
  %sh_prom = trunc i64 %shr96 to i32, !dbg !983
  %shl = shl i32 128, %sh_prom, !dbg !983
  %53 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !984
  %tx_fifo_size = getelementptr inbounds %struct.dma_features, %struct.dma_features* %53, i32 0, i32 27, !dbg !985
  store i32 %shl, i32* %tx_fifo_size, align 4, !dbg !986
  %54 = load i32, i32* %hw_cap, align 4, !dbg !987
  %conv97 = zext i32 %54 to i64, !dbg !987
  %and98 = and i64 %conv97, 31, !dbg !988
  %shr99 = lshr i64 %and98, 0, !dbg !989
  %sh_prom100 = trunc i64 %shr99 to i32, !dbg !990
  %shl101 = shl i32 128, %sh_prom100, !dbg !990
  %55 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !991
  %rx_fifo_size = getelementptr inbounds %struct.dma_features, %struct.dma_features* %55, i32 0, i32 28, !dbg !992
  store i32 %shl101, i32* %rx_fifo_size, align 4, !dbg !993
  %56 = load i8*, i8** %ioaddr.addr, align 8, !dbg !994
  %add.ptr102 = getelementptr i8, i8* %56, i64 292, !dbg !995
  %call103 = call i32 @readl(i8* %add.ptr102) #4, !dbg !996
  store i32 %call103, i32* %hw_cap, align 4, !dbg !997
  %57 = load i32, i32* %hw_cap, align 4, !dbg !998
  %conv104 = zext i32 %57 to i64, !dbg !998
  %and105 = and i64 %conv104, 61440, !dbg !999
  %shr106 = lshr i64 %and105, 12, !dbg !1000
  %add = add i64 %shr106, 1, !dbg !1001
  %conv107 = trunc i64 %add to i32, !dbg !1002
  %58 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1003
  %number_rx_channel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %58, i32 0, i32 21, !dbg !1004
  store i32 %conv107, i32* %number_rx_channel, align 4, !dbg !1005
  %59 = load i32, i32* %hw_cap, align 4, !dbg !1006
  %conv108 = zext i32 %59 to i64, !dbg !1006
  %and109 = and i64 %conv108, 3932160, !dbg !1007
  %shr110 = lshr i64 %and109, 18, !dbg !1008
  %add111 = add i64 %shr110, 1, !dbg !1009
  %conv112 = trunc i64 %add111 to i32, !dbg !1010
  %60 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1011
  %number_tx_channel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %60, i32 0, i32 22, !dbg !1012
  store i32 %conv112, i32* %number_tx_channel, align 4, !dbg !1013
  %61 = load i32, i32* %hw_cap, align 4, !dbg !1014
  %conv113 = zext i32 %61 to i64, !dbg !1014
  %and114 = and i64 %conv113, 15, !dbg !1015
  %shr115 = lshr i64 %and114, 0, !dbg !1016
  %add116 = add i64 %shr115, 1, !dbg !1017
  %conv117 = trunc i64 %add116 to i32, !dbg !1018
  %62 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1019
  %number_rx_queues = getelementptr inbounds %struct.dma_features, %struct.dma_features* %62, i32 0, i32 23, !dbg !1020
  store i32 %conv117, i32* %number_rx_queues, align 4, !dbg !1021
  %63 = load i32, i32* %hw_cap, align 4, !dbg !1022
  %conv118 = zext i32 %63 to i64, !dbg !1022
  %and119 = and i64 %conv118, 960, !dbg !1023
  %shr120 = lshr i64 %and119, 6, !dbg !1024
  %add121 = add i64 %shr120, 1, !dbg !1025
  %conv122 = trunc i64 %add121 to i32, !dbg !1026
  %64 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1027
  %number_tx_queues = getelementptr inbounds %struct.dma_features, %struct.dma_features* %64, i32 0, i32 24, !dbg !1028
  store i32 %conv122, i32* %number_tx_queues, align 4, !dbg !1029
  %65 = load i32, i32* %hw_cap, align 4, !dbg !1030
  %conv123 = zext i32 %65 to i64, !dbg !1030
  %and124 = and i64 %conv123, 117440512, !dbg !1031
  %shr125 = lshr i64 %and124, 24, !dbg !1032
  %conv126 = trunc i64 %shr125 to i32, !dbg !1033
  %66 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1034
  %pps_out_num = getelementptr inbounds %struct.dma_features, %struct.dma_features* %66, i32 0, i32 25, !dbg !1035
  store i32 %conv126, i32* %pps_out_num, align 4, !dbg !1036
  %67 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1037
  %time_stamp = getelementptr inbounds %struct.dma_features, %struct.dma_features* %67, i32 0, i32 10, !dbg !1038
  store i32 0, i32* %time_stamp, align 4, !dbg !1039
  %68 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1040
  %add.ptr127 = getelementptr i8, i8* %68, i64 296, !dbg !1041
  %call128 = call i32 @readl(i8* %add.ptr127) #4, !dbg !1042
  store i32 %call128, i32* %hw_cap, align 4, !dbg !1043
  %69 = load i32, i32* %hw_cap, align 4, !dbg !1044
  %conv129 = zext i32 %69 to i64, !dbg !1044
  %and130 = and i64 %conv129, 805306368, !dbg !1045
  %shr131 = lshr i64 %and130, 28, !dbg !1046
  %conv132 = trunc i64 %shr131 to i32, !dbg !1047
  %70 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1048
  %asp = getelementptr inbounds %struct.dma_features, %struct.dma_features* %70, i32 0, i32 29, !dbg !1049
  store i32 %conv132, i32* %asp, align 4, !dbg !1050
  %71 = load i32, i32* %hw_cap, align 4, !dbg !1051
  %conv133 = zext i32 %71 to i64, !dbg !1051
  %and134 = and i64 %conv133, 134217728, !dbg !1052
  %shr135 = lshr i64 %and134, 27, !dbg !1053
  %conv136 = trunc i64 %shr135 to i32, !dbg !1054
  %72 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1055
  %tbssel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %72, i32 0, i32 45, !dbg !1056
  store i32 %conv136, i32* %tbssel, align 4, !dbg !1057
  %73 = load i32, i32* %hw_cap, align 4, !dbg !1058
  %conv137 = zext i32 %73 to i64, !dbg !1058
  %and138 = and i64 %conv137, 67108864, !dbg !1059
  %shr139 = lshr i64 %and138, 26, !dbg !1060
  %conv140 = trunc i64 %shr139 to i32, !dbg !1061
  %74 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1062
  %fpesel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %74, i32 0, i32 44, !dbg !1063
  store i32 %conv140, i32* %fpesel, align 4, !dbg !1064
  %75 = load i32, i32* %hw_cap, align 4, !dbg !1065
  %conv141 = zext i32 %75 to i64, !dbg !1065
  %and142 = and i64 %conv141, 3145728, !dbg !1066
  %shr143 = lshr i64 %and142, 20, !dbg !1067
  %conv144 = trunc i64 %shr143 to i32, !dbg !1068
  %76 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1069
  %estwid = getelementptr inbounds %struct.dma_features, %struct.dma_features* %76, i32 0, i32 41, !dbg !1070
  store i32 %conv144, i32* %estwid, align 4, !dbg !1071
  %77 = load i32, i32* %hw_cap, align 4, !dbg !1072
  %conv145 = zext i32 %77 to i64, !dbg !1072
  %and146 = and i64 %conv145, 917504, !dbg !1073
  %shr147 = lshr i64 %and146, 17, !dbg !1074
  %conv148 = trunc i64 %shr147 to i32, !dbg !1075
  %78 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1076
  %estdep = getelementptr inbounds %struct.dma_features, %struct.dma_features* %78, i32 0, i32 42, !dbg !1077
  store i32 %conv148, i32* %estdep, align 4, !dbg !1078
  %79 = load i32, i32* %hw_cap, align 4, !dbg !1079
  %conv149 = zext i32 %79 to i64, !dbg !1079
  %and150 = and i64 %conv149, 65536, !dbg !1080
  %shr151 = lshr i64 %and150, 16, !dbg !1081
  %conv152 = trunc i64 %shr151 to i32, !dbg !1082
  %80 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1083
  %estsel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %80, i32 0, i32 43, !dbg !1084
  store i32 %conv152, i32* %estsel, align 4, !dbg !1085
  %81 = load i32, i32* %hw_cap, align 4, !dbg !1086
  %conv153 = zext i32 %81 to i64, !dbg !1086
  %and154 = and i64 %conv153, 24576, !dbg !1087
  %shr155 = lshr i64 %and154, 13, !dbg !1088
  %conv156 = trunc i64 %shr155 to i32, !dbg !1089
  %82 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1090
  %frpes = getelementptr inbounds %struct.dma_features, %struct.dma_features* %82, i32 0, i32 32, !dbg !1091
  store i32 %conv156, i32* %frpes, align 4, !dbg !1092
  %83 = load i32, i32* %hw_cap, align 4, !dbg !1093
  %conv157 = zext i32 %83 to i64, !dbg !1093
  %and158 = and i64 %conv157, 6144, !dbg !1094
  %shr159 = lshr i64 %and158, 11, !dbg !1095
  %conv160 = trunc i64 %shr159 to i32, !dbg !1096
  %84 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1097
  %frpbs = getelementptr inbounds %struct.dma_features, %struct.dma_features* %84, i32 0, i32 31, !dbg !1098
  store i32 %conv160, i32* %frpbs, align 4, !dbg !1099
  %85 = load i32, i32* %hw_cap, align 4, !dbg !1100
  %conv161 = zext i32 %85 to i64, !dbg !1100
  %and162 = and i64 %conv161, 1024, !dbg !1101
  %shr163 = lshr i64 %and162, 10, !dbg !1102
  %conv164 = trunc i64 %shr163 to i32, !dbg !1103
  %86 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1104
  %frpsel = getelementptr inbounds %struct.dma_features, %struct.dma_features* %86, i32 0, i32 30, !dbg !1105
  store i32 %conv164, i32* %frpsel, align 4, !dbg !1106
  %87 = load i32, i32* %hw_cap, align 4, !dbg !1107
  %conv165 = zext i32 %87 to i64, !dbg !1107
  %and166 = and i64 %conv165, 32, !dbg !1108
  %shr167 = lshr i64 %and166, 5, !dbg !1109
  %conv168 = trunc i64 %shr167 to i32, !dbg !1110
  %88 = load %struct.dma_features*, %struct.dma_features** %dma_cap.addr, align 8, !dbg !1111
  %dvlan = getelementptr inbounds %struct.dma_features, %struct.dma_features* %88, i32 0, i32 38, !dbg !1112
  store i32 %conv168, i32* %dvlan, align 4, !dbg !1113
  ret void, !dbg !1114
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac4_rx_watchdog(i8* %ioaddr, i32 %riwt, i32 %number_chan) #1 !dbg !1115 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %riwt.addr = alloca i32, align 4
  %number_chan.addr = alloca i32, align 4
  %chan = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1116, metadata !DIExpression()), !dbg !1117
  store i32 %riwt, i32* %riwt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %riwt.addr, metadata !1118, metadata !DIExpression()), !dbg !1119
  store i32 %number_chan, i32* %number_chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %number_chan.addr, metadata !1120, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !1122, metadata !DIExpression()), !dbg !1123
  store i32 0, i32* %chan, align 4, !dbg !1124
  br label %for.cond, !dbg !1126

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %chan, align 4, !dbg !1127
  %1 = load i32, i32* %number_chan.addr, align 4, !dbg !1129
  %cmp = icmp ult i32 %0, %1, !dbg !1130
  br i1 %cmp, label %for.body, label %for.end, !dbg !1131

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %riwt.addr, align 4, !dbg !1132
  %3 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1133
  %4 = load i32, i32* %chan, align 4, !dbg !1134
  %mul = mul i32 %4, 128, !dbg !1134
  %add = add i32 4352, %mul, !dbg !1134
  %add1 = add i32 %add, 56, !dbg !1134
  %idx.ext = zext i32 %add1 to i64, !dbg !1135
  %add.ptr = getelementptr i8, i8* %3, i64 %idx.ext, !dbg !1135
  call void @writel(i32 %2, i8* %add.ptr) #4, !dbg !1136
  br label %for.inc, !dbg !1136

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %chan, align 4, !dbg !1137
  %inc = add i32 %5, 1, !dbg !1137
  store i32 %inc, i32* %chan, align 4, !dbg !1137
  br label %for.cond, !dbg !1138, !llvm.loop !1139

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1141
}

; Function Attrs: noredzone
declare dso_local void @dwmac4_set_tx_ring_len(i8*, i32, i32) #0

; Function Attrs: noredzone
declare dso_local void @dwmac4_set_rx_ring_len(i8*, i32, i32) #0

; Function Attrs: noredzone
declare dso_local void @dwmac4_set_rx_tail_ptr(i8*, i32, i32) #0

; Function Attrs: noredzone
declare dso_local void @dwmac4_set_tx_tail_ptr(i8*, i32, i32) #0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac4_enable_tso(i8* %ioaddr, i1 zeroext %en, i32 %chan) #1 !dbg !1142 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %en.addr = alloca i8, align 1
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1143, metadata !DIExpression()), !dbg !1144
  %frombool = zext i1 %en to i8
  store i8 %frombool, i8* %en.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %en.addr, metadata !1145, metadata !DIExpression()), !dbg !1146
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !1147, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.declare(metadata i32* %value, metadata !1149, metadata !DIExpression()), !dbg !1150
  %0 = load i8, i8* %en.addr, align 1, !dbg !1151
  %tobool = trunc i8 %0 to i1, !dbg !1151
  br i1 %tobool, label %if.then, label %if.else, !dbg !1153

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1154
  %2 = load i32, i32* %chan.addr, align 4, !dbg !1156
  %mul = mul i32 %2, 128, !dbg !1156
  %add = add i32 4352, %mul, !dbg !1156
  %add1 = add i32 %add, 4, !dbg !1156
  %idx.ext = zext i32 %add1 to i64, !dbg !1157
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !1157
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !1158
  store i32 %call, i32* %value, align 4, !dbg !1159
  %3 = load i32, i32* %value, align 4, !dbg !1160
  %conv = zext i32 %3 to i64, !dbg !1160
  %or = or i64 %conv, 4096, !dbg !1161
  %conv2 = trunc i64 %or to i32, !dbg !1160
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1162
  %5 = load i32, i32* %chan.addr, align 4, !dbg !1163
  %mul3 = mul i32 %5, 128, !dbg !1163
  %add4 = add i32 4352, %mul3, !dbg !1163
  %add5 = add i32 %add4, 4, !dbg !1163
  %idx.ext6 = zext i32 %add5 to i64, !dbg !1164
  %add.ptr7 = getelementptr i8, i8* %4, i64 %idx.ext6, !dbg !1164
  call void @writel(i32 %conv2, i8* %add.ptr7) #4, !dbg !1165
  br label %if.end, !dbg !1166

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1167
  %7 = load i32, i32* %chan.addr, align 4, !dbg !1169
  %mul8 = mul i32 %7, 128, !dbg !1169
  %add9 = add i32 4352, %mul8, !dbg !1169
  %add10 = add i32 %add9, 4, !dbg !1169
  %idx.ext11 = zext i32 %add10 to i64, !dbg !1170
  %add.ptr12 = getelementptr i8, i8* %6, i64 %idx.ext11, !dbg !1170
  %call13 = call i32 @readl(i8* %add.ptr12) #4, !dbg !1171
  store i32 %call13, i32* %value, align 4, !dbg !1172
  %8 = load i32, i32* %value, align 4, !dbg !1173
  %conv14 = zext i32 %8 to i64, !dbg !1173
  %and = and i64 %conv14, -4097, !dbg !1174
  %conv15 = trunc i64 %and to i32, !dbg !1173
  %9 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1175
  %10 = load i32, i32* %chan.addr, align 4, !dbg !1176
  %mul16 = mul i32 %10, 128, !dbg !1176
  %add17 = add i32 4352, %mul16, !dbg !1176
  %add18 = add i32 %add17, 4, !dbg !1176
  %idx.ext19 = zext i32 %add18 to i64, !dbg !1177
  %add.ptr20 = getelementptr i8, i8* %9, i64 %idx.ext19, !dbg !1177
  call void @writel(i32 %conv15, i8* %add.ptr20) #4, !dbg !1178
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1179
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac4_qmode(i8* %ioaddr, i32 %channel, i8 zeroext %qmode) #1 !dbg !1180 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %channel.addr = alloca i32, align 4
  %qmode.addr = alloca i8, align 1
  %mtl_tx_op = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1181, metadata !DIExpression()), !dbg !1182
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !1183, metadata !DIExpression()), !dbg !1184
  store i8 %qmode, i8* %qmode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %qmode.addr, metadata !1185, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.declare(metadata i32* %mtl_tx_op, metadata !1187, metadata !DIExpression()), !dbg !1188
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1189
  %1 = load i32, i32* %channel.addr, align 4, !dbg !1190
  %mul = mul i32 %1, 64, !dbg !1190
  %add = add i32 3328, %mul, !dbg !1190
  %idx.ext = zext i32 %add to i64, !dbg !1191
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !1191
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !1192
  store i32 %call, i32* %mtl_tx_op, align 4, !dbg !1188
  %2 = load i32, i32* %mtl_tx_op, align 4, !dbg !1193
  %conv = zext i32 %2 to i64, !dbg !1193
  %and = and i64 %conv, -13, !dbg !1193
  %conv1 = trunc i64 %and to i32, !dbg !1193
  store i32 %conv1, i32* %mtl_tx_op, align 4, !dbg !1193
  %3 = load i8, i8* %qmode.addr, align 1, !dbg !1194
  %conv2 = zext i8 %3 to i32, !dbg !1194
  %cmp = icmp ne i32 %conv2, 0, !dbg !1196
  br i1 %cmp, label %if.then, label %if.else, !dbg !1197

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %mtl_tx_op, align 4, !dbg !1198
  %conv4 = zext i32 %4 to i64, !dbg !1198
  %or = or i64 %conv4, 8, !dbg !1198
  %conv5 = trunc i64 %or to i32, !dbg !1198
  store i32 %conv5, i32* %mtl_tx_op, align 4, !dbg !1198
  br label %if.end, !dbg !1199

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %mtl_tx_op, align 4, !dbg !1200
  %conv6 = zext i32 %5 to i64, !dbg !1200
  %or7 = or i64 %conv6, 4, !dbg !1200
  %conv8 = trunc i64 %or7 to i32, !dbg !1200
  store i32 %conv8, i32* %mtl_tx_op, align 4, !dbg !1200
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %mtl_tx_op, align 4, !dbg !1201
  %7 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1202
  %8 = load i32, i32* %channel.addr, align 4, !dbg !1203
  %mul9 = mul i32 %8, 64, !dbg !1203
  %add10 = add i32 3328, %mul9, !dbg !1203
  %idx.ext11 = zext i32 %add10 to i64, !dbg !1204
  %add.ptr12 = getelementptr i8, i8* %7, i64 %idx.ext11, !dbg !1204
  call void @writel(i32 %6, i8* %add.ptr12) #4, !dbg !1205
  ret void, !dbg !1206
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac4_set_bfsize(i8* %ioaddr, i32 %bfsize, i32 %chan) #1 !dbg !1207 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %bfsize.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1208, metadata !DIExpression()), !dbg !1209
  store i32 %bfsize, i32* %bfsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bfsize.addr, metadata !1210, metadata !DIExpression()), !dbg !1211
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !1212, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.declare(metadata i32* %value, metadata !1214, metadata !DIExpression()), !dbg !1215
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1216
  %1 = load i32, i32* %chan.addr, align 4, !dbg !1217
  %mul = mul i32 %1, 128, !dbg !1217
  %add = add i32 4352, %mul, !dbg !1217
  %add1 = add i32 %add, 8, !dbg !1217
  %idx.ext = zext i32 %add1 to i64, !dbg !1218
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !1218
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !1219
  store i32 %call, i32* %value, align 4, !dbg !1215
  %2 = load i32, i32* %value, align 4, !dbg !1220
  %conv = zext i32 %2 to i64, !dbg !1220
  %and = and i64 %conv, -32767, !dbg !1220
  %conv2 = trunc i64 %and to i32, !dbg !1220
  store i32 %conv2, i32* %value, align 4, !dbg !1220
  %3 = load i32, i32* %bfsize.addr, align 4, !dbg !1221
  %shl = shl i32 %3, 1, !dbg !1222
  %conv3 = sext i32 %shl to i64, !dbg !1223
  %and4 = and i64 %conv3, 32766, !dbg !1224
  %4 = load i32, i32* %value, align 4, !dbg !1225
  %conv5 = zext i32 %4 to i64, !dbg !1225
  %or = or i64 %conv5, %and4, !dbg !1225
  %conv6 = trunc i64 %or to i32, !dbg !1225
  store i32 %conv6, i32* %value, align 4, !dbg !1225
  %5 = load i32, i32* %value, align 4, !dbg !1226
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1227
  %7 = load i32, i32* %chan.addr, align 4, !dbg !1228
  %mul7 = mul i32 %7, 128, !dbg !1228
  %add8 = add i32 4352, %mul7, !dbg !1228
  %add9 = add i32 %add8, 8, !dbg !1228
  %idx.ext10 = zext i32 %add9 to i64, !dbg !1229
  %add.ptr11 = getelementptr i8, i8* %6, i64 %idx.ext10, !dbg !1229
  call void @writel(i32 %5, i8* %add.ptr11) #4, !dbg !1230
  ret void, !dbg !1231
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac4_enable_sph(i8* %ioaddr, i1 zeroext %en, i32 %chan) #1 !dbg !1232 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %en.addr = alloca i8, align 1
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1233, metadata !DIExpression()), !dbg !1234
  %frombool = zext i1 %en to i8
  store i8 %frombool, i8* %en.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %en.addr, metadata !1235, metadata !DIExpression()), !dbg !1236
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !1237, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.declare(metadata i32* %value, metadata !1239, metadata !DIExpression()), !dbg !1240
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1241
  %add.ptr = getelementptr i8, i8* %0, i64 4, !dbg !1242
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !1243
  store i32 %call, i32* %value, align 4, !dbg !1240
  %1 = load i32, i32* %value, align 4, !dbg !1244
  %conv = zext i32 %1 to i64, !dbg !1244
  %and = and i64 %conv, -7340033, !dbg !1244
  %conv1 = trunc i64 %and to i32, !dbg !1244
  store i32 %conv1, i32* %value, align 4, !dbg !1244
  %2 = load i32, i32* %value, align 4, !dbg !1245
  %or = or i32 %2, 2097152, !dbg !1245
  store i32 %or, i32* %value, align 4, !dbg !1245
  %3 = load i32, i32* %value, align 4, !dbg !1246
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1247
  %add.ptr2 = getelementptr i8, i8* %4, i64 4, !dbg !1248
  call void @writel(i32 %3, i8* %add.ptr2) #4, !dbg !1249
  %5 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1250
  %6 = load i32, i32* %chan.addr, align 4, !dbg !1251
  %mul = mul i32 %6, 128, !dbg !1251
  %add = add i32 4352, %mul, !dbg !1251
  %idx.ext = zext i32 %add to i64, !dbg !1252
  %add.ptr3 = getelementptr i8, i8* %5, i64 %idx.ext, !dbg !1252
  %call4 = call i32 @readl(i8* %add.ptr3) #4, !dbg !1253
  store i32 %call4, i32* %value, align 4, !dbg !1254
  %7 = load i8, i8* %en.addr, align 1, !dbg !1255
  %tobool = trunc i8 %7 to i1, !dbg !1255
  br i1 %tobool, label %if.then, label %if.else, !dbg !1257

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %value, align 4, !dbg !1258
  %conv5 = zext i32 %8 to i64, !dbg !1258
  %or6 = or i64 %conv5, 16777216, !dbg !1258
  %conv7 = trunc i64 %or6 to i32, !dbg !1258
  store i32 %conv7, i32* %value, align 4, !dbg !1258
  br label %if.end, !dbg !1259

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %value, align 4, !dbg !1260
  %conv8 = zext i32 %9 to i64, !dbg !1260
  %and9 = and i64 %conv8, -16777217, !dbg !1260
  %conv10 = trunc i64 %and9 to i32, !dbg !1260
  store i32 %conv10, i32* %value, align 4, !dbg !1260
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %value, align 4, !dbg !1261
  %11 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1262
  %12 = load i32, i32* %chan.addr, align 4, !dbg !1263
  %mul11 = mul i32 %12, 128, !dbg !1263
  %add12 = add i32 4352, %mul11, !dbg !1263
  %idx.ext13 = zext i32 %add12 to i64, !dbg !1264
  %add.ptr14 = getelementptr i8, i8* %11, i64 %idx.ext13, !dbg !1264
  call void @writel(i32 %10, i8* %add.ptr14) #4, !dbg !1265
  ret void, !dbg !1266
}

; Function Attrs: noredzone
declare dso_local void @dwmac410_enable_dma_irq(i8*, i32, i1 zeroext, i1 zeroext) #0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwmac4_enable_tbs(i8* %ioaddr, i1 zeroext %en, i32 %chan) #1 !dbg !1267 {
entry:
  %retval = alloca i32, align 4
  %ioaddr.addr = alloca i8*, align 8
  %en.addr = alloca i8, align 1
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1268, metadata !DIExpression()), !dbg !1269
  %frombool = zext i1 %en to i8
  store i8 %frombool, i8* %en.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %en.addr, metadata !1270, metadata !DIExpression()), !dbg !1271
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !1272, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.declare(metadata i32* %value, metadata !1274, metadata !DIExpression()), !dbg !1275
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1276
  %1 = load i32, i32* %chan.addr, align 4, !dbg !1277
  %mul = mul i32 %1, 128, !dbg !1277
  %add = add i32 4352, %mul, !dbg !1277
  %add1 = add i32 %add, 4, !dbg !1277
  %idx.ext = zext i32 %add1 to i64, !dbg !1278
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !1278
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !1279
  store i32 %call, i32* %value, align 4, !dbg !1275
  %2 = load i8, i8* %en.addr, align 1, !dbg !1280
  %tobool = trunc i8 %2 to i1, !dbg !1280
  br i1 %tobool, label %if.then, label %if.else, !dbg !1282

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !1283
  %conv = zext i32 %3 to i64, !dbg !1283
  %or = or i64 %conv, 268435456, !dbg !1283
  %conv2 = trunc i64 %or to i32, !dbg !1283
  store i32 %conv2, i32* %value, align 4, !dbg !1283
  br label %if.end, !dbg !1284

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %value, align 4, !dbg !1285
  %conv3 = zext i32 %4 to i64, !dbg !1285
  %and = and i64 %conv3, -268435457, !dbg !1285
  %conv4 = trunc i64 %and to i32, !dbg !1285
  store i32 %conv4, i32* %value, align 4, !dbg !1285
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %value, align 4, !dbg !1286
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1287
  %7 = load i32, i32* %chan.addr, align 4, !dbg !1288
  %mul5 = mul i32 %7, 128, !dbg !1288
  %add6 = add i32 4352, %mul5, !dbg !1288
  %add7 = add i32 %add6, 4, !dbg !1288
  %idx.ext8 = zext i32 %add7 to i64, !dbg !1289
  %add.ptr9 = getelementptr i8, i8* %6, i64 %idx.ext8, !dbg !1289
  call void @writel(i32 %5, i8* %add.ptr9) #4, !dbg !1290
  %8 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1291
  %9 = load i32, i32* %chan.addr, align 4, !dbg !1292
  %mul10 = mul i32 %9, 128, !dbg !1292
  %add11 = add i32 4352, %mul10, !dbg !1292
  %add12 = add i32 %add11, 4, !dbg !1292
  %idx.ext13 = zext i32 %add12 to i64, !dbg !1293
  %add.ptr14 = getelementptr i8, i8* %8, i64 %idx.ext13, !dbg !1293
  %call15 = call i32 @readl(i8* %add.ptr14) #4, !dbg !1294
  %conv16 = zext i32 %call15 to i64, !dbg !1294
  %and17 = and i64 %conv16, 268435456, !dbg !1295
  %conv18 = trunc i64 %and17 to i32, !dbg !1294
  store i32 %conv18, i32* %value, align 4, !dbg !1296
  %10 = load i8, i8* %en.addr, align 1, !dbg !1297
  %tobool19 = trunc i8 %10 to i1, !dbg !1297
  br i1 %tobool19, label %land.lhs.true, label %if.end23, !dbg !1299

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %value, align 4, !dbg !1300
  %tobool21 = icmp ne i32 %11, 0, !dbg !1300
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !1301

if.then22:                                        ; preds = %land.lhs.true
  store i32 -5, i32* %retval, align 4, !dbg !1302
  br label %return, !dbg !1302

if.end23:                                         ; preds = %land.lhs.true, %if.end
  %12 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1303
  %add.ptr24 = getelementptr i8, i8* %12, i64 4176, !dbg !1304
  call void @writel(i32 -255, i8* %add.ptr24) #4, !dbg !1305
  store i32 0, i32* %retval, align 4, !dbg !1306
  br label %return, !dbg !1306

return:                                           ; preds = %if.end23, %if.then22
  %13 = load i32, i32* %retval, align 4, !dbg !1307
  ret i32 %13, !dbg !1307
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #1 !dbg !1308 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1315, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1317, metadata !DIExpression()), !dbg !1316
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !1316
  %1 = bitcast i8* %0 to i32*, !dbg !1316
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #6, !dbg !1316, !srcloc !1318
  store i32 %2, i32* %ret, align 4, !dbg !1316
  %3 = load i32, i32* %ret, align 4, !dbg !1316
  ret i32 %3, !dbg !1316
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #1 !dbg !1319 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !1323, metadata !DIExpression()), !dbg !1324
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1325, metadata !DIExpression()), !dbg !1324
  %0 = load i32, i32* %val.addr, align 4, !dbg !1324
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !1324
  %2 = bitcast i8* %1 to i32*, !dbg !1324
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #6, !dbg !1324, !srcloc !1326
  ret void, !dbg !1324
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @_dwmac4_dump_dma_regs(i8* %ioaddr, i32 %channel, i32* %reg_space) #1 !dbg !1327 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %channel.addr = alloca i32, align 4
  %reg_space.addr = alloca i32*, align 8
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !1330, metadata !DIExpression()), !dbg !1331
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !1332, metadata !DIExpression()), !dbg !1333
  store i32* %reg_space, i32** %reg_space.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %reg_space.addr, metadata !1334, metadata !DIExpression()), !dbg !1335
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1336
  %1 = load i32, i32* %channel.addr, align 4, !dbg !1337
  %mul = mul i32 %1, 128, !dbg !1337
  %add = add i32 4352, %mul, !dbg !1337
  %idx.ext = zext i32 %add to i64, !dbg !1338
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !1338
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !1339
  %2 = load i32*, i32** %reg_space.addr, align 8, !dbg !1340
  %3 = load i32, i32* %channel.addr, align 4, !dbg !1341
  %mul1 = mul i32 %3, 128, !dbg !1341
  %add2 = add i32 4352, %mul1, !dbg !1341
  %div = udiv i32 %add2, 4, !dbg !1342
  %idxprom = zext i32 %div to i64, !dbg !1340
  %arrayidx = getelementptr i32, i32* %2, i64 %idxprom, !dbg !1340
  store i32 %call, i32* %arrayidx, align 4, !dbg !1343
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1344
  %5 = load i32, i32* %channel.addr, align 4, !dbg !1345
  %mul3 = mul i32 %5, 128, !dbg !1345
  %add4 = add i32 4352, %mul3, !dbg !1345
  %add5 = add i32 %add4, 4, !dbg !1345
  %idx.ext6 = zext i32 %add5 to i64, !dbg !1346
  %add.ptr7 = getelementptr i8, i8* %4, i64 %idx.ext6, !dbg !1346
  %call8 = call i32 @readl(i8* %add.ptr7) #4, !dbg !1347
  %6 = load i32*, i32** %reg_space.addr, align 8, !dbg !1348
  %7 = load i32, i32* %channel.addr, align 4, !dbg !1349
  %mul9 = mul i32 %7, 128, !dbg !1349
  %add10 = add i32 4352, %mul9, !dbg !1349
  %add11 = add i32 %add10, 4, !dbg !1349
  %div12 = udiv i32 %add11, 4, !dbg !1350
  %idxprom13 = zext i32 %div12 to i64, !dbg !1348
  %arrayidx14 = getelementptr i32, i32* %6, i64 %idxprom13, !dbg !1348
  store i32 %call8, i32* %arrayidx14, align 4, !dbg !1351
  %8 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1352
  %9 = load i32, i32* %channel.addr, align 4, !dbg !1353
  %mul15 = mul i32 %9, 128, !dbg !1353
  %add16 = add i32 4352, %mul15, !dbg !1353
  %add17 = add i32 %add16, 8, !dbg !1353
  %idx.ext18 = zext i32 %add17 to i64, !dbg !1354
  %add.ptr19 = getelementptr i8, i8* %8, i64 %idx.ext18, !dbg !1354
  %call20 = call i32 @readl(i8* %add.ptr19) #4, !dbg !1355
  %10 = load i32*, i32** %reg_space.addr, align 8, !dbg !1356
  %11 = load i32, i32* %channel.addr, align 4, !dbg !1357
  %mul21 = mul i32 %11, 128, !dbg !1357
  %add22 = add i32 4352, %mul21, !dbg !1357
  %add23 = add i32 %add22, 8, !dbg !1357
  %div24 = udiv i32 %add23, 4, !dbg !1358
  %idxprom25 = zext i32 %div24 to i64, !dbg !1356
  %arrayidx26 = getelementptr i32, i32* %10, i64 %idxprom25, !dbg !1356
  store i32 %call20, i32* %arrayidx26, align 4, !dbg !1359
  %12 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1360
  %13 = load i32, i32* %channel.addr, align 4, !dbg !1361
  %mul27 = mul i32 %13, 128, !dbg !1361
  %add28 = add i32 4352, %mul27, !dbg !1361
  %add29 = add i32 %add28, 20, !dbg !1361
  %idx.ext30 = zext i32 %add29 to i64, !dbg !1362
  %add.ptr31 = getelementptr i8, i8* %12, i64 %idx.ext30, !dbg !1362
  %call32 = call i32 @readl(i8* %add.ptr31) #4, !dbg !1363
  %14 = load i32*, i32** %reg_space.addr, align 8, !dbg !1364
  %15 = load i32, i32* %channel.addr, align 4, !dbg !1365
  %mul33 = mul i32 %15, 128, !dbg !1365
  %add34 = add i32 4352, %mul33, !dbg !1365
  %add35 = add i32 %add34, 20, !dbg !1365
  %div36 = udiv i32 %add35, 4, !dbg !1366
  %idxprom37 = zext i32 %div36 to i64, !dbg !1364
  %arrayidx38 = getelementptr i32, i32* %14, i64 %idxprom37, !dbg !1364
  store i32 %call32, i32* %arrayidx38, align 4, !dbg !1367
  %16 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1368
  %17 = load i32, i32* %channel.addr, align 4, !dbg !1369
  %mul39 = mul i32 %17, 128, !dbg !1369
  %add40 = add i32 4352, %mul39, !dbg !1369
  %add41 = add i32 %add40, 28, !dbg !1369
  %idx.ext42 = zext i32 %add41 to i64, !dbg !1370
  %add.ptr43 = getelementptr i8, i8* %16, i64 %idx.ext42, !dbg !1370
  %call44 = call i32 @readl(i8* %add.ptr43) #4, !dbg !1371
  %18 = load i32*, i32** %reg_space.addr, align 8, !dbg !1372
  %19 = load i32, i32* %channel.addr, align 4, !dbg !1373
  %mul45 = mul i32 %19, 128, !dbg !1373
  %add46 = add i32 4352, %mul45, !dbg !1373
  %add47 = add i32 %add46, 28, !dbg !1373
  %div48 = udiv i32 %add47, 4, !dbg !1374
  %idxprom49 = zext i32 %div48 to i64, !dbg !1372
  %arrayidx50 = getelementptr i32, i32* %18, i64 %idxprom49, !dbg !1372
  store i32 %call44, i32* %arrayidx50, align 4, !dbg !1375
  %20 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1376
  %21 = load i32, i32* %channel.addr, align 4, !dbg !1377
  %mul51 = mul i32 %21, 128, !dbg !1377
  %add52 = add i32 4352, %mul51, !dbg !1377
  %add53 = add i32 %add52, 32, !dbg !1377
  %idx.ext54 = zext i32 %add53 to i64, !dbg !1378
  %add.ptr55 = getelementptr i8, i8* %20, i64 %idx.ext54, !dbg !1378
  %call56 = call i32 @readl(i8* %add.ptr55) #4, !dbg !1379
  %22 = load i32*, i32** %reg_space.addr, align 8, !dbg !1380
  %23 = load i32, i32* %channel.addr, align 4, !dbg !1381
  %mul57 = mul i32 %23, 128, !dbg !1381
  %add58 = add i32 4352, %mul57, !dbg !1381
  %add59 = add i32 %add58, 32, !dbg !1381
  %div60 = udiv i32 %add59, 4, !dbg !1382
  %idxprom61 = zext i32 %div60 to i64, !dbg !1380
  %arrayidx62 = getelementptr i32, i32* %22, i64 %idxprom61, !dbg !1380
  store i32 %call56, i32* %arrayidx62, align 4, !dbg !1383
  %24 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1384
  %25 = load i32, i32* %channel.addr, align 4, !dbg !1385
  %mul63 = mul i32 %25, 128, !dbg !1385
  %add64 = add i32 4352, %mul63, !dbg !1385
  %add65 = add i32 %add64, 40, !dbg !1385
  %idx.ext66 = zext i32 %add65 to i64, !dbg !1386
  %add.ptr67 = getelementptr i8, i8* %24, i64 %idx.ext66, !dbg !1386
  %call68 = call i32 @readl(i8* %add.ptr67) #4, !dbg !1387
  %26 = load i32*, i32** %reg_space.addr, align 8, !dbg !1388
  %27 = load i32, i32* %channel.addr, align 4, !dbg !1389
  %mul69 = mul i32 %27, 128, !dbg !1389
  %add70 = add i32 4352, %mul69, !dbg !1389
  %add71 = add i32 %add70, 40, !dbg !1389
  %div72 = udiv i32 %add71, 4, !dbg !1390
  %idxprom73 = zext i32 %div72 to i64, !dbg !1388
  %arrayidx74 = getelementptr i32, i32* %26, i64 %idxprom73, !dbg !1388
  store i32 %call68, i32* %arrayidx74, align 4, !dbg !1391
  %28 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1392
  %29 = load i32, i32* %channel.addr, align 4, !dbg !1393
  %mul75 = mul i32 %29, 128, !dbg !1393
  %add76 = add i32 4352, %mul75, !dbg !1393
  %add77 = add i32 %add76, 44, !dbg !1393
  %idx.ext78 = zext i32 %add77 to i64, !dbg !1394
  %add.ptr79 = getelementptr i8, i8* %28, i64 %idx.ext78, !dbg !1394
  %call80 = call i32 @readl(i8* %add.ptr79) #4, !dbg !1395
  %30 = load i32*, i32** %reg_space.addr, align 8, !dbg !1396
  %31 = load i32, i32* %channel.addr, align 4, !dbg !1397
  %mul81 = mul i32 %31, 128, !dbg !1397
  %add82 = add i32 4352, %mul81, !dbg !1397
  %add83 = add i32 %add82, 44, !dbg !1397
  %div84 = udiv i32 %add83, 4, !dbg !1398
  %idxprom85 = zext i32 %div84 to i64, !dbg !1396
  %arrayidx86 = getelementptr i32, i32* %30, i64 %idxprom85, !dbg !1396
  store i32 %call80, i32* %arrayidx86, align 4, !dbg !1399
  %32 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1400
  %33 = load i32, i32* %channel.addr, align 4, !dbg !1401
  %mul87 = mul i32 %33, 128, !dbg !1401
  %add88 = add i32 4352, %mul87, !dbg !1401
  %add89 = add i32 %add88, 48, !dbg !1401
  %idx.ext90 = zext i32 %add89 to i64, !dbg !1402
  %add.ptr91 = getelementptr i8, i8* %32, i64 %idx.ext90, !dbg !1402
  %call92 = call i32 @readl(i8* %add.ptr91) #4, !dbg !1403
  %34 = load i32*, i32** %reg_space.addr, align 8, !dbg !1404
  %35 = load i32, i32* %channel.addr, align 4, !dbg !1405
  %mul93 = mul i32 %35, 128, !dbg !1405
  %add94 = add i32 4352, %mul93, !dbg !1405
  %add95 = add i32 %add94, 48, !dbg !1405
  %div96 = udiv i32 %add95, 4, !dbg !1406
  %idxprom97 = zext i32 %div96 to i64, !dbg !1404
  %arrayidx98 = getelementptr i32, i32* %34, i64 %idxprom97, !dbg !1404
  store i32 %call92, i32* %arrayidx98, align 4, !dbg !1407
  %36 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1408
  %37 = load i32, i32* %channel.addr, align 4, !dbg !1409
  %mul99 = mul i32 %37, 128, !dbg !1409
  %add100 = add i32 4352, %mul99, !dbg !1409
  %add101 = add i32 %add100, 52, !dbg !1409
  %idx.ext102 = zext i32 %add101 to i64, !dbg !1410
  %add.ptr103 = getelementptr i8, i8* %36, i64 %idx.ext102, !dbg !1410
  %call104 = call i32 @readl(i8* %add.ptr103) #4, !dbg !1411
  %38 = load i32*, i32** %reg_space.addr, align 8, !dbg !1412
  %39 = load i32, i32* %channel.addr, align 4, !dbg !1413
  %mul105 = mul i32 %39, 128, !dbg !1413
  %add106 = add i32 4352, %mul105, !dbg !1413
  %add107 = add i32 %add106, 52, !dbg !1413
  %div108 = udiv i32 %add107, 4, !dbg !1414
  %idxprom109 = zext i32 %div108 to i64, !dbg !1412
  %arrayidx110 = getelementptr i32, i32* %38, i64 %idxprom109, !dbg !1412
  store i32 %call104, i32* %arrayidx110, align 4, !dbg !1415
  %40 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1416
  %41 = load i32, i32* %channel.addr, align 4, !dbg !1417
  %mul111 = mul i32 %41, 128, !dbg !1417
  %add112 = add i32 4352, %mul111, !dbg !1417
  %add113 = add i32 %add112, 56, !dbg !1417
  %idx.ext114 = zext i32 %add113 to i64, !dbg !1418
  %add.ptr115 = getelementptr i8, i8* %40, i64 %idx.ext114, !dbg !1418
  %call116 = call i32 @readl(i8* %add.ptr115) #4, !dbg !1419
  %42 = load i32*, i32** %reg_space.addr, align 8, !dbg !1420
  %43 = load i32, i32* %channel.addr, align 4, !dbg !1421
  %mul117 = mul i32 %43, 128, !dbg !1421
  %add118 = add i32 4352, %mul117, !dbg !1421
  %add119 = add i32 %add118, 56, !dbg !1421
  %div120 = udiv i32 %add119, 4, !dbg !1422
  %idxprom121 = zext i32 %div120 to i64, !dbg !1420
  %arrayidx122 = getelementptr i32, i32* %42, i64 %idxprom121, !dbg !1420
  store i32 %call116, i32* %arrayidx122, align 4, !dbg !1423
  %44 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1424
  %45 = load i32, i32* %channel.addr, align 4, !dbg !1425
  %mul123 = mul i32 %45, 128, !dbg !1425
  %add124 = add i32 4352, %mul123, !dbg !1425
  %add125 = add i32 %add124, 60, !dbg !1425
  %idx.ext126 = zext i32 %add125 to i64, !dbg !1426
  %add.ptr127 = getelementptr i8, i8* %44, i64 %idx.ext126, !dbg !1426
  %call128 = call i32 @readl(i8* %add.ptr127) #4, !dbg !1427
  %46 = load i32*, i32** %reg_space.addr, align 8, !dbg !1428
  %47 = load i32, i32* %channel.addr, align 4, !dbg !1429
  %mul129 = mul i32 %47, 128, !dbg !1429
  %add130 = add i32 4352, %mul129, !dbg !1429
  %add131 = add i32 %add130, 60, !dbg !1429
  %div132 = udiv i32 %add131, 4, !dbg !1430
  %idxprom133 = zext i32 %div132 to i64, !dbg !1428
  %arrayidx134 = getelementptr i32, i32* %46, i64 %idxprom133, !dbg !1428
  store i32 %call128, i32* %arrayidx134, align 4, !dbg !1431
  %48 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1432
  %49 = load i32, i32* %channel.addr, align 4, !dbg !1433
  %mul135 = mul i32 %49, 128, !dbg !1433
  %add136 = add i32 4352, %mul135, !dbg !1433
  %add137 = add i32 %add136, 68, !dbg !1433
  %idx.ext138 = zext i32 %add137 to i64, !dbg !1434
  %add.ptr139 = getelementptr i8, i8* %48, i64 %idx.ext138, !dbg !1434
  %call140 = call i32 @readl(i8* %add.ptr139) #4, !dbg !1435
  %50 = load i32*, i32** %reg_space.addr, align 8, !dbg !1436
  %51 = load i32, i32* %channel.addr, align 4, !dbg !1437
  %mul141 = mul i32 %51, 128, !dbg !1437
  %add142 = add i32 4352, %mul141, !dbg !1437
  %add143 = add i32 %add142, 68, !dbg !1437
  %div144 = udiv i32 %add143, 4, !dbg !1438
  %idxprom145 = zext i32 %div144 to i64, !dbg !1436
  %arrayidx146 = getelementptr i32, i32* %50, i64 %idxprom145, !dbg !1436
  store i32 %call140, i32* %arrayidx146, align 4, !dbg !1439
  %52 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1440
  %53 = load i32, i32* %channel.addr, align 4, !dbg !1441
  %mul147 = mul i32 %53, 128, !dbg !1441
  %add148 = add i32 4352, %mul147, !dbg !1441
  %add149 = add i32 %add148, 76, !dbg !1441
  %idx.ext150 = zext i32 %add149 to i64, !dbg !1442
  %add.ptr151 = getelementptr i8, i8* %52, i64 %idx.ext150, !dbg !1442
  %call152 = call i32 @readl(i8* %add.ptr151) #4, !dbg !1443
  %54 = load i32*, i32** %reg_space.addr, align 8, !dbg !1444
  %55 = load i32, i32* %channel.addr, align 4, !dbg !1445
  %mul153 = mul i32 %55, 128, !dbg !1445
  %add154 = add i32 4352, %mul153, !dbg !1445
  %add155 = add i32 %add154, 76, !dbg !1445
  %div156 = udiv i32 %add155, 4, !dbg !1446
  %idxprom157 = zext i32 %div156 to i64, !dbg !1444
  %arrayidx158 = getelementptr i32, i32* %54, i64 %idxprom157, !dbg !1444
  store i32 %call152, i32* %arrayidx158, align 4, !dbg !1447
  %56 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1448
  %57 = load i32, i32* %channel.addr, align 4, !dbg !1449
  %mul159 = mul i32 %57, 128, !dbg !1449
  %add160 = add i32 4352, %mul159, !dbg !1449
  %add161 = add i32 %add160, 84, !dbg !1449
  %idx.ext162 = zext i32 %add161 to i64, !dbg !1450
  %add.ptr163 = getelementptr i8, i8* %56, i64 %idx.ext162, !dbg !1450
  %call164 = call i32 @readl(i8* %add.ptr163) #4, !dbg !1451
  %58 = load i32*, i32** %reg_space.addr, align 8, !dbg !1452
  %59 = load i32, i32* %channel.addr, align 4, !dbg !1453
  %mul165 = mul i32 %59, 128, !dbg !1453
  %add166 = add i32 4352, %mul165, !dbg !1453
  %add167 = add i32 %add166, 84, !dbg !1453
  %div168 = udiv i32 %add167, 4, !dbg !1454
  %idxprom169 = zext i32 %div168 to i64, !dbg !1452
  %arrayidx170 = getelementptr i32, i32* %58, i64 %idxprom169, !dbg !1452
  store i32 %call164, i32* %arrayidx170, align 4, !dbg !1455
  %60 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1456
  %61 = load i32, i32* %channel.addr, align 4, !dbg !1457
  %mul171 = mul i32 %61, 128, !dbg !1457
  %add172 = add i32 4352, %mul171, !dbg !1457
  %add173 = add i32 %add172, 92, !dbg !1457
  %idx.ext174 = zext i32 %add173 to i64, !dbg !1458
  %add.ptr175 = getelementptr i8, i8* %60, i64 %idx.ext174, !dbg !1458
  %call176 = call i32 @readl(i8* %add.ptr175) #4, !dbg !1459
  %62 = load i32*, i32** %reg_space.addr, align 8, !dbg !1460
  %63 = load i32, i32* %channel.addr, align 4, !dbg !1461
  %mul177 = mul i32 %63, 128, !dbg !1461
  %add178 = add i32 4352, %mul177, !dbg !1461
  %add179 = add i32 %add178, 92, !dbg !1461
  %div180 = udiv i32 %add179, 4, !dbg !1462
  %idxprom181 = zext i32 %div180 to i64, !dbg !1460
  %arrayidx182 = getelementptr i32, i32* %62, i64 %idxprom181, !dbg !1460
  store i32 %call176, i32* %arrayidx182, align 4, !dbg !1463
  %64 = load i8*, i8** %ioaddr.addr, align 8, !dbg !1464
  %65 = load i32, i32* %channel.addr, align 4, !dbg !1465
  %mul183 = mul i32 %65, 128, !dbg !1465
  %add184 = add i32 4352, %mul183, !dbg !1465
  %add185 = add i32 %add184, 96, !dbg !1465
  %idx.ext186 = zext i32 %add185 to i64, !dbg !1466
  %add.ptr187 = getelementptr i8, i8* %64, i64 %idx.ext186, !dbg !1466
  %call188 = call i32 @readl(i8* %add.ptr187) #4, !dbg !1467
  %66 = load i32*, i32** %reg_space.addr, align 8, !dbg !1468
  %67 = load i32, i32* %channel.addr, align 4, !dbg !1469
  %mul189 = mul i32 %67, 128, !dbg !1469
  %add190 = add i32 4352, %mul189, !dbg !1469
  %add191 = add i32 %add190, 96, !dbg !1469
  %div192 = udiv i32 %add191, 4, !dbg !1470
  %idxprom193 = zext i32 %div192 to i64, !dbg !1468
  %arrayidx194 = getelementptr i32, i32* %66, i64 %idxprom193, !dbg !1468
  store i32 %call188, i32* %arrayidx194, align 4, !dbg !1471
  ret void, !dbg !1472
}

attributes #0 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { cold noredzone }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!310, !311, !312, !313}
!llvm.ident = !{!314}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dwmac4_dma_ops", scope: !2, file: !3, line: 494, type: !17, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !9, !13}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !8)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !10, line: 21, baseType: !11)
!10 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !12, line: 27, baseType: !8)
!12 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!0, !15}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "dwmac410_dma_ops", scope: !2, file: !3, line: 523, type: !17, isLocal: false, isDefinition: true)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_dma_ops", file: !19, line: 169, size: 1856, elements: !20)
!19 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/hwif.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !26, !45, !49, !57, !58, !77, !82, !89, !90, !212, !216, !220, !221, !225, !226, !227, !228, !232, !285, !289, !290, !291, !292, !293, !297, !301, !305, !306}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !18, file: !19, line: 171, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{!13, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !18, file: !19, line: 172, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !25, !30, !13}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_dma_cfg", file: !32, line: 89, size: 224, elements: !33)
!32 = !DIFile(filename: "./include/linux/stmmac.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !35, !36, !37, !41, !42, !43, !44}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "pbl", scope: !31, file: !32, line: 90, baseType: !13, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "txpbl", scope: !31, file: !32, line: 91, baseType: !13, size: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rxpbl", scope: !31, file: !32, line: 92, baseType: !13, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "pblx8", scope: !31, file: !32, line: 93, baseType: !38, size: 8, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !39, line: 30, baseType: !40)
!39 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!40 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_burst", scope: !31, file: !32, line: 94, baseType: !13, size: 32, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_burst", scope: !31, file: !32, line: 95, baseType: !13, size: 32, offset: 160)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "aal", scope: !31, file: !32, line: 96, baseType: !38, size: 8, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "eame", scope: !31, file: !32, line: 97, baseType: !38, size: 8, offset: 200)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "init_chan", scope: !18, file: !19, line: 174, baseType: !46, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !25, !30, !9}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "init_rx_chan", scope: !18, file: !19, line: 176, baseType: !50, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !25, !30, !53, !9}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !39, line: 143, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !10, line: 23, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !12, line: 31, baseType: !56)
!56 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "init_tx_chan", scope: !18, file: !19, line: 179, baseType: !50, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "axi", scope: !18, file: !19, line: 183, baseType: !59, size: 64, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !25, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_axi", file: !32, line: 101, size: 384, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70, !74, !75, !76}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "axi_lpi_en", scope: !63, file: !32, line: 102, baseType: !38, size: 8)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "axi_xit_frm", scope: !63, file: !32, line: 103, baseType: !38, size: 8, offset: 8)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "axi_wr_osr_lmt", scope: !63, file: !32, line: 104, baseType: !9, size: 32, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "axi_rd_osr_lmt", scope: !63, file: !32, line: 105, baseType: !9, size: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "axi_kbbe", scope: !63, file: !32, line: 106, baseType: !38, size: 8, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "axi_blen", scope: !63, file: !32, line: 107, baseType: !71, size: 224, offset: 128)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 224, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 7)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "axi_fb", scope: !63, file: !32, line: 108, baseType: !38, size: 8, offset: 352)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "axi_mb", scope: !63, file: !32, line: 109, baseType: !38, size: 8, offset: 360)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "axi_rb", scope: !63, file: !32, line: 110, baseType: !38, size: 8, offset: 368)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "dump_regs", scope: !18, file: !19, line: 185, baseType: !78, size: 64, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !25, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "dma_rx_mode", scope: !18, file: !19, line: 186, baseType: !83, size: 64, offset: 448)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !25, !13, !9, !13, !86}
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !10, line: 17, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !12, line: 21, baseType: !88)
!88 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "dma_tx_mode", scope: !18, file: !19, line: 188, baseType: !83, size: 64, offset: 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "dma_diagnostic_fr", scope: !18, file: !19, line: 191, baseType: !91, size: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !25, !94, !25}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_extra_stats", file: !96, line: 61, size: 7680, elements: !97)
!96 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/common.h", directory: "/home/lizy2001/genbc/linux")
!97 = !{!98, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tx_underflow", scope: !95, file: !96, line: 63, baseType: !99, size: 64, align: 512)
!99 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tx_carrier", scope: !95, file: !96, line: 64, baseType: !99, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tx_losscarrier", scope: !95, file: !96, line: 65, baseType: !99, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag", scope: !95, file: !96, line: 66, baseType: !99, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tx_deferred", scope: !95, file: !96, line: 67, baseType: !99, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tx_vlan", scope: !95, file: !96, line: 68, baseType: !99, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber", scope: !95, file: !96, line: 69, baseType: !99, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tx_frame_flushed", scope: !95, file: !96, line: 70, baseType: !99, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tx_payload_error", scope: !95, file: !96, line: 71, baseType: !99, size: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ip_header_error", scope: !95, file: !96, line: 72, baseType: !99, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "rx_desc", scope: !95, file: !96, line: 74, baseType: !99, size: 64, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "sa_filter_fail", scope: !95, file: !96, line: 75, baseType: !99, size: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_error", scope: !95, file: !96, line: 76, baseType: !99, size: 64, offset: 768)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_csum_error", scope: !95, file: !96, line: 77, baseType: !99, size: 64, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "rx_collision", scope: !95, file: !96, line: 78, baseType: !99, size: 64, offset: 896)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "rx_crc_errors", scope: !95, file: !96, line: 79, baseType: !99, size: 64, offset: 960)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "dribbling_bit", scope: !95, file: !96, line: 80, baseType: !99, size: 64, offset: 1024)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "rx_length", scope: !95, file: !96, line: 81, baseType: !99, size: 64, offset: 1088)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "rx_mii", scope: !95, file: !96, line: 82, baseType: !99, size: 64, offset: 1152)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "rx_multicast", scope: !95, file: !96, line: 83, baseType: !99, size: 64, offset: 1216)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "rx_gmac_overflow", scope: !95, file: !96, line: 84, baseType: !99, size: 64, offset: 1280)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog", scope: !95, file: !96, line: 85, baseType: !99, size: 64, offset: 1344)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "da_rx_filter_fail", scope: !95, file: !96, line: 86, baseType: !99, size: 64, offset: 1408)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sa_rx_filter_fail", scope: !95, file: !96, line: 87, baseType: !99, size: 64, offset: 1472)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "rx_missed_cntr", scope: !95, file: !96, line: 88, baseType: !99, size: 64, offset: 1536)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_cntr", scope: !95, file: !96, line: 89, baseType: !99, size: 64, offset: 1600)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rx_vlan", scope: !95, file: !96, line: 90, baseType: !99, size: 64, offset: 1664)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "rx_split_hdr_pkt_n", scope: !95, file: !96, line: 91, baseType: !99, size: 64, offset: 1728)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tx_undeflow_irq", scope: !95, file: !96, line: 93, baseType: !99, size: 64, offset: 1792)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tx_process_stopped_irq", scope: !95, file: !96, line: 94, baseType: !99, size: 64, offset: 1856)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber_irq", scope: !95, file: !96, line: 95, baseType: !99, size: 64, offset: 1920)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_irq", scope: !95, file: !96, line: 96, baseType: !99, size: 64, offset: 1984)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_unav_irq", scope: !95, file: !96, line: 97, baseType: !99, size: 64, offset: 2048)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "rx_process_stopped_irq", scope: !95, file: !96, line: 98, baseType: !99, size: 64, offset: 2112)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog_irq", scope: !95, file: !96, line: 99, baseType: !99, size: 64, offset: 2176)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tx_early_irq", scope: !95, file: !96, line: 100, baseType: !99, size: 64, offset: 2240)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_bus_error_irq", scope: !95, file: !96, line: 101, baseType: !99, size: 64, offset: 2304)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "rx_early_irq", scope: !95, file: !96, line: 103, baseType: !99, size: 64, offset: 2368)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !95, file: !96, line: 104, baseType: !99, size: 64, offset: 2432)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tx_pkt_n", scope: !95, file: !96, line: 105, baseType: !99, size: 64, offset: 2496)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rx_pkt_n", scope: !95, file: !96, line: 106, baseType: !99, size: 64, offset: 2560)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "normal_irq_n", scope: !95, file: !96, line: 107, baseType: !99, size: 64, offset: 2624)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "rx_normal_irq_n", scope: !95, file: !96, line: 108, baseType: !99, size: 64, offset: 2688)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "napi_poll", scope: !95, file: !96, line: 109, baseType: !99, size: 64, offset: 2752)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tx_normal_irq_n", scope: !95, file: !96, line: 110, baseType: !99, size: 64, offset: 2816)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tx_clean", scope: !95, file: !96, line: 111, baseType: !99, size: 64, offset: 2880)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tx_set_ic_bit", scope: !95, file: !96, line: 112, baseType: !99, size: 64, offset: 2944)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "irq_receive_pmt_irq_n", scope: !95, file: !96, line: 113, baseType: !99, size: 64, offset: 3008)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_irq_n", scope: !95, file: !96, line: 115, baseType: !99, size: 64, offset: 3072)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_irq_n", scope: !95, file: !96, line: 116, baseType: !99, size: 64, offset: 3136)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_csum_offload_irq_n", scope: !95, file: !96, line: 117, baseType: !99, size: 64, offset: 3200)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_in_lpi_mode_n", scope: !95, file: !96, line: 119, baseType: !99, size: 64, offset: 3264)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_exit_lpi_mode_n", scope: !95, file: !96, line: 120, baseType: !99, size: 64, offset: 3328)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_in_lpi_mode_n", scope: !95, file: !96, line: 121, baseType: !99, size: 64, offset: 3392)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_exit_lpi_mode_n", scope: !95, file: !96, line: 122, baseType: !99, size: 64, offset: 3456)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "phy_eee_wakeup_error_n", scope: !95, file: !96, line: 123, baseType: !99, size: 64, offset: 3520)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hdr_err", scope: !95, file: !96, line: 125, baseType: !99, size: 64, offset: 3584)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ip_payload_err", scope: !95, file: !96, line: 126, baseType: !99, size: 64, offset: 3648)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ip_csum_bypassed", scope: !95, file: !96, line: 127, baseType: !99, size: 64, offset: 3712)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_pkt_rcvd", scope: !95, file: !96, line: 128, baseType: !99, size: 64, offset: 3776)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_pkt_rcvd", scope: !95, file: !96, line: 129, baseType: !99, size: 64, offset: 3840)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "no_ptp_rx_msg_type_ext", scope: !95, file: !96, line: 130, baseType: !99, size: 64, offset: 3904)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_sync", scope: !95, file: !96, line: 131, baseType: !99, size: 64, offset: 3968)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_follow_up", scope: !95, file: !96, line: 132, baseType: !99, size: 64, offset: 4032)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_req", scope: !95, file: !96, line: 133, baseType: !99, size: 64, offset: 4096)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_resp", scope: !95, file: !96, line: 134, baseType: !99, size: 64, offset: 4160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_req", scope: !95, file: !96, line: 135, baseType: !99, size: 64, offset: 4224)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_resp", scope: !95, file: !96, line: 136, baseType: !99, size: 64, offset: 4288)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_follow_up", scope: !95, file: !96, line: 137, baseType: !99, size: 64, offset: 4352)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_announce", scope: !95, file: !96, line: 138, baseType: !99, size: 64, offset: 4416)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_management", scope: !95, file: !96, line: 139, baseType: !99, size: 64, offset: 4480)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_pkt_reserved_type", scope: !95, file: !96, line: 140, baseType: !99, size: 64, offset: 4544)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_frame_type", scope: !95, file: !96, line: 141, baseType: !99, size: 64, offset: 4608)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_ver", scope: !95, file: !96, line: 142, baseType: !99, size: 64, offset: 4672)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp_dropped", scope: !95, file: !96, line: 143, baseType: !99, size: 64, offset: 4736)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "av_pkt_rcvd", scope: !95, file: !96, line: 144, baseType: !99, size: 64, offset: 4800)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "av_tagged_pkt_rcvd", scope: !95, file: !96, line: 145, baseType: !99, size: 64, offset: 4864)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag_priority_val", scope: !95, file: !96, line: 146, baseType: !99, size: 64, offset: 4928)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "l3_filter_match", scope: !95, file: !96, line: 147, baseType: !99, size: 64, offset: 4992)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "l4_filter_match", scope: !95, file: !96, line: 148, baseType: !99, size: 64, offset: 5056)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "l3_l4_filter_no_match", scope: !95, file: !96, line: 149, baseType: !99, size: 64, offset: 5120)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_ane_n", scope: !95, file: !96, line: 151, baseType: !99, size: 64, offset: 5184)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_link_n", scope: !95, file: !96, line: 152, baseType: !99, size: 64, offset: 5248)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rgmii_n", scope: !95, file: !96, line: 153, baseType: !99, size: 64, offset: 5312)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_link", scope: !95, file: !96, line: 154, baseType: !99, size: 64, offset: 5376)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_duplex", scope: !95, file: !96, line: 155, baseType: !99, size: 64, offset: 5440)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_speed", scope: !95, file: !96, line: 156, baseType: !99, size: 64, offset: 5504)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_status_fifo_full", scope: !95, file: !96, line: 158, baseType: !99, size: 64, offset: 5568)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_not_empty", scope: !95, file: !96, line: 159, baseType: !99, size: 64, offset: 5632)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "mmtl_fifo_ctrl", scope: !95, file: !96, line: 160, baseType: !99, size: 64, offset: 5696)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_write", scope: !95, file: !96, line: 161, baseType: !99, size: 64, offset: 5760)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_wait", scope: !95, file: !96, line: 162, baseType: !99, size: 64, offset: 5824)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_read", scope: !95, file: !96, line: 163, baseType: !99, size: 64, offset: 5888)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_idle", scope: !95, file: !96, line: 164, baseType: !99, size: 64, offset: 5952)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_in_pause", scope: !95, file: !96, line: 165, baseType: !99, size: 64, offset: 6016)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_xfer", scope: !95, file: !96, line: 166, baseType: !99, size: 64, offset: 6080)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_idle", scope: !95, file: !96, line: 167, baseType: !99, size: 64, offset: 6144)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_wait", scope: !95, file: !96, line: 168, baseType: !99, size: 64, offset: 6208)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_pause", scope: !95, file: !96, line: 169, baseType: !99, size: 64, offset: 6272)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_tx_proto_engine", scope: !95, file: !96, line: 170, baseType: !99, size: 64, offset: 6336)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_full", scope: !95, file: !96, line: 171, baseType: !99, size: 64, offset: 6400)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_above_thresh", scope: !95, file: !96, line: 172, baseType: !99, size: 64, offset: 6464)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_below_thresh", scope: !95, file: !96, line: 173, baseType: !99, size: 64, offset: 6528)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_empty", scope: !95, file: !96, line: 174, baseType: !99, size: 64, offset: 6592)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_flush", scope: !95, file: !96, line: 175, baseType: !99, size: 64, offset: 6656)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_read_data", scope: !95, file: !96, line: 176, baseType: !99, size: 64, offset: 6720)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_status", scope: !95, file: !96, line: 177, baseType: !99, size: 64, offset: 6784)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_idle", scope: !95, file: !96, line: 178, baseType: !99, size: 64, offset: 6848)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_ctrl_active", scope: !95, file: !96, line: 179, baseType: !99, size: 64, offset: 6912)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mac_rx_frame_ctrl_fifo", scope: !95, file: !96, line: 180, baseType: !99, size: 64, offset: 6976)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_rx_proto_engine", scope: !95, file: !96, line: 181, baseType: !99, size: 64, offset: 7040)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_frames", scope: !95, file: !96, line: 183, baseType: !99, size: 64, offset: 7104)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_nfrags", scope: !95, file: !96, line: 184, baseType: !99, size: 64, offset: 7168)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "enable_dma_transmission", scope: !18, file: !19, line: 193, baseType: !213, size: 64, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !25}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "enable_dma_irq", scope: !18, file: !19, line: 194, baseType: !217, size: 64, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !25, !9, !38, !38}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "disable_dma_irq", scope: !18, file: !19, line: 196, baseType: !217, size: 64, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "start_tx", scope: !18, file: !19, line: 198, baseType: !222, size: 64, offset: 832)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !25, !9}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "stop_tx", scope: !18, file: !19, line: 199, baseType: !222, size: 64, offset: 896)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "start_rx", scope: !18, file: !19, line: 200, baseType: !222, size: 64, offset: 960)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "stop_rx", scope: !18, file: !19, line: 201, baseType: !222, size: 64, offset: 1024)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "dma_interrupt", scope: !18, file: !19, line: 202, baseType: !229, size: 64, offset: 1088)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!13, !25, !94, !9}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "get_hw_feature", scope: !18, file: !19, line: 205, baseType: !233, size: 64, offset: 1152)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !25, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_features", file: !96, line: 326, size: 1472, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "mbps_10_100", scope: !237, file: !96, line: 327, baseType: !8, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "mbps_1000", scope: !237, file: !96, line: 328, baseType: !8, size: 32, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "half_duplex", scope: !237, file: !96, line: 329, baseType: !8, size: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "hash_filter", scope: !237, file: !96, line: 330, baseType: !8, size: 32, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "multi_addr", scope: !237, file: !96, line: 331, baseType: !8, size: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pcs", scope: !237, file: !96, line: 332, baseType: !8, size: 32, offset: 160)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "sma_mdio", scope: !237, file: !96, line: 333, baseType: !8, size: 32, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pmt_remote_wake_up", scope: !237, file: !96, line: 334, baseType: !8, size: 32, offset: 224)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pmt_magic_frame", scope: !237, file: !96, line: 335, baseType: !8, size: 32, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rmon", scope: !237, file: !96, line: 336, baseType: !8, size: 32, offset: 288)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "time_stamp", scope: !237, file: !96, line: 338, baseType: !8, size: 32, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "atime_stamp", scope: !237, file: !96, line: 340, baseType: !8, size: 32, offset: 352)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "eee", scope: !237, file: !96, line: 342, baseType: !8, size: 32, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "av", scope: !237, file: !96, line: 343, baseType: !8, size: 32, offset: 416)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "hash_tb_sz", scope: !237, file: !96, line: 344, baseType: !8, size: 32, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tsoen", scope: !237, file: !96, line: 345, baseType: !8, size: 32, offset: 480)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tx_coe", scope: !237, file: !96, line: 347, baseType: !8, size: 32, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "rx_coe", scope: !237, file: !96, line: 348, baseType: !8, size: 32, offset: 544)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "rx_coe_type1", scope: !237, file: !96, line: 349, baseType: !8, size: 32, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "rx_coe_type2", scope: !237, file: !96, line: 350, baseType: !8, size: 32, offset: 608)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "rxfifo_over_2048", scope: !237, file: !96, line: 351, baseType: !8, size: 32, offset: 640)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "number_rx_channel", scope: !237, file: !96, line: 353, baseType: !8, size: 32, offset: 672)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "number_tx_channel", scope: !237, file: !96, line: 354, baseType: !8, size: 32, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "number_rx_queues", scope: !237, file: !96, line: 356, baseType: !8, size: 32, offset: 736)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "number_tx_queues", scope: !237, file: !96, line: 357, baseType: !8, size: 32, offset: 768)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pps_out_num", scope: !237, file: !96, line: 359, baseType: !8, size: 32, offset: 800)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "enh_desc", scope: !237, file: !96, line: 361, baseType: !8, size: 32, offset: 832)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !237, file: !96, line: 363, baseType: !8, size: 32, offset: 864)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !237, file: !96, line: 364, baseType: !8, size: 32, offset: 896)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "asp", scope: !237, file: !96, line: 366, baseType: !8, size: 32, offset: 928)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "frpsel", scope: !237, file: !96, line: 368, baseType: !8, size: 32, offset: 960)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "frpbs", scope: !237, file: !96, line: 369, baseType: !8, size: 32, offset: 992)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "frpes", scope: !237, file: !96, line: 370, baseType: !8, size: 32, offset: 1024)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "addr64", scope: !237, file: !96, line: 371, baseType: !8, size: 32, offset: 1056)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rssen", scope: !237, file: !96, line: 372, baseType: !8, size: 32, offset: 1088)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "vlhash", scope: !237, file: !96, line: 373, baseType: !8, size: 32, offset: 1120)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "sphen", scope: !237, file: !96, line: 374, baseType: !8, size: 32, offset: 1152)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "vlins", scope: !237, file: !96, line: 375, baseType: !8, size: 32, offset: 1184)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "dvlan", scope: !237, file: !96, line: 376, baseType: !8, size: 32, offset: 1216)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "l3l4fnum", scope: !237, file: !96, line: 377, baseType: !8, size: 32, offset: 1248)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "arpoffsel", scope: !237, file: !96, line: 378, baseType: !8, size: 32, offset: 1280)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "estwid", scope: !237, file: !96, line: 380, baseType: !8, size: 32, offset: 1312)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "estdep", scope: !237, file: !96, line: 381, baseType: !8, size: 32, offset: 1344)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "estsel", scope: !237, file: !96, line: 382, baseType: !8, size: 32, offset: 1376)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "fpesel", scope: !237, file: !96, line: 383, baseType: !8, size: 32, offset: 1408)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tbssel", scope: !237, file: !96, line: 384, baseType: !8, size: 32, offset: 1440)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog", scope: !18, file: !19, line: 208, baseType: !286, size: 64, offset: 1216)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !25, !9, !9}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "set_tx_ring_len", scope: !18, file: !19, line: 209, baseType: !286, size: 64, offset: 1280)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "set_rx_ring_len", scope: !18, file: !19, line: 210, baseType: !286, size: 64, offset: 1344)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "set_rx_tail_ptr", scope: !18, file: !19, line: 211, baseType: !286, size: 64, offset: 1408)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "set_tx_tail_ptr", scope: !18, file: !19, line: 212, baseType: !286, size: 64, offset: 1472)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "enable_tso", scope: !18, file: !19, line: 213, baseType: !294, size: 64, offset: 1536)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !25, !38, !9}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "qmode", scope: !18, file: !19, line: 214, baseType: !298, size: 64, offset: 1600)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !25, !9, !86}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "set_bfsize", scope: !18, file: !19, line: 215, baseType: !302, size: 64, offset: 1664)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !25, !13, !9}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "enable_sph", scope: !18, file: !19, line: 216, baseType: !294, size: 64, offset: 1728)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "enable_tbs", scope: !18, file: !19, line: 217, baseType: !307, size: 64, offset: 1792)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!13, !25, !38, !9}
!310 = !{i32 7, !"Dwarf Version", i32 4}
!311 = !{i32 2, !"Debug Info Version", i32 3}
!312 = !{i32 1, !"wchar_size", i32 2}
!313 = !{i32 1, !"Code Model", i32 2}
!314 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!315 = distinct !DISubprogram(name: "dwmac4_dma_init", scope: !3, file: !3, line: 127, type: !28, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!316 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !315, file: !3, line: 127, type: !25)
!317 = !DILocation(line: 127, column: 43, scope: !315)
!318 = !DILocalVariable(name: "dma_cfg", arg: 2, scope: !315, file: !3, line: 128, type: !30)
!319 = !DILocation(line: 128, column: 31, scope: !315)
!320 = !DILocalVariable(name: "atds", arg: 3, scope: !315, file: !3, line: 128, type: !13)
!321 = !DILocation(line: 128, column: 44, scope: !315)
!322 = !DILocalVariable(name: "value", scope: !315, file: !3, line: 130, type: !9)
!323 = !DILocation(line: 130, column: 6, scope: !315)
!324 = !DILocation(line: 130, column: 20, scope: !315)
!325 = !DILocation(line: 130, column: 27, scope: !315)
!326 = !DILocation(line: 130, column: 14, scope: !315)
!327 = !DILocation(line: 133, column: 6, scope: !328)
!328 = distinct !DILexicalBlock(scope: !315, file: !3, line: 133, column: 6)
!329 = !DILocation(line: 133, column: 15, scope: !328)
!330 = !DILocation(line: 133, column: 6, scope: !315)
!331 = !DILocation(line: 134, column: 9, scope: !328)
!332 = !DILocation(line: 134, column: 3, scope: !328)
!333 = !DILocation(line: 137, column: 6, scope: !334)
!334 = distinct !DILexicalBlock(scope: !315, file: !3, line: 137, column: 6)
!335 = !DILocation(line: 137, column: 15, scope: !334)
!336 = !DILocation(line: 137, column: 6, scope: !315)
!337 = !DILocation(line: 138, column: 9, scope: !334)
!338 = !DILocation(line: 138, column: 3, scope: !334)
!339 = !DILocation(line: 140, column: 6, scope: !340)
!340 = distinct !DILexicalBlock(scope: !315, file: !3, line: 140, column: 6)
!341 = !DILocation(line: 140, column: 15, scope: !340)
!342 = !DILocation(line: 140, column: 6, scope: !315)
!343 = !DILocation(line: 141, column: 9, scope: !340)
!344 = !DILocation(line: 141, column: 3, scope: !340)
!345 = !DILocation(line: 143, column: 6, scope: !346)
!346 = distinct !DILexicalBlock(scope: !315, file: !3, line: 143, column: 6)
!347 = !DILocation(line: 143, column: 15, scope: !346)
!348 = !DILocation(line: 143, column: 6, scope: !315)
!349 = !DILocation(line: 144, column: 9, scope: !346)
!350 = !DILocation(line: 144, column: 3, scope: !346)
!351 = !DILocation(line: 146, column: 9, scope: !315)
!352 = !DILocation(line: 146, column: 16, scope: !315)
!353 = !DILocation(line: 146, column: 23, scope: !315)
!354 = !DILocation(line: 146, column: 2, scope: !315)
!355 = !DILocation(line: 147, column: 1, scope: !315)
!356 = distinct !DISubprogram(name: "dwmac4_dma_init_channel", scope: !3, file: !3, line: 111, type: !47, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!357 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !356, file: !3, line: 111, type: !25)
!358 = !DILocation(line: 111, column: 51, scope: !356)
!359 = !DILocalVariable(name: "dma_cfg", arg: 2, scope: !356, file: !3, line: 112, type: !30)
!360 = !DILocation(line: 112, column: 32, scope: !356)
!361 = !DILocalVariable(name: "chan", arg: 3, scope: !356, file: !3, line: 112, type: !9)
!362 = !DILocation(line: 112, column: 45, scope: !356)
!363 = !DILocalVariable(name: "value", scope: !356, file: !3, line: 114, type: !9)
!364 = !DILocation(line: 114, column: 6, scope: !356)
!365 = !DILocation(line: 117, column: 16, scope: !356)
!366 = !DILocation(line: 117, column: 25, scope: !356)
!367 = !DILocation(line: 117, column: 23, scope: !356)
!368 = !DILocation(line: 117, column: 10, scope: !356)
!369 = !DILocation(line: 117, column: 8, scope: !356)
!370 = !DILocation(line: 118, column: 6, scope: !371)
!371 = distinct !DILexicalBlock(scope: !356, file: !3, line: 118, column: 6)
!372 = !DILocation(line: 118, column: 15, scope: !371)
!373 = !DILocation(line: 118, column: 6, scope: !356)
!374 = !DILocation(line: 119, column: 11, scope: !371)
!375 = !DILocation(line: 119, column: 17, scope: !371)
!376 = !DILocation(line: 119, column: 9, scope: !371)
!377 = !DILocation(line: 119, column: 3, scope: !371)
!378 = !DILocation(line: 120, column: 9, scope: !356)
!379 = !DILocation(line: 120, column: 16, scope: !356)
!380 = !DILocation(line: 120, column: 25, scope: !356)
!381 = !DILocation(line: 120, column: 23, scope: !356)
!382 = !DILocation(line: 120, column: 2, scope: !356)
!383 = !DILocation(line: 124, column: 9, scope: !356)
!384 = !DILocation(line: 124, column: 18, scope: !356)
!385 = !DILocation(line: 124, column: 16, scope: !356)
!386 = !DILocation(line: 123, column: 2, scope: !356)
!387 = !DILocation(line: 125, column: 1, scope: !356)
!388 = distinct !DISubprogram(name: "dwmac4_dma_init_rx_chan", scope: !3, file: !3, line: 71, type: !51, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!389 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !388, file: !3, line: 71, type: !25)
!390 = !DILocation(line: 71, column: 51, scope: !388)
!391 = !DILocalVariable(name: "dma_cfg", arg: 2, scope: !388, file: !3, line: 72, type: !30)
!392 = !DILocation(line: 72, column: 32, scope: !388)
!393 = !DILocalVariable(name: "dma_rx_phy", arg: 3, scope: !388, file: !3, line: 73, type: !53)
!394 = !DILocation(line: 73, column: 20, scope: !388)
!395 = !DILocalVariable(name: "chan", arg: 4, scope: !388, file: !3, line: 73, type: !9)
!396 = !DILocation(line: 73, column: 36, scope: !388)
!397 = !DILocalVariable(name: "value", scope: !388, file: !3, line: 75, type: !9)
!398 = !DILocation(line: 75, column: 6, scope: !388)
!399 = !DILocalVariable(name: "rxpbl", scope: !388, file: !3, line: 76, type: !9)
!400 = !DILocation(line: 76, column: 6, scope: !388)
!401 = !DILocation(line: 76, column: 14, scope: !388)
!402 = !DILocation(line: 76, column: 23, scope: !388)
!403 = !DILocation(line: 76, column: 32, scope: !388)
!404 = !DILocation(line: 76, column: 41, scope: !388)
!405 = !DILocation(line: 78, column: 16, scope: !388)
!406 = !DILocation(line: 78, column: 25, scope: !388)
!407 = !DILocation(line: 78, column: 23, scope: !388)
!408 = !DILocation(line: 78, column: 10, scope: !388)
!409 = !DILocation(line: 78, column: 8, scope: !388)
!410 = !DILocation(line: 79, column: 10, scope: !388)
!411 = !DILocation(line: 79, column: 19, scope: !388)
!412 = !DILocation(line: 79, column: 25, scope: !388)
!413 = !DILocation(line: 79, column: 16, scope: !388)
!414 = !DILocation(line: 79, column: 8, scope: !388)
!415 = !DILocation(line: 80, column: 9, scope: !388)
!416 = !DILocation(line: 80, column: 16, scope: !388)
!417 = !DILocation(line: 80, column: 25, scope: !388)
!418 = !DILocation(line: 80, column: 23, scope: !388)
!419 = !DILocation(line: 80, column: 2, scope: !388)
!420 = !DILocation(line: 82, column: 50, scope: !421)
!421 = distinct !DILexicalBlock(scope: !388, file: !3, line: 82, column: 6)
!422 = !DILocation(line: 82, column: 6, scope: !388)
!423 = !DILocation(line: 83, column: 10, scope: !421)
!424 = !DILocation(line: 84, column: 10, scope: !421)
!425 = !DILocation(line: 84, column: 19, scope: !421)
!426 = !DILocation(line: 84, column: 17, scope: !421)
!427 = !DILocation(line: 83, column: 3, scope: !421)
!428 = !DILocation(line: 86, column: 9, scope: !388)
!429 = !DILocation(line: 86, column: 36, scope: !388)
!430 = !DILocation(line: 86, column: 45, scope: !388)
!431 = !DILocation(line: 86, column: 43, scope: !388)
!432 = !DILocation(line: 86, column: 2, scope: !388)
!433 = !DILocation(line: 87, column: 1, scope: !388)
!434 = distinct !DISubprogram(name: "dwmac4_dma_init_tx_chan", scope: !3, file: !3, line: 89, type: !51, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!435 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !434, file: !3, line: 89, type: !25)
!436 = !DILocation(line: 89, column: 51, scope: !434)
!437 = !DILocalVariable(name: "dma_cfg", arg: 2, scope: !434, file: !3, line: 90, type: !30)
!438 = !DILocation(line: 90, column: 32, scope: !434)
!439 = !DILocalVariable(name: "dma_tx_phy", arg: 3, scope: !434, file: !3, line: 91, type: !53)
!440 = !DILocation(line: 91, column: 20, scope: !434)
!441 = !DILocalVariable(name: "chan", arg: 4, scope: !434, file: !3, line: 91, type: !9)
!442 = !DILocation(line: 91, column: 36, scope: !434)
!443 = !DILocalVariable(name: "value", scope: !434, file: !3, line: 93, type: !9)
!444 = !DILocation(line: 93, column: 6, scope: !434)
!445 = !DILocalVariable(name: "txpbl", scope: !434, file: !3, line: 94, type: !9)
!446 = !DILocation(line: 94, column: 6, scope: !434)
!447 = !DILocation(line: 94, column: 14, scope: !434)
!448 = !DILocation(line: 94, column: 23, scope: !434)
!449 = !DILocation(line: 94, column: 32, scope: !434)
!450 = !DILocation(line: 94, column: 41, scope: !434)
!451 = !DILocation(line: 96, column: 16, scope: !434)
!452 = !DILocation(line: 96, column: 25, scope: !434)
!453 = !DILocation(line: 96, column: 23, scope: !434)
!454 = !DILocation(line: 96, column: 10, scope: !434)
!455 = !DILocation(line: 96, column: 8, scope: !434)
!456 = !DILocation(line: 97, column: 10, scope: !434)
!457 = !DILocation(line: 97, column: 19, scope: !434)
!458 = !DILocation(line: 97, column: 25, scope: !434)
!459 = !DILocation(line: 97, column: 16, scope: !434)
!460 = !DILocation(line: 97, column: 8, scope: !434)
!461 = !DILocation(line: 100, column: 8, scope: !434)
!462 = !DILocation(line: 102, column: 9, scope: !434)
!463 = !DILocation(line: 102, column: 16, scope: !434)
!464 = !DILocation(line: 102, column: 25, scope: !434)
!465 = !DILocation(line: 102, column: 23, scope: !434)
!466 = !DILocation(line: 102, column: 2, scope: !434)
!467 = !DILocation(line: 104, column: 50, scope: !468)
!468 = distinct !DILexicalBlock(scope: !434, file: !3, line: 104, column: 6)
!469 = !DILocation(line: 104, column: 6, scope: !434)
!470 = !DILocation(line: 105, column: 10, scope: !468)
!471 = !DILocation(line: 106, column: 10, scope: !468)
!472 = !DILocation(line: 106, column: 19, scope: !468)
!473 = !DILocation(line: 106, column: 17, scope: !468)
!474 = !DILocation(line: 105, column: 3, scope: !468)
!475 = !DILocation(line: 108, column: 9, scope: !434)
!476 = !DILocation(line: 108, column: 36, scope: !434)
!477 = !DILocation(line: 108, column: 45, scope: !434)
!478 = !DILocation(line: 108, column: 43, scope: !434)
!479 = !DILocation(line: 108, column: 2, scope: !434)
!480 = !DILocation(line: 109, column: 1, scope: !434)
!481 = distinct !DISubprogram(name: "dwmac4_dma_axi", scope: !3, file: !3, line: 17, type: !60, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!482 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !481, file: !3, line: 17, type: !25)
!483 = !DILocation(line: 17, column: 42, scope: !481)
!484 = !DILocalVariable(name: "axi", arg: 2, scope: !481, file: !3, line: 17, type: !62)
!485 = !DILocation(line: 17, column: 69, scope: !481)
!486 = !DILocalVariable(name: "value", scope: !481, file: !3, line: 19, type: !9)
!487 = !DILocation(line: 19, column: 6, scope: !481)
!488 = !DILocation(line: 19, column: 20, scope: !481)
!489 = !DILocation(line: 19, column: 27, scope: !481)
!490 = !DILocation(line: 19, column: 14, scope: !481)
!491 = !DILocalVariable(name: "i", scope: !481, file: !3, line: 20, type: !13)
!492 = !DILocation(line: 20, column: 6, scope: !481)
!493 = !DILocation(line: 22, column: 2, scope: !481)
!494 = !DILocation(line: 25, column: 6, scope: !495)
!495 = distinct !DILexicalBlock(scope: !481, file: !3, line: 25, column: 6)
!496 = !DILocation(line: 25, column: 11, scope: !495)
!497 = !DILocation(line: 25, column: 6, scope: !481)
!498 = !DILocation(line: 26, column: 9, scope: !495)
!499 = !DILocation(line: 26, column: 3, scope: !495)
!500 = !DILocation(line: 27, column: 6, scope: !501)
!501 = distinct !DILexicalBlock(scope: !481, file: !3, line: 27, column: 6)
!502 = !DILocation(line: 27, column: 11, scope: !501)
!503 = !DILocation(line: 27, column: 6, scope: !481)
!504 = !DILocation(line: 28, column: 9, scope: !501)
!505 = !DILocation(line: 28, column: 3, scope: !501)
!506 = !DILocation(line: 30, column: 8, scope: !481)
!507 = !DILocation(line: 31, column: 12, scope: !481)
!508 = !DILocation(line: 31, column: 17, scope: !481)
!509 = !DILocation(line: 31, column: 32, scope: !481)
!510 = !DILocation(line: 31, column: 51, scope: !481)
!511 = !DILocation(line: 31, column: 8, scope: !481)
!512 = !DILocation(line: 34, column: 8, scope: !481)
!513 = !DILocation(line: 35, column: 12, scope: !481)
!514 = !DILocation(line: 35, column: 17, scope: !481)
!515 = !DILocation(line: 35, column: 32, scope: !481)
!516 = !DILocation(line: 35, column: 51, scope: !481)
!517 = !DILocation(line: 35, column: 8, scope: !481)
!518 = !DILocation(line: 42, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !481, file: !3, line: 42, column: 2)
!520 = !DILocation(line: 42, column: 7, scope: !519)
!521 = !DILocation(line: 42, column: 14, scope: !522)
!522 = distinct !DILexicalBlock(scope: !519, file: !3, line: 42, column: 2)
!523 = !DILocation(line: 42, column: 16, scope: !522)
!524 = !DILocation(line: 42, column: 2, scope: !519)
!525 = !DILocation(line: 43, column: 11, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !3, line: 42, column: 33)
!527 = !DILocation(line: 43, column: 16, scope: !526)
!528 = !DILocation(line: 43, column: 25, scope: !526)
!529 = !DILocation(line: 43, column: 3, scope: !526)
!530 = !DILocation(line: 45, column: 10, scope: !531)
!531 = distinct !DILexicalBlock(scope: !526, file: !3, line: 43, column: 29)
!532 = !DILocation(line: 46, column: 4, scope: !531)
!533 = !DILocation(line: 48, column: 10, scope: !531)
!534 = !DILocation(line: 49, column: 4, scope: !531)
!535 = !DILocation(line: 51, column: 10, scope: !531)
!536 = !DILocation(line: 52, column: 4, scope: !531)
!537 = !DILocation(line: 54, column: 10, scope: !531)
!538 = !DILocation(line: 55, column: 4, scope: !531)
!539 = !DILocation(line: 57, column: 10, scope: !531)
!540 = !DILocation(line: 58, column: 4, scope: !531)
!541 = !DILocation(line: 60, column: 10, scope: !531)
!542 = !DILocation(line: 61, column: 4, scope: !531)
!543 = !DILocation(line: 63, column: 10, scope: !531)
!544 = !DILocation(line: 64, column: 4, scope: !531)
!545 = !DILocation(line: 66, column: 2, scope: !526)
!546 = !DILocation(line: 42, column: 29, scope: !522)
!547 = !DILocation(line: 42, column: 2, scope: !522)
!548 = distinct !{!548, !524, !549}
!549 = !DILocation(line: 66, column: 2, scope: !519)
!550 = !DILocation(line: 68, column: 9, scope: !481)
!551 = !DILocation(line: 68, column: 16, scope: !481)
!552 = !DILocation(line: 68, column: 23, scope: !481)
!553 = !DILocation(line: 68, column: 2, scope: !481)
!554 = !DILocation(line: 69, column: 1, scope: !481)
!555 = distinct !DISubprogram(name: "dwmac4_dump_dma_regs", scope: !3, file: !3, line: 188, type: !79, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!556 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !555, file: !3, line: 188, type: !25)
!557 = !DILocation(line: 188, column: 48, scope: !555)
!558 = !DILocalVariable(name: "reg_space", arg: 2, scope: !555, file: !3, line: 188, type: !81)
!559 = !DILocation(line: 188, column: 61, scope: !555)
!560 = !DILocalVariable(name: "i", scope: !555, file: !3, line: 190, type: !13)
!561 = !DILocation(line: 190, column: 6, scope: !555)
!562 = !DILocation(line: 192, column: 9, scope: !563)
!563 = distinct !DILexicalBlock(scope: !555, file: !3, line: 192, column: 2)
!564 = !DILocation(line: 192, column: 7, scope: !563)
!565 = !DILocation(line: 192, column: 14, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !3, line: 192, column: 2)
!567 = !DILocation(line: 192, column: 16, scope: !566)
!568 = !DILocation(line: 192, column: 2, scope: !563)
!569 = !DILocation(line: 193, column: 25, scope: !566)
!570 = !DILocation(line: 193, column: 33, scope: !566)
!571 = !DILocation(line: 193, column: 36, scope: !566)
!572 = !DILocation(line: 193, column: 3, scope: !566)
!573 = !DILocation(line: 192, column: 39, scope: !566)
!574 = !DILocation(line: 192, column: 2, scope: !566)
!575 = distinct !{!575, !568, !576}
!576 = !DILocation(line: 193, column: 45, scope: !563)
!577 = !DILocation(line: 194, column: 1, scope: !555)
!578 = distinct !DISubprogram(name: "dwmac4_dma_rx_chan_op_mode", scope: !3, file: !3, line: 204, type: !84, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!579 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !578, file: !3, line: 204, type: !25)
!580 = !DILocation(line: 204, column: 54, scope: !578)
!581 = !DILocalVariable(name: "mode", arg: 2, scope: !578, file: !3, line: 204, type: !13)
!582 = !DILocation(line: 204, column: 66, scope: !578)
!583 = !DILocalVariable(name: "channel", arg: 3, scope: !578, file: !3, line: 205, type: !9)
!584 = !DILocation(line: 205, column: 16, scope: !578)
!585 = !DILocalVariable(name: "fifosz", arg: 4, scope: !578, file: !3, line: 205, type: !13)
!586 = !DILocation(line: 205, column: 29, scope: !578)
!587 = !DILocalVariable(name: "qmode", arg: 5, scope: !578, file: !3, line: 205, type: !86)
!588 = !DILocation(line: 205, column: 40, scope: !578)
!589 = !DILocalVariable(name: "rqs", scope: !578, file: !3, line: 207, type: !8)
!590 = !DILocation(line: 207, column: 15, scope: !578)
!591 = !DILocation(line: 207, column: 21, scope: !578)
!592 = !DILocation(line: 207, column: 28, scope: !578)
!593 = !DILocation(line: 207, column: 34, scope: !578)
!594 = !DILocalVariable(name: "mtl_rx_op", scope: !578, file: !3, line: 208, type: !9)
!595 = !DILocation(line: 208, column: 6, scope: !578)
!596 = !DILocalVariable(name: "mtl_rx_int", scope: !578, file: !3, line: 208, type: !9)
!597 = !DILocation(line: 208, column: 17, scope: !578)
!598 = !DILocation(line: 210, column: 20, scope: !578)
!599 = !DILocation(line: 210, column: 29, scope: !578)
!600 = !DILocation(line: 210, column: 27, scope: !578)
!601 = !DILocation(line: 210, column: 14, scope: !578)
!602 = !DILocation(line: 210, column: 12, scope: !578)
!603 = !DILocation(line: 212, column: 6, scope: !604)
!604 = distinct !DILexicalBlock(scope: !578, file: !3, line: 212, column: 6)
!605 = !DILocation(line: 212, column: 11, scope: !604)
!606 = !DILocation(line: 212, column: 6, scope: !578)
!607 = !DILocation(line: 213, column: 3, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 213, column: 3)
!609 = distinct !DILexicalBlock(scope: !610, file: !3, line: 213, column: 3)
!610 = distinct !DILexicalBlock(scope: !604, file: !3, line: 212, column: 27)
!611 = !DILocation(line: 213, column: 3, scope: !609)
!612 = !DILocation(line: 214, column: 13, scope: !610)
!613 = !DILocation(line: 215, column: 2, scope: !610)
!614 = !DILocation(line: 216, column: 3, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !3, line: 216, column: 3)
!616 = distinct !DILexicalBlock(scope: !617, file: !3, line: 216, column: 3)
!617 = distinct !DILexicalBlock(scope: !604, file: !3, line: 215, column: 9)
!618 = !DILocation(line: 216, column: 3, scope: !616)
!619 = !DILocation(line: 217, column: 13, scope: !617)
!620 = !DILocation(line: 218, column: 13, scope: !617)
!621 = !DILocation(line: 219, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !617, file: !3, line: 219, column: 7)
!623 = !DILocation(line: 219, column: 12, scope: !622)
!624 = !DILocation(line: 219, column: 7, scope: !617)
!625 = !DILocation(line: 220, column: 14, scope: !622)
!626 = !DILocation(line: 220, column: 4, scope: !622)
!627 = !DILocation(line: 221, column: 12, scope: !628)
!628 = distinct !DILexicalBlock(scope: !622, file: !3, line: 221, column: 12)
!629 = !DILocation(line: 221, column: 17, scope: !628)
!630 = !DILocation(line: 221, column: 12, scope: !622)
!631 = !DILocation(line: 222, column: 14, scope: !628)
!632 = !DILocation(line: 222, column: 4, scope: !628)
!633 = !DILocation(line: 223, column: 12, scope: !634)
!634 = distinct !DILexicalBlock(scope: !628, file: !3, line: 223, column: 12)
!635 = !DILocation(line: 223, column: 17, scope: !634)
!636 = !DILocation(line: 223, column: 12, scope: !628)
!637 = !DILocation(line: 224, column: 14, scope: !634)
!638 = !DILocation(line: 224, column: 4, scope: !634)
!639 = !DILocation(line: 226, column: 14, scope: !634)
!640 = !DILocation(line: 229, column: 12, scope: !578)
!641 = !DILocation(line: 230, column: 15, scope: !578)
!642 = !DILocation(line: 230, column: 19, scope: !578)
!643 = !DILocation(line: 230, column: 12, scope: !578)
!644 = !DILocation(line: 235, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !578, file: !3, line: 235, column: 6)
!646 = !DILocation(line: 235, column: 14, scope: !645)
!647 = !DILocation(line: 235, column: 23, scope: !645)
!648 = !DILocation(line: 235, column: 27, scope: !645)
!649 = !DILocation(line: 235, column: 33, scope: !645)
!650 = !DILocation(line: 235, column: 6, scope: !578)
!651 = !DILocalVariable(name: "rfd", scope: !652, file: !3, line: 236, type: !8)
!652 = distinct !DILexicalBlock(scope: !645, file: !3, line: 235, column: 52)
!653 = !DILocation(line: 236, column: 16, scope: !652)
!654 = !DILocalVariable(name: "rfa", scope: !652, file: !3, line: 236, type: !8)
!655 = !DILocation(line: 236, column: 21, scope: !652)
!656 = !DILocation(line: 238, column: 13, scope: !652)
!657 = !DILocation(line: 246, column: 11, scope: !652)
!658 = !DILocation(line: 246, column: 3, scope: !652)
!659 = !DILocation(line: 251, column: 8, scope: !660)
!660 = distinct !DILexicalBlock(scope: !652, file: !3, line: 246, column: 19)
!661 = !DILocation(line: 252, column: 8, scope: !660)
!662 = !DILocation(line: 253, column: 4, scope: !660)
!663 = !DILocation(line: 256, column: 8, scope: !660)
!664 = !DILocation(line: 257, column: 8, scope: !660)
!665 = !DILocation(line: 258, column: 4, scope: !660)
!666 = !DILocation(line: 261, column: 13, scope: !652)
!667 = !DILocation(line: 262, column: 16, scope: !652)
!668 = !DILocation(line: 262, column: 20, scope: !652)
!669 = !DILocation(line: 262, column: 13, scope: !652)
!670 = !DILocation(line: 264, column: 13, scope: !652)
!671 = !DILocation(line: 265, column: 16, scope: !652)
!672 = !DILocation(line: 265, column: 20, scope: !652)
!673 = !DILocation(line: 265, column: 13, scope: !652)
!674 = !DILocation(line: 266, column: 2, scope: !652)
!675 = !DILocation(line: 268, column: 9, scope: !578)
!676 = !DILocation(line: 268, column: 20, scope: !578)
!677 = !DILocation(line: 268, column: 29, scope: !578)
!678 = !DILocation(line: 268, column: 27, scope: !578)
!679 = !DILocation(line: 268, column: 2, scope: !578)
!680 = !DILocation(line: 271, column: 21, scope: !578)
!681 = !DILocation(line: 271, column: 30, scope: !578)
!682 = !DILocation(line: 271, column: 28, scope: !578)
!683 = !DILocation(line: 271, column: 15, scope: !578)
!684 = !DILocation(line: 271, column: 13, scope: !578)
!685 = !DILocation(line: 272, column: 9, scope: !578)
!686 = !DILocation(line: 272, column: 20, scope: !578)
!687 = !DILocation(line: 273, column: 9, scope: !578)
!688 = !DILocation(line: 273, column: 18, scope: !578)
!689 = !DILocation(line: 273, column: 16, scope: !578)
!690 = !DILocation(line: 272, column: 2, scope: !578)
!691 = !DILocation(line: 274, column: 1, scope: !578)
!692 = distinct !DISubprogram(name: "dwmac4_dma_tx_chan_op_mode", scope: !3, file: !3, line: 276, type: !84, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!693 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !692, file: !3, line: 276, type: !25)
!694 = !DILocation(line: 276, column: 54, scope: !692)
!695 = !DILocalVariable(name: "mode", arg: 2, scope: !692, file: !3, line: 276, type: !13)
!696 = !DILocation(line: 276, column: 66, scope: !692)
!697 = !DILocalVariable(name: "channel", arg: 3, scope: !692, file: !3, line: 277, type: !9)
!698 = !DILocation(line: 277, column: 16, scope: !692)
!699 = !DILocalVariable(name: "fifosz", arg: 4, scope: !692, file: !3, line: 277, type: !13)
!700 = !DILocation(line: 277, column: 29, scope: !692)
!701 = !DILocalVariable(name: "qmode", arg: 5, scope: !692, file: !3, line: 277, type: !86)
!702 = !DILocation(line: 277, column: 40, scope: !692)
!703 = !DILocalVariable(name: "mtl_tx_op", scope: !692, file: !3, line: 279, type: !9)
!704 = !DILocation(line: 279, column: 6, scope: !692)
!705 = !DILocation(line: 279, column: 24, scope: !692)
!706 = !DILocation(line: 279, column: 33, scope: !692)
!707 = !DILocation(line: 279, column: 31, scope: !692)
!708 = !DILocation(line: 279, column: 18, scope: !692)
!709 = !DILocalVariable(name: "tqs", scope: !692, file: !3, line: 280, type: !8)
!710 = !DILocation(line: 280, column: 15, scope: !692)
!711 = !DILocation(line: 280, column: 21, scope: !692)
!712 = !DILocation(line: 280, column: 28, scope: !692)
!713 = !DILocation(line: 280, column: 34, scope: !692)
!714 = !DILocation(line: 282, column: 6, scope: !715)
!715 = distinct !DILexicalBlock(scope: !692, file: !3, line: 282, column: 6)
!716 = !DILocation(line: 282, column: 11, scope: !715)
!717 = !DILocation(line: 282, column: 6, scope: !692)
!718 = !DILocation(line: 283, column: 3, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 283, column: 3)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 283, column: 3)
!721 = distinct !DILexicalBlock(scope: !715, file: !3, line: 282, column: 27)
!722 = !DILocation(line: 283, column: 3, scope: !720)
!723 = !DILocation(line: 285, column: 13, scope: !721)
!724 = !DILocation(line: 286, column: 2, scope: !721)
!725 = !DILocation(line: 287, column: 3, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !3, line: 287, column: 3)
!727 = distinct !DILexicalBlock(scope: !728, file: !3, line: 287, column: 3)
!728 = distinct !DILexicalBlock(scope: !715, file: !3, line: 286, column: 9)
!729 = !DILocation(line: 287, column: 3, scope: !727)
!730 = !DILocation(line: 288, column: 13, scope: !728)
!731 = !DILocation(line: 289, column: 13, scope: !728)
!732 = !DILocation(line: 291, column: 7, scope: !733)
!733 = distinct !DILexicalBlock(scope: !728, file: !3, line: 291, column: 7)
!734 = !DILocation(line: 291, column: 12, scope: !733)
!735 = !DILocation(line: 291, column: 7, scope: !728)
!736 = !DILocation(line: 292, column: 14, scope: !733)
!737 = !DILocation(line: 292, column: 4, scope: !733)
!738 = !DILocation(line: 293, column: 12, scope: !739)
!739 = distinct !DILexicalBlock(scope: !733, file: !3, line: 293, column: 12)
!740 = !DILocation(line: 293, column: 17, scope: !739)
!741 = !DILocation(line: 293, column: 12, scope: !733)
!742 = !DILocation(line: 294, column: 14, scope: !739)
!743 = !DILocation(line: 294, column: 4, scope: !739)
!744 = !DILocation(line: 295, column: 12, scope: !745)
!745 = distinct !DILexicalBlock(scope: !739, file: !3, line: 295, column: 12)
!746 = !DILocation(line: 295, column: 17, scope: !745)
!747 = !DILocation(line: 295, column: 12, scope: !739)
!748 = !DILocation(line: 296, column: 14, scope: !745)
!749 = !DILocation(line: 296, column: 4, scope: !745)
!750 = !DILocation(line: 297, column: 12, scope: !751)
!751 = distinct !DILexicalBlock(scope: !745, file: !3, line: 297, column: 12)
!752 = !DILocation(line: 297, column: 17, scope: !751)
!753 = !DILocation(line: 297, column: 12, scope: !745)
!754 = !DILocation(line: 298, column: 14, scope: !751)
!755 = !DILocation(line: 298, column: 4, scope: !751)
!756 = !DILocation(line: 299, column: 12, scope: !757)
!757 = distinct !DILexicalBlock(scope: !751, file: !3, line: 299, column: 12)
!758 = !DILocation(line: 299, column: 17, scope: !757)
!759 = !DILocation(line: 299, column: 12, scope: !751)
!760 = !DILocation(line: 300, column: 14, scope: !757)
!761 = !DILocation(line: 300, column: 4, scope: !757)
!762 = !DILocation(line: 301, column: 12, scope: !763)
!763 = distinct !DILexicalBlock(scope: !757, file: !3, line: 301, column: 12)
!764 = !DILocation(line: 301, column: 17, scope: !763)
!765 = !DILocation(line: 301, column: 12, scope: !757)
!766 = !DILocation(line: 302, column: 14, scope: !763)
!767 = !DILocation(line: 302, column: 4, scope: !763)
!768 = !DILocation(line: 303, column: 12, scope: !769)
!769 = distinct !DILexicalBlock(scope: !763, file: !3, line: 303, column: 12)
!770 = !DILocation(line: 303, column: 17, scope: !769)
!771 = !DILocation(line: 303, column: 12, scope: !763)
!772 = !DILocation(line: 304, column: 14, scope: !769)
!773 = !DILocation(line: 304, column: 4, scope: !769)
!774 = !DILocation(line: 306, column: 14, scope: !769)
!775 = !DILocation(line: 317, column: 12, scope: !692)
!776 = !DILocation(line: 318, column: 6, scope: !777)
!777 = distinct !DILexicalBlock(scope: !692, file: !3, line: 318, column: 6)
!778 = !DILocation(line: 318, column: 12, scope: !777)
!779 = !DILocation(line: 318, column: 6, scope: !692)
!780 = !DILocation(line: 319, column: 13, scope: !777)
!781 = !DILocation(line: 319, column: 3, scope: !777)
!782 = !DILocation(line: 321, column: 13, scope: !777)
!783 = !DILocation(line: 322, column: 12, scope: !692)
!784 = !DILocation(line: 323, column: 15, scope: !692)
!785 = !DILocation(line: 323, column: 19, scope: !692)
!786 = !DILocation(line: 323, column: 12, scope: !692)
!787 = !DILocation(line: 325, column: 9, scope: !692)
!788 = !DILocation(line: 325, column: 20, scope: !692)
!789 = !DILocation(line: 325, column: 30, scope: !692)
!790 = !DILocation(line: 325, column: 27, scope: !692)
!791 = !DILocation(line: 325, column: 2, scope: !692)
!792 = !DILocation(line: 326, column: 1, scope: !692)
!793 = distinct !DISubprogram(name: "dwmac4_get_hw_feature", scope: !3, file: !3, line: 328, type: !234, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!794 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !793, file: !3, line: 328, type: !25)
!795 = !DILocation(line: 328, column: 49, scope: !793)
!796 = !DILocalVariable(name: "dma_cap", arg: 2, scope: !793, file: !3, line: 329, type: !236)
!797 = !DILocation(line: 329, column: 28, scope: !793)
!798 = !DILocalVariable(name: "hw_cap", scope: !793, file: !3, line: 331, type: !9)
!799 = !DILocation(line: 331, column: 6, scope: !793)
!800 = !DILocation(line: 331, column: 21, scope: !793)
!801 = !DILocation(line: 331, column: 28, scope: !793)
!802 = !DILocation(line: 331, column: 15, scope: !793)
!803 = !DILocation(line: 334, column: 26, scope: !793)
!804 = !DILocation(line: 334, column: 33, scope: !793)
!805 = !DILocation(line: 334, column: 25, scope: !793)
!806 = !DILocation(line: 334, column: 2, scope: !793)
!807 = !DILocation(line: 334, column: 11, scope: !793)
!808 = !DILocation(line: 334, column: 23, scope: !793)
!809 = !DILocation(line: 335, column: 24, scope: !793)
!810 = !DILocation(line: 335, column: 31, scope: !793)
!811 = !DILocation(line: 335, column: 55, scope: !793)
!812 = !DILocation(line: 335, column: 23, scope: !793)
!813 = !DILocation(line: 335, column: 2, scope: !793)
!814 = !DILocation(line: 335, column: 11, scope: !793)
!815 = !DILocation(line: 335, column: 21, scope: !793)
!816 = !DILocation(line: 336, column: 26, scope: !793)
!817 = !DILocation(line: 336, column: 33, scope: !793)
!818 = !DILocation(line: 336, column: 55, scope: !793)
!819 = !DILocation(line: 336, column: 25, scope: !793)
!820 = !DILocation(line: 336, column: 2, scope: !793)
!821 = !DILocation(line: 336, column: 11, scope: !793)
!822 = !DILocation(line: 336, column: 23, scope: !793)
!823 = !DILocation(line: 337, column: 21, scope: !793)
!824 = !DILocation(line: 337, column: 28, scope: !793)
!825 = !DILocation(line: 337, column: 51, scope: !793)
!826 = !DILocation(line: 337, column: 20, scope: !793)
!827 = !DILocation(line: 337, column: 2, scope: !793)
!828 = !DILocation(line: 337, column: 11, scope: !793)
!829 = !DILocation(line: 337, column: 18, scope: !793)
!830 = !DILocation(line: 338, column: 25, scope: !793)
!831 = !DILocation(line: 338, column: 32, scope: !793)
!832 = !DILocation(line: 338, column: 55, scope: !793)
!833 = !DILocation(line: 338, column: 24, scope: !793)
!834 = !DILocation(line: 338, column: 2, scope: !793)
!835 = !DILocation(line: 338, column: 11, scope: !793)
!836 = !DILocation(line: 338, column: 22, scope: !793)
!837 = !DILocation(line: 339, column: 18, scope: !793)
!838 = !DILocation(line: 339, column: 25, scope: !793)
!839 = !DILocation(line: 339, column: 48, scope: !793)
!840 = !DILocation(line: 339, column: 17, scope: !793)
!841 = !DILocation(line: 339, column: 2, scope: !793)
!842 = !DILocation(line: 339, column: 11, scope: !793)
!843 = !DILocation(line: 339, column: 15, scope: !793)
!844 = !DILocation(line: 340, column: 23, scope: !793)
!845 = !DILocation(line: 340, column: 30, scope: !793)
!846 = !DILocation(line: 340, column: 53, scope: !793)
!847 = !DILocation(line: 340, column: 22, scope: !793)
!848 = !DILocation(line: 340, column: 2, scope: !793)
!849 = !DILocation(line: 340, column: 11, scope: !793)
!850 = !DILocation(line: 340, column: 20, scope: !793)
!851 = !DILocation(line: 341, column: 33, scope: !793)
!852 = !DILocation(line: 341, column: 40, scope: !793)
!853 = !DILocation(line: 341, column: 63, scope: !793)
!854 = !DILocation(line: 341, column: 32, scope: !793)
!855 = !DILocation(line: 341, column: 2, scope: !793)
!856 = !DILocation(line: 341, column: 11, scope: !793)
!857 = !DILocation(line: 341, column: 30, scope: !793)
!858 = !DILocation(line: 342, column: 30, scope: !793)
!859 = !DILocation(line: 342, column: 37, scope: !793)
!860 = !DILocation(line: 342, column: 60, scope: !793)
!861 = !DILocation(line: 342, column: 29, scope: !793)
!862 = !DILocation(line: 342, column: 2, scope: !793)
!863 = !DILocation(line: 342, column: 11, scope: !793)
!864 = !DILocation(line: 342, column: 27, scope: !793)
!865 = !DILocation(line: 344, column: 19, scope: !793)
!866 = !DILocation(line: 344, column: 26, scope: !793)
!867 = !DILocation(line: 344, column: 49, scope: !793)
!868 = !DILocation(line: 344, column: 18, scope: !793)
!869 = !DILocation(line: 344, column: 2, scope: !793)
!870 = !DILocation(line: 344, column: 11, scope: !793)
!871 = !DILocation(line: 344, column: 16, scope: !793)
!872 = !DILocation(line: 346, column: 26, scope: !793)
!873 = !DILocation(line: 346, column: 33, scope: !793)
!874 = !DILocation(line: 346, column: 55, scope: !793)
!875 = !DILocation(line: 346, column: 25, scope: !793)
!876 = !DILocation(line: 346, column: 2, scope: !793)
!877 = !DILocation(line: 346, column: 11, scope: !793)
!878 = !DILocation(line: 346, column: 23, scope: !793)
!879 = !DILocation(line: 348, column: 18, scope: !793)
!880 = !DILocation(line: 348, column: 25, scope: !793)
!881 = !DILocation(line: 348, column: 48, scope: !793)
!882 = !DILocation(line: 348, column: 17, scope: !793)
!883 = !DILocation(line: 348, column: 2, scope: !793)
!884 = !DILocation(line: 348, column: 11, scope: !793)
!885 = !DILocation(line: 348, column: 15, scope: !793)
!886 = !DILocation(line: 350, column: 21, scope: !793)
!887 = !DILocation(line: 350, column: 28, scope: !793)
!888 = !DILocation(line: 350, column: 52, scope: !793)
!889 = !DILocation(line: 350, column: 20, scope: !793)
!890 = !DILocation(line: 350, column: 2, scope: !793)
!891 = !DILocation(line: 350, column: 11, scope: !793)
!892 = !DILocation(line: 350, column: 18, scope: !793)
!893 = !DILocation(line: 351, column: 22, scope: !793)
!894 = !DILocation(line: 351, column: 29, scope: !793)
!895 = !DILocation(line: 351, column: 54, scope: !793)
!896 = !DILocation(line: 351, column: 21, scope: !793)
!897 = !DILocation(line: 351, column: 2, scope: !793)
!898 = !DILocation(line: 351, column: 11, scope: !793)
!899 = !DILocation(line: 351, column: 18, scope: !793)
!900 = !DILocation(line: 352, column: 20, scope: !793)
!901 = !DILocation(line: 352, column: 27, scope: !793)
!902 = !DILocation(line: 352, column: 53, scope: !793)
!903 = !DILocation(line: 352, column: 19, scope: !793)
!904 = !DILocation(line: 352, column: 2, scope: !793)
!905 = !DILocation(line: 352, column: 11, scope: !793)
!906 = !DILocation(line: 352, column: 17, scope: !793)
!907 = !DILocation(line: 353, column: 24, scope: !793)
!908 = !DILocation(line: 353, column: 31, scope: !793)
!909 = !DILocation(line: 353, column: 57, scope: !793)
!910 = !DILocation(line: 353, column: 23, scope: !793)
!911 = !DILocation(line: 353, column: 2, scope: !793)
!912 = !DILocation(line: 353, column: 11, scope: !793)
!913 = !DILocation(line: 353, column: 21, scope: !793)
!914 = !DILocation(line: 356, column: 17, scope: !793)
!915 = !DILocation(line: 356, column: 24, scope: !793)
!916 = !DILocation(line: 356, column: 11, scope: !793)
!917 = !DILocation(line: 356, column: 9, scope: !793)
!918 = !DILocation(line: 357, column: 23, scope: !793)
!919 = !DILocation(line: 357, column: 30, scope: !793)
!920 = !DILocation(line: 357, column: 55, scope: !793)
!921 = !DILocation(line: 357, column: 22, scope: !793)
!922 = !DILocation(line: 357, column: 2, scope: !793)
!923 = !DILocation(line: 357, column: 11, scope: !793)
!924 = !DILocation(line: 357, column: 20, scope: !793)
!925 = !DILocation(line: 358, column: 25, scope: !793)
!926 = !DILocation(line: 358, column: 32, scope: !793)
!927 = !DILocation(line: 358, column: 54, scope: !793)
!928 = !DILocation(line: 358, column: 24, scope: !793)
!929 = !DILocation(line: 358, column: 2, scope: !793)
!930 = !DILocation(line: 358, column: 11, scope: !793)
!931 = !DILocation(line: 358, column: 22, scope: !793)
!932 = !DILocation(line: 359, column: 17, scope: !793)
!933 = !DILocation(line: 359, column: 24, scope: !793)
!934 = !DILocation(line: 359, column: 46, scope: !793)
!935 = !DILocation(line: 359, column: 16, scope: !793)
!936 = !DILocation(line: 359, column: 2, scope: !793)
!937 = !DILocation(line: 359, column: 11, scope: !793)
!938 = !DILocation(line: 359, column: 14, scope: !793)
!939 = !DILocation(line: 360, column: 20, scope: !793)
!940 = !DILocation(line: 360, column: 27, scope: !793)
!941 = !DILocation(line: 360, column: 44, scope: !793)
!942 = !DILocation(line: 360, column: 19, scope: !793)
!943 = !DILocation(line: 360, column: 2, scope: !793)
!944 = !DILocation(line: 360, column: 11, scope: !793)
!945 = !DILocation(line: 360, column: 17, scope: !793)
!946 = !DILocation(line: 361, column: 20, scope: !793)
!947 = !DILocation(line: 361, column: 27, scope: !793)
!948 = !DILocation(line: 361, column: 49, scope: !793)
!949 = !DILocation(line: 361, column: 19, scope: !793)
!950 = !DILocation(line: 361, column: 2, scope: !793)
!951 = !DILocation(line: 361, column: 11, scope: !793)
!952 = !DILocation(line: 361, column: 17, scope: !793)
!953 = !DILocation(line: 363, column: 21, scope: !793)
!954 = !DILocation(line: 363, column: 28, scope: !793)
!955 = !DILocation(line: 363, column: 46, scope: !793)
!956 = !DILocation(line: 363, column: 20, scope: !793)
!957 = !DILocation(line: 363, column: 2, scope: !793)
!958 = !DILocation(line: 363, column: 11, scope: !793)
!959 = !DILocation(line: 363, column: 18, scope: !793)
!960 = !DILocation(line: 364, column: 10, scope: !793)
!961 = !DILocation(line: 364, column: 19, scope: !793)
!962 = !DILocation(line: 364, column: 2, scope: !793)
!963 = !DILocation(line: 366, column: 3, scope: !964)
!964 = distinct !DILexicalBlock(scope: !793, file: !3, line: 364, column: 27)
!965 = !DILocation(line: 366, column: 12, scope: !964)
!966 = !DILocation(line: 366, column: 19, scope: !964)
!967 = !DILocation(line: 367, column: 3, scope: !964)
!968 = !DILocation(line: 369, column: 3, scope: !964)
!969 = !DILocation(line: 369, column: 12, scope: !964)
!970 = !DILocation(line: 369, column: 19, scope: !964)
!971 = !DILocation(line: 370, column: 3, scope: !964)
!972 = !DILocation(line: 372, column: 3, scope: !964)
!973 = !DILocation(line: 372, column: 12, scope: !964)
!974 = !DILocation(line: 372, column: 19, scope: !964)
!975 = !DILocation(line: 373, column: 3, scope: !964)
!976 = !DILocation(line: 375, column: 3, scope: !964)
!977 = !DILocation(line: 375, column: 12, scope: !964)
!978 = !DILocation(line: 375, column: 19, scope: !964)
!979 = !DILocation(line: 376, column: 3, scope: !964)
!980 = !DILocation(line: 382, column: 35, scope: !793)
!981 = !DILocation(line: 382, column: 42, scope: !793)
!982 = !DILocation(line: 382, column: 64, scope: !793)
!983 = !DILocation(line: 382, column: 30, scope: !793)
!984 = !DILocation(line: 382, column: 2, scope: !793)
!985 = !DILocation(line: 382, column: 11, scope: !793)
!986 = !DILocation(line: 382, column: 24, scope: !793)
!987 = !DILocation(line: 383, column: 35, scope: !793)
!988 = !DILocation(line: 383, column: 42, scope: !793)
!989 = !DILocation(line: 383, column: 64, scope: !793)
!990 = !DILocation(line: 383, column: 30, scope: !793)
!991 = !DILocation(line: 383, column: 2, scope: !793)
!992 = !DILocation(line: 383, column: 11, scope: !793)
!993 = !DILocation(line: 383, column: 24, scope: !793)
!994 = !DILocation(line: 385, column: 17, scope: !793)
!995 = !DILocation(line: 385, column: 24, scope: !793)
!996 = !DILocation(line: 385, column: 11, scope: !793)
!997 = !DILocation(line: 385, column: 9, scope: !793)
!998 = !DILocation(line: 388, column: 5, scope: !793)
!999 = !DILocation(line: 388, column: 12, scope: !793)
!1000 = !DILocation(line: 388, column: 36, scope: !793)
!1001 = !DILocation(line: 388, column: 43, scope: !793)
!1002 = !DILocation(line: 388, column: 3, scope: !793)
!1003 = !DILocation(line: 387, column: 2, scope: !793)
!1004 = !DILocation(line: 387, column: 11, scope: !793)
!1005 = !DILocation(line: 387, column: 29, scope: !793)
!1006 = !DILocation(line: 390, column: 5, scope: !793)
!1007 = !DILocation(line: 390, column: 12, scope: !793)
!1008 = !DILocation(line: 390, column: 36, scope: !793)
!1009 = !DILocation(line: 390, column: 43, scope: !793)
!1010 = !DILocation(line: 390, column: 3, scope: !793)
!1011 = !DILocation(line: 389, column: 2, scope: !793)
!1012 = !DILocation(line: 389, column: 11, scope: !793)
!1013 = !DILocation(line: 389, column: 29, scope: !793)
!1014 = !DILocation(line: 393, column: 5, scope: !793)
!1015 = !DILocation(line: 393, column: 12, scope: !793)
!1016 = !DILocation(line: 393, column: 35, scope: !793)
!1017 = !DILocation(line: 393, column: 41, scope: !793)
!1018 = !DILocation(line: 393, column: 3, scope: !793)
!1019 = !DILocation(line: 392, column: 2, scope: !793)
!1020 = !DILocation(line: 392, column: 11, scope: !793)
!1021 = !DILocation(line: 392, column: 28, scope: !793)
!1022 = !DILocation(line: 395, column: 5, scope: !793)
!1023 = !DILocation(line: 395, column: 12, scope: !793)
!1024 = !DILocation(line: 395, column: 35, scope: !793)
!1025 = !DILocation(line: 395, column: 41, scope: !793)
!1026 = !DILocation(line: 395, column: 3, scope: !793)
!1027 = !DILocation(line: 394, column: 2, scope: !793)
!1028 = !DILocation(line: 394, column: 11, scope: !793)
!1029 = !DILocation(line: 394, column: 28, scope: !793)
!1030 = !DILocation(line: 397, column: 26, scope: !793)
!1031 = !DILocation(line: 397, column: 33, scope: !793)
!1032 = !DILocation(line: 397, column: 59, scope: !793)
!1033 = !DILocation(line: 397, column: 25, scope: !793)
!1034 = !DILocation(line: 397, column: 2, scope: !793)
!1035 = !DILocation(line: 397, column: 11, scope: !793)
!1036 = !DILocation(line: 397, column: 23, scope: !793)
!1037 = !DILocation(line: 400, column: 2, scope: !793)
!1038 = !DILocation(line: 400, column: 11, scope: !793)
!1039 = !DILocation(line: 400, column: 22, scope: !793)
!1040 = !DILocation(line: 403, column: 17, scope: !793)
!1041 = !DILocation(line: 403, column: 24, scope: !793)
!1042 = !DILocation(line: 403, column: 11, scope: !793)
!1043 = !DILocation(line: 403, column: 9, scope: !793)
!1044 = !DILocation(line: 406, column: 18, scope: !793)
!1045 = !DILocation(line: 406, column: 25, scope: !793)
!1046 = !DILocation(line: 406, column: 45, scope: !793)
!1047 = !DILocation(line: 406, column: 17, scope: !793)
!1048 = !DILocation(line: 406, column: 2, scope: !793)
!1049 = !DILocation(line: 406, column: 11, scope: !793)
!1050 = !DILocation(line: 406, column: 15, scope: !793)
!1051 = !DILocation(line: 407, column: 21, scope: !793)
!1052 = !DILocation(line: 407, column: 28, scope: !793)
!1053 = !DILocation(line: 407, column: 51, scope: !793)
!1054 = !DILocation(line: 407, column: 20, scope: !793)
!1055 = !DILocation(line: 407, column: 2, scope: !793)
!1056 = !DILocation(line: 407, column: 11, scope: !793)
!1057 = !DILocation(line: 407, column: 18, scope: !793)
!1058 = !DILocation(line: 408, column: 21, scope: !793)
!1059 = !DILocation(line: 408, column: 28, scope: !793)
!1060 = !DILocation(line: 408, column: 51, scope: !793)
!1061 = !DILocation(line: 408, column: 20, scope: !793)
!1062 = !DILocation(line: 408, column: 2, scope: !793)
!1063 = !DILocation(line: 408, column: 11, scope: !793)
!1064 = !DILocation(line: 408, column: 18, scope: !793)
!1065 = !DILocation(line: 409, column: 21, scope: !793)
!1066 = !DILocation(line: 409, column: 28, scope: !793)
!1067 = !DILocation(line: 409, column: 51, scope: !793)
!1068 = !DILocation(line: 409, column: 20, scope: !793)
!1069 = !DILocation(line: 409, column: 2, scope: !793)
!1070 = !DILocation(line: 409, column: 11, scope: !793)
!1071 = !DILocation(line: 409, column: 18, scope: !793)
!1072 = !DILocation(line: 410, column: 21, scope: !793)
!1073 = !DILocation(line: 410, column: 28, scope: !793)
!1074 = !DILocation(line: 410, column: 51, scope: !793)
!1075 = !DILocation(line: 410, column: 20, scope: !793)
!1076 = !DILocation(line: 410, column: 2, scope: !793)
!1077 = !DILocation(line: 410, column: 11, scope: !793)
!1078 = !DILocation(line: 410, column: 18, scope: !793)
!1079 = !DILocation(line: 411, column: 21, scope: !793)
!1080 = !DILocation(line: 411, column: 28, scope: !793)
!1081 = !DILocation(line: 411, column: 51, scope: !793)
!1082 = !DILocation(line: 411, column: 20, scope: !793)
!1083 = !DILocation(line: 411, column: 2, scope: !793)
!1084 = !DILocation(line: 411, column: 11, scope: !793)
!1085 = !DILocation(line: 411, column: 18, scope: !793)
!1086 = !DILocation(line: 412, column: 20, scope: !793)
!1087 = !DILocation(line: 412, column: 27, scope: !793)
!1088 = !DILocation(line: 412, column: 49, scope: !793)
!1089 = !DILocation(line: 412, column: 19, scope: !793)
!1090 = !DILocation(line: 412, column: 2, scope: !793)
!1091 = !DILocation(line: 412, column: 11, scope: !793)
!1092 = !DILocation(line: 412, column: 17, scope: !793)
!1093 = !DILocation(line: 413, column: 20, scope: !793)
!1094 = !DILocation(line: 413, column: 27, scope: !793)
!1095 = !DILocation(line: 413, column: 49, scope: !793)
!1096 = !DILocation(line: 413, column: 19, scope: !793)
!1097 = !DILocation(line: 413, column: 2, scope: !793)
!1098 = !DILocation(line: 413, column: 11, scope: !793)
!1099 = !DILocation(line: 413, column: 17, scope: !793)
!1100 = !DILocation(line: 414, column: 21, scope: !793)
!1101 = !DILocation(line: 414, column: 28, scope: !793)
!1102 = !DILocation(line: 414, column: 51, scope: !793)
!1103 = !DILocation(line: 414, column: 20, scope: !793)
!1104 = !DILocation(line: 414, column: 2, scope: !793)
!1105 = !DILocation(line: 414, column: 11, scope: !793)
!1106 = !DILocation(line: 414, column: 18, scope: !793)
!1107 = !DILocation(line: 415, column: 20, scope: !793)
!1108 = !DILocation(line: 415, column: 27, scope: !793)
!1109 = !DILocation(line: 415, column: 49, scope: !793)
!1110 = !DILocation(line: 415, column: 19, scope: !793)
!1111 = !DILocation(line: 415, column: 2, scope: !793)
!1112 = !DILocation(line: 415, column: 11, scope: !793)
!1113 = !DILocation(line: 415, column: 17, scope: !793)
!1114 = !DILocation(line: 416, column: 1, scope: !793)
!1115 = distinct !DISubprogram(name: "dwmac4_rx_watchdog", scope: !3, file: !3, line: 196, type: !287, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1116 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1115, file: !3, line: 196, type: !25)
!1117 = !DILocation(line: 196, column: 46, scope: !1115)
!1118 = !DILocalVariable(name: "riwt", arg: 2, scope: !1115, file: !3, line: 196, type: !9)
!1119 = !DILocation(line: 196, column: 58, scope: !1115)
!1120 = !DILocalVariable(name: "number_chan", arg: 3, scope: !1115, file: !3, line: 196, type: !9)
!1121 = !DILocation(line: 196, column: 68, scope: !1115)
!1122 = !DILocalVariable(name: "chan", scope: !1115, file: !3, line: 198, type: !9)
!1123 = !DILocation(line: 198, column: 6, scope: !1115)
!1124 = !DILocation(line: 200, column: 12, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 200, column: 2)
!1126 = !DILocation(line: 200, column: 7, scope: !1125)
!1127 = !DILocation(line: 200, column: 17, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 200, column: 2)
!1129 = !DILocation(line: 200, column: 24, scope: !1128)
!1130 = !DILocation(line: 200, column: 22, scope: !1128)
!1131 = !DILocation(line: 200, column: 2, scope: !1125)
!1132 = !DILocation(line: 201, column: 10, scope: !1128)
!1133 = !DILocation(line: 201, column: 16, scope: !1128)
!1134 = !DILocation(line: 201, column: 25, scope: !1128)
!1135 = !DILocation(line: 201, column: 23, scope: !1128)
!1136 = !DILocation(line: 201, column: 3, scope: !1128)
!1137 = !DILocation(line: 200, column: 41, scope: !1128)
!1138 = !DILocation(line: 200, column: 2, scope: !1128)
!1139 = distinct !{!1139, !1131, !1140}
!1140 = !DILocation(line: 201, column: 51, scope: !1125)
!1141 = !DILocation(line: 202, column: 1, scope: !1115)
!1142 = distinct !DISubprogram(name: "dwmac4_enable_tso", scope: !3, file: !3, line: 419, type: !295, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1143 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1142, file: !3, line: 419, type: !25)
!1144 = !DILocation(line: 419, column: 45, scope: !1142)
!1145 = !DILocalVariable(name: "en", arg: 2, scope: !1142, file: !3, line: 419, type: !38)
!1146 = !DILocation(line: 419, column: 58, scope: !1142)
!1147 = !DILocalVariable(name: "chan", arg: 3, scope: !1142, file: !3, line: 419, type: !9)
!1148 = !DILocation(line: 419, column: 66, scope: !1142)
!1149 = !DILocalVariable(name: "value", scope: !1142, file: !3, line: 421, type: !9)
!1150 = !DILocation(line: 421, column: 6, scope: !1142)
!1151 = !DILocation(line: 423, column: 6, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 423, column: 6)
!1153 = !DILocation(line: 423, column: 6, scope: !1142)
!1154 = !DILocation(line: 425, column: 17, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 423, column: 10)
!1156 = !DILocation(line: 425, column: 26, scope: !1155)
!1157 = !DILocation(line: 425, column: 24, scope: !1155)
!1158 = !DILocation(line: 425, column: 11, scope: !1155)
!1159 = !DILocation(line: 425, column: 9, scope: !1155)
!1160 = !DILocation(line: 426, column: 10, scope: !1155)
!1161 = !DILocation(line: 426, column: 16, scope: !1155)
!1162 = !DILocation(line: 427, column: 10, scope: !1155)
!1163 = !DILocation(line: 427, column: 19, scope: !1155)
!1164 = !DILocation(line: 427, column: 17, scope: !1155)
!1165 = !DILocation(line: 426, column: 3, scope: !1155)
!1166 = !DILocation(line: 428, column: 2, scope: !1155)
!1167 = !DILocation(line: 430, column: 17, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 428, column: 9)
!1169 = !DILocation(line: 430, column: 26, scope: !1168)
!1170 = !DILocation(line: 430, column: 24, scope: !1168)
!1171 = !DILocation(line: 430, column: 11, scope: !1168)
!1172 = !DILocation(line: 430, column: 9, scope: !1168)
!1173 = !DILocation(line: 431, column: 10, scope: !1168)
!1174 = !DILocation(line: 431, column: 16, scope: !1168)
!1175 = !DILocation(line: 432, column: 10, scope: !1168)
!1176 = !DILocation(line: 432, column: 19, scope: !1168)
!1177 = !DILocation(line: 432, column: 17, scope: !1168)
!1178 = !DILocation(line: 431, column: 3, scope: !1168)
!1179 = !DILocation(line: 434, column: 1, scope: !1142)
!1180 = distinct !DISubprogram(name: "dwmac4_qmode", scope: !3, file: !3, line: 436, type: !299, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1181 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1180, file: !3, line: 436, type: !25)
!1182 = !DILocation(line: 436, column: 40, scope: !1180)
!1183 = !DILocalVariable(name: "channel", arg: 2, scope: !1180, file: !3, line: 436, type: !9)
!1184 = !DILocation(line: 436, column: 52, scope: !1180)
!1185 = !DILocalVariable(name: "qmode", arg: 3, scope: !1180, file: !3, line: 436, type: !86)
!1186 = !DILocation(line: 436, column: 64, scope: !1180)
!1187 = !DILocalVariable(name: "mtl_tx_op", scope: !1180, file: !3, line: 438, type: !9)
!1188 = !DILocation(line: 438, column: 6, scope: !1180)
!1189 = !DILocation(line: 438, column: 24, scope: !1180)
!1190 = !DILocation(line: 438, column: 33, scope: !1180)
!1191 = !DILocation(line: 438, column: 31, scope: !1180)
!1192 = !DILocation(line: 438, column: 18, scope: !1180)
!1193 = !DILocation(line: 440, column: 12, scope: !1180)
!1194 = !DILocation(line: 441, column: 6, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 441, column: 6)
!1196 = !DILocation(line: 441, column: 12, scope: !1195)
!1197 = !DILocation(line: 441, column: 6, scope: !1180)
!1198 = !DILocation(line: 442, column: 13, scope: !1195)
!1199 = !DILocation(line: 442, column: 3, scope: !1195)
!1200 = !DILocation(line: 444, column: 13, scope: !1195)
!1201 = !DILocation(line: 446, column: 9, scope: !1180)
!1202 = !DILocation(line: 446, column: 20, scope: !1180)
!1203 = !DILocation(line: 446, column: 30, scope: !1180)
!1204 = !DILocation(line: 446, column: 27, scope: !1180)
!1205 = !DILocation(line: 446, column: 2, scope: !1180)
!1206 = !DILocation(line: 447, column: 1, scope: !1180)
!1207 = distinct !DISubprogram(name: "dwmac4_set_bfsize", scope: !3, file: !3, line: 449, type: !303, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1208 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1207, file: !3, line: 449, type: !25)
!1209 = !DILocation(line: 449, column: 45, scope: !1207)
!1210 = !DILocalVariable(name: "bfsize", arg: 2, scope: !1207, file: !3, line: 449, type: !13)
!1211 = !DILocation(line: 449, column: 57, scope: !1207)
!1212 = !DILocalVariable(name: "chan", arg: 3, scope: !1207, file: !3, line: 449, type: !9)
!1213 = !DILocation(line: 449, column: 69, scope: !1207)
!1214 = !DILocalVariable(name: "value", scope: !1207, file: !3, line: 451, type: !9)
!1215 = !DILocation(line: 451, column: 6, scope: !1207)
!1216 = !DILocation(line: 451, column: 20, scope: !1207)
!1217 = !DILocation(line: 451, column: 29, scope: !1207)
!1218 = !DILocation(line: 451, column: 27, scope: !1207)
!1219 = !DILocation(line: 451, column: 14, scope: !1207)
!1220 = !DILocation(line: 453, column: 8, scope: !1207)
!1221 = !DILocation(line: 454, column: 12, scope: !1207)
!1222 = !DILocation(line: 454, column: 19, scope: !1207)
!1223 = !DILocation(line: 454, column: 11, scope: !1207)
!1224 = !DILocation(line: 454, column: 38, scope: !1207)
!1225 = !DILocation(line: 454, column: 8, scope: !1207)
!1226 = !DILocation(line: 456, column: 9, scope: !1207)
!1227 = !DILocation(line: 456, column: 16, scope: !1207)
!1228 = !DILocation(line: 456, column: 25, scope: !1207)
!1229 = !DILocation(line: 456, column: 23, scope: !1207)
!1230 = !DILocation(line: 456, column: 2, scope: !1207)
!1231 = !DILocation(line: 457, column: 1, scope: !1207)
!1232 = distinct !DISubprogram(name: "dwmac4_enable_sph", scope: !3, file: !3, line: 459, type: !295, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1233 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1232, file: !3, line: 459, type: !25)
!1234 = !DILocation(line: 459, column: 45, scope: !1232)
!1235 = !DILocalVariable(name: "en", arg: 2, scope: !1232, file: !3, line: 459, type: !38)
!1236 = !DILocation(line: 459, column: 58, scope: !1232)
!1237 = !DILocalVariable(name: "chan", arg: 3, scope: !1232, file: !3, line: 459, type: !9)
!1238 = !DILocation(line: 459, column: 66, scope: !1232)
!1239 = !DILocalVariable(name: "value", scope: !1232, file: !3, line: 461, type: !9)
!1240 = !DILocation(line: 461, column: 6, scope: !1232)
!1241 = !DILocation(line: 461, column: 20, scope: !1232)
!1242 = !DILocation(line: 461, column: 27, scope: !1232)
!1243 = !DILocation(line: 461, column: 14, scope: !1232)
!1244 = !DILocation(line: 463, column: 8, scope: !1232)
!1245 = !DILocation(line: 464, column: 8, scope: !1232)
!1246 = !DILocation(line: 465, column: 9, scope: !1232)
!1247 = !DILocation(line: 465, column: 16, scope: !1232)
!1248 = !DILocation(line: 465, column: 23, scope: !1232)
!1249 = !DILocation(line: 465, column: 2, scope: !1232)
!1250 = !DILocation(line: 467, column: 16, scope: !1232)
!1251 = !DILocation(line: 467, column: 25, scope: !1232)
!1252 = !DILocation(line: 467, column: 23, scope: !1232)
!1253 = !DILocation(line: 467, column: 10, scope: !1232)
!1254 = !DILocation(line: 467, column: 8, scope: !1232)
!1255 = !DILocation(line: 468, column: 6, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 468, column: 6)
!1257 = !DILocation(line: 468, column: 6, scope: !1232)
!1258 = !DILocation(line: 469, column: 9, scope: !1256)
!1259 = !DILocation(line: 469, column: 3, scope: !1256)
!1260 = !DILocation(line: 471, column: 9, scope: !1256)
!1261 = !DILocation(line: 472, column: 9, scope: !1232)
!1262 = !DILocation(line: 472, column: 16, scope: !1232)
!1263 = !DILocation(line: 472, column: 25, scope: !1232)
!1264 = !DILocation(line: 472, column: 23, scope: !1232)
!1265 = !DILocation(line: 472, column: 2, scope: !1232)
!1266 = !DILocation(line: 473, column: 1, scope: !1232)
!1267 = distinct !DISubprogram(name: "dwmac4_enable_tbs", scope: !3, file: !3, line: 475, type: !308, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1268 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1267, file: !3, line: 475, type: !25)
!1269 = !DILocation(line: 475, column: 44, scope: !1267)
!1270 = !DILocalVariable(name: "en", arg: 2, scope: !1267, file: !3, line: 475, type: !38)
!1271 = !DILocation(line: 475, column: 57, scope: !1267)
!1272 = !DILocalVariable(name: "chan", arg: 3, scope: !1267, file: !3, line: 475, type: !9)
!1273 = !DILocation(line: 475, column: 65, scope: !1267)
!1274 = !DILocalVariable(name: "value", scope: !1267, file: !3, line: 477, type: !9)
!1275 = !DILocation(line: 477, column: 6, scope: !1267)
!1276 = !DILocation(line: 477, column: 20, scope: !1267)
!1277 = !DILocation(line: 477, column: 29, scope: !1267)
!1278 = !DILocation(line: 477, column: 27, scope: !1267)
!1279 = !DILocation(line: 477, column: 14, scope: !1267)
!1280 = !DILocation(line: 479, column: 6, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 479, column: 6)
!1282 = !DILocation(line: 479, column: 6, scope: !1267)
!1283 = !DILocation(line: 480, column: 9, scope: !1281)
!1284 = !DILocation(line: 480, column: 3, scope: !1281)
!1285 = !DILocation(line: 482, column: 9, scope: !1281)
!1286 = !DILocation(line: 484, column: 9, scope: !1267)
!1287 = !DILocation(line: 484, column: 16, scope: !1267)
!1288 = !DILocation(line: 484, column: 25, scope: !1267)
!1289 = !DILocation(line: 484, column: 23, scope: !1267)
!1290 = !DILocation(line: 484, column: 2, scope: !1267)
!1291 = !DILocation(line: 486, column: 16, scope: !1267)
!1292 = !DILocation(line: 486, column: 25, scope: !1267)
!1293 = !DILocation(line: 486, column: 23, scope: !1267)
!1294 = !DILocation(line: 486, column: 10, scope: !1267)
!1295 = !DILocation(line: 486, column: 52, scope: !1267)
!1296 = !DILocation(line: 486, column: 8, scope: !1267)
!1297 = !DILocation(line: 487, column: 6, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 487, column: 6)
!1299 = !DILocation(line: 487, column: 9, scope: !1298)
!1300 = !DILocation(line: 487, column: 13, scope: !1298)
!1301 = !DILocation(line: 487, column: 6, scope: !1267)
!1302 = !DILocation(line: 488, column: 3, scope: !1298)
!1303 = !DILocation(line: 490, column: 27, scope: !1267)
!1304 = !DILocation(line: 490, column: 34, scope: !1267)
!1305 = !DILocation(line: 490, column: 2, scope: !1267)
!1306 = !DILocation(line: 491, column: 2, scope: !1267)
!1307 = !DILocation(line: 492, column: 1, scope: !1267)
!1308 = distinct !DISubprogram(name: "readl", scope: !1309, file: !1309, line: 59, type: !1310, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1309 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!8, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1315 = !DILocalVariable(name: "addr", arg: 1, scope: !1308, file: !1309, line: 59, type: !1312)
!1316 = !DILocation(line: 59, column: 1, scope: !1308)
!1317 = !DILocalVariable(name: "ret", scope: !1308, file: !1309, line: 59, type: !8)
!1318 = !{i32 -2146512023}
!1319 = distinct !DISubprogram(name: "writel", scope: !1309, file: !1309, line: 67, type: !1320, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null, !8, !1322}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1323 = !DILocalVariable(name: "val", arg: 1, scope: !1319, file: !1309, line: 67, type: !8)
!1324 = !DILocation(line: 67, column: 1, scope: !1319)
!1325 = !DILocalVariable(name: "addr", arg: 2, scope: !1319, file: !1309, line: 67, type: !1322)
!1326 = !{i32 -2146509630}
!1327 = distinct !DISubprogram(name: "_dwmac4_dump_dma_regs", scope: !3, file: !3, line: 149, type: !1328, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !25, !9, !81}
!1330 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !1327, file: !3, line: 149, type: !25)
!1331 = !DILocation(line: 149, column: 49, scope: !1327)
!1332 = !DILocalVariable(name: "channel", arg: 2, scope: !1327, file: !3, line: 149, type: !9)
!1333 = !DILocation(line: 149, column: 61, scope: !1327)
!1334 = !DILocalVariable(name: "reg_space", arg: 3, scope: !1327, file: !3, line: 150, type: !81)
!1335 = !DILocation(line: 150, column: 12, scope: !1327)
!1336 = !DILocation(line: 153, column: 9, scope: !1327)
!1337 = !DILocation(line: 153, column: 18, scope: !1327)
!1338 = !DILocation(line: 153, column: 16, scope: !1327)
!1339 = !DILocation(line: 153, column: 3, scope: !1327)
!1340 = !DILocation(line: 152, column: 2, scope: !1327)
!1341 = !DILocation(line: 152, column: 12, scope: !1327)
!1342 = !DILocation(line: 152, column: 38, scope: !1327)
!1343 = !DILocation(line: 152, column: 43, scope: !1327)
!1344 = !DILocation(line: 155, column: 9, scope: !1327)
!1345 = !DILocation(line: 155, column: 18, scope: !1327)
!1346 = !DILocation(line: 155, column: 16, scope: !1327)
!1347 = !DILocation(line: 155, column: 3, scope: !1327)
!1348 = !DILocation(line: 154, column: 2, scope: !1327)
!1349 = !DILocation(line: 154, column: 12, scope: !1327)
!1350 = !DILocation(line: 154, column: 41, scope: !1327)
!1351 = !DILocation(line: 154, column: 46, scope: !1327)
!1352 = !DILocation(line: 157, column: 9, scope: !1327)
!1353 = !DILocation(line: 157, column: 18, scope: !1327)
!1354 = !DILocation(line: 157, column: 16, scope: !1327)
!1355 = !DILocation(line: 157, column: 3, scope: !1327)
!1356 = !DILocation(line: 156, column: 2, scope: !1327)
!1357 = !DILocation(line: 156, column: 12, scope: !1327)
!1358 = !DILocation(line: 156, column: 41, scope: !1327)
!1359 = !DILocation(line: 156, column: 46, scope: !1327)
!1360 = !DILocation(line: 159, column: 9, scope: !1327)
!1361 = !DILocation(line: 159, column: 18, scope: !1327)
!1362 = !DILocation(line: 159, column: 16, scope: !1327)
!1363 = !DILocation(line: 159, column: 3, scope: !1327)
!1364 = !DILocation(line: 158, column: 2, scope: !1327)
!1365 = !DILocation(line: 158, column: 12, scope: !1327)
!1366 = !DILocation(line: 158, column: 43, scope: !1327)
!1367 = !DILocation(line: 158, column: 48, scope: !1327)
!1368 = !DILocation(line: 161, column: 9, scope: !1327)
!1369 = !DILocation(line: 161, column: 18, scope: !1327)
!1370 = !DILocation(line: 161, column: 16, scope: !1327)
!1371 = !DILocation(line: 161, column: 3, scope: !1327)
!1372 = !DILocation(line: 160, column: 2, scope: !1327)
!1373 = !DILocation(line: 160, column: 12, scope: !1327)
!1374 = !DILocation(line: 160, column: 43, scope: !1327)
!1375 = !DILocation(line: 160, column: 48, scope: !1327)
!1376 = !DILocation(line: 163, column: 9, scope: !1327)
!1377 = !DILocation(line: 163, column: 18, scope: !1327)
!1378 = !DILocation(line: 163, column: 16, scope: !1327)
!1379 = !DILocation(line: 163, column: 3, scope: !1327)
!1380 = !DILocation(line: 162, column: 2, scope: !1327)
!1381 = !DILocation(line: 162, column: 12, scope: !1327)
!1382 = !DILocation(line: 162, column: 42, scope: !1327)
!1383 = !DILocation(line: 162, column: 47, scope: !1327)
!1384 = !DILocation(line: 165, column: 9, scope: !1327)
!1385 = !DILocation(line: 165, column: 18, scope: !1327)
!1386 = !DILocation(line: 165, column: 16, scope: !1327)
!1387 = !DILocation(line: 165, column: 3, scope: !1327)
!1388 = !DILocation(line: 164, column: 2, scope: !1327)
!1389 = !DILocation(line: 164, column: 12, scope: !1327)
!1390 = !DILocation(line: 164, column: 42, scope: !1327)
!1391 = !DILocation(line: 164, column: 47, scope: !1327)
!1392 = !DILocation(line: 167, column: 9, scope: !1327)
!1393 = !DILocation(line: 167, column: 18, scope: !1327)
!1394 = !DILocation(line: 167, column: 16, scope: !1327)
!1395 = !DILocation(line: 167, column: 3, scope: !1327)
!1396 = !DILocation(line: 166, column: 2, scope: !1327)
!1397 = !DILocation(line: 166, column: 12, scope: !1327)
!1398 = !DILocation(line: 166, column: 42, scope: !1327)
!1399 = !DILocation(line: 166, column: 47, scope: !1327)
!1400 = !DILocation(line: 169, column: 9, scope: !1327)
!1401 = !DILocation(line: 169, column: 18, scope: !1327)
!1402 = !DILocation(line: 169, column: 16, scope: !1327)
!1403 = !DILocation(line: 169, column: 3, scope: !1327)
!1404 = !DILocation(line: 168, column: 2, scope: !1327)
!1405 = !DILocation(line: 168, column: 12, scope: !1327)
!1406 = !DILocation(line: 168, column: 42, scope: !1327)
!1407 = !DILocation(line: 168, column: 47, scope: !1327)
!1408 = !DILocation(line: 171, column: 9, scope: !1327)
!1409 = !DILocation(line: 171, column: 18, scope: !1327)
!1410 = !DILocation(line: 171, column: 16, scope: !1327)
!1411 = !DILocation(line: 171, column: 3, scope: !1327)
!1412 = !DILocation(line: 170, column: 2, scope: !1327)
!1413 = !DILocation(line: 170, column: 12, scope: !1327)
!1414 = !DILocation(line: 170, column: 39, scope: !1327)
!1415 = !DILocation(line: 170, column: 44, scope: !1327)
!1416 = !DILocation(line: 173, column: 9, scope: !1327)
!1417 = !DILocation(line: 173, column: 18, scope: !1327)
!1418 = !DILocation(line: 173, column: 16, scope: !1327)
!1419 = !DILocation(line: 173, column: 3, scope: !1327)
!1420 = !DILocation(line: 172, column: 2, scope: !1327)
!1421 = !DILocation(line: 172, column: 12, scope: !1327)
!1422 = !DILocation(line: 172, column: 42, scope: !1327)
!1423 = !DILocation(line: 172, column: 47, scope: !1327)
!1424 = !DILocation(line: 175, column: 9, scope: !1327)
!1425 = !DILocation(line: 175, column: 18, scope: !1327)
!1426 = !DILocation(line: 175, column: 16, scope: !1327)
!1427 = !DILocation(line: 175, column: 3, scope: !1327)
!1428 = !DILocation(line: 174, column: 2, scope: !1327)
!1429 = !DILocation(line: 174, column: 12, scope: !1327)
!1430 = !DILocation(line: 174, column: 47, scope: !1327)
!1431 = !DILocation(line: 174, column: 52, scope: !1327)
!1432 = !DILocation(line: 177, column: 9, scope: !1327)
!1433 = !DILocation(line: 177, column: 18, scope: !1327)
!1434 = !DILocation(line: 177, column: 16, scope: !1327)
!1435 = !DILocation(line: 177, column: 3, scope: !1327)
!1436 = !DILocation(line: 176, column: 2, scope: !1327)
!1437 = !DILocation(line: 176, column: 12, scope: !1327)
!1438 = !DILocation(line: 176, column: 42, scope: !1327)
!1439 = !DILocation(line: 176, column: 47, scope: !1327)
!1440 = !DILocation(line: 179, column: 9, scope: !1327)
!1441 = !DILocation(line: 179, column: 18, scope: !1327)
!1442 = !DILocation(line: 179, column: 16, scope: !1327)
!1443 = !DILocation(line: 179, column: 3, scope: !1327)
!1444 = !DILocation(line: 178, column: 2, scope: !1327)
!1445 = !DILocation(line: 178, column: 12, scope: !1327)
!1446 = !DILocation(line: 178, column: 42, scope: !1327)
!1447 = !DILocation(line: 178, column: 47, scope: !1327)
!1448 = !DILocation(line: 181, column: 9, scope: !1327)
!1449 = !DILocation(line: 181, column: 18, scope: !1327)
!1450 = !DILocation(line: 181, column: 16, scope: !1327)
!1451 = !DILocation(line: 181, column: 3, scope: !1327)
!1452 = !DILocation(line: 180, column: 2, scope: !1327)
!1453 = !DILocation(line: 180, column: 12, scope: !1327)
!1454 = !DILocation(line: 180, column: 46, scope: !1327)
!1455 = !DILocation(line: 180, column: 51, scope: !1327)
!1456 = !DILocation(line: 183, column: 9, scope: !1327)
!1457 = !DILocation(line: 183, column: 18, scope: !1327)
!1458 = !DILocation(line: 183, column: 16, scope: !1327)
!1459 = !DILocation(line: 183, column: 3, scope: !1327)
!1460 = !DILocation(line: 182, column: 2, scope: !1327)
!1461 = !DILocation(line: 182, column: 12, scope: !1327)
!1462 = !DILocation(line: 182, column: 46, scope: !1327)
!1463 = !DILocation(line: 182, column: 51, scope: !1327)
!1464 = !DILocation(line: 185, column: 9, scope: !1327)
!1465 = !DILocation(line: 185, column: 18, scope: !1327)
!1466 = !DILocation(line: 185, column: 16, scope: !1327)
!1467 = !DILocation(line: 185, column: 3, scope: !1327)
!1468 = !DILocation(line: 184, column: 2, scope: !1327)
!1469 = !DILocation(line: 184, column: 12, scope: !1327)
!1470 = !DILocation(line: 184, column: 37, scope: !1327)
!1471 = !DILocation(line: 184, column: 42, scope: !1327)
!1472 = !DILocation(line: 186, column: 1, scope: !1327)
