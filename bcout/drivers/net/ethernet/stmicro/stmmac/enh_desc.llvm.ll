; ModuleID = '../bcout/drivers/net/ethernet/stmicro/stmmac/enh_desc.llvm.bc'
source_filename = "drivers/net/ethernet/stmicro/stmmac/enh_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.stmmac_desc_ops = type { void (%struct.dma_desc*, i32, i32, i32, i32)*, void (%struct.dma_desc*, i32, i32)*, void (%struct.dma_desc*, i32, i32, i1, i32, i1, i1, i32)*, void (%struct.dma_desc*, i32, i32, i32, i1, i1, i32, i32)*, void (%struct.dma_desc*)*, i32 (%struct.dma_desc*)*, void (%struct.dma_desc*, i32)*, void (%struct.dma_desc*)*, i32 (%struct.dma_desc*)*, i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*, i8*)*, i32 (%struct.dma_desc*)*, void (%struct.dma_desc*, i32)*, i32 (%struct.dma_desc*, i32)*, i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*)*, void (i8*, %struct.stmmac_extra_stats*, %struct.dma_extended_desc*)*, void (%struct.dma_desc*)*, i32 (%struct.dma_desc*)*, void (i8*, i32, i64*)*, i32 (i8*, i8*, i32)*, void (i8*, i32, i1)*, void (%struct.dma_desc*, i32)*, void (%struct.dma_desc*, i32*)*, void (%struct.dma_desc*, i64)*, void (%struct.dma_desc*)*, i32 (%struct.dma_desc*, i32*, i32*)*, void (%struct.dma_desc*, i32*)*, void (%struct.dma_desc*, i64)*, void (%struct.dma_desc*, i32)*, void (%struct.dma_desc*, i16, i16, i32)*, void (%struct.dma_desc*, i32)*, void (%struct.dma_edesc*, i32, i32)* }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [56 x i8] }
%struct.dma_extended_desc = type { %struct.dma_desc, i32, i32, i32, i32 }
%struct.dma_edesc = type { i32, i32, i32, i32, %struct.dma_desc }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@enh_desc_ops = dso_local constant %struct.stmmac_desc_ops { void (%struct.dma_desc*, i32, i32, i32, i32)* @enh_desc_init_rx_desc, void (%struct.dma_desc*, i32, i32)* @enh_desc_init_tx_desc, void (%struct.dma_desc*, i32, i32, i1, i32, i1, i1, i32)* @enh_desc_prepare_tx_desc, void (%struct.dma_desc*, i32, i32, i32, i1, i1, i32, i32)* null, void (%struct.dma_desc*)* @enh_desc_set_tx_owner, i32 (%struct.dma_desc*)* @enh_desc_get_tx_owner, void (%struct.dma_desc*, i32)* @enh_desc_release_tx_desc, void (%struct.dma_desc*)* @enh_desc_set_tx_ic, i32 (%struct.dma_desc*)* @enh_desc_get_tx_ls, i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*, i8*)* @enh_desc_get_tx_status, i32 (%struct.dma_desc*)* @enh_desc_get_tx_len, void (%struct.dma_desc*, i32)* @enh_desc_set_rx_owner, i32 (%struct.dma_desc*, i32)* @enh_desc_get_rx_frame_len, i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*)* @enh_desc_get_rx_status, void (i8*, %struct.stmmac_extra_stats*, %struct.dma_extended_desc*)* @enh_desc_get_ext_status, void (%struct.dma_desc*)* @enh_desc_enable_tx_timestamp, i32 (%struct.dma_desc*)* @enh_desc_get_tx_timestamp_status, void (i8*, i32, i64*)* @enh_desc_get_timestamp, i32 (i8*, i8*, i32)* @enh_desc_get_rx_timestamp_status, void (i8*, i32, i1)* @enh_desc_display_ring, void (%struct.dma_desc*, i32)* null, void (%struct.dma_desc*, i32*)* @enh_desc_get_addr, void (%struct.dma_desc*, i64)* @enh_desc_set_addr, void (%struct.dma_desc*)* @enh_desc_clear, i32 (%struct.dma_desc*, i32*, i32*)* null, void (%struct.dma_desc*, i32*)* null, void (%struct.dma_desc*, i64)* null, void (%struct.dma_desc*, i32)* null, void (%struct.dma_desc*, i16, i16, i32)* null, void (%struct.dma_desc*, i32)* null, void (%struct.dma_edesc*, i32, i32)* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [31 x i8] c"\013\09IPC Csum Error/Giant frame\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\016Extended %s descriptor ring:\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\016%03d [0x%x]: 0x%x 0x%x 0x%x 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\016\0A\00", align 1
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_init_rx_desc(%struct.dma_desc* %p, i32 %disable_rx_ic, i32 %mode, i32 %end, i32 %bfsize) #0 !dbg !323 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %disable_rx_ic.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %bfsize.addr = alloca i32, align 4
  %bfsize1 = alloca i32, align 4
  %__UNIQUE_ID___x324 = alloca i32, align 4
  %__UNIQUE_ID___y325 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !325, metadata !DIExpression()), !dbg !326
  store i32 %disable_rx_ic, i32* %disable_rx_ic.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disable_rx_ic.addr, metadata !327, metadata !DIExpression()), !dbg !328
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !329, metadata !DIExpression()), !dbg !330
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !331, metadata !DIExpression()), !dbg !332
  store i32 %bfsize, i32* %bfsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bfsize.addr, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata i32* %bfsize1, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !337
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !338
  %1 = load i32, i32* %des0, align 4, !dbg !339
  %or = or i32 %1, -2147483648, !dbg !339
  store i32 %or, i32* %des0, align 4, !dbg !339
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x324, metadata !340, metadata !DIExpression()), !dbg !342
  %2 = load i32, i32* %bfsize.addr, align 4, !dbg !342
  store i32 %2, i32* %__UNIQUE_ID___x324, align 4, !dbg !342
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y325, metadata !343, metadata !DIExpression()), !dbg !342
  store i32 8188, i32* %__UNIQUE_ID___y325, align 4, !dbg !342
  %3 = load i32, i32* %__UNIQUE_ID___x324, align 4, !dbg !342
  %4 = load i32, i32* %__UNIQUE_ID___y325, align 4, !dbg !342
  %cmp = icmp slt i32 %3, %4, !dbg !342
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !342

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %__UNIQUE_ID___x324, align 4, !dbg !342
  br label %cond.end, !dbg !342

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %__UNIQUE_ID___y325, align 4, !dbg !342
  br label %cond.end, !dbg !342

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !342
  store i32 %cond, i32* %tmp, align 4, !dbg !342
  %7 = load i32, i32* %tmp, align 4, !dbg !342
  store i32 %7, i32* %bfsize1, align 4, !dbg !344
  %8 = load i32, i32* %bfsize1, align 4, !dbg !345
  %conv = sext i32 %8 to i64, !dbg !345
  %and = and i64 %conv, 8191, !dbg !345
  %conv1 = trunc i64 %and to i32, !dbg !345
  %9 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !346
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %9, i32 0, i32 1, !dbg !347
  %10 = load i32, i32* %des1, align 4, !dbg !348
  %or2 = or i32 %10, %conv1, !dbg !348
  store i32 %or2, i32* %des1, align 4, !dbg !348
  %11 = load i32, i32* %mode.addr, align 4, !dbg !349
  %cmp3 = icmp eq i32 %11, 1, !dbg !351
  br i1 %cmp3, label %if.then, label %if.else, !dbg !352

if.then:                                          ; preds = %cond.end
  %12 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !353
  call void @ehn_desc_rx_set_on_chain(%struct.dma_desc* %12) #5, !dbg !354
  br label %if.end, !dbg !354

if.else:                                          ; preds = %cond.end
  %13 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !355
  %14 = load i32, i32* %end.addr, align 4, !dbg !356
  %15 = load i32, i32* %bfsize.addr, align 4, !dbg !357
  call void @ehn_desc_rx_set_on_ring(%struct.dma_desc* %13, i32 %14, i32 %15) #5, !dbg !358
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i32, i32* %disable_rx_ic.addr, align 4, !dbg !359
  %tobool = icmp ne i32 %16, 0, !dbg !359
  br i1 %tobool, label %if.then5, label %if.end8, !dbg !361

if.then5:                                         ; preds = %if.end
  %17 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !362
  %des16 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %17, i32 0, i32 1, !dbg !363
  %18 = load i32, i32* %des16, align 4, !dbg !364
  %or7 = or i32 %18, -2147483648, !dbg !364
  store i32 %or7, i32* %des16, align 4, !dbg !364
  br label %if.end8, !dbg !362

if.end8:                                          ; preds = %if.then5, %if.end
  ret void, !dbg !365
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_init_tx_desc(%struct.dma_desc* %p, i32 %mode, i32 %end) #0 !dbg !366 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %mode.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !367, metadata !DIExpression()), !dbg !368
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !369, metadata !DIExpression()), !dbg !370
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !373
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !374
  %1 = load i32, i32* %des0, align 4, !dbg !375
  %and = and i32 %1, 2147483647, !dbg !375
  store i32 %and, i32* %des0, align 4, !dbg !375
  %2 = load i32, i32* %mode.addr, align 4, !dbg !376
  %cmp = icmp eq i32 %2, 1, !dbg !378
  br i1 %cmp, label %if.then, label %if.else, !dbg !379

if.then:                                          ; preds = %entry
  %3 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !380
  call void @enh_desc_end_tx_desc_on_chain(%struct.dma_desc* %3) #5, !dbg !381
  br label %if.end, !dbg !381

if.else:                                          ; preds = %entry
  %4 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !382
  %5 = load i32, i32* %end.addr, align 4, !dbg !383
  call void @enh_desc_end_tx_desc_on_ring(%struct.dma_desc* %4, i32 %5) #5, !dbg !384
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !385
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_prepare_tx_desc(%struct.dma_desc* %p, i32 %is_fs, i32 %len, i1 zeroext %csum_flag, i32 %mode, i1 zeroext %tx_own, i1 zeroext %ls, i32 %tot_pkt_len) #0 !dbg !386 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %is_fs.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %csum_flag.addr = alloca i8, align 1
  %mode.addr = alloca i32, align 4
  %tx_own.addr = alloca i8, align 1
  %ls.addr = alloca i8, align 1
  %tot_pkt_len.addr = alloca i32, align 4
  %tdes0 = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !387, metadata !DIExpression()), !dbg !388
  store i32 %is_fs, i32* %is_fs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %is_fs.addr, metadata !389, metadata !DIExpression()), !dbg !390
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %frombool = zext i1 %csum_flag to i8
  store i8 %frombool, i8* %csum_flag.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %csum_flag.addr, metadata !393, metadata !DIExpression()), !dbg !394
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %frombool1 = zext i1 %tx_own to i8
  store i8 %frombool1, i8* %tx_own.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tx_own.addr, metadata !397, metadata !DIExpression()), !dbg !398
  %frombool2 = zext i1 %ls to i8
  store i8 %frombool2, i8* %ls.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ls.addr, metadata !399, metadata !DIExpression()), !dbg !400
  store i32 %tot_pkt_len, i32* %tot_pkt_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tot_pkt_len.addr, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata i32* %tdes0, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !405
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !405
  %1 = load i32, i32* %des0, align 4, !dbg !405
  store i32 %1, i32* %tdes0, align 4, !dbg !404
  %2 = load i32, i32* %mode.addr, align 4, !dbg !406
  %cmp = icmp eq i32 %2, 1, !dbg !408
  br i1 %cmp, label %if.then, label %if.else, !dbg !409

if.then:                                          ; preds = %entry
  %3 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !410
  %4 = load i32, i32* %len.addr, align 4, !dbg !411
  call void @enh_set_tx_desc_len_on_chain(%struct.dma_desc* %3, i32 %4) #5, !dbg !412
  br label %if.end, !dbg !412

if.else:                                          ; preds = %entry
  %5 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !413
  %6 = load i32, i32* %len.addr, align 4, !dbg !414
  call void @enh_set_tx_desc_len_on_ring(%struct.dma_desc* %5, i32 %6) #5, !dbg !415
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %is_fs.addr, align 4, !dbg !416
  %tobool = icmp ne i32 %7, 0, !dbg !416
  br i1 %tobool, label %if.then3, label %if.else5, !dbg !418

if.then3:                                         ; preds = %if.end
  %8 = load i32, i32* %tdes0, align 4, !dbg !419
  %conv = zext i32 %8 to i64, !dbg !419
  %or = or i64 %conv, 268435456, !dbg !419
  %conv4 = trunc i64 %or to i32, !dbg !419
  store i32 %conv4, i32* %tdes0, align 4, !dbg !419
  br label %if.end8, !dbg !420

if.else5:                                         ; preds = %if.end
  %9 = load i32, i32* %tdes0, align 4, !dbg !421
  %conv6 = zext i32 %9 to i64, !dbg !421
  %and = and i64 %conv6, -268435457, !dbg !421
  %conv7 = trunc i64 %and to i32, !dbg !421
  store i32 %conv7, i32* %tdes0, align 4, !dbg !421
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.then3
  %10 = load i8, i8* %csum_flag.addr, align 1, !dbg !422
  %tobool9 = trunc i8 %10 to i1, !dbg !422
  %lnot = xor i1 %tobool9, true, !dbg !422
  %lnot10 = xor i1 %lnot, true, !dbg !422
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !422
  %conv11 = sext i32 %lnot.ext to i64, !dbg !422
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !422
  br i1 %tobool12, label %if.then13, label %if.else15, !dbg !424

if.then13:                                        ; preds = %if.end8
  %11 = load i32, i32* %tdes0, align 4, !dbg !425
  %or14 = or i32 %11, 12582912, !dbg !425
  store i32 %or14, i32* %tdes0, align 4, !dbg !425
  br label %if.end17, !dbg !426

if.else15:                                        ; preds = %if.end8
  %12 = load i32, i32* %tdes0, align 4, !dbg !427
  %and16 = and i32 %12, -12582913, !dbg !427
  store i32 %and16, i32* %tdes0, align 4, !dbg !427
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then13
  %13 = load i8, i8* %ls.addr, align 1, !dbg !428
  %tobool18 = trunc i8 %13 to i1, !dbg !428
  br i1 %tobool18, label %if.then19, label %if.end23, !dbg !430

if.then19:                                        ; preds = %if.end17
  %14 = load i32, i32* %tdes0, align 4, !dbg !431
  %conv20 = zext i32 %14 to i64, !dbg !431
  %or21 = or i64 %conv20, 536870912, !dbg !431
  %conv22 = trunc i64 %or21 to i32, !dbg !431
  store i32 %conv22, i32* %tdes0, align 4, !dbg !431
  br label %if.end23, !dbg !432

if.end23:                                         ; preds = %if.then19, %if.end17
  %15 = load i8, i8* %tx_own.addr, align 1, !dbg !433
  %tobool24 = trunc i8 %15 to i1, !dbg !433
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !435

if.then25:                                        ; preds = %if.end23
  %16 = load i32, i32* %tdes0, align 4, !dbg !436
  %or26 = or i32 %16, -2147483648, !dbg !436
  store i32 %or26, i32* %tdes0, align 4, !dbg !436
  br label %if.end27, !dbg !437

if.end27:                                         ; preds = %if.then25, %if.end23
  %17 = load i32, i32* %is_fs.addr, align 4, !dbg !438
  %tobool28 = icmp ne i32 %17, 0, !dbg !438
  br i1 %tobool28, label %land.lhs.true, label %if.end32, !dbg !440

land.lhs.true:                                    ; preds = %if.end27
  %18 = load i8, i8* %tx_own.addr, align 1, !dbg !441
  %tobool29 = trunc i8 %18 to i1, !dbg !441
  br i1 %tobool29, label %if.then31, label %if.end32, !dbg !442

if.then31:                                        ; preds = %land.lhs.true
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !443, !srcloc !444
  br label %if.end32, !dbg !443

if.end32:                                         ; preds = %if.then31, %land.lhs.true, %if.end27
  %19 = load i32, i32* %tdes0, align 4, !dbg !445
  %20 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !446
  %des033 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %20, i32 0, i32 0, !dbg !447
  store i32 %19, i32* %des033, align 4, !dbg !448
  ret void, !dbg !449
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_set_tx_owner(%struct.dma_desc* %p) #0 !dbg !450 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !451, metadata !DIExpression()), !dbg !452
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !453
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !454
  %1 = load i32, i32* %des0, align 4, !dbg !455
  %or = or i32 %1, -2147483648, !dbg !455
  store i32 %or, i32* %des0, align 4, !dbg !455
  ret void, !dbg !456
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @enh_desc_get_tx_owner(%struct.dma_desc* %p) #0 !dbg !457 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !458, metadata !DIExpression()), !dbg !459
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !460
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !460
  %1 = load i32, i32* %des0, align 4, !dbg !460
  %and = and i32 %1, -2147483648, !dbg !461
  %shr = lshr i32 %and, 31, !dbg !462
  ret i32 %shr, !dbg !463
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_release_tx_desc(%struct.dma_desc* %p, i32 %mode) #0 !dbg !464 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %mode.addr = alloca i32, align 4
  %ter = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !465, metadata !DIExpression()), !dbg !466
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !467, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata i32* %ter, metadata !469, metadata !DIExpression()), !dbg !470
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !471
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !471
  %1 = load i32, i32* %des0, align 4, !dbg !471
  %conv = zext i32 %1 to i64, !dbg !471
  %and = and i64 %conv, 2097152, !dbg !472
  %shr = lshr i64 %and, 21, !dbg !473
  %conv1 = trunc i64 %shr to i32, !dbg !474
  store i32 %conv1, i32* %ter, align 4, !dbg !470
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !475
  %3 = bitcast %struct.dma_desc* %2 to i8*, !dbg !476
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 8, i1 false), !dbg !476
  %4 = load i32, i32* %mode.addr, align 4, !dbg !477
  %cmp = icmp eq i32 %4, 1, !dbg !479
  br i1 %cmp, label %if.then, label %if.else, !dbg !480

if.then:                                          ; preds = %entry
  %5 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !481
  call void @enh_desc_end_tx_desc_on_chain(%struct.dma_desc* %5) #5, !dbg !482
  br label %if.end, !dbg !482

if.else:                                          ; preds = %entry
  %6 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !483
  %7 = load i32, i32* %ter, align 4, !dbg !484
  call void @enh_desc_end_tx_desc_on_ring(%struct.dma_desc* %6, i32 %7) #5, !dbg !485
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_set_tx_ic(%struct.dma_desc* %p) #0 !dbg !487 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !488, metadata !DIExpression()), !dbg !489
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !490
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !491
  %1 = load i32, i32* %des0, align 4, !dbg !492
  %or = or i32 %1, 1073741824, !dbg !492
  store i32 %or, i32* %des0, align 4, !dbg !492
  ret void, !dbg !493
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @enh_desc_get_tx_ls(%struct.dma_desc* %p) #0 !dbg !494 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !495, metadata !DIExpression()), !dbg !496
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !497
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !497
  %1 = load i32, i32* %des0, align 4, !dbg !497
  %conv = zext i32 %1 to i64, !dbg !497
  %and = and i64 %conv, 536870912, !dbg !498
  %shr = lshr i64 %and, 29, !dbg !499
  %conv1 = trunc i64 %shr to i32, !dbg !500
  ret i32 %conv1, !dbg !501
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @enh_desc_get_tx_status(i8* %data, %struct.stmmac_extra_stats* %x, %struct.dma_desc* %p, i8* %ioaddr) #0 !dbg !502 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %x.addr = alloca %struct.stmmac_extra_stats*, align 8
  %p.addr = alloca %struct.dma_desc*, align 8
  %ioaddr.addr = alloca i8*, align 8
  %stats = alloca %struct.net_device_stats*, align 8
  %tdes0 = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !503, metadata !DIExpression()), !dbg !504
  store %struct.stmmac_extra_stats* %x, %struct.stmmac_extra_stats** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_extra_stats** %x.addr, metadata !505, metadata !DIExpression()), !dbg !506
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !507, metadata !DIExpression()), !dbg !508
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !509, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.declare(metadata %struct.net_device_stats** %stats, metadata !511, metadata !DIExpression()), !dbg !512
  %0 = load i8*, i8** %data.addr, align 8, !dbg !513
  %1 = bitcast i8* %0 to %struct.net_device_stats*, !dbg !514
  store %struct.net_device_stats* %1, %struct.net_device_stats** %stats, align 8, !dbg !512
  call void @llvm.dbg.declare(metadata i32* %tdes0, metadata !515, metadata !DIExpression()), !dbg !516
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !517
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 0, !dbg !517
  %3 = load i32, i32* %des0, align 4, !dbg !517
  store i32 %3, i32* %tdes0, align 4, !dbg !516
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !518, metadata !DIExpression()), !dbg !519
  store i32 0, i32* %ret, align 4, !dbg !519
  %4 = load i32, i32* %tdes0, align 4, !dbg !520
  %and = and i32 %4, -2147483648, !dbg !520
  %tobool = icmp ne i32 %and, 0, !dbg !520
  %lnot = xor i1 %tobool, true, !dbg !520
  %lnot1 = xor i1 %lnot, true, !dbg !520
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !520
  %conv = sext i32 %lnot.ext to i64, !dbg !520
  %tobool2 = icmp ne i64 %conv, 0, !dbg !520
  br i1 %tobool2, label %if.then, label %if.end, !dbg !522

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !523
  br label %return, !dbg !523

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %tdes0, align 4, !dbg !524
  %conv3 = zext i32 %5 to i64, !dbg !524
  %and4 = and i64 %conv3, 536870912, !dbg !524
  %tobool5 = icmp ne i64 %and4, 0, !dbg !524
  %lnot6 = xor i1 %tobool5, true, !dbg !524
  %lnot8 = xor i1 %lnot6, true, !dbg !524
  %lnot10 = xor i1 %lnot8, true, !dbg !524
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !524
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !524
  %tobool13 = icmp ne i64 %conv12, 0, !dbg !524
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !526

if.then14:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !527
  br label %return, !dbg !527

if.end15:                                         ; preds = %if.end
  %6 = load i32, i32* %tdes0, align 4, !dbg !528
  %conv16 = zext i32 %6 to i64, !dbg !528
  %and17 = and i64 %conv16, 32768, !dbg !528
  %tobool18 = icmp ne i64 %and17, 0, !dbg !528
  %lnot19 = xor i1 %tobool18, true, !dbg !528
  %lnot21 = xor i1 %lnot19, true, !dbg !528
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !528
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !528
  %tobool24 = icmp ne i64 %conv23, 0, !dbg !528
  br i1 %tobool24, label %if.then25, label %if.end140, !dbg !530

if.then25:                                        ; preds = %if.end15
  %7 = load i32, i32* %tdes0, align 4, !dbg !531
  %conv26 = zext i32 %7 to i64, !dbg !531
  %and27 = and i64 %conv26, 16384, !dbg !531
  %tobool28 = icmp ne i64 %and27, 0, !dbg !531
  %lnot29 = xor i1 %tobool28, true, !dbg !531
  %lnot31 = xor i1 %lnot29, true, !dbg !531
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !531
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !531
  %tobool34 = icmp ne i64 %conv33, 0, !dbg !531
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !534

if.then35:                                        ; preds = %if.then25
  %8 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !535
  %tx_jabber = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %8, i32 0, i32 6, !dbg !536
  %9 = load i64, i64* %tx_jabber, align 16, !dbg !537
  %inc = add i64 %9, 1, !dbg !537
  store i64 %inc, i64* %tx_jabber, align 16, !dbg !537
  br label %if.end36, !dbg !535

if.end36:                                         ; preds = %if.then35, %if.then25
  %10 = load i32, i32* %tdes0, align 4, !dbg !538
  %conv37 = zext i32 %10 to i64, !dbg !538
  %and38 = and i64 %conv37, 8192, !dbg !538
  %tobool39 = icmp ne i64 %and38, 0, !dbg !538
  %lnot40 = xor i1 %tobool39, true, !dbg !538
  %lnot42 = xor i1 %lnot40, true, !dbg !538
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !538
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !538
  %tobool45 = icmp ne i64 %conv44, 0, !dbg !538
  br i1 %tobool45, label %if.then46, label %if.end48, !dbg !540

if.then46:                                        ; preds = %if.end36
  %11 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !541
  %tx_frame_flushed = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %11, i32 0, i32 7, !dbg !543
  %12 = load i64, i64* %tx_frame_flushed, align 8, !dbg !544
  %inc47 = add i64 %12, 1, !dbg !544
  store i64 %inc47, i64* %tx_frame_flushed, align 8, !dbg !544
  %13 = load i8*, i8** %ioaddr.addr, align 8, !dbg !545
  call void @dwmac_dma_flush_tx_fifo(i8* %13) #5, !dbg !546
  br label %if.end48, !dbg !547

if.end48:                                         ; preds = %if.then46, %if.end36
  %14 = load i32, i32* %tdes0, align 4, !dbg !548
  %conv49 = zext i32 %14 to i64, !dbg !548
  %and50 = and i64 %conv49, 2048, !dbg !548
  %tobool51 = icmp ne i64 %and50, 0, !dbg !548
  %lnot52 = xor i1 %tobool51, true, !dbg !548
  %lnot54 = xor i1 %lnot52, true, !dbg !548
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !548
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !548
  %tobool57 = icmp ne i64 %conv56, 0, !dbg !548
  br i1 %tobool57, label %if.then58, label %if.end61, !dbg !550

