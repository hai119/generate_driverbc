; ModuleID = '../bcout/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.llvm.bc'
source_filename = "drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.stmmac_desc_ops = type { void (%struct.dma_desc*, i32, i32, i32, i32)*, void (%struct.dma_desc*, i32, i32)*, void (%struct.dma_desc*, i32, i32, i1, i32, i1, i1, i32)*, void (%struct.dma_desc*, i32, i32, i32, i1, i1, i32, i32)*, void (%struct.dma_desc*)*, i32 (%struct.dma_desc*)*, void (%struct.dma_desc*, i32)*, void (%struct.dma_desc*)*, i32 (%struct.dma_desc*)*, i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*, i8*)*, i32 (%struct.dma_desc*)*, void (%struct.dma_desc*, i32)*, i32 (%struct.dma_desc*, i32)*, i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*)*, void (i8*, %struct.stmmac_extra_stats*, %struct.dma_extended_desc*)*, void (%struct.dma_desc*)*, i32 (%struct.dma_desc*)*, void (i8*, i32, i64*)*, i32 (i8*, i8*, i32)*, void (i8*, i32, i1)*, void (%struct.dma_desc*, i32)*, void (%struct.dma_desc*, i32*)*, void (%struct.dma_desc*, i64)*, void (%struct.dma_desc*)*, i32 (%struct.dma_desc*, i32*, i32*)*, void (%struct.dma_desc*, i32*)*, void (%struct.dma_desc*, i64)*, void (%struct.dma_desc*, i32)*, void (%struct.dma_desc*, i16, i16, i32)*, void (%struct.dma_desc*, i32)*, void (%struct.dma_edesc*, i32, i32)* }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [56 x i8] }
%struct.dma_extended_desc = type { %struct.dma_desc, i32, i32, i32, i32 }
%struct.dma_edesc = type { i32, i32, i32, i32, %struct.dma_desc }

@dwxgmac210_desc_ops = dso_local constant %struct.stmmac_desc_ops { void (%struct.dma_desc*, i32, i32, i32, i32)* @dwxgmac2_init_rx_desc, void (%struct.dma_desc*, i32, i32)* @dwxgmac2_init_tx_desc, void (%struct.dma_desc*, i32, i32, i1, i32, i1, i1, i32)* @dwxgmac2_prepare_tx_desc, void (%struct.dma_desc*, i32, i32, i32, i1, i1, i32, i32)* @dwxgmac2_prepare_tso_tx_desc, void (%struct.dma_desc*)* @dwxgmac2_set_tx_owner, i32 (%struct.dma_desc*)* @dwxgmac2_get_tx_owner, void (%struct.dma_desc*, i32)* @dwxgmac2_release_tx_desc, void (%struct.dma_desc*)* @dwxgmac2_set_tx_ic, i32 (%struct.dma_desc*)* @dwxgmac2_get_tx_ls, i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*, i8*)* @dwxgmac2_get_tx_status, i32 (%struct.dma_desc*)* @dwxgmac2_get_tx_len, void (%struct.dma_desc*, i32)* @dwxgmac2_set_rx_owner, i32 (%struct.dma_desc*, i32)* @dwxgmac2_get_rx_frame_len, i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*)* @dwxgmac2_get_rx_status, void (i8*, %struct.stmmac_extra_stats*, %struct.dma_extended_desc*)* null, void (%struct.dma_desc*)* @dwxgmac2_enable_tx_timestamp, i32 (%struct.dma_desc*)* @dwxgmac2_get_tx_timestamp_status, void (i8*, i32, i64*)* @dwxgmac2_get_timestamp, i32 (i8*, i8*, i32)* @dwxgmac2_get_rx_timestamp_status, void (i8*, i32, i1)* null, void (%struct.dma_desc*, i32)* @dwxgmac2_set_mss, void (%struct.dma_desc*, i32*)* @dwxgmac2_get_addr, void (%struct.dma_desc*, i64)* @dwxgmac2_set_addr, void (%struct.dma_desc*)* @dwxgmac2_clear, i32 (%struct.dma_desc*, i32*, i32*)* @dwxgmac2_get_rx_hash, void (%struct.dma_desc*, i32*)* @dwxgmac2_get_rx_header_len, void (%struct.dma_desc*, i64)* @dwxgmac2_set_sec_addr, void (%struct.dma_desc*, i32)* @dwxgmac2_set_sarc, void (%struct.dma_desc*, i16, i16, i32)* @dwxgmac2_set_vlan_tag, void (%struct.dma_desc*, i32)* @dwxgmac2_set_vlan, void (%struct.dma_edesc*, i32, i32)* @dwxgmac2_set_tbs }, align 8, !dbg !0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_init_rx_desc(%struct.dma_desc* %p, i32 %disable_rx_ic, i32 %mode, i32 %end, i32 %bfsize) #0 !dbg !296 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %disable_rx_ic.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %bfsize.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !298, metadata !DIExpression()), !dbg !299
  store i32 %disable_rx_ic, i32* %disable_rx_ic.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disable_rx_ic.addr, metadata !300, metadata !DIExpression()), !dbg !301
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !302, metadata !DIExpression()), !dbg !303
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !304, metadata !DIExpression()), !dbg !305
  store i32 %bfsize, i32* %bfsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bfsize.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !308
  %1 = load i32, i32* %disable_rx_ic.addr, align 4, !dbg !309
  call void @dwxgmac2_set_rx_owner(%struct.dma_desc* %0, i32 %1) #2, !dbg !310
  ret void, !dbg !311
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_init_tx_desc(%struct.dma_desc* %p, i32 %mode, i32 %end) #0 !dbg !312 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %mode.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !313, metadata !DIExpression()), !dbg !314
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !315, metadata !DIExpression()), !dbg !316
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !317, metadata !DIExpression()), !dbg !318
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !319
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !320
  store i32 0, i32* %des0, align 4, !dbg !321
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !322
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 1, !dbg !323
  store i32 0, i32* %des1, align 4, !dbg !324
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !325
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 2, !dbg !326
  store i32 0, i32* %des2, align 4, !dbg !327
  %3 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !328
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %3, i32 0, i32 3, !dbg !329
  store i32 0, i32* %des3, align 4, !dbg !330
  ret void, !dbg !331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_prepare_tx_desc(%struct.dma_desc* %p, i32 %is_fs, i32 %len, i1 zeroext %csum_flag, i32 %mode, i1 zeroext %tx_own, i1 zeroext %ls, i32 %tot_pkt_len) #0 !dbg !332 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %is_fs.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %csum_flag.addr = alloca i8, align 1
  %mode.addr = alloca i32, align 4
  %tx_own.addr = alloca i8, align 1
  %ls.addr = alloca i8, align 1
  %tot_pkt_len.addr = alloca i32, align 4
  %tdes3 = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !333, metadata !DIExpression()), !dbg !334
  store i32 %is_fs, i32* %is_fs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %is_fs.addr, metadata !335, metadata !DIExpression()), !dbg !336
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !337, metadata !DIExpression()), !dbg !338
  %frombool = zext i1 %csum_flag to i8
  store i8 %frombool, i8* %csum_flag.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %csum_flag.addr, metadata !339, metadata !DIExpression()), !dbg !340
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !341, metadata !DIExpression()), !dbg !342
  %frombool1 = zext i1 %tx_own to i8
  store i8 %frombool1, i8* %tx_own.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tx_own.addr, metadata !343, metadata !DIExpression()), !dbg !344
  %frombool2 = zext i1 %ls to i8
  store i8 %frombool2, i8* %ls.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ls.addr, metadata !345, metadata !DIExpression()), !dbg !346
  store i32 %tot_pkt_len, i32* %tot_pkt_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tot_pkt_len.addr, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata i32* %tdes3, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !351
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 3, !dbg !351
  %1 = load i32, i32* %des3, align 4, !dbg !351
  store i32 %1, i32* %tdes3, align 4, !dbg !350
  %2 = load i32, i32* %len.addr, align 4, !dbg !352
  %conv = sext i32 %2 to i64, !dbg !352
  %and = and i64 %conv, 16383, !dbg !352
  %conv3 = trunc i64 %and to i32, !dbg !352
  %3 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !353
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %3, i32 0, i32 2, !dbg !354
  %4 = load i32, i32* %des2, align 4, !dbg !355
  %or = or i32 %4, %conv3, !dbg !355
  store i32 %or, i32* %des2, align 4, !dbg !355
  %5 = load i32, i32* %tot_pkt_len.addr, align 4, !dbg !356
  %conv4 = zext i32 %5 to i64, !dbg !356
  %and5 = and i64 %conv4, 32767, !dbg !357
  %6 = load i32, i32* %tdes3, align 4, !dbg !358
  %conv6 = zext i32 %6 to i64, !dbg !358
  %or7 = or i64 %conv6, %and5, !dbg !358
  %conv8 = trunc i64 %or7 to i32, !dbg !358
  store i32 %conv8, i32* %tdes3, align 4, !dbg !358
  %7 = load i32, i32* %is_fs.addr, align 4, !dbg !359
  %tobool = icmp ne i32 %7, 0, !dbg !359
  br i1 %tobool, label %if.then, label %if.else, !dbg !361

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %tdes3, align 4, !dbg !362
  %conv9 = zext i32 %8 to i64, !dbg !362
  %or10 = or i64 %conv9, 536870912, !dbg !362
  %conv11 = trunc i64 %or10 to i32, !dbg !362
  store i32 %conv11, i32* %tdes3, align 4, !dbg !362
  br label %if.end, !dbg !363

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %tdes3, align 4, !dbg !364
  %conv12 = zext i32 %9 to i64, !dbg !364
  %and13 = and i64 %conv12, -536870913, !dbg !364
  %conv14 = trunc i64 %and13 to i32, !dbg !364
  store i32 %conv14, i32* %tdes3, align 4, !dbg !364
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i8, i8* %csum_flag.addr, align 1, !dbg !365
  %tobool15 = trunc i8 %10 to i1, !dbg !365
  br i1 %tobool15, label %if.then16, label %if.else18, !dbg !367

if.then16:                                        ; preds = %if.end
  %11 = load i32, i32* %tdes3, align 4, !dbg !368
  %or17 = or i32 %11, 196608, !dbg !368
  store i32 %or17, i32* %tdes3, align 4, !dbg !368
  br label %if.end22, !dbg !369

if.else18:                                        ; preds = %if.end
  %12 = load i32, i32* %tdes3, align 4, !dbg !370
  %conv19 = zext i32 %12 to i64, !dbg !370
  %and20 = and i64 %conv19, -196609, !dbg !370
  %conv21 = trunc i64 %and20 to i32, !dbg !370
  store i32 %conv21, i32* %tdes3, align 4, !dbg !370
  br label %if.end22

if.end22:                                         ; preds = %if.else18, %if.then16
  %13 = load i8, i8* %ls.addr, align 1, !dbg !371
  %tobool23 = trunc i8 %13 to i1, !dbg !371
  br i1 %tobool23, label %if.then24, label %if.else28, !dbg !373

if.then24:                                        ; preds = %if.end22
  %14 = load i32, i32* %tdes3, align 4, !dbg !374
  %conv25 = zext i32 %14 to i64, !dbg !374
  %or26 = or i64 %conv25, 268435456, !dbg !374
  %conv27 = trunc i64 %or26 to i32, !dbg !374
  store i32 %conv27, i32* %tdes3, align 4, !dbg !374
  br label %if.end32, !dbg !375

if.else28:                                        ; preds = %if.end22
  %15 = load i32, i32* %tdes3, align 4, !dbg !376
  %conv29 = zext i32 %15 to i64, !dbg !376
  %and30 = and i64 %conv29, -268435457, !dbg !376
  %conv31 = trunc i64 %and30 to i32, !dbg !376
  store i32 %conv31, i32* %tdes3, align 4, !dbg !376
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.then24
  %16 = load i8, i8* %tx_own.addr, align 1, !dbg !377
  %tobool33 = trunc i8 %16 to i1, !dbg !377
  br i1 %tobool33, label %if.then34, label %if.end38, !dbg !379

if.then34:                                        ; preds = %if.end32
  %17 = load i32, i32* %tdes3, align 4, !dbg !380
  %conv35 = zext i32 %17 to i64, !dbg !380
  %or36 = or i64 %conv35, 2147483648, !dbg !380
  %conv37 = trunc i64 %or36 to i32, !dbg !380
  store i32 %conv37, i32* %tdes3, align 4, !dbg !380
  br label %if.end38, !dbg !381

if.end38:                                         ; preds = %if.then34, %if.end32
  %18 = load i32, i32* %is_fs.addr, align 4, !dbg !382
  %tobool39 = icmp ne i32 %18, 0, !dbg !382
  br i1 %tobool39, label %land.lhs.true, label %if.end43, !dbg !384

land.lhs.true:                                    ; preds = %if.end38
  %19 = load i8, i8* %tx_own.addr, align 1, !dbg !385
  %tobool40 = trunc i8 %19 to i1, !dbg !385
  br i1 %tobool40, label %if.then42, label %if.end43, !dbg !386

if.then42:                                        ; preds = %land.lhs.true
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !387, !srcloc !388
  br label %if.end43, !dbg !387

if.end43:                                         ; preds = %if.then42, %land.lhs.true, %if.end38
  %20 = load i32, i32* %tdes3, align 4, !dbg !389
  %21 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !390
  %des344 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %21, i32 0, i32 3, !dbg !391
  store i32 %20, i32* %des344, align 4, !dbg !392
  ret void, !dbg !393
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_prepare_tso_tx_desc(%struct.dma_desc* %p, i32 %is_fs, i32 %len1, i32 %len2, i1 zeroext %tx_own, i1 zeroext %ls, i32 %tcphdrlen, i32 %tcppayloadlen) #0 !dbg !394 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %is_fs.addr = alloca i32, align 4
  %len1.addr = alloca i32, align 4
  %len2.addr = alloca i32, align 4
  %tx_own.addr = alloca i8, align 1
  %ls.addr = alloca i8, align 1
  %tcphdrlen.addr = alloca i32, align 4
  %tcppayloadlen.addr = alloca i32, align 4
  %tdes3 = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !395, metadata !DIExpression()), !dbg !396
  store i32 %is_fs, i32* %is_fs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %is_fs.addr, metadata !397, metadata !DIExpression()), !dbg !398
  store i32 %len1, i32* %len1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len1.addr, metadata !399, metadata !DIExpression()), !dbg !400
  store i32 %len2, i32* %len2.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len2.addr, metadata !401, metadata !DIExpression()), !dbg !402
  %frombool = zext i1 %tx_own to i8
  store i8 %frombool, i8* %tx_own.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tx_own.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %frombool1 = zext i1 %ls to i8
  store i8 %frombool1, i8* %ls.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ls.addr, metadata !405, metadata !DIExpression()), !dbg !406
  store i32 %tcphdrlen, i32* %tcphdrlen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tcphdrlen.addr, metadata !407, metadata !DIExpression()), !dbg !408
  store i32 %tcppayloadlen, i32* %tcppayloadlen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tcppayloadlen.addr, metadata !409, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata i32* %tdes3, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !413
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 3, !dbg !413
  %1 = load i32, i32* %des3, align 4, !dbg !413
  store i32 %1, i32* %tdes3, align 4, !dbg !412
  %2 = load i32, i32* %len1.addr, align 4, !dbg !414
  %tobool = icmp ne i32 %2, 0, !dbg !414
  br i1 %tobool, label %if.then, label %if.end, !dbg !416

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %len1.addr, align 4, !dbg !417
  %conv = sext i32 %3 to i64, !dbg !417
  %and = and i64 %conv, 16383, !dbg !417
  %conv2 = trunc i64 %and to i32, !dbg !417
  %4 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !418
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %4, i32 0, i32 2, !dbg !419
  %5 = load i32, i32* %des2, align 4, !dbg !420
  %or = or i32 %5, %conv2, !dbg !420
  store i32 %or, i32* %des2, align 4, !dbg !420
  br label %if.end, !dbg !418

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %len2.addr, align 4, !dbg !421
  %tobool3 = icmp ne i32 %6, 0, !dbg !421
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !423

