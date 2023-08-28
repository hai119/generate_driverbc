; ModuleID = '../bcout/drivers/net/phy/linkmode.llvm.bc'
source_filename = "drivers/net/phy/linkmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @linkmode_resolve_pause(i64* %local_adv, i64* %partner_adv, i8* %tx_pause, i8* %rx_pause) #0 !dbg !116 {
entry:
  %local_adv.addr = alloca i64*, align 8
  %partner_adv.addr = alloca i64*, align 8
  %tx_pause.addr = alloca i8*, align 8
  %rx_pause.addr = alloca i8*, align 8
  %m = alloca [2 x i64], align 16
  store i64* %local_adv, i64** %local_adv.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %local_adv.addr, metadata !126, metadata !DIExpression()), !dbg !127
  store i64* %partner_adv, i64** %partner_adv.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %partner_adv.addr, metadata !128, metadata !DIExpression()), !dbg !129
  store i8* %tx_pause, i8** %tx_pause.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %tx_pause.addr, metadata !130, metadata !DIExpression()), !dbg !131
  store i8* %rx_pause, i8** %rx_pause.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %rx_pause.addr, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata [2 x i64]* %m, metadata !134, metadata !DIExpression()), !dbg !138
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %m, i64 0, i64 0, !dbg !139
  %0 = load i64*, i64** %local_adv.addr, align 8, !dbg !140
  %1 = load i64*, i64** %partner_adv.addr, align 8, !dbg !141
  call void @linkmode_and(i64* %arraydecay, i64* %0, i64* %1) #4, !dbg !142
  %arraydecay1 = getelementptr inbounds [2 x i64], [2 x i64]* %m, i64 0, i64 0, !dbg !143
  %call = call i32 @linkmode_test_bit(i32 13, i64* %arraydecay1) #4, !dbg !145
  %tobool = icmp ne i32 %call, 0, !dbg !145
  br i1 %tobool, label %if.then, label %if.else, !dbg !146

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %tx_pause.addr, align 8, !dbg !147
  store i8 1, i8* %2, align 1, !dbg !149
  %3 = load i8*, i8** %rx_pause.addr, align 8, !dbg !150
  store i8 1, i8* %3, align 1, !dbg !151
  br label %if.end12, !dbg !152

if.else:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [2 x i64], [2 x i64]* %m, i64 0, i64 0, !dbg !153
  %call3 = call i32 @linkmode_test_bit(i32 14, i64* %arraydecay2) #4, !dbg !155
  %tobool4 = icmp ne i32 %call3, 0, !dbg !155
  br i1 %tobool4, label %if.then5, label %if.else11, !dbg !156

if.then5:                                         ; preds = %if.else
  %4 = load i64*, i64** %partner_adv.addr, align 8, !dbg !157
  %call6 = call i32 @linkmode_test_bit(i32 13, i64* %4) #4, !dbg !159
  %tobool7 = icmp ne i32 %call6, 0, !dbg !159
  %5 = load i8*, i8** %tx_pause.addr, align 8, !dbg !160
  %frombool = zext i1 %tobool7 to i8, !dbg !161
  store i8 %frombool, i8* %5, align 1, !dbg !161
  %6 = load i64*, i64** %local_adv.addr, align 8, !dbg !162
  %call8 = call i32 @linkmode_test_bit(i32 13, i64* %6) #4, !dbg !163
  %tobool9 = icmp ne i32 %call8, 0, !dbg !163
  %7 = load i8*, i8** %rx_pause.addr, align 8, !dbg !164
  %frombool10 = zext i1 %tobool9 to i8, !dbg !165
  store i8 %frombool10, i8* %7, align 1, !dbg !165
  br label %if.end, !dbg !166