if.then58:                                        ; preds = %if.end48
  %15 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !551
  %tx_losscarrier = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %15, i32 0, i32 2, !dbg !553
  %16 = load i64, i64* %tx_losscarrier, align 16, !dbg !554
  %inc59 = add i64 %16, 1, !dbg !554
  store i64 %inc59, i64* %tx_losscarrier, align 16, !dbg !554
  %17 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !555
  %tx_carrier_errors = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %17, i32 0, i32 17, !dbg !556
  %18 = load i64, i64* %tx_carrier_errors, align 8, !dbg !557
  %inc60 = add i64 %18, 1, !dbg !557
  store i64 %inc60, i64* %tx_carrier_errors, align 8, !dbg !557
  br label %if.end61, !dbg !558

if.end61:                                         ; preds = %if.then58, %if.end48
  %19 = load i32, i32* %tdes0, align 4, !dbg !559
  %conv62 = zext i32 %19 to i64, !dbg !559
  %and63 = and i64 %conv62, 1024, !dbg !559
  %tobool64 = icmp ne i64 %and63, 0, !dbg !559
  %lnot65 = xor i1 %tobool64, true, !dbg !559
  %lnot67 = xor i1 %lnot65, true, !dbg !559
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !559
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !559
  %tobool70 = icmp ne i64 %conv69, 0, !dbg !559
  br i1 %tobool70, label %if.then71, label %if.end75, !dbg !561

if.then71:                                        ; preds = %if.end61
  %20 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !562
  %tx_carrier = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %20, i32 0, i32 1, !dbg !564
  %21 = load i64, i64* %tx_carrier, align 8, !dbg !565
  %inc72 = add i64 %21, 1, !dbg !565
  store i64 %inc72, i64* %tx_carrier, align 8, !dbg !565
  %22 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !566
  %tx_carrier_errors73 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %22, i32 0, i32 17, !dbg !567
  %23 = load i64, i64* %tx_carrier_errors73, align 8, !dbg !568
  %inc74 = add i64 %23, 1, !dbg !568
  store i64 %inc74, i64* %tx_carrier_errors73, align 8, !dbg !568
  br label %if.end75, !dbg !569

if.end75:                                         ; preds = %if.then71, %if.end61
  %24 = load i32, i32* %tdes0, align 4, !dbg !570
  %conv76 = zext i32 %24 to i64, !dbg !570
  %and77 = and i64 %conv76, 512, !dbg !570
  %tobool78 = icmp ne i64 %and77, 0, !dbg !570
  br i1 %tobool78, label %lor.end, label %lor.rhs, !dbg !570

lor.rhs:                                          ; preds = %if.end75
  %25 = load i32, i32* %tdes0, align 4, !dbg !570
  %conv79 = zext i32 %25 to i64, !dbg !570
  %and80 = and i64 %conv79, 256, !dbg !570
  %tobool81 = icmp ne i64 %and80, 0, !dbg !570
  br label %lor.end, !dbg !570

lor.end:                                          ; preds = %lor.rhs, %if.end75
  %26 = phi i1 [ true, %if.end75 ], [ %tobool81, %lor.rhs ]
  %lnot82 = xor i1 %26, true, !dbg !570
  %lnot84 = xor i1 %lnot82, true, !dbg !570
  %lnot.ext85 = zext i1 %lnot84 to i32, !dbg !570
  %conv86 = sext i32 %lnot.ext85 to i64, !dbg !570
  %tobool87 = icmp ne i64 %conv86, 0, !dbg !570
  br i1 %tobool87, label %if.then88, label %if.end91, !dbg !572

if.then88:                                        ; preds = %lor.end
  %27 = load i32, i32* %tdes0, align 4, !dbg !573
  %conv89 = zext i32 %27 to i64, !dbg !573
  %and90 = and i64 %conv89, 120, !dbg !574
  %shr = lshr i64 %and90, 3, !dbg !575
  %28 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !576
  %collisions = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %28, i32 0, i32 9, !dbg !577
  %29 = load i64, i64* %collisions, align 8, !dbg !578
  %add = add i64 %29, %shr, !dbg !578
  store i64 %add, i64* %collisions, align 8, !dbg !578
  br label %if.end91, !dbg !576

if.end91:                                         ; preds = %if.then88, %lor.end
  %30 = load i32, i32* %tdes0, align 4, !dbg !579
  %conv92 = zext i32 %30 to i64, !dbg !579
  %and93 = and i64 %conv92, 4, !dbg !579
  %tobool94 = icmp ne i64 %and93, 0, !dbg !579
  %lnot95 = xor i1 %tobool94, true, !dbg !579
  %lnot97 = xor i1 %lnot95, true, !dbg !579
  %lnot.ext98 = zext i1 %lnot97 to i32, !dbg !579
  %conv99 = sext i32 %lnot.ext98 to i64, !dbg !579
  %tobool100 = icmp ne i64 %conv99, 0, !dbg !579
  br i1 %tobool100, label %if.then101, label %if.end103, !dbg !581

if.then101:                                       ; preds = %if.end91
  %31 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !582
  %tx_deferred = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %31, i32 0, i32 4, !dbg !583
  %32 = load i64, i64* %tx_deferred, align 32, !dbg !584
  %inc102 = add i64 %32, 1, !dbg !584
  store i64 %inc102, i64* %tx_deferred, align 32, !dbg !584
  br label %if.end103, !dbg !582

if.end103:                                        ; preds = %if.then101, %if.end91
  %33 = load i32, i32* %tdes0, align 4, !dbg !585
  %conv104 = zext i32 %33 to i64, !dbg !585
  %and105 = and i64 %conv104, 2, !dbg !585
  %tobool106 = icmp ne i64 %and105, 0, !dbg !585
  %lnot107 = xor i1 %tobool106, true, !dbg !585
  %lnot109 = xor i1 %lnot107, true, !dbg !585
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !585
  %conv111 = sext i32 %lnot.ext110 to i64, !dbg !585
  %tobool112 = icmp ne i64 %conv111, 0, !dbg !585
  br i1 %tobool112, label %if.then113, label %if.end115, !dbg !587

if.then113:                                       ; preds = %if.end103
  %34 = load i8*, i8** %ioaddr.addr, align 8, !dbg !588
  call void @dwmac_dma_flush_tx_fifo(i8* %34) #5, !dbg !590
  %35 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !591
  %tx_underflow = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %35, i32 0, i32 0, !dbg !592
  %36 = load i64, i64* %tx_underflow, align 64, !dbg !593
  %inc114 = add i64 %36, 1, !dbg !593
  store i64 %inc114, i64* %tx_underflow, align 64, !dbg !593
  br label %if.end115, !dbg !594

if.end115:                                        ; preds = %if.then113, %if.end103
  %37 = load i32, i32* %tdes0, align 4, !dbg !595
  %conv116 = zext i32 %37 to i64, !dbg !595
  %and117 = and i64 %conv116, 65536, !dbg !595
  %tobool118 = icmp ne i64 %and117, 0, !dbg !595
  %lnot119 = xor i1 %tobool118, true, !dbg !595
  %lnot121 = xor i1 %lnot119, true, !dbg !595
  %lnot.ext122 = zext i1 %lnot121 to i32, !dbg !595
  %conv123 = sext i32 %lnot.ext122 to i64, !dbg !595
  %tobool124 = icmp ne i64 %conv123, 0, !dbg !595
  br i1 %tobool124, label %if.then125, label %if.end127, !dbg !597

if.then125:                                       ; preds = %if.end115
  %38 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !598
  %tx_ip_header_error = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %38, i32 0, i32 9, !dbg !599
  %39 = load i64, i64* %tx_ip_header_error, align 8, !dbg !600
  %inc126 = add i64 %39, 1, !dbg !600
  store i64 %inc126, i64* %tx_ip_header_error, align 8, !dbg !600
  br label %if.end127, !dbg !598

if.end127:                                        ; preds = %if.then125, %if.end115
  %40 = load i32, i32* %tdes0, align 4, !dbg !601
  %conv128 = zext i32 %40 to i64, !dbg !601
  %and129 = and i64 %conv128, 4096, !dbg !601
  %tobool130 = icmp ne i64 %and129, 0, !dbg !601
  %lnot131 = xor i1 %tobool130, true, !dbg !601
  %lnot133 = xor i1 %lnot131, true, !dbg !601
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !601
  %conv135 = sext i32 %lnot.ext134 to i64, !dbg !601
  %tobool136 = icmp ne i64 %conv135, 0, !dbg !601
  br i1 %tobool136, label %if.then137, label %if.end139, !dbg !603

if.then137:                                       ; preds = %if.end127
  %41 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !604
  %tx_payload_error = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %41, i32 0, i32 8, !dbg !606
  %42 = load i64, i64* %tx_payload_error, align 64, !dbg !607
  %inc138 = add i64 %42, 1, !dbg !607
  store i64 %inc138, i64* %tx_payload_error, align 64, !dbg !607
  %43 = load i8*, i8** %ioaddr.addr, align 8, !dbg !608
  call void @dwmac_dma_flush_tx_fifo(i8* %43) #5, !dbg !609
  br label %if.end139, !dbg !610

if.end139:                                        ; preds = %if.then137, %if.end127
  store i32 2, i32* %ret, align 4, !dbg !611
  br label %if.end140, !dbg !612

if.end140:                                        ; preds = %if.end139, %if.end15
  %44 = load i32, i32* %tdes0, align 4, !dbg !613
  %conv141 = zext i32 %44 to i64, !dbg !613
  %and142 = and i64 %conv141, 1, !dbg !613
  %tobool143 = icmp ne i64 %and142, 0, !dbg !613
  %lnot144 = xor i1 %tobool143, true, !dbg !613
  %lnot146 = xor i1 %lnot144, true, !dbg !613
  %lnot.ext147 = zext i1 %lnot146 to i32, !dbg !613
  %conv148 = sext i32 %lnot.ext147 to i64, !dbg !613
  %tobool149 = icmp ne i64 %conv148, 0, !dbg !613
  br i1 %tobool149, label %if.then150, label %if.end153, !dbg !615

if.then150:                                       ; preds = %if.end140
  %45 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !616
  %tx_deferred151 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %45, i32 0, i32 4, !dbg !617
  %46 = load i64, i64* %tx_deferred151, align 32, !dbg !618
  %inc152 = add i64 %46, 1, !dbg !618
  store i64 %inc152, i64* %tx_deferred151, align 32, !dbg !618
  br label %if.end153, !dbg !616

if.end153:                                        ; preds = %if.then150, %if.end140
  %47 = load i32, i32* %tdes0, align 4, !dbg !619
  %conv154 = zext i32 %47 to i64, !dbg !619
  %and155 = and i64 %conv154, 128, !dbg !621
  %tobool156 = icmp ne i64 %and155, 0, !dbg !621
  br i1 %tobool156, label %if.then157, label %if.end159, !dbg !622

if.then157:                                       ; preds = %if.end153
  %48 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !623
  %tx_vlan = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %48, i32 0, i32 5, !dbg !624
  %49 = load i64, i64* %tx_vlan, align 8, !dbg !625
  %inc158 = add i64 %49, 1, !dbg !625
  store i64 %inc158, i64* %tx_vlan, align 8, !dbg !625
  br label %if.end159, !dbg !623

if.end159:                                        ; preds = %if.then157, %if.end153
  %50 = load i32, i32* %ret, align 4, !dbg !626
  store i32 %50, i32* %retval, align 4, !dbg !627
  br label %return, !dbg !627

return:                                           ; preds = %if.end159, %if.then14, %if.then
  %51 = load i32, i32* %retval, align 4, !dbg !628
  ret i32 %51, !dbg !628
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @enh_desc_get_tx_len(%struct.dma_desc* %p) #0 !dbg !629 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !630, metadata !DIExpression()), !dbg !631
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !632
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 1, !dbg !632
  %1 = load i32, i32* %des1, align 4, !dbg !632
  %conv = zext i32 %1 to i64, !dbg !632
  %and = and i64 %conv, 8191, !dbg !633
  %conv1 = trunc i64 %and to i32, !dbg !634
  ret i32 %conv1, !dbg !635
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_set_rx_owner(%struct.dma_desc* %p, i32 %disable_rx_ic) #0 !dbg !636 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %disable_rx_ic.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !637, metadata !DIExpression()), !dbg !638
  store i32 %disable_rx_ic, i32* %disable_rx_ic.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disable_rx_ic.addr, metadata !639, metadata !DIExpression()), !dbg !640
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !641
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !642
  %1 = load i32, i32* %des0, align 4, !dbg !643
  %or = or i32 %1, -2147483648, !dbg !643
  store i32 %or, i32* %des0, align 4, !dbg !643
  ret void, !dbg !644
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @enh_desc_get_rx_frame_len(%struct.dma_desc* %p, i32 %rx_coe_type) #0 !dbg !645 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %rx_coe_type.addr = alloca i32, align 4
  %csum = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !646, metadata !DIExpression()), !dbg !647
  store i32 %rx_coe_type, i32* %rx_coe_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rx_coe_type.addr, metadata !648, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.declare(metadata i32* %csum, metadata !650, metadata !DIExpression()), !dbg !651
  store i32 0, i32* %csum, align 4, !dbg !651
  %0 = load i32, i32* %rx_coe_type.addr, align 4, !dbg !652
  %cmp = icmp eq i32 %0, 1, !dbg !654
  br i1 %cmp, label %if.then, label %if.end, !dbg !655

if.then:                                          ; preds = %entry
  store i32 2, i32* %csum, align 4, !dbg !656
  br label %if.end, !dbg !657

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !658
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 0, !dbg !658
  %2 = load i32, i32* %des0, align 4, !dbg !658
  %conv = zext i32 %2 to i64, !dbg !658
  %and = and i64 %conv, 1073676288, !dbg !659
  %shr = lshr i64 %and, 16, !dbg !660
  %3 = load i32, i32* %csum, align 4, !dbg !661
  %conv1 = zext i32 %3 to i64, !dbg !661
  %sub = sub i64 %shr, %conv1, !dbg !662
  %conv2 = trunc i64 %sub to i32, !dbg !663
  ret i32 %conv2, !dbg !664
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @enh_desc_get_rx_status(i8* %data, %struct.stmmac_extra_stats* %x, %struct.dma_desc* %p) #0 !dbg !665 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %x.addr = alloca %struct.stmmac_extra_stats*, align 8
  %p.addr = alloca %struct.dma_desc*, align 8
  %stats = alloca %struct.net_device_stats*, align 8
  %rdes0 = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !666, metadata !DIExpression()), !dbg !667
  store %struct.stmmac_extra_stats* %x, %struct.stmmac_extra_stats** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_extra_stats** %x.addr, metadata !668, metadata !DIExpression()), !dbg !669
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !670, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.declare(metadata %struct.net_device_stats** %stats, metadata !672, metadata !DIExpression()), !dbg !673
  %0 = load i8*, i8** %data.addr, align 8, !dbg !674
  %1 = bitcast i8* %0 to %struct.net_device_stats*, !dbg !675
  store %struct.net_device_stats* %1, %struct.net_device_stats** %stats, align 8, !dbg !673
  call void @llvm.dbg.declare(metadata i32* %rdes0, metadata !676, metadata !DIExpression()), !dbg !677
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !678
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 0, !dbg !678
  %3 = load i32, i32* %des0, align 4, !dbg !678
  store i32 %3, i32* %rdes0, align 4, !dbg !677
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !679, metadata !DIExpression()), !dbg !680
  store i32 0, i32* %ret, align 4, !dbg !680
  %4 = load i32, i32* %rdes0, align 4, !dbg !681
  %conv = zext i32 %4 to i64, !dbg !681
  %and = and i64 %conv, 2147483648, !dbg !681
  %tobool = icmp ne i64 %and, 0, !dbg !681
  %lnot = xor i1 %tobool, true, !dbg !681
  %lnot1 = xor i1 %lnot, true, !dbg !681
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !681
  %conv2 = sext i32 %lnot.ext to i64, !dbg !681
  %tobool3 = icmp ne i64 %conv2, 0, !dbg !681
  br i1 %tobool3, label %if.then, label %if.end, !dbg !683

if.then:                                          ; preds = %entry
  store i32 8, i32* %retval, align 4, !dbg !684
  br label %return, !dbg !684

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %rdes0, align 4, !dbg !685
  %conv4 = zext i32 %5 to i64, !dbg !685
  %and5 = and i64 %conv4, 256, !dbg !685
  %tobool6 = icmp ne i64 %and5, 0, !dbg !685
  %lnot7 = xor i1 %tobool6, true, !dbg !685
  %lnot9 = xor i1 %lnot7, true, !dbg !685
  %lnot11 = xor i1 %lnot9, true, !dbg !685
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !685
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !685
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !685
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !687

if.then15:                                        ; preds = %if.end
  %6 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !688
  %rx_length_errors = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %6, i32 0, i32 10, !dbg !690
  %7 = load i64, i64* %rx_length_errors, align 8, !dbg !691
  %inc = add i64 %7, 1, !dbg !691
  store i64 %inc, i64* %rx_length_errors, align 8, !dbg !691
  store i32 1, i32* %retval, align 4, !dbg !692
  br label %return, !dbg !692

if.end16:                                         ; preds = %if.end
  %8 = load i32, i32* %rdes0, align 4, !dbg !693
  %conv17 = zext i32 %8 to i64, !dbg !693
  %and18 = and i64 %conv17, 32768, !dbg !693
  %tobool19 = icmp ne i64 %and18, 0, !dbg !693
  %lnot20 = xor i1 %tobool19, true, !dbg !693
  %lnot22 = xor i1 %lnot20, true, !dbg !693
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !693
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !693
  %tobool25 = icmp ne i64 %conv24, 0, !dbg !693
  br i1 %tobool25, label %if.then26, label %if.end114, !dbg !695

if.then26:                                        ; preds = %if.end16
  %9 = load i32, i32* %rdes0, align 4, !dbg !696
  %conv27 = zext i32 %9 to i64, !dbg !696
  %and28 = and i64 %conv27, 16384, !dbg !696
  %tobool29 = icmp ne i64 %and28, 0, !dbg !696
  %lnot30 = xor i1 %tobool29, true, !dbg !696
  %lnot32 = xor i1 %lnot30, true, !dbg !696
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !696
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !696
  %tobool35 = icmp ne i64 %conv34, 0, !dbg !696
  br i1 %tobool35, label %if.then36, label %if.end40, !dbg !699

if.then36:                                        ; preds = %if.then26
  %10 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !700
  %rx_desc = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %10, i32 0, i32 10, !dbg !702
  %11 = load i64, i64* %rx_desc, align 16, !dbg !703
  %inc37 = add i64 %11, 1, !dbg !703
  store i64 %inc37, i64* %rx_desc, align 16, !dbg !703
  %12 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !704
  %rx_length_errors38 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %12, i32 0, i32 10, !dbg !705
  %13 = load i64, i64* %rx_length_errors38, align 8, !dbg !706
  %inc39 = add i64 %13, 1, !dbg !706
  store i64 %inc39, i64* %rx_length_errors38, align 8, !dbg !706
  br label %if.end40, !dbg !707

if.end40:                                         ; preds = %if.then36, %if.then26
  %14 = load i32, i32* %rdes0, align 4, !dbg !708
  %conv41 = zext i32 %14 to i64, !dbg !708
  %and42 = and i64 %conv41, 2048, !dbg !708
  %tobool43 = icmp ne i64 %and42, 0, !dbg !708
  %lnot44 = xor i1 %tobool43, true, !dbg !708
  %lnot46 = xor i1 %lnot44, true, !dbg !708
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !708
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !708
  %tobool49 = icmp ne i64 %conv48, 0, !dbg !708
  br i1 %tobool49, label %if.then50, label %if.end52, !dbg !710

if.then50:                                        ; preds = %if.end40
  %15 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !711
  %rx_gmac_overflow = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %15, i32 0, i32 20, !dbg !712
  %16 = load i64, i64* %rx_gmac_overflow, align 32, !dbg !713
  %inc51 = add i64 %16, 1, !dbg !713
  store i64 %inc51, i64* %rx_gmac_overflow, align 32, !dbg !713
  br label %if.end52, !dbg !711

if.end52:                                         ; preds = %if.then50, %if.end40
  %17 = load i32, i32* %rdes0, align 4, !dbg !714
  %conv53 = zext i32 %17 to i64, !dbg !714
  %and54 = and i64 %conv53, 128, !dbg !714
  %tobool55 = icmp ne i64 %and54, 0, !dbg !714
  %lnot56 = xor i1 %tobool55, true, !dbg !714
  %lnot58 = xor i1 %lnot56, true, !dbg !714
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !714
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !714
  %tobool61 = icmp ne i64 %conv60, 0, !dbg !714
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !716

if.then62:                                        ; preds = %if.end52
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0)) #7, !dbg !717
  br label %if.end63, !dbg !717

if.end63:                                         ; preds = %if.then62, %if.end52
  %18 = load i32, i32* %rdes0, align 4, !dbg !718
  %conv64 = zext i32 %18 to i64, !dbg !718
  %and65 = and i64 %conv64, 64, !dbg !718
  %tobool66 = icmp ne i64 %and65, 0, !dbg !718
  %lnot67 = xor i1 %tobool66, true, !dbg !718
  %lnot69 = xor i1 %lnot67, true, !dbg !718
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !718
  %conv71 = sext i32 %lnot.ext70 to i64, !dbg !718
  %tobool72 = icmp ne i64 %conv71, 0, !dbg !718
  br i1 %tobool72, label %if.then73, label %if.end75, !dbg !720

if.then73:                                        ; preds = %if.end63
  %19 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !721
  %collisions = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %19, i32 0, i32 9, !dbg !722
  %20 = load i64, i64* %collisions, align 8, !dbg !723
  %inc74 = add i64 %20, 1, !dbg !723
  store i64 %inc74, i64* %collisions, align 8, !dbg !723
  br label %if.end75, !dbg !721

if.end75:                                         ; preds = %if.then73, %if.end63
  %21 = load i32, i32* %rdes0, align 4, !dbg !724
  %conv76 = zext i32 %21 to i64, !dbg !724
  %and77 = and i64 %conv76, 16, !dbg !724
  %tobool78 = icmp ne i64 %and77, 0, !dbg !724
  %lnot79 = xor i1 %tobool78, true, !dbg !724
  %lnot81 = xor i1 %lnot79, true, !dbg !724
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !724
  %conv83 = sext i32 %lnot.ext82 to i64, !dbg !724
  %tobool84 = icmp ne i64 %conv83, 0, !dbg !724
  br i1 %tobool84, label %if.then85, label %if.end87, !dbg !726

if.then85:                                        ; preds = %if.end75
  %22 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !727
  %rx_watchdog = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %22, i32 0, i32 21, !dbg !728
  %23 = load i64, i64* %rx_watchdog, align 8, !dbg !729
  %inc86 = add i64 %23, 1, !dbg !729
  store i64 %inc86, i64* %rx_watchdog, align 8, !dbg !729
  br label %if.end87, !dbg !727

if.end87:                                         ; preds = %if.then85, %if.end75
  %24 = load i32, i32* %rdes0, align 4, !dbg !730
  %conv88 = zext i32 %24 to i64, !dbg !730
  %and89 = and i64 %conv88, 8, !dbg !730
  %tobool90 = icmp ne i64 %and89, 0, !dbg !730
  %lnot91 = xor i1 %tobool90, true, !dbg !730
  %lnot93 = xor i1 %lnot91, true, !dbg !730
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !730
  %conv95 = sext i32 %lnot.ext94 to i64, !dbg !730
  %tobool96 = icmp ne i64 %conv95, 0, !dbg !730
  br i1 %tobool96, label %if.then97, label %if.end99, !dbg !732

if.then97:                                        ; preds = %if.end87
  %25 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !733
  %rx_mii = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %25, i32 0, i32 18, !dbg !734
  %26 = load i64, i64* %rx_mii, align 16, !dbg !735
  %inc98 = add i64 %26, 1, !dbg !735
  store i64 %inc98, i64* %rx_mii, align 16, !dbg !735
  br label %if.end99, !dbg !733

if.end99:                                         ; preds = %if.then97, %if.end87
  %27 = load i32, i32* %rdes0, align 4, !dbg !736
  %conv100 = zext i32 %27 to i64, !dbg !736
  %and101 = and i64 %conv100, 2, !dbg !736
  %tobool102 = icmp ne i64 %and101, 0, !dbg !736
  %lnot103 = xor i1 %tobool102, true, !dbg !736
  %lnot105 = xor i1 %lnot103, true, !dbg !736
  %lnot.ext106 = zext i1 %lnot105 to i32, !dbg !736
  %conv107 = sext i32 %lnot.ext106 to i64, !dbg !736
  %tobool108 = icmp ne i64 %conv107, 0, !dbg !736
  br i1 %tobool108, label %if.then109, label %if.end113, !dbg !738

