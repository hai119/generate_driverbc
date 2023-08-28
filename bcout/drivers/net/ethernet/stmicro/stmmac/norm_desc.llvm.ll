; ModuleID = '../bcout/drivers/net/ethernet/stmicro/stmmac/norm_desc.llvm.bc'
source_filename = "drivers/net/ethernet/stmicro/stmmac/norm_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.stmmac_desc_ops = type { void (%struct.dma_desc*, i32, i32, i32, i32)*, void (%struct.dma_desc*, i32, i32)*, void (%struct.dma_desc*, i32, i32, i1, i32, i1, i1, i32)*, void (%struct.dma_desc*, i32, i32, i32, i1, i1, i32, i32)*, void (%struct.dma_desc*)*, i32 (%struct.dma_desc*)*, void (%struct.dma_desc*, i32)*, void (%struct.dma_desc*)*, i32 (%struct.dma_desc*)*, i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*, i8*)*, i32 (%struct.dma_desc*)*, void (%struct.dma_desc*, i32)*, i32 (%struct.dma_desc*, i32)*, i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*)*, void (i8*, %struct.stmmac_extra_stats*, %struct.dma_extended_desc*)*, void (%struct.dma_desc*)*, i32 (%struct.dma_desc*)*, void (i8*, i32, i64*)*, i32 (i8*, i8*, i32)*, void (i8*, i32, i1)*, void (%struct.dma_desc*, i32)*, void (%struct.dma_desc*, i32*)*, void (%struct.dma_desc*, i64)*, void (%struct.dma_desc*)*, i32 (%struct.dma_desc*, i32*, i32*)*, void (%struct.dma_desc*, i32*)*, void (%struct.dma_desc*, i64)*, void (%struct.dma_desc*, i32)*, void (%struct.dma_desc*, i16, i16, i32)*, void (%struct.dma_desc*, i32)*, void (%struct.dma_edesc*, i32, i32)* }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [56 x i8] }
%struct.dma_extended_desc = type { %struct.dma_desc, i32, i32, i32, i32 }
%struct.dma_edesc = type { i32, i32, i32, i32, %struct.dma_desc }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@ndesc_ops = dso_local constant %struct.stmmac_desc_ops { void (%struct.dma_desc*, i32, i32, i32, i32)* @ndesc_init_rx_desc, void (%struct.dma_desc*, i32, i32)* @ndesc_init_tx_desc, void (%struct.dma_desc*, i32, i32, i1, i32, i1, i1, i32)* @ndesc_prepare_tx_desc, void (%struct.dma_desc*, i32, i32, i32, i1, i1, i32, i32)* null, void (%struct.dma_desc*)* @ndesc_set_tx_owner, i32 (%struct.dma_desc*)* @ndesc_get_tx_owner, void (%struct.dma_desc*, i32)* @ndesc_release_tx_desc, void (%struct.dma_desc*)* @ndesc_set_tx_ic, i32 (%struct.dma_desc*)* @ndesc_get_tx_ls, i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*, i8*)* @ndesc_get_tx_status, i32 (%struct.dma_desc*)* @ndesc_get_tx_len, void (%struct.dma_desc*, i32)* @ndesc_set_rx_owner, i32 (%struct.dma_desc*, i32)* @ndesc_get_rx_frame_len, i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*)* @ndesc_get_rx_status, void (i8*, %struct.stmmac_extra_stats*, %struct.dma_extended_desc*)* null, void (%struct.dma_desc*)* @ndesc_enable_tx_timestamp, i32 (%struct.dma_desc*)* @ndesc_get_tx_timestamp_status, void (i8*, i32, i64*)* @ndesc_get_timestamp, i32 (i8*, i8*, i32)* @ndesc_get_rx_timestamp_status, void (i8*, i32, i1)* @ndesc_display_ring, void (%struct.dma_desc*, i32)* null, void (%struct.dma_desc*, i32*)* @ndesc_get_addr, void (%struct.dma_desc*, i64)* @ndesc_set_addr, void (%struct.dma_desc*)* @ndesc_clear, i32 (%struct.dma_desc*, i32*, i32*)* null, void (%struct.dma_desc*, i32*)* null, void (%struct.dma_desc*, i64)* null, void (%struct.dma_desc*, i32)* null, void (%struct.dma_desc*, i16, i16, i32)* null, void (%struct.dma_desc*, i32)* null, void (%struct.dma_edesc*, i32, i32)* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c"\016%s descriptor ring:\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\016%03d [0x%x]: 0x%x 0x%x 0x%x 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\016\0A\00", align 1
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_init_rx_desc(%struct.dma_desc* %p, i32 %disable_rx_ic, i32 %mode, i32 %end, i32 %bfsize) #0 !dbg !323 {
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
  store i32 2047, i32* %__UNIQUE_ID___y325, align 4, !dbg !342
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
  %and = and i64 %conv, 2047, !dbg !345
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
  %13 = load i32, i32* %end.addr, align 4, !dbg !354
  call void @ndesc_rx_set_on_chain(%struct.dma_desc* %12, i32 %13) #4, !dbg !355
  br label %if.end, !dbg !355

if.else:                                          ; preds = %cond.end
  %14 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !356
  %15 = load i32, i32* %end.addr, align 4, !dbg !357
  %16 = load i32, i32* %bfsize.addr, align 4, !dbg !358
  call void @ndesc_rx_set_on_ring(%struct.dma_desc* %14, i32 %15, i32 %16) #4, !dbg !359
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load i32, i32* %disable_rx_ic.addr, align 4, !dbg !360
  %tobool = icmp ne i32 %17, 0, !dbg !360
  br i1 %tobool, label %if.then5, label %if.end8, !dbg !362

if.then5:                                         ; preds = %if.end
  %18 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !363
  %des16 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %18, i32 0, i32 1, !dbg !364
  %19 = load i32, i32* %des16, align 4, !dbg !365
  %or7 = or i32 %19, -2147483648, !dbg !365
  store i32 %or7, i32* %des16, align 4, !dbg !365
  br label %if.end8, !dbg !363

if.end8:                                          ; preds = %if.then5, %if.end
  ret void, !dbg !366
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_init_tx_desc(%struct.dma_desc* %p, i32 %mode, i32 %end) #0 !dbg !367 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %mode.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !368, metadata !DIExpression()), !dbg !369
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !370, metadata !DIExpression()), !dbg !371
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !374
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !375
  %1 = load i32, i32* %des0, align 4, !dbg !376
  %and = and i32 %1, 2147483647, !dbg !376
  store i32 %and, i32* %des0, align 4, !dbg !376
  %2 = load i32, i32* %mode.addr, align 4, !dbg !377
  %cmp = icmp eq i32 %2, 1, !dbg !379
  br i1 %cmp, label %if.then, label %if.else, !dbg !380

if.then:                                          ; preds = %entry
  %3 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !381
  call void @ndesc_tx_set_on_chain(%struct.dma_desc* %3) #4, !dbg !382
  br label %if.end, !dbg !382

if.else:                                          ; preds = %entry
  %4 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !383
  %5 = load i32, i32* %end.addr, align 4, !dbg !384
  call void @ndesc_end_tx_desc_on_ring(%struct.dma_desc* %4, i32 %5) #4, !dbg !385
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !386
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_prepare_tx_desc(%struct.dma_desc* %p, i32 %is_fs, i32 %len, i1 zeroext %csum_flag, i32 %mode, i1 zeroext %tx_own, i1 zeroext %ls, i32 %tot_pkt_len) #0 !dbg !387 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %is_fs.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %csum_flag.addr = alloca i8, align 1
  %mode.addr = alloca i32, align 4
  %tx_own.addr = alloca i8, align 1
  %ls.addr = alloca i8, align 1
  %tot_pkt_len.addr = alloca i32, align 4
  %tdes1 = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !388, metadata !DIExpression()), !dbg !389
  store i32 %is_fs, i32* %is_fs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %is_fs.addr, metadata !390, metadata !DIExpression()), !dbg !391
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %frombool = zext i1 %csum_flag to i8
  store i8 %frombool, i8* %csum_flag.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %csum_flag.addr, metadata !394, metadata !DIExpression()), !dbg !395
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %frombool1 = zext i1 %tx_own to i8
  store i8 %frombool1, i8* %tx_own.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tx_own.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %frombool2 = zext i1 %ls to i8
  store i8 %frombool2, i8* %ls.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ls.addr, metadata !400, metadata !DIExpression()), !dbg !401
  store i32 %tot_pkt_len, i32* %tot_pkt_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tot_pkt_len.addr, metadata !402, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.declare(metadata i32* %tdes1, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !406
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 1, !dbg !406
  %1 = load i32, i32* %des1, align 4, !dbg !406
  store i32 %1, i32* %tdes1, align 4, !dbg !405
  %2 = load i32, i32* %is_fs.addr, align 4, !dbg !407
  %tobool = icmp ne i32 %2, 0, !dbg !407
  br i1 %tobool, label %if.then, label %if.else, !dbg !409

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %tdes1, align 4, !dbg !410
  %conv = zext i32 %3 to i64, !dbg !410
  %or = or i64 %conv, 536870912, !dbg !410
  %conv3 = trunc i64 %or to i32, !dbg !410
  store i32 %conv3, i32* %tdes1, align 4, !dbg !410
  br label %if.end, !dbg !411

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %tdes1, align 4, !dbg !412
  %conv4 = zext i32 %4 to i64, !dbg !412
  %and = and i64 %conv4, -536870913, !dbg !412
  %conv5 = trunc i64 %and to i32, !dbg !412
  store i32 %conv5, i32* %tdes1, align 4, !dbg !412
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i8, i8* %csum_flag.addr, align 1, !dbg !413
  %tobool6 = trunc i8 %5 to i1, !dbg !413
  %lnot = xor i1 %tobool6, true, !dbg !413
  %lnot7 = xor i1 %lnot, true, !dbg !413
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !413
  %conv8 = sext i32 %lnot.ext to i64, !dbg !413
  %tobool9 = icmp ne i64 %conv8, 0, !dbg !413
  br i1 %tobool9, label %if.then10, label %if.else12, !dbg !415

if.then10:                                        ; preds = %if.end
  %6 = load i32, i32* %tdes1, align 4, !dbg !416
  %or11 = or i32 %6, 402653184, !dbg !416
  store i32 %or11, i32* %tdes1, align 4, !dbg !416
  br label %if.end14, !dbg !417

if.else12:                                        ; preds = %if.end
  %7 = load i32, i32* %tdes1, align 4, !dbg !418
  %and13 = and i32 %7, -402653185, !dbg !418
  store i32 %and13, i32* %tdes1, align 4, !dbg !418
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then10
  %8 = load i8, i8* %ls.addr, align 1, !dbg !419
  %tobool15 = trunc i8 %8 to i1, !dbg !419
  br i1 %tobool15, label %if.then16, label %if.end20, !dbg !421

if.then16:                                        ; preds = %if.end14
  %9 = load i32, i32* %tdes1, align 4, !dbg !422
  %conv17 = zext i32 %9 to i64, !dbg !422
  %or18 = or i64 %conv17, 1073741824, !dbg !422
  %conv19 = trunc i64 %or18 to i32, !dbg !422
  store i32 %conv19, i32* %tdes1, align 4, !dbg !422
  br label %if.end20, !dbg !423

if.end20:                                         ; preds = %if.then16, %if.end14
  %10 = load i32, i32* %tdes1, align 4, !dbg !424
  %11 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !425
  %des121 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %11, i32 0, i32 1, !dbg !426
  store i32 %10, i32* %des121, align 4, !dbg !427
  %12 = load i32, i32* %mode.addr, align 4, !dbg !428
  %cmp = icmp eq i32 %12, 1, !dbg !430
  br i1 %cmp, label %if.then23, label %if.else24, !dbg !431

if.then23:                                        ; preds = %if.end20
  %13 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !432
  %14 = load i32, i32* %len.addr, align 4, !dbg !433
  call void @norm_set_tx_desc_len_on_chain(%struct.dma_desc* %13, i32 %14) #4, !dbg !434
  br label %if.end25, !dbg !434

if.else24:                                        ; preds = %if.end20
  %15 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !435
  %16 = load i32, i32* %len.addr, align 4, !dbg !436
  call void @norm_set_tx_desc_len_on_ring(%struct.dma_desc* %15, i32 %16) #4, !dbg !437
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.then23
  %17 = load i8, i8* %tx_own.addr, align 1, !dbg !438
  %tobool26 = trunc i8 %17 to i1, !dbg !438
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !440

if.then27:                                        ; preds = %if.end25
  %18 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !441
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %18, i32 0, i32 0, !dbg !442
  %19 = load i32, i32* %des0, align 4, !dbg !443
  %or28 = or i32 %19, -2147483648, !dbg !443
  store i32 %or28, i32* %des0, align 4, !dbg !443
  br label %if.end29, !dbg !441

if.end29:                                         ; preds = %if.then27, %if.end25
  ret void, !dbg !444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_set_tx_owner(%struct.dma_desc* %p) #0 !dbg !445 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !448
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !449
  %1 = load i32, i32* %des0, align 4, !dbg !450
  %or = or i32 %1, -2147483648, !dbg !450
  store i32 %or, i32* %des0, align 4, !dbg !450
  ret void, !dbg !451
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ndesc_get_tx_owner(%struct.dma_desc* %p) #0 !dbg !452 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !453, metadata !DIExpression()), !dbg !454
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !455
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !455
  %1 = load i32, i32* %des0, align 4, !dbg !455
  %and = and i32 %1, -2147483648, !dbg !456
  %shr = lshr i32 %and, 31, !dbg !457
  ret i32 %shr, !dbg !458
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_release_tx_desc(%struct.dma_desc* %p, i32 %mode) #0 !dbg !459 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %mode.addr = alloca i32, align 4
  %ter = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !460, metadata !DIExpression()), !dbg !461
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !462, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.declare(metadata i32* %ter, metadata !464, metadata !DIExpression()), !dbg !465
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !466
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 1, !dbg !466
  %1 = load i32, i32* %des1, align 4, !dbg !466
  %conv = zext i32 %1 to i64, !dbg !466
  %and = and i64 %conv, 33554432, !dbg !467
  %shr = lshr i64 %and, 25, !dbg !468
  %conv1 = trunc i64 %shr to i32, !dbg !469
  store i32 %conv1, i32* %ter, align 4, !dbg !465
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !470
  %3 = bitcast %struct.dma_desc* %2 to i8*, !dbg !471
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 8, i1 false), !dbg !471
  %4 = load i32, i32* %mode.addr, align 4, !dbg !472
  %cmp = icmp eq i32 %4, 1, !dbg !474
  br i1 %cmp, label %if.then, label %if.else, !dbg !475

if.then:                                          ; preds = %entry
  %5 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !476
  call void @ndesc_tx_set_on_chain(%struct.dma_desc* %5) #4, !dbg !477
  br label %if.end, !dbg !477