if.else11:                                        ; preds = %if.else
  %8 = load i8*, i8** %tx_pause.addr, align 8, !dbg !167
  store i8 0, i8* %8, align 1, !dbg !169
  %9 = load i8*, i8** %rx_pause.addr, align 8, !dbg !170
  store i8 0, i8* %9, align 1, !dbg !171
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then5
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  ret void, !dbg !172
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @linkmode_and(i64* %dst, i64* %a, i64* %b) #0 !dbg !173 {
entry:
  %dst.addr = alloca i64*, align 8
  %a.addr = alloca i64*, align 8
  %b.addr = alloca i64*, align 8
  store i64* %dst, i64** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dst.addr, metadata !177, metadata !DIExpression()), !dbg !178
  store i64* %a, i64** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %a.addr, metadata !179, metadata !DIExpression()), !dbg !180
  store i64* %b, i64** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %b.addr, metadata !181, metadata !DIExpression()), !dbg !182
  %0 = load i64*, i64** %dst.addr, align 8, !dbg !183
  %1 = load i64*, i64** %a.addr, align 8, !dbg !184
  %2 = load i64*, i64** %b.addr, align 8, !dbg !185
  %call = call i32 @bitmap_and(i64* %0, i64* %1, i64* %2, i32 92) #4, !dbg !186
  ret void, !dbg !187
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @linkmode_test_bit(i32 %nr, i64* %addr) #0 !dbg !188 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca i64*, align 8
  store i32 %nr, i32* %nr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr.addr, metadata !195, metadata !DIExpression()), !dbg !196
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !197, metadata !DIExpression()), !dbg !198
  %0 = load i32, i32* %nr.addr, align 4, !dbg !199
  %conv = sext i32 %0 to i64, !dbg !199
  %1 = load i64*, i64** %addr.addr, align 8, !dbg !200
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %1) #4, !dbg !201
  %conv1 = zext i1 %call to i32, !dbg !201
  ret i32 %conv1, !dbg !202
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @linkmode_set_pause(i64* %advertisement, i1 zeroext %tx, i1 zeroext %rx) #0 !dbg !203 {
entry:
  %advertisement.addr = alloca i64*, align 8
  %tx.addr = alloca i8, align 1
  %rx.addr = alloca i8, align 1
  store i64* %advertisement, i64** %advertisement.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %advertisement.addr, metadata !206, metadata !DIExpression()), !dbg !207
  %frombool = zext i1 %tx to i8
  store i8 %frombool, i8* %tx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tx.addr, metadata !208, metadata !DIExpression()), !dbg !209
  %frombool1 = zext i1 %rx to i8
  store i8 %frombool1, i8* %rx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rx.addr, metadata !210, metadata !DIExpression()), !dbg !211
  %0 = load i64*, i64** %advertisement.addr, align 8, !dbg !212
  %1 = load i8, i8* %rx.addr, align 1, !dbg !213
  %tobool = trunc i8 %1 to i1, !dbg !213
  %conv = zext i1 %tobool to i32, !dbg !213
  call void @linkmode_mod_bit(i32 13, i64* %0, i32 %conv) #4, !dbg !214
  %2 = load i64*, i64** %advertisement.addr, align 8, !dbg !215
  %3 = load i8, i8* %rx.addr, align 1, !dbg !216
  %tobool2 = trunc i8 %3 to i1, !dbg !216
  %conv3 = zext i1 %tobool2 to i32, !dbg !216
  %4 = load i8, i8* %tx.addr, align 1, !dbg !217
  %tobool4 = trunc i8 %4 to i1, !dbg !217
  %conv5 = zext i1 %tobool4 to i32, !dbg !217
  %xor = xor i32 %conv3, %conv5, !dbg !218
  call void @linkmode_mod_bit(i32 14, i64* %2, i32 %xor) #4, !dbg !219
  ret void, !dbg !220
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @linkmode_mod_bit(i32 %nr, i64* %addr, i32 %set) #0 !dbg !221 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca i64*, align 8
  %set.addr = alloca i32, align 4
  store i32 %nr, i32* %nr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr.addr, metadata !225, metadata !DIExpression()), !dbg !226
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !227, metadata !DIExpression()), !dbg !228
  store i32 %set, i32* %set.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %set.addr, metadata !229, metadata !DIExpression()), !dbg !230
  %0 = load i32, i32* %set.addr, align 4, !dbg !231
  %tobool = icmp ne i32 %0, 0, !dbg !231
  br i1 %tobool, label %if.then, label %if.else, !dbg !233

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %nr.addr, align 4, !dbg !234
  %2 = load i64*, i64** %addr.addr, align 8, !dbg !235
  call void @linkmode_set_bit(i32 %1, i64* %2) #4, !dbg !236
  br label %if.end, !dbg !236

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %nr.addr, align 4, !dbg !237
  %4 = load i64*, i64** %addr.addr, align 8, !dbg !238
  call void @linkmode_clear_bit(i32 %3, i64* %4) #4, !dbg !239
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !240
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bitmap_and(i64* %dst, i64* %src1, i64* %src2, i32 %nbits) #0 !dbg !241 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca i64*, align 8
  %src1.addr = alloca i64*, align 8
  %src2.addr = alloca i64*, align 8
  %nbits.addr = alloca i32, align 4
  store i64* %dst, i64** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dst.addr, metadata !245, metadata !DIExpression()), !dbg !246
  store i64* %src1, i64** %src1.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %src1.addr, metadata !247, metadata !DIExpression()), !dbg !248
  store i64* %src2, i64** %src2.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %src2.addr, metadata !249, metadata !DIExpression()), !dbg !250
  store i32 %nbits, i32* %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !251, metadata !DIExpression()), !dbg !252
  %0 = load i32, i32* %nbits.addr, align 4, !dbg !253
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !253
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !253

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %nbits.addr, align 4, !dbg !253
  %cmp = icmp ule i32 %2, 64, !dbg !253
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !253

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %nbits.addr, align 4, !dbg !253
  %cmp2 = icmp ugt i32 %3, 0, !dbg !253
  br i1 %cmp2, label %if.then, label %if.end, !dbg !255