if.then109:                                       ; preds = %if.end99
  %28 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !739
  %rx_crc_errors = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %28, i32 0, i32 15, !dbg !741
  %29 = load i64, i64* %rx_crc_errors, align 8, !dbg !742
  %inc110 = add i64 %29, 1, !dbg !742
  store i64 %inc110, i64* %rx_crc_errors, align 8, !dbg !742
  %30 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !743
  %rx_crc_errors111 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %30, i32 0, i32 12, !dbg !744
  %31 = load i64, i64* %rx_crc_errors111, align 8, !dbg !745
  %inc112 = add i64 %31, 1, !dbg !745
  store i64 %inc112, i64* %rx_crc_errors111, align 8, !dbg !745
  br label %if.end113, !dbg !746

if.end113:                                        ; preds = %if.then109, %if.end99
  store i32 1, i32* %ret, align 4, !dbg !747
  br label %if.end114, !dbg !748

if.end114:                                        ; preds = %if.end113, %if.end16
  %32 = load i32, i32* %ret, align 4, !dbg !749
  %cmp = icmp eq i32 %32, 0, !dbg !749
  %lnot116 = xor i1 %cmp, true, !dbg !749
  %lnot118 = xor i1 %lnot116, true, !dbg !749
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !749
  %conv120 = sext i32 %lnot.ext119 to i64, !dbg !749
  %tobool121 = icmp ne i64 %conv120, 0, !dbg !749
  br i1 %tobool121, label %if.then122, label %if.end145, !dbg !751

if.then122:                                       ; preds = %if.end114
  %33 = load i32, i32* %rdes0, align 4, !dbg !752
  %conv123 = zext i32 %33 to i64, !dbg !752
  %and124 = and i64 %conv123, 128, !dbg !753
  %tobool125 = icmp ne i64 %and124, 0, !dbg !754
  %lnot126 = xor i1 %tobool125, true, !dbg !754
  %lnot128 = xor i1 %lnot126, true, !dbg !755
  %lnot.ext129 = zext i1 %lnot128 to i32, !dbg !755
  %34 = load i32, i32* %rdes0, align 4, !dbg !756
  %conv130 = zext i32 %34 to i64, !dbg !756
  %and131 = and i64 %conv130, 32, !dbg !757
  %tobool132 = icmp ne i64 %and131, 0, !dbg !758
  %lnot133 = xor i1 %tobool132, true, !dbg !758
  %lnot135 = xor i1 %lnot133, true, !dbg !759
  %lnot.ext136 = zext i1 %lnot135 to i32, !dbg !759
  %35 = load i32, i32* %rdes0, align 4, !dbg !760
  %conv137 = zext i32 %35 to i64, !dbg !760
  %and138 = and i64 %conv137, 1, !dbg !761
  %tobool139 = icmp ne i64 %and138, 0, !dbg !762
  %lnot140 = xor i1 %tobool139, true, !dbg !762
  %lnot142 = xor i1 %lnot140, true, !dbg !763
  %lnot.ext143 = zext i1 %lnot142 to i32, !dbg !763
  %call144 = call i32 @enh_desc_coe_rdes0(i32 %lnot.ext129, i32 %lnot.ext136, i32 %lnot.ext143) #5, !dbg !764
  store i32 %call144, i32* %ret, align 4, !dbg !765
  br label %if.end145, !dbg !766

if.end145:                                        ; preds = %if.then122, %if.end114
  %36 = load i32, i32* %rdes0, align 4, !dbg !767
  %conv146 = zext i32 %36 to i64, !dbg !767
  %and147 = and i64 %conv146, 4, !dbg !767
  %tobool148 = icmp ne i64 %and147, 0, !dbg !767
  %lnot149 = xor i1 %tobool148, true, !dbg !767
  %lnot151 = xor i1 %lnot149, true, !dbg !767
  %lnot.ext152 = zext i1 %lnot151 to i32, !dbg !767
  %conv153 = sext i32 %lnot.ext152 to i64, !dbg !767
  %tobool154 = icmp ne i64 %conv153, 0, !dbg !767
  br i1 %tobool154, label %if.then155, label %if.end157, !dbg !769

if.then155:                                       ; preds = %if.end145
  %37 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !770
  %dribbling_bit = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %37, i32 0, i32 16, !dbg !771
  %38 = load i64, i64* %dribbling_bit, align 64, !dbg !772
  %inc156 = add i64 %38, 1, !dbg !772
  store i64 %inc156, i64* %dribbling_bit, align 64, !dbg !772
  br label %if.end157, !dbg !770

if.end157:                                        ; preds = %if.then155, %if.end145
  %39 = load i32, i32* %rdes0, align 4, !dbg !773
  %conv158 = zext i32 %39 to i64, !dbg !773
  %and159 = and i64 %conv158, 8192, !dbg !773
  %tobool160 = icmp ne i64 %and159, 0, !dbg !773
  %lnot161 = xor i1 %tobool160, true, !dbg !773
  %lnot163 = xor i1 %lnot161, true, !dbg !773
  %lnot.ext164 = zext i1 %lnot163 to i32, !dbg !773
  %conv165 = sext i32 %lnot.ext164 to i64, !dbg !773
  %tobool166 = icmp ne i64 %conv165, 0, !dbg !773
  br i1 %tobool166, label %if.then167, label %if.end169, !dbg !775

if.then167:                                       ; preds = %if.end157
  %40 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !776
  %sa_rx_filter_fail = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %40, i32 0, i32 23, !dbg !778
  %41 = load i64, i64* %sa_rx_filter_fail, align 8, !dbg !779
  %inc168 = add i64 %41, 1, !dbg !779
  store i64 %inc168, i64* %sa_rx_filter_fail, align 8, !dbg !779
  store i32 1, i32* %ret, align 4, !dbg !780
  br label %if.end169, !dbg !781

if.end169:                                        ; preds = %if.then167, %if.end157
  %42 = load i32, i32* %rdes0, align 4, !dbg !782
  %conv170 = zext i32 %42 to i64, !dbg !782
  %and171 = and i64 %conv170, 1073741824, !dbg !782
  %tobool172 = icmp ne i64 %and171, 0, !dbg !782
  %lnot173 = xor i1 %tobool172, true, !dbg !782
  %lnot175 = xor i1 %lnot173, true, !dbg !782
  %lnot.ext176 = zext i1 %lnot175 to i32, !dbg !782
  %conv177 = sext i32 %lnot.ext176 to i64, !dbg !782
  %tobool178 = icmp ne i64 %conv177, 0, !dbg !782
  br i1 %tobool178, label %if.then179, label %if.end181, !dbg !784

if.then179:                                       ; preds = %if.end169
  %43 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !785
  %da_rx_filter_fail = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %43, i32 0, i32 22, !dbg !787
  %44 = load i64, i64* %da_rx_filter_fail, align 16, !dbg !788
  %inc180 = add i64 %44, 1, !dbg !788
  store i64 %inc180, i64* %da_rx_filter_fail, align 16, !dbg !788
  store i32 1, i32* %ret, align 4, !dbg !789
  br label %if.end181, !dbg !790

if.end181:                                        ; preds = %if.then179, %if.end169
  %45 = load i32, i32* %rdes0, align 4, !dbg !791
  %conv182 = zext i32 %45 to i64, !dbg !791
  %and183 = and i64 %conv182, 4096, !dbg !791
  %tobool184 = icmp ne i64 %and183, 0, !dbg !791
  %lnot185 = xor i1 %tobool184, true, !dbg !791
  %lnot187 = xor i1 %lnot185, true, !dbg !791
  %lnot.ext188 = zext i1 %lnot187 to i32, !dbg !791
  %conv189 = sext i32 %lnot.ext188 to i64, !dbg !791
  %tobool190 = icmp ne i64 %conv189, 0, !dbg !791
  br i1 %tobool190, label %if.then191, label %if.end193, !dbg !793

if.then191:                                       ; preds = %if.end181
  %46 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !794
  %rx_length = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %46, i32 0, i32 17, !dbg !796
  %47 = load i64, i64* %rx_length, align 8, !dbg !797
  %inc192 = add i64 %47, 1, !dbg !797
  store i64 %inc192, i64* %rx_length, align 8, !dbg !797
  store i32 1, i32* %ret, align 4, !dbg !798
  br label %if.end193, !dbg !799

if.end193:                                        ; preds = %if.then191, %if.end181
  %48 = load i32, i32* %rdes0, align 4, !dbg !800
  %conv194 = zext i32 %48 to i64, !dbg !800
  %and195 = and i64 %conv194, 1024, !dbg !802
  %tobool196 = icmp ne i64 %and195, 0, !dbg !802
  br i1 %tobool196, label %if.then197, label %if.end199, !dbg !803

if.then197:                                       ; preds = %if.end193
  %49 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !804
  %rx_vlan = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %49, i32 0, i32 26, !dbg !805
  %50 = load i64, i64* %rx_vlan, align 16, !dbg !806
  %inc198 = add i64 %50, 1, !dbg !806
  store i64 %inc198, i64* %rx_vlan, align 16, !dbg !806
  br label %if.end199, !dbg !804

if.end199:                                        ; preds = %if.then197, %if.end193
  %51 = load i32, i32* %ret, align 4, !dbg !807
  store i32 %51, i32* %retval, align 4, !dbg !808
  br label %return, !dbg !808

return:                                           ; preds = %if.end199, %if.then15, %if.then
  %52 = load i32, i32* %retval, align 4, !dbg !809
  ret i32 %52, !dbg !809
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_get_ext_status(i8* %data, %struct.stmmac_extra_stats* %x, %struct.dma_extended_desc* %p) #0 !dbg !810 {
entry:
  %data.addr = alloca i8*, align 8
  %x.addr = alloca %struct.stmmac_extra_stats*, align 8
  %p.addr = alloca %struct.dma_extended_desc*, align 8
  %rdes0 = alloca i32, align 4
  %rdes4 = alloca i32, align 4
  %message_type = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !811, metadata !DIExpression()), !dbg !812
  store %struct.stmmac_extra_stats* %x, %struct.stmmac_extra_stats** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_extra_stats** %x.addr, metadata !813, metadata !DIExpression()), !dbg !814
  store %struct.dma_extended_desc* %p, %struct.dma_extended_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_extended_desc** %p.addr, metadata !815, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.declare(metadata i32* %rdes0, metadata !817, metadata !DIExpression()), !dbg !818
  %0 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %p.addr, align 8, !dbg !819
  %basic = getelementptr inbounds %struct.dma_extended_desc, %struct.dma_extended_desc* %0, i32 0, i32 0, !dbg !819
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %basic, i32 0, i32 0, !dbg !819
  %1 = load i32, i32* %des0, align 4, !dbg !819
  store i32 %1, i32* %rdes0, align 4, !dbg !818
  call void @llvm.dbg.declare(metadata i32* %rdes4, metadata !820, metadata !DIExpression()), !dbg !821
  %2 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %p.addr, align 8, !dbg !822
  %des4 = getelementptr inbounds %struct.dma_extended_desc, %struct.dma_extended_desc* %2, i32 0, i32 1, !dbg !822
  %3 = load i32, i32* %des4, align 4, !dbg !822
  store i32 %3, i32* %rdes4, align 4, !dbg !821
  %4 = load i32, i32* %rdes0, align 4, !dbg !823
  %conv = zext i32 %4 to i64, !dbg !823
  %and = and i64 %conv, 1, !dbg !823
  %tobool = icmp ne i64 %and, 0, !dbg !823
  %lnot = xor i1 %tobool, true, !dbg !823
  %lnot1 = xor i1 %lnot, true, !dbg !823
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !823
  %conv2 = sext i32 %lnot.ext to i64, !dbg !823
  %tobool3 = icmp ne i64 %conv2, 0, !dbg !823
  br i1 %tobool3, label %if.then, label %if.end154, !dbg !825

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %message_type, metadata !826, metadata !DIExpression()), !dbg !828
  %5 = load i32, i32* %rdes4, align 4, !dbg !829
  %conv4 = zext i32 %5 to i64, !dbg !829
  %and5 = and i64 %conv4, 3840, !dbg !830
  %shr = lshr i64 %and5, 8, !dbg !831
  %conv6 = trunc i64 %shr to i32, !dbg !832
  store i32 %conv6, i32* %message_type, align 4, !dbg !828
  %6 = load i32, i32* %rdes4, align 4, !dbg !833
  %conv7 = zext i32 %6 to i64, !dbg !833
  %and8 = and i64 %conv7, 8, !dbg !835
  %tobool9 = icmp ne i64 %and8, 0, !dbg !835
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !836

if.then10:                                        ; preds = %if.then
  %7 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !837
  %ip_hdr_err = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %7, i32 0, i32 56, !dbg !838
  %8 = load i64, i64* %ip_hdr_err, align 64, !dbg !839
  %inc = add i64 %8, 1, !dbg !839
  store i64 %inc, i64* %ip_hdr_err, align 64, !dbg !839
  br label %if.end, !dbg !837

if.end:                                           ; preds = %if.then10, %if.then
  %9 = load i32, i32* %rdes4, align 4, !dbg !840
  %conv11 = zext i32 %9 to i64, !dbg !840
  %and12 = and i64 %conv11, 16, !dbg !842
  %tobool13 = icmp ne i64 %and12, 0, !dbg !842
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !843

if.then14:                                        ; preds = %if.end
  %10 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !844
  %ip_payload_err = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %10, i32 0, i32 57, !dbg !845
  %11 = load i64, i64* %ip_payload_err, align 8, !dbg !846
  %inc15 = add i64 %11, 1, !dbg !846
  store i64 %inc15, i64* %ip_payload_err, align 8, !dbg !846
  br label %if.end16, !dbg !844

if.end16:                                         ; preds = %if.then14, %if.end
  %12 = load i32, i32* %rdes4, align 4, !dbg !847
  %conv17 = zext i32 %12 to i64, !dbg !847
  %and18 = and i64 %conv17, 32, !dbg !849
  %tobool19 = icmp ne i64 %and18, 0, !dbg !849
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !850

if.then20:                                        ; preds = %if.end16
  %13 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !851
  %ip_csum_bypassed = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %13, i32 0, i32 58, !dbg !852
  %14 = load i64, i64* %ip_csum_bypassed, align 16, !dbg !853
  %inc21 = add i64 %14, 1, !dbg !853
  store i64 %inc21, i64* %ip_csum_bypassed, align 16, !dbg !853
  br label %if.end22, !dbg !851

if.end22:                                         ; preds = %if.then20, %if.end16
  %15 = load i32, i32* %rdes4, align 4, !dbg !854
  %conv23 = zext i32 %15 to i64, !dbg !854
  %and24 = and i64 %conv23, 64, !dbg !856
  %tobool25 = icmp ne i64 %and24, 0, !dbg !856
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !857

if.then26:                                        ; preds = %if.end22
  %16 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !858
  %ipv4_pkt_rcvd = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %16, i32 0, i32 59, !dbg !859
  %17 = load i64, i64* %ipv4_pkt_rcvd, align 8, !dbg !860
  %inc27 = add i64 %17, 1, !dbg !860
  store i64 %inc27, i64* %ipv4_pkt_rcvd, align 8, !dbg !860
  br label %if.end28, !dbg !858

if.end28:                                         ; preds = %if.then26, %if.end22
  %18 = load i32, i32* %rdes4, align 4, !dbg !861
  %conv29 = zext i32 %18 to i64, !dbg !861
  %and30 = and i64 %conv29, 128, !dbg !863
  %tobool31 = icmp ne i64 %and30, 0, !dbg !863
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !864

if.then32:                                        ; preds = %if.end28
  %19 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !865
  %ipv6_pkt_rcvd = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %19, i32 0, i32 60, !dbg !866
  %20 = load i64, i64* %ipv6_pkt_rcvd, align 32, !dbg !867
  %inc33 = add i64 %20, 1, !dbg !867
  store i64 %inc33, i64* %ipv6_pkt_rcvd, align 32, !dbg !867
  br label %if.end34, !dbg !865

if.end34:                                         ; preds = %if.then32, %if.end28
  %21 = load i32, i32* %message_type, align 4, !dbg !868
  %cmp = icmp eq i32 %21, 0, !dbg !870
  br i1 %cmp, label %if.then36, label %if.else, !dbg !871

if.then36:                                        ; preds = %if.end34
  %22 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !872
  %no_ptp_rx_msg_type_ext = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %22, i32 0, i32 61, !dbg !873
  %23 = load i64, i64* %no_ptp_rx_msg_type_ext, align 8, !dbg !874
  %inc37 = add i64 %23, 1, !dbg !874
  store i64 %inc37, i64* %no_ptp_rx_msg_type_ext, align 8, !dbg !874
  br label %if.end97, !dbg !872

if.else:                                          ; preds = %if.end34
  %24 = load i32, i32* %message_type, align 4, !dbg !875
  %cmp38 = icmp eq i32 %24, 1, !dbg !877
  br i1 %cmp38, label %if.then40, label %if.else42, !dbg !878

if.then40:                                        ; preds = %if.else
  %25 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !879
  %ptp_rx_msg_type_sync = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %25, i32 0, i32 62, !dbg !880
  %26 = load i64, i64* %ptp_rx_msg_type_sync, align 16, !dbg !881
  %inc41 = add i64 %26, 1, !dbg !881
  store i64 %inc41, i64* %ptp_rx_msg_type_sync, align 16, !dbg !881
  br label %if.end96, !dbg !879

if.else42:                                        ; preds = %if.else
  %27 = load i32, i32* %message_type, align 4, !dbg !882
  %cmp43 = icmp eq i32 %27, 2, !dbg !884
  br i1 %cmp43, label %if.then45, label %if.else47, !dbg !885

if.then45:                                        ; preds = %if.else42
  %28 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !886
  %ptp_rx_msg_type_follow_up = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %28, i32 0, i32 63, !dbg !887
  %29 = load i64, i64* %ptp_rx_msg_type_follow_up, align 8, !dbg !888
  %inc46 = add i64 %29, 1, !dbg !888
  store i64 %inc46, i64* %ptp_rx_msg_type_follow_up, align 8, !dbg !888
  br label %if.end95, !dbg !886

if.else47:                                        ; preds = %if.else42
  %30 = load i32, i32* %message_type, align 4, !dbg !889
  %cmp48 = icmp eq i32 %30, 3, !dbg !891
  br i1 %cmp48, label %if.then50, label %if.else52, !dbg !892

if.then50:                                        ; preds = %if.else47
  %31 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !893
  %ptp_rx_msg_type_delay_req = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %31, i32 0, i32 64, !dbg !894
  %32 = load i64, i64* %ptp_rx_msg_type_delay_req, align 64, !dbg !895
  %inc51 = add i64 %32, 1, !dbg !895
  store i64 %inc51, i64* %ptp_rx_msg_type_delay_req, align 64, !dbg !895
  br label %if.end94, !dbg !893

if.else52:                                        ; preds = %if.else47
  %33 = load i32, i32* %message_type, align 4, !dbg !896
  %cmp53 = icmp eq i32 %33, 4, !dbg !898
  br i1 %cmp53, label %if.then55, label %if.else57, !dbg !899

if.then55:                                        ; preds = %if.else52
  %34 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !900
  %ptp_rx_msg_type_delay_resp = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %34, i32 0, i32 65, !dbg !901
  %35 = load i64, i64* %ptp_rx_msg_type_delay_resp, align 8, !dbg !902
  %inc56 = add i64 %35, 1, !dbg !902
  store i64 %inc56, i64* %ptp_rx_msg_type_delay_resp, align 8, !dbg !902
  br label %if.end93, !dbg !900

if.else57:                                        ; preds = %if.else52
  %36 = load i32, i32* %message_type, align 4, !dbg !903
  %cmp58 = icmp eq i32 %36, 5, !dbg !905
  br i1 %cmp58, label %if.then60, label %if.else62, !dbg !906

if.then60:                                        ; preds = %if.else57
  %37 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !907
  %ptp_rx_msg_type_pdelay_req = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %37, i32 0, i32 66, !dbg !908
  %38 = load i64, i64* %ptp_rx_msg_type_pdelay_req, align 16, !dbg !909
  %inc61 = add i64 %38, 1, !dbg !909
  store i64 %inc61, i64* %ptp_rx_msg_type_pdelay_req, align 16, !dbg !909
  br label %if.end92, !dbg !907

if.else62:                                        ; preds = %if.else57
  %39 = load i32, i32* %message_type, align 4, !dbg !910
  %cmp63 = icmp eq i32 %39, 6, !dbg !912
  br i1 %cmp63, label %if.then65, label %if.else67, !dbg !913

if.then65:                                        ; preds = %if.else62
  %40 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !914
  %ptp_rx_msg_type_pdelay_resp = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %40, i32 0, i32 67, !dbg !915
  %41 = load i64, i64* %ptp_rx_msg_type_pdelay_resp, align 8, !dbg !916
  %inc66 = add i64 %41, 1, !dbg !916
  store i64 %inc66, i64* %ptp_rx_msg_type_pdelay_resp, align 8, !dbg !916
  br label %if.end91, !dbg !914

if.else67:                                        ; preds = %if.else62
  %42 = load i32, i32* %message_type, align 4, !dbg !917
  %cmp68 = icmp eq i32 %42, 7, !dbg !919
  br i1 %cmp68, label %if.then70, label %if.else72, !dbg !920

if.then70:                                        ; preds = %if.else67
  %43 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !921
  %ptp_rx_msg_type_pdelay_follow_up = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %43, i32 0, i32 68, !dbg !922
  %44 = load i64, i64* %ptp_rx_msg_type_pdelay_follow_up, align 32, !dbg !923
  %inc71 = add i64 %44, 1, !dbg !923
  store i64 %inc71, i64* %ptp_rx_msg_type_pdelay_follow_up, align 32, !dbg !923
  br label %if.end90, !dbg !921

if.else72:                                        ; preds = %if.else67
  %45 = load i32, i32* %message_type, align 4, !dbg !924
  %cmp73 = icmp eq i32 %45, 8, !dbg !926
  br i1 %cmp73, label %if.then75, label %if.else77, !dbg !927

if.then75:                                        ; preds = %if.else72
  %46 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !928
  %ptp_rx_msg_type_announce = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %46, i32 0, i32 69, !dbg !929
  %47 = load i64, i64* %ptp_rx_msg_type_announce, align 8, !dbg !930
  %inc76 = add i64 %47, 1, !dbg !930
  store i64 %inc76, i64* %ptp_rx_msg_type_announce, align 8, !dbg !930
  br label %if.end89, !dbg !928

if.else77:                                        ; preds = %if.else72
  %48 = load i32, i32* %message_type, align 4, !dbg !931
  %cmp78 = icmp eq i32 %48, 9, !dbg !933
  br i1 %cmp78, label %if.then80, label %if.else82, !dbg !934

if.then80:                                        ; preds = %if.else77
  %49 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !935
  %ptp_rx_msg_type_management = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %49, i32 0, i32 70, !dbg !936
  %50 = load i64, i64* %ptp_rx_msg_type_management, align 16, !dbg !937
  %inc81 = add i64 %50, 1, !dbg !937
  store i64 %inc81, i64* %ptp_rx_msg_type_management, align 16, !dbg !937
  br label %if.end88, !dbg !935

if.else82:                                        ; preds = %if.else77
  %51 = load i32, i32* %message_type, align 4, !dbg !938
  %cmp83 = icmp eq i32 %51, 15, !dbg !940
  br i1 %cmp83, label %if.then85, label %if.end87, !dbg !941

if.then85:                                        ; preds = %if.else82
  %52 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !942
  %ptp_rx_msg_pkt_reserved_type = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %52, i32 0, i32 71, !dbg !943
  %53 = load i64, i64* %ptp_rx_msg_pkt_reserved_type, align 8, !dbg !944
  %inc86 = add i64 %53, 1, !dbg !944
  store i64 %inc86, i64* %ptp_rx_msg_pkt_reserved_type, align 8, !dbg !944
  br label %if.end87, !dbg !942

if.end87:                                         ; preds = %if.then85, %if.else82
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then80
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then75
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then70
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then65
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then60
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then55
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.then50
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then45
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then40
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then36
  %54 = load i32, i32* %rdes4, align 4, !dbg !945
  %conv98 = zext i32 %54 to i64, !dbg !945
  %and99 = and i64 %conv98, 4096, !dbg !947
  %tobool100 = icmp ne i64 %and99, 0, !dbg !947
  br i1 %tobool100, label %if.then101, label %if.end103, !dbg !948

if.then101:                                       ; preds = %if.end97
  %55 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !949
  %ptp_frame_type = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %55, i32 0, i32 72, !dbg !950
  %56 = load i64, i64* %ptp_frame_type, align 64, !dbg !951
  %inc102 = add i64 %56, 1, !dbg !951
  store i64 %inc102, i64* %ptp_frame_type, align 64, !dbg !951
  br label %if.end103, !dbg !949

if.end103:                                        ; preds = %if.then101, %if.end97
  %57 = load i32, i32* %rdes4, align 4, !dbg !952
  %conv104 = zext i32 %57 to i64, !dbg !952
  %and105 = and i64 %conv104, 8192, !dbg !954
  %tobool106 = icmp ne i64 %and105, 0, !dbg !954
  br i1 %tobool106, label %if.then107, label %if.end109, !dbg !955

if.then107:                                       ; preds = %if.end103
  %58 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !956
  %ptp_ver = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %58, i32 0, i32 73, !dbg !957
  %59 = load i64, i64* %ptp_ver, align 8, !dbg !958
  %inc108 = add i64 %59, 1, !dbg !958
  store i64 %inc108, i64* %ptp_ver, align 8, !dbg !958
  br label %if.end109, !dbg !956