if.then4:                                         ; preds = %if.end
  %7 = load i32, i32* %len2.addr, align 4, !dbg !424
  %shl = shl i32 %7, 16, !dbg !424
  %conv5 = sext i32 %shl to i64, !dbg !424
  %and6 = and i64 %conv5, 1073676288, !dbg !424
  %conv7 = trunc i64 %and6 to i32, !dbg !424
  %8 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !425
  %des28 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %8, i32 0, i32 2, !dbg !426
  %9 = load i32, i32* %des28, align 4, !dbg !427
  %or9 = or i32 %9, %conv7, !dbg !427
  store i32 %or9, i32* %des28, align 4, !dbg !427
  br label %if.end10, !dbg !425

if.end10:                                         ; preds = %if.then4, %if.end
  %10 = load i32, i32* %is_fs.addr, align 4, !dbg !428
  %tobool11 = icmp ne i32 %10, 0, !dbg !428
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !430

if.then12:                                        ; preds = %if.end10
  %11 = load i32, i32* %tdes3, align 4, !dbg !431
  %conv13 = zext i32 %11 to i64, !dbg !431
  %or14 = or i64 %conv13, 537133056, !dbg !431
  %conv15 = trunc i64 %or14 to i32, !dbg !431
  store i32 %conv15, i32* %tdes3, align 4, !dbg !431
  %12 = load i32, i32* %tcphdrlen.addr, align 4, !dbg !433
  %shl16 = shl i32 %12, 19, !dbg !434
  %conv17 = zext i32 %shl16 to i64, !dbg !435
  %and18 = and i64 %conv17, 7864320, !dbg !436
  %13 = load i32, i32* %tdes3, align 4, !dbg !437
  %conv19 = zext i32 %13 to i64, !dbg !437
  %or20 = or i64 %conv19, %and18, !dbg !437
  %conv21 = trunc i64 %or20 to i32, !dbg !437
  store i32 %conv21, i32* %tdes3, align 4, !dbg !437
  %14 = load i32, i32* %tcppayloadlen.addr, align 4, !dbg !438
  %conv22 = zext i32 %14 to i64, !dbg !438
  %and23 = and i64 %conv22, 262143, !dbg !439
  %15 = load i32, i32* %tdes3, align 4, !dbg !440
  %conv24 = zext i32 %15 to i64, !dbg !440
  %or25 = or i64 %conv24, %and23, !dbg !440
  %conv26 = trunc i64 %or25 to i32, !dbg !440
  store i32 %conv26, i32* %tdes3, align 4, !dbg !440
  br label %if.end30, !dbg !441

if.else:                                          ; preds = %if.end10
  %16 = load i32, i32* %tdes3, align 4, !dbg !442
  %conv27 = zext i32 %16 to i64, !dbg !442
  %and28 = and i64 %conv27, -536870913, !dbg !442
  %conv29 = trunc i64 %and28 to i32, !dbg !442
  store i32 %conv29, i32* %tdes3, align 4, !dbg !442
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then12
  %17 = load i8, i8* %ls.addr, align 1, !dbg !444
  %tobool31 = trunc i8 %17 to i1, !dbg !444
  br i1 %tobool31, label %if.then32, label %if.else36, !dbg !446

if.then32:                                        ; preds = %if.end30
  %18 = load i32, i32* %tdes3, align 4, !dbg !447
  %conv33 = zext i32 %18 to i64, !dbg !447
  %or34 = or i64 %conv33, 268435456, !dbg !447
  %conv35 = trunc i64 %or34 to i32, !dbg !447
  store i32 %conv35, i32* %tdes3, align 4, !dbg !447
  br label %if.end40, !dbg !448

if.else36:                                        ; preds = %if.end30
  %19 = load i32, i32* %tdes3, align 4, !dbg !449
  %conv37 = zext i32 %19 to i64, !dbg !449
  %and38 = and i64 %conv37, -268435457, !dbg !449
  %conv39 = trunc i64 %and38 to i32, !dbg !449
  store i32 %conv39, i32* %tdes3, align 4, !dbg !449
  br label %if.end40

if.end40:                                         ; preds = %if.else36, %if.then32
  %20 = load i8, i8* %tx_own.addr, align 1, !dbg !450
  %tobool41 = trunc i8 %20 to i1, !dbg !450
  br i1 %tobool41, label %if.then42, label %if.end46, !dbg !452

if.then42:                                        ; preds = %if.end40
  %21 = load i32, i32* %tdes3, align 4, !dbg !453
  %conv43 = zext i32 %21 to i64, !dbg !453
  %or44 = or i64 %conv43, 2147483648, !dbg !453
  %conv45 = trunc i64 %or44 to i32, !dbg !453
  store i32 %conv45, i32* %tdes3, align 4, !dbg !453
  br label %if.end46, !dbg !454

if.end46:                                         ; preds = %if.then42, %if.end40
  %22 = load i32, i32* %is_fs.addr, align 4, !dbg !455
  %tobool47 = icmp ne i32 %22, 0, !dbg !455
  br i1 %tobool47, label %land.lhs.true, label %if.end51, !dbg !457

land.lhs.true:                                    ; preds = %if.end46
  %23 = load i8, i8* %tx_own.addr, align 1, !dbg !458
  %tobool48 = trunc i8 %23 to i1, !dbg !458
  br i1 %tobool48, label %if.then50, label %if.end51, !dbg !459

if.then50:                                        ; preds = %land.lhs.true
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !460, !srcloc !461
  br label %if.end51, !dbg !460

if.end51:                                         ; preds = %if.then50, %land.lhs.true, %if.end46
  %24 = load i32, i32* %tdes3, align 4, !dbg !462
  %25 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !463
  %des352 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %25, i32 0, i32 3, !dbg !464
  store i32 %24, i32* %des352, align 4, !dbg !465
  ret void, !dbg !466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_tx_owner(%struct.dma_desc* %p) #0 !dbg !467 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !468, metadata !DIExpression()), !dbg !469
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !470
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 3, !dbg !471
  %1 = load i32, i32* %des3, align 4, !dbg !472
  %or = or i32 %1, -2147483648, !dbg !472
  store i32 %or, i32* %des3, align 4, !dbg !472
  ret void, !dbg !473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwxgmac2_get_tx_owner(%struct.dma_desc* %p) #0 !dbg !474 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !475, metadata !DIExpression()), !dbg !476
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !477
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 3, !dbg !477
  %1 = load i32, i32* %des3, align 4, !dbg !477
  %conv = zext i32 %1 to i64, !dbg !477
  %and = and i64 %conv, 2147483648, !dbg !478
  %cmp = icmp ugt i64 %and, 0, !dbg !479
  %conv1 = zext i1 %cmp to i32, !dbg !479
  ret i32 %conv1, !dbg !480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_release_tx_desc(%struct.dma_desc* %p, i32 %mode) #0 !dbg !481 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !482, metadata !DIExpression()), !dbg !483
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !484, metadata !DIExpression()), !dbg !485
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !486
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !487
  store i32 0, i32* %des0, align 4, !dbg !488
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !489
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 1, !dbg !490
  store i32 0, i32* %des1, align 4, !dbg !491
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !492
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 2, !dbg !493
  store i32 0, i32* %des2, align 4, !dbg !494
  %3 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !495
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %3, i32 0, i32 3, !dbg !496
  store i32 0, i32* %des3, align 4, !dbg !497
  ret void, !dbg !498
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_tx_ic(%struct.dma_desc* %p) #0 !dbg !499 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !500, metadata !DIExpression()), !dbg !501
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !502
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 2, !dbg !503
  %1 = load i32, i32* %des2, align 4, !dbg !504
  %or = or i32 %1, -2147483648, !dbg !504
  store i32 %or, i32* %des2, align 4, !dbg !504
  ret void, !dbg !505
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwxgmac2_get_tx_ls(%struct.dma_desc* %p) #0 !dbg !506 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !507, metadata !DIExpression()), !dbg !508
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !509
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 3, !dbg !509
  %1 = load i32, i32* %des3, align 4, !dbg !509
  %conv = zext i32 %1 to i64, !dbg !509
  %and = and i64 %conv, 268435456, !dbg !510
  %cmp = icmp ugt i64 %and, 0, !dbg !511
  %conv1 = zext i1 %cmp to i32, !dbg !511
  ret i32 %conv1, !dbg !512
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwxgmac2_get_tx_status(i8* %data, %struct.stmmac_extra_stats* %x, %struct.dma_desc* %p, i8* %ioaddr) #0 !dbg !513 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %x.addr = alloca %struct.stmmac_extra_stats*, align 8
  %p.addr = alloca %struct.dma_desc*, align 8
  %ioaddr.addr = alloca i8*, align 8
  %tdes3 = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !514, metadata !DIExpression()), !dbg !515
  store %struct.stmmac_extra_stats* %x, %struct.stmmac_extra_stats** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_extra_stats** %x.addr, metadata !516, metadata !DIExpression()), !dbg !517
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !518, metadata !DIExpression()), !dbg !519
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !520, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.declare(metadata i32* %tdes3, metadata !522, metadata !DIExpression()), !dbg !523
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !524
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 3, !dbg !524
  %1 = load i32, i32* %des3, align 4, !dbg !524
  store i32 %1, i32* %tdes3, align 4, !dbg !523
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !525, metadata !DIExpression()), !dbg !526
  store i32 0, i32* %ret, align 4, !dbg !526
  %2 = load i32, i32* %tdes3, align 4, !dbg !527
  %conv = zext i32 %2 to i64, !dbg !527
  %and = and i64 %conv, 2147483648, !dbg !527
  %tobool = icmp ne i64 %and, 0, !dbg !527
  %lnot = xor i1 %tobool, true, !dbg !527
  %lnot1 = xor i1 %lnot, true, !dbg !527
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !527
  %conv2 = sext i32 %lnot.ext to i64, !dbg !527
  %tobool3 = icmp ne i64 %conv2, 0, !dbg !527
  br i1 %tobool3, label %if.then, label %if.end, !dbg !529

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !530
  br label %return, !dbg !530

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %tdes3, align 4, !dbg !531
  %conv4 = zext i32 %3 to i64, !dbg !531
  %and5 = and i64 %conv4, 268435456, !dbg !531
  %tobool6 = icmp ne i64 %and5, 0, !dbg !531
  %lnot7 = xor i1 %tobool6, true, !dbg !531
  %lnot9 = xor i1 %lnot7, true, !dbg !531
  %lnot11 = xor i1 %lnot9, true, !dbg !531
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !531
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !531
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !531
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !533

if.then15:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !534
  br label %return, !dbg !534

if.end16:                                         ; preds = %if.end
  %4 = load i32, i32* %ret, align 4, !dbg !535
  store i32 %4, i32* %retval, align 4, !dbg !536
  br label %return, !dbg !536

return:                                           ; preds = %if.end16, %if.then15, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !537
  ret i32 %5, !dbg !537
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwxgmac2_get_tx_len(%struct.dma_desc* %p) #0 !dbg !538 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !539, metadata !DIExpression()), !dbg !540
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !541
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 2, !dbg !541
  %1 = load i32, i32* %des2, align 4, !dbg !541
  %conv = zext i32 %1 to i64, !dbg !541
  %and = and i64 %conv, 16383, !dbg !542
  %conv1 = trunc i64 %and to i32, !dbg !543
  ret i32 %conv1, !dbg !544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_rx_owner(%struct.dma_desc* %p, i32 %disable_rx_ic) #0 !dbg !545 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %disable_rx_ic.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !546, metadata !DIExpression()), !dbg !547
  store i32 %disable_rx_ic, i32* %disable_rx_ic.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disable_rx_ic.addr, metadata !548, metadata !DIExpression()), !dbg !549
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !550
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 3, !dbg !551
  %1 = load i32, i32* %des3, align 4, !dbg !552
  %or = or i32 %1, -2147483648, !dbg !552
  store i32 %or, i32* %des3, align 4, !dbg !552
  %2 = load i32, i32* %disable_rx_ic.addr, align 4, !dbg !553
  %tobool = icmp ne i32 %2, 0, !dbg !553
  br i1 %tobool, label %if.end, label %if.then, !dbg !555

if.then:                                          ; preds = %entry
  %3 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !556
  %des31 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %3, i32 0, i32 3, !dbg !557
  %4 = load i32, i32* %des31, align 4, !dbg !558
  %or2 = or i32 %4, 1073741824, !dbg !558
  store i32 %or2, i32* %des31, align 4, !dbg !558
  br label %if.end, !dbg !556

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !559
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwxgmac2_get_rx_frame_len(%struct.dma_desc* %p, i32 %rx_coe) #0 !dbg !560 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %rx_coe.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !561, metadata !DIExpression()), !dbg !562
  store i32 %rx_coe, i32* %rx_coe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rx_coe.addr, metadata !563, metadata !DIExpression()), !dbg !564
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !565
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 3, !dbg !565
  %1 = load i32, i32* %des3, align 4, !dbg !565
  %conv = zext i32 %1 to i64, !dbg !565
  %and = and i64 %conv, 16383, !dbg !566
  %conv1 = trunc i64 %and to i32, !dbg !567
  ret i32 %conv1, !dbg !568
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwxgmac2_get_rx_status(i8* %data, %struct.stmmac_extra_stats* %x, %struct.dma_desc* %p) #0 !dbg !569 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %x.addr = alloca %struct.stmmac_extra_stats*, align 8
  %p.addr = alloca %struct.dma_desc*, align 8
  %rdes3 = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !570, metadata !DIExpression()), !dbg !571
  store %struct.stmmac_extra_stats* %x, %struct.stmmac_extra_stats** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_extra_stats** %x.addr, metadata !572, metadata !DIExpression()), !dbg !573
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata i32* %rdes3, metadata !576, metadata !DIExpression()), !dbg !577
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !578
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 3, !dbg !578
  %1 = load i32, i32* %des3, align 4, !dbg !578
  store i32 %1, i32* %rdes3, align 4, !dbg !577
  %2 = load i32, i32* %rdes3, align 4, !dbg !579
  %conv = zext i32 %2 to i64, !dbg !579
  %and = and i64 %conv, 2147483648, !dbg !579
  %tobool = icmp ne i64 %and, 0, !dbg !579
  %lnot = xor i1 %tobool, true, !dbg !579
  %lnot1 = xor i1 %lnot, true, !dbg !579
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !579
  %conv2 = sext i32 %lnot.ext to i64, !dbg !579
  %tobool3 = icmp ne i64 %conv2, 0, !dbg !579
  br i1 %tobool3, label %if.then, label %if.end, !dbg !581

if.then:                                          ; preds = %entry
  store i32 8, i32* %retval, align 4, !dbg !582
  br label %return, !dbg !582

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %rdes3, align 4, !dbg !583
  %conv4 = zext i32 %3 to i64, !dbg !583
  %and5 = and i64 %conv4, 1073741824, !dbg !583
  %tobool6 = icmp ne i64 %and5, 0, !dbg !583
  %lnot7 = xor i1 %tobool6, true, !dbg !583
  %lnot9 = xor i1 %lnot7, true, !dbg !583
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !583
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !583
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !583
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !585

if.then13:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !586
  br label %return, !dbg !586

if.end14:                                         ; preds = %if.end
  %4 = load i32, i32* %rdes3, align 4, !dbg !587
  %conv15 = zext i32 %4 to i64, !dbg !587
  %and16 = and i64 %conv15, 268435456, !dbg !587
  %tobool17 = icmp ne i64 %and16, 0, !dbg !587
  %lnot18 = xor i1 %tobool17, true, !dbg !587
  %lnot20 = xor i1 %lnot18, true, !dbg !587
  %lnot22 = xor i1 %lnot20, true, !dbg !587
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !587
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !587
  %tobool25 = icmp ne i64 %conv24, 0, !dbg !587
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !589

if.then26:                                        ; preds = %if.end14
  store i32 16, i32* %retval, align 4, !dbg !590
  br label %return, !dbg !590

