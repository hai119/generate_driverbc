; ModuleID = '../bcout/drivers/net/ethernet/stmicro/stmmac/mmc_core.llvm.bc'
source_filename = "drivers/net/ethernet/stmicro/stmmac/mmc_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.stmmac_mmc_ops = type { void (i8*, i32)*, void (i8*)*, void (i8*, %struct.stmmac_counters*)* }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dwmac_mmc_ops = dso_local constant %struct.stmmac_mmc_ops { void (i8*, i32)* @dwmac_mmc_ctrl, void (i8*)* @dwmac_mmc_intr_all_mask, void (i8*, %struct.stmmac_counters*)* @dwmac_mmc_read }, align 8, !dbg !0
@dwxgmac_mmc_ops = dso_local constant %struct.stmmac_mmc_ops { void (i8*, i32)* @dwxgmac_mmc_ctrl, void (i8*)* @dwxgmac_mmc_intr_all_mask, void (i8*, %struct.stmmac_counters*)* @dwxgmac_mmc_read }, align 8, !dbg !16

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac_mmc_ctrl(i8* %mmcaddr, i32 %mode) #0 !dbg !129 {
entry:
  %mmcaddr.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %value = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %mmcaddr, i8** %mmcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mmcaddr.addr, metadata !130, metadata !DIExpression()), !dbg !131
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %value, metadata !134, metadata !DIExpression()), !dbg !137
  %0 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !138
  %add.ptr = getelementptr i8, i8* %0, i64 0, !dbg !139
  %call = call i32 @readl(i8* %add.ptr) #2, !dbg !140
  store i32 %call, i32* %value, align 4, !dbg !137
  %1 = load i32, i32* %mode.addr, align 4, !dbg !141
  %and = and i32 %1, 63, !dbg !142
  %2 = load i32, i32* %value, align 4, !dbg !143
  %or = or i32 %2, %and, !dbg !143
  store i32 %or, i32* %value, align 4, !dbg !143
  %3 = load i32, i32* %value, align 4, !dbg !144
  %4 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !145
  %add.ptr1 = getelementptr i8, i8* %4, i64 0, !dbg !146
  call void @writel(i32 %3, i8* %add.ptr1) #2, !dbg !147
  store i32 0, i32* %tmp, align 4, !dbg !148
  %5 = load i32, i32* %tmp, align 4, !dbg !151
  ret void, !dbg !152
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac_mmc_intr_all_mask(i8* %mmcaddr) #0 !dbg !153 {
entry:
  %mmcaddr.addr = alloca i8*, align 8
  store i8* %mmcaddr, i8** %mmcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mmcaddr.addr, metadata !154, metadata !DIExpression()), !dbg !155
  %0 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !156
  %add.ptr = getelementptr i8, i8* %0, i64 12, !dbg !157
  call void @writel(i32 -1, i8* %add.ptr) #2, !dbg !158
  %1 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !159
  %add.ptr1 = getelementptr i8, i8* %1, i64 16, !dbg !160
  call void @writel(i32 -1, i8* %add.ptr1) #2, !dbg !161
  %2 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !162
  %add.ptr2 = getelementptr i8, i8* %2, i64 256, !dbg !163
  call void @writel(i32 -1, i8* %add.ptr2) #2, !dbg !164
  ret void, !dbg !165
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwmac_mmc_read(i8* %mmcaddr, %struct.stmmac_counters* %mmc) #0 !dbg !166 {
entry:
  %mmcaddr.addr = alloca i8*, align 8
  %mmc.addr = alloca %struct.stmmac_counters*, align 8
  store i8* %mmcaddr, i8** %mmcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mmcaddr.addr, metadata !167, metadata !DIExpression()), !dbg !168
  store %struct.stmmac_counters* %mmc, %struct.stmmac_counters** %mmc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_counters** %mmc.addr, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !171
  %add.ptr = getelementptr i8, i8* %0, i64 20, !dbg !172
  %call = call i32 @readl(i8* %add.ptr) #2, !dbg !173
  %1 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !174
  %mmc_tx_octetcount_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %1, i32 0, i32 0, !dbg !175
  %2 = load i32, i32* %mmc_tx_octetcount_gb, align 4, !dbg !176
  %add = add i32 %2, %call, !dbg !176
  store i32 %add, i32* %mmc_tx_octetcount_gb, align 4, !dbg !176
  %3 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !177
  %add.ptr1 = getelementptr i8, i8* %3, i64 24, !dbg !178
  %call2 = call i32 @readl(i8* %add.ptr1) #2, !dbg !179
  %4 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !180
  %mmc_tx_framecount_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %4, i32 0, i32 1, !dbg !181
  %5 = load i32, i32* %mmc_tx_framecount_gb, align 4, !dbg !182
  %add3 = add i32 %5, %call2, !dbg !182
  store i32 %add3, i32* %mmc_tx_framecount_gb, align 4, !dbg !182
  %6 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !183
  %add.ptr4 = getelementptr i8, i8* %6, i64 28, !dbg !184
  %call5 = call i32 @readl(i8* %add.ptr4) #2, !dbg !185
  %7 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !186
  %mmc_tx_broadcastframe_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %7, i32 0, i32 2, !dbg !187
  %8 = load i32, i32* %mmc_tx_broadcastframe_g, align 4, !dbg !188
  %add6 = add i32 %8, %call5, !dbg !188
  store i32 %add6, i32* %mmc_tx_broadcastframe_g, align 4, !dbg !188
  %9 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !189
  %add.ptr7 = getelementptr i8, i8* %9, i64 32, !dbg !190
  %call8 = call i32 @readl(i8* %add.ptr7) #2, !dbg !191
  %10 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !192
  %mmc_tx_multicastframe_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %10, i32 0, i32 3, !dbg !193
  %11 = load i32, i32* %mmc_tx_multicastframe_g, align 4, !dbg !194
  %add9 = add i32 %11, %call8, !dbg !194
  store i32 %add9, i32* %mmc_tx_multicastframe_g, align 4, !dbg !194
  %12 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !195
  %add.ptr10 = getelementptr i8, i8* %12, i64 36, !dbg !196
  %call11 = call i32 @readl(i8* %add.ptr10) #2, !dbg !197
  %13 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !198
  %mmc_tx_64_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %13, i32 0, i32 4, !dbg !199
  %14 = load i32, i32* %mmc_tx_64_octets_gb, align 4, !dbg !200
  %add12 = add i32 %14, %call11, !dbg !200
  store i32 %add12, i32* %mmc_tx_64_octets_gb, align 4, !dbg !200
  %15 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !201
  %add.ptr13 = getelementptr i8, i8* %15, i64 40, !dbg !202
  %call14 = call i32 @readl(i8* %add.ptr13) #2, !dbg !203
  %16 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !204
  %mmc_tx_65_to_127_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %16, i32 0, i32 5, !dbg !205
  %17 = load i32, i32* %mmc_tx_65_to_127_octets_gb, align 4, !dbg !206
  %add15 = add i32 %17, %call14, !dbg !206
  store i32 %add15, i32* %mmc_tx_65_to_127_octets_gb, align 4, !dbg !206
  %18 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !207
  %add.ptr16 = getelementptr i8, i8* %18, i64 44, !dbg !208
  %call17 = call i32 @readl(i8* %add.ptr16) #2, !dbg !209
  %19 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !210
  %mmc_tx_128_to_255_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %19, i32 0, i32 6, !dbg !211
  %20 = load i32, i32* %mmc_tx_128_to_255_octets_gb, align 4, !dbg !212
  %add18 = add i32 %20, %call17, !dbg !212
  store i32 %add18, i32* %mmc_tx_128_to_255_octets_gb, align 4, !dbg !212
  %21 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !213
  %add.ptr19 = getelementptr i8, i8* %21, i64 48, !dbg !214
  %call20 = call i32 @readl(i8* %add.ptr19) #2, !dbg !215
  %22 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !216
  %mmc_tx_256_to_511_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %22, i32 0, i32 7, !dbg !217
  %23 = load i32, i32* %mmc_tx_256_to_511_octets_gb, align 4, !dbg !218
  %add21 = add i32 %23, %call20, !dbg !218
  store i32 %add21, i32* %mmc_tx_256_to_511_octets_gb, align 4, !dbg !218
  %24 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !219
  %add.ptr22 = getelementptr i8, i8* %24, i64 52, !dbg !220
  %call23 = call i32 @readl(i8* %add.ptr22) #2, !dbg !221
  %25 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !222
  %mmc_tx_512_to_1023_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %25, i32 0, i32 8, !dbg !223
  %26 = load i32, i32* %mmc_tx_512_to_1023_octets_gb, align 4, !dbg !224
  %add24 = add i32 %26, %call23, !dbg !224
  store i32 %add24, i32* %mmc_tx_512_to_1023_octets_gb, align 4, !dbg !224
  %27 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !225
  %add.ptr25 = getelementptr i8, i8* %27, i64 56, !dbg !226
  %call26 = call i32 @readl(i8* %add.ptr25) #2, !dbg !227
  %28 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !228
  %mmc_tx_1024_to_max_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %28, i32 0, i32 9, !dbg !229
  %29 = load i32, i32* %mmc_tx_1024_to_max_octets_gb, align 4, !dbg !230
  %add27 = add i32 %29, %call26, !dbg !230
  store i32 %add27, i32* %mmc_tx_1024_to_max_octets_gb, align 4, !dbg !230
  %30 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !231
  %add.ptr28 = getelementptr i8, i8* %30, i64 60, !dbg !232
  %call29 = call i32 @readl(i8* %add.ptr28) #2, !dbg !233
  %31 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !234
  %mmc_tx_unicast_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %31, i32 0, i32 10, !dbg !235
  %32 = load i32, i32* %mmc_tx_unicast_gb, align 4, !dbg !236
  %add30 = add i32 %32, %call29, !dbg !236
  store i32 %add30, i32* %mmc_tx_unicast_gb, align 4, !dbg !236
  %33 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !237
  %add.ptr31 = getelementptr i8, i8* %33, i64 64, !dbg !238
  %call32 = call i32 @readl(i8* %add.ptr31) #2, !dbg !239
  %34 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !240
  %mmc_tx_multicast_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %34, i32 0, i32 11, !dbg !241
  %35 = load i32, i32* %mmc_tx_multicast_gb, align 4, !dbg !242
  %add33 = add i32 %35, %call32, !dbg !242
  store i32 %add33, i32* %mmc_tx_multicast_gb, align 4, !dbg !242
  %36 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !243
  %add.ptr34 = getelementptr i8, i8* %36, i64 68, !dbg !244
  %call35 = call i32 @readl(i8* %add.ptr34) #2, !dbg !245
  %37 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !246
  %mmc_tx_broadcast_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %37, i32 0, i32 12, !dbg !247
  %38 = load i32, i32* %mmc_tx_broadcast_gb, align 4, !dbg !248
  %add36 = add i32 %38, %call35, !dbg !248
  store i32 %add36, i32* %mmc_tx_broadcast_gb, align 4, !dbg !248
  %39 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !249
  %add.ptr37 = getelementptr i8, i8* %39, i64 72, !dbg !250
  %call38 = call i32 @readl(i8* %add.ptr37) #2, !dbg !251
  %40 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !252
  %mmc_tx_underflow_error = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %40, i32 0, i32 13, !dbg !253
  %41 = load i32, i32* %mmc_tx_underflow_error, align 4, !dbg !254
  %add39 = add i32 %41, %call38, !dbg !254
  store i32 %add39, i32* %mmc_tx_underflow_error, align 4, !dbg !254
  %42 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !255
  %add.ptr40 = getelementptr i8, i8* %42, i64 76, !dbg !256
  %call41 = call i32 @readl(i8* %add.ptr40) #2, !dbg !257
  %43 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !258
  %mmc_tx_singlecol_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %43, i32 0, i32 14, !dbg !259
  %44 = load i32, i32* %mmc_tx_singlecol_g, align 4, !dbg !260
  %add42 = add i32 %44, %call41, !dbg !260
  store i32 %add42, i32* %mmc_tx_singlecol_g, align 4, !dbg !260
  %45 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !261
  %add.ptr43 = getelementptr i8, i8* %45, i64 80, !dbg !262
  %call44 = call i32 @readl(i8* %add.ptr43) #2, !dbg !263
  %46 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !264
  %mmc_tx_multicol_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %46, i32 0, i32 15, !dbg !265
  %47 = load i32, i32* %mmc_tx_multicol_g, align 4, !dbg !266
  %add45 = add i32 %47, %call44, !dbg !266
  store i32 %add45, i32* %mmc_tx_multicol_g, align 4, !dbg !266
  %48 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !267
  %add.ptr46 = getelementptr i8, i8* %48, i64 84, !dbg !268
  %call47 = call i32 @readl(i8* %add.ptr46) #2, !dbg !269
  %49 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !270
  %mmc_tx_deferred = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %49, i32 0, i32 16, !dbg !271
  %50 = load i32, i32* %mmc_tx_deferred, align 4, !dbg !272
  %add48 = add i32 %50, %call47, !dbg !272
  store i32 %add48, i32* %mmc_tx_deferred, align 4, !dbg !272
  %51 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !273
  %add.ptr49 = getelementptr i8, i8* %51, i64 88, !dbg !274
  %call50 = call i32 @readl(i8* %add.ptr49) #2, !dbg !275
  %52 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !276
  %mmc_tx_latecol = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %52, i32 0, i32 17, !dbg !277
  %53 = load i32, i32* %mmc_tx_latecol, align 4, !dbg !278
  %add51 = add i32 %53, %call50, !dbg !278
  store i32 %add51, i32* %mmc_tx_latecol, align 4, !dbg !278
  %54 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !279
  %add.ptr52 = getelementptr i8, i8* %54, i64 92, !dbg !280
  %call53 = call i32 @readl(i8* %add.ptr52) #2, !dbg !281
  %55 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !282
  %mmc_tx_exesscol = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %55, i32 0, i32 18, !dbg !283
  %56 = load i32, i32* %mmc_tx_exesscol, align 4, !dbg !284
  %add54 = add i32 %56, %call53, !dbg !284
  store i32 %add54, i32* %mmc_tx_exesscol, align 4, !dbg !284
  %57 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !285
  %add.ptr55 = getelementptr i8, i8* %57, i64 96, !dbg !286
  %call56 = call i32 @readl(i8* %add.ptr55) #2, !dbg !287
  %58 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !288
  %mmc_tx_carrier_error = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %58, i32 0, i32 19, !dbg !289
  %59 = load i32, i32* %mmc_tx_carrier_error, align 4, !dbg !290
  %add57 = add i32 %59, %call56, !dbg !290
  store i32 %add57, i32* %mmc_tx_carrier_error, align 4, !dbg !290
  %60 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !291
  %add.ptr58 = getelementptr i8, i8* %60, i64 100, !dbg !292
  %call59 = call i32 @readl(i8* %add.ptr58) #2, !dbg !293
  %61 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !294
  %mmc_tx_octetcount_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %61, i32 0, i32 20, !dbg !295
  %62 = load i32, i32* %mmc_tx_octetcount_g, align 4, !dbg !296
  %add60 = add i32 %62, %call59, !dbg !296
  store i32 %add60, i32* %mmc_tx_octetcount_g, align 4, !dbg !296
  %63 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !297
  %add.ptr61 = getelementptr i8, i8* %63, i64 104, !dbg !298
  %call62 = call i32 @readl(i8* %add.ptr61) #2, !dbg !299
  %64 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !300
  %mmc_tx_framecount_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %64, i32 0, i32 21, !dbg !301
  %65 = load i32, i32* %mmc_tx_framecount_g, align 4, !dbg !302
  %add63 = add i32 %65, %call62, !dbg !302
  store i32 %add63, i32* %mmc_tx_framecount_g, align 4, !dbg !302
  %66 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !303
  %add.ptr64 = getelementptr i8, i8* %66, i64 108, !dbg !304
  %call65 = call i32 @readl(i8* %add.ptr64) #2, !dbg !305
  %67 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !306
  %mmc_tx_excessdef = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %67, i32 0, i32 22, !dbg !307
  %68 = load i32, i32* %mmc_tx_excessdef, align 4, !dbg !308
  %add66 = add i32 %68, %call65, !dbg !308
  store i32 %add66, i32* %mmc_tx_excessdef, align 4, !dbg !308
  %69 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !309
  %add.ptr67 = getelementptr i8, i8* %69, i64 112, !dbg !310
  %call68 = call i32 @readl(i8* %add.ptr67) #2, !dbg !311
  %70 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !312
  %mmc_tx_pause_frame = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %70, i32 0, i32 23, !dbg !313
  %71 = load i32, i32* %mmc_tx_pause_frame, align 4, !dbg !314
  %add69 = add i32 %71, %call68, !dbg !314
  store i32 %add69, i32* %mmc_tx_pause_frame, align 4, !dbg !314
  %72 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !315
  %add.ptr70 = getelementptr i8, i8* %72, i64 116, !dbg !316
  %call71 = call i32 @readl(i8* %add.ptr70) #2, !dbg !317
  %73 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !318
  %mmc_tx_vlan_frame_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %73, i32 0, i32 24, !dbg !319
  %74 = load i32, i32* %mmc_tx_vlan_frame_g, align 4, !dbg !320
  %add72 = add i32 %74, %call71, !dbg !320
  store i32 %add72, i32* %mmc_tx_vlan_frame_g, align 4, !dbg !320
  %75 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !321
  %add.ptr73 = getelementptr i8, i8* %75, i64 128, !dbg !322
  %call74 = call i32 @readl(i8* %add.ptr73) #2, !dbg !323
  %76 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !324
  %mmc_rx_framecount_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %76, i32 0, i32 25, !dbg !325
  %77 = load i32, i32* %mmc_rx_framecount_gb, align 4, !dbg !326
  %add75 = add i32 %77, %call74, !dbg !326
  store i32 %add75, i32* %mmc_rx_framecount_gb, align 4, !dbg !326
  %78 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !327
  %add.ptr76 = getelementptr i8, i8* %78, i64 132, !dbg !328
  %call77 = call i32 @readl(i8* %add.ptr76) #2, !dbg !329
  %79 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !330
  %mmc_rx_octetcount_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %79, i32 0, i32 26, !dbg !331
  %80 = load i32, i32* %mmc_rx_octetcount_gb, align 4, !dbg !332
  %add78 = add i32 %80, %call77, !dbg !332
  store i32 %add78, i32* %mmc_rx_octetcount_gb, align 4, !dbg !332
  %81 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !333
  %add.ptr79 = getelementptr i8, i8* %81, i64 136, !dbg !334
  %call80 = call i32 @readl(i8* %add.ptr79) #2, !dbg !335
  %82 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !336
  %mmc_rx_octetcount_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %82, i32 0, i32 27, !dbg !337
  %83 = load i32, i32* %mmc_rx_octetcount_g, align 4, !dbg !338
  %add81 = add i32 %83, %call80, !dbg !338
  store i32 %add81, i32* %mmc_rx_octetcount_g, align 4, !dbg !338
  %84 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !339
  %add.ptr82 = getelementptr i8, i8* %84, i64 140, !dbg !340
  %call83 = call i32 @readl(i8* %add.ptr82) #2, !dbg !341
  %85 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !342
  %mmc_rx_broadcastframe_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %85, i32 0, i32 28, !dbg !343
  %86 = load i32, i32* %mmc_rx_broadcastframe_g, align 4, !dbg !344
  %add84 = add i32 %86, %call83, !dbg !344
  store i32 %add84, i32* %mmc_rx_broadcastframe_g, align 4, !dbg !344
  %87 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !345
  %add.ptr85 = getelementptr i8, i8* %87, i64 144, !dbg !346
  %call86 = call i32 @readl(i8* %add.ptr85) #2, !dbg !347
  %88 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !348
  %mmc_rx_multicastframe_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %88, i32 0, i32 29, !dbg !349
  %89 = load i32, i32* %mmc_rx_multicastframe_g, align 4, !dbg !350
  %add87 = add i32 %89, %call86, !dbg !350
  store i32 %add87, i32* %mmc_rx_multicastframe_g, align 4, !dbg !350
  %90 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !351
  %add.ptr88 = getelementptr i8, i8* %90, i64 148, !dbg !352
  %call89 = call i32 @readl(i8* %add.ptr88) #2, !dbg !353
  %91 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !354
  %mmc_rx_crc_error = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %91, i32 0, i32 30, !dbg !355
  %92 = load i32, i32* %mmc_rx_crc_error, align 4, !dbg !356
  %add90 = add i32 %92, %call89, !dbg !356
  store i32 %add90, i32* %mmc_rx_crc_error, align 4, !dbg !356
  %93 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !357
  %add.ptr91 = getelementptr i8, i8* %93, i64 152, !dbg !358
  %call92 = call i32 @readl(i8* %add.ptr91) #2, !dbg !359
  %94 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !360
  %mmc_rx_align_error = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %94, i32 0, i32 31, !dbg !361
  %95 = load i32, i32* %mmc_rx_align_error, align 4, !dbg !362
  %add93 = add i32 %95, %call92, !dbg !362
  store i32 %add93, i32* %mmc_rx_align_error, align 4, !dbg !362
  %96 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !363
  %add.ptr94 = getelementptr i8, i8* %96, i64 156, !dbg !364
  %call95 = call i32 @readl(i8* %add.ptr94) #2, !dbg !365
  %97 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !366
  %mmc_rx_run_error = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %97, i32 0, i32 32, !dbg !367
  %98 = load i32, i32* %mmc_rx_run_error, align 4, !dbg !368
  %add96 = add i32 %98, %call95, !dbg !368
  store i32 %add96, i32* %mmc_rx_run_error, align 4, !dbg !368
  %99 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !369
  %add.ptr97 = getelementptr i8, i8* %99, i64 160, !dbg !370
  %call98 = call i32 @readl(i8* %add.ptr97) #2, !dbg !371
  %100 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !372
  %mmc_rx_jabber_error = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %100, i32 0, i32 33, !dbg !373
  %101 = load i32, i32* %mmc_rx_jabber_error, align 4, !dbg !374
  %add99 = add i32 %101, %call98, !dbg !374
  store i32 %add99, i32* %mmc_rx_jabber_error, align 4, !dbg !374
  %102 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !375
  %add.ptr100 = getelementptr i8, i8* %102, i64 164, !dbg !376
  %call101 = call i32 @readl(i8* %add.ptr100) #2, !dbg !377
  %103 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !378
  %mmc_rx_undersize_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %103, i32 0, i32 34, !dbg !379
  %104 = load i32, i32* %mmc_rx_undersize_g, align 4, !dbg !380
  %add102 = add i32 %104, %call101, !dbg !380
  store i32 %add102, i32* %mmc_rx_undersize_g, align 4, !dbg !380
  %105 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !381
  %add.ptr103 = getelementptr i8, i8* %105, i64 168, !dbg !382
  %call104 = call i32 @readl(i8* %add.ptr103) #2, !dbg !383
  %106 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !384
  %mmc_rx_oversize_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %106, i32 0, i32 35, !dbg !385
  %107 = load i32, i32* %mmc_rx_oversize_g, align 4, !dbg !386
  %add105 = add i32 %107, %call104, !dbg !386
  store i32 %add105, i32* %mmc_rx_oversize_g, align 4, !dbg !386
  %108 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !387
  %add.ptr106 = getelementptr i8, i8* %108, i64 172, !dbg !388
  %call107 = call i32 @readl(i8* %add.ptr106) #2, !dbg !389
  %109 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !390
  %mmc_rx_64_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %109, i32 0, i32 36, !dbg !391
  %110 = load i32, i32* %mmc_rx_64_octets_gb, align 4, !dbg !392
  %add108 = add i32 %110, %call107, !dbg !392
  store i32 %add108, i32* %mmc_rx_64_octets_gb, align 4, !dbg !392
  %111 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !393
  %add.ptr109 = getelementptr i8, i8* %111, i64 176, !dbg !394
  %call110 = call i32 @readl(i8* %add.ptr109) #2, !dbg !395
  %112 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !396
  %mmc_rx_65_to_127_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %112, i32 0, i32 37, !dbg !397
  %113 = load i32, i32* %mmc_rx_65_to_127_octets_gb, align 4, !dbg !398
  %add111 = add i32 %113, %call110, !dbg !398
  store i32 %add111, i32* %mmc_rx_65_to_127_octets_gb, align 4, !dbg !398
  %114 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !399
  %add.ptr112 = getelementptr i8, i8* %114, i64 180, !dbg !400
  %call113 = call i32 @readl(i8* %add.ptr112) #2, !dbg !401
  %115 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !402
  %mmc_rx_128_to_255_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %115, i32 0, i32 38, !dbg !403
  %116 = load i32, i32* %mmc_rx_128_to_255_octets_gb, align 4, !dbg !404
  %add114 = add i32 %116, %call113, !dbg !404
  store i32 %add114, i32* %mmc_rx_128_to_255_octets_gb, align 4, !dbg !404
  %117 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !405
  %add.ptr115 = getelementptr i8, i8* %117, i64 184, !dbg !406
  %call116 = call i32 @readl(i8* %add.ptr115) #2, !dbg !407
  %118 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !408
  %mmc_rx_256_to_511_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %118, i32 0, i32 39, !dbg !409
  %119 = load i32, i32* %mmc_rx_256_to_511_octets_gb, align 4, !dbg !410
  %add117 = add i32 %119, %call116, !dbg !410
  store i32 %add117, i32* %mmc_rx_256_to_511_octets_gb, align 4, !dbg !410
  %120 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !411
  %add.ptr118 = getelementptr i8, i8* %120, i64 188, !dbg !412
  %call119 = call i32 @readl(i8* %add.ptr118) #2, !dbg !413
  %121 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !414
  %mmc_rx_512_to_1023_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %121, i32 0, i32 40, !dbg !415
  %122 = load i32, i32* %mmc_rx_512_to_1023_octets_gb, align 4, !dbg !416
  %add120 = add i32 %122, %call119, !dbg !416
  store i32 %add120, i32* %mmc_rx_512_to_1023_octets_gb, align 4, !dbg !416
  %123 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !417
  %add.ptr121 = getelementptr i8, i8* %123, i64 192, !dbg !418
  %call122 = call i32 @readl(i8* %add.ptr121) #2, !dbg !419
  %124 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !420
  %mmc_rx_1024_to_max_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %124, i32 0, i32 41, !dbg !421
  %125 = load i32, i32* %mmc_rx_1024_to_max_octets_gb, align 4, !dbg !422
  %add123 = add i32 %125, %call122, !dbg !422
  store i32 %add123, i32* %mmc_rx_1024_to_max_octets_gb, align 4, !dbg !422
  %126 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !423
  %add.ptr124 = getelementptr i8, i8* %126, i64 196, !dbg !424
  %call125 = call i32 @readl(i8* %add.ptr124) #2, !dbg !425
  %127 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !426
  %mmc_rx_unicast_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %127, i32 0, i32 42, !dbg !427
  %128 = load i32, i32* %mmc_rx_unicast_g, align 4, !dbg !428
  %add126 = add i32 %128, %call125, !dbg !428
  store i32 %add126, i32* %mmc_rx_unicast_g, align 4, !dbg !428
  %129 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !429
  %add.ptr127 = getelementptr i8, i8* %129, i64 200, !dbg !430
  %call128 = call i32 @readl(i8* %add.ptr127) #2, !dbg !431
  %130 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !432
  %mmc_rx_length_error = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %130, i32 0, i32 43, !dbg !433
  %131 = load i32, i32* %mmc_rx_length_error, align 4, !dbg !434
  %add129 = add i32 %131, %call128, !dbg !434
  store i32 %add129, i32* %mmc_rx_length_error, align 4, !dbg !434
  %132 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !435
  %add.ptr130 = getelementptr i8, i8* %132, i64 204, !dbg !436
  %call131 = call i32 @readl(i8* %add.ptr130) #2, !dbg !437
  %133 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !438
  %mmc_rx_autofrangetype = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %133, i32 0, i32 44, !dbg !439
  %134 = load i32, i32* %mmc_rx_autofrangetype, align 4, !dbg !440
  %add132 = add i32 %134, %call131, !dbg !440
  store i32 %add132, i32* %mmc_rx_autofrangetype, align 4, !dbg !440
  %135 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !441
  %add.ptr133 = getelementptr i8, i8* %135, i64 208, !dbg !442
  %call134 = call i32 @readl(i8* %add.ptr133) #2, !dbg !443
  %136 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !444
  %mmc_rx_pause_frames = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %136, i32 0, i32 45, !dbg !445
  %137 = load i32, i32* %mmc_rx_pause_frames, align 4, !dbg !446
  %add135 = add i32 %137, %call134, !dbg !446
  store i32 %add135, i32* %mmc_rx_pause_frames, align 4, !dbg !446
  %138 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !447
  %add.ptr136 = getelementptr i8, i8* %138, i64 212, !dbg !448
  %call137 = call i32 @readl(i8* %add.ptr136) #2, !dbg !449
  %139 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !450
  %mmc_rx_fifo_overflow = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %139, i32 0, i32 46, !dbg !451
  %140 = load i32, i32* %mmc_rx_fifo_overflow, align 4, !dbg !452
  %add138 = add i32 %140, %call137, !dbg !452
  store i32 %add138, i32* %mmc_rx_fifo_overflow, align 4, !dbg !452
  %141 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !453
  %add.ptr139 = getelementptr i8, i8* %141, i64 216, !dbg !454
  %call140 = call i32 @readl(i8* %add.ptr139) #2, !dbg !455
  %142 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !456
  %mmc_rx_vlan_frames_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %142, i32 0, i32 47, !dbg !457
  %143 = load i32, i32* %mmc_rx_vlan_frames_gb, align 4, !dbg !458
  %add141 = add i32 %143, %call140, !dbg !458
  store i32 %add141, i32* %mmc_rx_vlan_frames_gb, align 4, !dbg !458
  %144 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !459
  %add.ptr142 = getelementptr i8, i8* %144, i64 220, !dbg !460
  %call143 = call i32 @readl(i8* %add.ptr142) #2, !dbg !461
  %145 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !462
  %mmc_rx_watchdog_error = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %145, i32 0, i32 48, !dbg !463
  %146 = load i32, i32* %mmc_rx_watchdog_error, align 4, !dbg !464
  %add144 = add i32 %146, %call143, !dbg !464
  store i32 %add144, i32* %mmc_rx_watchdog_error, align 4, !dbg !464
  %147 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !465
  %add.ptr145 = getelementptr i8, i8* %147, i64 256, !dbg !466
  %call146 = call i32 @readl(i8* %add.ptr145) #2, !dbg !467
  %148 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !468
  %mmc_rx_ipc_intr_mask = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %148, i32 0, i32 49, !dbg !469
  %149 = load i32, i32* %mmc_rx_ipc_intr_mask, align 4, !dbg !470
  %add147 = add i32 %149, %call146, !dbg !470
  store i32 %add147, i32* %mmc_rx_ipc_intr_mask, align 4, !dbg !470
  %150 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !471
  %add.ptr148 = getelementptr i8, i8* %150, i64 264, !dbg !472
  %call149 = call i32 @readl(i8* %add.ptr148) #2, !dbg !473
  %151 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !474
  %mmc_rx_ipc_intr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %151, i32 0, i32 50, !dbg !475
  %152 = load i32, i32* %mmc_rx_ipc_intr, align 4, !dbg !476
  %add150 = add i32 %152, %call149, !dbg !476
  store i32 %add150, i32* %mmc_rx_ipc_intr, align 4, !dbg !476
  %153 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !477
  %add.ptr151 = getelementptr i8, i8* %153, i64 272, !dbg !478
  %call152 = call i32 @readl(i8* %add.ptr151) #2, !dbg !479
  %154 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !480
  %mmc_rx_ipv4_gd = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %154, i32 0, i32 51, !dbg !481
  %155 = load i32, i32* %mmc_rx_ipv4_gd, align 4, !dbg !482
  %add153 = add i32 %155, %call152, !dbg !482
  store i32 %add153, i32* %mmc_rx_ipv4_gd, align 4, !dbg !482
  %156 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !483
  %add.ptr154 = getelementptr i8, i8* %156, i64 276, !dbg !484
  %call155 = call i32 @readl(i8* %add.ptr154) #2, !dbg !485
  %157 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !486
  %mmc_rx_ipv4_hderr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %157, i32 0, i32 52, !dbg !487
  %158 = load i32, i32* %mmc_rx_ipv4_hderr, align 4, !dbg !488
  %add156 = add i32 %158, %call155, !dbg !488
  store i32 %add156, i32* %mmc_rx_ipv4_hderr, align 4, !dbg !488
  %159 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !489
  %add.ptr157 = getelementptr i8, i8* %159, i64 280, !dbg !490
  %call158 = call i32 @readl(i8* %add.ptr157) #2, !dbg !491
  %160 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !492
  %mmc_rx_ipv4_nopay = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %160, i32 0, i32 53, !dbg !493
  %161 = load i32, i32* %mmc_rx_ipv4_nopay, align 4, !dbg !494
  %add159 = add i32 %161, %call158, !dbg !494
  store i32 %add159, i32* %mmc_rx_ipv4_nopay, align 4, !dbg !494
  %162 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !495
  %add.ptr160 = getelementptr i8, i8* %162, i64 284, !dbg !496
  %call161 = call i32 @readl(i8* %add.ptr160) #2, !dbg !497
  %163 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !498
  %mmc_rx_ipv4_frag = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %163, i32 0, i32 54, !dbg !499
  %164 = load i32, i32* %mmc_rx_ipv4_frag, align 4, !dbg !500
  %add162 = add i32 %164, %call161, !dbg !500
  store i32 %add162, i32* %mmc_rx_ipv4_frag, align 4, !dbg !500
  %165 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !501
  %add.ptr163 = getelementptr i8, i8* %165, i64 288, !dbg !502
  %call164 = call i32 @readl(i8* %add.ptr163) #2, !dbg !503
  %166 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !504
  %mmc_rx_ipv4_udsbl = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %166, i32 0, i32 55, !dbg !505
  %167 = load i32, i32* %mmc_rx_ipv4_udsbl, align 4, !dbg !506
  %add165 = add i32 %167, %call164, !dbg !506
  store i32 %add165, i32* %mmc_rx_ipv4_udsbl, align 4, !dbg !506
  %168 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !507
  %add.ptr166 = getelementptr i8, i8* %168, i64 336, !dbg !508
  %call167 = call i32 @readl(i8* %add.ptr166) #2, !dbg !509
  %169 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !510
  %mmc_rx_ipv4_gd_octets = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %169, i32 0, i32 56, !dbg !511
  %170 = load i32, i32* %mmc_rx_ipv4_gd_octets, align 4, !dbg !512
  %add168 = add i32 %170, %call167, !dbg !512
  store i32 %add168, i32* %mmc_rx_ipv4_gd_octets, align 4, !dbg !512
  %171 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !513
  %add.ptr169 = getelementptr i8, i8* %171, i64 340, !dbg !514
  %call170 = call i32 @readl(i8* %add.ptr169) #2, !dbg !515
  %172 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !516
  %mmc_rx_ipv4_hderr_octets = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %172, i32 0, i32 57, !dbg !517
  %173 = load i32, i32* %mmc_rx_ipv4_hderr_octets, align 4, !dbg !518
  %add171 = add i32 %173, %call170, !dbg !518
  store i32 %add171, i32* %mmc_rx_ipv4_hderr_octets, align 4, !dbg !518
  %174 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !519
  %add.ptr172 = getelementptr i8, i8* %174, i64 344, !dbg !520
  %call173 = call i32 @readl(i8* %add.ptr172) #2, !dbg !521
  %175 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !522
  %mmc_rx_ipv4_nopay_octets = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %175, i32 0, i32 58, !dbg !523
  %176 = load i32, i32* %mmc_rx_ipv4_nopay_octets, align 4, !dbg !524
  %add174 = add i32 %176, %call173, !dbg !524
  store i32 %add174, i32* %mmc_rx_ipv4_nopay_octets, align 4, !dbg !524
  %177 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !525
  %add.ptr175 = getelementptr i8, i8* %177, i64 348, !dbg !526
  %call176 = call i32 @readl(i8* %add.ptr175) #2, !dbg !527
  %178 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !528
  %mmc_rx_ipv4_frag_octets = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %178, i32 0, i32 59, !dbg !529
  %179 = load i32, i32* %mmc_rx_ipv4_frag_octets, align 4, !dbg !530
  %add177 = add i32 %179, %call176, !dbg !530
  store i32 %add177, i32* %mmc_rx_ipv4_frag_octets, align 4, !dbg !530
  %180 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !531
  %add.ptr178 = getelementptr i8, i8* %180, i64 352, !dbg !532
  %call179 = call i32 @readl(i8* %add.ptr178) #2, !dbg !533
  %181 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !534
  %mmc_rx_ipv4_udsbl_octets = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %181, i32 0, i32 60, !dbg !535
  %182 = load i32, i32* %mmc_rx_ipv4_udsbl_octets, align 4, !dbg !536
  %add180 = add i32 %182, %call179, !dbg !536
  store i32 %add180, i32* %mmc_rx_ipv4_udsbl_octets, align 4, !dbg !536
  %183 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !537
  %add.ptr181 = getelementptr i8, i8* %183, i64 356, !dbg !538
  %call182 = call i32 @readl(i8* %add.ptr181) #2, !dbg !539
  %184 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !540
  %mmc_rx_ipv6_gd_octets = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %184, i32 0, i32 61, !dbg !541
  %185 = load i32, i32* %mmc_rx_ipv6_gd_octets, align 4, !dbg !542
  %add183 = add i32 %185, %call182, !dbg !542
  store i32 %add183, i32* %mmc_rx_ipv6_gd_octets, align 4, !dbg !542
  %186 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !543
  %add.ptr184 = getelementptr i8, i8* %186, i64 360, !dbg !544
  %call185 = call i32 @readl(i8* %add.ptr184) #2, !dbg !545
  %187 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !546
  %mmc_rx_ipv6_hderr_octets = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %187, i32 0, i32 62, !dbg !547
  %188 = load i32, i32* %mmc_rx_ipv6_hderr_octets, align 4, !dbg !548
  %add186 = add i32 %188, %call185, !dbg !548
  store i32 %add186, i32* %mmc_rx_ipv6_hderr_octets, align 4, !dbg !548
  %189 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !549
  %add.ptr187 = getelementptr i8, i8* %189, i64 364, !dbg !550
  %call188 = call i32 @readl(i8* %add.ptr187) #2, !dbg !551
  %190 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !552
  %mmc_rx_ipv6_nopay_octets = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %190, i32 0, i32 63, !dbg !553
  %191 = load i32, i32* %mmc_rx_ipv6_nopay_octets, align 4, !dbg !554
  %add189 = add i32 %191, %call188, !dbg !554
  store i32 %add189, i32* %mmc_rx_ipv6_nopay_octets, align 4, !dbg !554
  %192 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !555
  %add.ptr190 = getelementptr i8, i8* %192, i64 292, !dbg !556
  %call191 = call i32 @readl(i8* %add.ptr190) #2, !dbg !557
  %193 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !558
  %mmc_rx_ipv6_gd = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %193, i32 0, i32 64, !dbg !559
  %194 = load i32, i32* %mmc_rx_ipv6_gd, align 4, !dbg !560
  %add192 = add i32 %194, %call191, !dbg !560
  store i32 %add192, i32* %mmc_rx_ipv6_gd, align 4, !dbg !560
  %195 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !561
  %add.ptr193 = getelementptr i8, i8* %195, i64 296, !dbg !562
  %call194 = call i32 @readl(i8* %add.ptr193) #2, !dbg !563
  %196 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !564
  %mmc_rx_ipv6_hderr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %196, i32 0, i32 65, !dbg !565
  %197 = load i32, i32* %mmc_rx_ipv6_hderr, align 4, !dbg !566
  %add195 = add i32 %197, %call194, !dbg !566
  store i32 %add195, i32* %mmc_rx_ipv6_hderr, align 4, !dbg !566
  %198 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !567
  %add.ptr196 = getelementptr i8, i8* %198, i64 300, !dbg !568
  %call197 = call i32 @readl(i8* %add.ptr196) #2, !dbg !569
  %199 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !570
  %mmc_rx_ipv6_nopay = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %199, i32 0, i32 66, !dbg !571
  %200 = load i32, i32* %mmc_rx_ipv6_nopay, align 4, !dbg !572
  %add198 = add i32 %200, %call197, !dbg !572
  store i32 %add198, i32* %mmc_rx_ipv6_nopay, align 4, !dbg !572
  %201 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !573
  %add.ptr199 = getelementptr i8, i8* %201, i64 304, !dbg !574
  %call200 = call i32 @readl(i8* %add.ptr199) #2, !dbg !575
  %202 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !576
  %mmc_rx_udp_gd = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %202, i32 0, i32 67, !dbg !577
  %203 = load i32, i32* %mmc_rx_udp_gd, align 4, !dbg !578
  %add201 = add i32 %203, %call200, !dbg !578
  store i32 %add201, i32* %mmc_rx_udp_gd, align 4, !dbg !578
  %204 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !579
  %add.ptr202 = getelementptr i8, i8* %204, i64 308, !dbg !580
  %call203 = call i32 @readl(i8* %add.ptr202) #2, !dbg !581
  %205 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !582
  %mmc_rx_udp_err = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %205, i32 0, i32 68, !dbg !583
  %206 = load i32, i32* %mmc_rx_udp_err, align 4, !dbg !584
  %add204 = add i32 %206, %call203, !dbg !584
  store i32 %add204, i32* %mmc_rx_udp_err, align 4, !dbg !584
  %207 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !585
  %add.ptr205 = getelementptr i8, i8* %207, i64 312, !dbg !586
  %call206 = call i32 @readl(i8* %add.ptr205) #2, !dbg !587
  %208 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !588
  %mmc_rx_tcp_gd = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %208, i32 0, i32 69, !dbg !589
  %209 = load i32, i32* %mmc_rx_tcp_gd, align 4, !dbg !590
  %add207 = add i32 %209, %call206, !dbg !590
  store i32 %add207, i32* %mmc_rx_tcp_gd, align 4, !dbg !590
  %210 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !591
  %add.ptr208 = getelementptr i8, i8* %210, i64 316, !dbg !592
  %call209 = call i32 @readl(i8* %add.ptr208) #2, !dbg !593
  %211 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !594
  %mmc_rx_tcp_err = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %211, i32 0, i32 70, !dbg !595
  %212 = load i32, i32* %mmc_rx_tcp_err, align 4, !dbg !596
  %add210 = add i32 %212, %call209, !dbg !596
  store i32 %add210, i32* %mmc_rx_tcp_err, align 4, !dbg !596
  %213 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !597
  %add.ptr211 = getelementptr i8, i8* %213, i64 320, !dbg !598
  %call212 = call i32 @readl(i8* %add.ptr211) #2, !dbg !599
  %214 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !600
  %mmc_rx_icmp_gd = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %214, i32 0, i32 71, !dbg !601
  %215 = load i32, i32* %mmc_rx_icmp_gd, align 4, !dbg !602
  %add213 = add i32 %215, %call212, !dbg !602
  store i32 %add213, i32* %mmc_rx_icmp_gd, align 4, !dbg !602
  %216 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !603
  %add.ptr214 = getelementptr i8, i8* %216, i64 324, !dbg !604
  %call215 = call i32 @readl(i8* %add.ptr214) #2, !dbg !605
  %217 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !606
  %mmc_rx_icmp_err = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %217, i32 0, i32 72, !dbg !607
  %218 = load i32, i32* %mmc_rx_icmp_err, align 4, !dbg !608
  %add216 = add i32 %218, %call215, !dbg !608
  store i32 %add216, i32* %mmc_rx_icmp_err, align 4, !dbg !608
  %219 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !609
  %add.ptr217 = getelementptr i8, i8* %219, i64 368, !dbg !610
  %call218 = call i32 @readl(i8* %add.ptr217) #2, !dbg !611
  %220 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !612
  %mmc_rx_udp_gd_octets = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %220, i32 0, i32 73, !dbg !613
  %221 = load i32, i32* %mmc_rx_udp_gd_octets, align 4, !dbg !614
  %add219 = add i32 %221, %call218, !dbg !614
  store i32 %add219, i32* %mmc_rx_udp_gd_octets, align 4, !dbg !614
  %222 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !615
  %add.ptr220 = getelementptr i8, i8* %222, i64 372, !dbg !616
  %call221 = call i32 @readl(i8* %add.ptr220) #2, !dbg !617
  %223 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !618
  %mmc_rx_udp_err_octets = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %223, i32 0, i32 74, !dbg !619
  %224 = load i32, i32* %mmc_rx_udp_err_octets, align 4, !dbg !620
  %add222 = add i32 %224, %call221, !dbg !620
  store i32 %add222, i32* %mmc_rx_udp_err_octets, align 4, !dbg !620
  %225 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !621
  %add.ptr223 = getelementptr i8, i8* %225, i64 376, !dbg !622
  %call224 = call i32 @readl(i8* %add.ptr223) #2, !dbg !623
  %226 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !624
  %mmc_rx_tcp_gd_octets = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %226, i32 0, i32 75, !dbg !625
  %227 = load i32, i32* %mmc_rx_tcp_gd_octets, align 4, !dbg !626
  %add225 = add i32 %227, %call224, !dbg !626
  store i32 %add225, i32* %mmc_rx_tcp_gd_octets, align 4, !dbg !626
  %228 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !627
  %add.ptr226 = getelementptr i8, i8* %228, i64 380, !dbg !628
  %call227 = call i32 @readl(i8* %add.ptr226) #2, !dbg !629
  %229 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !630
  %mmc_rx_tcp_err_octets = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %229, i32 0, i32 76, !dbg !631
  %230 = load i32, i32* %mmc_rx_tcp_err_octets, align 4, !dbg !632
  %add228 = add i32 %230, %call227, !dbg !632
  store i32 %add228, i32* %mmc_rx_tcp_err_octets, align 4, !dbg !632
  %231 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !633
  %add.ptr229 = getelementptr i8, i8* %231, i64 384, !dbg !634
  %call230 = call i32 @readl(i8* %add.ptr229) #2, !dbg !635
  %232 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !636
  %mmc_rx_icmp_gd_octets = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %232, i32 0, i32 77, !dbg !637
  %233 = load i32, i32* %mmc_rx_icmp_gd_octets, align 4, !dbg !638
  %add231 = add i32 %233, %call230, !dbg !638
  store i32 %add231, i32* %mmc_rx_icmp_gd_octets, align 4, !dbg !638
  %234 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !639
  %add.ptr232 = getelementptr i8, i8* %234, i64 388, !dbg !640
  %call233 = call i32 @readl(i8* %add.ptr232) #2, !dbg !641
  %235 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !642
  %mmc_rx_icmp_err_octets = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %235, i32 0, i32 78, !dbg !643
  %236 = load i32, i32* %mmc_rx_icmp_err_octets, align 4, !dbg !644
  %add234 = add i32 %236, %call233, !dbg !644
  store i32 %add234, i32* %mmc_rx_icmp_err_octets, align 4, !dbg !644
  %237 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !645
  %add.ptr235 = getelementptr i8, i8* %237, i64 424, !dbg !646
  %call236 = call i32 @readl(i8* %add.ptr235) #2, !dbg !647
  %238 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !648
  %mmc_tx_fpe_fragment_cntr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %238, i32 0, i32 79, !dbg !649
  %239 = load i32, i32* %mmc_tx_fpe_fragment_cntr, align 4, !dbg !650
  %add237 = add i32 %239, %call236, !dbg !650
  store i32 %add237, i32* %mmc_tx_fpe_fragment_cntr, align 4, !dbg !650
  %240 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !651
  %add.ptr238 = getelementptr i8, i8* %240, i64 428, !dbg !652
  %call239 = call i32 @readl(i8* %add.ptr238) #2, !dbg !653
  %241 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !654
  %mmc_tx_hold_req_cntr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %241, i32 0, i32 80, !dbg !655
  %242 = load i32, i32* %mmc_tx_hold_req_cntr, align 4, !dbg !656
  %add240 = add i32 %242, %call239, !dbg !656
  store i32 %add240, i32* %mmc_tx_hold_req_cntr, align 4, !dbg !656
  %243 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !657
  %add.ptr241 = getelementptr i8, i8* %243, i64 456, !dbg !658
  %call242 = call i32 @readl(i8* %add.ptr241) #2, !dbg !659
  %244 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !660
  %mmc_rx_packet_assembly_err_cntr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %244, i32 0, i32 81, !dbg !661
  %245 = load i32, i32* %mmc_rx_packet_assembly_err_cntr, align 4, !dbg !662
  %add243 = add i32 %245, %call242, !dbg !662
  store i32 %add243, i32* %mmc_rx_packet_assembly_err_cntr, align 4, !dbg !662
  %246 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !663
  %add.ptr244 = getelementptr i8, i8* %246, i64 460, !dbg !664
  %call245 = call i32 @readl(i8* %add.ptr244) #2, !dbg !665
  %247 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !666
  %mmc_rx_packet_smd_err_cntr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %247, i32 0, i32 82, !dbg !667
  %248 = load i32, i32* %mmc_rx_packet_smd_err_cntr, align 4, !dbg !668
  %add246 = add i32 %248, %call245, !dbg !668
  store i32 %add246, i32* %mmc_rx_packet_smd_err_cntr, align 4, !dbg !668
  %249 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !669
  %add.ptr247 = getelementptr i8, i8* %249, i64 464, !dbg !670
  %call248 = call i32 @readl(i8* %add.ptr247) #2, !dbg !671
  %250 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !672
  %mmc_rx_packet_assembly_ok_cntr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %250, i32 0, i32 83, !dbg !673
  %251 = load i32, i32* %mmc_rx_packet_assembly_ok_cntr, align 4, !dbg !674
  %add249 = add i32 %251, %call248, !dbg !674
  store i32 %add249, i32* %mmc_rx_packet_assembly_ok_cntr, align 4, !dbg !674
  %252 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !675
  %add.ptr250 = getelementptr i8, i8* %252, i64 468, !dbg !676
  %call251 = call i32 @readl(i8* %add.ptr250) #2, !dbg !677
  %253 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !678
  %mmc_rx_fpe_fragment_cntr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %253, i32 0, i32 84, !dbg !679
  %254 = load i32, i32* %mmc_rx_fpe_fragment_cntr, align 4, !dbg !680
  %add252 = add i32 %254, %call251, !dbg !680
  store i32 %add252, i32* %mmc_rx_fpe_fragment_cntr, align 4, !dbg !680
  ret void, !dbg !681
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac_mmc_ctrl(i8* %mmcaddr, i32 %mode) #0 !dbg !682 {
entry:
  %mmcaddr.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %mmcaddr, i8** %mmcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mmcaddr.addr, metadata !683, metadata !DIExpression()), !dbg !684
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !685, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.declare(metadata i32* %value, metadata !687, metadata !DIExpression()), !dbg !688
  %0 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !689
  %add.ptr = getelementptr i8, i8* %0, i64 0, !dbg !690
  %call = call i32 @readl(i8* %add.ptr) #2, !dbg !691
  store i32 %call, i32* %value, align 4, !dbg !688
  %1 = load i32, i32* %mode.addr, align 4, !dbg !692
  %and = and i32 %1, 63, !dbg !693
  %2 = load i32, i32* %value, align 4, !dbg !694
  %or = or i32 %2, %and, !dbg !694
  store i32 %or, i32* %value, align 4, !dbg !694
  %3 = load i32, i32* %value, align 4, !dbg !695
  %4 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !696
  %add.ptr1 = getelementptr i8, i8* %4, i64 0, !dbg !697
  call void @writel(i32 %3, i8* %add.ptr1) #2, !dbg !698
  ret void, !dbg !699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac_mmc_intr_all_mask(i8* %mmcaddr) #0 !dbg !700 {