if.end109:                                        ; preds = %if.then107, %if.end103
  %60 = load i32, i32* %rdes4, align 4, !dbg !959
  %conv110 = zext i32 %60 to i64, !dbg !959
  %and111 = and i64 %conv110, 16384, !dbg !961
  %tobool112 = icmp ne i64 %and111, 0, !dbg !961
  br i1 %tobool112, label %if.then113, label %if.end115, !dbg !962

if.then113:                                       ; preds = %if.end109
  %61 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !963
  %timestamp_dropped = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %61, i32 0, i32 74, !dbg !964
  %62 = load i64, i64* %timestamp_dropped, align 16, !dbg !965
  %inc114 = add i64 %62, 1, !dbg !965
  store i64 %inc114, i64* %timestamp_dropped, align 16, !dbg !965
  br label %if.end115, !dbg !963

if.end115:                                        ; preds = %if.then113, %if.end109
  %63 = load i32, i32* %rdes4, align 4, !dbg !966
  %conv116 = zext i32 %63 to i64, !dbg !966
  %and117 = and i64 %conv116, 65536, !dbg !968
  %tobool118 = icmp ne i64 %and117, 0, !dbg !968
  br i1 %tobool118, label %if.then119, label %if.end121, !dbg !969

if.then119:                                       ; preds = %if.end115
  %64 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !970
  %av_pkt_rcvd = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %64, i32 0, i32 75, !dbg !971
  %65 = load i64, i64* %av_pkt_rcvd, align 8, !dbg !972
  %inc120 = add i64 %65, 1, !dbg !972
  store i64 %inc120, i64* %av_pkt_rcvd, align 8, !dbg !972
  br label %if.end121, !dbg !970

if.end121:                                        ; preds = %if.then119, %if.end115
  %66 = load i32, i32* %rdes4, align 4, !dbg !973
  %conv122 = zext i32 %66 to i64, !dbg !973
  %and123 = and i64 %conv122, 131072, !dbg !975
  %tobool124 = icmp ne i64 %and123, 0, !dbg !975
  br i1 %tobool124, label %if.then125, label %if.end127, !dbg !976

if.then125:                                       ; preds = %if.end121
  %67 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !977
  %av_tagged_pkt_rcvd = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %67, i32 0, i32 76, !dbg !978
  %68 = load i64, i64* %av_tagged_pkt_rcvd, align 32, !dbg !979
  %inc126 = add i64 %68, 1, !dbg !979
  store i64 %inc126, i64* %av_tagged_pkt_rcvd, align 32, !dbg !979
  br label %if.end127, !dbg !977

if.end127:                                        ; preds = %if.then125, %if.end121
  %69 = load i32, i32* %rdes4, align 4, !dbg !980
  %conv128 = zext i32 %69 to i64, !dbg !980
  %and129 = and i64 %conv128, 1835008, !dbg !982
  %shr130 = lshr i64 %and129, 18, !dbg !983
  %tobool131 = icmp ne i64 %shr130, 0, !dbg !983
  br i1 %tobool131, label %if.then132, label %if.end134, !dbg !984

if.then132:                                       ; preds = %if.end127
  %70 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !985
  %vlan_tag_priority_val = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %70, i32 0, i32 77, !dbg !986
  %71 = load i64, i64* %vlan_tag_priority_val, align 8, !dbg !987
  %inc133 = add i64 %71, 1, !dbg !987
  store i64 %inc133, i64* %vlan_tag_priority_val, align 8, !dbg !987
  br label %if.end134, !dbg !985

if.end134:                                        ; preds = %if.then132, %if.end127
  %72 = load i32, i32* %rdes4, align 4, !dbg !988
  %conv135 = zext i32 %72 to i64, !dbg !988
  %and136 = and i64 %conv135, 16777216, !dbg !990
  %tobool137 = icmp ne i64 %and136, 0, !dbg !990
  br i1 %tobool137, label %if.then138, label %if.end140, !dbg !991

if.then138:                                       ; preds = %if.end134
  %73 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !992
  %l3_filter_match = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %73, i32 0, i32 78, !dbg !993
  %74 = load i64, i64* %l3_filter_match, align 16, !dbg !994
  %inc139 = add i64 %74, 1, !dbg !994
  store i64 %inc139, i64* %l3_filter_match, align 16, !dbg !994
  br label %if.end140, !dbg !992

if.end140:                                        ; preds = %if.then138, %if.end134
  %75 = load i32, i32* %rdes4, align 4, !dbg !995
  %conv141 = zext i32 %75 to i64, !dbg !995
  %and142 = and i64 %conv141, 33554432, !dbg !997
  %tobool143 = icmp ne i64 %and142, 0, !dbg !997
  br i1 %tobool143, label %if.then144, label %if.end146, !dbg !998

if.then144:                                       ; preds = %if.end140
  %76 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !999
  %l4_filter_match = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %76, i32 0, i32 79, !dbg !1000
  %77 = load i64, i64* %l4_filter_match, align 8, !dbg !1001
  %inc145 = add i64 %77, 1, !dbg !1001
  store i64 %inc145, i64* %l4_filter_match, align 8, !dbg !1001
  br label %if.end146, !dbg !999

if.end146:                                        ; preds = %if.then144, %if.end140
  %78 = load i32, i32* %rdes4, align 4, !dbg !1002
  %conv147 = zext i32 %78 to i64, !dbg !1002
  %and148 = and i64 %conv147, 201326592, !dbg !1004
  %shr149 = lshr i64 %and148, 26, !dbg !1005
  %tobool150 = icmp ne i64 %shr149, 0, !dbg !1005
  br i1 %tobool150, label %if.then151, label %if.end153, !dbg !1006

if.then151:                                       ; preds = %if.end146
  %79 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !1007
  %l3_l4_filter_no_match = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %79, i32 0, i32 80, !dbg !1008
  %80 = load i64, i64* %l3_l4_filter_no_match, align 64, !dbg !1009
  %inc152 = add i64 %80, 1, !dbg !1009
  store i64 %inc152, i64* %l3_l4_filter_no_match, align 64, !dbg !1009
  br label %if.end153, !dbg !1007

if.end153:                                        ; preds = %if.then151, %if.end146
  br label %if.end154, !dbg !1010

if.end154:                                        ; preds = %if.end153, %entry
  ret void, !dbg !1011
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_enable_tx_timestamp(%struct.dma_desc* %p) #0 !dbg !1012 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !1013, metadata !DIExpression()), !dbg !1014
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !1015
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !1016
  %1 = load i32, i32* %des0, align 4, !dbg !1017
  %or = or i32 %1, 33554432, !dbg !1017
  store i32 %or, i32* %des0, align 4, !dbg !1017
  ret void, !dbg !1018
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @enh_desc_get_tx_timestamp_status(%struct.dma_desc* %p) #0 !dbg !1019 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !1020, metadata !DIExpression()), !dbg !1021
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !1022
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !1022
  %1 = load i32, i32* %des0, align 4, !dbg !1022
  %conv = zext i32 %1 to i64, !dbg !1022
  %and = and i64 %conv, 131072, !dbg !1023
  %shr = lshr i64 %and, 17, !dbg !1024
  %conv1 = trunc i64 %shr to i32, !dbg !1025
  ret i32 %conv1, !dbg !1026
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_get_timestamp(i8* %desc, i32 %ats, i64* %ts) #0 !dbg !1027 {
entry:
  %desc.addr = alloca i8*, align 8
  %ats.addr = alloca i32, align 4
  %ts.addr = alloca i64*, align 8
  %ns = alloca i64, align 8
  %p = alloca %struct.dma_extended_desc*, align 8
  %p2 = alloca %struct.dma_desc*, align 8
  store i8* %desc, i8** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %desc.addr, metadata !1028, metadata !DIExpression()), !dbg !1029
  store i32 %ats, i32* %ats.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ats.addr, metadata !1030, metadata !DIExpression()), !dbg !1031
  store i64* %ts, i64** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ts.addr, metadata !1032, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.declare(metadata i64* %ns, metadata !1034, metadata !DIExpression()), !dbg !1035
  %0 = load i32, i32* %ats.addr, align 4, !dbg !1036
  %tobool = icmp ne i32 %0, 0, !dbg !1036
  br i1 %tobool, label %if.then, label %if.else, !dbg !1038

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.dma_extended_desc** %p, metadata !1039, metadata !DIExpression()), !dbg !1041
  %1 = load i8*, i8** %desc.addr, align 8, !dbg !1042
  %2 = bitcast i8* %1 to %struct.dma_extended_desc*, !dbg !1043
  store %struct.dma_extended_desc* %2, %struct.dma_extended_desc** %p, align 8, !dbg !1041
  %3 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %p, align 8, !dbg !1044
  %des6 = getelementptr inbounds %struct.dma_extended_desc, %struct.dma_extended_desc* %3, i32 0, i32 3, !dbg !1044
  %4 = load i32, i32* %des6, align 4, !dbg !1044
  %conv = zext i32 %4 to i64, !dbg !1044
  store i64 %conv, i64* %ns, align 8, !dbg !1045
  %5 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %p, align 8, !dbg !1046
  %des7 = getelementptr inbounds %struct.dma_extended_desc, %struct.dma_extended_desc* %5, i32 0, i32 4, !dbg !1046
  %6 = load i32, i32* %des7, align 4, !dbg !1046
  %conv1 = zext i32 %6 to i64, !dbg !1046
  %mul = mul i64 %conv1, 1000000000, !dbg !1047
  %7 = load i64, i64* %ns, align 8, !dbg !1048
  %add = add i64 %7, %mul, !dbg !1048
  store i64 %add, i64* %ns, align 8, !dbg !1048
  br label %if.end, !dbg !1049

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p2, metadata !1050, metadata !DIExpression()), !dbg !1052
  %8 = load i8*, i8** %desc.addr, align 8, !dbg !1053
  %9 = bitcast i8* %8 to %struct.dma_desc*, !dbg !1054
  store %struct.dma_desc* %9, %struct.dma_desc** %p2, align 8, !dbg !1052
  %10 = load %struct.dma_desc*, %struct.dma_desc** %p2, align 8, !dbg !1055
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %10, i32 0, i32 2, !dbg !1055
  %11 = load i32, i32* %des2, align 4, !dbg !1055
  %conv3 = zext i32 %11 to i64, !dbg !1055
  store i64 %conv3, i64* %ns, align 8, !dbg !1056
  %12 = load %struct.dma_desc*, %struct.dma_desc** %p2, align 8, !dbg !1057
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %12, i32 0, i32 3, !dbg !1057
  %13 = load i32, i32* %des3, align 4, !dbg !1057
  %conv4 = zext i32 %13 to i64, !dbg !1057
  %mul5 = mul i64 %conv4, 1000000000, !dbg !1058
  %14 = load i64, i64* %ns, align 8, !dbg !1059
  %add6 = add i64 %14, %mul5, !dbg !1059
  store i64 %add6, i64* %ns, align 8, !dbg !1059
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i64, i64* %ns, align 8, !dbg !1060
  %16 = load i64*, i64** %ts.addr, align 8, !dbg !1061
  store i64 %15, i64* %16, align 8, !dbg !1062
  ret void, !dbg !1063
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @enh_desc_get_rx_timestamp_status(i8* %desc, i8* %next_desc, i32 %ats) #0 !dbg !1064 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i8*, align 8
  %next_desc.addr = alloca i8*, align 8
  %ats.addr = alloca i32, align 4
  %p = alloca %struct.dma_extended_desc*, align 8
  %p2 = alloca %struct.dma_desc*, align 8
  store i8* %desc, i8** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %desc.addr, metadata !1065, metadata !DIExpression()), !dbg !1066
  store i8* %next_desc, i8** %next_desc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %next_desc.addr, metadata !1067, metadata !DIExpression()), !dbg !1068
  store i32 %ats, i32* %ats.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ats.addr, metadata !1069, metadata !DIExpression()), !dbg !1070
  %0 = load i32, i32* %ats.addr, align 4, !dbg !1071
  %tobool = icmp ne i32 %0, 0, !dbg !1071
  br i1 %tobool, label %if.then, label %if.else, !dbg !1073

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.dma_extended_desc** %p, metadata !1074, metadata !DIExpression()), !dbg !1076
  %1 = load i8*, i8** %desc.addr, align 8, !dbg !1077
  %2 = bitcast i8* %1 to %struct.dma_extended_desc*, !dbg !1078
  store %struct.dma_extended_desc* %2, %struct.dma_extended_desc** %p, align 8, !dbg !1076
  %3 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %p, align 8, !dbg !1079
  %basic = getelementptr inbounds %struct.dma_extended_desc, %struct.dma_extended_desc* %3, i32 0, i32 0, !dbg !1079
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %basic, i32 0, i32 0, !dbg !1079
  %4 = load i32, i32* %des0, align 4, !dbg !1079
  %conv = zext i32 %4 to i64, !dbg !1079
  %and = and i64 %conv, 128, !dbg !1080
  %shr = lshr i64 %and, 7, !dbg !1081
  %conv1 = trunc i64 %shr to i32, !dbg !1082
  store i32 %conv1, i32* %retval, align 4, !dbg !1083
  br label %return, !dbg !1083

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p2, metadata !1084, metadata !DIExpression()), !dbg !1086
  %5 = load i8*, i8** %desc.addr, align 8, !dbg !1087
  %6 = bitcast i8* %5 to %struct.dma_desc*, !dbg !1088
  store %struct.dma_desc* %6, %struct.dma_desc** %p2, align 8, !dbg !1086
  %7 = load %struct.dma_desc*, %struct.dma_desc** %p2, align 8, !dbg !1089
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %7, i32 0, i32 2, !dbg !1089
  %8 = load i32, i32* %des2, align 4, !dbg !1089
  %cmp = icmp eq i32 %8, -1, !dbg !1091
  br i1 %cmp, label %land.lhs.true, label %if.else7, !dbg !1092

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct.dma_desc*, %struct.dma_desc** %p2, align 8, !dbg !1093
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %9, i32 0, i32 3, !dbg !1093
  %10 = load i32, i32* %des3, align 4, !dbg !1093
  %cmp4 = icmp eq i32 %10, -1, !dbg !1094
  br i1 %cmp4, label %if.then6, label %if.else7, !dbg !1095

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !1096
  br label %return, !dbg !1096

if.else7:                                         ; preds = %land.lhs.true, %if.else
  store i32 1, i32* %retval, align 4, !dbg !1097
  br label %return, !dbg !1097

return:                                           ; preds = %if.else7, %if.then6, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !1098
  ret i32 %11, !dbg !1098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_display_ring(i8* %head, i32 %size, i1 zeroext %rx) #0 !dbg !1099 {
entry:
  %head.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %rx.addr = alloca i8, align 1
  %ep = alloca %struct.dma_extended_desc*, align 8
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  store i8* %head, i8** %head.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %head.addr, metadata !1100, metadata !DIExpression()), !dbg !1101
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1102, metadata !DIExpression()), !dbg !1103
  %frombool = zext i1 %rx to i8
  store i8 %frombool, i8* %rx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rx.addr, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata %struct.dma_extended_desc** %ep, metadata !1106, metadata !DIExpression()), !dbg !1107
  %0 = load i8*, i8** %head.addr, align 8, !dbg !1108
  %1 = bitcast i8* %0 to %struct.dma_extended_desc*, !dbg !1109
  store %struct.dma_extended_desc* %1, %struct.dma_extended_desc** %ep, align 8, !dbg !1107
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1110, metadata !DIExpression()), !dbg !1111
  %2 = load i8, i8* %rx.addr, align 1, !dbg !1112
  %tobool = trunc i8 %2 to i1, !dbg !1112
  %3 = zext i1 %tobool to i64, !dbg !1112
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), !dbg !1112
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %cond) #7, !dbg !1112
  store i32 0, i32* %i, align 4, !dbg !1113
  br label %for.cond, !dbg !1115

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !1116
  %5 = load i32, i32* %size.addr, align 4, !dbg !1118
  %cmp = icmp ult i32 %4, %5, !dbg !1119
  br i1 %cmp, label %for.body, label %for.end, !dbg !1120

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1121, metadata !DIExpression()), !dbg !1123
  %6 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %ep, align 8, !dbg !1124
  %7 = bitcast %struct.dma_extended_desc* %6 to i64*, !dbg !1125
  %8 = load i64, i64* %7, align 8, !dbg !1125
  store i64 %8, i64* %x, align 8, !dbg !1126
  %9 = load i32, i32* %i, align 4, !dbg !1127
  %10 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %ep, align 8, !dbg !1127
  %11 = bitcast %struct.dma_extended_desc* %10 to i8*, !dbg !1127
  %call1 = call i64 @virt_to_phys(i8* %11) #5, !dbg !1127
  %conv = trunc i64 %call1 to i32, !dbg !1127
  %12 = load i64, i64* %x, align 8, !dbg !1127
  %conv2 = trunc i64 %12 to i32, !dbg !1127
  %13 = load i64, i64* %x, align 8, !dbg !1127
  %shr = lshr i64 %13, 32, !dbg !1127
  %conv3 = trunc i64 %shr to i32, !dbg !1127
  %14 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %ep, align 8, !dbg !1127
  %basic = getelementptr inbounds %struct.dma_extended_desc, %struct.dma_extended_desc* %14, i32 0, i32 0, !dbg !1127
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %basic, i32 0, i32 2, !dbg !1127
  %15 = load i32, i32* %des2, align 4, !dbg !1127
  %16 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %ep, align 8, !dbg !1127
  %basic4 = getelementptr inbounds %struct.dma_extended_desc, %struct.dma_extended_desc* %16, i32 0, i32 0, !dbg !1127
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %basic4, i32 0, i32 3, !dbg !1127
  %17 = load i32, i32* %des3, align 4, !dbg !1127
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %9, i32 %conv, i32 %conv2, i32 %conv3, i32 %15, i32 %17) #7, !dbg !1127
  %18 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %ep, align 8, !dbg !1128
  %incdec.ptr = getelementptr %struct.dma_extended_desc, %struct.dma_extended_desc* %18, i32 1, !dbg !1128
  store %struct.dma_extended_desc* %incdec.ptr, %struct.dma_extended_desc** %ep, align 8, !dbg !1128
  br label %for.inc, !dbg !1129

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !1130
  %inc = add i32 %19, 1, !dbg !1130
  store i32 %inc, i32* %i, align 4, !dbg !1130
  br label %for.cond, !dbg !1131, !llvm.loop !1132

for.end:                                          ; preds = %for.cond
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1134
  ret void, !dbg !1135
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_get_addr(%struct.dma_desc* %p, i32* %addr) #0 !dbg !1136 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %addr.addr = alloca i32*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !1137, metadata !DIExpression()), !dbg !1138
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !1139, metadata !DIExpression()), !dbg !1140
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !1141
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 2, !dbg !1141
  %1 = load i32, i32* %des2, align 4, !dbg !1141
  %2 = load i32*, i32** %addr.addr, align 8, !dbg !1142
  store i32 %1, i32* %2, align 4, !dbg !1143
  ret void, !dbg !1144
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_set_addr(%struct.dma_desc* %p, i64 %addr) #0 !dbg !1145 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %addr.addr = alloca i64, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !1146, metadata !DIExpression()), !dbg !1147
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !1148, metadata !DIExpression()), !dbg !1149
  %0 = load i64, i64* %addr.addr, align 8, !dbg !1150
  %conv = trunc i64 %0 to i32, !dbg !1150
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !1151
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 2, !dbg !1152
  store i32 %conv, i32* %des2, align 4, !dbg !1153
  ret void, !dbg !1154
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_clear(%struct.dma_desc* %p) #0 !dbg !1155 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !1156, metadata !DIExpression()), !dbg !1157
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !1158
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 2, !dbg !1159
  store i32 0, i32* %des2, align 4, !dbg !1160
  ret void, !dbg !1161
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ehn_desc_rx_set_on_chain(%struct.dma_desc* %p) #0 !dbg !1162 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !1164, metadata !DIExpression()), !dbg !1165
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !1166
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 1, !dbg !1167
  %1 = load i32, i32* %des1, align 4, !dbg !1168
  %or = or i32 %1, 16384, !dbg !1168
  store i32 %or, i32* %des1, align 4, !dbg !1168
  ret void, !dbg !1169
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ehn_desc_rx_set_on_ring(%struct.dma_desc* %p, i32 %end, i32 %bfsize) #0 !dbg !1170 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %end.addr = alloca i32, align 4
  %bfsize.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !1171, metadata !DIExpression()), !dbg !1172
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !1173, metadata !DIExpression()), !dbg !1174
  store i32 %bfsize, i32* %bfsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bfsize.addr, metadata !1175, metadata !DIExpression()), !dbg !1176
  %0 = load i32, i32* %bfsize.addr, align 4, !dbg !1177
  %cmp = icmp eq i32 %0, 16368, !dbg !1179
  br i1 %cmp, label %if.then, label %if.end, !dbg !1180

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !1181
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 1, !dbg !1182
  %2 = load i32, i32* %des1, align 4, !dbg !1183
  %or = or i32 %2, 536608768, !dbg !1183
  store i32 %or, i32* %des1, align 4, !dbg !1183
  br label %if.end, !dbg !1181

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %end.addr, align 4, !dbg !1184
  %tobool = icmp ne i32 %3, 0, !dbg !1184
  br i1 %tobool, label %if.then1, label %if.end4, !dbg !1186

if.then1:                                         ; preds = %if.end
  %4 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !1187
  %des12 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %4, i32 0, i32 1, !dbg !1188
  %5 = load i32, i32* %des12, align 4, !dbg !1189
  %or3 = or i32 %5, 32768, !dbg !1189
  store i32 %or3, i32* %des12, align 4, !dbg !1189
  br label %if.end4, !dbg !1187

if.end4:                                          ; preds = %if.then1, %if.end
  ret void, !dbg !1190
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_end_tx_desc_on_chain(%struct.dma_desc* %p) #0 !dbg !1191 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !1192, metadata !DIExpression()), !dbg !1193
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !1194
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !1195
  %1 = load i32, i32* %des0, align 4, !dbg !1196
  %or = or i32 %1, 1048576, !dbg !1196
  store i32 %or, i32* %des0, align 4, !dbg !1196
  ret void, !dbg !1197
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_desc_end_tx_desc_on_ring(%struct.dma_desc* %p, i32 %end) #0 !dbg !1198 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %end.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !1199, metadata !DIExpression()), !dbg !1200
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !1201, metadata !DIExpression()), !dbg !1202
  %0 = load i32, i32* %end.addr, align 4, !dbg !1203
  %tobool = icmp ne i32 %0, 0, !dbg !1203
  br i1 %tobool, label %if.then, label %if.else, !dbg !1205

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !1206
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 0, !dbg !1207
  %2 = load i32, i32* %des0, align 4, !dbg !1208
  %or = or i32 %2, 2097152, !dbg !1208
  store i32 %or, i32* %des0, align 4, !dbg !1208
  br label %if.end, !dbg !1206