if.then:                                          ; preds = %land.lhs.true1
  %4 = load i64*, i64** %src1.addr, align 8, !dbg !256
  %5 = load i64, i64* %4, align 8, !dbg !257
  %6 = load i64*, i64** %src2.addr, align 8, !dbg !258
  %7 = load i64, i64* %6, align 8, !dbg !259
  %and = and i64 %5, %7, !dbg !260
  %8 = load i32, i32* %nbits.addr, align 4, !dbg !261
  %sub = sub i32 0, %8, !dbg !261
  %and3 = and i32 %sub, 63, !dbg !261
  %sh_prom = zext i32 %and3 to i64, !dbg !261
  %shr = lshr i64 -1, %sh_prom, !dbg !261
  %and4 = and i64 %and, %shr, !dbg !262
  %9 = load i64*, i64** %dst.addr, align 8, !dbg !263
  store i64 %and4, i64* %9, align 8, !dbg !264
  %cmp5 = icmp ne i64 %and4, 0, !dbg !265
  %conv = zext i1 %cmp5 to i32, !dbg !265
  store i32 %conv, i32* %retval, align 4, !dbg !266
  br label %return, !dbg !266

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %10 = load i64*, i64** %dst.addr, align 8, !dbg !267
  %11 = load i64*, i64** %src1.addr, align 8, !dbg !268
  %12 = load i64*, i64** %src2.addr, align 8, !dbg !269
  %13 = load i32, i32* %nbits.addr, align 4, !dbg !270
  %call = call i32 @__bitmap_and(i64* %10, i64* %11, i64* %12, i32 %13) #4, !dbg !271
  store i32 %call, i32* %retval, align 4, !dbg !272
  br label %return, !dbg !272

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !273
  ret i32 %14, !dbg !273
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @__bitmap_and(i64*, i64*, i64*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !274 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !278, metadata !DIExpression()), !dbg !281
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !283, metadata !DIExpression()), !dbg !284
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !285, metadata !DIExpression()), !dbg !286
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !287, metadata !DIExpression()), !dbg !289
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !291, metadata !DIExpression()), !dbg !292
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !293, metadata !DIExpression()), !dbg !305
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !307, metadata !DIExpression()), !dbg !308
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !309, metadata !DIExpression()), !dbg !310
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !313
  %1 = load i64, i64* %nr.addr, align 8, !dbg !314
  %div = sdiv i64 %1, 64, !dbg !314
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !315
  %2 = bitcast i64* %add.ptr to i8*, !dbg !313
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !316
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !317
  %conv.i = trunc i64 %4 to i32, !dbg !317
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #5, !dbg !318
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !319
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !319
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #5, !dbg !319
  %7 = load i64, i64* %nr.addr, align 8, !dbg !320
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !320
  br i1 %8, label %cond.true, label %cond.false, !dbg !320

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !320
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !320
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !321
  %and.i = and i64 %11, 63, !dbg !322
  %shl.i = shl i64 1, %and.i, !dbg !323
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !324
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !325
  %shr.i = ashr i64 %13, 6, !dbg !326
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !324
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !324
  %and1.i = and i64 %shl.i, %14, !dbg !327
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !328
  %conv = zext i1 %cmp.i to i32, !dbg !320
  br label %cond.end, !dbg !320

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !320
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !320
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !329
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !330
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #6, !dbg !331, !srcloc !332
  store i8 %19, i8* %oldbit.i, align 1, !dbg !331
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !333
  %tobool.i = trunc i8 %20 to i1, !dbg !333
  %conv2 = zext i1 %tobool.i to i32, !dbg !320
  br label %cond.end, !dbg !320

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !320
  %tobool = icmp ne i32 %cond, 0, !dbg !320
  ret i1 %tobool, !dbg !334
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !335 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !339, metadata !DIExpression()), !dbg !340
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !341, metadata !DIExpression()), !dbg !342
  ret i1 true, !dbg !343
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !344 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !348, metadata !DIExpression()), !dbg !349
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !350, metadata !DIExpression()), !dbg !351
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !352, metadata !DIExpression()), !dbg !353
  ret void, !dbg !354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @linkmode_set_bit(i32 %nr, i64* %addr) #0 !dbg !355 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca i64*, align 8
  store i32 %nr, i32* %nr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr.addr, metadata !358, metadata !DIExpression()), !dbg !359
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !360, metadata !DIExpression()), !dbg !361
  %0 = load i32, i32* %nr.addr, align 4, !dbg !362
  %conv = sext i32 %0 to i64, !dbg !362
  %1 = load i64*, i64** %addr.addr, align 8, !dbg !363
  call void @__set_bit(i64 %conv, i64* %1) #4, !dbg !364
  ret void, !dbg !365
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @linkmode_clear_bit(i32 %nr, i64* %addr) #0 !dbg !366 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca i64*, align 8
  store i32 %nr, i32* %nr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr.addr, metadata !367, metadata !DIExpression()), !dbg !368
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i32, i32* %nr.addr, align 4, !dbg !371
  %conv = sext i32 %0 to i64, !dbg !371
  %1 = load i64*, i64** %addr.addr, align 8, !dbg !372
  call void @__clear_bit(i64 %conv, i64* %1) #4, !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #0 !dbg !375 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !378, metadata !DIExpression()), !dbg !380
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !382, metadata !DIExpression()), !dbg !383
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !384, metadata !DIExpression()), !dbg !386
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !388, metadata !DIExpression()), !dbg !389
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !390, metadata !DIExpression()), !dbg !391
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !394
  %1 = load i64, i64* %nr.addr, align 8, !dbg !395
  %div = sdiv i64 %1, 64, !dbg !395
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !396
  %2 = bitcast i64* %add.ptr to i8*, !dbg !394
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !397
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !398
  %conv.i = trunc i64 %4 to i32, !dbg !398
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #5, !dbg !399
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !400
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !400
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #5, !dbg !400
  %7 = load i64, i64* %nr.addr, align 8, !dbg !401
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !402
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !403
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !404
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #6, !dbg !405, !srcloc !406
  ret void, !dbg !407
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !408 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !409, metadata !DIExpression()), !dbg !410
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !411, metadata !DIExpression()), !dbg !412
  ret i1 true, !dbg !413
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__clear_bit(i64 %nr, i64* %addr) #0 !dbg !414 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !415, metadata !DIExpression()), !dbg !417
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !419, metadata !DIExpression()), !dbg !420
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !384, metadata !DIExpression()), !dbg !421
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !388, metadata !DIExpression()), !dbg !423
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !424, metadata !DIExpression()), !dbg !425
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !428
  %1 = load i64, i64* %nr.addr, align 8, !dbg !429
  %div = sdiv i64 %1, 64, !dbg !429
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !430
  %2 = bitcast i64* %add.ptr to i8*, !dbg !428
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !431
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !432
  %conv.i = trunc i64 %4 to i32, !dbg !432
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #5, !dbg !433
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !434
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !434
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #5, !dbg !434
  %7 = load i64, i64* %nr.addr, align 8, !dbg !435
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !436
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !437
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !438
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #6, !dbg !439, !srcloc !440
  ret void, !dbg !441
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { noredzone nounwind }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !105, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/net/phy/linkmode.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !100}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ethtool_link_mode_bit_indices", file: !4, line: 1521, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/uapi/linux/ethtool.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!7 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10baseT_Half_BIT", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10baseT_Full_BIT", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseT_Half_BIT", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseT_Full_BIT", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseT_Half_BIT", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseT_Full_BIT", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_Autoneg_BIT", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_TP_BIT", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_AUI_BIT", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_MII_BIT", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FIBRE_BIT", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_BNC_BIT", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseT_Full_BIT", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_Pause_BIT", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_Asym_Pause_BIT", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_2500baseX_Full_BIT", value: 15, isUnsigned: true)
!23 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_Backplane_BIT", value: 16, isUnsigned: true)
!24 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseKX_Full_BIT", value: 17, isUnsigned: true)
!25 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT", value: 18, isUnsigned: true)
!26 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseKR_Full_BIT", value: 19, isUnsigned: true)
!27 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseR_FEC_BIT", value: 20, isUnsigned: true)
!28 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_20000baseMLD2_Full_BIT", value: 21, isUnsigned: true)
!29 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_20000baseKR2_Full_BIT", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT", value: 23, isUnsigned: true)
!31 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_40000baseCR4_Full_BIT", value: 24, isUnsigned: true)
!32 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_40000baseSR4_Full_BIT", value: 25, isUnsigned: true)
!33 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_40000baseLR4_Full_BIT", value: 26, isUnsigned: true)
!34 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_56000baseKR4_Full_BIT", value: 27, isUnsigned: true)
!35 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_56000baseCR4_Full_BIT", value: 28, isUnsigned: true)
!36 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_56000baseSR4_Full_BIT", value: 29, isUnsigned: true)
!37 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_56000baseLR4_Full_BIT", value: 30, isUnsigned: true)
!38 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_25000baseCR_Full_BIT", value: 31, isUnsigned: true)
!39 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_25000baseKR_Full_BIT", value: 32, isUnsigned: true)
!40 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_25000baseSR_Full_BIT", value: 33, isUnsigned: true)
!41 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseCR2_Full_BIT", value: 34, isUnsigned: true)
!42 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseKR2_Full_BIT", value: 35, isUnsigned: true)
!43 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseKR4_Full_BIT", value: 36, isUnsigned: true)
!44 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseSR4_Full_BIT", value: 37, isUnsigned: true)
!45 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseCR4_Full_BIT", value: 38, isUnsigned: true)
!46 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT", value: 39, isUnsigned: true)
!47 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseSR2_Full_BIT", value: 40, isUnsigned: true)
!48 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseX_Full_BIT", value: 41, isUnsigned: true)
!49 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseCR_Full_BIT", value: 42, isUnsigned: true)
!50 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseSR_Full_BIT", value: 43, isUnsigned: true)
!51 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseLR_Full_BIT", value: 44, isUnsigned: true)
!52 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseLRM_Full_BIT", value: 45, isUnsigned: true)
!53 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseER_Full_BIT", value: 46, isUnsigned: true)
!54 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_2500baseT_Full_BIT", value: 47, isUnsigned: true)
!55 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_5000baseT_Full_BIT", value: 48, isUnsigned: true)
!56 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FEC_NONE_BIT", value: 49, isUnsigned: true)
!57 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FEC_RS_BIT", value: 50, isUnsigned: true)
!58 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FEC_BASER_BIT", value: 51, isUnsigned: true)
!59 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseKR_Full_BIT", value: 52, isUnsigned: true)
!60 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseSR_Full_BIT", value: 53, isUnsigned: true)
!61 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseCR_Full_BIT", value: 54, isUnsigned: true)
!62 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseLR_ER_FR_Full_BIT", value: 55, isUnsigned: true)
!63 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseDR_Full_BIT", value: 56, isUnsigned: true)
!64 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseKR2_Full_BIT", value: 57, isUnsigned: true)
!65 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseSR2_Full_BIT", value: 58, isUnsigned: true)
!66 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseCR2_Full_BIT", value: 59, isUnsigned: true)
!67 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseLR2_ER2_FR2_Full_BIT", value: 60, isUnsigned: true)
!68 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseDR2_Full_BIT", value: 61, isUnsigned: true)
!69 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseKR4_Full_BIT", value: 62, isUnsigned: true)
!70 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseSR4_Full_BIT", value: 63, isUnsigned: true)
!71 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseLR4_ER4_FR4_Full_BIT", value: 64, isUnsigned: true)
!72 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseDR4_Full_BIT", value: 65, isUnsigned: true)
!73 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseCR4_Full_BIT", value: 66, isUnsigned: true)
!74 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseT1_Full_BIT", value: 67, isUnsigned: true)
!75 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseT1_Full_BIT", value: 68, isUnsigned: true)
!76 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseKR8_Full_BIT", value: 69, isUnsigned: true)
!77 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseSR8_Full_BIT", value: 70, isUnsigned: true)
!78 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseLR8_ER8_FR8_Full_BIT", value: 71, isUnsigned: true)
!79 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseDR8_Full_BIT", value: 72, isUnsigned: true)
!80 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseCR8_Full_BIT", value: 73, isUnsigned: true)
!81 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FEC_LLRS_BIT", value: 74, isUnsigned: true)
!82 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseKR_Full_BIT", value: 75, isUnsigned: true)
!83 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseSR_Full_BIT", value: 76, isUnsigned: true)
!84 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseLR_ER_FR_Full_BIT", value: 77, isUnsigned: true)
!85 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseCR_Full_BIT", value: 78, isUnsigned: true)
!86 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseDR_Full_BIT", value: 79, isUnsigned: true)
!87 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseKR2_Full_BIT", value: 80, isUnsigned: true)
!88 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseSR2_Full_BIT", value: 81, isUnsigned: true)
!89 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseLR2_ER2_FR2_Full_BIT", value: 82, isUnsigned: true)
!90 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseDR2_Full_BIT", value: 83, isUnsigned: true)
!91 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseCR2_Full_BIT", value: 84, isUnsigned: true)
!92 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseKR4_Full_BIT", value: 85, isUnsigned: true)
!93 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseSR4_Full_BIT", value: 86, isUnsigned: true)
!94 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseLR4_ER4_FR4_Full_BIT", value: 87, isUnsigned: true)
!95 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseDR4_Full_BIT", value: 88, isUnsigned: true)
!96 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseCR4_Full_BIT", value: 89, isUnsigned: true)
!97 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseFX_Half_BIT", value: 90, isUnsigned: true)
!98 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseFX_Full_BIT", value: 91, isUnsigned: true)
!99 = !DIEnumerator(name: "__ETHTOOL_LINK_MODE_MASK_NBITS", value: 92, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 10, baseType: !5, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!105 = !{!106, !108}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !110)
!110 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!111 = !{i32 7, !"Dwarf Version", i32 4}
!112 = !{i32 2, !"Debug Info Version", i32 3}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"Code Model", i32 2}
!115 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!116 = distinct !DISubprogram(name: "linkmode_resolve_pause", scope: !1, file: !1, line: 24, type: !117, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !125)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !119, !119, !121, !121}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !123, line: 30, baseType: !124)
!123 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!124 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!125 = !{}
!126 = !DILocalVariable(name: "local_adv", arg: 1, scope: !116, file: !1, line: 24, type: !119)
!127 = !DILocation(line: 24, column: 50, scope: !116)
!128 = !DILocalVariable(name: "partner_adv", arg: 2, scope: !116, file: !1, line: 25, type: !119)
!129 = !DILocation(line: 25, column: 29, scope: !116)
!130 = !DILocalVariable(name: "tx_pause", arg: 3, scope: !116, file: !1, line: 26, type: !121)
!131 = !DILocation(line: 26, column: 14, scope: !116)
!132 = !DILocalVariable(name: "rx_pause", arg: 4, scope: !116, file: !1, line: 26, type: !121)
!133 = !DILocation(line: 26, column: 30, scope: !116)
!134 = !DILocalVariable(name: "m", scope: !116, file: !1, line: 28, type: !135)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 2)
!138 = !DILocation(line: 28, column: 2, scope: !116)
!139 = !DILocation(line: 30, column: 15, scope: !116)
!140 = !DILocation(line: 30, column: 18, scope: !116)
!141 = !DILocation(line: 30, column: 29, scope: !116)
!142 = !DILocation(line: 30, column: 2, scope: !116)
!143 = !DILocation(line: 31, column: 53, scope: !144)
!144 = distinct !DILexicalBlock(scope: !116, file: !1, line: 31, column: 6)
!145 = !DILocation(line: 31, column: 6, scope: !144)
!146 = !DILocation(line: 31, column: 6, scope: !116)
!147 = !DILocation(line: 32, column: 4, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !1, line: 31, column: 57)
!149 = !DILocation(line: 32, column: 13, scope: !148)
!150 = !DILocation(line: 33, column: 4, scope: !148)
!151 = !DILocation(line: 33, column: 13, scope: !148)
!152 = !DILocation(line: 34, column: 2, scope: !148)
!153 = !DILocation(line: 34, column: 65, scope: !154)
!154 = distinct !DILexicalBlock(scope: !144, file: !1, line: 34, column: 13)
!155 = !DILocation(line: 34, column: 13, scope: !154)
!156 = !DILocation(line: 34, column: 13, scope: !144)
!157 = !DILocation(line: 36, column: 12, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !1, line: 34, column: 69)
!159 = !DILocation(line: 35, column: 15, scope: !158)
!160 = !DILocation(line: 35, column: 4, scope: !158)
!161 = !DILocation(line: 35, column: 13, scope: !158)
!162 = !DILocation(line: 38, column: 12, scope: !158)
!163 = !DILocation(line: 37, column: 15, scope: !158)
!164 = !DILocation(line: 37, column: 4, scope: !158)
!165 = !DILocation(line: 37, column: 13, scope: !158)
!166 = !DILocation(line: 39, column: 2, scope: !158)
!167 = !DILocation(line: 40, column: 4, scope: !168)
!168 = distinct !DILexicalBlock(scope: !154, file: !1, line: 39, column: 9)
!169 = !DILocation(line: 40, column: 13, scope: !168)
!170 = !DILocation(line: 41, column: 4, scope: !168)
!171 = !DILocation(line: 41, column: 13, scope: !168)
!172 = !DILocation(line: 43, column: 1, scope: !116)
!173 = distinct !DISubprogram(name: "linkmode_and", scope: !174, file: !174, line: 18, type: !175, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!174 = !DIFile(filename: "./include/linux/linkmode.h", directory: "/home/lizy2001/genbc/linux")
!175 = !DISubroutineType(types: !176)
!176 = !{null, !106, !119, !119}
!177 = !DILocalVariable(name: "dst", arg: 1, scope: !173, file: !174, line: 18, type: !106)
!178 = !DILocation(line: 18, column: 48, scope: !173)
!179 = !DILocalVariable(name: "a", arg: 2, scope: !173, file: !174, line: 18, type: !119)
!180 = !DILocation(line: 18, column: 74, scope: !173)
!181 = !DILocalVariable(name: "b", arg: 3, scope: !173, file: !174, line: 19, type: !119)
!182 = !DILocation(line: 19, column: 26, scope: !173)
!183 = !DILocation(line: 21, column: 13, scope: !173)
!184 = !DILocation(line: 21, column: 18, scope: !173)
!185 = !DILocation(line: 21, column: 21, scope: !173)
!186 = !DILocation(line: 21, column: 2, scope: !173)
!187 = !DILocation(line: 22, column: 1, scope: !173)
!188 = distinct !DISubprogram(name: "linkmode_test_bit", scope: !174, file: !174, line: 74, type: !189, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!189 = !DISubroutineType(types: !190)
!190 = !{!191, !191, !192}
!191 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !107)
!195 = !DILocalVariable(name: "nr", arg: 1, scope: !188, file: !174, line: 74, type: !191)
!196 = !DILocation(line: 74, column: 41, scope: !188)
!197 = !DILocalVariable(name: "addr", arg: 2, scope: !188, file: !174, line: 74, type: !192)
!198 = !DILocation(line: 74, column: 75, scope: !188)
!199 = !DILocation(line: 76, column: 18, scope: !188)
!200 = !DILocation(line: 76, column: 22, scope: !188)
!201 = !DILocation(line: 76, column: 9, scope: !188)
!202 = !DILocation(line: 76, column: 2, scope: !188)
!203 = distinct !DISubprogram(name: "linkmode_set_pause", scope: !1, file: !1, line: 89, type: !204, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !125)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !106, !122, !122}
!206 = !DILocalVariable(name: "advertisement", arg: 1, scope: !203, file: !1, line: 89, type: !106)
!207 = !DILocation(line: 89, column: 40, scope: !203)
!208 = !DILocalVariable(name: "tx", arg: 2, scope: !203, file: !1, line: 89, type: !122)
!209 = !DILocation(line: 89, column: 60, scope: !203)
!210 = !DILocalVariable(name: "rx", arg: 3, scope: !203, file: !1, line: 89, type: !122)
!211 = !DILocation(line: 89, column: 69, scope: !203)
!212 = !DILocation(line: 91, column: 48, scope: !203)
!213 = !DILocation(line: 91, column: 63, scope: !203)
!214 = !DILocation(line: 91, column: 2, scope: !203)
!215 = !DILocation(line: 92, column: 53, scope: !203)
!216 = !DILocation(line: 93, column: 5, scope: !203)
!217 = !DILocation(line: 93, column: 10, scope: !203)
!218 = !DILocation(line: 93, column: 8, scope: !203)
!219 = !DILocation(line: 92, column: 2, scope: !203)
!220 = !DILocation(line: 94, column: 1, scope: !203)
!221 = distinct !DISubprogram(name: "linkmode_mod_bit", scope: !174, file: !174, line: 60, type: !222, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !191, !224, !191}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!225 = !DILocalVariable(name: "nr", arg: 1, scope: !221, file: !174, line: 60, type: !191)
!226 = !DILocation(line: 60, column: 41, scope: !221)
!227 = !DILocalVariable(name: "addr", arg: 2, scope: !221, file: !174, line: 60, type: !224)
!228 = !DILocation(line: 60, column: 69, scope: !221)
!229 = !DILocalVariable(name: "set", arg: 3, scope: !221, file: !174, line: 61, type: !191)
!230 = !DILocation(line: 61, column: 13, scope: !221)
!231 = !DILocation(line: 63, column: 6, scope: !232)
!232 = distinct !DILexicalBlock(scope: !221, file: !174, line: 63, column: 6)
!233 = !DILocation(line: 63, column: 6, scope: !221)
!234 = !DILocation(line: 64, column: 20, scope: !232)
!235 = !DILocation(line: 64, column: 24, scope: !232)
!236 = !DILocation(line: 64, column: 3, scope: !232)
!237 = !DILocation(line: 66, column: 22, scope: !232)
!238 = !DILocation(line: 66, column: 26, scope: !232)
!239 = !DILocation(line: 66, column: 3, scope: !232)
!240 = !DILocation(line: 67, column: 1, scope: !221)
!241 = distinct !DISubprogram(name: "bitmap_and", scope: !242, file: !242, line: 283, type: !243, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!242 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!243 = !DISubroutineType(types: !244)
!244 = !{!191, !106, !119, !119, !5}
!245 = !DILocalVariable(name: "dst", arg: 1, scope: !241, file: !242, line: 283, type: !106)
!246 = !DILocation(line: 283, column: 45, scope: !241)
!247 = !DILocalVariable(name: "src1", arg: 2, scope: !241, file: !242, line: 283, type: !119)
!248 = !DILocation(line: 283, column: 71, scope: !241)
!249 = !DILocalVariable(name: "src2", arg: 3, scope: !241, file: !242, line: 284, type: !119)
!250 = !DILocation(line: 284, column: 25, scope: !241)
!251 = !DILocalVariable(name: "nbits", arg: 4, scope: !241, file: !242, line: 284, type: !5)
!252 = !DILocation(line: 284, column: 44, scope: !241)
!253 = !DILocation(line: 286, column: 6, scope: !254)
!254 = distinct !DILexicalBlock(scope: !241, file: !242, line: 286, column: 6)
!255 = !DILocation(line: 286, column: 6, scope: !241)
!256 = !DILocation(line: 287, column: 19, scope: !254)
!257 = !DILocation(line: 287, column: 18, scope: !254)
!258 = !DILocation(line: 287, column: 27, scope: !254)
!259 = !DILocation(line: 287, column: 26, scope: !254)
!260 = !DILocation(line: 287, column: 24, scope: !254)
!261 = !DILocation(line: 287, column: 34, scope: !254)
!262 = !DILocation(line: 287, column: 32, scope: !254)
!263 = !DILocation(line: 287, column: 12, scope: !254)
!264 = !DILocation(line: 287, column: 16, scope: !254)
!265 = !DILocation(line: 287, column: 64, scope: !254)
!266 = !DILocation(line: 287, column: 3, scope: !254)
!267 = !DILocation(line: 288, column: 22, scope: !241)
!268 = !DILocation(line: 288, column: 27, scope: !241)
!269 = !DILocation(line: 288, column: 33, scope: !241)
!270 = !DILocation(line: 288, column: 39, scope: !241)
!271 = !DILocation(line: 288, column: 9, scope: !241)
!272 = !DILocation(line: 288, column: 2, scope: !241)
!273 = !DILocation(line: 289, column: 1, scope: !241)
!274 = distinct !DISubprogram(name: "test_bit", scope: !275, file: !275, line: 132, type: !276, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!275 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!276 = !DISubroutineType(types: !277)
!277 = !{!122, !110, !192}
!278 = !DILocalVariable(name: "nr", arg: 1, scope: !279, file: !280, line: 210, type: !110)
!279 = distinct !DISubprogram(name: "variable_test_bit", scope: !280, file: !280, line: 210, type: !276, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!280 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!281 = !DILocation(line: 210, column: 52, scope: !279, inlinedAt: !282)
!282 = distinct !DILocation(line: 135, column: 9, scope: !274)
!283 = !DILocalVariable(name: "addr", arg: 2, scope: !279, file: !280, line: 210, type: !192)
!284 = !DILocation(line: 210, column: 86, scope: !279, inlinedAt: !282)
!285 = !DILocalVariable(name: "oldbit", scope: !279, file: !280, line: 212, type: !122)
!286 = !DILocation(line: 212, column: 7, scope: !279, inlinedAt: !282)
!287 = !DILocalVariable(name: "nr", arg: 1, scope: !288, file: !280, line: 204, type: !110)
!288 = distinct !DISubprogram(name: "constant_test_bit", scope: !280, file: !280, line: 204, type: !276, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!289 = !DILocation(line: 204, column: 52, scope: !288, inlinedAt: !290)
!290 = distinct !DILocation(line: 135, column: 9, scope: !274)
!291 = !DILocalVariable(name: "addr", arg: 2, scope: !288, file: !280, line: 204, type: !192)
!292 = !DILocation(line: 204, column: 86, scope: !288, inlinedAt: !290)
!293 = !DILocalVariable(name: "v", arg: 1, scope: !294, file: !295, line: 69, type: !298)
!294 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !295, file: !295, line: 69, type: !296, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!295 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298, !301}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 55, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !303, line: 72, baseType: !304)
!303 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !303, line: 16, baseType: !107)
!305 = !DILocation(line: 69, column: 73, scope: !294, inlinedAt: !306)
!306 = distinct !DILocation(line: 134, column: 2, scope: !274)
!307 = !DILocalVariable(name: "size", arg: 2, scope: !294, file: !295, line: 69, type: !301)
!308 = !DILocation(line: 69, column: 83, scope: !294, inlinedAt: !306)
!309 = !DILocalVariable(name: "nr", arg: 1, scope: !274, file: !275, line: 132, type: !110)
!310 = !DILocation(line: 132, column: 34, scope: !274)
!311 = !DILocalVariable(name: "addr", arg: 2, scope: !274, file: !275, line: 132, type: !192)
!312 = !DILocation(line: 132, column: 68, scope: !274)
!313 = !DILocation(line: 134, column: 25, scope: !274)
!314 = !DILocation(line: 134, column: 32, scope: !274)
!315 = !DILocation(line: 134, column: 30, scope: !274)
!316 = !DILocation(line: 71, column: 19, scope: !294, inlinedAt: !306)
!317 = !DILocation(line: 71, column: 22, scope: !294, inlinedAt: !306)
!318 = !DILocation(line: 71, column: 2, scope: !294, inlinedAt: !306)
!319 = !DILocation(line: 72, column: 2, scope: !294, inlinedAt: !306)
!320 = !DILocation(line: 135, column: 9, scope: !274)
!321 = !DILocation(line: 206, column: 19, scope: !288, inlinedAt: !290)
!322 = !DILocation(line: 206, column: 22, scope: !288, inlinedAt: !290)
!323 = !DILocation(line: 206, column: 15, scope: !288, inlinedAt: !290)
!324 = !DILocation(line: 207, column: 4, scope: !288, inlinedAt: !290)
!325 = !DILocation(line: 207, column: 9, scope: !288, inlinedAt: !290)
!326 = !DILocation(line: 207, column: 12, scope: !288, inlinedAt: !290)
!327 = !DILocation(line: 206, column: 44, scope: !288, inlinedAt: !290)
!328 = !DILocation(line: 207, column: 37, scope: !288, inlinedAt: !290)
!329 = !DILocation(line: 217, column: 33, scope: !279, inlinedAt: !282)
!330 = !DILocation(line: 217, column: 46, scope: !279, inlinedAt: !282)
!331 = !DILocation(line: 214, column: 2, scope: !279, inlinedAt: !282)
!332 = !{i32 -2147228629, i32 -2147228569}
!333 = !DILocation(line: 219, column: 9, scope: !279, inlinedAt: !282)
!334 = !DILocation(line: 135, column: 2, scope: !274)
!335 = distinct !DISubprogram(name: "kasan_check_read", scope: !336, file: !336, line: 34, type: !337, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!336 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!337 = !DISubroutineType(types: !338)
!338 = !{!122, !298, !5}
!339 = !DILocalVariable(name: "p", arg: 1, scope: !335, file: !336, line: 34, type: !298)
!340 = !DILocation(line: 34, column: 58, scope: !335)
!341 = !DILocalVariable(name: "size", arg: 2, scope: !335, file: !336, line: 34, type: !5)
!342 = !DILocation(line: 34, column: 74, scope: !335)
!343 = !DILocation(line: 36, column: 2, scope: !335)
!344 = distinct !DISubprogram(name: "kcsan_check_access", scope: !345, file: !345, line: 178, type: !346, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!345 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!346 = !DISubroutineType(types: !347)
!347 = !{null, !298, !301, !191}
!348 = !DILocalVariable(name: "ptr", arg: 1, scope: !344, file: !345, line: 178, type: !298)
!349 = !DILocation(line: 178, column: 60, scope: !344)
!350 = !DILocalVariable(name: "size", arg: 2, scope: !344, file: !345, line: 178, type: !301)
!351 = !DILocation(line: 178, column: 72, scope: !344)
!352 = !DILocalVariable(name: "type", arg: 3, scope: !344, file: !345, line: 179, type: !191)
!353 = !DILocation(line: 179, column: 15, scope: !344)
!354 = !DILocation(line: 179, column: 23, scope: !344)
!355 = distinct !DISubprogram(name: "linkmode_set_bit", scope: !174, file: !174, line: 41, type: !356, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !191, !224}
!358 = !DILocalVariable(name: "nr", arg: 1, scope: !355, file: !174, line: 41, type: !191)
!359 = !DILocation(line: 41, column: 41, scope: !355)
!360 = !DILocalVariable(name: "addr", arg: 2, scope: !355, file: !174, line: 41, type: !224)
!361 = !DILocation(line: 41, column: 69, scope: !355)
!362 = !DILocation(line: 43, column: 12, scope: !355)
!363 = !DILocation(line: 43, column: 16, scope: !355)
!364 = !DILocation(line: 43, column: 2, scope: !355)
!365 = !DILocation(line: 44, column: 1, scope: !355)
!366 = distinct !DISubprogram(name: "linkmode_clear_bit", scope: !174, file: !174, line: 55, type: !356, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!367 = !DILocalVariable(name: "nr", arg: 1, scope: !366, file: !174, line: 55, type: !191)
!368 = !DILocation(line: 55, column: 43, scope: !366)
!369 = !DILocalVariable(name: "addr", arg: 2, scope: !366, file: !174, line: 55, type: !224)
!370 = !DILocation(line: 55, column: 71, scope: !366)
!371 = !DILocation(line: 57, column: 14, scope: !366)
!372 = !DILocation(line: 57, column: 18, scope: !366)
!373 = !DILocation(line: 57, column: 2, scope: !366)
!374 = !DILocation(line: 58, column: 1, scope: !366)
!375 = distinct !DISubprogram(name: "__set_bit", scope: !275, file: !275, line: 25, type: !376, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !110, !224}
!378 = !DILocalVariable(name: "nr", arg: 1, scope: !379, file: !280, line: 66, type: !110)
!379 = distinct !DISubprogram(name: "arch___set_bit", scope: !280, file: !280, line: 66, type: !376, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!380 = !DILocation(line: 66, column: 21, scope: !379, inlinedAt: !381)
!381 = distinct !DILocation(line: 28, column: 2, scope: !375)
!382 = !DILocalVariable(name: "addr", arg: 2, scope: !379, file: !280, line: 66, type: !224)
!383 = !DILocation(line: 66, column: 49, scope: !379, inlinedAt: !381)
!384 = !DILocalVariable(name: "v", arg: 1, scope: !385, file: !295, line: 39, type: !298)
!385 = distinct !DISubprogram(name: "instrument_write", scope: !295, file: !295, line: 39, type: !296, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!386 = !DILocation(line: 39, column: 67, scope: !385, inlinedAt: !387)
!387 = distinct !DILocation(line: 27, column: 2, scope: !375)
!388 = !DILocalVariable(name: "size", arg: 2, scope: !385, file: !295, line: 39, type: !301)
!389 = !DILocation(line: 39, column: 77, scope: !385, inlinedAt: !387)
!390 = !DILocalVariable(name: "nr", arg: 1, scope: !375, file: !275, line: 25, type: !110)
!391 = !DILocation(line: 25, column: 35, scope: !375)
!392 = !DILocalVariable(name: "addr", arg: 2, scope: !375, file: !275, line: 25, type: !224)
!393 = !DILocation(line: 25, column: 63, scope: !375)
!394 = !DILocation(line: 27, column: 19, scope: !375)
!395 = !DILocation(line: 27, column: 26, scope: !375)
!396 = !DILocation(line: 27, column: 24, scope: !375)
!397 = !DILocation(line: 41, column: 20, scope: !385, inlinedAt: !387)
!398 = !DILocation(line: 41, column: 23, scope: !385, inlinedAt: !387)
!399 = !DILocation(line: 41, column: 2, scope: !385, inlinedAt: !387)
!400 = !DILocation(line: 42, column: 2, scope: !385, inlinedAt: !387)
!401 = !DILocation(line: 28, column: 17, scope: !375)
!402 = !DILocation(line: 28, column: 21, scope: !375)
!403 = !DILocation(line: 68, column: 44, scope: !379, inlinedAt: !381)
!404 = !DILocation(line: 68, column: 56, scope: !379, inlinedAt: !381)
!405 = !DILocation(line: 68, column: 2, scope: !379, inlinedAt: !381)
!406 = !{i32 -2147237305}
!407 = !DILocation(line: 29, column: 1, scope: !375)
!408 = distinct !DISubprogram(name: "kasan_check_write", scope: !336, file: !336, line: 38, type: !337, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!409 = !DILocalVariable(name: "p", arg: 1, scope: !408, file: !336, line: 38, type: !298)
!410 = !DILocation(line: 38, column: 59, scope: !408)
!411 = !DILocalVariable(name: "size", arg: 2, scope: !408, file: !336, line: 38, type: !5)
!412 = !DILocation(line: 38, column: 75, scope: !408)
!413 = !DILocation(line: 40, column: 2, scope: !408)
!414 = distinct !DISubprogram(name: "__clear_bit", scope: !275, file: !275, line: 40, type: !376, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!415 = !DILocalVariable(name: "nr", arg: 1, scope: !416, file: !280, line: 92, type: !110)
!416 = distinct !DISubprogram(name: "arch___clear_bit", scope: !280, file: !280, line: 92, type: !376, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!417 = !DILocation(line: 92, column: 23, scope: !416, inlinedAt: !418)
!418 = distinct !DILocation(line: 43, column: 2, scope: !414)
!419 = !DILocalVariable(name: "addr", arg: 2, scope: !416, file: !280, line: 92, type: !224)
!420 = !DILocation(line: 92, column: 51, scope: !416, inlinedAt: !418)
!421 = !DILocation(line: 39, column: 67, scope: !385, inlinedAt: !422)
!422 = distinct !DILocation(line: 42, column: 2, scope: !414)
!423 = !DILocation(line: 39, column: 77, scope: !385, inlinedAt: !422)
!424 = !DILocalVariable(name: "nr", arg: 1, scope: !414, file: !275, line: 40, type: !110)
!425 = !DILocation(line: 40, column: 37, scope: !414)
!426 = !DILocalVariable(name: "addr", arg: 2, scope: !414, file: !275, line: 40, type: !224)
!427 = !DILocation(line: 40, column: 65, scope: !414)
!428 = !DILocation(line: 42, column: 19, scope: !414)
!429 = !DILocation(line: 42, column: 26, scope: !414)
!430 = !DILocation(line: 42, column: 24, scope: !414)
!431 = !DILocation(line: 41, column: 20, scope: !385, inlinedAt: !422)
!432 = !DILocation(line: 41, column: 23, scope: !385, inlinedAt: !422)
!433 = !DILocation(line: 41, column: 2, scope: !385, inlinedAt: !422)
!434 = !DILocation(line: 42, column: 2, scope: !385, inlinedAt: !422)
!435 = !DILocation(line: 43, column: 19, scope: !414)
!436 = !DILocation(line: 43, column: 23, scope: !414)
!437 = !DILocation(line: 94, column: 44, scope: !416, inlinedAt: !418)
!438 = !DILocation(line: 94, column: 56, scope: !416, inlinedAt: !418)
!439 = !DILocation(line: 94, column: 2, scope: !416, inlinedAt: !418)
!440 = !{i32 -2147236094}
!441 = !DILocation(line: 44, column: 1, scope: !414)