entry:
  %mmcaddr.addr = alloca i8*, align 8
  store i8* %mmcaddr, i8** %mmcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mmcaddr.addr, metadata !701, metadata !DIExpression()), !dbg !702
  %0 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !703
  %add.ptr = getelementptr i8, i8* %0, i64 12, !dbg !704
  call void @writel(i32 0, i8* %add.ptr) #2, !dbg !705
  %1 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !706
  %add.ptr1 = getelementptr i8, i8* %1, i64 16, !dbg !707
  call void @writel(i32 0, i8* %add.ptr1) #2, !dbg !708
  %2 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !709
  %add.ptr2 = getelementptr i8, i8* %2, i64 604, !dbg !710
  call void @writel(i32 -1, i8* %add.ptr2) #2, !dbg !711
  ret void, !dbg !712
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac_mmc_read(i8* %mmcaddr, %struct.stmmac_counters* %mmc) #0 !dbg !713 {
entry:
  %mmcaddr.addr = alloca i8*, align 8
  %mmc.addr = alloca %struct.stmmac_counters*, align 8
  store i8* %mmcaddr, i8** %mmcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mmcaddr.addr, metadata !714, metadata !DIExpression()), !dbg !715
  store %struct.stmmac_counters* %mmc, %struct.stmmac_counters** %mmc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_counters** %mmc.addr, metadata !716, metadata !DIExpression()), !dbg !717
  %0 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !718
  %1 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !719
  %mmc_tx_octetcount_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %1, i32 0, i32 0, !dbg !720
  call void @dwxgmac_read_mmc_reg(i8* %0, i32 20, i32* %mmc_tx_octetcount_gb) #2, !dbg !721
  %2 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !722
  %3 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !723
  %mmc_tx_framecount_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %3, i32 0, i32 1, !dbg !724
  call void @dwxgmac_read_mmc_reg(i8* %2, i32 28, i32* %mmc_tx_framecount_gb) #2, !dbg !725
  %4 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !726
  %5 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !727
  %mmc_tx_broadcastframe_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %5, i32 0, i32 2, !dbg !728
  call void @dwxgmac_read_mmc_reg(i8* %4, i32 36, i32* %mmc_tx_broadcastframe_g) #2, !dbg !729
  %6 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !730
  %7 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !731
  %mmc_tx_multicastframe_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %7, i32 0, i32 3, !dbg !732
  call void @dwxgmac_read_mmc_reg(i8* %6, i32 44, i32* %mmc_tx_multicastframe_g) #2, !dbg !733
  %8 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !734
  %9 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !735
  %mmc_tx_64_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %9, i32 0, i32 4, !dbg !736
  call void @dwxgmac_read_mmc_reg(i8* %8, i32 52, i32* %mmc_tx_64_octets_gb) #2, !dbg !737
  %10 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !738
  %11 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !739
  %mmc_tx_65_to_127_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %11, i32 0, i32 5, !dbg !740
  call void @dwxgmac_read_mmc_reg(i8* %10, i32 60, i32* %mmc_tx_65_to_127_octets_gb) #2, !dbg !741
  %12 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !742
  %13 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !743
  %mmc_tx_128_to_255_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %13, i32 0, i32 6, !dbg !744
  call void @dwxgmac_read_mmc_reg(i8* %12, i32 68, i32* %mmc_tx_128_to_255_octets_gb) #2, !dbg !745
  %14 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !746
  %15 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !747
  %mmc_tx_256_to_511_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %15, i32 0, i32 7, !dbg !748
  call void @dwxgmac_read_mmc_reg(i8* %14, i32 76, i32* %mmc_tx_256_to_511_octets_gb) #2, !dbg !749
  %16 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !750
  %17 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !751
  %mmc_tx_512_to_1023_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %17, i32 0, i32 8, !dbg !752
  call void @dwxgmac_read_mmc_reg(i8* %16, i32 84, i32* %mmc_tx_512_to_1023_octets_gb) #2, !dbg !753
  %18 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !754
  %19 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !755
  %mmc_tx_1024_to_max_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %19, i32 0, i32 9, !dbg !756
  call void @dwxgmac_read_mmc_reg(i8* %18, i32 92, i32* %mmc_tx_1024_to_max_octets_gb) #2, !dbg !757
  %20 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !758
  %21 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !759
  %mmc_tx_unicast_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %21, i32 0, i32 10, !dbg !760
  call void @dwxgmac_read_mmc_reg(i8* %20, i32 100, i32* %mmc_tx_unicast_gb) #2, !dbg !761
  %22 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !762
  %23 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !763
  %mmc_tx_multicast_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %23, i32 0, i32 11, !dbg !764
  call void @dwxgmac_read_mmc_reg(i8* %22, i32 108, i32* %mmc_tx_multicast_gb) #2, !dbg !765
  %24 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !766
  %25 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !767
  %mmc_tx_broadcast_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %25, i32 0, i32 12, !dbg !768
  call void @dwxgmac_read_mmc_reg(i8* %24, i32 116, i32* %mmc_tx_broadcast_gb) #2, !dbg !769
  %26 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !770
  %27 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !771
  %mmc_tx_underflow_error = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %27, i32 0, i32 13, !dbg !772
  call void @dwxgmac_read_mmc_reg(i8* %26, i32 124, i32* %mmc_tx_underflow_error) #2, !dbg !773
  %28 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !774
  %29 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !775
  %mmc_tx_octetcount_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %29, i32 0, i32 20, !dbg !776
  call void @dwxgmac_read_mmc_reg(i8* %28, i32 132, i32* %mmc_tx_octetcount_g) #2, !dbg !777
  %30 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !778
  %31 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !779
  %mmc_tx_framecount_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %31, i32 0, i32 21, !dbg !780
  call void @dwxgmac_read_mmc_reg(i8* %30, i32 140, i32* %mmc_tx_framecount_g) #2, !dbg !781
  %32 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !782
  %33 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !783
  %mmc_tx_pause_frame = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %33, i32 0, i32 23, !dbg !784
  call void @dwxgmac_read_mmc_reg(i8* %32, i32 148, i32* %mmc_tx_pause_frame) #2, !dbg !785
  %34 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !786
  %35 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !787
  %mmc_tx_vlan_frame_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %35, i32 0, i32 24, !dbg !788
  call void @dwxgmac_read_mmc_reg(i8* %34, i32 156, i32* %mmc_tx_vlan_frame_g) #2, !dbg !789
  %36 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !790
  %37 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !791
  %mmc_rx_framecount_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %37, i32 0, i32 25, !dbg !792
  call void @dwxgmac_read_mmc_reg(i8* %36, i32 256, i32* %mmc_rx_framecount_gb) #2, !dbg !793
  %38 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !794
  %39 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !795
  %mmc_rx_octetcount_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %39, i32 0, i32 26, !dbg !796
  call void @dwxgmac_read_mmc_reg(i8* %38, i32 264, i32* %mmc_rx_octetcount_gb) #2, !dbg !797
  %40 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !798
  %41 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !799
  %mmc_rx_octetcount_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %41, i32 0, i32 27, !dbg !800
  call void @dwxgmac_read_mmc_reg(i8* %40, i32 272, i32* %mmc_rx_octetcount_g) #2, !dbg !801
  %42 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !802
  %43 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !803
  %mmc_rx_broadcastframe_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %43, i32 0, i32 28, !dbg !804
  call void @dwxgmac_read_mmc_reg(i8* %42, i32 280, i32* %mmc_rx_broadcastframe_g) #2, !dbg !805
  %44 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !806
  %45 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !807
  %mmc_rx_multicastframe_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %45, i32 0, i32 29, !dbg !808
  call void @dwxgmac_read_mmc_reg(i8* %44, i32 288, i32* %mmc_rx_multicastframe_g) #2, !dbg !809
  %46 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !810
  %47 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !811
  %mmc_rx_crc_error = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %47, i32 0, i32 30, !dbg !812
  call void @dwxgmac_read_mmc_reg(i8* %46, i32 296, i32* %mmc_rx_crc_error) #2, !dbg !813
  %48 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !814
  %49 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !815
  %mmc_rx_crc_error1 = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %49, i32 0, i32 30, !dbg !816
  call void @dwxgmac_read_mmc_reg(i8* %48, i32 296, i32* %mmc_rx_crc_error1) #2, !dbg !817
  %50 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !818
  %add.ptr = getelementptr i8, i8* %50, i64 304, !dbg !819
  %call = call i32 @readl(i8* %add.ptr) #2, !dbg !820
  %51 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !821
  %mmc_rx_run_error = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %51, i32 0, i32 32, !dbg !822
  %52 = load i32, i32* %mmc_rx_run_error, align 4, !dbg !823
  %add = add i32 %52, %call, !dbg !823
  store i32 %add, i32* %mmc_rx_run_error, align 4, !dbg !823
  %53 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !824
  %add.ptr2 = getelementptr i8, i8* %53, i64 308, !dbg !825
  %call3 = call i32 @readl(i8* %add.ptr2) #2, !dbg !826
  %54 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !827
  %mmc_rx_jabber_error = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %54, i32 0, i32 33, !dbg !828
  %55 = load i32, i32* %mmc_rx_jabber_error, align 4, !dbg !829
  %add4 = add i32 %55, %call3, !dbg !829
  store i32 %add4, i32* %mmc_rx_jabber_error, align 4, !dbg !829
  %56 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !830
  %add.ptr5 = getelementptr i8, i8* %56, i64 312, !dbg !831
  %call6 = call i32 @readl(i8* %add.ptr5) #2, !dbg !832
  %57 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !833
  %mmc_rx_undersize_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %57, i32 0, i32 34, !dbg !834
  %58 = load i32, i32* %mmc_rx_undersize_g, align 4, !dbg !835
  %add7 = add i32 %58, %call6, !dbg !835
  store i32 %add7, i32* %mmc_rx_undersize_g, align 4, !dbg !835
  %59 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !836
  %add.ptr8 = getelementptr i8, i8* %59, i64 316, !dbg !837
  %call9 = call i32 @readl(i8* %add.ptr8) #2, !dbg !838
  %60 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !839
  %mmc_rx_oversize_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %60, i32 0, i32 35, !dbg !840
  %61 = load i32, i32* %mmc_rx_oversize_g, align 4, !dbg !841
  %add10 = add i32 %61, %call9, !dbg !841
  store i32 %add10, i32* %mmc_rx_oversize_g, align 4, !dbg !841
  %62 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !842
  %63 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !843
  %mmc_rx_64_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %63, i32 0, i32 36, !dbg !844
  call void @dwxgmac_read_mmc_reg(i8* %62, i32 320, i32* %mmc_rx_64_octets_gb) #2, !dbg !845
  %64 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !846
  %65 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !847
  %mmc_rx_65_to_127_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %65, i32 0, i32 37, !dbg !848
  call void @dwxgmac_read_mmc_reg(i8* %64, i32 328, i32* %mmc_rx_65_to_127_octets_gb) #2, !dbg !849
  %66 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !850
  %67 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !851
  %mmc_rx_128_to_255_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %67, i32 0, i32 38, !dbg !852
  call void @dwxgmac_read_mmc_reg(i8* %66, i32 336, i32* %mmc_rx_128_to_255_octets_gb) #2, !dbg !853
  %68 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !854
  %69 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !855
  %mmc_rx_256_to_511_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %69, i32 0, i32 39, !dbg !856
  call void @dwxgmac_read_mmc_reg(i8* %68, i32 344, i32* %mmc_rx_256_to_511_octets_gb) #2, !dbg !857
  %70 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !858
  %71 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !859
  %mmc_rx_512_to_1023_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %71, i32 0, i32 40, !dbg !860
  call void @dwxgmac_read_mmc_reg(i8* %70, i32 352, i32* %mmc_rx_512_to_1023_octets_gb) #2, !dbg !861
  %72 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !862
  %73 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !863
  %mmc_rx_1024_to_max_octets_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %73, i32 0, i32 41, !dbg !864
  call void @dwxgmac_read_mmc_reg(i8* %72, i32 360, i32* %mmc_rx_1024_to_max_octets_gb) #2, !dbg !865
  %74 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !866
  %75 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !867
  %mmc_rx_unicast_g = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %75, i32 0, i32 42, !dbg !868
  call void @dwxgmac_read_mmc_reg(i8* %74, i32 368, i32* %mmc_rx_unicast_g) #2, !dbg !869
  %76 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !870
  %77 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !871
  %mmc_rx_length_error = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %77, i32 0, i32 43, !dbg !872
  call void @dwxgmac_read_mmc_reg(i8* %76, i32 376, i32* %mmc_rx_length_error) #2, !dbg !873
  %78 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !874
  %79 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !875
  %mmc_rx_autofrangetype = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %79, i32 0, i32 44, !dbg !876
  call void @dwxgmac_read_mmc_reg(i8* %78, i32 384, i32* %mmc_rx_autofrangetype) #2, !dbg !877
  %80 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !878
  %81 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !879
  %mmc_rx_pause_frames = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %81, i32 0, i32 45, !dbg !880
  call void @dwxgmac_read_mmc_reg(i8* %80, i32 392, i32* %mmc_rx_pause_frames) #2, !dbg !881
  %82 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !882
  %83 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !883
  %mmc_rx_fifo_overflow = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %83, i32 0, i32 46, !dbg !884
  call void @dwxgmac_read_mmc_reg(i8* %82, i32 400, i32* %mmc_rx_fifo_overflow) #2, !dbg !885
  %84 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !886
  %85 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !887
  %mmc_rx_vlan_frames_gb = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %85, i32 0, i32 47, !dbg !888
  call void @dwxgmac_read_mmc_reg(i8* %84, i32 408, i32* %mmc_rx_vlan_frames_gb) #2, !dbg !889
  %86 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !890
  %add.ptr11 = getelementptr i8, i8* %86, i64 416, !dbg !891
  %call12 = call i32 @readl(i8* %add.ptr11) #2, !dbg !892
  %87 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !893
  %mmc_rx_watchdog_error = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %87, i32 0, i32 48, !dbg !894
  %88 = load i32, i32* %mmc_rx_watchdog_error, align 4, !dbg !895
  %add13 = add i32 %88, %call12, !dbg !895
  store i32 %add13, i32* %mmc_rx_watchdog_error, align 4, !dbg !895
  %89 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !896
  %add.ptr14 = getelementptr i8, i8* %89, i64 520, !dbg !897
  %call15 = call i32 @readl(i8* %add.ptr14) #2, !dbg !898
  %90 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !899
  %mmc_tx_fpe_fragment_cntr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %90, i32 0, i32 79, !dbg !900
  %91 = load i32, i32* %mmc_tx_fpe_fragment_cntr, align 4, !dbg !901
  %add16 = add i32 %91, %call15, !dbg !901
  store i32 %add16, i32* %mmc_tx_fpe_fragment_cntr, align 4, !dbg !901
  %92 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !902
  %add.ptr17 = getelementptr i8, i8* %92, i64 524, !dbg !903
  %call18 = call i32 @readl(i8* %add.ptr17) #2, !dbg !904
  %93 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !905
  %mmc_tx_hold_req_cntr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %93, i32 0, i32 80, !dbg !906
  %94 = load i32, i32* %mmc_tx_hold_req_cntr, align 4, !dbg !907
  %add19 = add i32 %94, %call18, !dbg !907
  store i32 %add19, i32* %mmc_tx_hold_req_cntr, align 4, !dbg !907
  %95 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !908
  %add.ptr20 = getelementptr i8, i8* %95, i64 552, !dbg !909
  %call21 = call i32 @readl(i8* %add.ptr20) #2, !dbg !910
  %96 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !911
  %mmc_rx_packet_assembly_err_cntr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %96, i32 0, i32 81, !dbg !912
  %97 = load i32, i32* %mmc_rx_packet_assembly_err_cntr, align 4, !dbg !913
  %add22 = add i32 %97, %call21, !dbg !913
  store i32 %add22, i32* %mmc_rx_packet_assembly_err_cntr, align 4, !dbg !913
  %98 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !914
  %add.ptr23 = getelementptr i8, i8* %98, i64 556, !dbg !915
  %call24 = call i32 @readl(i8* %add.ptr23) #2, !dbg !916
  %99 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !917
  %mmc_rx_packet_smd_err_cntr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %99, i32 0, i32 82, !dbg !918
  %100 = load i32, i32* %mmc_rx_packet_smd_err_cntr, align 4, !dbg !919
  %add25 = add i32 %100, %call24, !dbg !919
  store i32 %add25, i32* %mmc_rx_packet_smd_err_cntr, align 4, !dbg !919
  %101 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !920
  %add.ptr26 = getelementptr i8, i8* %101, i64 560, !dbg !921
  %call27 = call i32 @readl(i8* %add.ptr26) #2, !dbg !922
  %102 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !923
  %mmc_rx_packet_assembly_ok_cntr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %102, i32 0, i32 83, !dbg !924
  %103 = load i32, i32* %mmc_rx_packet_assembly_ok_cntr, align 4, !dbg !925
  %add28 = add i32 %103, %call27, !dbg !925
  store i32 %add28, i32* %mmc_rx_packet_assembly_ok_cntr, align 4, !dbg !925
  %104 = load i8*, i8** %mmcaddr.addr, align 8, !dbg !926
  %add.ptr29 = getelementptr i8, i8* %104, i64 564, !dbg !927
  %call30 = call i32 @readl(i8* %add.ptr29) #2, !dbg !928
  %105 = load %struct.stmmac_counters*, %struct.stmmac_counters** %mmc.addr, align 8, !dbg !929
  %mmc_rx_fpe_fragment_cntr = getelementptr inbounds %struct.stmmac_counters, %struct.stmmac_counters* %105, i32 0, i32 84, !dbg !930
  %106 = load i32, i32* %mmc_rx_fpe_fragment_cntr, align 4, !dbg !931
  %add31 = add i32 %106, %call30, !dbg !931
  store i32 %add31, i32* %mmc_rx_fpe_fragment_cntr, align 4, !dbg !931
  ret void, !dbg !932
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !933 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !942, metadata !DIExpression()), !dbg !941
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !941
  %1 = bitcast i8* %0 to i32*, !dbg !941
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #3, !dbg !941, !srcloc !943
  store i32 %2, i32* %ret, align 4, !dbg !941
  %3 = load i32, i32* %ret, align 4, !dbg !941
  ret i32 %3, !dbg !941
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !944 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !948, metadata !DIExpression()), !dbg !949
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !950, metadata !DIExpression()), !dbg !949
  %0 = load i32, i32* %val.addr, align 4, !dbg !949
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !949
  %2 = bitcast i8* %1 to i32*, !dbg !949
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #3, !dbg !949, !srcloc !951
  ret void, !dbg !949
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dwxgmac_read_mmc_reg(i8* %addr, i32 %reg, i32* %dest) #0 !dbg !952 {
entry:
  %addr.addr = alloca i8*, align 8
  %reg.addr = alloca i32, align 4
  %dest.addr = alloca i32*, align 8
  %tmp = alloca i64, align 8
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !956, metadata !DIExpression()), !dbg !957
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !958, metadata !DIExpression()), !dbg !959
  store i32* %dest, i32** %dest.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dest.addr, metadata !960, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !962, metadata !DIExpression()), !dbg !963
  store i64 0, i64* %tmp, align 8, !dbg !963
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !964
  %1 = load i32, i32* %reg.addr, align 4, !dbg !965
  %idx.ext = zext i32 %1 to i64, !dbg !966
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !966
  %call = call i32 @readl(i8* %add.ptr) #2, !dbg !967
  %conv = zext i32 %call to i64, !dbg !967
  %2 = load i64, i64* %tmp, align 8, !dbg !968
  %add = add i64 %2, %conv, !dbg !968
  store i64 %add, i64* %tmp, align 8, !dbg !968
  %3 = load i8*, i8** %addr.addr, align 8, !dbg !969
  %4 = load i32, i32* %reg.addr, align 4, !dbg !970
  %idx.ext1 = zext i32 %4 to i64, !dbg !971
  %add.ptr2 = getelementptr i8, i8* %3, i64 %idx.ext1, !dbg !971
  %add.ptr3 = getelementptr i8, i8* %add.ptr2, i64 4, !dbg !972
  %call4 = call i32 @readl(i8* %add.ptr3) #2, !dbg !973
  %conv5 = zext i32 %call4 to i64, !dbg !974
  %shl = shl i64 %conv5, 32, !dbg !975
  %5 = load i64, i64* %tmp, align 8, !dbg !976
  %add6 = add i64 %5, %shl, !dbg !976
  store i64 %add6, i64* %tmp, align 8, !dbg !976
  %6 = load i64, i64* %tmp, align 8, !dbg !977
  %cmp = icmp ugt i64 %6, 4294967295, !dbg !979
  br i1 %cmp, label %if.then, label %if.else, !dbg !980

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %dest.addr, align 8, !dbg !981
  store i32 -1, i32* %7, align 4, !dbg !982
  br label %if.end, !dbg !983