if.else:                                          ; preds = %entry
  %3 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !1209
  %des01 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %3, i32 0, i32 0, !dbg !1210
  %4 = load i32, i32* %des01, align 4, !dbg !1211
  %and = and i32 %4, -2097153, !dbg !1211
  store i32 %and, i32* %des01, align 4, !dbg !1211
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1212
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_set_tx_desc_len_on_chain(%struct.dma_desc* %p, i32 %len) #0 !dbg !1213 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %len.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !1214, metadata !DIExpression()), !dbg !1215
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !1216, metadata !DIExpression()), !dbg !1217
  %0 = load i32, i32* %len.addr, align 4, !dbg !1218
  %conv = sext i32 %0 to i64, !dbg !1218
  %and = and i64 %conv, 8191, !dbg !1218
  %conv1 = trunc i64 %and to i32, !dbg !1218
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !1219
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 1, !dbg !1220
  %2 = load i32, i32* %des1, align 4, !dbg !1221
  %or = or i32 %2, %conv1, !dbg !1221
  store i32 %or, i32* %des1, align 4, !dbg !1221
  ret void, !dbg !1222
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enh_set_tx_desc_len_on_ring(%struct.dma_desc* %p, i32 %len) #0 !dbg !1223 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %len.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !1224, metadata !DIExpression()), !dbg !1225
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !1226, metadata !DIExpression()), !dbg !1227
  %0 = load i32, i32* %len.addr, align 4, !dbg !1228
  %cmp = icmp sgt i32 %0, 4096, !dbg !1228
  %lnot = xor i1 %cmp, true, !dbg !1228
  %lnot1 = xor i1 %lnot, true, !dbg !1228
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1228
  %conv = sext i32 %lnot.ext to i64, !dbg !1228
  %tobool = icmp ne i64 %conv, 0, !dbg !1228
  br i1 %tobool, label %if.then, label %if.else, !dbg !1230

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4, !dbg !1231
  %sub = sub i32 %1, 4096, !dbg !1231
  %shl = shl i32 %sub, 16, !dbg !1231
  %conv2 = sext i32 %shl to i64, !dbg !1231
  %and = and i64 %conv2, 536805376, !dbg !1231
  %or = or i64 %and, 4096, !dbg !1231
  %conv3 = trunc i64 %or to i32, !dbg !1231
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !1233
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 1, !dbg !1234
  %3 = load i32, i32* %des1, align 4, !dbg !1235
  %or4 = or i32 %3, %conv3, !dbg !1235
  store i32 %or4, i32* %des1, align 4, !dbg !1235
  br label %if.end, !dbg !1236

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %len.addr, align 4, !dbg !1237
  %conv5 = sext i32 %4 to i64, !dbg !1237
  %and6 = and i64 %conv5, 8191, !dbg !1237
  %conv7 = trunc i64 %and6 to i32, !dbg !1237
  %5 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !1238
  %des18 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %5, i32 0, i32 1, !dbg !1239
  %6 = load i32, i32* %des18, align 4, !dbg !1240
  %or9 = or i32 %6, %conv7, !dbg !1240
  store i32 %or9, i32* %des18, align 4, !dbg !1240
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1241
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local void @dwmac_dma_flush_tx_fifo(i8*) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @enh_desc_coe_rdes0(i32 %ipc_err, i32 %type, i32 %payload_err) #0 !dbg !1242 {
entry:
  %ipc_err.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %payload_err.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %ipc_err, i32* %ipc_err.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ipc_err.addr, metadata !1245, metadata !DIExpression()), !dbg !1246
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !1247, metadata !DIExpression()), !dbg !1248
  store i32 %payload_err, i32* %payload_err.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %payload_err.addr, metadata !1249, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1251, metadata !DIExpression()), !dbg !1252
  store i32 0, i32* %ret, align 4, !dbg !1252
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1253, metadata !DIExpression()), !dbg !1254
  %0 = load i32, i32* %type.addr, align 4, !dbg !1255
  %shl = shl i32 %0, 2, !dbg !1256
  %1 = load i32, i32* %ipc_err.addr, align 4, !dbg !1257
  %shl1 = shl i32 %1, 1, !dbg !1258
  %or = or i32 %shl, %shl1, !dbg !1259
  %2 = load i32, i32* %payload_err.addr, align 4, !dbg !1260
  %or2 = or i32 %or, %2, !dbg !1261
  %and = and i32 %or2, 7, !dbg !1262
  store i32 %and, i32* %status, align 4, !dbg !1254
  %3 = load i32, i32* %status, align 4, !dbg !1263
  %cmp = icmp eq i32 %3, 0, !dbg !1265
  br i1 %cmp, label %if.then, label %if.else, !dbg !1266

if.then:                                          ; preds = %entry
  store i32 4, i32* %ret, align 4, !dbg !1267
  br label %if.end25, !dbg !1268

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %status, align 4, !dbg !1269
  %cmp3 = icmp eq i32 %4, 4, !dbg !1271
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !1272

if.then4:                                         ; preds = %if.else
  store i32 0, i32* %ret, align 4, !dbg !1273
  br label %if.end24, !dbg !1274

if.else5:                                         ; preds = %if.else
  %5 = load i32, i32* %status, align 4, !dbg !1275
  %cmp6 = icmp eq i32 %5, 5, !dbg !1277
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !1278

if.then7:                                         ; preds = %if.else5
  store i32 2, i32* %ret, align 4, !dbg !1279
  br label %if.end23, !dbg !1280

if.else8:                                         ; preds = %if.else5
  %6 = load i32, i32* %status, align 4, !dbg !1281
  %cmp9 = icmp eq i32 %6, 6, !dbg !1283
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !1284

if.then10:                                        ; preds = %if.else8
  store i32 2, i32* %ret, align 4, !dbg !1285
  br label %if.end22, !dbg !1286

if.else11:                                        ; preds = %if.else8
  %7 = load i32, i32* %status, align 4, !dbg !1287
  %cmp12 = icmp eq i32 %7, 7, !dbg !1289
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !1290

if.then13:                                        ; preds = %if.else11
  store i32 2, i32* %ret, align 4, !dbg !1291
  br label %if.end21, !dbg !1292

if.else14:                                        ; preds = %if.else11
  %8 = load i32, i32* %status, align 4, !dbg !1293
  %cmp15 = icmp eq i32 %8, 1, !dbg !1295
  br i1 %cmp15, label %if.then16, label %if.else17, !dbg !1296

if.then16:                                        ; preds = %if.else14
  store i32 1, i32* %ret, align 4, !dbg !1297
  br label %if.end20, !dbg !1298

if.else17:                                        ; preds = %if.else14
  %9 = load i32, i32* %status, align 4, !dbg !1299
  %cmp18 = icmp eq i32 %9, 3, !dbg !1301
  br i1 %cmp18, label %if.then19, label %if.end, !dbg !1302

if.then19:                                        ; preds = %if.else17
  store i32 1, i32* %ret, align 4, !dbg !1303
  br label %if.end, !dbg !1304