if.end27:                                         ; preds = %if.end14
  %5 = load i32, i32* %rdes3, align 4, !dbg !591
  %conv28 = zext i32 %5 to i64, !dbg !591
  %and29 = and i64 %conv28, 32768, !dbg !591
  %tobool30 = icmp ne i64 %and29, 0, !dbg !591
  br i1 %tobool30, label %land.rhs, label %land.end, !dbg !591

land.rhs:                                         ; preds = %if.end27
  %6 = load i32, i32* %rdes3, align 4, !dbg !591
  %conv31 = zext i32 %6 to i64, !dbg !591
  %and32 = and i64 %conv31, 268435456, !dbg !591
  %tobool33 = icmp ne i64 %and32, 0, !dbg !591
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end27
  %7 = phi i1 [ false, %if.end27 ], [ %tobool33, %land.rhs ], !dbg !593
  %lnot34 = xor i1 %7, true, !dbg !591
  %lnot36 = xor i1 %lnot34, true, !dbg !591
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !591
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !591
  %tobool39 = icmp ne i64 %conv38, 0, !dbg !591
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !594

if.then40:                                        ; preds = %land.end
  store i32 1, i32* %retval, align 4, !dbg !595
  br label %return, !dbg !595

if.end41:                                         ; preds = %land.end
  store i32 0, i32* %retval, align 4, !dbg !596
  br label %return, !dbg !596

return:                                           ; preds = %if.end41, %if.then40, %if.then26, %if.then13, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !597
  ret i32 %8, !dbg !597
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_enable_tx_timestamp(%struct.dma_desc* %p) #0 !dbg !598 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !599, metadata !DIExpression()), !dbg !600
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !601
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 2, !dbg !602
  %1 = load i32, i32* %des2, align 4, !dbg !603
  %or = or i32 %1, 1073741824, !dbg !603
  store i32 %or, i32* %des2, align 4, !dbg !603
  ret void, !dbg !604
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwxgmac2_get_tx_timestamp_status(%struct.dma_desc* %p) #0 !dbg !605 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !606, metadata !DIExpression()), !dbg !607
  ret i32 0, !dbg !608
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_get_timestamp(i8* %desc, i32 %ats, i64* %ts) #0 !dbg !609 {
entry:
  %desc.addr = alloca i8*, align 8
  %ats.addr = alloca i32, align 4
  %ts.addr = alloca i64*, align 8
  %p = alloca %struct.dma_desc*, align 8
  %ns = alloca i64, align 8
  store i8* %desc, i8** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %desc.addr, metadata !610, metadata !DIExpression()), !dbg !611
  store i32 %ats, i32* %ats.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ats.addr, metadata !612, metadata !DIExpression()), !dbg !613
  store i64* %ts, i64** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ts.addr, metadata !614, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p, metadata !616, metadata !DIExpression()), !dbg !617
  %0 = load i8*, i8** %desc.addr, align 8, !dbg !618
  %1 = bitcast i8* %0 to %struct.dma_desc*, !dbg !619
  store %struct.dma_desc* %1, %struct.dma_desc** %p, align 8, !dbg !617
  call void @llvm.dbg.declare(metadata i64* %ns, metadata !620, metadata !DIExpression()), !dbg !621
  store i64 0, i64* %ns, align 8, !dbg !621
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !622
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 1, !dbg !622
  %3 = load i32, i32* %des1, align 4, !dbg !622
  %conv = zext i32 %3 to i64, !dbg !622
  %mul = mul i64 %conv, 1000000000, !dbg !623
  %4 = load i64, i64* %ns, align 8, !dbg !624
  %add = add i64 %4, %mul, !dbg !624
  store i64 %add, i64* %ns, align 8, !dbg !624
  %5 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !625
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %5, i32 0, i32 0, !dbg !625
  %6 = load i32, i32* %des0, align 4, !dbg !625
  %conv1 = zext i32 %6 to i64, !dbg !625
  %7 = load i64, i64* %ns, align 8, !dbg !626
  %add2 = add i64 %7, %conv1, !dbg !626
  store i64 %add2, i64* %ns, align 8, !dbg !626
  %8 = load i64, i64* %ns, align 8, !dbg !627
  %9 = load i64*, i64** %ts.addr, align 8, !dbg !628
  store i64 %8, i64* %9, align 8, !dbg !629
  ret void, !dbg !630
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwxgmac2_get_rx_timestamp_status(i8* %desc, i8* %next_desc, i32 %ats) #0 !dbg !631 {
entry:
  %desc.addr = alloca i8*, align 8
  %next_desc.addr = alloca i8*, align 8
  %ats.addr = alloca i32, align 4
  %p = alloca %struct.dma_desc*, align 8
  %rdes3 = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %desc, i8** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %desc.addr, metadata !632, metadata !DIExpression()), !dbg !633
  store i8* %next_desc, i8** %next_desc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %next_desc.addr, metadata !634, metadata !DIExpression()), !dbg !635
  store i32 %ats, i32* %ats.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ats.addr, metadata !636, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p, metadata !638, metadata !DIExpression()), !dbg !639
  %0 = load i8*, i8** %desc.addr, align 8, !dbg !640
  %1 = bitcast i8* %0 to %struct.dma_desc*, !dbg !641
  store %struct.dma_desc* %1, %struct.dma_desc** %p, align 8, !dbg !639
  call void @llvm.dbg.declare(metadata i32* %rdes3, metadata !642, metadata !DIExpression()), !dbg !643
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !644
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 3, !dbg !644
  %3 = load i32, i32* %des3, align 4, !dbg !644
  store i32 %3, i32* %rdes3, align 4, !dbg !643
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !645, metadata !DIExpression()), !dbg !646
  store i32 -16, i32* %ret, align 4, !dbg !646
  %4 = load i32, i32* %rdes3, align 4, !dbg !647
  %conv = zext i32 %4 to i64, !dbg !647
  %and = and i64 %conv, 134217728, !dbg !647
  %tobool = icmp ne i64 %and, 0, !dbg !647
  %lnot = xor i1 %tobool, true, !dbg !647
  %lnot1 = xor i1 %lnot, true, !dbg !647
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !647
  %conv2 = sext i32 %lnot.ext to i64, !dbg !647
  %tobool3 = icmp ne i64 %conv2, 0, !dbg !647
  br i1 %tobool3, label %if.then, label %if.end, !dbg !649

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %next_desc.addr, align 8, !dbg !650
  %call = call i32 @dwxgmac2_rx_check_timestamp(i8* %5) #2, !dbg !651
  store i32 %call, i32* %ret, align 4, !dbg !652
  br label %if.end, !dbg !653

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %ret, align 4, !dbg !654
  %tobool4 = icmp ne i32 %6, 0, !dbg !655
  %lnot5 = xor i1 %tobool4, true, !dbg !655
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !655
  ret i32 %lnot.ext6, !dbg !656
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_mss(%struct.dma_desc* %p, i32 %mss) #0 !dbg !657 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %mss.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !658, metadata !DIExpression()), !dbg !659
  store i32 %mss, i32* %mss.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mss.addr, metadata !660, metadata !DIExpression()), !dbg !661
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !662
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !663
  store i32 0, i32* %des0, align 4, !dbg !664
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !665
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 1, !dbg !666
  store i32 0, i32* %des1, align 4, !dbg !667
  %2 = load i32, i32* %mss.addr, align 4, !dbg !668
  %3 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !669
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %3, i32 0, i32 2, !dbg !670
  store i32 %2, i32* %des2, align 4, !dbg !671
  %4 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !672
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %4, i32 0, i32 3, !dbg !673
  store i32 1140850688, i32* %des3, align 4, !dbg !674
  ret void, !dbg !675
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_get_addr(%struct.dma_desc* %p, i32* %addr) #0 !dbg !676 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %addr.addr = alloca i32*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !677, metadata !DIExpression()), !dbg !678
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !679, metadata !DIExpression()), !dbg !680
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !681
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !681
  %1 = load i32, i32* %des0, align 4, !dbg !681
  %2 = load i32*, i32** %addr.addr, align 8, !dbg !682
  store i32 %1, i32* %2, align 4, !dbg !683
  ret void, !dbg !684
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_addr(%struct.dma_desc* %p, i64 %addr) #0 !dbg !685 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %addr.addr = alloca i64, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !686, metadata !DIExpression()), !dbg !687
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !688, metadata !DIExpression()), !dbg !689
  %0 = load i64, i64* %addr.addr, align 8, !dbg !690
  %and = and i64 %0, 4294967295, !dbg !690
  %conv = trunc i64 %and to i32, !dbg !690
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !691
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 0, !dbg !692
  store i32 %conv, i32* %des0, align 4, !dbg !693
  %2 = load i64, i64* %addr.addr, align 8, !dbg !694
  %shr = lshr i64 %2, 16, !dbg !694
  %shr1 = lshr i64 %shr, 16, !dbg !694
  %conv2 = trunc i64 %shr1 to i32, !dbg !694
  %3 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !695
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %3, i32 0, i32 1, !dbg !696
  store i32 %conv2, i32* %des1, align 4, !dbg !697
  ret void, !dbg !698
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_clear(%struct.dma_desc* %p) #0 !dbg !699 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !700, metadata !DIExpression()), !dbg !701
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !702
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !703
  store i32 0, i32* %des0, align 4, !dbg !704
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !705
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 1, !dbg !706
  store i32 0, i32* %des1, align 4, !dbg !707
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !708
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 2, !dbg !709
  store i32 0, i32* %des2, align 4, !dbg !710
  %3 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !711
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %3, i32 0, i32 3, !dbg !712
  store i32 0, i32* %des3, align 4, !dbg !713
  ret void, !dbg !714
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwxgmac2_get_rx_hash(%struct.dma_desc* %p, i32* %hash, i32* %type) #0 !dbg !715 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.dma_desc*, align 8
  %hash.addr = alloca i32*, align 8
  %type.addr = alloca i32*, align 8
  %rdes3 = alloca i32, align 4
  %ptype = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !716, metadata !DIExpression()), !dbg !717
  store i32* %hash, i32** %hash.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hash.addr, metadata !718, metadata !DIExpression()), !dbg !719
  store i32* %type, i32** %type.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %type.addr, metadata !720, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.declare(metadata i32* %rdes3, metadata !722, metadata !DIExpression()), !dbg !723
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !724
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 3, !dbg !724
  %1 = load i32, i32* %des3, align 4, !dbg !724
  store i32 %1, i32* %rdes3, align 4, !dbg !723
  call void @llvm.dbg.declare(metadata i32* %ptype, metadata !725, metadata !DIExpression()), !dbg !726
  %2 = load i32, i32* %rdes3, align 4, !dbg !727
  %conv = zext i32 %2 to i64, !dbg !727
  %and = and i64 %conv, 67108864, !dbg !729
  %tobool = icmp ne i64 %and, 0, !dbg !729
  br i1 %tobool, label %if.then, label %if.end, !dbg !730

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %rdes3, align 4, !dbg !731
  %conv1 = zext i32 %3 to i64, !dbg !731
  %and2 = and i64 %conv1, 15728640, !dbg !733
  %shr = lshr i64 %and2, 20, !dbg !734
  %conv3 = trunc i64 %shr to i32, !dbg !735
  store i32 %conv3, i32* %ptype, align 4, !dbg !736
  %4 = load i32, i32* %ptype, align 4, !dbg !737
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
  ], !dbg !738

sw.bb:                                            ; preds = %if.then, %if.then, %if.then, %if.then
  %5 = load i32*, i32** %type.addr, align 8, !dbg !739
  store i32 3, i32* %5, align 4, !dbg !741
  br label %sw.epilog, !dbg !742

sw.default:                                       ; preds = %if.then
  %6 = load i32*, i32** %type.addr, align 8, !dbg !743
  store i32 2, i32* %6, align 4, !dbg !744
  br label %sw.epilog, !dbg !745

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %7 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !746
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %7, i32 0, i32 1, !dbg !746
  %8 = load i32, i32* %des1, align 4, !dbg !746
  %9 = load i32*, i32** %hash.addr, align 8, !dbg !747
  store i32 %8, i32* %9, align 4, !dbg !748
  store i32 0, i32* %retval, align 4, !dbg !749
  br label %return, !dbg !749

if.end:                                           ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !750
  br label %return, !dbg !750

return:                                           ; preds = %if.end, %sw.epilog
  %10 = load i32, i32* %retval, align 4, !dbg !751
  ret i32 %10, !dbg !751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_get_rx_header_len(%struct.dma_desc* %p, i32* %len) #0 !dbg !752 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %len.addr = alloca i32*, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !753, metadata !DIExpression()), !dbg !754
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !755, metadata !DIExpression()), !dbg !756
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !757
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 3, !dbg !757
  %1 = load i32, i32* %des3, align 4, !dbg !757
  %conv = zext i32 %1 to i64, !dbg !757
  %and = and i64 %conv, 15728640, !dbg !759
  %tobool = icmp ne i64 %and, 0, !dbg !759
  br i1 %tobool, label %if.then, label %if.end, !dbg !760

if.then:                                          ; preds = %entry
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !761
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 2, !dbg !761
  %3 = load i32, i32* %des2, align 4, !dbg !761
  %conv1 = zext i32 %3 to i64, !dbg !761
  %and2 = and i64 %conv1, 1023, !dbg !762
  %conv3 = trunc i64 %and2 to i32, !dbg !761
  %4 = load i32*, i32** %len.addr, align 8, !dbg !763
  store i32 %conv3, i32* %4, align 4, !dbg !764
  br label %if.end, !dbg !765

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_sec_addr(%struct.dma_desc* %p, i64 %addr) #0 !dbg !767 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %addr.addr = alloca i64, align 8
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !768, metadata !DIExpression()), !dbg !769
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !770, metadata !DIExpression()), !dbg !771
  %0 = load i64, i64* %addr.addr, align 8, !dbg !772
  %and = and i64 %0, 4294967295, !dbg !772
  %conv = trunc i64 %and to i32, !dbg !772
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !773
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 2, !dbg !774
  store i32 %conv, i32* %des2, align 4, !dbg !775
  %2 = load i64, i64* %addr.addr, align 8, !dbg !776
  %shr = lshr i64 %2, 16, !dbg !776
  %shr1 = lshr i64 %shr, 16, !dbg !776
  %conv2 = trunc i64 %shr1 to i32, !dbg !776
  %3 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !777
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %3, i32 0, i32 3, !dbg !778
  store i32 %conv2, i32* %des3, align 4, !dbg !779
  ret void, !dbg !780
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_sarc(%struct.dma_desc* %p, i32 %sarc_type) #0 !dbg !781 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %sarc_type.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !782, metadata !DIExpression()), !dbg !783
  store i32 %sarc_type, i32* %sarc_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sarc_type.addr, metadata !784, metadata !DIExpression()), !dbg !785
  %0 = load i32, i32* %sarc_type.addr, align 4, !dbg !786
  %shl = shl i32 %0, 23, !dbg !786
  store i32 %shl, i32* %sarc_type.addr, align 4, !dbg !786
  %1 = load i32, i32* %sarc_type.addr, align 4, !dbg !787
  %conv = zext i32 %1 to i64, !dbg !787
  %and = and i64 %conv, 58720256, !dbg !787
  %conv1 = trunc i64 %and to i32, !dbg !787
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !788
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 3, !dbg !789
  %3 = load i32, i32* %des3, align 4, !dbg !790
  %or = or i32 %3, %conv1, !dbg !790
  store i32 %or, i32* %des3, align 4, !dbg !790
  ret void, !dbg !791
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_vlan_tag(%struct.dma_desc* %p, i16 zeroext %tag, i16 zeroext %inner_tag, i32 %inner_type) #0 !dbg !792 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %tag.addr = alloca i16, align 2
  %inner_tag.addr = alloca i16, align 2
  %inner_type.addr = alloca i32, align 4
  %des = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !793, metadata !DIExpression()), !dbg !794
  store i16 %tag, i16* %tag.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %tag.addr, metadata !795, metadata !DIExpression()), !dbg !796
  store i16 %inner_tag, i16* %inner_tag.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %inner_tag.addr, metadata !797, metadata !DIExpression()), !dbg !798
  store i32 %inner_type, i32* %inner_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %inner_type.addr, metadata !799, metadata !DIExpression()), !dbg !800
  %0 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !801
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %0, i32 0, i32 0, !dbg !802
  store i32 0, i32* %des0, align 4, !dbg !803
  %1 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !804
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %1, i32 0, i32 1, !dbg !805
  store i32 0, i32* %des1, align 4, !dbg !806
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !807
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 2, !dbg !808
  store i32 0, i32* %des2, align 4, !dbg !809
  %3 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !810
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %3, i32 0, i32 3, !dbg !811
  store i32 0, i32* %des3, align 4, !dbg !812
  %4 = load i32, i32* %inner_type.addr, align 4, !dbg !813
  %tobool = icmp ne i32 %4, 0, !dbg !813
  br i1 %tobool, label %if.then, label %if.end, !dbg !815

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %des, metadata !816, metadata !DIExpression()), !dbg !818
  %5 = load i16, i16* %inner_tag.addr, align 2, !dbg !819
  %conv = zext i16 %5 to i32, !dbg !819
  %shl = shl i32 %conv, 16, !dbg !820
  store i32 %shl, i32* %des, align 4, !dbg !818
  %6 = load i32, i32* %des, align 4, !dbg !821
  %conv1 = zext i32 %6 to i64, !dbg !821
  %and = and i64 %conv1, 4294901760, !dbg !821
  %conv2 = trunc i64 %and to i32, !dbg !821
  store i32 %conv2, i32* %des, align 4, !dbg !821
  %7 = load i32, i32* %des, align 4, !dbg !822
  %8 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !823
  %des23 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %8, i32 0, i32 2, !dbg !824
  store i32 %7, i32* %des23, align 4, !dbg !825
  %9 = load i32, i32* %inner_type.addr, align 4, !dbg !826
  %shl4 = shl i32 %9, 18, !dbg !827
  store i32 %shl4, i32* %des, align 4, !dbg !828
  %10 = load i32, i32* %des, align 4, !dbg !829
  %conv5 = zext i32 %10 to i64, !dbg !829
  %and6 = and i64 %conv5, 786432, !dbg !829
  %conv7 = trunc i64 %and6 to i32, !dbg !829
  store i32 %conv7, i32* %des, align 4, !dbg !829
  %11 = load i32, i32* %des, align 4, !dbg !830
  %conv8 = zext i32 %11 to i64, !dbg !830
  %or = or i64 %conv8, 131072, !dbg !830
  %conv9 = trunc i64 %or to i32, !dbg !830
  %12 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !831
  %des310 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %12, i32 0, i32 3, !dbg !832
  store i32 %conv9, i32* %des310, align 4, !dbg !833
  br label %if.end, !dbg !834