if.else:                                          ; preds = %entry
  %6 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !478
  %7 = load i32, i32* %ter, align 4, !dbg !479
  call void @ndesc_end_tx_desc_on_ring(%struct.dma_desc* %6, i32 %7) #4, !dbg !480
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !481
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_set_tx_ic(%struct.dma_desc* %p) #0 !dbg !482 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !483, metadata !DIExpression()), !dbg !484
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !485
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 1, !dbg !486
  %1 = load i32, i32* %des1, align 4, !dbg !487
  %or = or i32 %1, -2147483648, !dbg !487
  store i32 %or, i32* %des1, align 4, !dbg !487
  ret void, !dbg !488
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ndesc_get_tx_ls(%struct.dma_desc* %p) #0 !dbg !489 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !490, metadata !DIExpression()), !dbg !491
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !492
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 1, !dbg !492
  %1 = load i32, i32* %des1, align 4, !dbg !492
  %conv = zext i32 %1 to i64, !dbg !492
  %and = and i64 %conv, 1073741824, !dbg !493
  %shr = lshr i64 %and, 30, !dbg !494
  %conv1 = trunc i64 %shr to i32, !dbg !495
  ret i32 %conv1, !dbg !496
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ndesc_get_tx_status(i8* %data, %struct.stmmac_extra_stats* %x, %struct.dma_desc* %p, i8* %ioaddr) #0 !dbg !497 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %x.addr = alloca %struct.stmmac_extra_stats*, align 8
  %p.addr = alloca %struct.dma_desc*, align 8
  %ioaddr.addr = alloca i8*, align 8
  %stats = alloca %struct.net_device_stats*, align 8
  %tdes0 = alloca i32, align 4
  %tdes1 = alloca i32, align 4
  %ret = alloca i32, align 4
  %collisions = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !498, metadata !DIExpression()), !dbg !499
  store %struct.stmmac_extra_stats* %x, %struct.stmmac_extra_stats** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_extra_stats** %x.addr, metadata !500, metadata !DIExpression()), !dbg !501
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !502, metadata !DIExpression()), !dbg !503
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !504, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.declare(metadata %struct.net_device_stats** %stats, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load i8*, i8** %data.addr, align 8, !dbg !508
  %1 = bitcast i8* %0 to %struct.net_device_stats*, !dbg !509
  store %struct.net_device_stats* %1, %struct.net_device_stats** %stats, align 8, !dbg !507
  call void @llvm.dbg.declare(metadata i32* %tdes0, metadata !510, metadata !DIExpression()), !dbg !511
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !512
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 0, !dbg !512
  %3 = load i32, i32* %des0, align 4, !dbg !512
  store i32 %3, i32* %tdes0, align 4, !dbg !511
  call void @llvm.dbg.declare(metadata i32* %tdes1, metadata !513, metadata !DIExpression()), !dbg !514
  %4 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !515
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %4, i32 0, i32 1, !dbg !515
  %5 = load i32, i32* %des1, align 4, !dbg !515
  store i32 %5, i32* %tdes1, align 4, !dbg !514
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !516, metadata !DIExpression()), !dbg !517
  store i32 0, i32* %ret, align 4, !dbg !517
  %6 = load i32, i32* %tdes0, align 4, !dbg !518
  %and = and i32 %6, -2147483648, !dbg !518
  %tobool = icmp ne i32 %and, 0, !dbg !518
  %lnot = xor i1 %tobool, true, !dbg !518
  %lnot1 = xor i1 %lnot, true, !dbg !518
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !518
  %conv = sext i32 %lnot.ext to i64, !dbg !518
  %tobool2 = icmp ne i64 %conv, 0, !dbg !518
  br i1 %tobool2, label %if.then, label %if.end, !dbg !520

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !521
  br label %return, !dbg !521

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %tdes1, align 4, !dbg !522
  %conv3 = zext i32 %7 to i64, !dbg !522
  %and4 = and i64 %conv3, 1073741824, !dbg !522
  %tobool5 = icmp ne i64 %and4, 0, !dbg !522
  %lnot6 = xor i1 %tobool5, true, !dbg !522
  %lnot8 = xor i1 %lnot6, true, !dbg !522
  %lnot10 = xor i1 %lnot8, true, !dbg !522
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !522
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !522
  %tobool13 = icmp ne i64 %conv12, 0, !dbg !522
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !524

if.then14:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !525
  br label %return, !dbg !525

if.end15:                                         ; preds = %if.end
  %8 = load i32, i32* %tdes0, align 4, !dbg !526
  %conv16 = zext i32 %8 to i64, !dbg !526
  %and17 = and i64 %conv16, 32768, !dbg !526
  %tobool18 = icmp ne i64 %and17, 0, !dbg !526
  %lnot19 = xor i1 %tobool18, true, !dbg !526
  %lnot21 = xor i1 %lnot19, true, !dbg !526
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !526
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !526
  %tobool24 = icmp ne i64 %conv23, 0, !dbg !526
  br i1 %tobool24, label %if.then25, label %if.end87, !dbg !528

if.then25:                                        ; preds = %if.end15
  %9 = load i32, i32* %tdes0, align 4, !dbg !529
  %conv26 = zext i32 %9 to i64, !dbg !529
  %and27 = and i64 %conv26, 2, !dbg !529
  %tobool28 = icmp ne i64 %and27, 0, !dbg !529
  %lnot29 = xor i1 %tobool28, true, !dbg !529
  %lnot31 = xor i1 %lnot29, true, !dbg !529
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !529
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !529
  %tobool34 = icmp ne i64 %conv33, 0, !dbg !529
  br i1 %tobool34, label %if.then35, label %if.end37, !dbg !532

if.then35:                                        ; preds = %if.then25
  %10 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !533
  %tx_underflow = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %10, i32 0, i32 0, !dbg !535
  %11 = load i64, i64* %tx_underflow, align 64, !dbg !536
  %inc = add i64 %11, 1, !dbg !536
  store i64 %inc, i64* %tx_underflow, align 64, !dbg !536
  %12 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !537
  %tx_fifo_errors = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %12, i32 0, i32 18, !dbg !538
  %13 = load i64, i64* %tx_fifo_errors, align 8, !dbg !539
  %inc36 = add i64 %13, 1, !dbg !539
  store i64 %inc36, i64* %tx_fifo_errors, align 8, !dbg !539
  br label %if.end37, !dbg !540

if.end37:                                         ; preds = %if.then35, %if.then25
  %14 = load i32, i32* %tdes0, align 4, !dbg !541
  %conv38 = zext i32 %14 to i64, !dbg !541
  %and39 = and i64 %conv38, 1024, !dbg !541
  %tobool40 = icmp ne i64 %and39, 0, !dbg !541
  %lnot41 = xor i1 %tobool40, true, !dbg !541
  %lnot43 = xor i1 %lnot41, true, !dbg !541
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !541
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !541
  %tobool46 = icmp ne i64 %conv45, 0, !dbg !541
  br i1 %tobool46, label %if.then47, label %if.end50, !dbg !543

if.then47:                                        ; preds = %if.end37
  %15 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !544
  %tx_carrier = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %15, i32 0, i32 1, !dbg !546
  %16 = load i64, i64* %tx_carrier, align 8, !dbg !547
  %inc48 = add i64 %16, 1, !dbg !547
  store i64 %inc48, i64* %tx_carrier, align 8, !dbg !547
  %17 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !548
  %tx_carrier_errors = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %17, i32 0, i32 17, !dbg !549
  %18 = load i64, i64* %tx_carrier_errors, align 8, !dbg !550
  %inc49 = add i64 %18, 1, !dbg !550
  store i64 %inc49, i64* %tx_carrier_errors, align 8, !dbg !550
  br label %if.end50, !dbg !551

if.end50:                                         ; preds = %if.then47, %if.end37
  %19 = load i32, i32* %tdes0, align 4, !dbg !552
  %conv51 = zext i32 %19 to i64, !dbg !552
  %and52 = and i64 %conv51, 2048, !dbg !552
  %tobool53 = icmp ne i64 %and52, 0, !dbg !552
  %lnot54 = xor i1 %tobool53, true, !dbg !552
  %lnot56 = xor i1 %lnot54, true, !dbg !552
  %lnot.ext57 = zext i1 %lnot56 to i32, !dbg !552
  %conv58 = sext i32 %lnot.ext57 to i64, !dbg !552
  %tobool59 = icmp ne i64 %conv58, 0, !dbg !552
  br i1 %tobool59, label %if.then60, label %if.end64, !dbg !554

if.then60:                                        ; preds = %if.end50
  %20 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !555
  %tx_losscarrier = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %20, i32 0, i32 2, !dbg !557
  %21 = load i64, i64* %tx_losscarrier, align 16, !dbg !558
  %inc61 = add i64 %21, 1, !dbg !558
  store i64 %inc61, i64* %tx_losscarrier, align 16, !dbg !558
  %22 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !559
  %tx_carrier_errors62 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %22, i32 0, i32 17, !dbg !560
  %23 = load i64, i64* %tx_carrier_errors62, align 8, !dbg !561
  %inc63 = add i64 %23, 1, !dbg !561
  store i64 %inc63, i64* %tx_carrier_errors62, align 8, !dbg !561
  br label %if.end64, !dbg !562

if.end64:                                         ; preds = %if.then60, %if.end50
  %24 = load i32, i32* %tdes0, align 4, !dbg !563
  %conv65 = zext i32 %24 to i64, !dbg !563
  %and66 = and i64 %conv65, 4, !dbg !563
  %tobool67 = icmp ne i64 %and66, 0, !dbg !563
  br i1 %tobool67, label %lor.end, label %lor.lhs.false, !dbg !563

lor.lhs.false:                                    ; preds = %if.end64
  %25 = load i32, i32* %tdes0, align 4, !dbg !563
  %conv68 = zext i32 %25 to i64, !dbg !563
  %and69 = and i64 %conv68, 256, !dbg !563
  %tobool70 = icmp ne i64 %and69, 0, !dbg !563
  br i1 %tobool70, label %lor.end, label %lor.rhs, !dbg !563

lor.rhs:                                          ; preds = %lor.lhs.false
  %26 = load i32, i32* %tdes0, align 4, !dbg !563
  %conv71 = zext i32 %26 to i64, !dbg !563
  %and72 = and i64 %conv71, 512, !dbg !563
  %tobool73 = icmp ne i64 %and72, 0, !dbg !563
  br label %lor.end, !dbg !563

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end64
  %27 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end64 ], [ %tobool73, %lor.rhs ]
  %lnot74 = xor i1 %27, true, !dbg !563
  %lnot76 = xor i1 %lnot74, true, !dbg !563
  %lnot.ext77 = zext i1 %lnot76 to i32, !dbg !563
  %conv78 = sext i32 %lnot.ext77 to i64, !dbg !563
  %tobool79 = icmp ne i64 %conv78, 0, !dbg !563
  br i1 %tobool79, label %if.then80, label %if.end86, !dbg !565

if.then80:                                        ; preds = %lor.end
  call void @llvm.dbg.declare(metadata i32* %collisions, metadata !566, metadata !DIExpression()), !dbg !568
  %28 = load i32, i32* %tdes0, align 4, !dbg !569
  %conv81 = zext i32 %28 to i64, !dbg !569
  %and82 = and i64 %conv81, 120, !dbg !570
  %shr = lshr i64 %and82, 3, !dbg !571
  %conv83 = trunc i64 %shr to i32, !dbg !572
  store i32 %conv83, i32* %collisions, align 4, !dbg !573
  %29 = load i32, i32* %collisions, align 4, !dbg !574
  %conv84 = zext i32 %29 to i64, !dbg !574
  %30 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !575
  %collisions85 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %30, i32 0, i32 9, !dbg !576
  %31 = load i64, i64* %collisions85, align 8, !dbg !577
  %add = add i64 %31, %conv84, !dbg !577
  store i64 %add, i64* %collisions85, align 8, !dbg !577
  br label %if.end86, !dbg !578

if.end86:                                         ; preds = %if.then80, %lor.end
  store i32 2, i32* %ret, align 4, !dbg !579
  br label %if.end87, !dbg !580

if.end87:                                         ; preds = %if.end86, %if.end15
  %32 = load i32, i32* %tdes0, align 4, !dbg !581
  %conv88 = zext i32 %32 to i64, !dbg !581
  %and89 = and i64 %conv88, 128, !dbg !583
  %tobool90 = icmp ne i64 %and89, 0, !dbg !583
  br i1 %tobool90, label %if.then91, label %if.end93, !dbg !584

if.then91:                                        ; preds = %if.end87
  %33 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !585
  %tx_vlan = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %33, i32 0, i32 5, !dbg !586
  %34 = load i64, i64* %tx_vlan, align 8, !dbg !587
  %inc92 = add i64 %34, 1, !dbg !587
  store i64 %inc92, i64* %tx_vlan, align 8, !dbg !587
  br label %if.end93, !dbg !585

if.end93:                                         ; preds = %if.then91, %if.end87
  %35 = load i32, i32* %tdes0, align 4, !dbg !588
  %conv94 = zext i32 %35 to i64, !dbg !588
  %and95 = and i64 %conv94, 1, !dbg !588
  %tobool96 = icmp ne i64 %and95, 0, !dbg !588
  %lnot97 = xor i1 %tobool96, true, !dbg !588
  %lnot99 = xor i1 %lnot97, true, !dbg !588
  %lnot.ext100 = zext i1 %lnot99 to i32, !dbg !588
  %conv101 = sext i32 %lnot.ext100 to i64, !dbg !588
  %tobool102 = icmp ne i64 %conv101, 0, !dbg !588
  br i1 %tobool102, label %if.then103, label %if.end105, !dbg !590

if.then103:                                       ; preds = %if.end93
  %36 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !591
  %tx_deferred = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %36, i32 0, i32 4, !dbg !592
  %37 = load i64, i64* %tx_deferred, align 32, !dbg !593
  %inc104 = add i64 %37, 1, !dbg !593
  store i64 %inc104, i64* %tx_deferred, align 32, !dbg !593
  br label %if.end105, !dbg !591

if.end105:                                        ; preds = %if.then103, %if.end93
  %38 = load i32, i32* %ret, align 4, !dbg !594
  store i32 %38, i32* %retval, align 4, !dbg !595
  br label %return, !dbg !595

return:                                           ; preds = %if.end105, %if.then14, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !596
  ret i32 %39, !dbg !596
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ndesc_get_tx_len(%struct.dma_desc* %p) #0 !dbg !597 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !598, metadata !DIExpression()), !dbg !599
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !600
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 1, !dbg !600
  %1 = load i32, i32* %des1, align 4, !dbg !600
  %conv = zext i32 %1 to i64, !dbg !600
  %and = and i64 %conv, 2047, !dbg !601
  %conv1 = trunc i64 %and to i32, !dbg !602
  ret i32 %conv1, !dbg !603
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_set_rx_owner(%struct.dma_desc* %p, i32 %disable_rx_ic) #0 !dbg !604 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %disable_rx_ic.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !605, metadata !DIExpression()), !dbg !606
  store i32 %disable_rx_ic, i32* %disable_rx_ic.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disable_rx_ic.addr, metadata !607, metadata !DIExpression()), !dbg !608
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !609
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !610
  %1 = load i32, i32* %des0, align 4, !dbg !611
  %or = or i32 %1, -2147483648, !dbg !611
  store i32 %or, i32* %des0, align 4, !dbg !611
  ret void, !dbg !612
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ndesc_get_rx_frame_len(%struct.dma_desc* %p, i32 %rx_coe_type) #0 !dbg !613 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %rx_coe_type.addr = alloca i32, align 4
  %csum = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !614, metadata !DIExpression()), !dbg !615
  store i32 %rx_coe_type, i32* %rx_coe_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rx_coe_type.addr, metadata !616, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.declare(metadata i32* %csum, metadata !618, metadata !DIExpression()), !dbg !619
  store i32 0, i32* %csum, align 4, !dbg !619
  %0 = load i32, i32* %rx_coe_type.addr, align 4, !dbg !620
  %cmp = icmp eq i32 %0, 1, !dbg !622
  br i1 %cmp, label %if.then, label %if.end, !dbg !623

if.then:                                          ; preds = %entry
  store i32 2, i32* %csum, align 4, !dbg !624
  br label %if.end, !dbg !625

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !626
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 0, !dbg !626
  %2 = load i32, i32* %des0, align 4, !dbg !626
  %conv = zext i32 %2 to i64, !dbg !626
  %and = and i64 %conv, 1073676288, !dbg !627
  %shr = lshr i64 %and, 16, !dbg !628
  %3 = load i32, i32* %csum, align 4, !dbg !629
  %conv1 = zext i32 %3 to i64, !dbg !629
  %sub = sub i64 %shr, %conv1, !dbg !630
  %conv2 = trunc i64 %sub to i32, !dbg !631
  ret i32 %conv2, !dbg !632
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ndesc_get_rx_status(i8* %data, %struct.stmmac_extra_stats* %x, %struct.dma_desc* %p) #0 !dbg !633 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %x.addr = alloca %struct.stmmac_extra_stats*, align 8
  %p.addr = alloca %struct.dma_desc*, align 8
  %ret = alloca i32, align 4
  %rdes0 = alloca i32, align 4
  %stats = alloca %struct.net_device_stats*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !634, metadata !DIExpression()), !dbg !635
  store %struct.stmmac_extra_stats* %x, %struct.stmmac_extra_stats** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_extra_stats** %x.addr, metadata !636, metadata !DIExpression()), !dbg !637
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !638, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !640, metadata !DIExpression()), !dbg !641
  store i32 0, i32* %ret, align 4, !dbg !641
  call void @llvm.dbg.declare(metadata i32* %rdes0, metadata !642, metadata !DIExpression()), !dbg !643
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !644
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !644
  %1 = load i32, i32* %des0, align 4, !dbg !644
  store i32 %1, i32* %rdes0, align 4, !dbg !643
  call void @llvm.dbg.declare(metadata %struct.net_device_stats** %stats, metadata !645, metadata !DIExpression()), !dbg !646
  %2 = load i8*, i8** %data.addr, align 8, !dbg !647
  %3 = bitcast i8* %2 to %struct.net_device_stats*, !dbg !648
  store %struct.net_device_stats* %3, %struct.net_device_stats** %stats, align 8, !dbg !646
  %4 = load i32, i32* %rdes0, align 4, !dbg !649
  %conv = zext i32 %4 to i64, !dbg !649
  %and = and i64 %conv, 2147483648, !dbg !649
  %tobool = icmp ne i64 %and, 0, !dbg !649
  %lnot = xor i1 %tobool, true, !dbg !649
  %lnot1 = xor i1 %lnot, true, !dbg !649
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !649
  %conv2 = sext i32 %lnot.ext to i64, !dbg !649
  %tobool3 = icmp ne i64 %conv2, 0, !dbg !649
  br i1 %tobool3, label %if.then, label %if.end, !dbg !651