if.end:                                           ; preds = %if.then19, %if.else17
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then16
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then13
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then10
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then7
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then4
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  %10 = load i32, i32* %ret, align 4, !dbg !1305
  ret i32 %10, !dbg !1306
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @virt_to_phys(i8* %address) #0 !dbg !1307 {
entry:
  %address.addr = alloca i8*, align 8
  store i8* %address, i8** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !1314, metadata !DIExpression()), !dbg !1315
  %0 = load i8*, i8** %address.addr, align 8, !dbg !1316
  %1 = ptrtoint i8* %0 to i64, !dbg !1316
  %call = call i64 @__phys_addr_nodebug(i64 %1) #5, !dbg !1316
  ret i64 %call, !dbg !1317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #0 !dbg !1318 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !1322, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.declare(metadata i64* %y, metadata !1324, metadata !DIExpression()), !dbg !1325
  %0 = load i64, i64* %x.addr, align 8, !dbg !1326
  %sub = sub i64 %0, -2147483648, !dbg !1327
  store i64 %sub, i64* %y, align 8, !dbg !1325
  %1 = load i64, i64* %y, align 8, !dbg !1328
  %2 = load i64, i64* %x.addr, align 8, !dbg !1329
  %3 = load i64, i64* %y, align 8, !dbg !1330
  %cmp = icmp ugt i64 %2, %3, !dbg !1331
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1332

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !1333
  br label %cond.end, !dbg !1332

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !1334
  %sub1 = sub i64 -2147483648, %5, !dbg !1335
  br label %cond.end, !dbg !1332

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !1332
  %add = add i64 %1, %cond, !dbg !1336
  store i64 %add, i64* %x.addr, align 8, !dbg !1337
  %6 = load i64, i64* %x.addr, align 8, !dbg !1338
  ret i64 %6, !dbg !1339
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { nounwind }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!318, !319, !320, !321}
!llvm.ident = !{!322}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "enh_desc_ops", scope: !2, file: !3, line: 455, type: !85, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !84, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/enh_desc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkt_hash_types", file: !6, line: 1238, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/skbuff.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "PKT_HASH_TYPE_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "PKT_HASH_TYPE_L2", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "PKT_HASH_TYPE_L3", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "PKT_HASH_TYPE_L4", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tx_frame_status", file: !14, line: 292, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/common.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "tx_done", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "tx_not_ls", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "tx_err", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "tx_dma_own", value: 4, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rx_frame_status", file: !14, line: 282, baseType: !7, size: 32, elements: !21)
!21 = !{!22, !23, !24, !25, !26, !27}
!22 = !DIEnumerator(name: "good_frame", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "discard_frame", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "csum_none", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "llc_snap", value: 4, isUnsigned: true)
!26 = !DIEnumerator(name: "dma_own", value: 8, isUnsigned: true)
!27 = !DIEnumerator(name: "rx_not_ls", value: 16, isUnsigned: true)
!28 = !{!29, !31, !33, !34, !36, !64, !79, !80, !7, !41}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !30, line: 31, baseType: !31)
!30 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !32, line: 27, baseType: !7)
!32 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !35, line: 21, baseType: !31)
!35 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "net_device_stats", file: !38, line: 169, size: 1472, elements: !39)
!38 = !DIFile(filename: "./include/linux/netdevice.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "rx_packets", scope: !37, file: !38, line: 170, baseType: !41, size: 64)
!41 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tx_packets", scope: !37, file: !38, line: 171, baseType: !41, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "rx_bytes", scope: !37, file: !38, line: 172, baseType: !41, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tx_bytes", scope: !37, file: !38, line: 173, baseType: !41, size: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "rx_errors", scope: !37, file: !38, line: 174, baseType: !41, size: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tx_errors", scope: !37, file: !38, line: 175, baseType: !41, size: 64, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "rx_dropped", scope: !37, file: !38, line: 176, baseType: !41, size: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tx_dropped", scope: !37, file: !38, line: 177, baseType: !41, size: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "multicast", scope: !37, file: !38, line: 178, baseType: !41, size: 64, offset: 512)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !37, file: !38, line: 179, baseType: !41, size: 64, offset: 576)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "rx_length_errors", scope: !37, file: !38, line: 180, baseType: !41, size: 64, offset: 640)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "rx_over_errors", scope: !37, file: !38, line: 181, baseType: !41, size: 64, offset: 704)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "rx_crc_errors", scope: !37, file: !38, line: 182, baseType: !41, size: 64, offset: 768)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "rx_frame_errors", scope: !37, file: !38, line: 183, baseType: !41, size: 64, offset: 832)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_errors", scope: !37, file: !38, line: 184, baseType: !41, size: 64, offset: 896)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "rx_missed_errors", scope: !37, file: !38, line: 185, baseType: !41, size: 64, offset: 960)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tx_aborted_errors", scope: !37, file: !38, line: 186, baseType: !41, size: 64, offset: 1024)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tx_carrier_errors", scope: !37, file: !38, line: 187, baseType: !41, size: 64, offset: 1088)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_errors", scope: !37, file: !38, line: 188, baseType: !41, size: 64, offset: 1152)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tx_heartbeat_errors", scope: !37, file: !38, line: 189, baseType: !41, size: 64, offset: 1216)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tx_window_errors", scope: !37, file: !38, line: 190, baseType: !41, size: 64, offset: 1280)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "rx_compressed", scope: !37, file: !38, line: 191, baseType: !41, size: 64, offset: 1344)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tx_compressed", scope: !37, file: !38, line: 192, baseType: !41, size: 64, offset: 1408)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_extended_desc", file: !66, line: 166, size: 256, elements: !67)
!66 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/descs.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !75, !76, !77, !78}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "basic", scope: !65, file: !66, line: 167, baseType: !69, size: 128)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_desc", file: !66, line: 158, size: 128, elements: !70)
!70 = !{!71, !72, !73, !74}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "des0", scope: !69, file: !66, line: 159, baseType: !29, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "des1", scope: !69, file: !66, line: 160, baseType: !29, size: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "des2", scope: !69, file: !66, line: 161, baseType: !29, size: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "des3", scope: !69, file: !66, line: 162, baseType: !29, size: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "des4", scope: !65, file: !66, line: 168, baseType: !29, size: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "des5", scope: !65, file: !66, line: 169, baseType: !29, size: 32, offset: 160)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "des6", scope: !65, file: !66, line: 170, baseType: !29, size: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "des7", scope: !65, file: !66, line: 171, baseType: !29, size: 32, offset: 224)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !35, line: 23, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !32, line: 31, baseType: !83)
!83 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!84 = !{!0}
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_desc_ops", file: !87, line: 35, size: 1984, elements: !88)
!87 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/hwif.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!89, !93, !97, !104, !108, !112, !116, !120, !121, !122, !243, !244, !245, !249, !253, !257, !258, !259, !263, !267, !271, !275, !280, !285, !286, !292, !293, !294, !298, !305, !306}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "init_rx_desc", scope: !86, file: !87, line: 37, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !79, !33, !33, !33, !33}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "init_tx_desc", scope: !86, file: !87, line: 40, baseType: !94, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !79, !33, !33}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_tx_desc", scope: !86, file: !87, line: 42, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !79, !33, !33, !101, !33, !101, !101, !7}
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !102, line: 30, baseType: !103)
!102 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!103 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_tso_tx_desc", scope: !86, file: !87, line: 45, baseType: !105, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !79, !33, !33, !33, !101, !101, !7, !7}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "set_tx_owner", scope: !86, file: !87, line: 49, baseType: !109, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !79}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "get_tx_owner", scope: !86, file: !87, line: 50, baseType: !113, size: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!33, !79}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "release_tx_desc", scope: !86, file: !87, line: 52, baseType: !117, size: 64, offset: 384)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !79, !33}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "set_tx_ic", scope: !86, file: !87, line: 55, baseType: !109, size: 64, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "get_tx_ls", scope: !86, file: !87, line: 57, baseType: !113, size: 64, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tx_status", scope: !86, file: !87, line: 59, baseType: !123, size: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!33, !126, !127, !79, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_extra_stats", file: !14, line: 61, size: 7680, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tx_underflow", scope: !128, file: !14, line: 63, baseType: !41, size: 64, align: 512)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tx_carrier", scope: !128, file: !14, line: 64, baseType: !41, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tx_losscarrier", scope: !128, file: !14, line: 65, baseType: !41, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag", scope: !128, file: !14, line: 66, baseType: !41, size: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tx_deferred", scope: !128, file: !14, line: 67, baseType: !41, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tx_vlan", scope: !128, file: !14, line: 68, baseType: !41, size: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber", scope: !128, file: !14, line: 69, baseType: !41, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tx_frame_flushed", scope: !128, file: !14, line: 70, baseType: !41, size: 64, offset: 448)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tx_payload_error", scope: !128, file: !14, line: 71, baseType: !41, size: 64, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ip_header_error", scope: !128, file: !14, line: 72, baseType: !41, size: 64, offset: 576)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "rx_desc", scope: !128, file: !14, line: 74, baseType: !41, size: 64, offset: 640)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sa_filter_fail", scope: !128, file: !14, line: 75, baseType: !41, size: 64, offset: 704)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_error", scope: !128, file: !14, line: 76, baseType: !41, size: 64, offset: 768)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_csum_error", scope: !128, file: !14, line: 77, baseType: !41, size: 64, offset: 832)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "rx_collision", scope: !128, file: !14, line: 78, baseType: !41, size: 64, offset: 896)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rx_crc_errors", scope: !128, file: !14, line: 79, baseType: !41, size: 64, offset: 960)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "dribbling_bit", scope: !128, file: !14, line: 80, baseType: !41, size: 64, offset: 1024)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rx_length", scope: !128, file: !14, line: 81, baseType: !41, size: 64, offset: 1088)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "rx_mii", scope: !128, file: !14, line: 82, baseType: !41, size: 64, offset: 1152)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "rx_multicast", scope: !128, file: !14, line: 83, baseType: !41, size: 64, offset: 1216)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "rx_gmac_overflow", scope: !128, file: !14, line: 84, baseType: !41, size: 64, offset: 1280)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog", scope: !128, file: !14, line: 85, baseType: !41, size: 64, offset: 1344)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "da_rx_filter_fail", scope: !128, file: !14, line: 86, baseType: !41, size: 64, offset: 1408)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "sa_rx_filter_fail", scope: !128, file: !14, line: 87, baseType: !41, size: 64, offset: 1472)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rx_missed_cntr", scope: !128, file: !14, line: 88, baseType: !41, size: 64, offset: 1536)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_cntr", scope: !128, file: !14, line: 89, baseType: !41, size: 64, offset: 1600)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rx_vlan", scope: !128, file: !14, line: 90, baseType: !41, size: 64, offset: 1664)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rx_split_hdr_pkt_n", scope: !128, file: !14, line: 91, baseType: !41, size: 64, offset: 1728)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tx_undeflow_irq", scope: !128, file: !14, line: 93, baseType: !41, size: 64, offset: 1792)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "tx_process_stopped_irq", scope: !128, file: !14, line: 94, baseType: !41, size: 64, offset: 1856)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber_irq", scope: !128, file: !14, line: 95, baseType: !41, size: 64, offset: 1920)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_irq", scope: !128, file: !14, line: 96, baseType: !41, size: 64, offset: 1984)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_unav_irq", scope: !128, file: !14, line: 97, baseType: !41, size: 64, offset: 2048)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rx_process_stopped_irq", scope: !128, file: !14, line: 98, baseType: !41, size: 64, offset: 2112)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog_irq", scope: !128, file: !14, line: 99, baseType: !41, size: 64, offset: 2176)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tx_early_irq", scope: !128, file: !14, line: 100, baseType: !41, size: 64, offset: 2240)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_bus_error_irq", scope: !128, file: !14, line: 101, baseType: !41, size: 64, offset: 2304)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "rx_early_irq", scope: !128, file: !14, line: 103, baseType: !41, size: 64, offset: 2368)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !128, file: !14, line: 104, baseType: !41, size: 64, offset: 2432)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tx_pkt_n", scope: !128, file: !14, line: 105, baseType: !41, size: 64, offset: 2496)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "rx_pkt_n", scope: !128, file: !14, line: 106, baseType: !41, size: 64, offset: 2560)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "normal_irq_n", scope: !128, file: !14, line: 107, baseType: !41, size: 64, offset: 2624)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rx_normal_irq_n", scope: !128, file: !14, line: 108, baseType: !41, size: 64, offset: 2688)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "napi_poll", scope: !128, file: !14, line: 109, baseType: !41, size: 64, offset: 2752)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tx_normal_irq_n", scope: !128, file: !14, line: 110, baseType: !41, size: 64, offset: 2816)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tx_clean", scope: !128, file: !14, line: 111, baseType: !41, size: 64, offset: 2880)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tx_set_ic_bit", scope: !128, file: !14, line: 112, baseType: !41, size: 64, offset: 2944)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "irq_receive_pmt_irq_n", scope: !128, file: !14, line: 113, baseType: !41, size: 64, offset: 3008)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_irq_n", scope: !128, file: !14, line: 115, baseType: !41, size: 64, offset: 3072)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_irq_n", scope: !128, file: !14, line: 116, baseType: !41, size: 64, offset: 3136)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_csum_offload_irq_n", scope: !128, file: !14, line: 117, baseType: !41, size: 64, offset: 3200)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_in_lpi_mode_n", scope: !128, file: !14, line: 119, baseType: !41, size: 64, offset: 3264)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_exit_lpi_mode_n", scope: !128, file: !14, line: 120, baseType: !41, size: 64, offset: 3328)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_in_lpi_mode_n", scope: !128, file: !14, line: 121, baseType: !41, size: 64, offset: 3392)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_exit_lpi_mode_n", scope: !128, file: !14, line: 122, baseType: !41, size: 64, offset: 3456)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "phy_eee_wakeup_error_n", scope: !128, file: !14, line: 123, baseType: !41, size: 64, offset: 3520)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hdr_err", scope: !128, file: !14, line: 125, baseType: !41, size: 64, offset: 3584)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ip_payload_err", scope: !128, file: !14, line: 126, baseType: !41, size: 64, offset: 3648)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ip_csum_bypassed", scope: !128, file: !14, line: 127, baseType: !41, size: 64, offset: 3712)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_pkt_rcvd", scope: !128, file: !14, line: 128, baseType: !41, size: 64, offset: 3776)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_pkt_rcvd", scope: !128, file: !14, line: 129, baseType: !41, size: 64, offset: 3840)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "no_ptp_rx_msg_type_ext", scope: !128, file: !14, line: 130, baseType: !41, size: 64, offset: 3904)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_sync", scope: !128, file: !14, line: 131, baseType: !41, size: 64, offset: 3968)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_follow_up", scope: !128, file: !14, line: 132, baseType: !41, size: 64, offset: 4032)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_req", scope: !128, file: !14, line: 133, baseType: !41, size: 64, offset: 4096)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_resp", scope: !128, file: !14, line: 134, baseType: !41, size: 64, offset: 4160)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_req", scope: !128, file: !14, line: 135, baseType: !41, size: 64, offset: 4224)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_resp", scope: !128, file: !14, line: 136, baseType: !41, size: 64, offset: 4288)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_follow_up", scope: !128, file: !14, line: 137, baseType: !41, size: 64, offset: 4352)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_announce", scope: !128, file: !14, line: 138, baseType: !41, size: 64, offset: 4416)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_management", scope: !128, file: !14, line: 139, baseType: !41, size: 64, offset: 4480)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_pkt_reserved_type", scope: !128, file: !14, line: 140, baseType: !41, size: 64, offset: 4544)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_frame_type", scope: !128, file: !14, line: 141, baseType: !41, size: 64, offset: 4608)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_ver", scope: !128, file: !14, line: 142, baseType: !41, size: 64, offset: 4672)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp_dropped", scope: !128, file: !14, line: 143, baseType: !41, size: 64, offset: 4736)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "av_pkt_rcvd", scope: !128, file: !14, line: 144, baseType: !41, size: 64, offset: 4800)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "av_tagged_pkt_rcvd", scope: !128, file: !14, line: 145, baseType: !41, size: 64, offset: 4864)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag_priority_val", scope: !128, file: !14, line: 146, baseType: !41, size: 64, offset: 4928)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "l3_filter_match", scope: !128, file: !14, line: 147, baseType: !41, size: 64, offset: 4992)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "l4_filter_match", scope: !128, file: !14, line: 148, baseType: !41, size: 64, offset: 5056)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "l3_l4_filter_no_match", scope: !128, file: !14, line: 149, baseType: !41, size: 64, offset: 5120)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_ane_n", scope: !128, file: !14, line: 151, baseType: !41, size: 64, offset: 5184)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_link_n", scope: !128, file: !14, line: 152, baseType: !41, size: 64, offset: 5248)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rgmii_n", scope: !128, file: !14, line: 153, baseType: !41, size: 64, offset: 5312)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_link", scope: !128, file: !14, line: 154, baseType: !41, size: 64, offset: 5376)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_duplex", scope: !128, file: !14, line: 155, baseType: !41, size: 64, offset: 5440)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_speed", scope: !128, file: !14, line: 156, baseType: !41, size: 64, offset: 5504)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_status_fifo_full", scope: !128, file: !14, line: 158, baseType: !41, size: 64, offset: 5568)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_not_empty", scope: !128, file: !14, line: 159, baseType: !41, size: 64, offset: 5632)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mmtl_fifo_ctrl", scope: !128, file: !14, line: 160, baseType: !41, size: 64, offset: 5696)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_write", scope: !128, file: !14, line: 161, baseType: !41, size: 64, offset: 5760)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_wait", scope: !128, file: !14, line: 162, baseType: !41, size: 64, offset: 5824)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_read", scope: !128, file: !14, line: 163, baseType: !41, size: 64, offset: 5888)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_idle", scope: !128, file: !14, line: 164, baseType: !41, size: 64, offset: 5952)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_in_pause", scope: !128, file: !14, line: 165, baseType: !41, size: 64, offset: 6016)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_xfer", scope: !128, file: !14, line: 166, baseType: !41, size: 64, offset: 6080)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_idle", scope: !128, file: !14, line: 167, baseType: !41, size: 64, offset: 6144)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_wait", scope: !128, file: !14, line: 168, baseType: !41, size: 64, offset: 6208)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_pause", scope: !128, file: !14, line: 169, baseType: !41, size: 64, offset: 6272)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_tx_proto_engine", scope: !128, file: !14, line: 170, baseType: !41, size: 64, offset: 6336)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_full", scope: !128, file: !14, line: 171, baseType: !41, size: 64, offset: 6400)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_above_thresh", scope: !128, file: !14, line: 172, baseType: !41, size: 64, offset: 6464)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_below_thresh", scope: !128, file: !14, line: 173, baseType: !41, size: 64, offset: 6528)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_empty", scope: !128, file: !14, line: 174, baseType: !41, size: 64, offset: 6592)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_flush", scope: !128, file: !14, line: 175, baseType: !41, size: 64, offset: 6656)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_read_data", scope: !128, file: !14, line: 176, baseType: !41, size: 64, offset: 6720)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_status", scope: !128, file: !14, line: 177, baseType: !41, size: 64, offset: 6784)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_idle", scope: !128, file: !14, line: 178, baseType: !41, size: 64, offset: 6848)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_ctrl_active", scope: !128, file: !14, line: 179, baseType: !41, size: 64, offset: 6912)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "mac_rx_frame_ctrl_fifo", scope: !128, file: !14, line: 180, baseType: !41, size: 64, offset: 6976)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_rx_proto_engine", scope: !128, file: !14, line: 181, baseType: !41, size: 64, offset: 7040)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_frames", scope: !128, file: !14, line: 183, baseType: !41, size: 64, offset: 7104)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_nfrags", scope: !128, file: !14, line: 184, baseType: !41, size: 64, offset: 7168)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "get_tx_len", scope: !86, file: !87, line: 62, baseType: !113, size: 64, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "set_rx_owner", scope: !86, file: !87, line: 64, baseType: !117, size: 64, offset: 704)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "get_rx_frame_len", scope: !86, file: !87, line: 66, baseType: !246, size: 64, offset: 768)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!33, !79, !33}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "rx_status", scope: !86, file: !87, line: 68, baseType: !250, size: 64, offset: 832)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!33, !126, !127, !79}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rx_extended_status", scope: !86, file: !87, line: 70, baseType: !254, size: 64, offset: 896)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !126, !127, !64}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "enable_tx_timestamp", scope: !86, file: !87, line: 73, baseType: !109, size: 64, offset: 960)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "get_tx_timestamp_status", scope: !86, file: !87, line: 75, baseType: !113, size: 64, offset: 1024)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "get_timestamp", scope: !86, file: !87, line: 77, baseType: !260, size: 64, offset: 1088)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !126, !34, !80}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "get_rx_timestamp_status", scope: !86, file: !87, line: 79, baseType: !264, size: 64, offset: 1152)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!33, !126, !126, !34}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "display_ring", scope: !86, file: !87, line: 81, baseType: !268, size: 64, offset: 1216)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !126, !7, !101}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "set_mss", scope: !86, file: !87, line: 83, baseType: !272, size: 64, offset: 1280)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !79, !7}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "get_addr", scope: !86, file: !87, line: 85, baseType: !276, size: 64, offset: 1344)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !79, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "set_addr", scope: !86, file: !87, line: 87, baseType: !281, size: 64, offset: 1408)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !79, !284}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !102, line: 143, baseType: !81)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !86, file: !87, line: 89, baseType: !109, size: 64, offset: 1472)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "get_rx_hash", scope: !86, file: !87, line: 91, baseType: !287, size: 64, offset: 1536)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!33, !79, !290, !291}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "get_rx_header_len", scope: !86, file: !87, line: 93, baseType: !276, size: 64, offset: 1600)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "set_sec_addr", scope: !86, file: !87, line: 94, baseType: !281, size: 64, offset: 1664)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "set_sarc", scope: !86, file: !87, line: 95, baseType: !295, size: 64, offset: 1728)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !79, !34}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "set_vlan_tag", scope: !86, file: !87, line: 96, baseType: !299, size: 64, offset: 1792)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !79, !302, !302, !34}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !35, line: 19, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !32, line: 24, baseType: !304)
!304 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "set_vlan", scope: !86, file: !87, line: 98, baseType: !295, size: 64, offset: 1856)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "set_tbs", scope: !86, file: !87, line: 99, baseType: !307, size: 64, offset: 1920)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !310, !34, !34}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_edesc", file: !66, line: 175, size: 256, elements: !312)
!312 = !{!313, !314, !315, !316, !317}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "des4", scope: !311, file: !66, line: 176, baseType: !29, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "des5", scope: !311, file: !66, line: 177, baseType: !29, size: 32, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "des6", scope: !311, file: !66, line: 178, baseType: !29, size: 32, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "des7", scope: !311, file: !66, line: 179, baseType: !29, size: 32, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "basic", scope: !311, file: !66, line: 180, baseType: !69, size: 128, offset: 128)
!318 = !{i32 7, !"Dwarf Version", i32 4}
!319 = !{i32 2, !"Debug Info Version", i32 3}
!320 = !{i32 1, !"wchar_size", i32 2}
!321 = !{i32 1, !"Code Model", i32 2}
!322 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!323 = distinct !DISubprogram(name: "enh_desc_init_rx_desc", scope: !3, file: !3, line: 257, type: !91, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!324 = !{}
!325 = !DILocalVariable(name: "p", arg: 1, scope: !323, file: !3, line: 257, type: !79)
!326 = !DILocation(line: 257, column: 52, scope: !323)
!327 = !DILocalVariable(name: "disable_rx_ic", arg: 2, scope: !323, file: !3, line: 257, type: !33)
!328 = !DILocation(line: 257, column: 59, scope: !323)
!329 = !DILocalVariable(name: "mode", arg: 3, scope: !323, file: !3, line: 258, type: !33)
!330 = !DILocation(line: 258, column: 11, scope: !323)
!331 = !DILocalVariable(name: "end", arg: 4, scope: !323, file: !3, line: 258, type: !33)
!332 = !DILocation(line: 258, column: 21, scope: !323)
!333 = !DILocalVariable(name: "bfsize", arg: 5, scope: !323, file: !3, line: 258, type: !33)
!334 = !DILocation(line: 258, column: 30, scope: !323)
!335 = !DILocalVariable(name: "bfsize1", scope: !323, file: !3, line: 260, type: !33)
!336 = !DILocation(line: 260, column: 6, scope: !323)
!337 = !DILocation(line: 262, column: 2, scope: !323)
!338 = !DILocation(line: 262, column: 5, scope: !323)
!339 = !DILocation(line: 262, column: 10, scope: !323)
!340 = !DILocalVariable(name: "__UNIQUE_ID___x324", scope: !341, file: !3, line: 264, type: !33)
!341 = distinct !DILexicalBlock(scope: !323, file: !3, line: 264, column: 12)
!342 = !DILocation(line: 264, column: 12, scope: !341)
!343 = !DILocalVariable(name: "__UNIQUE_ID___y325", scope: !341, file: !3, line: 264, type: !33)
!344 = !DILocation(line: 264, column: 10, scope: !323)
!345 = !DILocation(line: 265, column: 13, scope: !323)
!346 = !DILocation(line: 265, column: 2, scope: !323)
!347 = !DILocation(line: 265, column: 5, scope: !323)
!348 = !DILocation(line: 265, column: 10, scope: !323)
!349 = !DILocation(line: 267, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !323, file: !3, line: 267, column: 6)
!351 = !DILocation(line: 267, column: 11, scope: !350)
!352 = !DILocation(line: 267, column: 6, scope: !323)
!353 = !DILocation(line: 268, column: 28, scope: !350)
!354 = !DILocation(line: 268, column: 3, scope: !350)
!355 = !DILocation(line: 270, column: 27, scope: !350)
!356 = !DILocation(line: 270, column: 30, scope: !350)
!357 = !DILocation(line: 270, column: 35, scope: !350)
!358 = !DILocation(line: 270, column: 3, scope: !350)
!359 = !DILocation(line: 272, column: 6, scope: !360)
!360 = distinct !DILexicalBlock(scope: !323, file: !3, line: 272, column: 6)
!361 = !DILocation(line: 272, column: 6, scope: !323)
!362 = !DILocation(line: 273, column: 3, scope: !360)
!363 = !DILocation(line: 273, column: 6, scope: !360)
!364 = !DILocation(line: 273, column: 11, scope: !360)
!365 = !DILocation(line: 274, column: 1, scope: !323)
!366 = distinct !DISubprogram(name: "enh_desc_init_tx_desc", scope: !3, file: !3, line: 276, type: !95, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!367 = !DILocalVariable(name: "p", arg: 1, scope: !366, file: !3, line: 276, type: !79)
!368 = !DILocation(line: 276, column: 52, scope: !366)
!369 = !DILocalVariable(name: "mode", arg: 2, scope: !366, file: !3, line: 276, type: !33)
!370 = !DILocation(line: 276, column: 59, scope: !366)
!371 = !DILocalVariable(name: "end", arg: 3, scope: !366, file: !3, line: 276, type: !33)
!372 = !DILocation(line: 276, column: 69, scope: !366)
!373 = !DILocation(line: 278, column: 2, scope: !366)
!374 = !DILocation(line: 278, column: 5, scope: !366)
!375 = !DILocation(line: 278, column: 10, scope: !366)
!376 = !DILocation(line: 279, column: 6, scope: !377)
!377 = distinct !DILexicalBlock(scope: !366, file: !3, line: 279, column: 6)
!378 = !DILocation(line: 279, column: 11, scope: !377)
!379 = !DILocation(line: 279, column: 6, scope: !366)
!380 = !DILocation(line: 280, column: 33, scope: !377)
!381 = !DILocation(line: 280, column: 3, scope: !377)
!382 = !DILocation(line: 282, column: 32, scope: !377)
!383 = !DILocation(line: 282, column: 35, scope: !377)
!384 = !DILocation(line: 282, column: 3, scope: !377)
!385 = !DILocation(line: 283, column: 1, scope: !366)
!386 = distinct !DISubprogram(name: "enh_desc_prepare_tx_desc", scope: !3, file: !3, line: 316, type: !99, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!387 = !DILocalVariable(name: "p", arg: 1, scope: !386, file: !3, line: 316, type: !79)
!388 = !DILocation(line: 316, column: 55, scope: !386)
!389 = !DILocalVariable(name: "is_fs", arg: 2, scope: !386, file: !3, line: 316, type: !33)
!390 = !DILocation(line: 316, column: 62, scope: !386)
!391 = !DILocalVariable(name: "len", arg: 3, scope: !386, file: !3, line: 316, type: !33)
!392 = !DILocation(line: 316, column: 73, scope: !386)
!393 = !DILocalVariable(name: "csum_flag", arg: 4, scope: !386, file: !3, line: 317, type: !101)
!394 = !DILocation(line: 317, column: 15, scope: !386)
!395 = !DILocalVariable(name: "mode", arg: 5, scope: !386, file: !3, line: 317, type: !33)
!396 = !DILocation(line: 317, column: 30, scope: !386)
!397 = !DILocalVariable(name: "tx_own", arg: 6, scope: !386, file: !3, line: 317, type: !101)
!398 = !DILocation(line: 317, column: 41, scope: !386)
!399 = !DILocalVariable(name: "ls", arg: 7, scope: !386, file: !3, line: 318, type: !101)
!400 = !DILocation(line: 318, column: 15, scope: !386)
!401 = !DILocalVariable(name: "tot_pkt_len", arg: 8, scope: !386, file: !3, line: 318, type: !7)
!402 = !DILocation(line: 318, column: 32, scope: !386)
!403 = !DILocalVariable(name: "tdes0", scope: !386, file: !3, line: 320, type: !7)
!404 = !DILocation(line: 320, column: 15, scope: !386)
!405 = !DILocation(line: 320, column: 23, scope: !386)
!406 = !DILocation(line: 322, column: 6, scope: !407)
!407 = distinct !DILexicalBlock(scope: !386, file: !3, line: 322, column: 6)
!408 = !DILocation(line: 322, column: 11, scope: !407)
!409 = !DILocation(line: 322, column: 6, scope: !386)
!410 = !DILocation(line: 323, column: 32, scope: !407)
!411 = !DILocation(line: 323, column: 35, scope: !407)
!412 = !DILocation(line: 323, column: 3, scope: !407)
!413 = !DILocation(line: 325, column: 31, scope: !407)
!414 = !DILocation(line: 325, column: 34, scope: !407)
!415 = !DILocation(line: 325, column: 3, scope: !407)
!416 = !DILocation(line: 327, column: 6, scope: !417)
!417 = distinct !DILexicalBlock(scope: !386, file: !3, line: 327, column: 6)
!418 = !DILocation(line: 327, column: 6, scope: !386)
!419 = !DILocation(line: 328, column: 9, scope: !417)
!420 = !DILocation(line: 328, column: 3, scope: !417)
!421 = !DILocation(line: 330, column: 9, scope: !417)
!422 = !DILocation(line: 332, column: 6, scope: !423)
!423 = distinct !DILexicalBlock(scope: !386, file: !3, line: 332, column: 6)
!424 = !DILocation(line: 332, column: 6, scope: !386)
!425 = !DILocation(line: 333, column: 9, scope: !423)
!426 = !DILocation(line: 333, column: 3, scope: !423)
!427 = !DILocation(line: 335, column: 9, scope: !423)
!428 = !DILocation(line: 337, column: 6, scope: !429)
!429 = distinct !DILexicalBlock(scope: !386, file: !3, line: 337, column: 6)
!430 = !DILocation(line: 337, column: 6, scope: !386)
!431 = !DILocation(line: 338, column: 9, scope: !429)
!432 = !DILocation(line: 338, column: 3, scope: !429)
!433 = !DILocation(line: 341, column: 6, scope: !434)
!434 = distinct !DILexicalBlock(scope: !386, file: !3, line: 341, column: 6)
!435 = !DILocation(line: 341, column: 6, scope: !386)
!436 = !DILocation(line: 342, column: 9, scope: !434)
!437 = !DILocation(line: 342, column: 3, scope: !434)
!438 = !DILocation(line: 344, column: 6, scope: !439)
!439 = distinct !DILexicalBlock(scope: !386, file: !3, line: 344, column: 6)
!440 = !DILocation(line: 344, column: 12, scope: !439)
!441 = !DILocation(line: 344, column: 15, scope: !439)
!442 = !DILocation(line: 344, column: 6, scope: !386)
!443 = !DILocation(line: 349, column: 3, scope: !439)
!444 = !{i32 -2139764399}
!445 = !DILocation(line: 351, column: 12, scope: !386)
!446 = !DILocation(line: 351, column: 2, scope: !386)
!447 = !DILocation(line: 351, column: 5, scope: !386)
!448 = !DILocation(line: 351, column: 10, scope: !386)
!449 = !DILocation(line: 352, column: 1, scope: !386)
!450 = distinct !DISubprogram(name: "enh_desc_set_tx_owner", scope: !3, file: !3, line: 290, type: !110, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!451 = !DILocalVariable(name: "p", arg: 1, scope: !450, file: !3, line: 290, type: !79)
!452 = !DILocation(line: 290, column: 52, scope: !450)
!453 = !DILocation(line: 292, column: 2, scope: !450)
!454 = !DILocation(line: 292, column: 5, scope: !450)
!455 = !DILocation(line: 292, column: 10, scope: !450)
!456 = !DILocation(line: 293, column: 1, scope: !450)
!457 = distinct !DISubprogram(name: "enh_desc_get_tx_owner", scope: !3, file: !3, line: 285, type: !114, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!458 = !DILocalVariable(name: "p", arg: 1, scope: !457, file: !3, line: 285, type: !79)
!459 = !DILocation(line: 285, column: 51, scope: !457)
!460 = !DILocation(line: 287, column: 10, scope: !457)
!461 = !DILocation(line: 287, column: 31, scope: !457)
!462 = !DILocation(line: 287, column: 45, scope: !457)
!463 = !DILocation(line: 287, column: 2, scope: !457)
!464 = distinct !DISubprogram(name: "enh_desc_release_tx_desc", scope: !3, file: !3, line: 305, type: !118, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!465 = !DILocalVariable(name: "p", arg: 1, scope: !464, file: !3, line: 305, type: !79)
!466 = !DILocation(line: 305, column: 55, scope: !464)
!467 = !DILocalVariable(name: "mode", arg: 2, scope: !464, file: !3, line: 305, type: !33)
!468 = !DILocation(line: 305, column: 62, scope: !464)
!469 = !DILocalVariable(name: "ter", scope: !464, file: !3, line: 307, type: !33)
!470 = !DILocation(line: 307, column: 6, scope: !464)
!471 = !DILocation(line: 307, column: 13, scope: !464)
!472 = !DILocation(line: 307, column: 34, scope: !464)
!473 = !DILocation(line: 307, column: 53, scope: !464)
!474 = !DILocation(line: 307, column: 12, scope: !464)
!475 = !DILocation(line: 309, column: 9, scope: !464)
!476 = !DILocation(line: 309, column: 2, scope: !464)
!477 = !DILocation(line: 310, column: 6, scope: !478)
!478 = distinct !DILexicalBlock(scope: !464, file: !3, line: 310, column: 6)
!479 = !DILocation(line: 310, column: 11, scope: !478)
!480 = !DILocation(line: 310, column: 6, scope: !464)
!481 = !DILocation(line: 311, column: 33, scope: !478)
!482 = !DILocation(line: 311, column: 3, scope: !478)
!483 = !DILocation(line: 313, column: 32, scope: !478)
!484 = !DILocation(line: 313, column: 35, scope: !478)
!485 = !DILocation(line: 313, column: 3, scope: !478)
!486 = !DILocation(line: 314, column: 1, scope: !464)
!487 = distinct !DISubprogram(name: "enh_desc_set_tx_ic", scope: !3, file: !3, line: 354, type: !110, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!488 = !DILocalVariable(name: "p", arg: 1, scope: !487, file: !3, line: 354, type: !79)
!489 = !DILocation(line: 354, column: 49, scope: !487)
!490 = !DILocation(line: 356, column: 2, scope: !487)
!491 = !DILocation(line: 356, column: 5, scope: !487)
!492 = !DILocation(line: 356, column: 10, scope: !487)
!493 = !DILocation(line: 357, column: 1, scope: !487)
!494 = distinct !DISubprogram(name: "enh_desc_get_tx_ls", scope: !3, file: !3, line: 300, type: !114, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!495 = !DILocalVariable(name: "p", arg: 1, scope: !494, file: !3, line: 300, type: !79)
!496 = !DILocation(line: 300, column: 48, scope: !494)
!497 = !DILocation(line: 302, column: 10, scope: !494)
!498 = !DILocation(line: 302, column: 31, scope: !494)
!499 = !DILocation(line: 302, column: 54, scope: !494)
!500 = !DILocation(line: 302, column: 9, scope: !494)
!501 = !DILocation(line: 302, column: 2, scope: !494)
!502 = distinct !DISubprogram(name: "enh_desc_get_tx_status", scope: !3, file: !3, line: 15, type: !124, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!503 = !DILocalVariable(name: "data", arg: 1, scope: !502, file: !3, line: 15, type: !126)
!504 = !DILocation(line: 15, column: 41, scope: !502)
!505 = !DILocalVariable(name: "x", arg: 2, scope: !502, file: !3, line: 15, type: !127)
!506 = !DILocation(line: 15, column: 74, scope: !502)
!507 = !DILocalVariable(name: "p", arg: 3, scope: !502, file: !3, line: 16, type: !79)
!508 = !DILocation(line: 16, column: 24, scope: !502)
!509 = !DILocalVariable(name: "ioaddr", arg: 4, scope: !502, file: !3, line: 16, type: !126)
!510 = !DILocation(line: 16, column: 41, scope: !502)
!511 = !DILocalVariable(name: "stats", scope: !502, file: !3, line: 18, type: !36)
!512 = !DILocation(line: 18, column: 27, scope: !502)
!513 = !DILocation(line: 18, column: 62, scope: !502)
!514 = !DILocation(line: 18, column: 35, scope: !502)
!515 = !DILocalVariable(name: "tdes0", scope: !502, file: !3, line: 19, type: !7)
!516 = !DILocation(line: 19, column: 15, scope: !502)
!517 = !DILocation(line: 19, column: 23, scope: !502)
!518 = !DILocalVariable(name: "ret", scope: !502, file: !3, line: 20, type: !33)
!519 = !DILocation(line: 20, column: 6, scope: !502)
!520 = !DILocation(line: 23, column: 6, scope: !521)
!521 = distinct !DILexicalBlock(scope: !502, file: !3, line: 23, column: 6)
!522 = !DILocation(line: 23, column: 6, scope: !502)
!523 = !DILocation(line: 24, column: 3, scope: !521)
!524 = !DILocation(line: 27, column: 6, scope: !525)
!525 = distinct !DILexicalBlock(scope: !502, file: !3, line: 27, column: 6)
!526 = !DILocation(line: 27, column: 6, scope: !502)
!527 = !DILocation(line: 28, column: 3, scope: !525)
!528 = !DILocation(line: 30, column: 6, scope: !529)
!529 = distinct !DILexicalBlock(scope: !502, file: !3, line: 30, column: 6)
!530 = !DILocation(line: 30, column: 6, scope: !502)
!531 = !DILocation(line: 31, column: 7, scope: !532)
!532 = distinct !DILexicalBlock(scope: !533, file: !3, line: 31, column: 7)
!533 = distinct !DILexicalBlock(scope: !529, file: !3, line: 30, column: 46)
!534 = !DILocation(line: 31, column: 7, scope: !533)
!535 = !DILocation(line: 32, column: 4, scope: !532)
!536 = !DILocation(line: 32, column: 7, scope: !532)
!537 = !DILocation(line: 32, column: 16, scope: !532)
!538 = !DILocation(line: 34, column: 7, scope: !539)
!539 = distinct !DILexicalBlock(scope: !533, file: !3, line: 34, column: 7)
!540 = !DILocation(line: 34, column: 7, scope: !533)
!541 = !DILocation(line: 35, column: 4, scope: !542)
!542 = distinct !DILexicalBlock(scope: !539, file: !3, line: 34, column: 47)
!543 = !DILocation(line: 35, column: 7, scope: !542)
!544 = !DILocation(line: 35, column: 23, scope: !542)
!545 = !DILocation(line: 36, column: 28, scope: !542)
!546 = !DILocation(line: 36, column: 4, scope: !542)
!547 = !DILocation(line: 37, column: 3, scope: !542)
!548 = !DILocation(line: 39, column: 7, scope: !549)
!549 = distinct !DILexicalBlock(scope: !533, file: !3, line: 39, column: 7)
!550 = !DILocation(line: 39, column: 7, scope: !533)
!551 = !DILocation(line: 40, column: 4, scope: !552)
!552 = distinct !DILexicalBlock(scope: !549, file: !3, line: 39, column: 46)
!553 = !DILocation(line: 40, column: 7, scope: !552)
!554 = !DILocation(line: 40, column: 21, scope: !552)
!555 = !DILocation(line: 41, column: 4, scope: !552)
!556 = !DILocation(line: 41, column: 11, scope: !552)
!557 = !DILocation(line: 41, column: 28, scope: !552)
!558 = !DILocation(line: 42, column: 3, scope: !552)
!559 = !DILocation(line: 43, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !533, file: !3, line: 43, column: 7)
!561 = !DILocation(line: 43, column: 7, scope: !533)
!562 = !DILocation(line: 44, column: 4, scope: !563)
!563 = distinct !DILexicalBlock(scope: !560, file: !3, line: 43, column: 44)
!564 = !DILocation(line: 44, column: 7, scope: !563)
!565 = !DILocation(line: 44, column: 17, scope: !563)
!566 = !DILocation(line: 45, column: 4, scope: !563)
!567 = !DILocation(line: 45, column: 11, scope: !563)
!568 = !DILocation(line: 45, column: 28, scope: !563)
!569 = !DILocation(line: 46, column: 3, scope: !563)
!570 = !DILocation(line: 47, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !533, file: !3, line: 47, column: 7)
!572 = !DILocation(line: 47, column: 7, scope: !533)
!573 = !DILocation(line: 50, column: 6, scope: !571)
!574 = !DILocation(line: 50, column: 12, scope: !571)
!575 = !DILocation(line: 50, column: 43, scope: !571)
!576 = !DILocation(line: 49, column: 4, scope: !571)
!577 = !DILocation(line: 49, column: 11, scope: !571)
!578 = !DILocation(line: 49, column: 22, scope: !571)
!579 = !DILocation(line: 52, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !533, file: !3, line: 52, column: 7)
!581 = !DILocation(line: 52, column: 7, scope: !533)
!582 = !DILocation(line: 53, column: 4, scope: !580)
!583 = !DILocation(line: 53, column: 7, scope: !580)
!584 = !DILocation(line: 53, column: 18, scope: !580)
!585 = !DILocation(line: 55, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !533, file: !3, line: 55, column: 7)
!587 = !DILocation(line: 55, column: 7, scope: !533)
!588 = !DILocation(line: 56, column: 28, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !3, line: 55, column: 49)
!590 = !DILocation(line: 56, column: 4, scope: !589)
!591 = !DILocation(line: 57, column: 4, scope: !589)
!592 = !DILocation(line: 57, column: 7, scope: !589)
!593 = !DILocation(line: 57, column: 19, scope: !589)
!594 = !DILocation(line: 58, column: 3, scope: !589)
!595 = !DILocation(line: 60, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !533, file: !3, line: 60, column: 7)
!597 = !DILocation(line: 60, column: 7, scope: !533)
!598 = !DILocation(line: 61, column: 4, scope: !596)
!599 = !DILocation(line: 61, column: 7, scope: !596)
!600 = !DILocation(line: 61, column: 25, scope: !596)
!601 = !DILocation(line: 63, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !533, file: !3, line: 63, column: 7)
!603 = !DILocation(line: 63, column: 7, scope: !533)
!604 = !DILocation(line: 64, column: 4, scope: !605)
!605 = distinct !DILexicalBlock(scope: !602, file: !3, line: 63, column: 47)
!606 = !DILocation(line: 64, column: 7, scope: !605)
!607 = !DILocation(line: 64, column: 23, scope: !605)
!608 = !DILocation(line: 65, column: 28, scope: !605)
!609 = !DILocation(line: 65, column: 4, scope: !605)
!610 = !DILocation(line: 66, column: 3, scope: !605)
!611 = !DILocation(line: 68, column: 7, scope: !533)
!612 = !DILocation(line: 69, column: 2, scope: !533)
!613 = !DILocation(line: 71, column: 6, scope: !614)
!614 = distinct !DILexicalBlock(scope: !502, file: !3, line: 71, column: 6)
!615 = !DILocation(line: 71, column: 6, scope: !502)
!616 = !DILocation(line: 72, column: 3, scope: !614)
!617 = !DILocation(line: 72, column: 6, scope: !614)
!618 = !DILocation(line: 72, column: 17, scope: !614)
!619 = !DILocation(line: 75, column: 6, scope: !620)
!620 = distinct !DILexicalBlock(scope: !502, file: !3, line: 75, column: 6)
!621 = !DILocation(line: 75, column: 12, scope: !620)
!622 = !DILocation(line: 75, column: 6, scope: !502)
!623 = !DILocation(line: 76, column: 3, scope: !620)
!624 = !DILocation(line: 76, column: 6, scope: !620)
!625 = !DILocation(line: 76, column: 13, scope: !620)
!626 = !DILocation(line: 79, column: 9, scope: !502)
!627 = !DILocation(line: 79, column: 2, scope: !502)
!628 = !DILocation(line: 80, column: 1, scope: !502)
!629 = distinct !DISubprogram(name: "enh_desc_get_tx_len", scope: !3, file: !3, line: 82, type: !114, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!630 = !DILocalVariable(name: "p", arg: 1, scope: !629, file: !3, line: 82, type: !79)
!631 = !DILocation(line: 82, column: 49, scope: !629)
!632 = !DILocation(line: 84, column: 10, scope: !629)
!633 = !DILocation(line: 84, column: 31, scope: !629)
!634 = !DILocation(line: 84, column: 9, scope: !629)
!635 = !DILocation(line: 84, column: 2, scope: !629)
!636 = distinct !DISubprogram(name: "enh_desc_set_rx_owner", scope: !3, file: !3, line: 295, type: !118, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!637 = !DILocalVariable(name: "p", arg: 1, scope: !636, file: !3, line: 295, type: !79)
!638 = !DILocation(line: 295, column: 52, scope: !636)
!639 = !DILocalVariable(name: "disable_rx_ic", arg: 2, scope: !636, file: !3, line: 295, type: !33)
!640 = !DILocation(line: 295, column: 59, scope: !636)
!641 = !DILocation(line: 297, column: 2, scope: !636)
!642 = !DILocation(line: 297, column: 5, scope: !636)
!643 = !DILocation(line: 297, column: 10, scope: !636)
!644 = !DILocation(line: 298, column: 1, scope: !636)
!645 = distinct !DISubprogram(name: "enh_desc_get_rx_frame_len", scope: !3, file: !3, line: 359, type: !247, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!646 = !DILocalVariable(name: "p", arg: 1, scope: !645, file: !3, line: 359, type: !79)
!647 = !DILocation(line: 359, column: 55, scope: !645)
!648 = !DILocalVariable(name: "rx_coe_type", arg: 2, scope: !645, file: !3, line: 359, type: !33)
!649 = !DILocation(line: 359, column: 62, scope: !645)
!650 = !DILocalVariable(name: "csum", scope: !645, file: !3, line: 361, type: !7)
!651 = !DILocation(line: 361, column: 15, scope: !645)
!652 = !DILocation(line: 368, column: 6, scope: !653)
!653 = distinct !DILexicalBlock(scope: !645, file: !3, line: 368, column: 6)
!654 = !DILocation(line: 368, column: 18, scope: !653)
!655 = !DILocation(line: 368, column: 6, scope: !645)
!656 = !DILocation(line: 369, column: 8, scope: !653)
!657 = !DILocation(line: 369, column: 3, scope: !653)
!658 = !DILocation(line: 371, column: 12, scope: !645)
!659 = !DILocation(line: 371, column: 33, scope: !645)
!660 = !DILocation(line: 372, column: 5, scope: !645)
!661 = !DILocation(line: 372, column: 33, scope: !645)
!662 = !DILocation(line: 372, column: 31, scope: !645)
!663 = !DILocation(line: 371, column: 9, scope: !645)
!664 = !DILocation(line: 371, column: 2, scope: !645)
!665 = distinct !DISubprogram(name: "enh_desc_get_rx_status", scope: !3, file: !3, line: 184, type: !251, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!666 = !DILocalVariable(name: "data", arg: 1, scope: !665, file: !3, line: 184, type: !126)
!667 = !DILocation(line: 184, column: 41, scope: !665)
!668 = !DILocalVariable(name: "x", arg: 2, scope: !665, file: !3, line: 184, type: !127)
!669 = !DILocation(line: 184, column: 74, scope: !665)
!670 = !DILocalVariable(name: "p", arg: 3, scope: !665, file: !3, line: 185, type: !79)
!671 = !DILocation(line: 185, column: 24, scope: !665)
!672 = !DILocalVariable(name: "stats", scope: !665, file: !3, line: 187, type: !36)
!673 = !DILocation(line: 187, column: 27, scope: !665)
!674 = !DILocation(line: 187, column: 62, scope: !665)
!675 = !DILocation(line: 187, column: 35, scope: !665)
!676 = !DILocalVariable(name: "rdes0", scope: !665, file: !3, line: 188, type: !7)
!677 = !DILocation(line: 188, column: 15, scope: !665)
!678 = !DILocation(line: 188, column: 23, scope: !665)
!679 = !DILocalVariable(name: "ret", scope: !665, file: !3, line: 189, type: !33)
!680 = !DILocation(line: 189, column: 6, scope: !665)
!681 = !DILocation(line: 191, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !665, file: !3, line: 191, column: 6)
!683 = !DILocation(line: 191, column: 6, scope: !665)
!684 = !DILocation(line: 192, column: 3, scope: !682)
!685 = !DILocation(line: 194, column: 6, scope: !686)
!686 = distinct !DILexicalBlock(scope: !665, file: !3, line: 194, column: 6)
!687 = !DILocation(line: 194, column: 6, scope: !665)
!688 = !DILocation(line: 195, column: 3, scope: !689)
!689 = distinct !DILexicalBlock(scope: !686, file: !3, line: 194, column: 50)
!690 = !DILocation(line: 195, column: 10, scope: !689)
!691 = !DILocation(line: 195, column: 26, scope: !689)
!692 = !DILocation(line: 196, column: 3, scope: !689)
!693 = !DILocation(line: 199, column: 6, scope: !694)
!694 = distinct !DILexicalBlock(scope: !665, file: !3, line: 199, column: 6)
!695 = !DILocation(line: 199, column: 6, scope: !665)
!696 = !DILocation(line: 200, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 200, column: 7)
!698 = distinct !DILexicalBlock(scope: !694, file: !3, line: 199, column: 45)
!699 = !DILocation(line: 200, column: 7, scope: !698)
!700 = !DILocation(line: 201, column: 4, scope: !701)
!701 = distinct !DILexicalBlock(scope: !697, file: !3, line: 200, column: 49)
!702 = !DILocation(line: 201, column: 7, scope: !701)
!703 = !DILocation(line: 201, column: 14, scope: !701)
!704 = !DILocation(line: 202, column: 4, scope: !701)
!705 = !DILocation(line: 202, column: 11, scope: !701)
!706 = !DILocation(line: 202, column: 27, scope: !701)
!707 = !DILocation(line: 203, column: 3, scope: !701)
!708 = !DILocation(line: 204, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !698, file: !3, line: 204, column: 7)
!710 = !DILocation(line: 204, column: 7, scope: !698)
!711 = !DILocation(line: 205, column: 4, scope: !709)
!712 = !DILocation(line: 205, column: 7, scope: !709)
!713 = !DILocation(line: 205, column: 23, scope: !709)
!714 = !DILocation(line: 207, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !698, file: !3, line: 207, column: 7)
!716 = !DILocation(line: 207, column: 7, scope: !698)
!717 = !DILocation(line: 208, column: 4, scope: !715)
!718 = !DILocation(line: 210, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !698, file: !3, line: 210, column: 7)
!720 = !DILocation(line: 210, column: 7, scope: !698)
!721 = !DILocation(line: 211, column: 4, scope: !719)
!722 = !DILocation(line: 211, column: 11, scope: !719)
!723 = !DILocation(line: 211, column: 21, scope: !719)
!724 = !DILocation(line: 212, column: 7, scope: !725)
!725 = distinct !DILexicalBlock(scope: !698, file: !3, line: 212, column: 7)
!726 = !DILocation(line: 212, column: 7, scope: !698)
!727 = !DILocation(line: 213, column: 4, scope: !725)
!728 = !DILocation(line: 213, column: 7, scope: !725)
!729 = !DILocation(line: 213, column: 18, scope: !725)
!730 = !DILocation(line: 215, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !698, file: !3, line: 215, column: 7)
!732 = !DILocation(line: 215, column: 7, scope: !698)
!733 = !DILocation(line: 216, column: 4, scope: !731)
!734 = !DILocation(line: 216, column: 7, scope: !731)
!735 = !DILocation(line: 216, column: 13, scope: !731)
!736 = !DILocation(line: 218, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !698, file: !3, line: 218, column: 7)
!738 = !DILocation(line: 218, column: 7, scope: !698)
!739 = !DILocation(line: 219, column: 4, scope: !740)
!740 = distinct !DILexicalBlock(scope: !737, file: !3, line: 218, column: 42)
!741 = !DILocation(line: 219, column: 7, scope: !740)
!742 = !DILocation(line: 219, column: 20, scope: !740)
!743 = !DILocation(line: 220, column: 4, scope: !740)
!744 = !DILocation(line: 220, column: 11, scope: !740)
!745 = !DILocation(line: 220, column: 24, scope: !740)
!746 = !DILocation(line: 221, column: 3, scope: !740)
!747 = !DILocation(line: 222, column: 7, scope: !698)
!748 = !DILocation(line: 223, column: 2, scope: !698)
!749 = !DILocation(line: 229, column: 6, scope: !750)
!750 = distinct !DILexicalBlock(scope: !665, file: !3, line: 229, column: 6)
!751 = !DILocation(line: 229, column: 6, scope: !665)
!752 = !DILocation(line: 230, column: 31, scope: !750)
!753 = !DILocation(line: 230, column: 37, scope: !750)
!754 = !DILocation(line: 230, column: 29, scope: !750)
!755 = !DILocation(line: 230, column: 28, scope: !750)
!756 = !DILocation(line: 231, column: 10, scope: !750)
!757 = !DILocation(line: 231, column: 16, scope: !750)
!758 = !DILocation(line: 231, column: 8, scope: !750)
!759 = !DILocation(line: 231, column: 7, scope: !750)
!760 = !DILocation(line: 232, column: 10, scope: !750)
!761 = !DILocation(line: 232, column: 16, scope: !750)
!762 = !DILocation(line: 232, column: 8, scope: !750)
!763 = !DILocation(line: 232, column: 7, scope: !750)
!764 = !DILocation(line: 230, column: 9, scope: !750)
!765 = !DILocation(line: 230, column: 7, scope: !750)
!766 = !DILocation(line: 230, column: 3, scope: !750)
!767 = !DILocation(line: 234, column: 6, scope: !768)
!768 = distinct !DILexicalBlock(scope: !665, file: !3, line: 234, column: 6)
!769 = !DILocation(line: 234, column: 6, scope: !665)
!770 = !DILocation(line: 235, column: 3, scope: !768)
!771 = !DILocation(line: 235, column: 6, scope: !768)
!772 = !DILocation(line: 235, column: 19, scope: !768)
!773 = !DILocation(line: 237, column: 6, scope: !774)
!774 = distinct !DILexicalBlock(scope: !665, file: !3, line: 237, column: 6)
!775 = !DILocation(line: 237, column: 6, scope: !665)
!776 = !DILocation(line: 238, column: 3, scope: !777)
!777 = distinct !DILexicalBlock(scope: !774, file: !3, line: 237, column: 46)
!778 = !DILocation(line: 238, column: 6, scope: !777)
!779 = !DILocation(line: 238, column: 23, scope: !777)
!780 = !DILocation(line: 239, column: 7, scope: !777)
!781 = !DILocation(line: 240, column: 2, scope: !777)
!782 = !DILocation(line: 241, column: 6, scope: !783)
!783 = distinct !DILexicalBlock(scope: !665, file: !3, line: 241, column: 6)
!784 = !DILocation(line: 241, column: 6, scope: !665)
!785 = !DILocation(line: 242, column: 3, scope: !786)
!786 = distinct !DILexicalBlock(scope: !783, file: !3, line: 241, column: 46)
!787 = !DILocation(line: 242, column: 6, scope: !786)
!788 = !DILocation(line: 242, column: 23, scope: !786)
!789 = !DILocation(line: 243, column: 7, scope: !786)
!790 = !DILocation(line: 244, column: 2, scope: !786)
!791 = !DILocation(line: 245, column: 6, scope: !792)
!792 = distinct !DILexicalBlock(scope: !665, file: !3, line: 245, column: 6)
!793 = !DILocation(line: 245, column: 6, scope: !665)
!794 = !DILocation(line: 246, column: 3, scope: !795)
!795 = distinct !DILexicalBlock(scope: !792, file: !3, line: 245, column: 44)
!796 = !DILocation(line: 246, column: 6, scope: !795)
!797 = !DILocation(line: 246, column: 15, scope: !795)
!798 = !DILocation(line: 247, column: 7, scope: !795)
!799 = !DILocation(line: 248, column: 2, scope: !795)
!800 = !DILocation(line: 250, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !665, file: !3, line: 250, column: 6)
!802 = !DILocation(line: 250, column: 12, scope: !801)
!803 = !DILocation(line: 250, column: 6, scope: !665)
!804 = !DILocation(line: 251, column: 3, scope: !801)
!805 = !DILocation(line: 251, column: 6, scope: !801)
!806 = !DILocation(line: 251, column: 13, scope: !801)
!807 = !DILocation(line: 254, column: 9, scope: !665)
!808 = !DILocation(line: 254, column: 2, scope: !665)
!809 = !DILocation(line: 255, column: 1, scope: !665)
!810 = distinct !DISubprogram(name: "enh_desc_get_ext_status", scope: !3, file: !3, line: 120, type: !255, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!811 = !DILocalVariable(name: "data", arg: 1, scope: !810, file: !3, line: 120, type: !126)
!812 = !DILocation(line: 120, column: 43, scope: !810)
!813 = !DILocalVariable(name: "x", arg: 2, scope: !810, file: !3, line: 120, type: !127)
!814 = !DILocation(line: 120, column: 76, scope: !810)
!815 = !DILocalVariable(name: "p", arg: 3, scope: !810, file: !3, line: 121, type: !64)
!816 = !DILocation(line: 121, column: 35, scope: !810)
!817 = !DILocalVariable(name: "rdes0", scope: !810, file: !3, line: 123, type: !7)
!818 = !DILocation(line: 123, column: 15, scope: !810)
!819 = !DILocation(line: 123, column: 23, scope: !810)
!820 = !DILocalVariable(name: "rdes4", scope: !810, file: !3, line: 124, type: !7)
!821 = !DILocation(line: 124, column: 15, scope: !810)
!822 = !DILocation(line: 124, column: 23, scope: !810)
!823 = !DILocation(line: 126, column: 6, scope: !824)
!824 = distinct !DILexicalBlock(scope: !810, file: !3, line: 126, column: 6)
!825 = !DILocation(line: 126, column: 6, scope: !810)
!826 = !DILocalVariable(name: "message_type", scope: !827, file: !3, line: 127, type: !33)
!827 = distinct !DILexicalBlock(scope: !824, file: !3, line: 126, column: 44)
!828 = !DILocation(line: 127, column: 7, scope: !827)
!829 = !DILocation(line: 127, column: 23, scope: !827)
!830 = !DILocation(line: 127, column: 29, scope: !827)
!831 = !DILocation(line: 127, column: 53, scope: !827)
!832 = !DILocation(line: 127, column: 22, scope: !827)
!833 = !DILocation(line: 129, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !827, file: !3, line: 129, column: 7)
!835 = !DILocation(line: 129, column: 13, scope: !834)
!836 = !DILocation(line: 129, column: 7, scope: !827)
!837 = !DILocation(line: 130, column: 4, scope: !834)
!838 = !DILocation(line: 130, column: 7, scope: !834)
!839 = !DILocation(line: 130, column: 17, scope: !834)
!840 = !DILocation(line: 131, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !827, file: !3, line: 131, column: 7)
!842 = !DILocation(line: 131, column: 13, scope: !841)
!843 = !DILocation(line: 131, column: 7, scope: !827)
!844 = !DILocation(line: 132, column: 4, scope: !841)
!845 = !DILocation(line: 132, column: 7, scope: !841)
!846 = !DILocation(line: 132, column: 21, scope: !841)
!847 = !DILocation(line: 133, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !827, file: !3, line: 133, column: 7)
!849 = !DILocation(line: 133, column: 13, scope: !848)
!850 = !DILocation(line: 133, column: 7, scope: !827)
!851 = !DILocation(line: 134, column: 4, scope: !848)
!852 = !DILocation(line: 134, column: 7, scope: !848)
!853 = !DILocation(line: 134, column: 23, scope: !848)
!854 = !DILocation(line: 135, column: 7, scope: !855)
!855 = distinct !DILexicalBlock(scope: !827, file: !3, line: 135, column: 7)
!856 = !DILocation(line: 135, column: 13, scope: !855)
!857 = !DILocation(line: 135, column: 7, scope: !827)
!858 = !DILocation(line: 136, column: 4, scope: !855)
!859 = !DILocation(line: 136, column: 7, scope: !855)
!860 = !DILocation(line: 136, column: 20, scope: !855)
!861 = !DILocation(line: 137, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !827, file: !3, line: 137, column: 7)
!863 = !DILocation(line: 137, column: 13, scope: !862)
!864 = !DILocation(line: 137, column: 7, scope: !827)
!865 = !DILocation(line: 138, column: 4, scope: !862)
!866 = !DILocation(line: 138, column: 7, scope: !862)
!867 = !DILocation(line: 138, column: 20, scope: !862)
!868 = !DILocation(line: 140, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !827, file: !3, line: 140, column: 7)
!870 = !DILocation(line: 140, column: 20, scope: !869)
!871 = !DILocation(line: 140, column: 7, scope: !827)
!872 = !DILocation(line: 141, column: 4, scope: !869)
!873 = !DILocation(line: 141, column: 7, scope: !869)
!874 = !DILocation(line: 141, column: 29, scope: !869)
!875 = !DILocation(line: 142, column: 12, scope: !876)
!876 = distinct !DILexicalBlock(scope: !869, file: !3, line: 142, column: 12)
!877 = !DILocation(line: 142, column: 25, scope: !876)
!878 = !DILocation(line: 142, column: 12, scope: !869)
!879 = !DILocation(line: 143, column: 4, scope: !876)
!880 = !DILocation(line: 143, column: 7, scope: !876)
!881 = !DILocation(line: 143, column: 27, scope: !876)
!882 = !DILocation(line: 144, column: 12, scope: !883)
!883 = distinct !DILexicalBlock(scope: !876, file: !3, line: 144, column: 12)
!884 = !DILocation(line: 144, column: 25, scope: !883)
!885 = !DILocation(line: 144, column: 12, scope: !876)
!886 = !DILocation(line: 145, column: 4, scope: !883)
!887 = !DILocation(line: 145, column: 7, scope: !883)
!888 = !DILocation(line: 145, column: 32, scope: !883)
!889 = !DILocation(line: 146, column: 12, scope: !890)
!890 = distinct !DILexicalBlock(scope: !883, file: !3, line: 146, column: 12)
!891 = !DILocation(line: 146, column: 25, scope: !890)
!892 = !DILocation(line: 146, column: 12, scope: !883)
!893 = !DILocation(line: 147, column: 4, scope: !890)
!894 = !DILocation(line: 147, column: 7, scope: !890)
!895 = !DILocation(line: 147, column: 32, scope: !890)
!896 = !DILocation(line: 148, column: 12, scope: !897)
!897 = distinct !DILexicalBlock(scope: !890, file: !3, line: 148, column: 12)
!898 = !DILocation(line: 148, column: 25, scope: !897)
!899 = !DILocation(line: 148, column: 12, scope: !890)
!900 = !DILocation(line: 149, column: 4, scope: !897)
!901 = !DILocation(line: 149, column: 7, scope: !897)
!902 = !DILocation(line: 149, column: 33, scope: !897)
!903 = !DILocation(line: 150, column: 12, scope: !904)
!904 = distinct !DILexicalBlock(scope: !897, file: !3, line: 150, column: 12)
!905 = !DILocation(line: 150, column: 25, scope: !904)
!906 = !DILocation(line: 150, column: 12, scope: !897)
!907 = !DILocation(line: 151, column: 4, scope: !904)
!908 = !DILocation(line: 151, column: 7, scope: !904)
!909 = !DILocation(line: 151, column: 33, scope: !904)
!910 = !DILocation(line: 152, column: 12, scope: !911)
!911 = distinct !DILexicalBlock(scope: !904, file: !3, line: 152, column: 12)
!912 = !DILocation(line: 152, column: 25, scope: !911)
!913 = !DILocation(line: 152, column: 12, scope: !904)
!914 = !DILocation(line: 153, column: 4, scope: !911)
!915 = !DILocation(line: 153, column: 7, scope: !911)
!916 = !DILocation(line: 153, column: 34, scope: !911)
!917 = !DILocation(line: 154, column: 12, scope: !918)
!918 = distinct !DILexicalBlock(scope: !911, file: !3, line: 154, column: 12)
!919 = !DILocation(line: 154, column: 25, scope: !918)
!920 = !DILocation(line: 154, column: 12, scope: !911)
!921 = !DILocation(line: 155, column: 4, scope: !918)
!922 = !DILocation(line: 155, column: 7, scope: !918)
!923 = !DILocation(line: 155, column: 39, scope: !918)
!924 = !DILocation(line: 156, column: 12, scope: !925)
!925 = distinct !DILexicalBlock(scope: !918, file: !3, line: 156, column: 12)
!926 = !DILocation(line: 156, column: 25, scope: !925)
!927 = !DILocation(line: 156, column: 12, scope: !918)
!928 = !DILocation(line: 157, column: 4, scope: !925)
!929 = !DILocation(line: 157, column: 7, scope: !925)
!930 = !DILocation(line: 157, column: 31, scope: !925)
!931 = !DILocation(line: 158, column: 12, scope: !932)
!932 = distinct !DILexicalBlock(scope: !925, file: !3, line: 158, column: 12)
!933 = !DILocation(line: 158, column: 25, scope: !932)
!934 = !DILocation(line: 158, column: 12, scope: !925)
!935 = !DILocation(line: 159, column: 4, scope: !932)
!936 = !DILocation(line: 159, column: 7, scope: !932)
!937 = !DILocation(line: 159, column: 33, scope: !932)
!938 = !DILocation(line: 160, column: 12, scope: !939)
!939 = distinct !DILexicalBlock(scope: !932, file: !3, line: 160, column: 12)
!940 = !DILocation(line: 160, column: 25, scope: !939)
!941 = !DILocation(line: 160, column: 12, scope: !932)
!942 = !DILocation(line: 161, column: 4, scope: !939)
!943 = !DILocation(line: 161, column: 7, scope: !939)
!944 = !DILocation(line: 161, column: 35, scope: !939)
!945 = !DILocation(line: 163, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !827, file: !3, line: 163, column: 7)
!947 = !DILocation(line: 163, column: 13, scope: !946)
!948 = !DILocation(line: 163, column: 7, scope: !827)
!949 = !DILocation(line: 164, column: 4, scope: !946)
!950 = !DILocation(line: 164, column: 7, scope: !946)
!951 = !DILocation(line: 164, column: 21, scope: !946)
!952 = !DILocation(line: 165, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !827, file: !3, line: 165, column: 7)
!954 = !DILocation(line: 165, column: 13, scope: !953)
!955 = !DILocation(line: 165, column: 7, scope: !827)
!956 = !DILocation(line: 166, column: 4, scope: !953)
!957 = !DILocation(line: 166, column: 7, scope: !953)
!958 = !DILocation(line: 166, column: 14, scope: !953)
!959 = !DILocation(line: 167, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !827, file: !3, line: 167, column: 7)
!961 = !DILocation(line: 167, column: 13, scope: !960)
!962 = !DILocation(line: 167, column: 7, scope: !827)
!963 = !DILocation(line: 168, column: 4, scope: !960)
!964 = !DILocation(line: 168, column: 7, scope: !960)
!965 = !DILocation(line: 168, column: 24, scope: !960)
!966 = !DILocation(line: 169, column: 7, scope: !967)
!967 = distinct !DILexicalBlock(scope: !827, file: !3, line: 169, column: 7)
!968 = !DILocation(line: 169, column: 13, scope: !967)
!969 = !DILocation(line: 169, column: 7, scope: !827)
!970 = !DILocation(line: 170, column: 4, scope: !967)
!971 = !DILocation(line: 170, column: 7, scope: !967)
!972 = !DILocation(line: 170, column: 18, scope: !967)
!973 = !DILocation(line: 171, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !827, file: !3, line: 171, column: 7)
!975 = !DILocation(line: 171, column: 13, scope: !974)
!976 = !DILocation(line: 171, column: 7, scope: !827)
!977 = !DILocation(line: 172, column: 4, scope: !974)
!978 = !DILocation(line: 172, column: 7, scope: !974)
!979 = !DILocation(line: 172, column: 25, scope: !974)
!980 = !DILocation(line: 173, column: 8, scope: !981)
!981 = distinct !DILexicalBlock(scope: !827, file: !3, line: 173, column: 7)
!982 = !DILocation(line: 173, column: 14, scope: !981)
!983 = !DILocation(line: 173, column: 46, scope: !981)
!984 = !DILocation(line: 173, column: 7, scope: !827)
!985 = !DILocation(line: 174, column: 4, scope: !981)
!986 = !DILocation(line: 174, column: 7, scope: !981)
!987 = !DILocation(line: 174, column: 28, scope: !981)
!988 = !DILocation(line: 175, column: 7, scope: !989)
!989 = distinct !DILexicalBlock(scope: !827, file: !3, line: 175, column: 7)
!990 = !DILocation(line: 175, column: 13, scope: !989)
!991 = !DILocation(line: 175, column: 7, scope: !827)
!992 = !DILocation(line: 176, column: 4, scope: !989)
!993 = !DILocation(line: 176, column: 7, scope: !989)
!994 = !DILocation(line: 176, column: 22, scope: !989)
!995 = !DILocation(line: 177, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !827, file: !3, line: 177, column: 7)
!997 = !DILocation(line: 177, column: 13, scope: !996)
!998 = !DILocation(line: 177, column: 7, scope: !827)
!999 = !DILocation(line: 178, column: 4, scope: !996)
!1000 = !DILocation(line: 178, column: 7, scope: !996)
!1001 = !DILocation(line: 178, column: 22, scope: !996)
!1002 = !DILocation(line: 179, column: 8, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !827, file: !3, line: 179, column: 7)
!1004 = !DILocation(line: 179, column: 14, scope: !1003)
!1005 = !DILocation(line: 179, column: 49, scope: !1003)
!1006 = !DILocation(line: 179, column: 7, scope: !827)
!1007 = !DILocation(line: 180, column: 4, scope: !1003)
!1008 = !DILocation(line: 180, column: 7, scope: !1003)
!1009 = !DILocation(line: 180, column: 28, scope: !1003)
!1010 = !DILocation(line: 181, column: 2, scope: !827)
!1011 = !DILocation(line: 182, column: 1, scope: !810)
!1012 = distinct !DISubprogram(name: "enh_desc_enable_tx_timestamp", scope: !3, file: !3, line: 375, type: !110, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1013 = !DILocalVariable(name: "p", arg: 1, scope: !1012, file: !3, line: 375, type: !79)
!1014 = !DILocation(line: 375, column: 59, scope: !1012)
!1015 = !DILocation(line: 377, column: 2, scope: !1012)
!1016 = !DILocation(line: 377, column: 5, scope: !1012)
!1017 = !DILocation(line: 377, column: 10, scope: !1012)
!1018 = !DILocation(line: 378, column: 1, scope: !1012)
!1019 = distinct !DISubprogram(name: "enh_desc_get_tx_timestamp_status", scope: !3, file: !3, line: 380, type: !114, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1020 = !DILocalVariable(name: "p", arg: 1, scope: !1019, file: !3, line: 380, type: !79)
!1021 = !DILocation(line: 380, column: 62, scope: !1019)
!1022 = !DILocation(line: 382, column: 10, scope: !1019)
!1023 = !DILocation(line: 382, column: 31, scope: !1019)
!1024 = !DILocation(line: 382, column: 59, scope: !1019)
!1025 = !DILocation(line: 382, column: 9, scope: !1019)
!1026 = !DILocation(line: 382, column: 2, scope: !1019)
!1027 = distinct !DISubprogram(name: "enh_desc_get_timestamp", scope: !3, file: !3, line: 385, type: !261, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1028 = !DILocalVariable(name: "desc", arg: 1, scope: !1027, file: !3, line: 385, type: !126)
!1029 = !DILocation(line: 385, column: 42, scope: !1027)
!1030 = !DILocalVariable(name: "ats", arg: 2, scope: !1027, file: !3, line: 385, type: !34)
!1031 = !DILocation(line: 385, column: 52, scope: !1027)
!1032 = !DILocalVariable(name: "ts", arg: 3, scope: !1027, file: !3, line: 385, type: !80)
!1033 = !DILocation(line: 385, column: 62, scope: !1027)
!1034 = !DILocalVariable(name: "ns", scope: !1027, file: !3, line: 387, type: !81)
!1035 = !DILocation(line: 387, column: 6, scope: !1027)
!1036 = !DILocation(line: 389, column: 6, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 389, column: 6)
!1038 = !DILocation(line: 389, column: 6, scope: !1027)
!1039 = !DILocalVariable(name: "p", scope: !1040, file: !3, line: 390, type: !64)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 389, column: 11)
!1041 = !DILocation(line: 390, column: 29, scope: !1040)
!1042 = !DILocation(line: 390, column: 61, scope: !1040)
!1043 = !DILocation(line: 390, column: 33, scope: !1040)
!1044 = !DILocation(line: 391, column: 8, scope: !1040)
!1045 = !DILocation(line: 391, column: 6, scope: !1040)
!1046 = !DILocation(line: 393, column: 9, scope: !1040)
!1047 = !DILocation(line: 393, column: 30, scope: !1040)
!1048 = !DILocation(line: 393, column: 6, scope: !1040)
!1049 = !DILocation(line: 394, column: 2, scope: !1040)
!1050 = !DILocalVariable(name: "p", scope: !1051, file: !3, line: 395, type: !79)
!1051 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 394, column: 9)
!1052 = !DILocation(line: 395, column: 20, scope: !1051)
!1053 = !DILocation(line: 395, column: 43, scope: !1051)
!1054 = !DILocation(line: 395, column: 24, scope: !1051)
!1055 = !DILocation(line: 396, column: 8, scope: !1051)
!1056 = !DILocation(line: 396, column: 6, scope: !1051)
!1057 = !DILocation(line: 397, column: 9, scope: !1051)
!1058 = !DILocation(line: 397, column: 30, scope: !1051)
!1059 = !DILocation(line: 397, column: 6, scope: !1051)
!1060 = !DILocation(line: 400, column: 8, scope: !1027)
!1061 = !DILocation(line: 400, column: 3, scope: !1027)
!1062 = !DILocation(line: 400, column: 6, scope: !1027)
!1063 = !DILocation(line: 401, column: 1, scope: !1027)
!1064 = distinct !DISubprogram(name: "enh_desc_get_rx_timestamp_status", scope: !3, file: !3, line: 403, type: !265, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1065 = !DILocalVariable(name: "desc", arg: 1, scope: !1064, file: !3, line: 403, type: !126)
!1066 = !DILocation(line: 403, column: 51, scope: !1064)
!1067 = !DILocalVariable(name: "next_desc", arg: 2, scope: !1064, file: !3, line: 403, type: !126)
!1068 = !DILocation(line: 403, column: 63, scope: !1064)
!1069 = !DILocalVariable(name: "ats", arg: 3, scope: !1064, file: !3, line: 404, type: !34)
!1070 = !DILocation(line: 404, column: 14, scope: !1064)
!1071 = !DILocation(line: 406, column: 6, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 406, column: 6)
!1073 = !DILocation(line: 406, column: 6, scope: !1064)
!1074 = !DILocalVariable(name: "p", scope: !1075, file: !3, line: 407, type: !64)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 406, column: 11)
!1076 = !DILocation(line: 407, column: 29, scope: !1075)
!1077 = !DILocation(line: 407, column: 61, scope: !1075)
!1078 = !DILocation(line: 407, column: 33, scope: !1075)
!1079 = !DILocation(line: 408, column: 11, scope: !1075)
!1080 = !DILocation(line: 408, column: 38, scope: !1075)
!1081 = !DILocation(line: 408, column: 62, scope: !1075)
!1082 = !DILocation(line: 408, column: 10, scope: !1075)
!1083 = !DILocation(line: 408, column: 3, scope: !1075)
!1084 = !DILocalVariable(name: "p", scope: !1085, file: !3, line: 410, type: !79)
!1085 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 409, column: 9)
!1086 = !DILocation(line: 410, column: 20, scope: !1085)
!1087 = !DILocation(line: 410, column: 43, scope: !1085)
!1088 = !DILocation(line: 410, column: 24, scope: !1085)
!1089 = !DILocation(line: 411, column: 8, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 411, column: 7)
!1091 = !DILocation(line: 411, column: 29, scope: !1090)
!1092 = !DILocation(line: 411, column: 44, scope: !1090)
!1093 = !DILocation(line: 412, column: 8, scope: !1090)
!1094 = !DILocation(line: 412, column: 29, scope: !1090)
!1095 = !DILocation(line: 411, column: 7, scope: !1085)
!1096 = !DILocation(line: 414, column: 4, scope: !1090)
!1097 = !DILocation(line: 416, column: 4, scope: !1090)
!1098 = !DILocation(line: 418, column: 1, scope: !1064)
!1099 = distinct !DISubprogram(name: "enh_desc_display_ring", scope: !3, file: !3, line: 420, type: !269, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1100 = !DILocalVariable(name: "head", arg: 1, scope: !1099, file: !3, line: 420, type: !126)
!1101 = !DILocation(line: 420, column: 41, scope: !1099)
!1102 = !DILocalVariable(name: "size", arg: 2, scope: !1099, file: !3, line: 420, type: !7)
!1103 = !DILocation(line: 420, column: 60, scope: !1099)
!1104 = !DILocalVariable(name: "rx", arg: 3, scope: !1099, file: !3, line: 420, type: !101)
!1105 = !DILocation(line: 420, column: 71, scope: !1099)
!1106 = !DILocalVariable(name: "ep", scope: !1099, file: !3, line: 422, type: !64)
!1107 = !DILocation(line: 422, column: 28, scope: !1099)
!1108 = !DILocation(line: 422, column: 61, scope: !1099)
!1109 = !DILocation(line: 422, column: 33, scope: !1099)
!1110 = !DILocalVariable(name: "i", scope: !1099, file: !3, line: 423, type: !33)
!1111 = !DILocation(line: 423, column: 6, scope: !1099)
!1112 = !DILocation(line: 425, column: 2, scope: !1099)
!1113 = !DILocation(line: 427, column: 9, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 427, column: 2)
!1115 = !DILocation(line: 427, column: 7, scope: !1114)
!1116 = !DILocation(line: 427, column: 14, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 427, column: 2)
!1118 = !DILocation(line: 427, column: 18, scope: !1117)
!1119 = !DILocation(line: 427, column: 16, scope: !1117)
!1120 = !DILocation(line: 427, column: 2, scope: !1114)
!1121 = !DILocalVariable(name: "x", scope: !1122, file: !3, line: 428, type: !81)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 427, column: 29)
!1123 = !DILocation(line: 428, column: 7, scope: !1122)
!1124 = !DILocation(line: 430, column: 15, scope: !1122)
!1125 = !DILocation(line: 430, column: 7, scope: !1122)
!1126 = !DILocation(line: 430, column: 5, scope: !1122)
!1127 = !DILocation(line: 431, column: 3, scope: !1122)
!1128 = !DILocation(line: 435, column: 5, scope: !1122)
!1129 = !DILocation(line: 436, column: 2, scope: !1122)
!1130 = !DILocation(line: 427, column: 25, scope: !1117)
!1131 = !DILocation(line: 427, column: 2, scope: !1117)
!1132 = distinct !{!1132, !1120, !1133}
!1133 = !DILocation(line: 436, column: 2, scope: !1114)
!1134 = !DILocation(line: 437, column: 2, scope: !1099)
!1135 = !DILocation(line: 438, column: 1, scope: !1099)
!1136 = distinct !DISubprogram(name: "enh_desc_get_addr", scope: !3, file: !3, line: 440, type: !277, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1137 = !DILocalVariable(name: "p", arg: 1, scope: !1136, file: !3, line: 440, type: !79)
!1138 = !DILocation(line: 440, column: 48, scope: !1136)
!1139 = !DILocalVariable(name: "addr", arg: 2, scope: !1136, file: !3, line: 440, type: !279)
!1140 = !DILocation(line: 440, column: 65, scope: !1136)
!1141 = !DILocation(line: 442, column: 10, scope: !1136)
!1142 = !DILocation(line: 442, column: 3, scope: !1136)
!1143 = !DILocation(line: 442, column: 8, scope: !1136)
!1144 = !DILocation(line: 443, column: 1, scope: !1136)
!1145 = distinct !DISubprogram(name: "enh_desc_set_addr", scope: !3, file: !3, line: 445, type: !282, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1146 = !DILocalVariable(name: "p", arg: 1, scope: !1145, file: !3, line: 445, type: !79)
!1147 = !DILocation(line: 445, column: 48, scope: !1145)
!1148 = !DILocalVariable(name: "addr", arg: 2, scope: !1145, file: !3, line: 445, type: !284)
!1149 = !DILocation(line: 445, column: 62, scope: !1145)
!1150 = !DILocation(line: 447, column: 12, scope: !1145)
!1151 = !DILocation(line: 447, column: 2, scope: !1145)
!1152 = !DILocation(line: 447, column: 5, scope: !1145)
!1153 = !DILocation(line: 447, column: 10, scope: !1145)
!1154 = !DILocation(line: 448, column: 1, scope: !1145)
!1155 = distinct !DISubprogram(name: "enh_desc_clear", scope: !3, file: !3, line: 450, type: !110, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1156 = !DILocalVariable(name: "p", arg: 1, scope: !1155, file: !3, line: 450, type: !79)
!1157 = !DILocation(line: 450, column: 45, scope: !1155)
!1158 = !DILocation(line: 452, column: 2, scope: !1155)
!1159 = !DILocation(line: 452, column: 5, scope: !1155)
!1160 = !DILocation(line: 452, column: 10, scope: !1155)
!1161 = !DILocation(line: 453, column: 1, scope: !1155)
!1162 = distinct !DISubprogram(name: "ehn_desc_rx_set_on_chain", scope: !1163, file: !1163, line: 91, type: !110, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1163 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/descs_com.h", directory: "/home/lizy2001/genbc/linux")
!1164 = !DILocalVariable(name: "p", arg: 1, scope: !1162, file: !1163, line: 91, type: !79)
!1165 = !DILocation(line: 91, column: 62, scope: !1162)
!1166 = !DILocation(line: 93, column: 2, scope: !1162)
!1167 = !DILocation(line: 93, column: 5, scope: !1162)
!1168 = !DILocation(line: 93, column: 10, scope: !1162)
!1169 = !DILocation(line: 94, column: 1, scope: !1162)
!1170 = distinct !DISubprogram(name: "ehn_desc_rx_set_on_ring", scope: !1163, file: !1163, line: 22, type: !95, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1171 = !DILocalVariable(name: "p", arg: 1, scope: !1170, file: !1163, line: 22, type: !79)
!1172 = !DILocation(line: 22, column: 61, scope: !1170)
!1173 = !DILocalVariable(name: "end", arg: 2, scope: !1170, file: !1163, line: 22, type: !33)
!1174 = !DILocation(line: 22, column: 68, scope: !1170)
!1175 = !DILocalVariable(name: "bfsize", arg: 3, scope: !1170, file: !1163, line: 23, type: !33)
!1176 = !DILocation(line: 23, column: 13, scope: !1170)
!1177 = !DILocation(line: 25, column: 6, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1170, file: !1163, line: 25, column: 6)
!1179 = !DILocation(line: 25, column: 13, scope: !1178)
!1180 = !DILocation(line: 25, column: 6, scope: !1170)
!1181 = !DILocation(line: 26, column: 3, scope: !1178)
!1182 = !DILocation(line: 26, column: 6, scope: !1178)
!1183 = !DILocation(line: 26, column: 11, scope: !1178)
!1184 = !DILocation(line: 30, column: 6, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1170, file: !1163, line: 30, column: 6)
!1186 = !DILocation(line: 30, column: 6, scope: !1170)
!1187 = !DILocation(line: 31, column: 3, scope: !1185)
!1188 = !DILocation(line: 31, column: 6, scope: !1185)
!1189 = !DILocation(line: 31, column: 11, scope: !1185)
!1190 = !DILocation(line: 32, column: 1, scope: !1170)
!1191 = distinct !DISubprogram(name: "enh_desc_end_tx_desc_on_chain", scope: !1163, file: !1163, line: 96, type: !110, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1192 = !DILocalVariable(name: "p", arg: 1, scope: !1191, file: !1163, line: 96, type: !79)
!1193 = !DILocation(line: 96, column: 67, scope: !1191)
!1194 = !DILocation(line: 98, column: 2, scope: !1191)
!1195 = !DILocation(line: 98, column: 5, scope: !1191)
!1196 = !DILocation(line: 98, column: 10, scope: !1191)
!1197 = !DILocation(line: 99, column: 1, scope: !1191)
!1198 = distinct !DISubprogram(name: "enh_desc_end_tx_desc_on_ring", scope: !1163, file: !1163, line: 34, type: !118, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1199 = !DILocalVariable(name: "p", arg: 1, scope: !1198, file: !1163, line: 34, type: !79)
!1200 = !DILocation(line: 34, column: 66, scope: !1198)
!1201 = !DILocalVariable(name: "end", arg: 2, scope: !1198, file: !1163, line: 34, type: !33)
!1202 = !DILocation(line: 34, column: 73, scope: !1198)
!1203 = !DILocation(line: 36, column: 6, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !1163, line: 36, column: 6)
!1205 = !DILocation(line: 36, column: 6, scope: !1198)
!1206 = !DILocation(line: 37, column: 3, scope: !1204)
!1207 = !DILocation(line: 37, column: 6, scope: !1204)
!1208 = !DILocation(line: 37, column: 11, scope: !1204)
!1209 = !DILocation(line: 39, column: 3, scope: !1204)
!1210 = !DILocation(line: 39, column: 6, scope: !1204)
!1211 = !DILocation(line: 39, column: 11, scope: !1204)
!1212 = !DILocation(line: 40, column: 1, scope: !1198)
!1213 = distinct !DISubprogram(name: "enh_set_tx_desc_len_on_chain", scope: !1163, file: !1163, line: 101, type: !118, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1214 = !DILocalVariable(name: "p", arg: 1, scope: !1213, file: !1163, line: 101, type: !79)
!1215 = !DILocation(line: 101, column: 66, scope: !1213)
!1216 = !DILocalVariable(name: "len", arg: 2, scope: !1213, file: !1163, line: 101, type: !33)
!1217 = !DILocation(line: 101, column: 73, scope: !1213)
!1218 = !DILocation(line: 103, column: 13, scope: !1213)
!1219 = !DILocation(line: 103, column: 2, scope: !1213)
!1220 = !DILocation(line: 103, column: 5, scope: !1213)
!1221 = !DILocation(line: 103, column: 10, scope: !1213)
!1222 = !DILocation(line: 104, column: 1, scope: !1213)
!1223 = distinct !DISubprogram(name: "enh_set_tx_desc_len_on_ring", scope: !1163, file: !1163, line: 42, type: !118, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1224 = !DILocalVariable(name: "p", arg: 1, scope: !1223, file: !1163, line: 42, type: !79)
!1225 = !DILocation(line: 42, column: 65, scope: !1223)
!1226 = !DILocalVariable(name: "len", arg: 2, scope: !1223, file: !1163, line: 42, type: !33)
!1227 = !DILocation(line: 42, column: 72, scope: !1223)
!1228 = !DILocation(line: 44, column: 6, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1223, file: !1163, line: 44, column: 6)
!1230 = !DILocation(line: 44, column: 6, scope: !1223)
!1231 = !DILocation(line: 45, column: 14, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !1163, line: 44, column: 37)
!1233 = !DILocation(line: 45, column: 3, scope: !1232)
!1234 = !DILocation(line: 45, column: 6, scope: !1232)
!1235 = !DILocation(line: 45, column: 11, scope: !1232)
!1236 = !DILocation(line: 49, column: 2, scope: !1232)
!1237 = !DILocation(line: 50, column: 14, scope: !1229)
!1238 = !DILocation(line: 50, column: 3, scope: !1229)
!1239 = !DILocation(line: 50, column: 6, scope: !1229)
!1240 = !DILocation(line: 50, column: 11, scope: !1229)
!1241 = !DILocation(line: 51, column: 1, scope: !1223)
!1242 = distinct !DISubprogram(name: "enh_desc_coe_rdes0", scope: !3, file: !3, line: 87, type: !1243, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!33, !33, !33, !33}
!1245 = !DILocalVariable(name: "ipc_err", arg: 1, scope: !1242, file: !3, line: 87, type: !33)
!1246 = !DILocation(line: 87, column: 35, scope: !1242)
!1247 = !DILocalVariable(name: "type", arg: 2, scope: !1242, file: !3, line: 87, type: !33)
!1248 = !DILocation(line: 87, column: 48, scope: !1242)
!1249 = !DILocalVariable(name: "payload_err", arg: 3, scope: !1242, file: !3, line: 87, type: !33)
!1250 = !DILocation(line: 87, column: 58, scope: !1242)
!1251 = !DILocalVariable(name: "ret", scope: !1242, file: !3, line: 89, type: !33)
!1252 = !DILocation(line: 89, column: 6, scope: !1242)
!1253 = !DILocalVariable(name: "status", scope: !1242, file: !3, line: 90, type: !34)
!1254 = !DILocation(line: 90, column: 6, scope: !1242)
!1255 = !DILocation(line: 90, column: 16, scope: !1242)
!1256 = !DILocation(line: 90, column: 21, scope: !1242)
!1257 = !DILocation(line: 90, column: 28, scope: !1242)
!1258 = !DILocation(line: 90, column: 36, scope: !1242)
!1259 = !DILocation(line: 90, column: 26, scope: !1242)
!1260 = !DILocation(line: 90, column: 43, scope: !1242)
!1261 = !DILocation(line: 90, column: 41, scope: !1242)
!1262 = !DILocation(line: 90, column: 56, scope: !1242)
!1263 = !DILocation(line: 103, column: 6, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 103, column: 6)
!1265 = !DILocation(line: 103, column: 13, scope: !1264)
!1266 = !DILocation(line: 103, column: 6, scope: !1242)
!1267 = !DILocation(line: 104, column: 7, scope: !1264)
!1268 = !DILocation(line: 104, column: 3, scope: !1264)
!1269 = !DILocation(line: 105, column: 11, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 105, column: 11)
!1271 = !DILocation(line: 105, column: 18, scope: !1270)
!1272 = !DILocation(line: 105, column: 11, scope: !1264)
!1273 = !DILocation(line: 106, column: 7, scope: !1270)
!1274 = !DILocation(line: 106, column: 3, scope: !1270)
!1275 = !DILocation(line: 107, column: 11, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 107, column: 11)
!1277 = !DILocation(line: 107, column: 18, scope: !1276)
!1278 = !DILocation(line: 107, column: 11, scope: !1270)
!1279 = !DILocation(line: 108, column: 7, scope: !1276)
!1280 = !DILocation(line: 108, column: 3, scope: !1276)
!1281 = !DILocation(line: 109, column: 11, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 109, column: 11)
!1283 = !DILocation(line: 109, column: 18, scope: !1282)
!1284 = !DILocation(line: 109, column: 11, scope: !1276)
!1285 = !DILocation(line: 110, column: 7, scope: !1282)
!1286 = !DILocation(line: 110, column: 3, scope: !1282)
!1287 = !DILocation(line: 111, column: 11, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 111, column: 11)
!1289 = !DILocation(line: 111, column: 18, scope: !1288)
!1290 = !DILocation(line: 111, column: 11, scope: !1282)
!1291 = !DILocation(line: 112, column: 7, scope: !1288)
!1292 = !DILocation(line: 112, column: 3, scope: !1288)
!1293 = !DILocation(line: 113, column: 11, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 113, column: 11)
!1295 = !DILocation(line: 113, column: 18, scope: !1294)
!1296 = !DILocation(line: 113, column: 11, scope: !1288)
!1297 = !DILocation(line: 114, column: 7, scope: !1294)
!1298 = !DILocation(line: 114, column: 3, scope: !1294)
!1299 = !DILocation(line: 115, column: 11, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 115, column: 11)
!1301 = !DILocation(line: 115, column: 18, scope: !1300)
!1302 = !DILocation(line: 115, column: 11, scope: !1294)
!1303 = !DILocation(line: 116, column: 7, scope: !1300)
!1304 = !DILocation(line: 116, column: 3, scope: !1300)
!1305 = !DILocation(line: 117, column: 9, scope: !1242)
!1306 = !DILocation(line: 117, column: 2, scope: !1242)
!1307 = distinct !DISubprogram(name: "virt_to_phys", scope: !1308, file: !1308, line: 129, type: !1309, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1308 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !102, line: 153, baseType: !81)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1314 = !DILocalVariable(name: "address", arg: 1, scope: !1307, file: !1308, line: 129, type: !1312)
!1315 = !DILocation(line: 129, column: 55, scope: !1307)
!1316 = !DILocation(line: 131, column: 9, scope: !1307)
!1317 = !DILocation(line: 131, column: 2, scope: !1307)
!1318 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !1319, file: !1319, line: 18, type: !1320, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!1319 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!41, !41}
!1322 = !DILocalVariable(name: "x", arg: 1, scope: !1318, file: !1319, line: 18, type: !41)
!1323 = !DILocation(line: 18, column: 63, scope: !1318)
!1324 = !DILocalVariable(name: "y", scope: !1318, file: !1319, line: 20, type: !41)
!1325 = !DILocation(line: 20, column: 16, scope: !1318)
!1326 = !DILocation(line: 20, column: 20, scope: !1318)
!1327 = !DILocation(line: 20, column: 22, scope: !1318)
!1328 = !DILocation(line: 23, column: 6, scope: !1318)
!1329 = !DILocation(line: 23, column: 12, scope: !1318)
!1330 = !DILocation(line: 23, column: 16, scope: !1318)
!1331 = !DILocation(line: 23, column: 14, scope: !1318)
!1332 = !DILocation(line: 23, column: 11, scope: !1318)
!1333 = !DILocation(line: 23, column: 21, scope: !1318)
!1334 = !DILocation(line: 23, column: 55, scope: !1318)
!1335 = !DILocation(line: 23, column: 53, scope: !1318)
!1336 = !DILocation(line: 23, column: 8, scope: !1318)
!1337 = !DILocation(line: 23, column: 4, scope: !1318)
!1338 = !DILocation(line: 25, column: 9, scope: !1318)
!1339 = !DILocation(line: 25, column: 2, scope: !1318)