if.else:                                          ; preds = %entry
  %8 = load i32*, i32** %dest.addr, align 8, !dbg !984
  %9 = load i32, i32* %8, align 4, !dbg !985
  %conv8 = zext i32 %9 to i64, !dbg !985
  %10 = load i64, i64* %tmp, align 8, !dbg !986
  %add9 = add i64 %conv8, %10, !dbg !987
  %conv10 = trunc i64 %add9 to i32, !dbg !985
  %11 = load i32*, i32** %dest.addr, align 8, !dbg !988
  store i32 %conv10, i32* %11, align 4, !dbg !989
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !990
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dwmac_mmc_ops", scope: !2, file: !3, line: 336, type: !18, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/mmc_core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !9, !14}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !8)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !10, line: 23, baseType: !11)
!10 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !12, line: 31, baseType: !13)
!12 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!13 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!0, !16}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "dwxgmac_mmc_ops", scope: !2, file: !3, line: 471, type: !18, isLocal: false, isDefinition: true)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_mmc_ops", file: !20, line: 581, size: 192, elements: !21)
!20 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/hwif.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !27, !31}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !19, file: !20, line: 582, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26, !8}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "intr_all_mask", scope: !19, file: !20, line: 583, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !26}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !19, file: !20, line: 584, baseType: !32, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !26, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_counters", file: !37, line: 29, size: 2720, elements: !38)
!37 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/mmc.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_octetcount_gb", scope: !36, file: !37, line: 30, baseType: !8, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_framecount_gb", scope: !36, file: !37, line: 31, baseType: !8, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_broadcastframe_g", scope: !36, file: !37, line: 32, baseType: !8, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_multicastframe_g", scope: !36, file: !37, line: 33, baseType: !8, size: 32, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_64_octets_gb", scope: !36, file: !37, line: 34, baseType: !8, size: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_65_to_127_octets_gb", scope: !36, file: !37, line: 35, baseType: !8, size: 32, offset: 160)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_128_to_255_octets_gb", scope: !36, file: !37, line: 36, baseType: !8, size: 32, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_256_to_511_octets_gb", scope: !36, file: !37, line: 37, baseType: !8, size: 32, offset: 224)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_512_to_1023_octets_gb", scope: !36, file: !37, line: 38, baseType: !8, size: 32, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_1024_to_max_octets_gb", scope: !36, file: !37, line: 39, baseType: !8, size: 32, offset: 288)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_unicast_gb", scope: !36, file: !37, line: 40, baseType: !8, size: 32, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_multicast_gb", scope: !36, file: !37, line: 41, baseType: !8, size: 32, offset: 352)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_broadcast_gb", scope: !36, file: !37, line: 42, baseType: !8, size: 32, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_underflow_error", scope: !36, file: !37, line: 43, baseType: !8, size: 32, offset: 416)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_singlecol_g", scope: !36, file: !37, line: 44, baseType: !8, size: 32, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_multicol_g", scope: !36, file: !37, line: 45, baseType: !8, size: 32, offset: 480)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_deferred", scope: !36, file: !37, line: 46, baseType: !8, size: 32, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_latecol", scope: !36, file: !37, line: 47, baseType: !8, size: 32, offset: 544)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_exesscol", scope: !36, file: !37, line: 48, baseType: !8, size: 32, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_carrier_error", scope: !36, file: !37, line: 49, baseType: !8, size: 32, offset: 608)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_octetcount_g", scope: !36, file: !37, line: 50, baseType: !8, size: 32, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_framecount_g", scope: !36, file: !37, line: 51, baseType: !8, size: 32, offset: 672)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_excessdef", scope: !36, file: !37, line: 52, baseType: !8, size: 32, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_pause_frame", scope: !36, file: !37, line: 53, baseType: !8, size: 32, offset: 736)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_vlan_frame_g", scope: !36, file: !37, line: 54, baseType: !8, size: 32, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_framecount_gb", scope: !36, file: !37, line: 57, baseType: !8, size: 32, offset: 800)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_octetcount_gb", scope: !36, file: !37, line: 58, baseType: !8, size: 32, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_octetcount_g", scope: !36, file: !37, line: 59, baseType: !8, size: 32, offset: 864)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_broadcastframe_g", scope: !36, file: !37, line: 60, baseType: !8, size: 32, offset: 896)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_multicastframe_g", scope: !36, file: !37, line: 61, baseType: !8, size: 32, offset: 928)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_crc_error", scope: !36, file: !37, line: 62, baseType: !8, size: 32, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_align_error", scope: !36, file: !37, line: 63, baseType: !8, size: 32, offset: 992)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_run_error", scope: !36, file: !37, line: 64, baseType: !8, size: 32, offset: 1024)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_jabber_error", scope: !36, file: !37, line: 65, baseType: !8, size: 32, offset: 1056)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_undersize_g", scope: !36, file: !37, line: 66, baseType: !8, size: 32, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_oversize_g", scope: !36, file: !37, line: 67, baseType: !8, size: 32, offset: 1120)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_64_octets_gb", scope: !36, file: !37, line: 68, baseType: !8, size: 32, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_65_to_127_octets_gb", scope: !36, file: !37, line: 69, baseType: !8, size: 32, offset: 1184)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_128_to_255_octets_gb", scope: !36, file: !37, line: 70, baseType: !8, size: 32, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_256_to_511_octets_gb", scope: !36, file: !37, line: 71, baseType: !8, size: 32, offset: 1248)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_512_to_1023_octets_gb", scope: !36, file: !37, line: 72, baseType: !8, size: 32, offset: 1280)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_1024_to_max_octets_gb", scope: !36, file: !37, line: 73, baseType: !8, size: 32, offset: 1312)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_unicast_g", scope: !36, file: !37, line: 74, baseType: !8, size: 32, offset: 1344)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_length_error", scope: !36, file: !37, line: 75, baseType: !8, size: 32, offset: 1376)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_autofrangetype", scope: !36, file: !37, line: 76, baseType: !8, size: 32, offset: 1408)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_pause_frames", scope: !36, file: !37, line: 77, baseType: !8, size: 32, offset: 1440)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_fifo_overflow", scope: !36, file: !37, line: 78, baseType: !8, size: 32, offset: 1472)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_vlan_frames_gb", scope: !36, file: !37, line: 79, baseType: !8, size: 32, offset: 1504)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_watchdog_error", scope: !36, file: !37, line: 80, baseType: !8, size: 32, offset: 1536)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipc_intr_mask", scope: !36, file: !37, line: 82, baseType: !8, size: 32, offset: 1568)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipc_intr", scope: !36, file: !37, line: 83, baseType: !8, size: 32, offset: 1600)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv4_gd", scope: !36, file: !37, line: 85, baseType: !8, size: 32, offset: 1632)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv4_hderr", scope: !36, file: !37, line: 86, baseType: !8, size: 32, offset: 1664)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv4_nopay", scope: !36, file: !37, line: 87, baseType: !8, size: 32, offset: 1696)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv4_frag", scope: !36, file: !37, line: 88, baseType: !8, size: 32, offset: 1728)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv4_udsbl", scope: !36, file: !37, line: 89, baseType: !8, size: 32, offset: 1760)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv4_gd_octets", scope: !36, file: !37, line: 91, baseType: !8, size: 32, offset: 1792)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv4_hderr_octets", scope: !36, file: !37, line: 92, baseType: !8, size: 32, offset: 1824)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv4_nopay_octets", scope: !36, file: !37, line: 93, baseType: !8, size: 32, offset: 1856)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv4_frag_octets", scope: !36, file: !37, line: 94, baseType: !8, size: 32, offset: 1888)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv4_udsbl_octets", scope: !36, file: !37, line: 95, baseType: !8, size: 32, offset: 1920)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv6_gd_octets", scope: !36, file: !37, line: 98, baseType: !8, size: 32, offset: 1952)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv6_hderr_octets", scope: !36, file: !37, line: 99, baseType: !8, size: 32, offset: 1984)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv6_nopay_octets", scope: !36, file: !37, line: 100, baseType: !8, size: 32, offset: 2016)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv6_gd", scope: !36, file: !37, line: 102, baseType: !8, size: 32, offset: 2048)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv6_hderr", scope: !36, file: !37, line: 103, baseType: !8, size: 32, offset: 2080)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_ipv6_nopay", scope: !36, file: !37, line: 104, baseType: !8, size: 32, offset: 2112)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_udp_gd", scope: !36, file: !37, line: 107, baseType: !8, size: 32, offset: 2144)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_udp_err", scope: !36, file: !37, line: 108, baseType: !8, size: 32, offset: 2176)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_tcp_gd", scope: !36, file: !37, line: 109, baseType: !8, size: 32, offset: 2208)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_tcp_err", scope: !36, file: !37, line: 110, baseType: !8, size: 32, offset: 2240)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_icmp_gd", scope: !36, file: !37, line: 111, baseType: !8, size: 32, offset: 2272)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_icmp_err", scope: !36, file: !37, line: 112, baseType: !8, size: 32, offset: 2304)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_udp_gd_octets", scope: !36, file: !37, line: 114, baseType: !8, size: 32, offset: 2336)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_udp_err_octets", scope: !36, file: !37, line: 115, baseType: !8, size: 32, offset: 2368)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_tcp_gd_octets", scope: !36, file: !37, line: 116, baseType: !8, size: 32, offset: 2400)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_tcp_err_octets", scope: !36, file: !37, line: 117, baseType: !8, size: 32, offset: 2432)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_icmp_gd_octets", scope: !36, file: !37, line: 118, baseType: !8, size: 32, offset: 2464)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_icmp_err_octets", scope: !36, file: !37, line: 119, baseType: !8, size: 32, offset: 2496)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_fpe_fragment_cntr", scope: !36, file: !37, line: 122, baseType: !8, size: 32, offset: 2528)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_hold_req_cntr", scope: !36, file: !37, line: 123, baseType: !8, size: 32, offset: 2560)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_packet_assembly_err_cntr", scope: !36, file: !37, line: 124, baseType: !8, size: 32, offset: 2592)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_packet_smd_err_cntr", scope: !36, file: !37, line: 125, baseType: !8, size: 32, offset: 2624)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_packet_assembly_ok_cntr", scope: !36, file: !37, line: 126, baseType: !8, size: 32, offset: 2656)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_fpe_fragment_cntr", scope: !36, file: !37, line: 127, baseType: !8, size: 32, offset: 2688)
!124 = !{i32 7, !"Dwarf Version", i32 4}
!125 = !{i32 2, !"Debug Info Version", i32 3}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"Code Model", i32 2}
!128 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!129 = distinct !DISubprogram(name: "dwmac_mmc_ctrl", scope: !3, file: !3, line: 188, type: !24, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!130 = !DILocalVariable(name: "mmcaddr", arg: 1, scope: !129, file: !3, line: 188, type: !26)
!131 = !DILocation(line: 188, column: 42, scope: !129)
!132 = !DILocalVariable(name: "mode", arg: 2, scope: !129, file: !3, line: 188, type: !8)
!133 = !DILocation(line: 188, column: 64, scope: !129)
!134 = !DILocalVariable(name: "value", scope: !129, file: !3, line: 190, type: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !10, line: 21, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !12, line: 27, baseType: !8)
!137 = !DILocation(line: 190, column: 6, scope: !129)
!138 = !DILocation(line: 190, column: 20, scope: !129)
!139 = !DILocation(line: 190, column: 28, scope: !129)
!140 = !DILocation(line: 190, column: 14, scope: !129)
!141 = !DILocation(line: 192, column: 12, scope: !129)
!142 = !DILocation(line: 192, column: 17, scope: !129)
!143 = !DILocation(line: 192, column: 8, scope: !129)
!144 = !DILocation(line: 194, column: 9, scope: !129)
!145 = !DILocation(line: 194, column: 16, scope: !129)
!146 = !DILocation(line: 194, column: 24, scope: !129)
!147 = !DILocation(line: 194, column: 2, scope: !129)
!148 = !DILocation(line: 196, column: 2, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !3, line: 196, column: 2)
!150 = distinct !DILexicalBlock(scope: !129, file: !3, line: 196, column: 2)
!151 = !DILocation(line: 196, column: 2, scope: !150)
!152 = !DILocation(line: 198, column: 1, scope: !129)
!153 = distinct !DISubprogram(name: "dwmac_mmc_intr_all_mask", scope: !3, file: !3, line: 201, type: !29, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!154 = !DILocalVariable(name: "mmcaddr", arg: 1, scope: !153, file: !3, line: 201, type: !26)
!155 = !DILocation(line: 201, column: 51, scope: !153)
!156 = !DILocation(line: 203, column: 27, scope: !153)
!157 = !DILocation(line: 203, column: 35, scope: !153)
!158 = !DILocation(line: 203, column: 2, scope: !153)
!159 = !DILocation(line: 204, column: 27, scope: !153)
!160 = !DILocation(line: 204, column: 35, scope: !153)
!161 = !DILocation(line: 204, column: 2, scope: !153)
!162 = !DILocation(line: 205, column: 27, scope: !153)
!163 = !DILocation(line: 205, column: 35, scope: !153)
!164 = !DILocation(line: 205, column: 2, scope: !153)
!165 = !DILocation(line: 206, column: 1, scope: !153)
!166 = distinct !DISubprogram(name: "dwmac_mmc_read", scope: !3, file: !3, line: 213, type: !33, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!167 = !DILocalVariable(name: "mmcaddr", arg: 1, scope: !166, file: !3, line: 213, type: !26)
!168 = !DILocation(line: 213, column: 42, scope: !166)
!169 = !DILocalVariable(name: "mmc", arg: 2, scope: !166, file: !3, line: 213, type: !35)
!170 = !DILocation(line: 213, column: 75, scope: !166)
!171 = !DILocation(line: 215, column: 37, scope: !166)
!172 = !DILocation(line: 215, column: 45, scope: !166)
!173 = !DILocation(line: 215, column: 31, scope: !166)
!174 = !DILocation(line: 215, column: 2, scope: !166)
!175 = !DILocation(line: 215, column: 7, scope: !166)
!176 = !DILocation(line: 215, column: 28, scope: !166)
!177 = !DILocation(line: 216, column: 37, scope: !166)
!178 = !DILocation(line: 216, column: 45, scope: !166)
!179 = !DILocation(line: 216, column: 31, scope: !166)
!180 = !DILocation(line: 216, column: 2, scope: !166)
!181 = !DILocation(line: 216, column: 7, scope: !166)
!182 = !DILocation(line: 216, column: 28, scope: !166)
!183 = !DILocation(line: 217, column: 40, scope: !166)
!184 = !DILocation(line: 217, column: 48, scope: !166)
!185 = !DILocation(line: 217, column: 34, scope: !166)
!186 = !DILocation(line: 217, column: 2, scope: !166)
!187 = !DILocation(line: 217, column: 7, scope: !166)
!188 = !DILocation(line: 217, column: 31, scope: !166)
!189 = !DILocation(line: 219, column: 40, scope: !166)
!190 = !DILocation(line: 219, column: 48, scope: !166)
!191 = !DILocation(line: 219, column: 34, scope: !166)
!192 = !DILocation(line: 219, column: 2, scope: !166)
!193 = !DILocation(line: 219, column: 7, scope: !166)
!194 = !DILocation(line: 219, column: 31, scope: !166)
!195 = !DILocation(line: 221, column: 36, scope: !166)
!196 = !DILocation(line: 221, column: 44, scope: !166)
!197 = !DILocation(line: 221, column: 30, scope: !166)
!198 = !DILocation(line: 221, column: 2, scope: !166)
!199 = !DILocation(line: 221, column: 7, scope: !166)
!200 = !DILocation(line: 221, column: 27, scope: !166)
!201 = !DILocation(line: 223, column: 12, scope: !166)
!202 = !DILocation(line: 223, column: 20, scope: !166)
!203 = !DILocation(line: 223, column: 6, scope: !166)
!204 = !DILocation(line: 222, column: 2, scope: !166)
!205 = !DILocation(line: 222, column: 7, scope: !166)
!206 = !DILocation(line: 222, column: 34, scope: !166)
!207 = !DILocation(line: 225, column: 12, scope: !166)
!208 = !DILocation(line: 225, column: 20, scope: !166)
!209 = !DILocation(line: 225, column: 6, scope: !166)
!210 = !DILocation(line: 224, column: 2, scope: !166)
!211 = !DILocation(line: 224, column: 7, scope: !166)
!212 = !DILocation(line: 224, column: 35, scope: !166)
!213 = !DILocation(line: 227, column: 12, scope: !166)
!214 = !DILocation(line: 227, column: 20, scope: !166)
!215 = !DILocation(line: 227, column: 6, scope: !166)
!216 = !DILocation(line: 226, column: 2, scope: !166)
!217 = !DILocation(line: 226, column: 7, scope: !166)
!218 = !DILocation(line: 226, column: 35, scope: !166)
!219 = !DILocation(line: 229, column: 12, scope: !166)
!220 = !DILocation(line: 229, column: 20, scope: !166)
!221 = !DILocation(line: 229, column: 6, scope: !166)
!222 = !DILocation(line: 228, column: 2, scope: !166)
!223 = !DILocation(line: 228, column: 7, scope: !166)
!224 = !DILocation(line: 228, column: 36, scope: !166)
!225 = !DILocation(line: 231, column: 12, scope: !166)
!226 = !DILocation(line: 231, column: 20, scope: !166)
!227 = !DILocation(line: 231, column: 6, scope: !166)
!228 = !DILocation(line: 230, column: 2, scope: !166)
!229 = !DILocation(line: 230, column: 7, scope: !166)
!230 = !DILocation(line: 230, column: 36, scope: !166)
!231 = !DILocation(line: 232, column: 34, scope: !166)
!232 = !DILocation(line: 232, column: 42, scope: !166)
!233 = !DILocation(line: 232, column: 28, scope: !166)
!234 = !DILocation(line: 232, column: 2, scope: !166)
!235 = !DILocation(line: 232, column: 7, scope: !166)
!236 = !DILocation(line: 232, column: 25, scope: !166)
!237 = !DILocation(line: 233, column: 36, scope: !166)
!238 = !DILocation(line: 233, column: 44, scope: !166)
!239 = !DILocation(line: 233, column: 30, scope: !166)
!240 = !DILocation(line: 233, column: 2, scope: !166)
!241 = !DILocation(line: 233, column: 7, scope: !166)
!242 = !DILocation(line: 233, column: 27, scope: !166)
!243 = !DILocation(line: 234, column: 36, scope: !166)
!244 = !DILocation(line: 234, column: 44, scope: !166)
!245 = !DILocation(line: 234, column: 30, scope: !166)
!246 = !DILocation(line: 234, column: 2, scope: !166)
!247 = !DILocation(line: 234, column: 7, scope: !166)
!248 = !DILocation(line: 234, column: 27, scope: !166)
!249 = !DILocation(line: 235, column: 39, scope: !166)
!250 = !DILocation(line: 235, column: 47, scope: !166)
!251 = !DILocation(line: 235, column: 33, scope: !166)
!252 = !DILocation(line: 235, column: 2, scope: !166)
!253 = !DILocation(line: 235, column: 7, scope: !166)
!254 = !DILocation(line: 235, column: 30, scope: !166)
!255 = !DILocation(line: 236, column: 35, scope: !166)
!256 = !DILocation(line: 236, column: 43, scope: !166)
!257 = !DILocation(line: 236, column: 29, scope: !166)
!258 = !DILocation(line: 236, column: 2, scope: !166)
!259 = !DILocation(line: 236, column: 7, scope: !166)
!260 = !DILocation(line: 236, column: 26, scope: !166)
!261 = !DILocation(line: 237, column: 34, scope: !166)
!262 = !DILocation(line: 237, column: 42, scope: !166)
!263 = !DILocation(line: 237, column: 28, scope: !166)
!264 = !DILocation(line: 237, column: 2, scope: !166)
!265 = !DILocation(line: 237, column: 7, scope: !166)
!266 = !DILocation(line: 237, column: 25, scope: !166)
!267 = !DILocation(line: 238, column: 32, scope: !166)
!268 = !DILocation(line: 238, column: 40, scope: !166)
!269 = !DILocation(line: 238, column: 26, scope: !166)
!270 = !DILocation(line: 238, column: 2, scope: !166)
!271 = !DILocation(line: 238, column: 7, scope: !166)
!272 = !DILocation(line: 238, column: 23, scope: !166)
!273 = !DILocation(line: 239, column: 31, scope: !166)
!274 = !DILocation(line: 239, column: 39, scope: !166)
!275 = !DILocation(line: 239, column: 25, scope: !166)
!276 = !DILocation(line: 239, column: 2, scope: !166)
!277 = !DILocation(line: 239, column: 7, scope: !166)
!278 = !DILocation(line: 239, column: 22, scope: !166)
!279 = !DILocation(line: 240, column: 32, scope: !166)
!280 = !DILocation(line: 240, column: 40, scope: !166)
!281 = !DILocation(line: 240, column: 26, scope: !166)
!282 = !DILocation(line: 240, column: 2, scope: !166)
!283 = !DILocation(line: 240, column: 7, scope: !166)
!284 = !DILocation(line: 240, column: 23, scope: !166)
!285 = !DILocation(line: 241, column: 37, scope: !166)
!286 = !DILocation(line: 241, column: 45, scope: !166)
!287 = !DILocation(line: 241, column: 31, scope: !166)
!288 = !DILocation(line: 241, column: 2, scope: !166)
!289 = !DILocation(line: 241, column: 7, scope: !166)
!290 = !DILocation(line: 241, column: 28, scope: !166)
!291 = !DILocation(line: 242, column: 36, scope: !166)
!292 = !DILocation(line: 242, column: 44, scope: !166)
!293 = !DILocation(line: 242, column: 30, scope: !166)
!294 = !DILocation(line: 242, column: 2, scope: !166)
!295 = !DILocation(line: 242, column: 7, scope: !166)
!296 = !DILocation(line: 242, column: 27, scope: !166)
!297 = !DILocation(line: 243, column: 36, scope: !166)
!298 = !DILocation(line: 243, column: 44, scope: !166)
!299 = !DILocation(line: 243, column: 30, scope: !166)
!300 = !DILocation(line: 243, column: 2, scope: !166)
!301 = !DILocation(line: 243, column: 7, scope: !166)
!302 = !DILocation(line: 243, column: 27, scope: !166)
!303 = !DILocation(line: 244, column: 33, scope: !166)
!304 = !DILocation(line: 244, column: 41, scope: !166)
!305 = !DILocation(line: 244, column: 27, scope: !166)
!306 = !DILocation(line: 244, column: 2, scope: !166)
!307 = !DILocation(line: 244, column: 7, scope: !166)
!308 = !DILocation(line: 244, column: 24, scope: !166)
!309 = !DILocation(line: 245, column: 35, scope: !166)
!310 = !DILocation(line: 245, column: 43, scope: !166)
!311 = !DILocation(line: 245, column: 29, scope: !166)
!312 = !DILocation(line: 245, column: 2, scope: !166)
!313 = !DILocation(line: 245, column: 7, scope: !166)
!314 = !DILocation(line: 245, column: 26, scope: !166)
!315 = !DILocation(line: 246, column: 36, scope: !166)
!316 = !DILocation(line: 246, column: 44, scope: !166)
!317 = !DILocation(line: 246, column: 30, scope: !166)
!318 = !DILocation(line: 246, column: 2, scope: !166)
!319 = !DILocation(line: 246, column: 7, scope: !166)
!320 = !DILocation(line: 246, column: 27, scope: !166)
!321 = !DILocation(line: 249, column: 37, scope: !166)
!322 = !DILocation(line: 249, column: 45, scope: !166)
!323 = !DILocation(line: 249, column: 31, scope: !166)
!324 = !DILocation(line: 249, column: 2, scope: !166)
!325 = !DILocation(line: 249, column: 7, scope: !166)
!326 = !DILocation(line: 249, column: 28, scope: !166)
!327 = !DILocation(line: 250, column: 37, scope: !166)
!328 = !DILocation(line: 250, column: 45, scope: !166)
!329 = !DILocation(line: 250, column: 31, scope: !166)
!330 = !DILocation(line: 250, column: 2, scope: !166)
!331 = !DILocation(line: 250, column: 7, scope: !166)
!332 = !DILocation(line: 250, column: 28, scope: !166)
!333 = !DILocation(line: 251, column: 36, scope: !166)
!334 = !DILocation(line: 251, column: 44, scope: !166)
!335 = !DILocation(line: 251, column: 30, scope: !166)
!336 = !DILocation(line: 251, column: 2, scope: !166)
!337 = !DILocation(line: 251, column: 7, scope: !166)
!338 = !DILocation(line: 251, column: 27, scope: !166)
!339 = !DILocation(line: 252, column: 40, scope: !166)
!340 = !DILocation(line: 252, column: 48, scope: !166)
!341 = !DILocation(line: 252, column: 34, scope: !166)
!342 = !DILocation(line: 252, column: 2, scope: !166)
!343 = !DILocation(line: 252, column: 7, scope: !166)
!344 = !DILocation(line: 252, column: 31, scope: !166)
!345 = !DILocation(line: 254, column: 40, scope: !166)
!346 = !DILocation(line: 254, column: 48, scope: !166)
!347 = !DILocation(line: 254, column: 34, scope: !166)
!348 = !DILocation(line: 254, column: 2, scope: !166)
!349 = !DILocation(line: 254, column: 7, scope: !166)
!350 = !DILocation(line: 254, column: 31, scope: !166)
!351 = !DILocation(line: 256, column: 33, scope: !166)
!352 = !DILocation(line: 256, column: 41, scope: !166)
!353 = !DILocation(line: 256, column: 27, scope: !166)
!354 = !DILocation(line: 256, column: 2, scope: !166)
!355 = !DILocation(line: 256, column: 7, scope: !166)
!356 = !DILocation(line: 256, column: 24, scope: !166)
!357 = !DILocation(line: 257, column: 35, scope: !166)
!358 = !DILocation(line: 257, column: 43, scope: !166)
!359 = !DILocation(line: 257, column: 29, scope: !166)
!360 = !DILocation(line: 257, column: 2, scope: !166)
!361 = !DILocation(line: 257, column: 7, scope: !166)
!362 = !DILocation(line: 257, column: 26, scope: !166)
!363 = !DILocation(line: 258, column: 33, scope: !166)
!364 = !DILocation(line: 258, column: 41, scope: !166)
!365 = !DILocation(line: 258, column: 27, scope: !166)
!366 = !DILocation(line: 258, column: 2, scope: !166)
!367 = !DILocation(line: 258, column: 7, scope: !166)
!368 = !DILocation(line: 258, column: 24, scope: !166)
!369 = !DILocation(line: 259, column: 36, scope: !166)
!370 = !DILocation(line: 259, column: 44, scope: !166)
!371 = !DILocation(line: 259, column: 30, scope: !166)
!372 = !DILocation(line: 259, column: 2, scope: !166)
!373 = !DILocation(line: 259, column: 7, scope: !166)
!374 = !DILocation(line: 259, column: 27, scope: !166)
!375 = !DILocation(line: 260, column: 35, scope: !166)
!376 = !DILocation(line: 260, column: 43, scope: !166)
!377 = !DILocation(line: 260, column: 29, scope: !166)
!378 = !DILocation(line: 260, column: 2, scope: !166)
!379 = !DILocation(line: 260, column: 7, scope: !166)
!380 = !DILocation(line: 260, column: 26, scope: !166)
!381 = !DILocation(line: 261, column: 34, scope: !166)
!382 = !DILocation(line: 261, column: 42, scope: !166)
!383 = !DILocation(line: 261, column: 28, scope: !166)
!384 = !DILocation(line: 261, column: 2, scope: !166)
!385 = !DILocation(line: 261, column: 7, scope: !166)
!386 = !DILocation(line: 261, column: 25, scope: !166)
!387 = !DILocation(line: 262, column: 36, scope: !166)
!388 = !DILocation(line: 262, column: 44, scope: !166)
!389 = !DILocation(line: 262, column: 30, scope: !166)
!390 = !DILocation(line: 262, column: 2, scope: !166)
!391 = !DILocation(line: 262, column: 7, scope: !166)
!392 = !DILocation(line: 262, column: 27, scope: !166)
!393 = !DILocation(line: 264, column: 12, scope: !166)
!394 = !DILocation(line: 264, column: 20, scope: !166)
!395 = !DILocation(line: 264, column: 6, scope: !166)
!396 = !DILocation(line: 263, column: 2, scope: !166)
!397 = !DILocation(line: 263, column: 7, scope: !166)
!398 = !DILocation(line: 263, column: 34, scope: !166)
!399 = !DILocation(line: 266, column: 12, scope: !166)
!400 = !DILocation(line: 266, column: 20, scope: !166)
!401 = !DILocation(line: 266, column: 6, scope: !166)
!402 = !DILocation(line: 265, column: 2, scope: !166)
!403 = !DILocation(line: 265, column: 7, scope: !166)
!404 = !DILocation(line: 265, column: 35, scope: !166)
!405 = !DILocation(line: 268, column: 12, scope: !166)
!406 = !DILocation(line: 268, column: 20, scope: !166)
!407 = !DILocation(line: 268, column: 6, scope: !166)
!408 = !DILocation(line: 267, column: 2, scope: !166)
!409 = !DILocation(line: 267, column: 7, scope: !166)
!410 = !DILocation(line: 267, column: 35, scope: !166)
!411 = !DILocation(line: 270, column: 12, scope: !166)
!412 = !DILocation(line: 270, column: 20, scope: !166)
!413 = !DILocation(line: 270, column: 6, scope: !166)
!414 = !DILocation(line: 269, column: 2, scope: !166)
!415 = !DILocation(line: 269, column: 7, scope: !166)
!416 = !DILocation(line: 269, column: 36, scope: !166)
!417 = !DILocation(line: 272, column: 12, scope: !166)
!418 = !DILocation(line: 272, column: 20, scope: !166)
!419 = !DILocation(line: 272, column: 6, scope: !166)
!420 = !DILocation(line: 271, column: 2, scope: !166)
!421 = !DILocation(line: 271, column: 7, scope: !166)
!422 = !DILocation(line: 271, column: 36, scope: !166)
!423 = !DILocation(line: 273, column: 33, scope: !166)
!424 = !DILocation(line: 273, column: 41, scope: !166)
!425 = !DILocation(line: 273, column: 27, scope: !166)
!426 = !DILocation(line: 273, column: 2, scope: !166)
!427 = !DILocation(line: 273, column: 7, scope: !166)
!428 = !DILocation(line: 273, column: 24, scope: !166)
!429 = !DILocation(line: 274, column: 36, scope: !166)
!430 = !DILocation(line: 274, column: 44, scope: !166)
!431 = !DILocation(line: 274, column: 30, scope: !166)
!432 = !DILocation(line: 274, column: 2, scope: !166)
!433 = !DILocation(line: 274, column: 7, scope: !166)
!434 = !DILocation(line: 274, column: 27, scope: !166)
!435 = !DILocation(line: 275, column: 38, scope: !166)
!436 = !DILocation(line: 275, column: 46, scope: !166)
!437 = !DILocation(line: 275, column: 32, scope: !166)
!438 = !DILocation(line: 275, column: 2, scope: !166)
!439 = !DILocation(line: 275, column: 7, scope: !166)
!440 = !DILocation(line: 275, column: 29, scope: !166)
!441 = !DILocation(line: 276, column: 36, scope: !166)
!442 = !DILocation(line: 276, column: 44, scope: !166)
!443 = !DILocation(line: 276, column: 30, scope: !166)
!444 = !DILocation(line: 276, column: 2, scope: !166)
!445 = !DILocation(line: 276, column: 7, scope: !166)
!446 = !DILocation(line: 276, column: 27, scope: !166)
!447 = !DILocation(line: 277, column: 37, scope: !166)
!448 = !DILocation(line: 277, column: 45, scope: !166)
!449 = !DILocation(line: 277, column: 31, scope: !166)
!450 = !DILocation(line: 277, column: 2, scope: !166)
!451 = !DILocation(line: 277, column: 7, scope: !166)
!452 = !DILocation(line: 277, column: 28, scope: !166)
!453 = !DILocation(line: 278, column: 38, scope: !166)
!454 = !DILocation(line: 278, column: 46, scope: !166)
!455 = !DILocation(line: 278, column: 32, scope: !166)
!456 = !DILocation(line: 278, column: 2, scope: !166)
!457 = !DILocation(line: 278, column: 7, scope: !166)
!458 = !DILocation(line: 278, column: 29, scope: !166)
!459 = !DILocation(line: 279, column: 38, scope: !166)
!460 = !DILocation(line: 279, column: 46, scope: !166)
!461 = !DILocation(line: 279, column: 32, scope: !166)
!462 = !DILocation(line: 279, column: 2, scope: !166)
!463 = !DILocation(line: 279, column: 7, scope: !166)
!464 = !DILocation(line: 279, column: 29, scope: !166)
!465 = !DILocation(line: 281, column: 37, scope: !166)
!466 = !DILocation(line: 281, column: 45, scope: !166)
!467 = !DILocation(line: 281, column: 31, scope: !166)
!468 = !DILocation(line: 281, column: 2, scope: !166)
!469 = !DILocation(line: 281, column: 7, scope: !166)
!470 = !DILocation(line: 281, column: 28, scope: !166)
!471 = !DILocation(line: 282, column: 32, scope: !166)
!472 = !DILocation(line: 282, column: 40, scope: !166)
!473 = !DILocation(line: 282, column: 26, scope: !166)
!474 = !DILocation(line: 282, column: 2, scope: !166)
!475 = !DILocation(line: 282, column: 7, scope: !166)
!476 = !DILocation(line: 282, column: 23, scope: !166)
!477 = !DILocation(line: 284, column: 31, scope: !166)
!478 = !DILocation(line: 284, column: 39, scope: !166)
!479 = !DILocation(line: 284, column: 25, scope: !166)
!480 = !DILocation(line: 284, column: 2, scope: !166)
!481 = !DILocation(line: 284, column: 7, scope: !166)
!482 = !DILocation(line: 284, column: 22, scope: !166)
!483 = !DILocation(line: 285, column: 34, scope: !166)
!484 = !DILocation(line: 285, column: 42, scope: !166)
!485 = !DILocation(line: 285, column: 28, scope: !166)
!486 = !DILocation(line: 285, column: 2, scope: !166)
!487 = !DILocation(line: 285, column: 7, scope: !166)
!488 = !DILocation(line: 285, column: 25, scope: !166)
!489 = !DILocation(line: 286, column: 34, scope: !166)
!490 = !DILocation(line: 286, column: 42, scope: !166)
!491 = !DILocation(line: 286, column: 28, scope: !166)
!492 = !DILocation(line: 286, column: 2, scope: !166)
!493 = !DILocation(line: 286, column: 7, scope: !166)
!494 = !DILocation(line: 286, column: 25, scope: !166)
!495 = !DILocation(line: 287, column: 33, scope: !166)
!496 = !DILocation(line: 287, column: 41, scope: !166)
!497 = !DILocation(line: 287, column: 27, scope: !166)
!498 = !DILocation(line: 287, column: 2, scope: !166)
!499 = !DILocation(line: 287, column: 7, scope: !166)
!500 = !DILocation(line: 287, column: 24, scope: !166)
!501 = !DILocation(line: 288, column: 34, scope: !166)
!502 = !DILocation(line: 288, column: 42, scope: !166)
!503 = !DILocation(line: 288, column: 28, scope: !166)
!504 = !DILocation(line: 288, column: 2, scope: !166)
!505 = !DILocation(line: 288, column: 7, scope: !166)
!506 = !DILocation(line: 288, column: 25, scope: !166)
!507 = !DILocation(line: 290, column: 38, scope: !166)
!508 = !DILocation(line: 290, column: 46, scope: !166)
!509 = !DILocation(line: 290, column: 32, scope: !166)
!510 = !DILocation(line: 290, column: 2, scope: !166)
!511 = !DILocation(line: 290, column: 7, scope: !166)
!512 = !DILocation(line: 290, column: 29, scope: !166)
!513 = !DILocation(line: 292, column: 12, scope: !166)
!514 = !DILocation(line: 292, column: 20, scope: !166)
!515 = !DILocation(line: 292, column: 6, scope: !166)
!516 = !DILocation(line: 291, column: 2, scope: !166)
!517 = !DILocation(line: 291, column: 7, scope: !166)
!518 = !DILocation(line: 291, column: 32, scope: !166)
!519 = !DILocation(line: 294, column: 12, scope: !166)
!520 = !DILocation(line: 294, column: 20, scope: !166)
!521 = !DILocation(line: 294, column: 6, scope: !166)
!522 = !DILocation(line: 293, column: 2, scope: !166)
!523 = !DILocation(line: 293, column: 7, scope: !166)
!524 = !DILocation(line: 293, column: 32, scope: !166)
!525 = !DILocation(line: 295, column: 40, scope: !166)
!526 = !DILocation(line: 295, column: 48, scope: !166)
!527 = !DILocation(line: 295, column: 34, scope: !166)
!528 = !DILocation(line: 295, column: 2, scope: !166)
!529 = !DILocation(line: 295, column: 7, scope: !166)
!530 = !DILocation(line: 295, column: 31, scope: !166)
!531 = !DILocation(line: 298, column: 12, scope: !166)
!532 = !DILocation(line: 298, column: 20, scope: !166)
!533 = !DILocation(line: 298, column: 6, scope: !166)
!534 = !DILocation(line: 297, column: 2, scope: !166)
!535 = !DILocation(line: 297, column: 7, scope: !166)
!536 = !DILocation(line: 297, column: 32, scope: !166)
!537 = !DILocation(line: 301, column: 38, scope: !166)
!538 = !DILocation(line: 301, column: 46, scope: !166)
!539 = !DILocation(line: 301, column: 32, scope: !166)
!540 = !DILocation(line: 301, column: 2, scope: !166)
!541 = !DILocation(line: 301, column: 7, scope: !166)
!542 = !DILocation(line: 301, column: 29, scope: !166)
!543 = !DILocation(line: 303, column: 12, scope: !166)
!544 = !DILocation(line: 303, column: 20, scope: !166)
!545 = !DILocation(line: 303, column: 6, scope: !166)
!546 = !DILocation(line: 302, column: 2, scope: !166)
!547 = !DILocation(line: 302, column: 7, scope: !166)
!548 = !DILocation(line: 302, column: 32, scope: !166)
!549 = !DILocation(line: 305, column: 12, scope: !166)
!550 = !DILocation(line: 305, column: 20, scope: !166)
!551 = !DILocation(line: 305, column: 6, scope: !166)
!552 = !DILocation(line: 304, column: 2, scope: !166)
!553 = !DILocation(line: 304, column: 7, scope: !166)
!554 = !DILocation(line: 304, column: 32, scope: !166)
!555 = !DILocation(line: 307, column: 31, scope: !166)
!556 = !DILocation(line: 307, column: 39, scope: !166)
!557 = !DILocation(line: 307, column: 25, scope: !166)
!558 = !DILocation(line: 307, column: 2, scope: !166)
!559 = !DILocation(line: 307, column: 7, scope: !166)
!560 = !DILocation(line: 307, column: 22, scope: !166)
!561 = !DILocation(line: 308, column: 34, scope: !166)
!562 = !DILocation(line: 308, column: 42, scope: !166)
!563 = !DILocation(line: 308, column: 28, scope: !166)
!564 = !DILocation(line: 308, column: 2, scope: !166)
!565 = !DILocation(line: 308, column: 7, scope: !166)
!566 = !DILocation(line: 308, column: 25, scope: !166)
!567 = !DILocation(line: 309, column: 34, scope: !166)
!568 = !DILocation(line: 309, column: 42, scope: !166)
!569 = !DILocation(line: 309, column: 28, scope: !166)
!570 = !DILocation(line: 309, column: 2, scope: !166)
!571 = !DILocation(line: 309, column: 7, scope: !166)
!572 = !DILocation(line: 309, column: 25, scope: !166)
!573 = !DILocation(line: 312, column: 30, scope: !166)
!574 = !DILocation(line: 312, column: 38, scope: !166)
!575 = !DILocation(line: 312, column: 24, scope: !166)
!576 = !DILocation(line: 312, column: 2, scope: !166)
!577 = !DILocation(line: 312, column: 7, scope: !166)
!578 = !DILocation(line: 312, column: 21, scope: !166)
!579 = !DILocation(line: 313, column: 31, scope: !166)
!580 = !DILocation(line: 313, column: 39, scope: !166)
!581 = !DILocation(line: 313, column: 25, scope: !166)
!582 = !DILocation(line: 313, column: 2, scope: !166)
!583 = !DILocation(line: 313, column: 7, scope: !166)
!584 = !DILocation(line: 313, column: 22, scope: !166)
!585 = !DILocation(line: 314, column: 30, scope: !166)
!586 = !DILocation(line: 314, column: 38, scope: !166)
!587 = !DILocation(line: 314, column: 24, scope: !166)
!588 = !DILocation(line: 314, column: 2, scope: !166)
!589 = !DILocation(line: 314, column: 7, scope: !166)
!590 = !DILocation(line: 314, column: 21, scope: !166)
!591 = !DILocation(line: 315, column: 31, scope: !166)
!592 = !DILocation(line: 315, column: 39, scope: !166)
!593 = !DILocation(line: 315, column: 25, scope: !166)
!594 = !DILocation(line: 315, column: 2, scope: !166)
!595 = !DILocation(line: 315, column: 7, scope: !166)
!596 = !DILocation(line: 315, column: 22, scope: !166)
!597 = !DILocation(line: 316, column: 31, scope: !166)
!598 = !DILocation(line: 316, column: 39, scope: !166)
!599 = !DILocation(line: 316, column: 25, scope: !166)
!600 = !DILocation(line: 316, column: 2, scope: !166)
!601 = !DILocation(line: 316, column: 7, scope: !166)
!602 = !DILocation(line: 316, column: 22, scope: !166)
!603 = !DILocation(line: 317, column: 32, scope: !166)
!604 = !DILocation(line: 317, column: 40, scope: !166)
!605 = !DILocation(line: 317, column: 26, scope: !166)
!606 = !DILocation(line: 317, column: 2, scope: !166)
!607 = !DILocation(line: 317, column: 7, scope: !166)
!608 = !DILocation(line: 317, column: 23, scope: !166)
!609 = !DILocation(line: 319, column: 37, scope: !166)
!610 = !DILocation(line: 319, column: 45, scope: !166)
!611 = !DILocation(line: 319, column: 31, scope: !166)
!612 = !DILocation(line: 319, column: 2, scope: !166)
!613 = !DILocation(line: 319, column: 7, scope: !166)
!614 = !DILocation(line: 319, column: 28, scope: !166)
!615 = !DILocation(line: 320, column: 38, scope: !166)
!616 = !DILocation(line: 320, column: 46, scope: !166)
!617 = !DILocation(line: 320, column: 32, scope: !166)
!618 = !DILocation(line: 320, column: 2, scope: !166)
!619 = !DILocation(line: 320, column: 7, scope: !166)
!620 = !DILocation(line: 320, column: 29, scope: !166)
!621 = !DILocation(line: 321, column: 37, scope: !166)
!622 = !DILocation(line: 321, column: 45, scope: !166)
!623 = !DILocation(line: 321, column: 31, scope: !166)
!624 = !DILocation(line: 321, column: 2, scope: !166)
!625 = !DILocation(line: 321, column: 7, scope: !166)
!626 = !DILocation(line: 321, column: 28, scope: !166)
!627 = !DILocation(line: 322, column: 38, scope: !166)
!628 = !DILocation(line: 322, column: 46, scope: !166)
!629 = !DILocation(line: 322, column: 32, scope: !166)
!630 = !DILocation(line: 322, column: 2, scope: !166)
!631 = !DILocation(line: 322, column: 7, scope: !166)
!632 = !DILocation(line: 322, column: 29, scope: !166)
!633 = !DILocation(line: 323, column: 38, scope: !166)
!634 = !DILocation(line: 323, column: 46, scope: !166)
!635 = !DILocation(line: 323, column: 32, scope: !166)
!636 = !DILocation(line: 323, column: 2, scope: !166)
!637 = !DILocation(line: 323, column: 7, scope: !166)
!638 = !DILocation(line: 323, column: 29, scope: !166)
!639 = !DILocation(line: 324, column: 39, scope: !166)
!640 = !DILocation(line: 324, column: 47, scope: !166)
!641 = !DILocation(line: 324, column: 33, scope: !166)
!642 = !DILocation(line: 324, column: 2, scope: !166)
!643 = !DILocation(line: 324, column: 7, scope: !166)
!644 = !DILocation(line: 324, column: 30, scope: !166)
!645 = !DILocation(line: 326, column: 41, scope: !166)
!646 = !DILocation(line: 326, column: 49, scope: !166)
!647 = !DILocation(line: 326, column: 35, scope: !166)
!648 = !DILocation(line: 326, column: 2, scope: !166)
!649 = !DILocation(line: 326, column: 7, scope: !166)
!650 = !DILocation(line: 326, column: 32, scope: !166)
!651 = !DILocation(line: 327, column: 37, scope: !166)
!652 = !DILocation(line: 327, column: 45, scope: !166)
!653 = !DILocation(line: 327, column: 31, scope: !166)
!654 = !DILocation(line: 327, column: 2, scope: !166)
!655 = !DILocation(line: 327, column: 7, scope: !166)
!656 = !DILocation(line: 327, column: 28, scope: !166)
!657 = !DILocation(line: 329, column: 9, scope: !166)
!658 = !DILocation(line: 329, column: 17, scope: !166)
!659 = !DILocation(line: 329, column: 3, scope: !166)
!660 = !DILocation(line: 328, column: 2, scope: !166)
!661 = !DILocation(line: 328, column: 7, scope: !166)
!662 = !DILocation(line: 328, column: 39, scope: !166)
!663 = !DILocation(line: 330, column: 43, scope: !166)
!664 = !DILocation(line: 330, column: 51, scope: !166)
!665 = !DILocation(line: 330, column: 37, scope: !166)
!666 = !DILocation(line: 330, column: 2, scope: !166)
!667 = !DILocation(line: 330, column: 7, scope: !166)
!668 = !DILocation(line: 330, column: 34, scope: !166)
!669 = !DILocation(line: 332, column: 9, scope: !166)
!670 = !DILocation(line: 332, column: 17, scope: !166)
!671 = !DILocation(line: 332, column: 3, scope: !166)
!672 = !DILocation(line: 331, column: 2, scope: !166)
!673 = !DILocation(line: 331, column: 7, scope: !166)
!674 = !DILocation(line: 331, column: 38, scope: !166)
!675 = !DILocation(line: 333, column: 41, scope: !166)
!676 = !DILocation(line: 333, column: 49, scope: !166)
!677 = !DILocation(line: 333, column: 35, scope: !166)
!678 = !DILocation(line: 333, column: 2, scope: !166)
!679 = !DILocation(line: 333, column: 7, scope: !166)
!680 = !DILocation(line: 333, column: 32, scope: !166)
!681 = !DILocation(line: 334, column: 1, scope: !166)
!682 = distinct !DISubprogram(name: "dwxgmac_mmc_ctrl", scope: !3, file: !3, line: 342, type: !24, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!683 = !DILocalVariable(name: "mmcaddr", arg: 1, scope: !682, file: !3, line: 342, type: !26)
!684 = !DILocation(line: 342, column: 44, scope: !682)
!685 = !DILocalVariable(name: "mode", arg: 2, scope: !682, file: !3, line: 342, type: !8)
!686 = !DILocation(line: 342, column: 66, scope: !682)
!687 = !DILocalVariable(name: "value", scope: !682, file: !3, line: 344, type: !135)
!688 = !DILocation(line: 344, column: 6, scope: !682)
!689 = !DILocation(line: 344, column: 20, scope: !682)
!690 = !DILocation(line: 344, column: 28, scope: !682)
!691 = !DILocation(line: 344, column: 14, scope: !682)
!692 = !DILocation(line: 346, column: 12, scope: !682)
!693 = !DILocation(line: 346, column: 17, scope: !682)
!694 = !DILocation(line: 346, column: 8, scope: !682)
!695 = !DILocation(line: 348, column: 9, scope: !682)
!696 = !DILocation(line: 348, column: 16, scope: !682)
!697 = !DILocation(line: 348, column: 24, scope: !682)
!698 = !DILocation(line: 348, column: 2, scope: !682)
!699 = !DILocation(line: 349, column: 1, scope: !682)
!700 = distinct !DISubprogram(name: "dwxgmac_mmc_intr_all_mask", scope: !3, file: !3, line: 351, type: !29, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!701 = !DILocalVariable(name: "mmcaddr", arg: 1, scope: !700, file: !3, line: 351, type: !26)
!702 = !DILocation(line: 351, column: 53, scope: !700)
!703 = !DILocation(line: 353, column: 14, scope: !700)
!704 = !DILocation(line: 353, column: 22, scope: !700)
!705 = !DILocation(line: 353, column: 2, scope: !700)
!706 = !DILocation(line: 354, column: 14, scope: !700)
!707 = !DILocation(line: 354, column: 22, scope: !700)
!708 = !DILocation(line: 354, column: 2, scope: !700)
!709 = !DILocation(line: 355, column: 27, scope: !700)
!710 = !DILocation(line: 355, column: 35, scope: !700)
!711 = !DILocation(line: 355, column: 2, scope: !700)
!712 = !DILocation(line: 356, column: 1, scope: !700)
!713 = distinct !DISubprogram(name: "dwxgmac_mmc_read", scope: !3, file: !3, line: 375, type: !33, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!714 = !DILocalVariable(name: "mmcaddr", arg: 1, scope: !713, file: !3, line: 375, type: !26)
!715 = !DILocation(line: 375, column: 44, scope: !713)
!716 = !DILocalVariable(name: "mmc", arg: 2, scope: !713, file: !3, line: 375, type: !35)
!717 = !DILocation(line: 375, column: 77, scope: !713)
!718 = !DILocation(line: 377, column: 23, scope: !713)
!719 = !DILocation(line: 378, column: 10, scope: !713)
!720 = !DILocation(line: 378, column: 15, scope: !713)
!721 = !DILocation(line: 377, column: 2, scope: !713)
!722 = !DILocation(line: 379, column: 23, scope: !713)
!723 = !DILocation(line: 380, column: 10, scope: !713)
!724 = !DILocation(line: 380, column: 15, scope: !713)
!725 = !DILocation(line: 379, column: 2, scope: !713)
!726 = !DILocation(line: 381, column: 23, scope: !713)
!727 = !DILocation(line: 382, column: 10, scope: !713)
!728 = !DILocation(line: 382, column: 15, scope: !713)
!729 = !DILocation(line: 381, column: 2, scope: !713)
!730 = !DILocation(line: 383, column: 23, scope: !713)
!731 = !DILocation(line: 384, column: 10, scope: !713)
!732 = !DILocation(line: 384, column: 15, scope: !713)
!733 = !DILocation(line: 383, column: 2, scope: !713)
!734 = !DILocation(line: 385, column: 23, scope: !713)
!735 = !DILocation(line: 386, column: 10, scope: !713)
!736 = !DILocation(line: 386, column: 15, scope: !713)
!737 = !DILocation(line: 385, column: 2, scope: !713)
!738 = !DILocation(line: 387, column: 23, scope: !713)
!739 = !DILocation(line: 388, column: 10, scope: !713)
!740 = !DILocation(line: 388, column: 15, scope: !713)
!741 = !DILocation(line: 387, column: 2, scope: !713)
!742 = !DILocation(line: 389, column: 23, scope: !713)
!743 = !DILocation(line: 390, column: 10, scope: !713)
!744 = !DILocation(line: 390, column: 15, scope: !713)
!745 = !DILocation(line: 389, column: 2, scope: !713)
!746 = !DILocation(line: 391, column: 23, scope: !713)
!747 = !DILocation(line: 392, column: 10, scope: !713)
!748 = !DILocation(line: 392, column: 15, scope: !713)
!749 = !DILocation(line: 391, column: 2, scope: !713)
!750 = !DILocation(line: 393, column: 23, scope: !713)
!751 = !DILocation(line: 394, column: 10, scope: !713)
!752 = !DILocation(line: 394, column: 15, scope: !713)
!753 = !DILocation(line: 393, column: 2, scope: !713)
!754 = !DILocation(line: 395, column: 23, scope: !713)
!755 = !DILocation(line: 396, column: 10, scope: !713)
!756 = !DILocation(line: 396, column: 15, scope: !713)
!757 = !DILocation(line: 395, column: 2, scope: !713)
!758 = !DILocation(line: 397, column: 23, scope: !713)
!759 = !DILocation(line: 398, column: 10, scope: !713)
!760 = !DILocation(line: 398, column: 15, scope: !713)
!761 = !DILocation(line: 397, column: 2, scope: !713)
!762 = !DILocation(line: 399, column: 23, scope: !713)
!763 = !DILocation(line: 400, column: 10, scope: !713)
!764 = !DILocation(line: 400, column: 15, scope: !713)
!765 = !DILocation(line: 399, column: 2, scope: !713)
!766 = !DILocation(line: 401, column: 23, scope: !713)
!767 = !DILocation(line: 402, column: 10, scope: !713)
!768 = !DILocation(line: 402, column: 15, scope: !713)
!769 = !DILocation(line: 401, column: 2, scope: !713)
!770 = !DILocation(line: 403, column: 23, scope: !713)
!771 = !DILocation(line: 404, column: 10, scope: !713)
!772 = !DILocation(line: 404, column: 15, scope: !713)
!773 = !DILocation(line: 403, column: 2, scope: !713)
!774 = !DILocation(line: 405, column: 23, scope: !713)
!775 = !DILocation(line: 406, column: 10, scope: !713)
!776 = !DILocation(line: 406, column: 15, scope: !713)
!777 = !DILocation(line: 405, column: 2, scope: !713)
!778 = !DILocation(line: 407, column: 23, scope: !713)
!779 = !DILocation(line: 408, column: 10, scope: !713)
!780 = !DILocation(line: 408, column: 15, scope: !713)
!781 = !DILocation(line: 407, column: 2, scope: !713)
!782 = !DILocation(line: 409, column: 23, scope: !713)
!783 = !DILocation(line: 410, column: 10, scope: !713)
!784 = !DILocation(line: 410, column: 15, scope: !713)
!785 = !DILocation(line: 409, column: 2, scope: !713)
!786 = !DILocation(line: 411, column: 23, scope: !713)
!787 = !DILocation(line: 412, column: 10, scope: !713)
!788 = !DILocation(line: 412, column: 15, scope: !713)
!789 = !DILocation(line: 411, column: 2, scope: !713)
!790 = !DILocation(line: 415, column: 23, scope: !713)
!791 = !DILocation(line: 416, column: 10, scope: !713)
!792 = !DILocation(line: 416, column: 15, scope: !713)
!793 = !DILocation(line: 415, column: 2, scope: !713)
!794 = !DILocation(line: 417, column: 23, scope: !713)
!795 = !DILocation(line: 418, column: 10, scope: !713)
!796 = !DILocation(line: 418, column: 15, scope: !713)
!797 = !DILocation(line: 417, column: 2, scope: !713)
!798 = !DILocation(line: 419, column: 23, scope: !713)
!799 = !DILocation(line: 420, column: 10, scope: !713)
!800 = !DILocation(line: 420, column: 15, scope: !713)
!801 = !DILocation(line: 419, column: 2, scope: !713)
!802 = !DILocation(line: 421, column: 23, scope: !713)
!803 = !DILocation(line: 422, column: 10, scope: !713)
!804 = !DILocation(line: 422, column: 15, scope: !713)
!805 = !DILocation(line: 421, column: 2, scope: !713)
!806 = !DILocation(line: 423, column: 23, scope: !713)
!807 = !DILocation(line: 424, column: 10, scope: !713)
!808 = !DILocation(line: 424, column: 15, scope: !713)
!809 = !DILocation(line: 423, column: 2, scope: !713)
!810 = !DILocation(line: 425, column: 23, scope: !713)
!811 = !DILocation(line: 426, column: 10, scope: !713)
!812 = !DILocation(line: 426, column: 15, scope: !713)
!813 = !DILocation(line: 425, column: 2, scope: !713)
!814 = !DILocation(line: 427, column: 23, scope: !713)
!815 = !DILocation(line: 428, column: 10, scope: !713)
!816 = !DILocation(line: 428, column: 15, scope: !713)
!817 = !DILocation(line: 427, column: 2, scope: !713)
!818 = !DILocation(line: 429, column: 33, scope: !713)
!819 = !DILocation(line: 429, column: 41, scope: !713)
!820 = !DILocation(line: 429, column: 27, scope: !713)
!821 = !DILocation(line: 429, column: 2, scope: !713)
!822 = !DILocation(line: 429, column: 7, scope: !713)
!823 = !DILocation(line: 429, column: 24, scope: !713)
!824 = !DILocation(line: 430, column: 36, scope: !713)
!825 = !DILocation(line: 430, column: 44, scope: !713)
!826 = !DILocation(line: 430, column: 30, scope: !713)
!827 = !DILocation(line: 430, column: 2, scope: !713)
!828 = !DILocation(line: 430, column: 7, scope: !713)
!829 = !DILocation(line: 430, column: 27, scope: !713)
!830 = !DILocation(line: 431, column: 35, scope: !713)
!831 = !DILocation(line: 431, column: 43, scope: !713)
!832 = !DILocation(line: 431, column: 29, scope: !713)
!833 = !DILocation(line: 431, column: 2, scope: !713)
!834 = !DILocation(line: 431, column: 7, scope: !713)
!835 = !DILocation(line: 431, column: 26, scope: !713)
!836 = !DILocation(line: 432, column: 34, scope: !713)
!837 = !DILocation(line: 432, column: 42, scope: !713)
!838 = !DILocation(line: 432, column: 28, scope: !713)
!839 = !DILocation(line: 432, column: 2, scope: !713)
!840 = !DILocation(line: 432, column: 7, scope: !713)
!841 = !DILocation(line: 432, column: 25, scope: !713)
!842 = !DILocation(line: 433, column: 23, scope: !713)
!843 = !DILocation(line: 434, column: 10, scope: !713)
!844 = !DILocation(line: 434, column: 15, scope: !713)
!845 = !DILocation(line: 433, column: 2, scope: !713)
!846 = !DILocation(line: 435, column: 23, scope: !713)
!847 = !DILocation(line: 436, column: 10, scope: !713)
!848 = !DILocation(line: 436, column: 15, scope: !713)
!849 = !DILocation(line: 435, column: 2, scope: !713)
!850 = !DILocation(line: 437, column: 23, scope: !713)
!851 = !DILocation(line: 438, column: 10, scope: !713)
!852 = !DILocation(line: 438, column: 15, scope: !713)
!853 = !DILocation(line: 437, column: 2, scope: !713)
!854 = !DILocation(line: 439, column: 23, scope: !713)
!855 = !DILocation(line: 440, column: 10, scope: !713)
!856 = !DILocation(line: 440, column: 15, scope: !713)
!857 = !DILocation(line: 439, column: 2, scope: !713)
!858 = !DILocation(line: 441, column: 23, scope: !713)
!859 = !DILocation(line: 442, column: 10, scope: !713)
!860 = !DILocation(line: 442, column: 15, scope: !713)
!861 = !DILocation(line: 441, column: 2, scope: !713)
!862 = !DILocation(line: 443, column: 23, scope: !713)
!863 = !DILocation(line: 444, column: 10, scope: !713)
!864 = !DILocation(line: 444, column: 15, scope: !713)
!865 = !DILocation(line: 443, column: 2, scope: !713)
!866 = !DILocation(line: 445, column: 23, scope: !713)
!867 = !DILocation(line: 446, column: 10, scope: !713)
!868 = !DILocation(line: 446, column: 15, scope: !713)
!869 = !DILocation(line: 445, column: 2, scope: !713)
!870 = !DILocation(line: 447, column: 23, scope: !713)
!871 = !DILocation(line: 448, column: 10, scope: !713)
!872 = !DILocation(line: 448, column: 15, scope: !713)
!873 = !DILocation(line: 447, column: 2, scope: !713)
!874 = !DILocation(line: 449, column: 23, scope: !713)
!875 = !DILocation(line: 450, column: 10, scope: !713)
!876 = !DILocation(line: 450, column: 15, scope: !713)
!877 = !DILocation(line: 449, column: 2, scope: !713)
!878 = !DILocation(line: 451, column: 23, scope: !713)
!879 = !DILocation(line: 452, column: 10, scope: !713)
!880 = !DILocation(line: 452, column: 15, scope: !713)
!881 = !DILocation(line: 451, column: 2, scope: !713)
!882 = !DILocation(line: 453, column: 23, scope: !713)
!883 = !DILocation(line: 454, column: 10, scope: !713)
!884 = !DILocation(line: 454, column: 15, scope: !713)
!885 = !DILocation(line: 453, column: 2, scope: !713)
!886 = !DILocation(line: 455, column: 23, scope: !713)
!887 = !DILocation(line: 456, column: 10, scope: !713)
!888 = !DILocation(line: 456, column: 15, scope: !713)
!889 = !DILocation(line: 455, column: 2, scope: !713)
!890 = !DILocation(line: 457, column: 38, scope: !713)
!891 = !DILocation(line: 457, column: 46, scope: !713)
!892 = !DILocation(line: 457, column: 32, scope: !713)
!893 = !DILocation(line: 457, column: 2, scope: !713)
!894 = !DILocation(line: 457, column: 7, scope: !713)
!895 = !DILocation(line: 457, column: 29, scope: !713)
!896 = !DILocation(line: 459, column: 41, scope: !713)
!897 = !DILocation(line: 459, column: 49, scope: !713)
!898 = !DILocation(line: 459, column: 35, scope: !713)
!899 = !DILocation(line: 459, column: 2, scope: !713)
!900 = !DILocation(line: 459, column: 7, scope: !713)
!901 = !DILocation(line: 459, column: 32, scope: !713)
!902 = !DILocation(line: 460, column: 37, scope: !713)
!903 = !DILocation(line: 460, column: 45, scope: !713)
!904 = !DILocation(line: 460, column: 31, scope: !713)
!905 = !DILocation(line: 460, column: 2, scope: !713)
!906 = !DILocation(line: 460, column: 7, scope: !713)
!907 = !DILocation(line: 460, column: 28, scope: !713)
!908 = !DILocation(line: 462, column: 9, scope: !713)
!909 = !DILocation(line: 462, column: 17, scope: !713)
!910 = !DILocation(line: 462, column: 3, scope: !713)
!911 = !DILocation(line: 461, column: 2, scope: !713)
!912 = !DILocation(line: 461, column: 7, scope: !713)
!913 = !DILocation(line: 461, column: 39, scope: !713)
!914 = !DILocation(line: 464, column: 9, scope: !713)
!915 = !DILocation(line: 464, column: 17, scope: !713)
!916 = !DILocation(line: 464, column: 3, scope: !713)
!917 = !DILocation(line: 463, column: 2, scope: !713)
!918 = !DILocation(line: 463, column: 7, scope: !713)
!919 = !DILocation(line: 463, column: 34, scope: !713)
!920 = !DILocation(line: 466, column: 9, scope: !713)
!921 = !DILocation(line: 466, column: 17, scope: !713)
!922 = !DILocation(line: 466, column: 3, scope: !713)
!923 = !DILocation(line: 465, column: 2, scope: !713)
!924 = !DILocation(line: 465, column: 7, scope: !713)
!925 = !DILocation(line: 465, column: 38, scope: !713)
!926 = !DILocation(line: 468, column: 9, scope: !713)
!927 = !DILocation(line: 468, column: 17, scope: !713)
!928 = !DILocation(line: 468, column: 3, scope: !713)
!929 = !DILocation(line: 467, column: 2, scope: !713)
!930 = !DILocation(line: 467, column: 7, scope: !713)
!931 = !DILocation(line: 467, column: 32, scope: !713)
!932 = !DILocation(line: 469, column: 1, scope: !713)
!933 = distinct !DISubprogram(name: "readl", scope: !934, file: !934, line: 59, type: !935, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!934 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!935 = !DISubroutineType(types: !936)
!936 = !{!8, !937}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !939)
!939 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!940 = !DILocalVariable(name: "addr", arg: 1, scope: !933, file: !934, line: 59, type: !937)
!941 = !DILocation(line: 59, column: 1, scope: !933)
!942 = !DILocalVariable(name: "ret", scope: !933, file: !934, line: 59, type: !8)
!943 = !{i32 -2146510499}
!944 = distinct !DISubprogram(name: "writel", scope: !934, file: !934, line: 67, type: !945, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !8, !947}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!948 = !DILocalVariable(name: "val", arg: 1, scope: !944, file: !934, line: 67, type: !8)
!949 = !DILocation(line: 67, column: 1, scope: !944)
!950 = !DILocalVariable(name: "addr", arg: 2, scope: !944, file: !934, line: 67, type: !947)
!951 = !{i32 -2146508106}
!952 = distinct !DISubprogram(name: "dwxgmac_read_mmc_reg", scope: !3, file: !3, line: 358, type: !953, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !26, !135, !955}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!956 = !DILocalVariable(name: "addr", arg: 1, scope: !952, file: !3, line: 358, type: !26)
!957 = !DILocation(line: 358, column: 48, scope: !952)
!958 = !DILocalVariable(name: "reg", arg: 2, scope: !952, file: !3, line: 358, type: !135)
!959 = !DILocation(line: 358, column: 58, scope: !952)
!960 = !DILocalVariable(name: "dest", arg: 3, scope: !952, file: !3, line: 358, type: !955)
!961 = !DILocation(line: 358, column: 68, scope: !952)
!962 = !DILocalVariable(name: "tmp", scope: !952, file: !3, line: 360, type: !9)
!963 = !DILocation(line: 360, column: 6, scope: !952)
!964 = !DILocation(line: 362, column: 15, scope: !952)
!965 = !DILocation(line: 362, column: 22, scope: !952)
!966 = !DILocation(line: 362, column: 20, scope: !952)
!967 = !DILocation(line: 362, column: 9, scope: !952)
!968 = !DILocation(line: 362, column: 6, scope: !952)
!969 = !DILocation(line: 363, column: 22, scope: !952)
!970 = !DILocation(line: 363, column: 29, scope: !952)
!971 = !DILocation(line: 363, column: 27, scope: !952)
!972 = !DILocation(line: 363, column: 33, scope: !952)
!973 = !DILocation(line: 363, column: 16, scope: !952)
!974 = !DILocation(line: 363, column: 10, scope: !952)
!975 = !DILocation(line: 363, column: 41, scope: !952)
!976 = !DILocation(line: 363, column: 6, scope: !952)
!977 = !DILocation(line: 364, column: 6, scope: !978)
!978 = distinct !DILexicalBlock(scope: !952, file: !3, line: 364, column: 6)
!979 = !DILocation(line: 364, column: 10, scope: !978)
!980 = !DILocation(line: 364, column: 6, scope: !952)
!981 = !DILocation(line: 365, column: 4, scope: !978)
!982 = !DILocation(line: 365, column: 9, scope: !978)
!983 = !DILocation(line: 365, column: 3, scope: !978)
!984 = !DILocation(line: 367, column: 12, scope: !978)
!985 = !DILocation(line: 367, column: 11, scope: !978)
!986 = !DILocation(line: 367, column: 19, scope: !978)
!987 = !DILocation(line: 367, column: 17, scope: !978)
!988 = !DILocation(line: 367, column: 4, scope: !978)
!989 = !DILocation(line: 367, column: 9, scope: !978)
!990 = !DILocation(line: 368, column: 1, scope: !952)