if.then:                                          ; preds = %entry
  store i32 8, i32* %retval, align 4, !dbg !652
  br label %return, !dbg !652

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %rdes0, align 4, !dbg !653
  %conv4 = zext i32 %5 to i64, !dbg !653
  %and5 = and i64 %conv4, 256, !dbg !653
  %tobool6 = icmp ne i64 %and5, 0, !dbg !653
  %lnot7 = xor i1 %tobool6, true, !dbg !653
  %lnot9 = xor i1 %lnot7, true, !dbg !653
  %lnot11 = xor i1 %lnot9, true, !dbg !653
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !653
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !653
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !653
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !655

if.then15:                                        ; preds = %if.end
  %6 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !656
  %rx_length_errors = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %6, i32 0, i32 10, !dbg !658
  %7 = load i64, i64* %rx_length_errors, align 8, !dbg !659
  %inc = add i64 %7, 1, !dbg !659
  store i64 %inc, i64* %rx_length_errors, align 8, !dbg !659
  store i32 1, i32* %retval, align 4, !dbg !660
  br label %return, !dbg !660

if.end16:                                         ; preds = %if.end
  %8 = load i32, i32* %rdes0, align 4, !dbg !661
  %conv17 = zext i32 %8 to i64, !dbg !661
  %and18 = and i64 %conv17, 32768, !dbg !661
  %tobool19 = icmp ne i64 %and18, 0, !dbg !661
  %lnot20 = xor i1 %tobool19, true, !dbg !661
  %lnot22 = xor i1 %lnot20, true, !dbg !661
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !661
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !661
  %tobool25 = icmp ne i64 %conv24, 0, !dbg !661
  br i1 %tobool25, label %if.then26, label %if.end102, !dbg !663

if.then26:                                        ; preds = %if.end16
  %9 = load i32, i32* %rdes0, align 4, !dbg !664
  %conv27 = zext i32 %9 to i64, !dbg !664
  %and28 = and i64 %conv27, 16384, !dbg !664
  %tobool29 = icmp ne i64 %and28, 0, !dbg !664
  %lnot30 = xor i1 %tobool29, true, !dbg !664
  %lnot32 = xor i1 %lnot30, true, !dbg !664
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !664
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !664
  %tobool35 = icmp ne i64 %conv34, 0, !dbg !664
  br i1 %tobool35, label %if.then36, label %if.end38, !dbg !667

if.then36:                                        ; preds = %if.then26
  %10 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !668
  %rx_desc = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %10, i32 0, i32 10, !dbg !669
  %11 = load i64, i64* %rx_desc, align 16, !dbg !670
  %inc37 = add i64 %11, 1, !dbg !670
  store i64 %inc37, i64* %rx_desc, align 16, !dbg !670
  br label %if.end38, !dbg !668

if.end38:                                         ; preds = %if.then36, %if.then26
  %12 = load i32, i32* %rdes0, align 4, !dbg !671
  %conv39 = zext i32 %12 to i64, !dbg !671
  %and40 = and i64 %conv39, 8192, !dbg !671
  %tobool41 = icmp ne i64 %and40, 0, !dbg !671
  %lnot42 = xor i1 %tobool41, true, !dbg !671
  %lnot44 = xor i1 %lnot42, true, !dbg !671
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !671
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !671
  %tobool47 = icmp ne i64 %conv46, 0, !dbg !671
  br i1 %tobool47, label %if.then48, label %if.end50, !dbg !673

if.then48:                                        ; preds = %if.end38
  %13 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !674
  %sa_filter_fail = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %13, i32 0, i32 11, !dbg !675
  %14 = load i64, i64* %sa_filter_fail, align 8, !dbg !676
  %inc49 = add i64 %14, 1, !dbg !676
  store i64 %inc49, i64* %sa_filter_fail, align 8, !dbg !676
  br label %if.end50, !dbg !674

if.end50:                                         ; preds = %if.then48, %if.end38
  %15 = load i32, i32* %rdes0, align 4, !dbg !677
  %conv51 = zext i32 %15 to i64, !dbg !677
  %and52 = and i64 %conv51, 2048, !dbg !677
  %tobool53 = icmp ne i64 %and52, 0, !dbg !677
  %lnot54 = xor i1 %tobool53, true, !dbg !677
  %lnot56 = xor i1 %lnot54, true, !dbg !677
  %lnot.ext57 = zext i1 %lnot56 to i32, !dbg !677
  %conv58 = sext i32 %lnot.ext57 to i64, !dbg !677
  %tobool59 = icmp ne i64 %conv58, 0, !dbg !677
  br i1 %tobool59, label %if.then60, label %if.end62, !dbg !679

if.then60:                                        ; preds = %if.end50
  %16 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !680
  %overflow_error = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %16, i32 0, i32 12, !dbg !681
  %17 = load i64, i64* %overflow_error, align 32, !dbg !682
  %inc61 = add i64 %17, 1, !dbg !682
  store i64 %inc61, i64* %overflow_error, align 32, !dbg !682
  br label %if.end62, !dbg !680

if.end62:                                         ; preds = %if.then60, %if.end50
  %18 = load i32, i32* %rdes0, align 4, !dbg !683
  %conv63 = zext i32 %18 to i64, !dbg !683
  %and64 = and i64 %conv63, 128, !dbg !683
  %tobool65 = icmp ne i64 %and64, 0, !dbg !683
  %lnot66 = xor i1 %tobool65, true, !dbg !683
  %lnot68 = xor i1 %lnot66, true, !dbg !683
  %lnot.ext69 = zext i1 %lnot68 to i32, !dbg !683
  %conv70 = sext i32 %lnot.ext69 to i64, !dbg !683
  %tobool71 = icmp ne i64 %conv70, 0, !dbg !683
  br i1 %tobool71, label %if.then72, label %if.end74, !dbg !685

if.then72:                                        ; preds = %if.end62
  %19 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !686
  %ipc_csum_error = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %19, i32 0, i32 13, !dbg !687
  %20 = load i64, i64* %ipc_csum_error, align 8, !dbg !688
  %inc73 = add i64 %20, 1, !dbg !688
  store i64 %inc73, i64* %ipc_csum_error, align 8, !dbg !688
  br label %if.end74, !dbg !686

if.end74:                                         ; preds = %if.then72, %if.end62
  %21 = load i32, i32* %rdes0, align 4, !dbg !689
  %conv75 = zext i32 %21 to i64, !dbg !689
  %and76 = and i64 %conv75, 64, !dbg !689
  %tobool77 = icmp ne i64 %and76, 0, !dbg !689
  %lnot78 = xor i1 %tobool77, true, !dbg !689
  %lnot80 = xor i1 %lnot78, true, !dbg !689
  %lnot.ext81 = zext i1 %lnot80 to i32, !dbg !689
  %conv82 = sext i32 %lnot.ext81 to i64, !dbg !689
  %tobool83 = icmp ne i64 %conv82, 0, !dbg !689
  br i1 %tobool83, label %if.then84, label %if.end87, !dbg !691

if.then84:                                        ; preds = %if.end74
  %22 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !692
  %rx_collision = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %22, i32 0, i32 14, !dbg !694
  %23 = load i64, i64* %rx_collision, align 16, !dbg !695
  %inc85 = add i64 %23, 1, !dbg !695
  store i64 %inc85, i64* %rx_collision, align 16, !dbg !695
  %24 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !696
  %collisions = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %24, i32 0, i32 9, !dbg !697
  %25 = load i64, i64* %collisions, align 8, !dbg !698
  %inc86 = add i64 %25, 1, !dbg !698
  store i64 %inc86, i64* %collisions, align 8, !dbg !698
  br label %if.end87, !dbg !699

if.end87:                                         ; preds = %if.then84, %if.end74
  %26 = load i32, i32* %rdes0, align 4, !dbg !700
  %conv88 = zext i32 %26 to i64, !dbg !700
  %and89 = and i64 %conv88, 2, !dbg !700
  %tobool90 = icmp ne i64 %and89, 0, !dbg !700
  %lnot91 = xor i1 %tobool90, true, !dbg !700
  %lnot93 = xor i1 %lnot91, true, !dbg !700
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !700
  %conv95 = sext i32 %lnot.ext94 to i64, !dbg !700
  %tobool96 = icmp ne i64 %conv95, 0, !dbg !700
  br i1 %tobool96, label %if.then97, label %if.end101, !dbg !702

if.then97:                                        ; preds = %if.end87
  %27 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !703
  %rx_crc_errors = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %27, i32 0, i32 15, !dbg !705
  %28 = load i64, i64* %rx_crc_errors, align 8, !dbg !706
  %inc98 = add i64 %28, 1, !dbg !706
  store i64 %inc98, i64* %rx_crc_errors, align 8, !dbg !706
  %29 = load %struct.net_device_stats*, %struct.net_device_stats** %stats, align 8, !dbg !707
  %rx_crc_errors99 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %29, i32 0, i32 12, !dbg !708
  %30 = load i64, i64* %rx_crc_errors99, align 8, !dbg !709
  %inc100 = add i64 %30, 1, !dbg !709
  store i64 %inc100, i64* %rx_crc_errors99, align 8, !dbg !709
  br label %if.end101, !dbg !710

if.end101:                                        ; preds = %if.then97, %if.end87
  store i32 1, i32* %ret, align 4, !dbg !711
  br label %if.end102, !dbg !712

if.end102:                                        ; preds = %if.end101, %if.end16
  %31 = load i32, i32* %rdes0, align 4, !dbg !713
  %conv103 = zext i32 %31 to i64, !dbg !713
  %and104 = and i64 %conv103, 4, !dbg !713
  %tobool105 = icmp ne i64 %and104, 0, !dbg !713
  %lnot106 = xor i1 %tobool105, true, !dbg !713
  %lnot108 = xor i1 %lnot106, true, !dbg !713
  %lnot.ext109 = zext i1 %lnot108 to i32, !dbg !713
  %conv110 = sext i32 %lnot.ext109 to i64, !dbg !713
  %tobool111 = icmp ne i64 %conv110, 0, !dbg !713
  br i1 %tobool111, label %if.then112, label %if.end114, !dbg !715

if.then112:                                       ; preds = %if.end102
  %32 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !716
  %dribbling_bit = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %32, i32 0, i32 16, !dbg !717
  %33 = load i64, i64* %dribbling_bit, align 64, !dbg !718
  %inc113 = add i64 %33, 1, !dbg !718
  store i64 %inc113, i64* %dribbling_bit, align 64, !dbg !718
  br label %if.end114, !dbg !716

if.end114:                                        ; preds = %if.then112, %if.end102
  %34 = load i32, i32* %rdes0, align 4, !dbg !719
  %conv115 = zext i32 %34 to i64, !dbg !719
  %and116 = and i64 %conv115, 4096, !dbg !719
  %tobool117 = icmp ne i64 %and116, 0, !dbg !719
  %lnot118 = xor i1 %tobool117, true, !dbg !719
  %lnot120 = xor i1 %lnot118, true, !dbg !719
  %lnot.ext121 = zext i1 %lnot120 to i32, !dbg !719
  %conv122 = sext i32 %lnot.ext121 to i64, !dbg !719
  %tobool123 = icmp ne i64 %conv122, 0, !dbg !719
  br i1 %tobool123, label %if.then124, label %if.end126, !dbg !721

if.then124:                                       ; preds = %if.end114
  %35 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !722
  %rx_length = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %35, i32 0, i32 17, !dbg !724
  %36 = load i64, i64* %rx_length, align 8, !dbg !725
  %inc125 = add i64 %36, 1, !dbg !725
  store i64 %inc125, i64* %rx_length, align 8, !dbg !725
  store i32 1, i32* %ret, align 4, !dbg !726
  br label %if.end126, !dbg !727

if.end126:                                        ; preds = %if.then124, %if.end114
  %37 = load i32, i32* %rdes0, align 4, !dbg !728
  %conv127 = zext i32 %37 to i64, !dbg !728
  %and128 = and i64 %conv127, 8, !dbg !728
  %tobool129 = icmp ne i64 %and128, 0, !dbg !728
  %lnot130 = xor i1 %tobool129, true, !dbg !728
  %lnot132 = xor i1 %lnot130, true, !dbg !728
  %lnot.ext133 = zext i1 %lnot132 to i32, !dbg !728
  %conv134 = sext i32 %lnot.ext133 to i64, !dbg !728
  %tobool135 = icmp ne i64 %conv134, 0, !dbg !728
  br i1 %tobool135, label %if.then136, label %if.end138, !dbg !730

if.then136:                                       ; preds = %if.end126
  %38 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !731
  %rx_mii = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %38, i32 0, i32 18, !dbg !733
  %39 = load i64, i64* %rx_mii, align 16, !dbg !734
  %inc137 = add i64 %39, 1, !dbg !734
  store i64 %inc137, i64* %rx_mii, align 16, !dbg !734
  store i32 1, i32* %ret, align 4, !dbg !735
  br label %if.end138, !dbg !736

if.end138:                                        ; preds = %if.then136, %if.end126
  %40 = load i32, i32* %rdes0, align 4, !dbg !737
  %conv139 = zext i32 %40 to i64, !dbg !737
  %and140 = and i64 %conv139, 1024, !dbg !739
  %tobool141 = icmp ne i64 %and140, 0, !dbg !739
  br i1 %tobool141, label %if.then142, label %if.end144, !dbg !740

if.then142:                                       ; preds = %if.end138
  %41 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !741
  %vlan_tag = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %41, i32 0, i32 3, !dbg !742
  %42 = load i64, i64* %vlan_tag, align 8, !dbg !743
  %inc143 = add i64 %42, 1, !dbg !743
  store i64 %inc143, i64* %vlan_tag, align 8, !dbg !743
  br label %if.end144, !dbg !741

if.end144:                                        ; preds = %if.then142, %if.end138
  %43 = load i32, i32* %ret, align 4, !dbg !744
  store i32 %43, i32* %retval, align 4, !dbg !745
  br label %return, !dbg !745