if.end:                                           ; preds = %if.then, %entry
  %13 = load i16, i16* %tag.addr, align 2, !dbg !835
  %conv11 = zext i16 %13 to i64, !dbg !835
  %and12 = and i64 %conv11, 65535, !dbg !835
  %conv13 = trunc i64 %and12 to i32, !dbg !835
  %14 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !836
  %des314 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %14, i32 0, i32 3, !dbg !837
  %15 = load i32, i32* %des314, align 4, !dbg !838
  %or15 = or i32 %15, %conv13, !dbg !838
  store i32 %or15, i32* %des314, align 4, !dbg !838
  %16 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !839
  %des316 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %16, i32 0, i32 3, !dbg !840
  %17 = load i32, i32* %des316, align 4, !dbg !841
  %or17 = or i32 %17, 65536, !dbg !841
  store i32 %or17, i32* %des316, align 4, !dbg !841
  %18 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !842
  %des318 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %18, i32 0, i32 3, !dbg !843
  %19 = load i32, i32* %des318, align 4, !dbg !844
  %or19 = or i32 %19, 1073741824, !dbg !844
  store i32 %or19, i32* %des318, align 4, !dbg !844
  ret void, !dbg !845
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_vlan(%struct.dma_desc* %p, i32 %type) #0 !dbg !846 {
entry:
  %p.addr = alloca %struct.dma_desc*, align 8
  %type.addr = alloca i32, align 4
  store %struct.dma_desc* %p, %struct.dma_desc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p.addr, metadata !847, metadata !DIExpression()), !dbg !848
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !849, metadata !DIExpression()), !dbg !850
  %0 = load i32, i32* %type.addr, align 4, !dbg !851
  %shl = shl i32 %0, 14, !dbg !851
  store i32 %shl, i32* %type.addr, align 4, !dbg !851
  %1 = load i32, i32* %type.addr, align 4, !dbg !852
  %conv = zext i32 %1 to i64, !dbg !852
  %and = and i64 %conv, 49152, !dbg !852
  %conv1 = trunc i64 %and to i32, !dbg !852
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p.addr, align 8, !dbg !853
  %des2 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 2, !dbg !854
  %3 = load i32, i32* %des2, align 4, !dbg !855
  %or = or i32 %3, %conv1, !dbg !855
  store i32 %or, i32* %des2, align 4, !dbg !855
  ret void, !dbg !856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac2_set_tbs(%struct.dma_edesc* %p, i32 %sec, i32 %nsec) #0 !dbg !857 {
entry:
  %p.addr = alloca %struct.dma_edesc*, align 8
  %sec.addr = alloca i32, align 4
  %nsec.addr = alloca i32, align 4
  store %struct.dma_edesc* %p, %struct.dma_edesc** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_edesc** %p.addr, metadata !858, metadata !DIExpression()), !dbg !859
  store i32 %sec, i32* %sec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sec.addr, metadata !860, metadata !DIExpression()), !dbg !861
  store i32 %nsec, i32* %nsec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nsec.addr, metadata !862, metadata !DIExpression()), !dbg !863
  %0 = load i32, i32* %sec.addr, align 4, !dbg !864
  %conv = zext i32 %0 to i64, !dbg !864
  %and = and i64 %conv, 255, !dbg !864
  %or = or i64 %and, 2147483648, !dbg !864
  %conv1 = trunc i64 %or to i32, !dbg !864
  %1 = load %struct.dma_edesc*, %struct.dma_edesc** %p.addr, align 8, !dbg !865
  %des4 = getelementptr inbounds %struct.dma_edesc, %struct.dma_edesc* %1, i32 0, i32 0, !dbg !866
  store i32 %conv1, i32* %des4, align 4, !dbg !867
  %2 = load i32, i32* %nsec.addr, align 4, !dbg !868
  %conv2 = zext i32 %2 to i64, !dbg !868
  %and3 = and i64 %conv2, 4294967040, !dbg !868
  %conv4 = trunc i64 %and3 to i32, !dbg !868
  %3 = load %struct.dma_edesc*, %struct.dma_edesc** %p.addr, align 8, !dbg !869
  %des5 = getelementptr inbounds %struct.dma_edesc, %struct.dma_edesc* %3, i32 0, i32 1, !dbg !870
  store i32 %conv4, i32* %des5, align 4, !dbg !871
  %4 = load %struct.dma_edesc*, %struct.dma_edesc** %p.addr, align 8, !dbg !872
  %des6 = getelementptr inbounds %struct.dma_edesc, %struct.dma_edesc* %4, i32 0, i32 2, !dbg !873
  store i32 0, i32* %des6, align 4, !dbg !874
  %5 = load %struct.dma_edesc*, %struct.dma_edesc** %p.addr, align 8, !dbg !875
  %des7 = getelementptr inbounds %struct.dma_edesc, %struct.dma_edesc* %5, i32 0, i32 3, !dbg !876
  store i32 0, i32* %des7, align 4, !dbg !877
  ret void, !dbg !878
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dwxgmac2_rx_check_timestamp(i8* %desc) #0 !dbg !879 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i8*, align 8
  %p = alloca %struct.dma_desc*, align 8
  %rdes3 = alloca i32, align 4
  %desc_valid = alloca i8, align 1
  %ts_valid = alloca i8, align 1
  store i8* %desc, i8** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %desc.addr, metadata !882, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.declare(metadata %struct.dma_desc** %p, metadata !884, metadata !DIExpression()), !dbg !885
  %0 = load i8*, i8** %desc.addr, align 8, !dbg !886
  %1 = bitcast i8* %0 to %struct.dma_desc*, !dbg !887
  store %struct.dma_desc* %1, %struct.dma_desc** %p, align 8, !dbg !885
  call void @llvm.dbg.declare(metadata i32* %rdes3, metadata !888, metadata !DIExpression()), !dbg !889
  %2 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !890
  %des3 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %2, i32 0, i32 3, !dbg !890
  %3 = load i32, i32* %des3, align 4, !dbg !890
  store i32 %3, i32* %rdes3, align 4, !dbg !889
  call void @llvm.dbg.declare(metadata i8* %desc_valid, metadata !891, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.declare(metadata i8* %ts_valid, metadata !893, metadata !DIExpression()), !dbg !894
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !895, !srcloc !896
  %4 = load i32, i32* %rdes3, align 4, !dbg !897
  %conv = zext i32 %4 to i64, !dbg !897
  %and = and i64 %conv, 2147483648, !dbg !898
  %tobool = icmp ne i64 %and, 0, !dbg !898
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !899

land.rhs:                                         ; preds = %entry
  %5 = load i32, i32* %rdes3, align 4, !dbg !900
  %conv1 = zext i32 %5 to i64, !dbg !900
  %and2 = and i64 %conv1, 1073741824, !dbg !901
  %tobool3 = icmp ne i64 %and2, 0, !dbg !899
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ], !dbg !902
  %frombool = zext i1 %6 to i8, !dbg !903
  store i8 %frombool, i8* %desc_valid, align 1, !dbg !903
  %7 = load i32, i32* %rdes3, align 4, !dbg !904
  %conv4 = zext i32 %7 to i64, !dbg !904
  %and5 = and i64 %conv4, 64, !dbg !905
  %tobool6 = icmp ne i64 %and5, 0, !dbg !905
  br i1 %tobool6, label %land.end11, label %land.rhs7, !dbg !906

land.rhs7:                                        ; preds = %land.end
  %8 = load i32, i32* %rdes3, align 4, !dbg !907
  %conv8 = zext i32 %8 to i64, !dbg !907
  %and9 = and i64 %conv8, 16, !dbg !908
  %tobool10 = icmp ne i64 %and9, 0, !dbg !906
  br label %land.end11

land.end11:                                       ; preds = %land.rhs7, %land.end
  %9 = phi i1 [ false, %land.end ], [ %tobool10, %land.rhs7 ], !dbg !902
  %frombool12 = zext i1 %9 to i8, !dbg !909
  store i8 %frombool12, i8* %ts_valid, align 1, !dbg !909
  %10 = load i8, i8* %desc_valid, align 1, !dbg !910
  %tobool13 = trunc i8 %10 to i1, !dbg !910
  br i1 %tobool13, label %land.rhs15, label %land.end18, !dbg !910

land.rhs15:                                       ; preds = %land.end11
  %11 = load i8, i8* %ts_valid, align 1, !dbg !910
  %tobool16 = trunc i8 %11 to i1, !dbg !910
  br label %land.end18

land.end18:                                       ; preds = %land.rhs15, %land.end11
  %12 = phi i1 [ false, %land.end11 ], [ %tobool16, %land.rhs15 ], !dbg !912
  %lnot = xor i1 %12, true, !dbg !910
  %lnot19 = xor i1 %lnot, true, !dbg !910
  %lnot.ext = zext i1 %lnot19 to i32, !dbg !910
  %conv20 = sext i32 %lnot.ext to i64, !dbg !910
  %tobool21 = icmp ne i64 %conv20, 0, !dbg !910
  br i1 %tobool21, label %if.then, label %if.end26, !dbg !913

if.then:                                          ; preds = %land.end18
  %13 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !914
  %des0 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %13, i32 0, i32 0, !dbg !917
  %14 = load i32, i32* %des0, align 4, !dbg !917
  %cmp = icmp eq i32 %14, -1, !dbg !918
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !919

land.lhs.true:                                    ; preds = %if.then
  %15 = load %struct.dma_desc*, %struct.dma_desc** %p, align 8, !dbg !920
  %des1 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %15, i32 0, i32 1, !dbg !921
  %16 = load i32, i32* %des1, align 4, !dbg !921
  %cmp23 = icmp eq i32 %16, -1, !dbg !922
  br i1 %cmp23, label %if.then25, label %if.end, !dbg !923

if.then25:                                        ; preds = %land.lhs.true
  store i32 -22, i32* %retval, align 4, !dbg !924
  br label %return, !dbg !924

if.end:                                           ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %retval, align 4, !dbg !925
  br label %return, !dbg !925

if.end26:                                         ; preds = %land.end18
  store i32 -22, i32* %retval, align 4, !dbg !926
  br label %return, !dbg !926

return:                                           ; preds = %if.end26, %if.end, %if.then25
  %17 = load i32, i32* %retval, align 4, !dbg !927
  ret i32 %17, !dbg !927
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!291, !292, !293, !294}
!llvm.ident = !{!295}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dwxgmac210_desc_ops", scope: !2, file: !3, line: 349, type: !45, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !44, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c", directory: "/home/lizy2001/genbc/linux")
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
!28 = !{!29, !31, !33, !34, !42}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !30, line: 27, baseType: !7)
!30 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !32, line: 31, baseType: !29)
!32 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_desc", file: !36, line: 158, size: 128, elements: !37)
!36 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/descs.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39, !40, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "des0", scope: !35, file: !36, line: 159, baseType: !31, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "des1", scope: !35, file: !36, line: 160, baseType: !31, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "des2", scope: !35, file: !36, line: 161, baseType: !31, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "des3", scope: !35, file: !36, line: 162, baseType: !31, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !43, line: 21, baseType: !29)
!43 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!0}
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_desc_ops", file: !47, line: 35, size: 1984, elements: !48)
!47 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/hwif.h", directory: "/home/lizy2001/genbc/linux")
!48 = !{!49, !53, !57, !64, !68, !72, !76, !80, !81, !82, !204, !205, !206, !210, !214, !226, !227, !228, !236, !240, !244, !248, !253, !258, !259, !265, !266, !267, !271, !278, !279}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "init_rx_desc", scope: !46, file: !47, line: 37, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !34, !33, !33, !33, !33}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "init_tx_desc", scope: !46, file: !47, line: 40, baseType: !54, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !34, !33, !33}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_tx_desc", scope: !46, file: !47, line: 42, baseType: !58, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !34, !33, !33, !61, !33, !61, !61, !7}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !62, line: 30, baseType: !63)
!62 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!63 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_tso_tx_desc", scope: !46, file: !47, line: 45, baseType: !65, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !34, !33, !33, !33, !61, !61, !7, !7}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "set_tx_owner", scope: !46, file: !47, line: 49, baseType: !69, size: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !34}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "get_tx_owner", scope: !46, file: !47, line: 50, baseType: !73, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!33, !34}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "release_tx_desc", scope: !46, file: !47, line: 52, baseType: !77, size: 64, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !34, !33}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "set_tx_ic", scope: !46, file: !47, line: 55, baseType: !69, size: 64, offset: 448)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "get_tx_ls", scope: !46, file: !47, line: 57, baseType: !73, size: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "tx_status", scope: !46, file: !47, line: 59, baseType: !83, size: 64, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!33, !86, !87, !34, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_extra_stats", file: !14, line: 61, size: 7680, elements: !89)
!89 = !{!90, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "tx_underflow", scope: !88, file: !14, line: 63, baseType: !91, size: 64, align: 512)
!91 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "tx_carrier", scope: !88, file: !14, line: 64, baseType: !91, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "tx_losscarrier", scope: !88, file: !14, line: 65, baseType: !91, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag", scope: !88, file: !14, line: 66, baseType: !91, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tx_deferred", scope: !88, file: !14, line: 67, baseType: !91, size: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tx_vlan", scope: !88, file: !14, line: 68, baseType: !91, size: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber", scope: !88, file: !14, line: 69, baseType: !91, size: 64, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tx_frame_flushed", scope: !88, file: !14, line: 70, baseType: !91, size: 64, offset: 448)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "tx_payload_error", scope: !88, file: !14, line: 71, baseType: !91, size: 64, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ip_header_error", scope: !88, file: !14, line: 72, baseType: !91, size: 64, offset: 576)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "rx_desc", scope: !88, file: !14, line: 74, baseType: !91, size: 64, offset: 640)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sa_filter_fail", scope: !88, file: !14, line: 75, baseType: !91, size: 64, offset: 704)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_error", scope: !88, file: !14, line: 76, baseType: !91, size: 64, offset: 768)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_csum_error", scope: !88, file: !14, line: 77, baseType: !91, size: 64, offset: 832)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "rx_collision", scope: !88, file: !14, line: 78, baseType: !91, size: 64, offset: 896)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "rx_crc_errors", scope: !88, file: !14, line: 79, baseType: !91, size: 64, offset: 960)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "dribbling_bit", scope: !88, file: !14, line: 80, baseType: !91, size: 64, offset: 1024)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "rx_length", scope: !88, file: !14, line: 81, baseType: !91, size: 64, offset: 1088)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "rx_mii", scope: !88, file: !14, line: 82, baseType: !91, size: 64, offset: 1152)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "rx_multicast", scope: !88, file: !14, line: 83, baseType: !91, size: 64, offset: 1216)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "rx_gmac_overflow", scope: !88, file: !14, line: 84, baseType: !91, size: 64, offset: 1280)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog", scope: !88, file: !14, line: 85, baseType: !91, size: 64, offset: 1344)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "da_rx_filter_fail", scope: !88, file: !14, line: 86, baseType: !91, size: 64, offset: 1408)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "sa_rx_filter_fail", scope: !88, file: !14, line: 87, baseType: !91, size: 64, offset: 1472)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "rx_missed_cntr", scope: !88, file: !14, line: 88, baseType: !91, size: 64, offset: 1536)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_cntr", scope: !88, file: !14, line: 89, baseType: !91, size: 64, offset: 1600)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "rx_vlan", scope: !88, file: !14, line: 90, baseType: !91, size: 64, offset: 1664)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "rx_split_hdr_pkt_n", scope: !88, file: !14, line: 91, baseType: !91, size: 64, offset: 1728)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tx_undeflow_irq", scope: !88, file: !14, line: 93, baseType: !91, size: 64, offset: 1792)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tx_process_stopped_irq", scope: !88, file: !14, line: 94, baseType: !91, size: 64, offset: 1856)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber_irq", scope: !88, file: !14, line: 95, baseType: !91, size: 64, offset: 1920)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_irq", scope: !88, file: !14, line: 96, baseType: !91, size: 64, offset: 1984)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_unav_irq", scope: !88, file: !14, line: 97, baseType: !91, size: 64, offset: 2048)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "rx_process_stopped_irq", scope: !88, file: !14, line: 98, baseType: !91, size: 64, offset: 2112)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog_irq", scope: !88, file: !14, line: 99, baseType: !91, size: 64, offset: 2176)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tx_early_irq", scope: !88, file: !14, line: 100, baseType: !91, size: 64, offset: 2240)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_bus_error_irq", scope: !88, file: !14, line: 101, baseType: !91, size: 64, offset: 2304)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "rx_early_irq", scope: !88, file: !14, line: 103, baseType: !91, size: 64, offset: 2368)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !88, file: !14, line: 104, baseType: !91, size: 64, offset: 2432)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tx_pkt_n", scope: !88, file: !14, line: 105, baseType: !91, size: 64, offset: 2496)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "rx_pkt_n", scope: !88, file: !14, line: 106, baseType: !91, size: 64, offset: 2560)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "normal_irq_n", scope: !88, file: !14, line: 107, baseType: !91, size: 64, offset: 2624)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "rx_normal_irq_n", scope: !88, file: !14, line: 108, baseType: !91, size: 64, offset: 2688)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "napi_poll", scope: !88, file: !14, line: 109, baseType: !91, size: 64, offset: 2752)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tx_normal_irq_n", scope: !88, file: !14, line: 110, baseType: !91, size: 64, offset: 2816)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tx_clean", scope: !88, file: !14, line: 111, baseType: !91, size: 64, offset: 2880)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tx_set_ic_bit", scope: !88, file: !14, line: 112, baseType: !91, size: 64, offset: 2944)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "irq_receive_pmt_irq_n", scope: !88, file: !14, line: 113, baseType: !91, size: 64, offset: 3008)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_irq_n", scope: !88, file: !14, line: 115, baseType: !91, size: 64, offset: 3072)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_irq_n", scope: !88, file: !14, line: 116, baseType: !91, size: 64, offset: 3136)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_csum_offload_irq_n", scope: !88, file: !14, line: 117, baseType: !91, size: 64, offset: 3200)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_in_lpi_mode_n", scope: !88, file: !14, line: 119, baseType: !91, size: 64, offset: 3264)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_exit_lpi_mode_n", scope: !88, file: !14, line: 120, baseType: !91, size: 64, offset: 3328)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_in_lpi_mode_n", scope: !88, file: !14, line: 121, baseType: !91, size: 64, offset: 3392)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_exit_lpi_mode_n", scope: !88, file: !14, line: 122, baseType: !91, size: 64, offset: 3456)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "phy_eee_wakeup_error_n", scope: !88, file: !14, line: 123, baseType: !91, size: 64, offset: 3520)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hdr_err", scope: !88, file: !14, line: 125, baseType: !91, size: 64, offset: 3584)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ip_payload_err", scope: !88, file: !14, line: 126, baseType: !91, size: 64, offset: 3648)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ip_csum_bypassed", scope: !88, file: !14, line: 127, baseType: !91, size: 64, offset: 3712)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_pkt_rcvd", scope: !88, file: !14, line: 128, baseType: !91, size: 64, offset: 3776)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_pkt_rcvd", scope: !88, file: !14, line: 129, baseType: !91, size: 64, offset: 3840)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "no_ptp_rx_msg_type_ext", scope: !88, file: !14, line: 130, baseType: !91, size: 64, offset: 3904)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_sync", scope: !88, file: !14, line: 131, baseType: !91, size: 64, offset: 3968)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_follow_up", scope: !88, file: !14, line: 132, baseType: !91, size: 64, offset: 4032)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_req", scope: !88, file: !14, line: 133, baseType: !91, size: 64, offset: 4096)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_resp", scope: !88, file: !14, line: 134, baseType: !91, size: 64, offset: 4160)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_req", scope: !88, file: !14, line: 135, baseType: !91, size: 64, offset: 4224)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_resp", scope: !88, file: !14, line: 136, baseType: !91, size: 64, offset: 4288)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_follow_up", scope: !88, file: !14, line: 137, baseType: !91, size: 64, offset: 4352)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_announce", scope: !88, file: !14, line: 138, baseType: !91, size: 64, offset: 4416)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_management", scope: !88, file: !14, line: 139, baseType: !91, size: 64, offset: 4480)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_pkt_reserved_type", scope: !88, file: !14, line: 140, baseType: !91, size: 64, offset: 4544)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_frame_type", scope: !88, file: !14, line: 141, baseType: !91, size: 64, offset: 4608)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_ver", scope: !88, file: !14, line: 142, baseType: !91, size: 64, offset: 4672)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp_dropped", scope: !88, file: !14, line: 143, baseType: !91, size: 64, offset: 4736)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "av_pkt_rcvd", scope: !88, file: !14, line: 144, baseType: !91, size: 64, offset: 4800)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "av_tagged_pkt_rcvd", scope: !88, file: !14, line: 145, baseType: !91, size: 64, offset: 4864)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag_priority_val", scope: !88, file: !14, line: 146, baseType: !91, size: 64, offset: 4928)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "l3_filter_match", scope: !88, file: !14, line: 147, baseType: !91, size: 64, offset: 4992)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "l4_filter_match", scope: !88, file: !14, line: 148, baseType: !91, size: 64, offset: 5056)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "l3_l4_filter_no_match", scope: !88, file: !14, line: 149, baseType: !91, size: 64, offset: 5120)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_ane_n", scope: !88, file: !14, line: 151, baseType: !91, size: 64, offset: 5184)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_link_n", scope: !88, file: !14, line: 152, baseType: !91, size: 64, offset: 5248)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rgmii_n", scope: !88, file: !14, line: 153, baseType: !91, size: 64, offset: 5312)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_link", scope: !88, file: !14, line: 154, baseType: !91, size: 64, offset: 5376)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_duplex", scope: !88, file: !14, line: 155, baseType: !91, size: 64, offset: 5440)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_speed", scope: !88, file: !14, line: 156, baseType: !91, size: 64, offset: 5504)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_status_fifo_full", scope: !88, file: !14, line: 158, baseType: !91, size: 64, offset: 5568)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_not_empty", scope: !88, file: !14, line: 159, baseType: !91, size: 64, offset: 5632)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "mmtl_fifo_ctrl", scope: !88, file: !14, line: 160, baseType: !91, size: 64, offset: 5696)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_write", scope: !88, file: !14, line: 161, baseType: !91, size: 64, offset: 5760)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_wait", scope: !88, file: !14, line: 162, baseType: !91, size: 64, offset: 5824)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_read", scope: !88, file: !14, line: 163, baseType: !91, size: 64, offset: 5888)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_idle", scope: !88, file: !14, line: 164, baseType: !91, size: 64, offset: 5952)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_in_pause", scope: !88, file: !14, line: 165, baseType: !91, size: 64, offset: 6016)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_xfer", scope: !88, file: !14, line: 166, baseType: !91, size: 64, offset: 6080)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_idle", scope: !88, file: !14, line: 167, baseType: !91, size: 64, offset: 6144)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_wait", scope: !88, file: !14, line: 168, baseType: !91, size: 64, offset: 6208)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_pause", scope: !88, file: !14, line: 169, baseType: !91, size: 64, offset: 6272)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_tx_proto_engine", scope: !88, file: !14, line: 170, baseType: !91, size: 64, offset: 6336)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_full", scope: !88, file: !14, line: 171, baseType: !91, size: 64, offset: 6400)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_above_thresh", scope: !88, file: !14, line: 172, baseType: !91, size: 64, offset: 6464)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_below_thresh", scope: !88, file: !14, line: 173, baseType: !91, size: 64, offset: 6528)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_empty", scope: !88, file: !14, line: 174, baseType: !91, size: 64, offset: 6592)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_flush", scope: !88, file: !14, line: 175, baseType: !91, size: 64, offset: 6656)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_read_data", scope: !88, file: !14, line: 176, baseType: !91, size: 64, offset: 6720)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_status", scope: !88, file: !14, line: 177, baseType: !91, size: 64, offset: 6784)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_idle", scope: !88, file: !14, line: 178, baseType: !91, size: 64, offset: 6848)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_ctrl_active", scope: !88, file: !14, line: 179, baseType: !91, size: 64, offset: 6912)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "mac_rx_frame_ctrl_fifo", scope: !88, file: !14, line: 180, baseType: !91, size: 64, offset: 6976)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_rx_proto_engine", scope: !88, file: !14, line: 181, baseType: !91, size: 64, offset: 7040)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_frames", scope: !88, file: !14, line: 183, baseType: !91, size: 64, offset: 7104)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_nfrags", scope: !88, file: !14, line: 184, baseType: !91, size: 64, offset: 7168)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "get_tx_len", scope: !46, file: !47, line: 62, baseType: !73, size: 64, offset: 640)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "set_rx_owner", scope: !46, file: !47, line: 64, baseType: !77, size: 64, offset: 704)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "get_rx_frame_len", scope: !46, file: !47, line: 66, baseType: !207, size: 64, offset: 768)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!33, !34, !33}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "rx_status", scope: !46, file: !47, line: 68, baseType: !211, size: 64, offset: 832)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!33, !86, !87, !34}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "rx_extended_status", scope: !46, file: !47, line: 70, baseType: !215, size: 64, offset: 896)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !86, !87, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_extended_desc", file: !36, line: 166, size: 256, elements: !220)
!220 = !{!221, !222, !223, !224, !225}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "basic", scope: !219, file: !36, line: 167, baseType: !35, size: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "des4", scope: !219, file: !36, line: 168, baseType: !31, size: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "des5", scope: !219, file: !36, line: 169, baseType: !31, size: 32, offset: 160)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "des6", scope: !219, file: !36, line: 170, baseType: !31, size: 32, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "des7", scope: !219, file: !36, line: 171, baseType: !31, size: 32, offset: 224)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "enable_tx_timestamp", scope: !46, file: !47, line: 73, baseType: !69, size: 64, offset: 960)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "get_tx_timestamp_status", scope: !46, file: !47, line: 75, baseType: !73, size: 64, offset: 1024)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "get_timestamp", scope: !46, file: !47, line: 77, baseType: !229, size: 64, offset: 1088)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !86, !42, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !43, line: 23, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !30, line: 31, baseType: !235)
!235 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "get_rx_timestamp_status", scope: !46, file: !47, line: 79, baseType: !237, size: 64, offset: 1152)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!33, !86, !86, !42}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "display_ring", scope: !46, file: !47, line: 81, baseType: !241, size: 64, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !86, !7, !61}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "set_mss", scope: !46, file: !47, line: 83, baseType: !245, size: 64, offset: 1280)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !34, !7}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "get_addr", scope: !46, file: !47, line: 85, baseType: !249, size: 64, offset: 1344)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !34, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "set_addr", scope: !46, file: !47, line: 87, baseType: !254, size: 64, offset: 1408)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !34, !257}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !62, line: 143, baseType: !233)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !46, file: !47, line: 89, baseType: !69, size: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "get_rx_hash", scope: !46, file: !47, line: 91, baseType: !260, size: 64, offset: 1536)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!33, !34, !263, !264}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "get_rx_header_len", scope: !46, file: !47, line: 93, baseType: !249, size: 64, offset: 1600)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "set_sec_addr", scope: !46, file: !47, line: 94, baseType: !254, size: 64, offset: 1664)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "set_sarc", scope: !46, file: !47, line: 95, baseType: !268, size: 64, offset: 1728)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !34, !42}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "set_vlan_tag", scope: !46, file: !47, line: 96, baseType: !272, size: 64, offset: 1792)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !34, !275, !275, !42}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !43, line: 19, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !30, line: 24, baseType: !277)
!277 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "set_vlan", scope: !46, file: !47, line: 98, baseType: !268, size: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "set_tbs", scope: !46, file: !47, line: 99, baseType: !280, size: 64, offset: 1920)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !283, !42, !42}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_edesc", file: !36, line: 175, size: 256, elements: !285)
!285 = !{!286, !287, !288, !289, !290}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "des4", scope: !284, file: !36, line: 176, baseType: !31, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "des5", scope: !284, file: !36, line: 177, baseType: !31, size: 32, offset: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "des6", scope: !284, file: !36, line: 178, baseType: !31, size: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "des7", scope: !284, file: !36, line: 179, baseType: !31, size: 32, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "basic", scope: !284, file: !36, line: 180, baseType: !35, size: 128, offset: 128)
!291 = !{i32 7, !"Dwarf Version", i32 4}
!292 = !{i32 2, !"Debug Info Version", i32 3}
!293 = !{i32 1, !"wchar_size", i32 2}
!294 = !{i32 1, !"Code Model", i32 2}
!295 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!296 = distinct !DISubprogram(name: "dwxgmac2_init_rx_desc", scope: !3, file: !3, line: 129, type: !51, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!297 = !{}
!298 = !DILocalVariable(name: "p", arg: 1, scope: !296, file: !3, line: 129, type: !34)
!299 = !DILocation(line: 129, column: 52, scope: !296)
!300 = !DILocalVariable(name: "disable_rx_ic", arg: 2, scope: !296, file: !3, line: 129, type: !33)
!301 = !DILocation(line: 129, column: 59, scope: !296)
!302 = !DILocalVariable(name: "mode", arg: 3, scope: !296, file: !3, line: 130, type: !33)
!303 = !DILocation(line: 130, column: 11, scope: !296)
!304 = !DILocalVariable(name: "end", arg: 4, scope: !296, file: !3, line: 130, type: !33)
!305 = !DILocation(line: 130, column: 21, scope: !296)
!306 = !DILocalVariable(name: "bfsize", arg: 5, scope: !296, file: !3, line: 130, type: !33)
!307 = !DILocation(line: 130, column: 30, scope: !296)
!308 = !DILocation(line: 132, column: 24, scope: !296)
!309 = !DILocation(line: 132, column: 27, scope: !296)
!310 = !DILocation(line: 132, column: 2, scope: !296)
!311 = !DILocation(line: 133, column: 1, scope: !296)
!312 = distinct !DISubprogram(name: "dwxgmac2_init_tx_desc", scope: !3, file: !3, line: 135, type: !55, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!313 = !DILocalVariable(name: "p", arg: 1, scope: !312, file: !3, line: 135, type: !34)
!314 = !DILocation(line: 135, column: 52, scope: !312)
!315 = !DILocalVariable(name: "mode", arg: 2, scope: !312, file: !3, line: 135, type: !33)
!316 = !DILocation(line: 135, column: 59, scope: !312)
!317 = !DILocalVariable(name: "end", arg: 3, scope: !312, file: !3, line: 135, type: !33)
!318 = !DILocation(line: 135, column: 69, scope: !312)
!319 = !DILocation(line: 137, column: 2, scope: !312)
!320 = !DILocation(line: 137, column: 5, scope: !312)
!321 = !DILocation(line: 137, column: 10, scope: !312)
!322 = !DILocation(line: 138, column: 2, scope: !312)
!323 = !DILocation(line: 138, column: 5, scope: !312)
!324 = !DILocation(line: 138, column: 10, scope: !312)
!325 = !DILocation(line: 139, column: 2, scope: !312)
!326 = !DILocation(line: 139, column: 5, scope: !312)
!327 = !DILocation(line: 139, column: 10, scope: !312)
!328 = !DILocation(line: 140, column: 2, scope: !312)
!329 = !DILocation(line: 140, column: 5, scope: !312)
!330 = !DILocation(line: 140, column: 10, scope: !312)
!331 = !DILocation(line: 141, column: 1, scope: !312)
!332 = distinct !DISubprogram(name: "dwxgmac2_prepare_tx_desc", scope: !3, file: !3, line: 143, type: !59, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!333 = !DILocalVariable(name: "p", arg: 1, scope: !332, file: !3, line: 143, type: !34)
!334 = !DILocation(line: 143, column: 55, scope: !332)
!335 = !DILocalVariable(name: "is_fs", arg: 2, scope: !332, file: !3, line: 143, type: !33)
!336 = !DILocation(line: 143, column: 62, scope: !332)
!337 = !DILocalVariable(name: "len", arg: 3, scope: !332, file: !3, line: 143, type: !33)
!338 = !DILocation(line: 143, column: 73, scope: !332)
!339 = !DILocalVariable(name: "csum_flag", arg: 4, scope: !332, file: !3, line: 144, type: !61)
!340 = !DILocation(line: 144, column: 15, scope: !332)
!341 = !DILocalVariable(name: "mode", arg: 5, scope: !332, file: !3, line: 144, type: !33)
!342 = !DILocation(line: 144, column: 30, scope: !332)
!343 = !DILocalVariable(name: "tx_own", arg: 6, scope: !332, file: !3, line: 144, type: !61)
!344 = !DILocation(line: 144, column: 41, scope: !332)
!345 = !DILocalVariable(name: "ls", arg: 7, scope: !332, file: !3, line: 145, type: !61)
!346 = !DILocation(line: 145, column: 15, scope: !332)
!347 = !DILocalVariable(name: "tot_pkt_len", arg: 8, scope: !332, file: !3, line: 145, type: !7)
!348 = !DILocation(line: 145, column: 32, scope: !332)
!349 = !DILocalVariable(name: "tdes3", scope: !332, file: !3, line: 147, type: !7)
!350 = !DILocation(line: 147, column: 15, scope: !332)
!351 = !DILocation(line: 147, column: 23, scope: !332)
!352 = !DILocation(line: 149, column: 13, scope: !332)
!353 = !DILocation(line: 149, column: 2, scope: !332)
!354 = !DILocation(line: 149, column: 5, scope: !332)
!355 = !DILocation(line: 149, column: 10, scope: !332)
!356 = !DILocation(line: 151, column: 11, scope: !332)
!357 = !DILocation(line: 151, column: 23, scope: !332)
!358 = !DILocation(line: 151, column: 8, scope: !332)
!359 = !DILocation(line: 152, column: 6, scope: !360)
!360 = distinct !DILexicalBlock(scope: !332, file: !3, line: 152, column: 6)
!361 = !DILocation(line: 152, column: 6, scope: !332)
!362 = !DILocation(line: 153, column: 9, scope: !360)
!363 = !DILocation(line: 153, column: 3, scope: !360)
!364 = !DILocation(line: 155, column: 9, scope: !360)
!365 = !DILocation(line: 157, column: 6, scope: !366)
!366 = distinct !DILexicalBlock(scope: !332, file: !3, line: 157, column: 6)
!367 = !DILocation(line: 157, column: 6, scope: !332)
!368 = !DILocation(line: 158, column: 9, scope: !366)
!369 = !DILocation(line: 158, column: 3, scope: !366)
!370 = !DILocation(line: 160, column: 9, scope: !366)
!371 = !DILocation(line: 162, column: 6, scope: !372)
!372 = distinct !DILexicalBlock(scope: !332, file: !3, line: 162, column: 6)
!373 = !DILocation(line: 162, column: 6, scope: !332)
!374 = !DILocation(line: 163, column: 9, scope: !372)
!375 = !DILocation(line: 163, column: 3, scope: !372)
!376 = !DILocation(line: 165, column: 9, scope: !372)
!377 = !DILocation(line: 168, column: 6, scope: !378)
!378 = distinct !DILexicalBlock(scope: !332, file: !3, line: 168, column: 6)
!379 = !DILocation(line: 168, column: 6, scope: !332)
!380 = !DILocation(line: 169, column: 9, scope: !378)
!381 = !DILocation(line: 169, column: 3, scope: !378)
!382 = !DILocation(line: 171, column: 6, scope: !383)
!383 = distinct !DILexicalBlock(scope: !332, file: !3, line: 171, column: 6)
!384 = !DILocation(line: 171, column: 12, scope: !383)
!385 = !DILocation(line: 171, column: 15, scope: !383)
!386 = !DILocation(line: 171, column: 6, scope: !332)
!387 = !DILocation(line: 176, column: 3, scope: !383)
!388 = !{i32 -2139774212}
!389 = !DILocation(line: 178, column: 12, scope: !332)
!390 = !DILocation(line: 178, column: 2, scope: !332)
!391 = !DILocation(line: 178, column: 5, scope: !332)
!392 = !DILocation(line: 178, column: 10, scope: !332)
!393 = !DILocation(line: 179, column: 1, scope: !332)
!394 = distinct !DISubprogram(name: "dwxgmac2_prepare_tso_tx_desc", scope: !3, file: !3, line: 181, type: !66, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!395 = !DILocalVariable(name: "p", arg: 1, scope: !394, file: !3, line: 181, type: !34)
!396 = !DILocation(line: 181, column: 59, scope: !394)
!397 = !DILocalVariable(name: "is_fs", arg: 2, scope: !394, file: !3, line: 181, type: !33)
!398 = !DILocation(line: 181, column: 66, scope: !394)
!399 = !DILocalVariable(name: "len1", arg: 3, scope: !394, file: !3, line: 182, type: !33)
!400 = !DILocation(line: 182, column: 11, scope: !394)
!401 = !DILocalVariable(name: "len2", arg: 4, scope: !394, file: !3, line: 182, type: !33)
!402 = !DILocation(line: 182, column: 21, scope: !394)
!403 = !DILocalVariable(name: "tx_own", arg: 5, scope: !394, file: !3, line: 182, type: !61)
!404 = !DILocation(line: 182, column: 32, scope: !394)
!405 = !DILocalVariable(name: "ls", arg: 6, scope: !394, file: !3, line: 183, type: !61)
!406 = !DILocation(line: 183, column: 12, scope: !394)
!407 = !DILocalVariable(name: "tcphdrlen", arg: 7, scope: !394, file: !3, line: 183, type: !7)
!408 = !DILocation(line: 183, column: 29, scope: !394)
!409 = !DILocalVariable(name: "tcppayloadlen", arg: 8, scope: !394, file: !3, line: 184, type: !7)
!410 = !DILocation(line: 184, column: 20, scope: !394)
!411 = !DILocalVariable(name: "tdes3", scope: !394, file: !3, line: 186, type: !7)
!412 = !DILocation(line: 186, column: 15, scope: !394)
!413 = !DILocation(line: 186, column: 23, scope: !394)
!414 = !DILocation(line: 188, column: 6, scope: !415)
!415 = distinct !DILexicalBlock(scope: !394, file: !3, line: 188, column: 6)
!416 = !DILocation(line: 188, column: 6, scope: !394)
!417 = !DILocation(line: 189, column: 14, scope: !415)
!418 = !DILocation(line: 189, column: 3, scope: !415)
!419 = !DILocation(line: 189, column: 6, scope: !415)
!420 = !DILocation(line: 189, column: 11, scope: !415)
!421 = !DILocation(line: 190, column: 6, scope: !422)
!422 = distinct !DILexicalBlock(scope: !394, file: !3, line: 190, column: 6)
!423 = !DILocation(line: 190, column: 6, scope: !394)
!424 = !DILocation(line: 191, column: 14, scope: !422)
!425 = !DILocation(line: 191, column: 3, scope: !422)
!426 = !DILocation(line: 191, column: 6, scope: !422)
!427 = !DILocation(line: 191, column: 11, scope: !422)
!428 = !DILocation(line: 193, column: 6, scope: !429)
!429 = distinct !DILexicalBlock(scope: !394, file: !3, line: 193, column: 6)
!430 = !DILocation(line: 193, column: 6, scope: !394)
!431 = !DILocation(line: 194, column: 9, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !3, line: 193, column: 13)
!433 = !DILocation(line: 195, column: 13, scope: !432)
!434 = !DILocation(line: 195, column: 23, scope: !432)
!435 = !DILocation(line: 195, column: 12, scope: !432)
!436 = !DILocation(line: 195, column: 49, scope: !432)
!437 = !DILocation(line: 195, column: 9, scope: !432)
!438 = !DILocation(line: 197, column: 12, scope: !432)
!439 = !DILocation(line: 197, column: 26, scope: !432)
!440 = !DILocation(line: 197, column: 9, scope: !432)
!441 = !DILocation(line: 198, column: 2, scope: !432)
!442 = !DILocation(line: 199, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !429, file: !3, line: 198, column: 9)
!444 = !DILocation(line: 202, column: 6, scope: !445)
!445 = distinct !DILexicalBlock(scope: !394, file: !3, line: 202, column: 6)
!446 = !DILocation(line: 202, column: 6, scope: !394)
!447 = !DILocation(line: 203, column: 9, scope: !445)
!448 = !DILocation(line: 203, column: 3, scope: !445)
!449 = !DILocation(line: 205, column: 9, scope: !445)
!450 = !DILocation(line: 208, column: 6, scope: !451)
!451 = distinct !DILexicalBlock(scope: !394, file: !3, line: 208, column: 6)
!452 = !DILocation(line: 208, column: 6, scope: !394)
!453 = !DILocation(line: 209, column: 9, scope: !451)
!454 = !DILocation(line: 209, column: 3, scope: !451)
!455 = !DILocation(line: 211, column: 6, scope: !456)
!456 = distinct !DILexicalBlock(scope: !394, file: !3, line: 211, column: 6)
!457 = !DILocation(line: 211, column: 12, scope: !456)
!458 = !DILocation(line: 211, column: 15, scope: !456)
!459 = !DILocation(line: 211, column: 6, scope: !394)
!460 = !DILocation(line: 216, column: 3, scope: !456)
!461 = !{i32 -2139770704}
!462 = !DILocation(line: 218, column: 12, scope: !394)
!463 = !DILocation(line: 218, column: 2, scope: !394)
!464 = !DILocation(line: 218, column: 5, scope: !394)
!465 = !DILocation(line: 218, column: 10, scope: !394)
!466 = !DILocation(line: 219, column: 1, scope: !394)
!467 = distinct !DISubprogram(name: "dwxgmac2_set_tx_owner", scope: !3, file: !3, line: 52, type: !70, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!468 = !DILocalVariable(name: "p", arg: 1, scope: !467, file: !3, line: 52, type: !34)
!469 = !DILocation(line: 52, column: 52, scope: !467)
!470 = !DILocation(line: 54, column: 2, scope: !467)
!471 = !DILocation(line: 54, column: 5, scope: !467)
!472 = !DILocation(line: 54, column: 10, scope: !467)
!473 = !DILocation(line: 55, column: 1, scope: !467)
!474 = distinct !DISubprogram(name: "dwxgmac2_get_tx_owner", scope: !3, file: !3, line: 47, type: !74, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!475 = !DILocalVariable(name: "p", arg: 1, scope: !474, file: !3, line: 47, type: !34)
!476 = !DILocation(line: 47, column: 51, scope: !474)
!477 = !DILocation(line: 49, column: 10, scope: !474)
!478 = !DILocation(line: 49, column: 31, scope: !474)
!479 = !DILocation(line: 49, column: 50, scope: !474)
!480 = !DILocation(line: 49, column: 2, scope: !474)
!481 = distinct !DISubprogram(name: "dwxgmac2_release_tx_desc", scope: !3, file: !3, line: 221, type: !78, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!482 = !DILocalVariable(name: "p", arg: 1, scope: !481, file: !3, line: 221, type: !34)
!483 = !DILocation(line: 221, column: 55, scope: !481)
!484 = !DILocalVariable(name: "mode", arg: 2, scope: !481, file: !3, line: 221, type: !33)
!485 = !DILocation(line: 221, column: 62, scope: !481)
!486 = !DILocation(line: 223, column: 2, scope: !481)
!487 = !DILocation(line: 223, column: 5, scope: !481)
!488 = !DILocation(line: 223, column: 10, scope: !481)
!489 = !DILocation(line: 224, column: 2, scope: !481)
!490 = !DILocation(line: 224, column: 5, scope: !481)
!491 = !DILocation(line: 224, column: 10, scope: !481)
!492 = !DILocation(line: 225, column: 2, scope: !481)
!493 = !DILocation(line: 225, column: 5, scope: !481)
!494 = !DILocation(line: 225, column: 10, scope: !481)
!495 = !DILocation(line: 226, column: 2, scope: !481)
!496 = !DILocation(line: 226, column: 5, scope: !481)
!497 = !DILocation(line: 226, column: 10, scope: !481)
!498 = !DILocation(line: 227, column: 1, scope: !481)
!499 = distinct !DISubprogram(name: "dwxgmac2_set_tx_ic", scope: !3, file: !3, line: 229, type: !70, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!500 = !DILocalVariable(name: "p", arg: 1, scope: !499, file: !3, line: 229, type: !34)
!501 = !DILocation(line: 229, column: 49, scope: !499)
!502 = !DILocation(line: 231, column: 2, scope: !499)
!503 = !DILocation(line: 231, column: 5, scope: !499)
!504 = !DILocation(line: 231, column: 10, scope: !499)
!505 = !DILocation(line: 232, column: 1, scope: !499)
!506 = distinct !DISubprogram(name: "dwxgmac2_get_tx_ls", scope: !3, file: !3, line: 65, type: !74, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!507 = !DILocalVariable(name: "p", arg: 1, scope: !506, file: !3, line: 65, type: !34)
!508 = !DILocation(line: 65, column: 48, scope: !506)
!509 = !DILocation(line: 67, column: 10, scope: !506)
!510 = !DILocation(line: 67, column: 31, scope: !506)
!511 = !DILocation(line: 67, column: 49, scope: !506)
!512 = !DILocation(line: 67, column: 2, scope: !506)
!513 = distinct !DISubprogram(name: "dwxgmac2_get_tx_status", scope: !3, file: !3, line: 11, type: !84, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!514 = !DILocalVariable(name: "data", arg: 1, scope: !513, file: !3, line: 11, type: !86)
!515 = !DILocation(line: 11, column: 41, scope: !513)
!516 = !DILocalVariable(name: "x", arg: 2, scope: !513, file: !3, line: 11, type: !87)
!517 = !DILocation(line: 11, column: 74, scope: !513)
!518 = !DILocalVariable(name: "p", arg: 3, scope: !513, file: !3, line: 12, type: !34)
!519 = !DILocation(line: 12, column: 24, scope: !513)
!520 = !DILocalVariable(name: "ioaddr", arg: 4, scope: !513, file: !3, line: 12, type: !86)
!521 = !DILocation(line: 12, column: 41, scope: !513)
!522 = !DILocalVariable(name: "tdes3", scope: !513, file: !3, line: 14, type: !7)
!523 = !DILocation(line: 14, column: 15, scope: !513)
!524 = !DILocation(line: 14, column: 23, scope: !513)
!525 = !DILocalVariable(name: "ret", scope: !513, file: !3, line: 15, type: !33)
!526 = !DILocation(line: 15, column: 6, scope: !513)
!527 = !DILocation(line: 17, column: 6, scope: !528)
!528 = distinct !DILexicalBlock(scope: !513, file: !3, line: 17, column: 6)
!529 = !DILocation(line: 17, column: 6, scope: !513)
!530 = !DILocation(line: 18, column: 3, scope: !528)
!531 = !DILocation(line: 19, column: 6, scope: !532)
!532 = distinct !DILexicalBlock(scope: !513, file: !3, line: 19, column: 6)
!533 = !DILocation(line: 19, column: 6, scope: !513)
!534 = !DILocation(line: 20, column: 3, scope: !532)
!535 = !DILocation(line: 22, column: 9, scope: !513)
!536 = !DILocation(line: 22, column: 2, scope: !513)
!537 = !DILocation(line: 23, column: 1, scope: !513)
!538 = distinct !DISubprogram(name: "dwxgmac2_get_tx_len", scope: !3, file: !3, line: 42, type: !74, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!539 = !DILocalVariable(name: "p", arg: 1, scope: !538, file: !3, line: 42, type: !34)
!540 = !DILocation(line: 42, column: 49, scope: !538)
!541 = !DILocation(line: 44, column: 10, scope: !538)
!542 = !DILocation(line: 44, column: 31, scope: !538)
!543 = !DILocation(line: 44, column: 9, scope: !538)
!544 = !DILocation(line: 44, column: 2, scope: !538)
!545 = distinct !DISubprogram(name: "dwxgmac2_set_rx_owner", scope: !3, file: !3, line: 57, type: !78, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!546 = !DILocalVariable(name: "p", arg: 1, scope: !545, file: !3, line: 57, type: !34)
!547 = !DILocation(line: 57, column: 52, scope: !545)
!548 = !DILocalVariable(name: "disable_rx_ic", arg: 2, scope: !545, file: !3, line: 57, type: !33)
!549 = !DILocation(line: 57, column: 59, scope: !545)
!550 = !DILocation(line: 59, column: 2, scope: !545)
!551 = !DILocation(line: 59, column: 5, scope: !545)
!552 = !DILocation(line: 59, column: 10, scope: !545)
!553 = !DILocation(line: 61, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !545, file: !3, line: 61, column: 6)
!555 = !DILocation(line: 61, column: 6, scope: !545)
!556 = !DILocation(line: 62, column: 3, scope: !554)
!557 = !DILocation(line: 62, column: 6, scope: !554)
!558 = !DILocation(line: 62, column: 11, scope: !554)
!559 = !DILocation(line: 63, column: 1, scope: !545)
!560 = distinct !DISubprogram(name: "dwxgmac2_get_rx_frame_len", scope: !3, file: !3, line: 70, type: !208, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!561 = !DILocalVariable(name: "p", arg: 1, scope: !560, file: !3, line: 70, type: !34)
!562 = !DILocation(line: 70, column: 55, scope: !560)
!563 = !DILocalVariable(name: "rx_coe", arg: 2, scope: !560, file: !3, line: 70, type: !33)
!564 = !DILocation(line: 70, column: 62, scope: !560)
!565 = !DILocation(line: 72, column: 10, scope: !560)
!566 = !DILocation(line: 72, column: 31, scope: !560)
!567 = !DILocation(line: 72, column: 9, scope: !560)
!568 = !DILocation(line: 72, column: 2, scope: !560)
!569 = distinct !DISubprogram(name: "dwxgmac2_get_rx_status", scope: !3, file: !3, line: 25, type: !212, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!570 = !DILocalVariable(name: "data", arg: 1, scope: !569, file: !3, line: 25, type: !86)
!571 = !DILocation(line: 25, column: 41, scope: !569)
!572 = !DILocalVariable(name: "x", arg: 2, scope: !569, file: !3, line: 25, type: !87)
!573 = !DILocation(line: 25, column: 74, scope: !569)
!574 = !DILocalVariable(name: "p", arg: 3, scope: !569, file: !3, line: 26, type: !34)
!575 = !DILocation(line: 26, column: 24, scope: !569)
!576 = !DILocalVariable(name: "rdes3", scope: !569, file: !3, line: 28, type: !7)
!577 = !DILocation(line: 28, column: 15, scope: !569)
!578 = !DILocation(line: 28, column: 23, scope: !569)
!579 = !DILocation(line: 30, column: 6, scope: !580)
!580 = distinct !DILexicalBlock(scope: !569, file: !3, line: 30, column: 6)
!581 = !DILocation(line: 30, column: 6, scope: !569)
!582 = !DILocation(line: 31, column: 3, scope: !580)
!583 = !DILocation(line: 32, column: 6, scope: !584)
!584 = distinct !DILexicalBlock(scope: !569, file: !3, line: 32, column: 6)
!585 = !DILocation(line: 32, column: 6, scope: !569)
!586 = !DILocation(line: 33, column: 3, scope: !584)
!587 = !DILocation(line: 34, column: 6, scope: !588)
!588 = distinct !DILexicalBlock(scope: !569, file: !3, line: 34, column: 6)
!589 = !DILocation(line: 34, column: 6, scope: !569)
!590 = !DILocation(line: 35, column: 3, scope: !588)
!591 = !DILocation(line: 36, column: 6, scope: !592)
!592 = distinct !DILexicalBlock(scope: !569, file: !3, line: 36, column: 6)
!593 = !DILocation(line: 0, scope: !592)
!594 = !DILocation(line: 36, column: 6, scope: !569)
!595 = !DILocation(line: 37, column: 3, scope: !592)
!596 = !DILocation(line: 39, column: 2, scope: !569)
!597 = !DILocation(line: 40, column: 1, scope: !569)
!598 = distinct !DISubprogram(name: "dwxgmac2_enable_tx_timestamp", scope: !3, file: !3, line: 75, type: !70, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!599 = !DILocalVariable(name: "p", arg: 1, scope: !598, file: !3, line: 75, type: !34)
!600 = !DILocation(line: 75, column: 59, scope: !598)
!601 = !DILocation(line: 77, column: 2, scope: !598)
!602 = !DILocation(line: 77, column: 5, scope: !598)
!603 = !DILocation(line: 77, column: 10, scope: !598)
!604 = !DILocation(line: 78, column: 1, scope: !598)
!605 = distinct !DISubprogram(name: "dwxgmac2_get_tx_timestamp_status", scope: !3, file: !3, line: 80, type: !74, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!606 = !DILocalVariable(name: "p", arg: 1, scope: !605, file: !3, line: 80, type: !34)
!607 = !DILocation(line: 80, column: 62, scope: !605)
!608 = !DILocation(line: 82, column: 2, scope: !605)
!609 = distinct !DISubprogram(name: "dwxgmac2_get_timestamp", scope: !3, file: !3, line: 85, type: !230, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!610 = !DILocalVariable(name: "desc", arg: 1, scope: !609, file: !3, line: 85, type: !86)
!611 = !DILocation(line: 85, column: 49, scope: !609)
!612 = !DILocalVariable(name: "ats", arg: 2, scope: !609, file: !3, line: 85, type: !42)
!613 = !DILocation(line: 85, column: 59, scope: !609)
!614 = !DILocalVariable(name: "ts", arg: 3, scope: !609, file: !3, line: 85, type: !232)
!615 = !DILocation(line: 85, column: 69, scope: !609)
!616 = !DILocalVariable(name: "p", scope: !609, file: !3, line: 87, type: !34)
!617 = !DILocation(line: 87, column: 19, scope: !609)
!618 = !DILocation(line: 87, column: 42, scope: !609)
!619 = !DILocation(line: 87, column: 23, scope: !609)
!620 = !DILocalVariable(name: "ns", scope: !609, file: !3, line: 88, type: !233)
!621 = !DILocation(line: 88, column: 6, scope: !609)
!622 = !DILocation(line: 90, column: 8, scope: !609)
!623 = !DILocation(line: 90, column: 29, scope: !609)
!624 = !DILocation(line: 90, column: 5, scope: !609)
!625 = !DILocation(line: 91, column: 8, scope: !609)
!626 = !DILocation(line: 91, column: 5, scope: !609)
!627 = !DILocation(line: 93, column: 8, scope: !609)
!628 = !DILocation(line: 93, column: 3, scope: !609)
!629 = !DILocation(line: 93, column: 6, scope: !609)
!630 = !DILocation(line: 94, column: 1, scope: !609)
!631 = distinct !DISubprogram(name: "dwxgmac2_get_rx_timestamp_status", scope: !3, file: !3, line: 116, type: !238, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!632 = !DILocalVariable(name: "desc", arg: 1, scope: !631, file: !3, line: 116, type: !86)
!633 = !DILocation(line: 116, column: 51, scope: !631)
!634 = !DILocalVariable(name: "next_desc", arg: 2, scope: !631, file: !3, line: 116, type: !86)
!635 = !DILocation(line: 116, column: 63, scope: !631)
!636 = !DILocalVariable(name: "ats", arg: 3, scope: !631, file: !3, line: 117, type: !42)
!637 = !DILocation(line: 117, column: 14, scope: !631)
!638 = !DILocalVariable(name: "p", scope: !631, file: !3, line: 119, type: !34)
!639 = !DILocation(line: 119, column: 19, scope: !631)
!640 = !DILocation(line: 119, column: 42, scope: !631)
!641 = !DILocation(line: 119, column: 23, scope: !631)
!642 = !DILocalVariable(name: "rdes3", scope: !631, file: !3, line: 120, type: !7)
!643 = !DILocation(line: 120, column: 15, scope: !631)
!644 = !DILocation(line: 120, column: 23, scope: !631)
!645 = !DILocalVariable(name: "ret", scope: !631, file: !3, line: 121, type: !33)
!646 = !DILocation(line: 121, column: 6, scope: !631)
!647 = !DILocation(line: 123, column: 6, scope: !648)
!648 = distinct !DILexicalBlock(scope: !631, file: !3, line: 123, column: 6)
!649 = !DILocation(line: 123, column: 6, scope: !631)
!650 = !DILocation(line: 124, column: 37, scope: !648)
!651 = !DILocation(line: 124, column: 9, scope: !648)
!652 = !DILocation(line: 124, column: 7, scope: !648)
!653 = !DILocation(line: 124, column: 3, scope: !648)
!654 = !DILocation(line: 126, column: 10, scope: !631)
!655 = !DILocation(line: 126, column: 9, scope: !631)
!656 = !DILocation(line: 126, column: 2, scope: !631)
!657 = distinct !DISubprogram(name: "dwxgmac2_set_mss", scope: !3, file: !3, line: 234, type: !246, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!658 = !DILocalVariable(name: "p", arg: 1, scope: !657, file: !3, line: 234, type: !34)
!659 = !DILocation(line: 234, column: 47, scope: !657)
!660 = !DILocalVariable(name: "mss", arg: 2, scope: !657, file: !3, line: 234, type: !7)
!661 = !DILocation(line: 234, column: 63, scope: !657)
!662 = !DILocation(line: 236, column: 2, scope: !657)
!663 = !DILocation(line: 236, column: 5, scope: !657)
!664 = !DILocation(line: 236, column: 10, scope: !657)
!665 = !DILocation(line: 237, column: 2, scope: !657)
!666 = !DILocation(line: 237, column: 5, scope: !657)
!667 = !DILocation(line: 237, column: 10, scope: !657)
!668 = !DILocation(line: 238, column: 12, scope: !657)
!669 = !DILocation(line: 238, column: 2, scope: !657)
!670 = !DILocation(line: 238, column: 5, scope: !657)
!671 = !DILocation(line: 238, column: 10, scope: !657)
!672 = !DILocation(line: 239, column: 2, scope: !657)
!673 = !DILocation(line: 239, column: 5, scope: !657)
!674 = !DILocation(line: 239, column: 10, scope: !657)
!675 = !DILocation(line: 240, column: 1, scope: !657)
!676 = distinct !DISubprogram(name: "dwxgmac2_get_addr", scope: !3, file: !3, line: 242, type: !250, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!677 = !DILocalVariable(name: "p", arg: 1, scope: !676, file: !3, line: 242, type: !34)
!678 = !DILocation(line: 242, column: 48, scope: !676)
!679 = !DILocalVariable(name: "addr", arg: 2, scope: !676, file: !3, line: 242, type: !252)
!680 = !DILocation(line: 242, column: 65, scope: !676)
!681 = !DILocation(line: 244, column: 10, scope: !676)
!682 = !DILocation(line: 244, column: 3, scope: !676)
!683 = !DILocation(line: 244, column: 8, scope: !676)
!684 = !DILocation(line: 245, column: 1, scope: !676)
!685 = distinct !DISubprogram(name: "dwxgmac2_set_addr", scope: !3, file: !3, line: 247, type: !255, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!686 = !DILocalVariable(name: "p", arg: 1, scope: !685, file: !3, line: 247, type: !34)
!687 = !DILocation(line: 247, column: 48, scope: !685)
!688 = !DILocalVariable(name: "addr", arg: 2, scope: !685, file: !3, line: 247, type: !257)
!689 = !DILocation(line: 247, column: 62, scope: !685)
!690 = !DILocation(line: 249, column: 12, scope: !685)
!691 = !DILocation(line: 249, column: 2, scope: !685)
!692 = !DILocation(line: 249, column: 5, scope: !685)
!693 = !DILocation(line: 249, column: 10, scope: !685)
!694 = !DILocation(line: 250, column: 12, scope: !685)
!695 = !DILocation(line: 250, column: 2, scope: !685)
!696 = !DILocation(line: 250, column: 5, scope: !685)
!697 = !DILocation(line: 250, column: 10, scope: !685)
!698 = !DILocation(line: 251, column: 1, scope: !685)
!699 = distinct !DISubprogram(name: "dwxgmac2_clear", scope: !3, file: !3, line: 253, type: !70, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!700 = !DILocalVariable(name: "p", arg: 1, scope: !699, file: !3, line: 253, type: !34)
!701 = !DILocation(line: 253, column: 45, scope: !699)
!702 = !DILocation(line: 255, column: 2, scope: !699)
!703 = !DILocation(line: 255, column: 5, scope: !699)
!704 = !DILocation(line: 255, column: 10, scope: !699)
!705 = !DILocation(line: 256, column: 2, scope: !699)
!706 = !DILocation(line: 256, column: 5, scope: !699)
!707 = !DILocation(line: 256, column: 10, scope: !699)
!708 = !DILocation(line: 257, column: 2, scope: !699)
!709 = !DILocation(line: 257, column: 5, scope: !699)
!710 = !DILocation(line: 257, column: 10, scope: !699)
!711 = !DILocation(line: 258, column: 2, scope: !699)
!712 = !DILocation(line: 258, column: 5, scope: !699)
!713 = !DILocation(line: 258, column: 10, scope: !699)
!714 = !DILocation(line: 259, column: 1, scope: !699)
!715 = distinct !DISubprogram(name: "dwxgmac2_get_rx_hash", scope: !3, file: !3, line: 261, type: !261, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!716 = !DILocalVariable(name: "p", arg: 1, scope: !715, file: !3, line: 261, type: !34)
!717 = !DILocation(line: 261, column: 50, scope: !715)
!718 = !DILocalVariable(name: "hash", arg: 2, scope: !715, file: !3, line: 261, type: !263)
!719 = !DILocation(line: 261, column: 58, scope: !715)
!720 = !DILocalVariable(name: "type", arg: 3, scope: !715, file: !3, line: 262, type: !264)
!721 = !DILocation(line: 262, column: 26, scope: !715)
!722 = !DILocalVariable(name: "rdes3", scope: !715, file: !3, line: 264, type: !7)
!723 = !DILocation(line: 264, column: 15, scope: !715)
!724 = !DILocation(line: 264, column: 23, scope: !715)
!725 = !DILocalVariable(name: "ptype", scope: !715, file: !3, line: 265, type: !42)
!726 = !DILocation(line: 265, column: 6, scope: !715)
!727 = !DILocation(line: 267, column: 6, scope: !728)
!728 = distinct !DILexicalBlock(scope: !715, file: !3, line: 267, column: 6)
!729 = !DILocation(line: 267, column: 12, scope: !728)
!730 = !DILocation(line: 267, column: 6, scope: !715)
!731 = !DILocation(line: 268, column: 12, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !3, line: 267, column: 31)
!733 = !DILocation(line: 268, column: 18, scope: !732)
!734 = !DILocation(line: 268, column: 38, scope: !732)
!735 = !DILocation(line: 268, column: 11, scope: !732)
!736 = !DILocation(line: 268, column: 9, scope: !732)
!737 = !DILocation(line: 270, column: 11, scope: !732)
!738 = !DILocation(line: 270, column: 3, scope: !732)
!739 = !DILocation(line: 275, column: 5, scope: !740)
!740 = distinct !DILexicalBlock(scope: !732, file: !3, line: 270, column: 18)
!741 = !DILocation(line: 275, column: 10, scope: !740)
!742 = !DILocation(line: 276, column: 4, scope: !740)
!743 = !DILocation(line: 278, column: 5, scope: !740)
!744 = !DILocation(line: 278, column: 10, scope: !740)
!745 = !DILocation(line: 279, column: 4, scope: !740)
!746 = !DILocation(line: 282, column: 11, scope: !732)
!747 = !DILocation(line: 282, column: 4, scope: !732)
!748 = !DILocation(line: 282, column: 9, scope: !732)
!749 = !DILocation(line: 283, column: 3, scope: !732)
!750 = !DILocation(line: 286, column: 2, scope: !715)
!751 = !DILocation(line: 287, column: 1, scope: !715)
!752 = distinct !DISubprogram(name: "dwxgmac2_get_rx_header_len", scope: !3, file: !3, line: 289, type: !250, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!753 = !DILocalVariable(name: "p", arg: 1, scope: !752, file: !3, line: 289, type: !34)
!754 = !DILocation(line: 289, column: 57, scope: !752)
!755 = !DILocalVariable(name: "len", arg: 2, scope: !752, file: !3, line: 289, type: !252)
!756 = !DILocation(line: 289, column: 74, scope: !752)
!757 = !DILocation(line: 291, column: 6, scope: !758)
!758 = distinct !DILexicalBlock(scope: !752, file: !3, line: 291, column: 6)
!759 = !DILocation(line: 291, column: 27, scope: !758)
!760 = !DILocation(line: 291, column: 6, scope: !752)
!761 = !DILocation(line: 292, column: 10, scope: !758)
!762 = !DILocation(line: 292, column: 31, scope: !758)
!763 = !DILocation(line: 292, column: 4, scope: !758)
!764 = !DILocation(line: 292, column: 8, scope: !758)
!765 = !DILocation(line: 292, column: 3, scope: !758)
!766 = !DILocation(line: 293, column: 1, scope: !752)
!767 = distinct !DISubprogram(name: "dwxgmac2_set_sec_addr", scope: !3, file: !3, line: 295, type: !255, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!768 = !DILocalVariable(name: "p", arg: 1, scope: !767, file: !3, line: 295, type: !34)
!769 = !DILocation(line: 295, column: 52, scope: !767)
!770 = !DILocalVariable(name: "addr", arg: 2, scope: !767, file: !3, line: 295, type: !257)
!771 = !DILocation(line: 295, column: 66, scope: !767)
!772 = !DILocation(line: 297, column: 12, scope: !767)
!773 = !DILocation(line: 297, column: 2, scope: !767)
!774 = !DILocation(line: 297, column: 5, scope: !767)
!775 = !DILocation(line: 297, column: 10, scope: !767)
!776 = !DILocation(line: 298, column: 12, scope: !767)
!777 = !DILocation(line: 298, column: 2, scope: !767)
!778 = !DILocation(line: 298, column: 5, scope: !767)
!779 = !DILocation(line: 298, column: 10, scope: !767)
!780 = !DILocation(line: 299, column: 1, scope: !767)
!781 = distinct !DISubprogram(name: "dwxgmac2_set_sarc", scope: !3, file: !3, line: 301, type: !269, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!782 = !DILocalVariable(name: "p", arg: 1, scope: !781, file: !3, line: 301, type: !34)
!783 = !DILocation(line: 301, column: 48, scope: !781)
!784 = !DILocalVariable(name: "sarc_type", arg: 2, scope: !781, file: !3, line: 301, type: !42)
!785 = !DILocation(line: 301, column: 55, scope: !781)
!786 = !DILocation(line: 303, column: 12, scope: !781)
!787 = !DILocation(line: 305, column: 13, scope: !781)
!788 = !DILocation(line: 305, column: 2, scope: !781)
!789 = !DILocation(line: 305, column: 5, scope: !781)
!790 = !DILocation(line: 305, column: 10, scope: !781)
!791 = !DILocation(line: 306, column: 1, scope: !781)
!792 = distinct !DISubprogram(name: "dwxgmac2_set_vlan_tag", scope: !3, file: !3, line: 308, type: !273, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!793 = !DILocalVariable(name: "p", arg: 1, scope: !792, file: !3, line: 308, type: !34)
!794 = !DILocation(line: 308, column: 52, scope: !792)
!795 = !DILocalVariable(name: "tag", arg: 2, scope: !792, file: !3, line: 308, type: !275)
!796 = !DILocation(line: 308, column: 59, scope: !792)
!797 = !DILocalVariable(name: "inner_tag", arg: 3, scope: !792, file: !3, line: 308, type: !275)
!798 = !DILocation(line: 308, column: 68, scope: !792)
!799 = !DILocalVariable(name: "inner_type", arg: 4, scope: !792, file: !3, line: 309, type: !42)
!800 = !DILocation(line: 309, column: 11, scope: !792)
!801 = !DILocation(line: 311, column: 2, scope: !792)
!802 = !DILocation(line: 311, column: 5, scope: !792)
!803 = !DILocation(line: 311, column: 10, scope: !792)
!804 = !DILocation(line: 312, column: 2, scope: !792)
!805 = !DILocation(line: 312, column: 5, scope: !792)
!806 = !DILocation(line: 312, column: 10, scope: !792)
!807 = !DILocation(line: 313, column: 2, scope: !792)
!808 = !DILocation(line: 313, column: 5, scope: !792)
!809 = !DILocation(line: 313, column: 10, scope: !792)
!810 = !DILocation(line: 314, column: 2, scope: !792)
!811 = !DILocation(line: 314, column: 5, scope: !792)
!812 = !DILocation(line: 314, column: 10, scope: !792)
!813 = !DILocation(line: 317, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !792, file: !3, line: 317, column: 6)
!815 = !DILocation(line: 317, column: 6, scope: !792)
!816 = !DILocalVariable(name: "des", scope: !817, file: !3, line: 318, type: !42)
!817 = distinct !DILexicalBlock(scope: !814, file: !3, line: 317, column: 18)
!818 = !DILocation(line: 318, column: 7, scope: !817)
!819 = !DILocation(line: 318, column: 13, scope: !817)
!820 = !DILocation(line: 318, column: 23, scope: !817)
!821 = !DILocation(line: 320, column: 7, scope: !817)
!822 = !DILocation(line: 321, column: 13, scope: !817)
!823 = !DILocation(line: 321, column: 3, scope: !817)
!824 = !DILocation(line: 321, column: 6, scope: !817)
!825 = !DILocation(line: 321, column: 11, scope: !817)
!826 = !DILocation(line: 323, column: 9, scope: !817)
!827 = !DILocation(line: 323, column: 20, scope: !817)
!828 = !DILocation(line: 323, column: 7, scope: !817)
!829 = !DILocation(line: 324, column: 7, scope: !817)
!830 = !DILocation(line: 325, column: 13, scope: !817)
!831 = !DILocation(line: 325, column: 3, scope: !817)
!832 = !DILocation(line: 325, column: 6, scope: !817)
!833 = !DILocation(line: 325, column: 11, scope: !817)
!834 = !DILocation(line: 326, column: 2, scope: !817)
!835 = !DILocation(line: 329, column: 13, scope: !792)
!836 = !DILocation(line: 329, column: 2, scope: !792)
!837 = !DILocation(line: 329, column: 5, scope: !792)
!838 = !DILocation(line: 329, column: 10, scope: !792)
!839 = !DILocation(line: 330, column: 2, scope: !792)
!840 = !DILocation(line: 330, column: 5, scope: !792)
!841 = !DILocation(line: 330, column: 10, scope: !792)
!842 = !DILocation(line: 332, column: 2, scope: !792)
!843 = !DILocation(line: 332, column: 5, scope: !792)
!844 = !DILocation(line: 332, column: 10, scope: !792)
!845 = !DILocation(line: 333, column: 1, scope: !792)
!846 = distinct !DISubprogram(name: "dwxgmac2_set_vlan", scope: !3, file: !3, line: 335, type: !269, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!847 = !DILocalVariable(name: "p", arg: 1, scope: !846, file: !3, line: 335, type: !34)
!848 = !DILocation(line: 335, column: 48, scope: !846)
!849 = !DILocalVariable(name: "type", arg: 2, scope: !846, file: !3, line: 335, type: !42)
!850 = !DILocation(line: 335, column: 55, scope: !846)
!851 = !DILocation(line: 337, column: 7, scope: !846)
!852 = !DILocation(line: 338, column: 13, scope: !846)
!853 = !DILocation(line: 338, column: 2, scope: !846)
!854 = !DILocation(line: 338, column: 5, scope: !846)
!855 = !DILocation(line: 338, column: 10, scope: !846)
!856 = !DILocation(line: 339, column: 1, scope: !846)
!857 = distinct !DISubprogram(name: "dwxgmac2_set_tbs", scope: !3, file: !3, line: 341, type: !281, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!858 = !DILocalVariable(name: "p", arg: 1, scope: !857, file: !3, line: 341, type: !283)
!859 = !DILocation(line: 341, column: 48, scope: !857)
!860 = !DILocalVariable(name: "sec", arg: 2, scope: !857, file: !3, line: 341, type: !42)
!861 = !DILocation(line: 341, column: 55, scope: !857)
!862 = !DILocalVariable(name: "nsec", arg: 3, scope: !857, file: !3, line: 341, type: !42)
!863 = !DILocation(line: 341, column: 64, scope: !857)
!864 = !DILocation(line: 343, column: 12, scope: !857)
!865 = !DILocation(line: 343, column: 2, scope: !857)
!866 = !DILocation(line: 343, column: 5, scope: !857)
!867 = !DILocation(line: 343, column: 10, scope: !857)
!868 = !DILocation(line: 344, column: 12, scope: !857)
!869 = !DILocation(line: 344, column: 2, scope: !857)
!870 = !DILocation(line: 344, column: 5, scope: !857)
!871 = !DILocation(line: 344, column: 10, scope: !857)
!872 = !DILocation(line: 345, column: 2, scope: !857)
!873 = !DILocation(line: 345, column: 5, scope: !857)
!874 = !DILocation(line: 345, column: 10, scope: !857)
!875 = !DILocation(line: 346, column: 2, scope: !857)
!876 = !DILocation(line: 346, column: 5, scope: !857)
!877 = !DILocation(line: 346, column: 10, scope: !857)
!878 = !DILocation(line: 347, column: 1, scope: !857)
!879 = distinct !DISubprogram(name: "dwxgmac2_rx_check_timestamp", scope: !3, file: !3, line: 96, type: !880, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!880 = !DISubroutineType(types: !881)
!881 = !{!33, !86}
!882 = !DILocalVariable(name: "desc", arg: 1, scope: !879, file: !3, line: 96, type: !86)
!883 = !DILocation(line: 96, column: 46, scope: !879)
!884 = !DILocalVariable(name: "p", scope: !879, file: !3, line: 98, type: !34)
!885 = !DILocation(line: 98, column: 19, scope: !879)
!886 = !DILocation(line: 98, column: 42, scope: !879)
!887 = !DILocation(line: 98, column: 23, scope: !879)
!888 = !DILocalVariable(name: "rdes3", scope: !879, file: !3, line: 99, type: !7)
!889 = !DILocation(line: 99, column: 15, scope: !879)
!890 = !DILocation(line: 99, column: 23, scope: !879)
!891 = !DILocalVariable(name: "desc_valid", scope: !879, file: !3, line: 100, type: !61)
!892 = !DILocation(line: 100, column: 7, scope: !879)
!893 = !DILocalVariable(name: "ts_valid", scope: !879, file: !3, line: 100, type: !61)
!894 = !DILocation(line: 100, column: 19, scope: !879)
!895 = !DILocation(line: 102, column: 2, scope: !879)
!896 = !{i32 -2139777301}
!897 = !DILocation(line: 104, column: 17, scope: !879)
!898 = !DILocation(line: 104, column: 23, scope: !879)
!899 = !DILocation(line: 104, column: 42, scope: !879)
!900 = !DILocation(line: 104, column: 46, scope: !879)
!901 = !DILocation(line: 104, column: 52, scope: !879)
!902 = !DILocation(line: 0, scope: !879)
!903 = !DILocation(line: 104, column: 13, scope: !879)
!904 = !DILocation(line: 105, column: 15, scope: !879)
!905 = !DILocation(line: 105, column: 21, scope: !879)
!906 = !DILocation(line: 105, column: 40, scope: !879)
!907 = !DILocation(line: 105, column: 44, scope: !879)
!908 = !DILocation(line: 105, column: 50, scope: !879)
!909 = !DILocation(line: 105, column: 11, scope: !879)
!910 = !DILocation(line: 107, column: 6, scope: !911)
!911 = distinct !DILexicalBlock(scope: !879, file: !3, line: 107, column: 6)
!912 = !DILocation(line: 0, scope: !911)
!913 = !DILocation(line: 107, column: 6, scope: !879)
!914 = !DILocation(line: 108, column: 8, scope: !915)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 108, column: 7)
!916 = distinct !DILexicalBlock(scope: !911, file: !3, line: 107, column: 38)
!917 = !DILocation(line: 108, column: 11, scope: !915)
!918 = !DILocation(line: 108, column: 16, scope: !915)
!919 = !DILocation(line: 108, column: 31, scope: !915)
!920 = !DILocation(line: 108, column: 35, scope: !915)
!921 = !DILocation(line: 108, column: 38, scope: !915)
!922 = !DILocation(line: 108, column: 43, scope: !915)
!923 = !DILocation(line: 108, column: 7, scope: !916)
!924 = !DILocation(line: 109, column: 4, scope: !915)
!925 = !DILocation(line: 110, column: 3, scope: !916)
!926 = !DILocation(line: 113, column: 2, scope: !879)
!927 = !DILocation(line: 114, column: 1, scope: !879)