return:                                           ; preds = %if.end144, %if.then15, %if.then
  %44 = load i32, i32* %retval, align 4, !dbg !746
  ret i32 %44, !dbg !746
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_enable_tx_timestamp(%struct.dma_desc* %p) #0 !dbg !747 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !748, metadata !DIExpression()), !dbg !749
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !750
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 1, !dbg !751
  %1 = load i32, i32* %des1, align 4, !dbg !752
  %or = or i32 %1, 4194304, !dbg !752
  store i32 %or, i32* %des1, align 4, !dbg !752
  ret void, !dbg !753
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ndesc_get_tx_timestamp_status(%struct.dma_desc* %p) #0 !dbg !754 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !755, metadata !DIExpression()), !dbg !756
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !757
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !757
  %1 = load i32, i32* %des0, align 4, !dbg !757
  %conv = zext i32 %1 to i64, !dbg !757
  %and = and i64 %conv, 131072, !dbg !758
  %shr = lshr i64 %and, 17, !dbg !759
  %conv1 = trunc i64 %shr to i32, !dbg !760
  ret i32 %conv1, !dbg !761
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_get_timestamp(i8* %desc, i32 %ats, i64* %ts) #0 !dbg !762 {
entry:
  %desc.addr = alloca i8*, align 8
  %ats.addr = alloca i32, align 4
  %ts.addr = alloca i64*, align 8
  %p = alloca %struct.dma_desc*, align 8
  %ns = alloca i64, align 8
  store i8* %desc, i8** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %desc.addr, metadata !763, metadata !DIExpression()), !dbg !764
  store i32 %ats, i32* %ats.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ats.addr, metadata !765, metadata !DIExpression()), !dbg !766
  store i64* %ts, i64** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ts.addr, metadata !767, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p, metadata !769, metadata !DIExpression()), !dbg !770
  %0 = load i8*, i8** %desc.addr, align 8, !dbg !771
  %1 = bitcast i8* %0 to %struct.dma_desc*, !dbg !772
  store %struct.dma_desc* %1, %struct.dma_desc** %p, align 8, !dbg !770
  call void @llvm.dbg.declare(metadata i64* %ns, metadata !773, metadata !DIExpression()), !dbg !774
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !775
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 2, !dbg !775
  %3 = load i32, i32* %des2, align 4, !dbg !775
  %conv = zext i32 %3 to i64, !dbg !775
  store i64 %conv, i64* %ns, align 8, !dbg !776
  %4 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !777
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %4, i32 0, i32 3, !dbg !777
  %5 = load i32, i32* %des3, align 4, !dbg !777
  %conv1 = zext i32 %5 to i64, !dbg !777
  %mul = mul i64 %conv1, 1000000000, !dbg !778
  %6 = load i64, i64* %ns, align 8, !dbg !779
  %add = add i64 %6, %mul, !dbg !779
  store i64 %add, i64* %ns, align 8, !dbg !779
  %7 = load i64, i64* %ns, align 8, !dbg !780
  %8 = load i64*, i64** %ts.addr, align 8, !dbg !781
  store i64 %7, i64* %8, align 8, !dbg !782
  ret void, !dbg !783
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ndesc_get_rx_timestamp_status(i8* %desc, i8* %next_desc, i32 %ats) #0 !dbg !784 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i8*, align 8
  %next_desc.addr = alloca i8*, align 8
  %ats.addr = alloca i32, align 4
  %p = alloca %struct.dma_desc*, align 8
  store i8* %desc, i8** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %desc.addr, metadata !785, metadata !DIExpression()), !dbg !786
  store i8* %next_desc, i8** %next_desc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %next_desc.addr, metadata !787, metadata !DIExpression()), !dbg !788
  store i32 %ats, i32* %ats.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ats.addr, metadata !789, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p, metadata !791, metadata !DIExpression()), !dbg !792
  %0 = load i8*, i8** %desc.addr, align 8, !dbg !793
  %1 = bitcast i8* %0 to %struct.dma_desc*, !dbg !794
  store %struct.dma_desc* %1, %struct.dma_desc** %p, align 8, !dbg !792
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !795
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 2, !dbg !795
  %3 = load i32, i32* %des2, align 4, !dbg !795
  %cmp = icmp eq i32 %3, -1, !dbg !797
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !798

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !799
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %4, i32 0, i32 3, !dbg !799
  %5 = load i32, i32* %des3, align 4, !dbg !799
  %cmp1 = icmp eq i32 %5, -1, !dbg !800
  br i1 %cmp1, label %if.then, label %if.else, !dbg !801

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !802
  br label %return, !dbg !802

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval, align 4, !dbg !803
  br label %return, !dbg !803

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !804
  ret i32 %6, !dbg !804
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_display_ring(i8* %head, i32 %size, i1 zeroext %rx) #0 !dbg !805 {
entry:
  %head.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %rx.addr = alloca i8, align 1
  %p = alloca %struct.dma_desc*, align 8
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  store i8* %head, i8** %head.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %head.addr, metadata !806, metadata !DIExpression()), !dbg !807
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !808, metadata !DIExpression()), !dbg !809
  %frombool = zext i1 %rx to i8
  store i8 %frombool, i8* %rx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rx.addr, metadata !810, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p, metadata !812, metadata !DIExpression()), !dbg !813
  %0 = load i8*, i8** %head.addr, align 8, !dbg !814
  %1 = bitcast i8* %0 to %struct.dma_desc*, !dbg !815
  store %struct.dma_desc* %1, %struct.dma_desc** %p, align 8, !dbg !813
  call void @llvm.dbg.declare(metadata i32* %i, metadata !816, metadata !DIExpression()), !dbg !817
  %2 = load i8, i8* %rx.addr, align 1, !dbg !818
  %tobool = trunc i8 %2 to i1, !dbg !818
  %3 = zext i1 %tobool to i64, !dbg !818
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), !dbg !818
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %cond) #5, !dbg !818
  store i32 0, i32* %i, align 4, !dbg !819
  br label %for.cond, !dbg !821

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !822
  %5 = load i32, i32* %size.addr, align 4, !dbg !824
  %cmp = icmp ult i32 %4, %5, !dbg !825
  br i1 %cmp, label %for.body, label %for.end, !dbg !826

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %x, metadata !827, metadata !DIExpression()), !dbg !829
  %6 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !830
  %7 = bitcast %struct.dma_desc* %6 to i64*, !dbg !831
  %8 = load i64, i64* %7, align 8, !dbg !831
  store i64 %8, i64* %x, align 8, !dbg !832
  %9 = load i32, i32* %i, align 4, !dbg !833
  %10 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !833
  %11 = bitcast %struct.dma_desc* %10 to i8*, !dbg !833
  %call1 = call i64 @virt_to_phys(i8* %11) #4, !dbg !833
  %conv = trunc i64 %call1 to i32, !dbg !833
  %12 = load i64, i64* %x, align 8, !dbg !833
  %conv2 = trunc i64 %12 to i32, !dbg !833
  %13 = load i64, i64* %x, align 8, !dbg !833
  %shr = lshr i64 %13, 32, !dbg !833
  %conv3 = trunc i64 %shr to i32, !dbg !833
  %14 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !833
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %14, i32 0, i32 2, !dbg !833
  %15 = load i32, i32* %des2, align 4, !dbg !833
  %16 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !833
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %16, i32 0, i32 3, !dbg !833
  %17 = load i32, i32* %des3, align 4, !dbg !833
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %9, i32 %conv, i32 %conv2, i32 %conv3, i32 %15, i32 %17) #5, !dbg !833
  %18 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !834
  %incdec.ptr = getelementptr %struct.dma_desc, %struct.dma_desc* %18, i32 1, !dbg !834
  store %struct.dma_desc* %incdec.ptr, %struct.dma_desc** %p, align 8, !dbg !834
  br label %for.inc, !dbg !835

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !836
  %inc = add i32 %19, 1, !dbg !836
  store i32 %inc, i32* %i, align 4, !dbg !836
  br label %for.cond, !dbg !837, !llvm.loop !838

for.end:                                          ; preds = %for.cond
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !840
  ret void, !dbg !841
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_get_addr(%struct.dma_desc* %p, i32* %addr) #0 !dbg !842 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %addr.addr = alloca i32*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !843, metadata !DIExpression()), !dbg !844
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !845, metadata !DIExpression()), !dbg !846
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !847
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 2, !dbg !847
  %1 = load i32, i32* %des2, align 4, !dbg !847
  %2 = load i32*, i32** %addr.addr, align 8, !dbg !848
  store i32 %1, i32* %2, align 4, !dbg !849
  ret void, !dbg !850
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_set_addr(%struct.dma_desc* %p, i64 %addr) #0 !dbg !851 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %addr.addr = alloca i64, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !852, metadata !DIExpression()), !dbg !853
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !854, metadata !DIExpression()), !dbg !855
  %0 = load i64, i64* %addr.addr, align 8, !dbg !856
  %conv = trunc i64 %0 to i32, !dbg !856
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !857
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 2, !dbg !858
  store i32 %conv, i32* %des2, align 4, !dbg !859
  ret void, !dbg !860
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_clear(%struct.dma_desc* %p) #0 !dbg !861 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !862, metadata !DIExpression()), !dbg !863
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !864
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 2, !dbg !865
  store i32 0, i32* %des2, align 4, !dbg !866
  ret void, !dbg !867
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_rx_set_on_chain(%struct.dma_desc* %p, i32 %end) #0 !dbg !868 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %end.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !870, metadata !DIExpression()), !dbg !871
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !872, metadata !DIExpression()), !dbg !873
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !874
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 1, !dbg !875
  %1 = load i32, i32* %des1, align 4, !dbg !876
  %or = or i32 %1, 16777216, !dbg !876
  store i32 %or, i32* %des1, align 4, !dbg !876
  ret void, !dbg !877
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_rx_set_on_ring(%struct.dma_desc* %p, i32 %end, i32 %bfsize) #0 !dbg !878 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %end.addr = alloca i32, align 4
  %bfsize.addr = alloca i32, align 4
  %bfsize2 = alloca i32, align 4
  %__UNIQUE_ID___x322 = alloca i32, align 4
  %__UNIQUE_ID___y323 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !879, metadata !DIExpression()), !dbg !880
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !881, metadata !DIExpression()), !dbg !882
  store i32 %bfsize, i32* %bfsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bfsize.addr, metadata !883, metadata !DIExpression()), !dbg !884
  %0 = load i32, i32* %bfsize.addr, align 4, !dbg !885
  %cmp = icmp sge i32 %0, 2048, !dbg !887
  br i1 %cmp, label %if.then, label %if.end, !dbg !888

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %bfsize2, metadata !889, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x322, metadata !892, metadata !DIExpression()), !dbg !894
  %1 = load i32, i32* %bfsize.addr, align 4, !dbg !894
  %sub = sub i32 %1, 2048, !dbg !894
  %add = add i32 %sub, 1, !dbg !894
  store i32 %add, i32* %__UNIQUE_ID___x322, align 4, !dbg !894
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y323, metadata !895, metadata !DIExpression()), !dbg !894
  store i32 2047, i32* %__UNIQUE_ID___y323, align 4, !dbg !894
  %2 = load i32, i32* %__UNIQUE_ID___x322, align 4, !dbg !894
  %3 = load i32, i32* %__UNIQUE_ID___y323, align 4, !dbg !894
  %cmp1 = icmp slt i32 %2, %3, !dbg !894
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !894

cond.true:                                        ; preds = %if.then
  %4 = load i32, i32* %__UNIQUE_ID___x322, align 4, !dbg !894
  br label %cond.end, !dbg !894

cond.false:                                       ; preds = %if.then
  %5 = load i32, i32* %__UNIQUE_ID___y323, align 4, !dbg !894
  br label %cond.end, !dbg !894

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !894
  store i32 %cond, i32* %tmp, align 4, !dbg !894
  %6 = load i32, i32* %tmp, align 4, !dbg !894
  store i32 %6, i32* %bfsize2, align 4, !dbg !896
  %7 = load i32, i32* %bfsize2, align 4, !dbg !897
  %shl = shl i32 %7, 11, !dbg !897
  %conv = sext i32 %shl to i64, !dbg !897
  %and = and i64 %conv, 4192256, !dbg !897
  %conv2 = trunc i64 %and to i32, !dbg !897
  %8 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !898
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %8, i32 0, i32 1, !dbg !899
  %9 = load i32, i32* %des1, align 4, !dbg !900
  %or = or i32 %9, %conv2, !dbg !900
  store i32 %or, i32* %des1, align 4, !dbg !900
  br label %if.end, !dbg !901

if.end:                                           ; preds = %cond.end, %entry
  %10 = load i32, i32* %end.addr, align 4, !dbg !902
  %tobool = icmp ne i32 %10, 0, !dbg !902
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !904

if.then3:                                         ; preds = %if.end
  %11 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !905
  %des14 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %11, i32 0, i32 1, !dbg !906
  %12 = load i32, i32* %des14, align 4, !dbg !907
  %or5 = or i32 %12, 33554432, !dbg !907
  store i32 %or5, i32* %des14, align 4, !dbg !907
  br label %if.end6, !dbg !905

if.end6:                                          ; preds = %if.then3, %if.end
  ret void, !dbg !908
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_tx_set_on_chain(%struct.dma_desc* %p) #0 !dbg !909 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !910, metadata !DIExpression()), !dbg !911
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !912
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 1, !dbg !913
  %1 = load i32, i32* %des1, align 4, !dbg !914
  %or = or i32 %1, 16777216, !dbg !914
  store i32 %or, i32* %des1, align 4, !dbg !914
  ret void, !dbg !915
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ndesc_end_tx_desc_on_ring(%struct.dma_desc* %p, i32 %end) #0 !dbg !916 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %end.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !917, metadata !DIExpression()), !dbg !918
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !919, metadata !DIExpression()), !dbg !920
  %0 = load i32, i32* %end.addr, align 4, !dbg !921
  %tobool = icmp ne i32 %0, 0, !dbg !921
  br i1 %tobool, label %if.then, label %if.else, !dbg !923

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !924
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 1, !dbg !925
  %2 = load i32, i32* %des1, align 4, !dbg !926
  %or = or i32 %2, 33554432, !dbg !926
  store i32 %or, i32* %des1, align 4, !dbg !926
  br label %if.end, !dbg !924

if.else:                                          ; preds = %entry
  %3 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !927
  %des11 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %3, i32 0, i32 1, !dbg !928
  %4 = load i32, i32* %des11, align 4, !dbg !929
  %and = and i32 %4, -33554433, !dbg !929
  store i32 %and, i32* %des11, align 4, !dbg !929
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !930
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @norm_set_tx_desc_len_on_chain(%struct.dma_desc* %p, i32 %len) #0 !dbg !931 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %len.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !932, metadata !DIExpression()), !dbg !933
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !934, metadata !DIExpression()), !dbg !935
  %0 = load i32, i32* %len.addr, align 4, !dbg !936
  %conv = sext i32 %0 to i64, !dbg !936
  %and = and i64 %conv, 2047, !dbg !936
  %conv1 = trunc i64 %and to i32, !dbg !936
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !937
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 1, !dbg !938
  %2 = load i32, i32* %des1, align 4, !dbg !939
  %or = or i32 %2, %conv1, !dbg !939
  store i32 %or, i32* %des1, align 4, !dbg !939
  ret void, !dbg !940
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @norm_set_tx_desc_len_on_ring(%struct.dma_desc* %p, i32 %len) #0 !dbg !941 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %len.addr = alloca i32, align 4
  %buffer1 = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !942, metadata !DIExpression()), !dbg !943
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !944, metadata !DIExpression()), !dbg !945
  %0 = load i32, i32* %len.addr, align 4, !dbg !946
  %cmp = icmp sgt i32 %0, 2048, !dbg !946
  %lnot = xor i1 %cmp, true, !dbg !946
  %lnot1 = xor i1 %lnot, true, !dbg !946
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !946
  %conv = sext i32 %lnot.ext to i64, !dbg !946
  %tobool = icmp ne i64 %conv, 0, !dbg !946
  br i1 %tobool, label %if.then, label %if.else, !dbg !948

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %buffer1, metadata !949, metadata !DIExpression()), !dbg !951
  store i32 2047, i32* %buffer1, align 4, !dbg !951
  %1 = load i32, i32* %len.addr, align 4, !dbg !952
  %2 = load i32, i32* %buffer1, align 4, !dbg !952
  %sub = sub i32 %1, %2, !dbg !952
  %shl = shl i32 %sub, 11, !dbg !952
  %conv2 = zext i32 %shl to i64, !dbg !952
  %and = and i64 %conv2, 4192256, !dbg !952
  %3 = load i32, i32* %buffer1, align 4, !dbg !952
  %conv3 = zext i32 %3 to i64, !dbg !952
  %or = or i64 %and, %conv3, !dbg !952
  %conv4 = trunc i64 %or to i32, !dbg !952
  %4 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !953
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %4, i32 0, i32 1, !dbg !954
  %5 = load i32, i32* %des1, align 4, !dbg !955
  %or5 = or i32 %5, %conv4, !dbg !955
  store i32 %or5, i32* %des1, align 4, !dbg !955
  br label %if.end, !dbg !956

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %len.addr, align 4, !dbg !957
  %conv6 = sext i32 %6 to i64, !dbg !957
  %and7 = and i64 %conv6, 2047, !dbg !957
  %conv8 = trunc i64 %and7 to i32, !dbg !957
  %7 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !958
  %des19 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %7, i32 0, i32 1, !dbg !959
  %8 = load i32, i32* %des19, align 4, !dbg !960
  %or10 = or i32 %8, %conv8, !dbg !960
  store i32 %or10, i32* %des19, align 4, !dbg !960
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !961
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @virt_to_phys(i8* %address) #0 !dbg !962 {
entry:
  %address.addr = alloca i8*, align 8
  store i8* %address, i8** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !969, metadata !DIExpression()), !dbg !970
  %0 = load i8*, i8** %address.addr, align 8, !dbg !971
  %1 = ptrtoint i8* %0 to i64, !dbg !971
  %call = call i64 @__phys_addr_nodebug(i64 %1) #4, !dbg !971
  ret i64 %call, !dbg !972
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #0 !dbg !973 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !977, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.declare(metadata i64* %y, metadata !979, metadata !DIExpression()), !dbg !980
  %0 = load i64, i64* %x.addr, align 8, !dbg !981
  %sub = sub i64 %0, -2147483648, !dbg !982
  store i64 %sub, i64* %y, align 8, !dbg !980
  %1 = load i64, i64* %y, align 8, !dbg !983
  %2 = load i64, i64* %x.addr, align 8, !dbg !984
  %3 = load i64, i64* %y, align 8, !dbg !985
  %cmp = icmp ugt i64 %2, %3, !dbg !986
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !987

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !988
  br label %cond.end, !dbg !987

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !989
  %sub1 = sub i64 -2147483648, %5, !dbg !990
  br label %cond.end, !dbg !987

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !987
  %add = add i64 %1, %cond, !dbg !991
  store i64 %add, i64* %x.addr, align 8, !dbg !992
  %6 = load i64, i64* %x.addr, align 8, !dbg !993
  ret i64 %6, !dbg !994
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!318, !319, !320, !321}
!llvm.ident = !{!322}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ndesc_ops", scope: !2, file: !3, line: 307, type: !77, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !76, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/norm_desc.c", directory: "/home/lizy2001/genbc/linux")
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
!28 = !{!29, !31, !33, !34, !36, !64, !72, !7, !41}
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
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_desc", file: !66, line: 158, size: 128, elements: !67)
!66 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/descs.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !69, !70, !71}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "des0", scope: !65, file: !66, line: 159, baseType: !29, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "des1", scope: !65, file: !66, line: 160, baseType: !29, size: 32, offset: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "des2", scope: !65, file: !66, line: 161, baseType: !29, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "des3", scope: !65, file: !66, line: 162, baseType: !29, size: 32, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !35, line: 23, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !32, line: 31, baseType: !75)
!75 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !{!0}
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_desc_ops", file: !79, line: 35, size: 1984, elements: !80)
!79 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/hwif.h", directory: "/home/lizy2001/genbc/linux")
!80 = !{!81, !85, !89, !96, !100, !104, !108, !112, !113, !114, !235, !236, !237, !241, !245, !257, !258, !259, !263, !267, !271, !275, !280, !285, !286, !292, !293, !294, !298, !305, !306}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "init_rx_desc", scope: !78, file: !79, line: 37, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !64, !33, !33, !33, !33}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "init_tx_desc", scope: !78, file: !79, line: 40, baseType: !86, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !64, !33, !33}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_tx_desc", scope: !78, file: !79, line: 42, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !64, !33, !33, !93, !33, !93, !93, !7}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !94, line: 30, baseType: !95)
!94 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!95 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_tso_tx_desc", scope: !78, file: !79, line: 45, baseType: !97, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !64, !33, !33, !33, !93, !93, !7, !7}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "set_tx_owner", scope: !78, file: !79, line: 49, baseType: !101, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !64}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "get_tx_owner", scope: !78, file: !79, line: 50, baseType: !105, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!33, !64}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "release_tx_desc", scope: !78, file: !79, line: 52, baseType: !109, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !64, !33}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "set_tx_ic", scope: !78, file: !79, line: 55, baseType: !101, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "get_tx_ls", scope: !78, file: !79, line: 57, baseType: !105, size: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tx_status", scope: !78, file: !79, line: 59, baseType: !115, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!33, !118, !119, !64, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_extra_stats", file: !14, line: 61, size: 7680, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tx_underflow", scope: !120, file: !14, line: 63, baseType: !41, size: 64, align: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tx_carrier", scope: !120, file: !14, line: 64, baseType: !41, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tx_losscarrier", scope: !120, file: !14, line: 65, baseType: !41, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag", scope: !120, file: !14, line: 66, baseType: !41, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tx_deferred", scope: !120, file: !14, line: 67, baseType: !41, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tx_vlan", scope: !120, file: !14, line: 68, baseType: !41, size: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber", scope: !120, file: !14, line: 69, baseType: !41, size: 64, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tx_frame_flushed", scope: !120, file: !14, line: 70, baseType: !41, size: 64, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tx_payload_error", scope: !120, file: !14, line: 71, baseType: !41, size: 64, offset: 512)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ip_header_error", scope: !120, file: !14, line: 72, baseType: !41, size: 64, offset: 576)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "rx_desc", scope: !120, file: !14, line: 74, baseType: !41, size: 64, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sa_filter_fail", scope: !120, file: !14, line: 75, baseType: !41, size: 64, offset: 704)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_error", scope: !120, file: !14, line: 76, baseType: !41, size: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_csum_error", scope: !120, file: !14, line: 77, baseType: !41, size: 64, offset: 832)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "rx_collision", scope: !120, file: !14, line: 78, baseType: !41, size: 64, offset: 896)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "rx_crc_errors", scope: !120, file: !14, line: 79, baseType: !41, size: 64, offset: 960)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "dribbling_bit", scope: !120, file: !14, line: 80, baseType: !41, size: 64, offset: 1024)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rx_length", scope: !120, file: !14, line: 81, baseType: !41, size: 64, offset: 1088)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "rx_mii", scope: !120, file: !14, line: 82, baseType: !41, size: 64, offset: 1152)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "rx_multicast", scope: !120, file: !14, line: 83, baseType: !41, size: 64, offset: 1216)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "rx_gmac_overflow", scope: !120, file: !14, line: 84, baseType: !41, size: 64, offset: 1280)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog", scope: !120, file: !14, line: 85, baseType: !41, size: 64, offset: 1344)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "da_rx_filter_fail", scope: !120, file: !14, line: 86, baseType: !41, size: 64, offset: 1408)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sa_rx_filter_fail", scope: !120, file: !14, line: 87, baseType: !41, size: 64, offset: 1472)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rx_missed_cntr", scope: !120, file: !14, line: 88, baseType: !41, size: 64, offset: 1536)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_cntr", scope: !120, file: !14, line: 89, baseType: !41, size: 64, offset: 1600)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "rx_vlan", scope: !120, file: !14, line: 90, baseType: !41, size: 64, offset: 1664)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "rx_split_hdr_pkt_n", scope: !120, file: !14, line: 91, baseType: !41, size: 64, offset: 1728)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tx_undeflow_irq", scope: !120, file: !14, line: 93, baseType: !41, size: 64, offset: 1792)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tx_process_stopped_irq", scope: !120, file: !14, line: 94, baseType: !41, size: 64, offset: 1856)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber_irq", scope: !120, file: !14, line: 95, baseType: !41, size: 64, offset: 1920)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_irq", scope: !120, file: !14, line: 96, baseType: !41, size: 64, offset: 1984)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_unav_irq", scope: !120, file: !14, line: 97, baseType: !41, size: 64, offset: 2048)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "rx_process_stopped_irq", scope: !120, file: !14, line: 98, baseType: !41, size: 64, offset: 2112)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog_irq", scope: !120, file: !14, line: 99, baseType: !41, size: 64, offset: 2176)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "tx_early_irq", scope: !120, file: !14, line: 100, baseType: !41, size: 64, offset: 2240)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_bus_error_irq", scope: !120, file: !14, line: 101, baseType: !41, size: 64, offset: 2304)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "rx_early_irq", scope: !120, file: !14, line: 103, baseType: !41, size: 64, offset: 2368)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !120, file: !14, line: 104, baseType: !41, size: 64, offset: 2432)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tx_pkt_n", scope: !120, file: !14, line: 105, baseType: !41, size: 64, offset: 2496)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "rx_pkt_n", scope: !120, file: !14, line: 106, baseType: !41, size: 64, offset: 2560)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "normal_irq_n", scope: !120, file: !14, line: 107, baseType: !41, size: 64, offset: 2624)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "rx_normal_irq_n", scope: !120, file: !14, line: 108, baseType: !41, size: 64, offset: 2688)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "napi_poll", scope: !120, file: !14, line: 109, baseType: !41, size: 64, offset: 2752)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "tx_normal_irq_n", scope: !120, file: !14, line: 110, baseType: !41, size: 64, offset: 2816)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "tx_clean", scope: !120, file: !14, line: 111, baseType: !41, size: 64, offset: 2880)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tx_set_ic_bit", scope: !120, file: !14, line: 112, baseType: !41, size: 64, offset: 2944)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "irq_receive_pmt_irq_n", scope: !120, file: !14, line: 113, baseType: !41, size: 64, offset: 3008)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_irq_n", scope: !120, file: !14, line: 115, baseType: !41, size: 64, offset: 3072)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_irq_n", scope: !120, file: !14, line: 116, baseType: !41, size: 64, offset: 3136)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_csum_offload_irq_n", scope: !120, file: !14, line: 117, baseType: !41, size: 64, offset: 3200)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_in_lpi_mode_n", scope: !120, file: !14, line: 119, baseType: !41, size: 64, offset: 3264)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_exit_lpi_mode_n", scope: !120, file: !14, line: 120, baseType: !41, size: 64, offset: 3328)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_in_lpi_mode_n", scope: !120, file: !14, line: 121, baseType: !41, size: 64, offset: 3392)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_exit_lpi_mode_n", scope: !120, file: !14, line: 122, baseType: !41, size: 64, offset: 3456)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "phy_eee_wakeup_error_n", scope: !120, file: !14, line: 123, baseType: !41, size: 64, offset: 3520)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hdr_err", scope: !120, file: !14, line: 125, baseType: !41, size: 64, offset: 3584)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ip_payload_err", scope: !120, file: !14, line: 126, baseType: !41, size: 64, offset: 3648)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ip_csum_bypassed", scope: !120, file: !14, line: 127, baseType: !41, size: 64, offset: 3712)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_pkt_rcvd", scope: !120, file: !14, line: 128, baseType: !41, size: 64, offset: 3776)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_pkt_rcvd", scope: !120, file: !14, line: 129, baseType: !41, size: 64, offset: 3840)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "no_ptp_rx_msg_type_ext", scope: !120, file: !14, line: 130, baseType: !41, size: 64, offset: 3904)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_sync", scope: !120, file: !14, line: 131, baseType: !41, size: 64, offset: 3968)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_follow_up", scope: !120, file: !14, line: 132, baseType: !41, size: 64, offset: 4032)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_req", scope: !120, file: !14, line: 133, baseType: !41, size: 64, offset: 4096)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_resp", scope: !120, file: !14, line: 134, baseType: !41, size: 64, offset: 4160)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_req", scope: !120, file: !14, line: 135, baseType: !41, size: 64, offset: 4224)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_resp", scope: !120, file: !14, line: 136, baseType: !41, size: 64, offset: 4288)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_follow_up", scope: !120, file: !14, line: 137, baseType: !41, size: 64, offset: 4352)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_announce", scope: !120, file: !14, line: 138, baseType: !41, size: 64, offset: 4416)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_management", scope: !120, file: !14, line: 139, baseType: !41, size: 64, offset: 4480)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_pkt_reserved_type", scope: !120, file: !14, line: 140, baseType: !41, size: 64, offset: 4544)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_frame_type", scope: !120, file: !14, line: 141, baseType: !41, size: 64, offset: 4608)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_ver", scope: !120, file: !14, line: 142, baseType: !41, size: 64, offset: 4672)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp_dropped", scope: !120, file: !14, line: 143, baseType: !41, size: 64, offset: 4736)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "av_pkt_rcvd", scope: !120, file: !14, line: 144, baseType: !41, size: 64, offset: 4800)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "av_tagged_pkt_rcvd", scope: !120, file: !14, line: 145, baseType: !41, size: 64, offset: 4864)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag_priority_val", scope: !120, file: !14, line: 146, baseType: !41, size: 64, offset: 4928)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "l3_filter_match", scope: !120, file: !14, line: 147, baseType: !41, size: 64, offset: 4992)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "l4_filter_match", scope: !120, file: !14, line: 148, baseType: !41, size: 64, offset: 5056)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "l3_l4_filter_no_match", scope: !120, file: !14, line: 149, baseType: !41, size: 64, offset: 5120)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_ane_n", scope: !120, file: !14, line: 151, baseType: !41, size: 64, offset: 5184)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_link_n", scope: !120, file: !14, line: 152, baseType: !41, size: 64, offset: 5248)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rgmii_n", scope: !120, file: !14, line: 153, baseType: !41, size: 64, offset: 5312)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_link", scope: !120, file: !14, line: 154, baseType: !41, size: 64, offset: 5376)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_duplex", scope: !120, file: !14, line: 155, baseType: !41, size: 64, offset: 5440)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_speed", scope: !120, file: !14, line: 156, baseType: !41, size: 64, offset: 5504)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_status_fifo_full", scope: !120, file: !14, line: 158, baseType: !41, size: 64, offset: 5568)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_not_empty", scope: !120, file: !14, line: 159, baseType: !41, size: 64, offset: 5632)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mmtl_fifo_ctrl", scope: !120, file: !14, line: 160, baseType: !41, size: 64, offset: 5696)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_write", scope: !120, file: !14, line: 161, baseType: !41, size: 64, offset: 5760)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_wait", scope: !120, file: !14, line: 162, baseType: !41, size: 64, offset: 5824)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_read", scope: !120, file: !14, line: 163, baseType: !41, size: 64, offset: 5888)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_idle", scope: !120, file: !14, line: 164, baseType: !41, size: 64, offset: 5952)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_in_pause", scope: !120, file: !14, line: 165, baseType: !41, size: 64, offset: 6016)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_xfer", scope: !120, file: !14, line: 166, baseType: !41, size: 64, offset: 6080)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_idle", scope: !120, file: !14, line: 167, baseType: !41, size: 64, offset: 6144)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_wait", scope: !120, file: !14, line: 168, baseType: !41, size: 64, offset: 6208)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_pause", scope: !120, file: !14, line: 169, baseType: !41, size: 64, offset: 6272)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_tx_proto_engine", scope: !120, file: !14, line: 170, baseType: !41, size: 64, offset: 6336)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_full", scope: !120, file: !14, line: 171, baseType: !41, size: 64, offset: 6400)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_above_thresh", scope: !120, file: !14, line: 172, baseType: !41, size: 64, offset: 6464)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_below_thresh", scope: !120, file: !14, line: 173, baseType: !41, size: 64, offset: 6528)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_empty", scope: !120, file: !14, line: 174, baseType: !41, size: 64, offset: 6592)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_flush", scope: !120, file: !14, line: 175, baseType: !41, size: 64, offset: 6656)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_read_data", scope: !120, file: !14, line: 176, baseType: !41, size: 64, offset: 6720)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_status", scope: !120, file: !14, line: 177, baseType: !41, size: 64, offset: 6784)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_idle", scope: !120, file: !14, line: 178, baseType: !41, size: 64, offset: 6848)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_ctrl_active", scope: !120, file: !14, line: 179, baseType: !41, size: 64, offset: 6912)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "mac_rx_frame_ctrl_fifo", scope: !120, file: !14, line: 180, baseType: !41, size: 64, offset: 6976)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_rx_proto_engine", scope: !120, file: !14, line: 181, baseType: !41, size: 64, offset: 7040)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_frames", scope: !120, file: !14, line: 183, baseType: !41, size: 64, offset: 7104)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_nfrags", scope: !120, file: !14, line: 184, baseType: !41, size: 64, offset: 7168)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "get_tx_len", scope: !78, file: !79, line: 62, baseType: !105, size: 64, offset: 640)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "set_rx_owner", scope: !78, file: !79, line: 64, baseType: !109, size: 64, offset: 704)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "get_rx_frame_len", scope: !78, file: !79, line: 66, baseType: !238, size: 64, offset: 768)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!33, !64, !33}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rx_status", scope: !78, file: !79, line: 68, baseType: !242, size: 64, offset: 832)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!33, !118, !119, !64}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rx_extended_status", scope: !78, file: !79, line: 70, baseType: !246, size: 64, offset: 896)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !118, !119, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_extended_desc", file: !66, line: 166, size: 256, elements: !251)
!251 = !{!252, !253, !254, !255, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "basic", scope: !250, file: !66, line: 167, baseType: !65, size: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "des4", scope: !250, file: !66, line: 168, baseType: !29, size: 32, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "des5", scope: !250, file: !66, line: 169, baseType: !29, size: 32, offset: 160)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "des6", scope: !250, file: !66, line: 170, baseType: !29, size: 32, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "des7", scope: !250, file: !66, line: 171, baseType: !29, size: 32, offset: 224)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "enable_tx_timestamp", scope: !78, file: !79, line: 73, baseType: !101, size: 64, offset: 960)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "get_tx_timestamp_status", scope: !78, file: !79, line: 75, baseType: !105, size: 64, offset: 1024)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "get_timestamp", scope: !78, file: !79, line: 77, baseType: !260, size: 64, offset: 1088)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !118, !34, !72}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "get_rx_timestamp_status", scope: !78, file: !79, line: 79, baseType: !264, size: 64, offset: 1152)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!33, !118, !118, !34}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "display_ring", scope: !78, file: !79, line: 81, baseType: !268, size: 64, offset: 1216)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !118, !7, !93}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "set_mss", scope: !78, file: !79, line: 83, baseType: !272, size: 64, offset: 1280)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !64, !7}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "get_addr", scope: !78, file: !79, line: 85, baseType: !276, size: 64, offset: 1344)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !64, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "set_addr", scope: !78, file: !79, line: 87, baseType: !281, size: 64, offset: 1408)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !64, !284}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !94, line: 143, baseType: !73)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !78, file: !79, line: 89, baseType: !101, size: 64, offset: 1472)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "get_rx_hash", scope: !78, file: !79, line: 91, baseType: !287, size: 64, offset: 1536)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!33, !64, !290, !291}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "get_rx_header_len", scope: !78, file: !79, line: 93, baseType: !276, size: 64, offset: 1600)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "set_sec_addr", scope: !78, file: !79, line: 94, baseType: !281, size: 64, offset: 1664)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "set_sarc", scope: !78, file: !79, line: 95, baseType: !295, size: 64, offset: 1728)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !64, !34}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "set_vlan_tag", scope: !78, file: !79, line: 96, baseType: !299, size: 64, offset: 1792)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !64, !302, !302, !34}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !35, line: 19, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !32, line: 24, baseType: !304)
!304 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "set_vlan", scope: !78, file: !79, line: 98, baseType: !295, size: 64, offset: 1856)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "set_tbs", scope: !78, file: !79, line: 99, baseType: !307, size: 64, offset: 1920)
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
!317 = !DIDerivedType(tag: DW_TAG_member, name: "basic", scope: !311, file: !66, line: 180, baseType: !65, size: 128, offset: 128)
!318 = !{i32 7, !"Dwarf Version", i32 4}
!319 = !{i32 2, !"Debug Info Version", i32 3}
!320 = !{i32 1, !"wchar_size", i32 2}
!321 = !{i32 1, !"Code Model", i32 2}
!322 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!323 = distinct !DISubprogram(name: "ndesc_init_rx_desc", scope: !3, file: !3, line: 125, type: !83, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!324 = !{}
!325 = !DILocalVariable(name: "p", arg: 1, scope: !323, file: !3, line: 125, type: !64)
!326 = !DILocation(line: 125, column: 49, scope: !323)
!327 = !DILocalVariable(name: "disable_rx_ic", arg: 2, scope: !323, file: !3, line: 125, type: !33)
!328 = !DILocation(line: 125, column: 56, scope: !323)
!329 = !DILocalVariable(name: "mode", arg: 3, scope: !323, file: !3, line: 125, type: !33)
!330 = !DILocation(line: 125, column: 75, scope: !323)
!331 = !DILocalVariable(name: "end", arg: 4, scope: !323, file: !3, line: 126, type: !33)
!332 = !DILocation(line: 126, column: 15, scope: !323)
!333 = !DILocalVariable(name: "bfsize", arg: 5, scope: !323, file: !3, line: 126, type: !33)
!334 = !DILocation(line: 126, column: 24, scope: !323)
!335 = !DILocalVariable(name: "bfsize1", scope: !323, file: !3, line: 128, type: !33)
!336 = !DILocation(line: 128, column: 6, scope: !323)
!337 = !DILocation(line: 130, column: 2, scope: !323)
!338 = !DILocation(line: 130, column: 5, scope: !323)
!339 = !DILocation(line: 130, column: 10, scope: !323)
!340 = !DILocalVariable(name: "__UNIQUE_ID___x324", scope: !341, file: !3, line: 132, type: !33)
!341 = distinct !DILexicalBlock(scope: !323, file: !3, line: 132, column: 12)
!342 = !DILocation(line: 132, column: 12, scope: !341)
!343 = !DILocalVariable(name: "__UNIQUE_ID___y325", scope: !341, file: !3, line: 132, type: !33)
!344 = !DILocation(line: 132, column: 10, scope: !323)
!345 = !DILocation(line: 133, column: 13, scope: !323)
!346 = !DILocation(line: 133, column: 2, scope: !323)
!347 = !DILocation(line: 133, column: 5, scope: !323)
!348 = !DILocation(line: 133, column: 10, scope: !323)
!349 = !DILocation(line: 135, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !323, file: !3, line: 135, column: 6)
!351 = !DILocation(line: 135, column: 11, scope: !350)
!352 = !DILocation(line: 135, column: 6, scope: !323)
!353 = !DILocation(line: 136, column: 25, scope: !350)
!354 = !DILocation(line: 136, column: 28, scope: !350)
!355 = !DILocation(line: 136, column: 3, scope: !350)
!356 = !DILocation(line: 138, column: 24, scope: !350)
!357 = !DILocation(line: 138, column: 27, scope: !350)
!358 = !DILocation(line: 138, column: 32, scope: !350)
!359 = !DILocation(line: 138, column: 3, scope: !350)
!360 = !DILocation(line: 140, column: 6, scope: !361)
!361 = distinct !DILexicalBlock(scope: !323, file: !3, line: 140, column: 6)
!362 = !DILocation(line: 140, column: 6, scope: !323)
!363 = !DILocation(line: 141, column: 3, scope: !361)
!364 = !DILocation(line: 141, column: 6, scope: !361)
!365 = !DILocation(line: 141, column: 11, scope: !361)
!366 = !DILocation(line: 142, column: 1, scope: !323)
!367 = distinct !DISubprogram(name: "ndesc_init_tx_desc", scope: !3, file: !3, line: 144, type: !87, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!368 = !DILocalVariable(name: "p", arg: 1, scope: !367, file: !3, line: 144, type: !64)
!369 = !DILocation(line: 144, column: 49, scope: !367)
!370 = !DILocalVariable(name: "mode", arg: 2, scope: !367, file: !3, line: 144, type: !33)
!371 = !DILocation(line: 144, column: 56, scope: !367)
!372 = !DILocalVariable(name: "end", arg: 3, scope: !367, file: !3, line: 144, type: !33)
!373 = !DILocation(line: 144, column: 66, scope: !367)
!374 = !DILocation(line: 146, column: 2, scope: !367)
!375 = !DILocation(line: 146, column: 5, scope: !367)
!376 = !DILocation(line: 146, column: 10, scope: !367)
!377 = !DILocation(line: 147, column: 6, scope: !378)
!378 = distinct !DILexicalBlock(scope: !367, file: !3, line: 147, column: 6)
!379 = !DILocation(line: 147, column: 11, scope: !378)
!380 = !DILocation(line: 147, column: 6, scope: !367)
!381 = !DILocation(line: 148, column: 25, scope: !378)
!382 = !DILocation(line: 148, column: 3, scope: !378)
!383 = !DILocation(line: 150, column: 29, scope: !378)
!384 = !DILocation(line: 150, column: 32, scope: !378)
!385 = !DILocation(line: 150, column: 3, scope: !378)
!386 = !DILocation(line: 151, column: 1, scope: !367)
!387 = distinct !DISubprogram(name: "ndesc_prepare_tx_desc", scope: !3, file: !3, line: 184, type: !91, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!388 = !DILocalVariable(name: "p", arg: 1, scope: !387, file: !3, line: 184, type: !64)
!389 = !DILocation(line: 184, column: 52, scope: !387)
!390 = !DILocalVariable(name: "is_fs", arg: 2, scope: !387, file: !3, line: 184, type: !33)
!391 = !DILocation(line: 184, column: 59, scope: !387)
!392 = !DILocalVariable(name: "len", arg: 3, scope: !387, file: !3, line: 184, type: !33)
!393 = !DILocation(line: 184, column: 70, scope: !387)
!394 = !DILocalVariable(name: "csum_flag", arg: 4, scope: !387, file: !3, line: 185, type: !93)
!395 = !DILocation(line: 185, column: 12, scope: !387)
!396 = !DILocalVariable(name: "mode", arg: 5, scope: !387, file: !3, line: 185, type: !33)
!397 = !DILocation(line: 185, column: 27, scope: !387)
!398 = !DILocalVariable(name: "tx_own", arg: 6, scope: !387, file: !3, line: 185, type: !93)
!399 = !DILocation(line: 185, column: 38, scope: !387)
!400 = !DILocalVariable(name: "ls", arg: 7, scope: !387, file: !3, line: 186, type: !93)
!401 = !DILocation(line: 186, column: 12, scope: !387)
!402 = !DILocalVariable(name: "tot_pkt_len", arg: 8, scope: !387, file: !3, line: 186, type: !7)
!403 = !DILocation(line: 186, column: 29, scope: !387)
!404 = !DILocalVariable(name: "tdes1", scope: !387, file: !3, line: 188, type: !7)
!405 = !DILocation(line: 188, column: 15, scope: !387)
!406 = !DILocation(line: 188, column: 23, scope: !387)
!407 = !DILocation(line: 190, column: 6, scope: !408)
!408 = distinct !DILexicalBlock(scope: !387, file: !3, line: 190, column: 6)
!409 = !DILocation(line: 190, column: 6, scope: !387)
!410 = !DILocation(line: 191, column: 9, scope: !408)
!411 = !DILocation(line: 191, column: 3, scope: !408)
!412 = !DILocation(line: 193, column: 9, scope: !408)
!413 = !DILocation(line: 195, column: 6, scope: !414)
!414 = distinct !DILexicalBlock(scope: !387, file: !3, line: 195, column: 6)
!415 = !DILocation(line: 195, column: 6, scope: !387)
!416 = !DILocation(line: 196, column: 9, scope: !414)
!417 = !DILocation(line: 196, column: 3, scope: !414)
!418 = !DILocation(line: 198, column: 9, scope: !414)
!419 = !DILocation(line: 200, column: 6, scope: !420)
!420 = distinct !DILexicalBlock(scope: !387, file: !3, line: 200, column: 6)
!421 = !DILocation(line: 200, column: 6, scope: !387)
!422 = !DILocation(line: 201, column: 9, scope: !420)
!423 = !DILocation(line: 201, column: 3, scope: !420)
!424 = !DILocation(line: 203, column: 12, scope: !387)
!425 = !DILocation(line: 203, column: 2, scope: !387)
!426 = !DILocation(line: 203, column: 5, scope: !387)
!427 = !DILocation(line: 203, column: 10, scope: !387)
!428 = !DILocation(line: 205, column: 6, scope: !429)
!429 = distinct !DILexicalBlock(scope: !387, file: !3, line: 205, column: 6)
!430 = !DILocation(line: 205, column: 11, scope: !429)
!431 = !DILocation(line: 205, column: 6, scope: !387)
!432 = !DILocation(line: 206, column: 33, scope: !429)
!433 = !DILocation(line: 206, column: 36, scope: !429)
!434 = !DILocation(line: 206, column: 3, scope: !429)
!435 = !DILocation(line: 208, column: 32, scope: !429)
!436 = !DILocation(line: 208, column: 35, scope: !429)
!437 = !DILocation(line: 208, column: 3, scope: !429)
!438 = !DILocation(line: 210, column: 6, scope: !439)
!439 = distinct !DILexicalBlock(scope: !387, file: !3, line: 210, column: 6)
!440 = !DILocation(line: 210, column: 6, scope: !387)
!441 = !DILocation(line: 211, column: 3, scope: !439)
!442 = !DILocation(line: 211, column: 6, scope: !439)
!443 = !DILocation(line: 211, column: 11, scope: !439)
!444 = !DILocation(line: 212, column: 1, scope: !387)
!445 = distinct !DISubprogram(name: "ndesc_set_tx_owner", scope: !3, file: !3, line: 158, type: !102, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!446 = !DILocalVariable(name: "p", arg: 1, scope: !445, file: !3, line: 158, type: !64)
!447 = !DILocation(line: 158, column: 49, scope: !445)
!448 = !DILocation(line: 160, column: 2, scope: !445)
!449 = !DILocation(line: 160, column: 5, scope: !445)
!450 = !DILocation(line: 160, column: 10, scope: !445)
!451 = !DILocation(line: 161, column: 1, scope: !445)
!452 = distinct !DISubprogram(name: "ndesc_get_tx_owner", scope: !3, file: !3, line: 153, type: !106, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!453 = !DILocalVariable(name: "p", arg: 1, scope: !452, file: !3, line: 153, type: !64)
!454 = !DILocation(line: 153, column: 48, scope: !452)
!455 = !DILocation(line: 155, column: 10, scope: !452)
!456 = !DILocation(line: 155, column: 31, scope: !452)
!457 = !DILocation(line: 155, column: 44, scope: !452)
!458 = !DILocation(line: 155, column: 2, scope: !452)
!459 = distinct !DISubprogram(name: "ndesc_release_tx_desc", scope: !3, file: !3, line: 173, type: !110, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!460 = !DILocalVariable(name: "p", arg: 1, scope: !459, file: !3, line: 173, type: !64)
!461 = !DILocation(line: 173, column: 52, scope: !459)
!462 = !DILocalVariable(name: "mode", arg: 2, scope: !459, file: !3, line: 173, type: !33)
!463 = !DILocation(line: 173, column: 59, scope: !459)
!464 = !DILocalVariable(name: "ter", scope: !459, file: !3, line: 175, type: !33)
!465 = !DILocation(line: 175, column: 6, scope: !459)
!466 = !DILocation(line: 175, column: 13, scope: !459)
!467 = !DILocation(line: 175, column: 34, scope: !459)
!468 = !DILocation(line: 175, column: 52, scope: !459)
!469 = !DILocation(line: 175, column: 12, scope: !459)
!470 = !DILocation(line: 177, column: 9, scope: !459)
!471 = !DILocation(line: 177, column: 2, scope: !459)
!472 = !DILocation(line: 178, column: 6, scope: !473)
!473 = distinct !DILexicalBlock(scope: !459, file: !3, line: 178, column: 6)
!474 = !DILocation(line: 178, column: 11, scope: !473)
!475 = !DILocation(line: 178, column: 6, scope: !459)
!476 = !DILocation(line: 179, column: 25, scope: !473)
!477 = !DILocation(line: 179, column: 3, scope: !473)
!478 = !DILocation(line: 181, column: 29, scope: !473)
!479 = !DILocation(line: 181, column: 32, scope: !473)
!480 = !DILocation(line: 181, column: 3, scope: !473)
!481 = !DILocation(line: 182, column: 1, scope: !459)
!482 = distinct !DISubprogram(name: "ndesc_set_tx_ic", scope: !3, file: !3, line: 214, type: !102, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!483 = !DILocalVariable(name: "p", arg: 1, scope: !482, file: !3, line: 214, type: !64)
!484 = !DILocation(line: 214, column: 46, scope: !482)
!485 = !DILocation(line: 216, column: 2, scope: !482)
!486 = !DILocation(line: 216, column: 5, scope: !482)
!487 = !DILocation(line: 216, column: 10, scope: !482)
!488 = !DILocation(line: 217, column: 1, scope: !482)
!489 = distinct !DISubprogram(name: "ndesc_get_tx_ls", scope: !3, file: !3, line: 168, type: !106, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!490 = !DILocalVariable(name: "p", arg: 1, scope: !489, file: !3, line: 168, type: !64)
!491 = !DILocation(line: 168, column: 45, scope: !489)
!492 = !DILocation(line: 170, column: 10, scope: !489)
!493 = !DILocation(line: 170, column: 31, scope: !489)
!494 = !DILocation(line: 170, column: 53, scope: !489)
!495 = !DILocation(line: 170, column: 9, scope: !489)
!496 = !DILocation(line: 170, column: 2, scope: !489)
!497 = distinct !DISubprogram(name: "ndesc_get_tx_status", scope: !3, file: !3, line: 15, type: !116, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!498 = !DILocalVariable(name: "data", arg: 1, scope: !497, file: !3, line: 15, type: !118)
!499 = !DILocation(line: 15, column: 38, scope: !497)
!500 = !DILocalVariable(name: "x", arg: 2, scope: !497, file: !3, line: 15, type: !119)
!501 = !DILocation(line: 15, column: 71, scope: !497)
!502 = !DILocalVariable(name: "p", arg: 3, scope: !497, file: !3, line: 16, type: !64)
!503 = !DILocation(line: 16, column: 28, scope: !497)
!504 = !DILocalVariable(name: "ioaddr", arg: 4, scope: !497, file: !3, line: 16, type: !118)
!505 = !DILocation(line: 16, column: 45, scope: !497)
!506 = !DILocalVariable(name: "stats", scope: !497, file: !3, line: 18, type: !36)
!507 = !DILocation(line: 18, column: 27, scope: !497)
!508 = !DILocation(line: 18, column: 62, scope: !497)
!509 = !DILocation(line: 18, column: 35, scope: !497)
!510 = !DILocalVariable(name: "tdes0", scope: !497, file: !3, line: 19, type: !7)
!511 = !DILocation(line: 19, column: 15, scope: !497)
!512 = !DILocation(line: 19, column: 23, scope: !497)
!513 = !DILocalVariable(name: "tdes1", scope: !497, file: !3, line: 20, type: !7)
!514 = !DILocation(line: 20, column: 15, scope: !497)
!515 = !DILocation(line: 20, column: 23, scope: !497)
!516 = !DILocalVariable(name: "ret", scope: !497, file: !3, line: 21, type: !33)
!517 = !DILocation(line: 21, column: 6, scope: !497)
!518 = !DILocation(line: 24, column: 6, scope: !519)
!519 = distinct !DILexicalBlock(scope: !497, file: !3, line: 24, column: 6)
!520 = !DILocation(line: 24, column: 6, scope: !497)
!521 = !DILocation(line: 25, column: 3, scope: !519)
!522 = !DILocation(line: 28, column: 6, scope: !523)
!523 = distinct !DILexicalBlock(scope: !497, file: !3, line: 28, column: 6)
!524 = !DILocation(line: 28, column: 6, scope: !497)
!525 = !DILocation(line: 29, column: 3, scope: !523)
!526 = !DILocation(line: 31, column: 6, scope: !527)
!527 = distinct !DILexicalBlock(scope: !497, file: !3, line: 31, column: 6)
!528 = !DILocation(line: 31, column: 6, scope: !497)
!529 = !DILocation(line: 32, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !3, line: 32, column: 7)
!531 = distinct !DILexicalBlock(scope: !527, file: !3, line: 31, column: 45)
!532 = !DILocation(line: 32, column: 7, scope: !531)
!533 = !DILocation(line: 33, column: 4, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !3, line: 32, column: 48)
!535 = !DILocation(line: 33, column: 7, scope: !534)
!536 = !DILocation(line: 33, column: 19, scope: !534)
!537 = !DILocation(line: 34, column: 4, scope: !534)
!538 = !DILocation(line: 34, column: 11, scope: !534)
!539 = !DILocation(line: 34, column: 25, scope: !534)
!540 = !DILocation(line: 35, column: 3, scope: !534)
!541 = !DILocation(line: 36, column: 7, scope: !542)
!542 = distinct !DILexicalBlock(scope: !531, file: !3, line: 36, column: 7)
!543 = !DILocation(line: 36, column: 7, scope: !531)
!544 = !DILocation(line: 37, column: 4, scope: !545)
!545 = distinct !DILexicalBlock(scope: !542, file: !3, line: 36, column: 43)
!546 = !DILocation(line: 37, column: 7, scope: !545)
!547 = !DILocation(line: 37, column: 17, scope: !545)
!548 = !DILocation(line: 38, column: 4, scope: !545)
!549 = !DILocation(line: 38, column: 11, scope: !545)
!550 = !DILocation(line: 38, column: 28, scope: !545)
!551 = !DILocation(line: 39, column: 3, scope: !545)
!552 = !DILocation(line: 40, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !531, file: !3, line: 40, column: 7)
!554 = !DILocation(line: 40, column: 7, scope: !531)
!555 = !DILocation(line: 41, column: 4, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !3, line: 40, column: 45)
!557 = !DILocation(line: 41, column: 7, scope: !556)
!558 = !DILocation(line: 41, column: 21, scope: !556)
!559 = !DILocation(line: 42, column: 4, scope: !556)
!560 = !DILocation(line: 42, column: 11, scope: !556)
!561 = !DILocation(line: 42, column: 28, scope: !556)
!562 = !DILocation(line: 43, column: 3, scope: !556)
!563 = !DILocation(line: 44, column: 7, scope: !564)
!564 = distinct !DILexicalBlock(scope: !531, file: !3, line: 44, column: 7)
!565 = !DILocation(line: 44, column: 7, scope: !531)
!566 = !DILocalVariable(name: "collisions", scope: !567, file: !3, line: 47, type: !7)
!567 = distinct !DILexicalBlock(scope: !564, file: !3, line: 46, column: 42)
!568 = !DILocation(line: 47, column: 17, scope: !567)
!569 = !DILocation(line: 49, column: 18, scope: !567)
!570 = !DILocation(line: 49, column: 24, scope: !567)
!571 = !DILocation(line: 49, column: 54, scope: !567)
!572 = !DILocation(line: 49, column: 17, scope: !567)
!573 = !DILocation(line: 49, column: 15, scope: !567)
!574 = !DILocation(line: 50, column: 25, scope: !567)
!575 = !DILocation(line: 50, column: 4, scope: !567)
!576 = !DILocation(line: 50, column: 11, scope: !567)
!577 = !DILocation(line: 50, column: 22, scope: !567)
!578 = !DILocation(line: 51, column: 3, scope: !567)
!579 = !DILocation(line: 52, column: 7, scope: !531)
!580 = !DILocation(line: 53, column: 2, scope: !531)
!581 = !DILocation(line: 55, column: 6, scope: !582)
!582 = distinct !DILexicalBlock(scope: !497, file: !3, line: 55, column: 6)
!583 = !DILocation(line: 55, column: 12, scope: !582)
!584 = !DILocation(line: 55, column: 6, scope: !497)
!585 = !DILocation(line: 56, column: 3, scope: !582)
!586 = !DILocation(line: 56, column: 6, scope: !582)
!587 = !DILocation(line: 56, column: 13, scope: !582)
!588 = !DILocation(line: 58, column: 6, scope: !589)
!589 = distinct !DILexicalBlock(scope: !497, file: !3, line: 58, column: 6)
!590 = !DILocation(line: 58, column: 6, scope: !497)
!591 = !DILocation(line: 59, column: 3, scope: !589)
!592 = !DILocation(line: 59, column: 6, scope: !589)
!593 = !DILocation(line: 59, column: 17, scope: !589)
!594 = !DILocation(line: 61, column: 9, scope: !497)
!595 = !DILocation(line: 61, column: 2, scope: !497)
!596 = !DILocation(line: 62, column: 1, scope: !497)
!597 = distinct !DISubprogram(name: "ndesc_get_tx_len", scope: !3, file: !3, line: 64, type: !106, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!598 = !DILocalVariable(name: "p", arg: 1, scope: !597, file: !3, line: 64, type: !64)
!599 = !DILocation(line: 64, column: 46, scope: !597)
!600 = !DILocation(line: 66, column: 10, scope: !597)
!601 = !DILocation(line: 66, column: 31, scope: !597)
!602 = !DILocation(line: 66, column: 9, scope: !597)
!603 = !DILocation(line: 66, column: 2, scope: !597)
!604 = distinct !DISubprogram(name: "ndesc_set_rx_owner", scope: !3, file: !3, line: 163, type: !110, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!605 = !DILocalVariable(name: "p", arg: 1, scope: !604, file: !3, line: 163, type: !64)
!606 = !DILocation(line: 163, column: 49, scope: !604)
!607 = !DILocalVariable(name: "disable_rx_ic", arg: 2, scope: !604, file: !3, line: 163, type: !33)
!608 = !DILocation(line: 163, column: 56, scope: !604)
!609 = !DILocation(line: 165, column: 2, scope: !604)
!610 = !DILocation(line: 165, column: 5, scope: !604)
!611 = !DILocation(line: 165, column: 10, scope: !604)
!612 = !DILocation(line: 166, column: 1, scope: !604)
!613 = distinct !DISubprogram(name: "ndesc_get_rx_frame_len", scope: !3, file: !3, line: 219, type: !239, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!614 = !DILocalVariable(name: "p", arg: 1, scope: !613, file: !3, line: 219, type: !64)
!615 = !DILocation(line: 219, column: 52, scope: !613)
!616 = !DILocalVariable(name: "rx_coe_type", arg: 2, scope: !613, file: !3, line: 219, type: !33)
!617 = !DILocation(line: 219, column: 59, scope: !613)
!618 = !DILocalVariable(name: "csum", scope: !613, file: !3, line: 221, type: !7)
!619 = !DILocation(line: 221, column: 15, scope: !613)
!620 = !DILocation(line: 229, column: 6, scope: !621)
!621 = distinct !DILexicalBlock(scope: !613, file: !3, line: 229, column: 6)
!622 = !DILocation(line: 229, column: 18, scope: !621)
!623 = !DILocation(line: 229, column: 6, scope: !613)
!624 = !DILocation(line: 230, column: 8, scope: !621)
!625 = !DILocation(line: 230, column: 3, scope: !621)
!626 = !DILocation(line: 232, column: 12, scope: !613)
!627 = !DILocation(line: 232, column: 33, scope: !613)
!628 = !DILocation(line: 233, column: 5, scope: !613)
!629 = !DILocation(line: 234, column: 3, scope: !613)
!630 = !DILocation(line: 233, column: 31, scope: !613)
!631 = !DILocation(line: 232, column: 9, scope: !613)
!632 = !DILocation(line: 232, column: 2, scope: !613)
!633 = distinct !DISubprogram(name: "ndesc_get_rx_status", scope: !3, file: !3, line: 73, type: !243, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!634 = !DILocalVariable(name: "data", arg: 1, scope: !633, file: !3, line: 73, type: !118)
!635 = !DILocation(line: 73, column: 38, scope: !633)
!636 = !DILocalVariable(name: "x", arg: 2, scope: !633, file: !3, line: 73, type: !119)
!637 = !DILocation(line: 73, column: 71, scope: !633)
!638 = !DILocalVariable(name: "p", arg: 3, scope: !633, file: !3, line: 74, type: !64)
!639 = !DILocation(line: 74, column: 28, scope: !633)
!640 = !DILocalVariable(name: "ret", scope: !633, file: !3, line: 76, type: !33)
!641 = !DILocation(line: 76, column: 6, scope: !633)
!642 = !DILocalVariable(name: "rdes0", scope: !633, file: !3, line: 77, type: !7)
!643 = !DILocation(line: 77, column: 15, scope: !633)
!644 = !DILocation(line: 77, column: 23, scope: !633)
!645 = !DILocalVariable(name: "stats", scope: !633, file: !3, line: 78, type: !36)
!646 = !DILocation(line: 78, column: 27, scope: !633)
!647 = !DILocation(line: 78, column: 62, scope: !633)
!648 = !DILocation(line: 78, column: 35, scope: !633)
!649 = !DILocation(line: 80, column: 6, scope: !650)
!650 = distinct !DILexicalBlock(scope: !633, file: !3, line: 80, column: 6)
!651 = !DILocation(line: 80, column: 6, scope: !633)
!652 = !DILocation(line: 81, column: 3, scope: !650)
!653 = !DILocation(line: 83, column: 6, scope: !654)
!654 = distinct !DILexicalBlock(scope: !633, file: !3, line: 83, column: 6)
!655 = !DILocation(line: 83, column: 6, scope: !633)
!656 = !DILocation(line: 84, column: 3, scope: !657)
!657 = distinct !DILexicalBlock(scope: !654, file: !3, line: 83, column: 50)
!658 = !DILocation(line: 84, column: 10, scope: !657)
!659 = !DILocation(line: 84, column: 26, scope: !657)
!660 = !DILocation(line: 85, column: 3, scope: !657)
!661 = !DILocation(line: 88, column: 6, scope: !662)
!662 = distinct !DILexicalBlock(scope: !633, file: !3, line: 88, column: 6)
!663 = !DILocation(line: 88, column: 6, scope: !633)
!664 = !DILocation(line: 89, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !3, line: 89, column: 7)
!666 = distinct !DILexicalBlock(scope: !662, file: !3, line: 88, column: 45)
!667 = !DILocation(line: 89, column: 7, scope: !666)
!668 = !DILocation(line: 90, column: 4, scope: !665)
!669 = !DILocation(line: 90, column: 7, scope: !665)
!670 = !DILocation(line: 90, column: 14, scope: !665)
!671 = !DILocation(line: 91, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !666, file: !3, line: 91, column: 7)
!673 = !DILocation(line: 91, column: 7, scope: !666)
!674 = !DILocation(line: 92, column: 4, scope: !672)
!675 = !DILocation(line: 92, column: 7, scope: !672)
!676 = !DILocation(line: 92, column: 21, scope: !672)
!677 = !DILocation(line: 93, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !666, file: !3, line: 93, column: 7)
!679 = !DILocation(line: 93, column: 7, scope: !666)
!680 = !DILocation(line: 94, column: 4, scope: !678)
!681 = !DILocation(line: 94, column: 7, scope: !678)
!682 = !DILocation(line: 94, column: 21, scope: !678)
!683 = !DILocation(line: 95, column: 7, scope: !684)
!684 = distinct !DILexicalBlock(scope: !666, file: !3, line: 95, column: 7)
!685 = !DILocation(line: 95, column: 7, scope: !666)
!686 = !DILocation(line: 96, column: 4, scope: !684)
!687 = !DILocation(line: 96, column: 7, scope: !684)
!688 = !DILocation(line: 96, column: 21, scope: !684)
!689 = !DILocation(line: 97, column: 7, scope: !690)
!690 = distinct !DILexicalBlock(scope: !666, file: !3, line: 97, column: 7)
!691 = !DILocation(line: 97, column: 7, scope: !666)
!692 = !DILocation(line: 98, column: 4, scope: !693)
!693 = distinct !DILexicalBlock(scope: !690, file: !3, line: 97, column: 42)
!694 = !DILocation(line: 98, column: 7, scope: !693)
!695 = !DILocation(line: 98, column: 19, scope: !693)
!696 = !DILocation(line: 99, column: 4, scope: !693)
!697 = !DILocation(line: 99, column: 11, scope: !693)
!698 = !DILocation(line: 99, column: 21, scope: !693)
!699 = !DILocation(line: 100, column: 3, scope: !693)
!700 = !DILocation(line: 101, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !666, file: !3, line: 101, column: 7)
!702 = !DILocation(line: 101, column: 7, scope: !666)
!703 = !DILocation(line: 102, column: 4, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !3, line: 101, column: 42)
!705 = !DILocation(line: 102, column: 7, scope: !704)
!706 = !DILocation(line: 102, column: 20, scope: !704)
!707 = !DILocation(line: 103, column: 4, scope: !704)
!708 = !DILocation(line: 103, column: 11, scope: !704)
!709 = !DILocation(line: 103, column: 24, scope: !704)
!710 = !DILocation(line: 104, column: 3, scope: !704)
!711 = !DILocation(line: 105, column: 7, scope: !666)
!712 = !DILocation(line: 106, column: 2, scope: !666)
!713 = !DILocation(line: 107, column: 6, scope: !714)
!714 = distinct !DILexicalBlock(scope: !633, file: !3, line: 107, column: 6)
!715 = !DILocation(line: 107, column: 6, scope: !633)
!716 = !DILocation(line: 108, column: 3, scope: !714)
!717 = !DILocation(line: 108, column: 6, scope: !714)
!718 = !DILocation(line: 108, column: 19, scope: !714)
!719 = !DILocation(line: 110, column: 6, scope: !720)
!720 = distinct !DILexicalBlock(scope: !633, file: !3, line: 110, column: 6)
!721 = !DILocation(line: 110, column: 6, scope: !633)
!722 = !DILocation(line: 111, column: 3, scope: !723)
!723 = distinct !DILexicalBlock(scope: !720, file: !3, line: 110, column: 44)
!724 = !DILocation(line: 111, column: 6, scope: !723)
!725 = !DILocation(line: 111, column: 15, scope: !723)
!726 = !DILocation(line: 112, column: 7, scope: !723)
!727 = !DILocation(line: 113, column: 2, scope: !723)
!728 = !DILocation(line: 114, column: 6, scope: !729)
!729 = distinct !DILexicalBlock(scope: !633, file: !3, line: 114, column: 6)
!730 = !DILocation(line: 114, column: 6, scope: !633)
!731 = !DILocation(line: 115, column: 3, scope: !732)
!732 = distinct !DILexicalBlock(scope: !729, file: !3, line: 114, column: 41)
!733 = !DILocation(line: 115, column: 6, scope: !732)
!734 = !DILocation(line: 115, column: 12, scope: !732)
!735 = !DILocation(line: 116, column: 7, scope: !732)
!736 = !DILocation(line: 117, column: 2, scope: !732)
!737 = !DILocation(line: 119, column: 6, scope: !738)
!738 = distinct !DILexicalBlock(scope: !633, file: !3, line: 119, column: 6)
!739 = !DILocation(line: 119, column: 12, scope: !738)
!740 = !DILocation(line: 119, column: 6, scope: !633)
!741 = !DILocation(line: 120, column: 3, scope: !738)
!742 = !DILocation(line: 120, column: 6, scope: !738)
!743 = !DILocation(line: 120, column: 14, scope: !738)
!744 = !DILocation(line: 122, column: 9, scope: !633)
!745 = !DILocation(line: 122, column: 2, scope: !633)
!746 = !DILocation(line: 123, column: 1, scope: !633)
!747 = distinct !DISubprogram(name: "ndesc_enable_tx_timestamp", scope: !3, file: !3, line: 238, type: !102, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!748 = !DILocalVariable(name: "p", arg: 1, scope: !747, file: !3, line: 238, type: !64)
!749 = !DILocation(line: 238, column: 56, scope: !747)
!750 = !DILocation(line: 240, column: 2, scope: !747)
!751 = !DILocation(line: 240, column: 5, scope: !747)
!752 = !DILocation(line: 240, column: 10, scope: !747)
!753 = !DILocation(line: 241, column: 1, scope: !747)
!754 = distinct !DISubprogram(name: "ndesc_get_tx_timestamp_status", scope: !3, file: !3, line: 243, type: !106, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!755 = !DILocalVariable(name: "p", arg: 1, scope: !754, file: !3, line: 243, type: !64)
!756 = !DILocation(line: 243, column: 59, scope: !754)
!757 = !DILocation(line: 245, column: 10, scope: !754)
!758 = !DILocation(line: 245, column: 31, scope: !754)
!759 = !DILocation(line: 245, column: 58, scope: !754)
!760 = !DILocation(line: 245, column: 9, scope: !754)
!761 = !DILocation(line: 245, column: 2, scope: !754)
!762 = distinct !DISubprogram(name: "ndesc_get_timestamp", scope: !3, file: !3, line: 248, type: !261, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!763 = !DILocalVariable(name: "desc", arg: 1, scope: !762, file: !3, line: 248, type: !118)
!764 = !DILocation(line: 248, column: 39, scope: !762)
!765 = !DILocalVariable(name: "ats", arg: 2, scope: !762, file: !3, line: 248, type: !34)
!766 = !DILocation(line: 248, column: 49, scope: !762)
!767 = !DILocalVariable(name: "ts", arg: 3, scope: !762, file: !3, line: 248, type: !72)
!768 = !DILocation(line: 248, column: 59, scope: !762)
!769 = !DILocalVariable(name: "p", scope: !762, file: !3, line: 250, type: !64)
!770 = !DILocation(line: 250, column: 19, scope: !762)
!771 = !DILocation(line: 250, column: 42, scope: !762)
!772 = !DILocation(line: 250, column: 23, scope: !762)
!773 = !DILocalVariable(name: "ns", scope: !762, file: !3, line: 251, type: !73)
!774 = !DILocation(line: 251, column: 6, scope: !762)
!775 = !DILocation(line: 253, column: 7, scope: !762)
!776 = !DILocation(line: 253, column: 5, scope: !762)
!777 = !DILocation(line: 255, column: 8, scope: !762)
!778 = !DILocation(line: 255, column: 29, scope: !762)
!779 = !DILocation(line: 255, column: 5, scope: !762)
!780 = !DILocation(line: 257, column: 8, scope: !762)
!781 = !DILocation(line: 257, column: 3, scope: !762)
!782 = !DILocation(line: 257, column: 6, scope: !762)
!783 = !DILocation(line: 258, column: 1, scope: !762)
!784 = distinct !DISubprogram(name: "ndesc_get_rx_timestamp_status", scope: !3, file: !3, line: 260, type: !265, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!785 = !DILocalVariable(name: "desc", arg: 1, scope: !784, file: !3, line: 260, type: !118)
!786 = !DILocation(line: 260, column: 48, scope: !784)
!787 = !DILocalVariable(name: "next_desc", arg: 2, scope: !784, file: !3, line: 260, type: !118)
!788 = !DILocation(line: 260, column: 60, scope: !784)
!789 = !DILocalVariable(name: "ats", arg: 3, scope: !784, file: !3, line: 260, type: !34)
!790 = !DILocation(line: 260, column: 75, scope: !784)
!791 = !DILocalVariable(name: "p", scope: !784, file: !3, line: 262, type: !64)
!792 = !DILocation(line: 262, column: 19, scope: !784)
!793 = !DILocation(line: 262, column: 42, scope: !784)
!794 = !DILocation(line: 262, column: 23, scope: !784)
!795 = !DILocation(line: 264, column: 7, scope: !796)
!796 = distinct !DILexicalBlock(scope: !784, file: !3, line: 264, column: 6)
!797 = !DILocation(line: 264, column: 28, scope: !796)
!798 = !DILocation(line: 264, column: 43, scope: !796)
!799 = !DILocation(line: 265, column: 7, scope: !796)
!800 = !DILocation(line: 265, column: 28, scope: !796)
!801 = !DILocation(line: 264, column: 6, scope: !784)
!802 = !DILocation(line: 267, column: 3, scope: !796)
!803 = !DILocation(line: 269, column: 3, scope: !796)
!804 = !DILocation(line: 270, column: 1, scope: !784)
!805 = distinct !DISubprogram(name: "ndesc_display_ring", scope: !3, file: !3, line: 272, type: !269, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!806 = !DILocalVariable(name: "head", arg: 1, scope: !805, file: !3, line: 272, type: !118)
!807 = !DILocation(line: 272, column: 38, scope: !805)
!808 = !DILocalVariable(name: "size", arg: 2, scope: !805, file: !3, line: 272, type: !7)
!809 = !DILocation(line: 272, column: 57, scope: !805)
!810 = !DILocalVariable(name: "rx", arg: 3, scope: !805, file: !3, line: 272, type: !93)
!811 = !DILocation(line: 272, column: 68, scope: !805)
!812 = !DILocalVariable(name: "p", scope: !805, file: !3, line: 274, type: !64)
!813 = !DILocation(line: 274, column: 19, scope: !805)
!814 = !DILocation(line: 274, column: 42, scope: !805)
!815 = !DILocation(line: 274, column: 23, scope: !805)
!816 = !DILocalVariable(name: "i", scope: !805, file: !3, line: 275, type: !33)
!817 = !DILocation(line: 275, column: 6, scope: !805)
!818 = !DILocation(line: 277, column: 2, scope: !805)
!819 = !DILocation(line: 279, column: 9, scope: !820)
!820 = distinct !DILexicalBlock(scope: !805, file: !3, line: 279, column: 2)
!821 = !DILocation(line: 279, column: 7, scope: !820)
!822 = !DILocation(line: 279, column: 14, scope: !823)
!823 = distinct !DILexicalBlock(scope: !820, file: !3, line: 279, column: 2)
!824 = !DILocation(line: 279, column: 18, scope: !823)
!825 = !DILocation(line: 279, column: 16, scope: !823)
!826 = !DILocation(line: 279, column: 2, scope: !820)
!827 = !DILocalVariable(name: "x", scope: !828, file: !3, line: 280, type: !73)
!828 = distinct !DILexicalBlock(scope: !823, file: !3, line: 279, column: 29)
!829 = !DILocation(line: 280, column: 7, scope: !828)
!830 = !DILocation(line: 282, column: 15, scope: !828)
!831 = !DILocation(line: 282, column: 7, scope: !828)
!832 = !DILocation(line: 282, column: 5, scope: !828)
!833 = !DILocation(line: 283, column: 3, scope: !828)
!834 = !DILocation(line: 287, column: 4, scope: !828)
!835 = !DILocation(line: 288, column: 2, scope: !828)
!836 = !DILocation(line: 279, column: 25, scope: !823)
!837 = !DILocation(line: 279, column: 2, scope: !823)
!838 = distinct !{!838, !826, !839}
!839 = !DILocation(line: 288, column: 2, scope: !820)
!840 = !DILocation(line: 289, column: 2, scope: !805)
!841 = !DILocation(line: 290, column: 1, scope: !805)
!842 = distinct !DISubprogram(name: "ndesc_get_addr", scope: !3, file: !3, line: 292, type: !277, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!843 = !DILocalVariable(name: "p", arg: 1, scope: !842, file: !3, line: 292, type: !64)
!844 = !DILocation(line: 292, column: 45, scope: !842)
!845 = !DILocalVariable(name: "addr", arg: 2, scope: !842, file: !3, line: 292, type: !279)
!846 = !DILocation(line: 292, column: 62, scope: !842)
!847 = !DILocation(line: 294, column: 10, scope: !842)
!848 = !DILocation(line: 294, column: 3, scope: !842)
!849 = !DILocation(line: 294, column: 8, scope: !842)
!850 = !DILocation(line: 295, column: 1, scope: !842)
!851 = distinct !DISubprogram(name: "ndesc_set_addr", scope: !3, file: !3, line: 297, type: !282, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!852 = !DILocalVariable(name: "p", arg: 1, scope: !851, file: !3, line: 297, type: !64)
!853 = !DILocation(line: 297, column: 45, scope: !851)
!854 = !DILocalVariable(name: "addr", arg: 2, scope: !851, file: !3, line: 297, type: !284)
!855 = !DILocation(line: 297, column: 59, scope: !851)
!856 = !DILocation(line: 299, column: 12, scope: !851)
!857 = !DILocation(line: 299, column: 2, scope: !851)
!858 = !DILocation(line: 299, column: 5, scope: !851)
!859 = !DILocation(line: 299, column: 10, scope: !851)
!860 = !DILocation(line: 300, column: 1, scope: !851)
!861 = distinct !DISubprogram(name: "ndesc_clear", scope: !3, file: !3, line: 302, type: !102, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!862 = !DILocalVariable(name: "p", arg: 1, scope: !861, file: !3, line: 302, type: !64)
!863 = !DILocation(line: 302, column: 42, scope: !861)
!864 = !DILocation(line: 304, column: 2, scope: !861)
!865 = !DILocation(line: 304, column: 5, scope: !861)
!866 = !DILocation(line: 304, column: 10, scope: !861)
!867 = !DILocation(line: 305, column: 1, scope: !861)
!868 = distinct !DISubprogram(name: "ndesc_rx_set_on_chain", scope: !869, file: !869, line: 107, type: !110, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!869 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/descs_com.h", directory: "/home/lizy2001/genbc/linux")
!870 = !DILocalVariable(name: "p", arg: 1, scope: !868, file: !869, line: 107, type: !64)
!871 = !DILocation(line: 107, column: 59, scope: !868)
!872 = !DILocalVariable(name: "end", arg: 2, scope: !868, file: !869, line: 107, type: !33)
!873 = !DILocation(line: 107, column: 66, scope: !868)
!874 = !DILocation(line: 109, column: 2, scope: !868)
!875 = !DILocation(line: 109, column: 5, scope: !868)
!876 = !DILocation(line: 109, column: 10, scope: !868)
!877 = !DILocation(line: 110, column: 1, scope: !868)
!878 = distinct !DISubprogram(name: "ndesc_rx_set_on_ring", scope: !869, file: !869, line: 54, type: !87, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!879 = !DILocalVariable(name: "p", arg: 1, scope: !878, file: !869, line: 54, type: !64)
!880 = !DILocation(line: 54, column: 58, scope: !878)
!881 = !DILocalVariable(name: "end", arg: 2, scope: !878, file: !869, line: 54, type: !33)
!882 = !DILocation(line: 54, column: 65, scope: !878)
!883 = !DILocalVariable(name: "bfsize", arg: 3, scope: !878, file: !869, line: 54, type: !33)
!884 = !DILocation(line: 54, column: 74, scope: !878)
!885 = !DILocation(line: 56, column: 6, scope: !886)
!886 = distinct !DILexicalBlock(scope: !878, file: !869, line: 56, column: 6)
!887 = !DILocation(line: 56, column: 13, scope: !886)
!888 = !DILocation(line: 56, column: 6, scope: !878)
!889 = !DILocalVariable(name: "bfsize2", scope: !890, file: !869, line: 57, type: !33)
!890 = distinct !DILexicalBlock(scope: !886, file: !869, line: 56, column: 31)
!891 = !DILocation(line: 57, column: 7, scope: !890)
!892 = !DILocalVariable(name: "__UNIQUE_ID___x322", scope: !893, file: !869, line: 59, type: !33)
!893 = distinct !DILexicalBlock(scope: !890, file: !869, line: 59, column: 13)
!894 = !DILocation(line: 59, column: 13, scope: !893)
!895 = !DILocalVariable(name: "__UNIQUE_ID___y323", scope: !893, file: !869, line: 59, type: !33)
!896 = !DILocation(line: 59, column: 11, scope: !890)
!897 = !DILocation(line: 60, column: 14, scope: !890)
!898 = !DILocation(line: 60, column: 3, scope: !890)
!899 = !DILocation(line: 60, column: 6, scope: !890)
!900 = !DILocation(line: 60, column: 11, scope: !890)
!901 = !DILocation(line: 62, column: 2, scope: !890)
!902 = !DILocation(line: 64, column: 6, scope: !903)
!903 = distinct !DILexicalBlock(scope: !878, file: !869, line: 64, column: 6)
!904 = !DILocation(line: 64, column: 6, scope: !878)
!905 = !DILocation(line: 65, column: 3, scope: !903)
!906 = !DILocation(line: 65, column: 6, scope: !903)
!907 = !DILocation(line: 65, column: 11, scope: !903)
!908 = !DILocation(line: 66, column: 1, scope: !878)
!909 = distinct !DISubprogram(name: "ndesc_tx_set_on_chain", scope: !869, file: !869, line: 112, type: !102, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!910 = !DILocalVariable(name: "p", arg: 1, scope: !909, file: !869, line: 112, type: !64)
!911 = !DILocation(line: 112, column: 59, scope: !909)
!912 = !DILocation(line: 114, column: 2, scope: !909)
!913 = !DILocation(line: 114, column: 5, scope: !909)
!914 = !DILocation(line: 114, column: 10, scope: !909)
!915 = !DILocation(line: 115, column: 1, scope: !909)
!916 = distinct !DISubprogram(name: "ndesc_end_tx_desc_on_ring", scope: !869, file: !869, line: 68, type: !110, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!917 = !DILocalVariable(name: "p", arg: 1, scope: !916, file: !869, line: 68, type: !64)
!918 = !DILocation(line: 68, column: 63, scope: !916)
!919 = !DILocalVariable(name: "end", arg: 2, scope: !916, file: !869, line: 68, type: !33)
!920 = !DILocation(line: 68, column: 70, scope: !916)
!921 = !DILocation(line: 70, column: 6, scope: !922)
!922 = distinct !DILexicalBlock(scope: !916, file: !869, line: 70, column: 6)
!923 = !DILocation(line: 70, column: 6, scope: !916)
!924 = !DILocation(line: 71, column: 3, scope: !922)
!925 = !DILocation(line: 71, column: 6, scope: !922)
!926 = !DILocation(line: 71, column: 11, scope: !922)
!927 = !DILocation(line: 73, column: 3, scope: !922)
!928 = !DILocation(line: 73, column: 6, scope: !922)
!929 = !DILocation(line: 73, column: 11, scope: !922)
!930 = !DILocation(line: 74, column: 1, scope: !916)
!931 = distinct !DISubprogram(name: "norm_set_tx_desc_len_on_chain", scope: !869, file: !869, line: 117, type: !110, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!932 = !DILocalVariable(name: "p", arg: 1, scope: !931, file: !869, line: 117, type: !64)
!933 = !DILocation(line: 117, column: 67, scope: !931)
!934 = !DILocalVariable(name: "len", arg: 2, scope: !931, file: !869, line: 117, type: !33)
!935 = !DILocation(line: 117, column: 74, scope: !931)
!936 = !DILocation(line: 119, column: 13, scope: !931)
!937 = !DILocation(line: 119, column: 2, scope: !931)
!938 = !DILocation(line: 119, column: 5, scope: !931)
!939 = !DILocation(line: 119, column: 10, scope: !931)
!940 = !DILocation(line: 120, column: 1, scope: !931)
!941 = distinct !DISubprogram(name: "norm_set_tx_desc_len_on_ring", scope: !869, file: !869, line: 76, type: !110, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!942 = !DILocalVariable(name: "p", arg: 1, scope: !941, file: !869, line: 76, type: !64)
!943 = !DILocation(line: 76, column: 66, scope: !941)
!944 = !DILocalVariable(name: "len", arg: 2, scope: !941, file: !869, line: 76, type: !33)
!945 = !DILocation(line: 76, column: 73, scope: !941)
!946 = !DILocation(line: 78, column: 6, scope: !947)
!947 = distinct !DILexicalBlock(scope: !941, file: !869, line: 78, column: 6)
!948 = !DILocation(line: 78, column: 6, scope: !941)
!949 = !DILocalVariable(name: "buffer1", scope: !950, file: !869, line: 79, type: !7)
!950 = distinct !DILexicalBlock(scope: !947, file: !869, line: 78, column: 37)
!951 = !DILocation(line: 79, column: 16, scope: !950)
!952 = !DILocation(line: 81, column: 14, scope: !950)
!953 = !DILocation(line: 81, column: 3, scope: !950)
!954 = !DILocation(line: 81, column: 6, scope: !950)
!955 = !DILocation(line: 81, column: 11, scope: !950)
!956 = !DILocation(line: 84, column: 2, scope: !950)
!957 = !DILocation(line: 85, column: 14, scope: !947)
!958 = !DILocation(line: 85, column: 3, scope: !947)
!959 = !DILocation(line: 85, column: 6, scope: !947)
!960 = !DILocation(line: 85, column: 11, scope: !947)
!961 = !DILocation(line: 86, column: 1, scope: !941)
!962 = distinct !DISubprogram(name: "virt_to_phys", scope: !963, file: !963, line: 129, type: !964, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!963 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!964 = !DISubroutineType(types: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !94, line: 153, baseType: !73)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!969 = !DILocalVariable(name: "address", arg: 1, scope: !962, file: !963, line: 129, type: !967)
!970 = !DILocation(line: 129, column: 55, scope: !962)
!971 = !DILocation(line: 131, column: 9, scope: !962)
!972 = !DILocation(line: 131, column: 2, scope: !962)
!973 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !974, file: !974, line: 18, type: !975, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !324)
!974 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!975 = !DISubroutineType(types: !976)
!976 = !{!41, !41}
!977 = !DILocalVariable(name: "x", arg: 1, scope: !973, file: !974, line: 18, type: !41)
!978 = !DILocation(line: 18, column: 63, scope: !973)
!979 = !DILocalVariable(name: "y", scope: !973, file: !974, line: 20, type: !41)
!980 = !DILocation(line: 20, column: 16, scope: !973)
!981 = !DILocation(line: 20, column: 20, scope: !973)
!982 = !DILocation(line: 20, column: 22, scope: !973)
!983 = !DILocation(line: 23, column: 6, scope: !973)
!984 = !DILocation(line: 23, column: 12, scope: !973)
!985 = !DILocation(line: 23, column: 16, scope: !973)
!986 = !DILocation(line: 23, column: 14, scope: !973)
!987 = !DILocation(line: 23, column: 11, scope: !973)
!988 = !DILocation(line: 23, column: 21, scope: !973)
!989 = !DILocation(line: 23, column: 55, scope: !973)
!990 = !DILocation(line: 23, column: 53, scope: !973)
!991 = !DILocation(line: 23, column: 8, scope: !973)
!992 = !DILocation(line: 23, column: 4, scope: !973)
!993 = !DILocation(line: 25, column: 9, scope: !973)
!994 = !DILocation(line: 25, column: 2, scope: !973)
