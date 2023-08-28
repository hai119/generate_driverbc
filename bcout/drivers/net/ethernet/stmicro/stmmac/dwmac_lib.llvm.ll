; ModuleID = '../bcout/drivers/net/ethernet/stmicro/stmmac/dwmac_lib.llvm.bc'
source_filename = "drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.stmmac_extra_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [56 x i8] }

@.str = private unnamed_addr constant [30 x i8] c"\014%s: unexpected status %08x\0A\00", align 1
@__func__.dwmac_dma_interrupt = private unnamed_addr constant [20 x i8] c"dwmac_dma_interrupt\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dwmac_dma_reset(i8* %ioaddr) #0 !dbg !19 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %value = alloca i32, align 4
  %__timeout_us = alloca i64, align 8
  %__sleep_us = alloca i64, align 8
  %__timeout = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %value, metadata !27, metadata !DIExpression()), !dbg !32
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !33
  %add.ptr = getelementptr i8, i8* %0, i64 4096, !dbg !34
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !35
  store i32 %call, i32* %value, align 4, !dbg !32
  %1 = load i32, i32* %value, align 4, !dbg !36
  %or = or i32 %1, 1, !dbg !36
  store i32 %or, i32* %value, align 4, !dbg !36
  %2 = load i32, i32* %value, align 4, !dbg !37
  %3 = load i8*, i8** %ioaddr.addr, align 8, !dbg !38
  %add.ptr1 = getelementptr i8, i8* %3, i64 4096, !dbg !39
  call void @writel(i32 %2, i8* %add.ptr1) #4, !dbg !40
  call void @llvm.dbg.declare(metadata i64* %__timeout_us, metadata !41, metadata !DIExpression()), !dbg !46
  store i64 200000, i64* %__timeout_us, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata i64* %__sleep_us, metadata !47, metadata !DIExpression()), !dbg !46
  store i64 10000, i64* %__sleep_us, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata i64* %__timeout, metadata !49, metadata !DIExpression()), !dbg !46
  %call2 = call i64 @ktime_get() #4, !dbg !46
  %4 = load i64, i64* %__timeout_us, align 8, !dbg !46
  %call3 = call i64 @ktime_add_us(i64 %call2, i64 %4) #4, !dbg !46
  store i64 %call3, i64* %__timeout, align 8, !dbg !46
  br label %do.body, !dbg !46

do.body:                                          ; preds = %entry
  %5 = load i64, i64* %__sleep_us, align 8, !dbg !55
  %cmp = icmp ne i64 %5, 0, !dbg !55
  br i1 %cmp, label %if.then, label %if.end, !dbg !58

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !55

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !59

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !61

do.end:                                           ; preds = %do.body5
  br label %do.end6, !dbg !59

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !59

if.end:                                           ; preds = %do.end6, %do.body
  br label %do.end7, !dbg !58

do.end7:                                          ; preds = %if.end
  br label %for.cond, !dbg !46

for.cond:                                         ; preds = %if.end22, %do.end7
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !63
  %add.ptr8 = getelementptr i8, i8* %6, i64 4096, !dbg !63
  %call9 = call i32 @readl(i8* %add.ptr8) #4, !dbg !63
  store i32 %call9, i32* %value, align 4, !dbg !63
  %7 = load i32, i32* %value, align 4, !dbg !67
  %and = and i32 %7, 1, !dbg !67
  %tobool = icmp ne i32 %and, 0, !dbg !67
  br i1 %tobool, label %if.end11, label %if.then10, !dbg !63

if.then10:                                        ; preds = %for.cond
  br label %for.end, !dbg !67

if.end11:                                         ; preds = %for.cond
  %8 = load i64, i64* %__timeout_us, align 8, !dbg !69
  %tobool12 = icmp ne i64 %8, 0, !dbg !69
  br i1 %tobool12, label %land.lhs.true, label %if.end19, !dbg !69

land.lhs.true:                                    ; preds = %if.end11
  %call13 = call i64 @ktime_get() #4, !dbg !69
  %9 = load i64, i64* %__timeout, align 8, !dbg !69
  %call14 = call i32 @ktime_compare(i64 %call13, i64 %9) #4, !dbg !69
  %cmp15 = icmp sgt i32 %call14, 0, !dbg !69
  br i1 %cmp15, label %if.then16, label %if.end19, !dbg !63

if.then16:                                        ; preds = %land.lhs.true
  %10 = load i8*, i8** %ioaddr.addr, align 8, !dbg !71
  %add.ptr17 = getelementptr i8, i8* %10, i64 4096, !dbg !71
  %call18 = call i32 @readl(i8* %add.ptr17) #4, !dbg !71
  store i32 %call18, i32* %value, align 4, !dbg !71
  br label %for.end, !dbg !71

if.end19:                                         ; preds = %land.lhs.true, %if.end11
  %11 = load i64, i64* %__sleep_us, align 8, !dbg !73
  %tobool20 = icmp ne i64 %11, 0, !dbg !73
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !63

if.then21:                                        ; preds = %if.end19
  %12 = load i64, i64* %__sleep_us, align 8, !dbg !73
  %shr = lshr i64 %12, 2, !dbg !73
  %add = add i64 %shr, 1, !dbg !73
  %13 = load i64, i64* %__sleep_us, align 8, !dbg !73
  call void @usleep_range(i64 %add, i64 %13) #4, !dbg !73
  br label %if.end22, !dbg !73

if.end22:                                         ; preds = %if.then21, %if.end19
  br label %for.cond, !dbg !75, !llvm.loop !76

for.end:                                          ; preds = %if.then16, %if.then10
  %14 = load i32, i32* %value, align 4, !dbg !46
  %and23 = and i32 %14, 1, !dbg !46
  %tobool24 = icmp ne i32 %and23, 0, !dbg !46
  %lnot = xor i1 %tobool24, true, !dbg !46
  %15 = zext i1 %lnot to i64, !dbg !46
  %cond = select i1 %lnot, i32 0, i32 -110, !dbg !46
  store i32 %cond, i32* %tmp, align 4, !dbg !77
  %16 = load i32, i32* %tmp, align 4, !dbg !46
  ret i32 %16, !dbg !78
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !79 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !88, metadata !DIExpression()), !dbg !87
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !87
  %1 = bitcast i8* %0 to i32*, !dbg !87
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #5, !dbg !87, !srcloc !89
  store i32 %2, i32* %ret, align 4, !dbg !87
  %3 = load i32, i32* %ret, align 4, !dbg !87
  ret i32 %3, !dbg !87
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !90 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !94, metadata !DIExpression()), !dbg !95
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !96, metadata !DIExpression()), !dbg !95
  %0 = load i32, i32* %val.addr, align 4, !dbg !95
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !95
  %2 = bitcast i8* %1 to i32*, !dbg !95
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #5, !dbg !95, !srcloc !97
  ret void, !dbg !95
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_add_us(i64 %kt, i64 %usec) #0 !dbg !98 {
entry:
  %kt.addr = alloca i64, align 8
  %usec.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !103, metadata !DIExpression()), !dbg !104
  store i64 %usec, i64* %usec.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %usec.addr, metadata !105, metadata !DIExpression()), !dbg !106
  %0 = load i64, i64* %kt.addr, align 8, !dbg !107
  %1 = load i64, i64* %usec.addr, align 8, !dbg !107
  %mul = mul i64 %1, 1000, !dbg !107
  %add = add i64 %0, %mul, !dbg !107
  ret i64 %add, !dbg !108
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ktime_compare(i64 %cmp1, i64 %cmp2) #0 !dbg !109 {
entry:
  %retval = alloca i32, align 4
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !112, metadata !DIExpression()), !dbg !113
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !114, metadata !DIExpression()), !dbg !115
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !116
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !118
  %cmp = icmp slt i64 %0, %1, !dbg !119
  br i1 %cmp, label %if.then, label %if.end, !dbg !120

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !121
  br label %return, !dbg !121

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %cmp1.addr, align 8, !dbg !122
  %3 = load i64, i64* %cmp2.addr, align 8, !dbg !124
  %cmp3 = icmp sgt i64 %2, %3, !dbg !125
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !126

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !127
  br label %return, !dbg !127

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !128
  br label %return, !dbg !128

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !129
  ret i32 %4, !dbg !129
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac_enable_dma_transmission(i8* %ioaddr) #0 !dbg !130 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !135
  %add.ptr = getelementptr i8, i8* %0, i64 4100, !dbg !136
  call void @writel(i32 1, i8* %add.ptr) #4, !dbg !137
  ret void, !dbg !138
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac_enable_dma_irq(i8* %ioaddr, i32 %chan, i1 zeroext %rx, i1 zeroext %tx) #0 !dbg !139 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %rx.addr = alloca i8, align 1
  %tx.addr = alloca i8, align 1
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !145, metadata !DIExpression()), !dbg !146
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !147, metadata !DIExpression()), !dbg !148
  %frombool = zext i1 %rx to i8
  store i8 %frombool, i8* %rx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rx.addr, metadata !149, metadata !DIExpression()), !dbg !150
  %frombool1 = zext i1 %tx to i8
  store i8 %frombool1, i8* %tx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tx.addr, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i32* %value, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !155
  %add.ptr = getelementptr i8, i8* %0, i64 4124, !dbg !156
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !157
  store i32 %call, i32* %value, align 4, !dbg !154
  %1 = load i8, i8* %rx.addr, align 1, !dbg !158
  %tobool = trunc i8 %1 to i1, !dbg !158
  br i1 %tobool, label %if.then, label %if.end, !dbg !160

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %value, align 4, !dbg !161
  %or = or i32 %2, 64, !dbg !161
  store i32 %or, i32* %value, align 4, !dbg !161
  br label %if.end, !dbg !162

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %tx.addr, align 1, !dbg !163
  %tobool2 = trunc i8 %3 to i1, !dbg !163
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !165

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* %value, align 4, !dbg !166
  %or4 = or i32 %4, 1, !dbg !166
  store i32 %or4, i32* %value, align 4, !dbg !166
  br label %if.end5, !dbg !167

if.end5:                                          ; preds = %if.then3, %if.end
  %5 = load i32, i32* %value, align 4, !dbg !168
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !169
  %add.ptr6 = getelementptr i8, i8* %6, i64 4124, !dbg !170
  call void @writel(i32 %5, i8* %add.ptr6) #4, !dbg !171
  ret void, !dbg !172
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac_disable_dma_irq(i8* %ioaddr, i32 %chan, i1 zeroext %rx, i1 zeroext %tx) #0 !dbg !173 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %rx.addr = alloca i8, align 1
  %tx.addr = alloca i8, align 1
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !174, metadata !DIExpression()), !dbg !175
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !176, metadata !DIExpression()), !dbg !177
  %frombool = zext i1 %rx to i8
  store i8 %frombool, i8* %rx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rx.addr, metadata !178, metadata !DIExpression()), !dbg !179
  %frombool1 = zext i1 %tx to i8
  store i8 %frombool1, i8* %tx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tx.addr, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i32* %value, metadata !182, metadata !DIExpression()), !dbg !183
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !184
  %add.ptr = getelementptr i8, i8* %0, i64 4124, !dbg !185
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !186
  store i32 %call, i32* %value, align 4, !dbg !183
  %1 = load i8, i8* %rx.addr, align 1, !dbg !187
  %tobool = trunc i8 %1 to i1, !dbg !187
  br i1 %tobool, label %if.then, label %if.end, !dbg !189

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %value, align 4, !dbg !190
  %and = and i32 %2, -65, !dbg !190
  store i32 %and, i32* %value, align 4, !dbg !190
  br label %if.end, !dbg !191

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %tx.addr, align 1, !dbg !192
  %tobool2 = trunc i8 %3 to i1, !dbg !192
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !194

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* %value, align 4, !dbg !195
  %and4 = and i32 %4, -2, !dbg !195
  store i32 %and4, i32* %value, align 4, !dbg !195
  br label %if.end5, !dbg !196

if.end5:                                          ; preds = %if.then3, %if.end
  %5 = load i32, i32* %value, align 4, !dbg !197
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !198
  %add.ptr6 = getelementptr i8, i8* %6, i64 4124, !dbg !199
  call void @writel(i32 %5, i8* %add.ptr6) #4, !dbg !200
  ret void, !dbg !201
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac_dma_start_tx(i8* %ioaddr, i32 %chan) #0 !dbg !202 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !205, metadata !DIExpression()), !dbg !206
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %value, metadata !209, metadata !DIExpression()), !dbg !210
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !211
  %add.ptr = getelementptr i8, i8* %0, i64 4120, !dbg !212
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !213
  store i32 %call, i32* %value, align 4, !dbg !210
  %1 = load i32, i32* %value, align 4, !dbg !214
  %or = or i32 %1, 8192, !dbg !214
  store i32 %or, i32* %value, align 4, !dbg !214
  %2 = load i32, i32* %value, align 4, !dbg !215
  %3 = load i8*, i8** %ioaddr.addr, align 8, !dbg !216
  %add.ptr1 = getelementptr i8, i8* %3, i64 4120, !dbg !217
  call void @writel(i32 %2, i8* %add.ptr1) #4, !dbg !218
  ret void, !dbg !219
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac_dma_stop_tx(i8* %ioaddr, i32 %chan) #0 !dbg !220 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !221, metadata !DIExpression()), !dbg !222
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata i32* %value, metadata !225, metadata !DIExpression()), !dbg !226
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !227
  %add.ptr = getelementptr i8, i8* %0, i64 4120, !dbg !228
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !229
  store i32 %call, i32* %value, align 4, !dbg !226
  %1 = load i32, i32* %value, align 4, !dbg !230
  %and = and i32 %1, -8193, !dbg !230
  store i32 %and, i32* %value, align 4, !dbg !230
  %2 = load i32, i32* %value, align 4, !dbg !231
  %3 = load i8*, i8** %ioaddr.addr, align 8, !dbg !232
  %add.ptr1 = getelementptr i8, i8* %3, i64 4120, !dbg !233
  call void @writel(i32 %2, i8* %add.ptr1) #4, !dbg !234
  ret void, !dbg !235
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac_dma_start_rx(i8* %ioaddr, i32 %chan) #0 !dbg !236 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !237, metadata !DIExpression()), !dbg !238
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata i32* %value, metadata !241, metadata !DIExpression()), !dbg !242
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !243
  %add.ptr = getelementptr i8, i8* %0, i64 4120, !dbg !244
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !245
  store i32 %call, i32* %value, align 4, !dbg !242
  %1 = load i32, i32* %value, align 4, !dbg !246
  %or = or i32 %1, 2, !dbg !246
  store i32 %or, i32* %value, align 4, !dbg !246
  %2 = load i32, i32* %value, align 4, !dbg !247
  %3 = load i8*, i8** %ioaddr.addr, align 8, !dbg !248
  %add.ptr1 = getelementptr i8, i8* %3, i64 4120, !dbg !249
  call void @writel(i32 %2, i8* %add.ptr1) #4, !dbg !250
  ret void, !dbg !251
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac_dma_stop_rx(i8* %ioaddr, i32 %chan) #0 !dbg !252 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !253, metadata !DIExpression()), !dbg !254
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata i32* %value, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !259
  %add.ptr = getelementptr i8, i8* %0, i64 4120, !dbg !260
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !261
  store i32 %call, i32* %value, align 4, !dbg !258
  %1 = load i32, i32* %value, align 4, !dbg !262
  %and = and i32 %1, -3, !dbg !262
  store i32 %and, i32* %value, align 4, !dbg !262
  %2 = load i32, i32* %value, align 4, !dbg !263
  %3 = load i8*, i8** %ioaddr.addr, align 8, !dbg !264
  %add.ptr1 = getelementptr i8, i8* %3, i64 4120, !dbg !265
  call void @writel(i32 %2, i8* %add.ptr1) #4, !dbg !266
  ret void, !dbg !267
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dwmac_dma_interrupt(i8* %ioaddr, %struct.stmmac_extra_stats* %x, i32 %chan) #0 !dbg !268 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %x.addr = alloca %struct.stmmac_extra_stats*, align 8
  %chan.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %intr_status = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !387, metadata !DIExpression()), !dbg !388
  store %struct.stmmac_extra_stats* %x, %struct.stmmac_extra_stats** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_extra_stats** %x.addr, metadata !389, metadata !DIExpression()), !dbg !390
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !393, metadata !DIExpression()), !dbg !394
  store i32 0, i32* %ret, align 4, !dbg !394
  call void @llvm.dbg.declare(metadata i32* %intr_status, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !397
  %add.ptr = getelementptr i8, i8* %0, i64 4116, !dbg !398
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !399
  store i32 %call, i32* %intr_status, align 4, !dbg !396
  %1 = load i32, i32* %intr_status, align 4, !dbg !400
  %and = and i32 %1, 32768, !dbg !400
  %tobool = icmp ne i32 %and, 0, !dbg !400
  %lnot = xor i1 %tobool, true, !dbg !400
  %lnot1 = xor i1 %lnot, true, !dbg !400
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !400
  %conv = sext i32 %lnot.ext to i64, !dbg !400
  %tobool2 = icmp ne i64 %conv, 0, !dbg !400
  br i1 %tobool2, label %if.then, label %if.end100, !dbg !402

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %intr_status, align 4, !dbg !403
  %and3 = and i32 %2, 32, !dbg !403
  %tobool4 = icmp ne i32 %and3, 0, !dbg !403
  %lnot5 = xor i1 %tobool4, true, !dbg !403
  %lnot7 = xor i1 %lnot5, true, !dbg !403
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !403
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !403
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !403
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !406

if.then11:                                        ; preds = %if.then
  store i32 2, i32* %ret, align 4, !dbg !407
  %3 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !409
  %tx_undeflow_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %3, i32 0, i32 28, !dbg !410
  %4 = load i64, i64* %tx_undeflow_irq, align 32, !dbg !411
  %inc = add i64 %4, 1, !dbg !411
  store i64 %inc, i64* %tx_undeflow_irq, align 32, !dbg !411
  br label %if.end, !dbg !412

if.end:                                           ; preds = %if.then11, %if.then
  %5 = load i32, i32* %intr_status, align 4, !dbg !413
  %and12 = and i32 %5, 8, !dbg !413
  %tobool13 = icmp ne i32 %and12, 0, !dbg !413
  %lnot14 = xor i1 %tobool13, true, !dbg !413
  %lnot16 = xor i1 %lnot14, true, !dbg !413
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !413
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !413
  %tobool19 = icmp ne i64 %conv18, 0, !dbg !413
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !415

if.then20:                                        ; preds = %if.end
  %6 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !416
  %tx_jabber_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %6, i32 0, i32 30, !dbg !417
  %7 = load i64, i64* %tx_jabber_irq, align 16, !dbg !418
  %inc21 = add i64 %7, 1, !dbg !418
  store i64 %inc21, i64* %tx_jabber_irq, align 16, !dbg !418
  br label %if.end22, !dbg !416

if.end22:                                         ; preds = %if.then20, %if.end
  %8 = load i32, i32* %intr_status, align 4, !dbg !419
  %and23 = and i32 %8, 16, !dbg !419
  %tobool24 = icmp ne i32 %and23, 0, !dbg !419
  %lnot25 = xor i1 %tobool24, true, !dbg !419
  %lnot27 = xor i1 %lnot25, true, !dbg !419
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !419
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !419
  %tobool30 = icmp ne i64 %conv29, 0, !dbg !419
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !421

if.then31:                                        ; preds = %if.end22
  %9 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !422
  %rx_overflow_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %9, i32 0, i32 31, !dbg !423
  %10 = load i64, i64* %rx_overflow_irq, align 8, !dbg !424
  %inc32 = add i64 %10, 1, !dbg !424
  store i64 %inc32, i64* %rx_overflow_irq, align 8, !dbg !424
  br label %if.end33, !dbg !422

if.end33:                                         ; preds = %if.then31, %if.end22
  %11 = load i32, i32* %intr_status, align 4, !dbg !425
  %and34 = and i32 %11, 128, !dbg !425
  %tobool35 = icmp ne i32 %and34, 0, !dbg !425
  %lnot36 = xor i1 %tobool35, true, !dbg !425
  %lnot38 = xor i1 %lnot36, true, !dbg !425
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !425
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !425
  %tobool41 = icmp ne i64 %conv40, 0, !dbg !425
  br i1 %tobool41, label %if.then42, label %if.end44, !dbg !427

if.then42:                                        ; preds = %if.end33
  %12 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !428
  %rx_buf_unav_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %12, i32 0, i32 32, !dbg !429
  %13 = load i64, i64* %rx_buf_unav_irq, align 64, !dbg !430
  %inc43 = add i64 %13, 1, !dbg !430
  store i64 %inc43, i64* %rx_buf_unav_irq, align 64, !dbg !430
  br label %if.end44, !dbg !428

if.end44:                                         ; preds = %if.then42, %if.end33
  %14 = load i32, i32* %intr_status, align 4, !dbg !431
  %and45 = and i32 %14, 256, !dbg !431
  %tobool46 = icmp ne i32 %and45, 0, !dbg !431
  %lnot47 = xor i1 %tobool46, true, !dbg !431
  %lnot49 = xor i1 %lnot47, true, !dbg !431
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !431
  %conv51 = sext i32 %lnot.ext50 to i64, !dbg !431
  %tobool52 = icmp ne i64 %conv51, 0, !dbg !431
  br i1 %tobool52, label %if.then53, label %if.end55, !dbg !433

if.then53:                                        ; preds = %if.end44
  %15 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !434
  %rx_process_stopped_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %15, i32 0, i32 33, !dbg !435
  %16 = load i64, i64* %rx_process_stopped_irq, align 8, !dbg !436
  %inc54 = add i64 %16, 1, !dbg !436
  store i64 %inc54, i64* %rx_process_stopped_irq, align 8, !dbg !436
  br label %if.end55, !dbg !434

if.end55:                                         ; preds = %if.then53, %if.end44
  %17 = load i32, i32* %intr_status, align 4, !dbg !437
  %and56 = and i32 %17, 512, !dbg !437
  %tobool57 = icmp ne i32 %and56, 0, !dbg !437
  %lnot58 = xor i1 %tobool57, true, !dbg !437
  %lnot60 = xor i1 %lnot58, true, !dbg !437
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !437
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !437
  %tobool63 = icmp ne i64 %conv62, 0, !dbg !437
  br i1 %tobool63, label %if.then64, label %if.end66, !dbg !439

if.then64:                                        ; preds = %if.end55
  %18 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !440
  %rx_watchdog_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %18, i32 0, i32 34, !dbg !441
  %19 = load i64, i64* %rx_watchdog_irq, align 16, !dbg !442
  %inc65 = add i64 %19, 1, !dbg !442
  store i64 %inc65, i64* %rx_watchdog_irq, align 16, !dbg !442
  br label %if.end66, !dbg !440

if.end66:                                         ; preds = %if.then64, %if.end55
  %20 = load i32, i32* %intr_status, align 4, !dbg !443
  %and67 = and i32 %20, 1024, !dbg !443
  %tobool68 = icmp ne i32 %and67, 0, !dbg !443
  %lnot69 = xor i1 %tobool68, true, !dbg !443
  %lnot71 = xor i1 %lnot69, true, !dbg !443
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !443
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !443
  %tobool74 = icmp ne i64 %conv73, 0, !dbg !443
  br i1 %tobool74, label %if.then75, label %if.end77, !dbg !445

if.then75:                                        ; preds = %if.end66
  %21 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !446
  %tx_early_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %21, i32 0, i32 35, !dbg !447
  %22 = load i64, i64* %tx_early_irq, align 8, !dbg !448
  %inc76 = add i64 %22, 1, !dbg !448
  store i64 %inc76, i64* %tx_early_irq, align 8, !dbg !448
  br label %if.end77, !dbg !446

if.end77:                                         ; preds = %if.then75, %if.end66
  %23 = load i32, i32* %intr_status, align 4, !dbg !449
  %and78 = and i32 %23, 2, !dbg !449
  %tobool79 = icmp ne i32 %and78, 0, !dbg !449
  %lnot80 = xor i1 %tobool79, true, !dbg !449
  %lnot82 = xor i1 %lnot80, true, !dbg !449
  %lnot.ext83 = zext i1 %lnot82 to i32, !dbg !449
  %conv84 = sext i32 %lnot.ext83 to i64, !dbg !449
  %tobool85 = icmp ne i64 %conv84, 0, !dbg !449
  br i1 %tobool85, label %if.then86, label %if.end88, !dbg !451

if.then86:                                        ; preds = %if.end77
  %24 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !452
  %tx_process_stopped_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %24, i32 0, i32 29, !dbg !454
  %25 = load i64, i64* %tx_process_stopped_irq, align 8, !dbg !455
  %inc87 = add i64 %25, 1, !dbg !455
  store i64 %inc87, i64* %tx_process_stopped_irq, align 8, !dbg !455
  store i32 1, i32* %ret, align 4, !dbg !456
  br label %if.end88, !dbg !457

if.end88:                                         ; preds = %if.then86, %if.end77
  %26 = load i32, i32* %intr_status, align 4, !dbg !458
  %and89 = and i32 %26, 8192, !dbg !458
  %tobool90 = icmp ne i32 %and89, 0, !dbg !458
  %lnot91 = xor i1 %tobool90, true, !dbg !458
  %lnot93 = xor i1 %lnot91, true, !dbg !458
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !458
  %conv95 = sext i32 %lnot.ext94 to i64, !dbg !458
  %tobool96 = icmp ne i64 %conv95, 0, !dbg !458
  br i1 %tobool96, label %if.then97, label %if.end99, !dbg !460

if.then97:                                        ; preds = %if.end88
  %27 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !461
  %fatal_bus_error_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %27, i32 0, i32 36, !dbg !463
  %28 = load i64, i64* %fatal_bus_error_irq, align 32, !dbg !464
  %inc98 = add i64 %28, 1, !dbg !464
  store i64 %inc98, i64* %fatal_bus_error_irq, align 32, !dbg !464
  store i32 1, i32* %ret, align 4, !dbg !465
  br label %if.end99, !dbg !466

if.end99:                                         ; preds = %if.then97, %if.end88
  br label %if.end100, !dbg !467

if.end100:                                        ; preds = %if.end99, %entry
  %29 = load i32, i32* %intr_status, align 4, !dbg !468
  %and101 = and i32 %29, 65536, !dbg !468
  %tobool102 = icmp ne i32 %and101, 0, !dbg !468
  %lnot103 = xor i1 %tobool102, true, !dbg !468
  %lnot105 = xor i1 %lnot103, true, !dbg !468
  %lnot.ext106 = zext i1 %lnot105 to i32, !dbg !468
  %conv107 = sext i32 %lnot.ext106 to i64, !dbg !468
  %tobool108 = icmp ne i64 %conv107, 0, !dbg !468
  br i1 %tobool108, label %if.then109, label %if.end157, !dbg !470

if.then109:                                       ; preds = %if.end100
  %30 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !471
  %normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %30, i32 0, i32 41, !dbg !473
  %31 = load i64, i64* %normal_irq_n, align 8, !dbg !474
  %inc110 = add i64 %31, 1, !dbg !474
  store i64 %inc110, i64* %normal_irq_n, align 8, !dbg !474
  %32 = load i32, i32* %intr_status, align 4, !dbg !475
  %and111 = and i32 %32, 64, !dbg !475
  %tobool112 = icmp ne i32 %and111, 0, !dbg !475
  %lnot113 = xor i1 %tobool112, true, !dbg !475
  %lnot115 = xor i1 %lnot113, true, !dbg !475
  %lnot.ext116 = zext i1 %lnot115 to i32, !dbg !475
  %conv117 = sext i32 %lnot.ext116 to i64, !dbg !475
  %tobool118 = icmp ne i64 %conv117, 0, !dbg !475
  br i1 %tobool118, label %if.then119, label %if.end133, !dbg !477

if.then119:                                       ; preds = %if.then109
  call void @llvm.dbg.declare(metadata i32* %value, metadata !478, metadata !DIExpression()), !dbg !480
  %33 = load i8*, i8** %ioaddr.addr, align 8, !dbg !481
  %add.ptr120 = getelementptr i8, i8* %33, i64 4124, !dbg !482
  %call121 = call i32 @readl(i8* %add.ptr120) #4, !dbg !483
  store i32 %call121, i32* %value, align 4, !dbg !480
  %34 = load i32, i32* %value, align 4, !dbg !484
  %and122 = and i32 %34, 64, !dbg !484
  %tobool123 = icmp ne i32 %and122, 0, !dbg !484
  %lnot124 = xor i1 %tobool123, true, !dbg !484
  %lnot126 = xor i1 %lnot124, true, !dbg !484
  %lnot.ext127 = zext i1 %lnot126 to i32, !dbg !484
  %conv128 = sext i32 %lnot.ext127 to i64, !dbg !484
  %tobool129 = icmp ne i64 %conv128, 0, !dbg !484
  br i1 %tobool129, label %if.then130, label %if.end132, !dbg !486

if.then130:                                       ; preds = %if.then119
  %35 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !487
  %rx_normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %35, i32 0, i32 42, !dbg !489
  %36 = load i64, i64* %rx_normal_irq_n, align 16, !dbg !490
  %inc131 = add i64 %36, 1, !dbg !490
  store i64 %inc131, i64* %rx_normal_irq_n, align 16, !dbg !490
  %37 = load i32, i32* %ret, align 4, !dbg !491
  %or = or i32 %37, 4, !dbg !491
  store i32 %or, i32* %ret, align 4, !dbg !491
  br label %if.end132, !dbg !492

if.end132:                                        ; preds = %if.then130, %if.then119
  br label %if.end133, !dbg !493

if.end133:                                        ; preds = %if.end132, %if.then109
  %38 = load i32, i32* %intr_status, align 4, !dbg !494
  %and134 = and i32 %38, 1, !dbg !494
  %tobool135 = icmp ne i32 %and134, 0, !dbg !494
  %lnot136 = xor i1 %tobool135, true, !dbg !494
  %lnot138 = xor i1 %lnot136, true, !dbg !494
  %lnot.ext139 = zext i1 %lnot138 to i32, !dbg !494
  %conv140 = sext i32 %lnot.ext139 to i64, !dbg !494
  %tobool141 = icmp ne i64 %conv140, 0, !dbg !494
  br i1 %tobool141, label %if.then142, label %if.end145, !dbg !496

if.then142:                                       ; preds = %if.end133
  %39 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !497
  %tx_normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %39, i32 0, i32 44, !dbg !499
  %40 = load i64, i64* %tx_normal_irq_n, align 32, !dbg !500
  %inc143 = add i64 %40, 1, !dbg !500
  store i64 %inc143, i64* %tx_normal_irq_n, align 32, !dbg !500
  %41 = load i32, i32* %ret, align 4, !dbg !501
  %or144 = or i32 %41, 8, !dbg !501
  store i32 %or144, i32* %ret, align 4, !dbg !501
  br label %if.end145, !dbg !502

if.end145:                                        ; preds = %if.then142, %if.end133
  %42 = load i32, i32* %intr_status, align 4, !dbg !503
  %and146 = and i32 %42, 16384, !dbg !503
  %tobool147 = icmp ne i32 %and146, 0, !dbg !503
  %lnot148 = xor i1 %tobool147, true, !dbg !503
  %lnot150 = xor i1 %lnot148, true, !dbg !503
  %lnot.ext151 = zext i1 %lnot150 to i32, !dbg !503
  %conv152 = sext i32 %lnot.ext151 to i64, !dbg !503
  %tobool153 = icmp ne i64 %conv152, 0, !dbg !503
  br i1 %tobool153, label %if.then154, label %if.end156, !dbg !505

if.then154:                                       ; preds = %if.end145
  %43 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !506
  %rx_early_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %43, i32 0, i32 37, !dbg !507
  %44 = load i64, i64* %rx_early_irq, align 8, !dbg !508
  %inc155 = add i64 %44, 1, !dbg !508
  store i64 %inc155, i64* %rx_early_irq, align 8, !dbg !508
  br label %if.end156, !dbg !506

if.end156:                                        ; preds = %if.then154, %if.end145
  br label %if.end157, !dbg !509

if.end157:                                        ; preds = %if.end156, %if.end100
  %45 = load i32, i32* %intr_status, align 4, !dbg !510
  %and158 = and i32 %45, 469762048, !dbg !510
  %tobool159 = icmp ne i32 %and158, 0, !dbg !510
  %lnot160 = xor i1 %tobool159, true, !dbg !510
  %lnot162 = xor i1 %lnot160, true, !dbg !510
  %lnot.ext163 = zext i1 %lnot162 to i32, !dbg !510
  %conv164 = sext i32 %lnot.ext163 to i64, !dbg !510
  %tobool165 = icmp ne i64 %conv164, 0, !dbg !510
  br i1 %tobool165, label %if.then166, label %if.end168, !dbg !512

if.then166:                                       ; preds = %if.end157
  %46 = load i32, i32* %intr_status, align 4, !dbg !513
  %call167 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.dwmac_dma_interrupt, i64 0, i64 0), i32 %46) #6, !dbg !513
  br label %if.end168, !dbg !513

if.end168:                                        ; preds = %if.then166, %if.end157
  %47 = load i32, i32* %intr_status, align 4, !dbg !514
  %and169 = and i32 %47, 131071, !dbg !515
  %48 = load i8*, i8** %ioaddr.addr, align 8, !dbg !516
  %add.ptr170 = getelementptr i8, i8* %48, i64 4116, !dbg !517
  call void @writel(i32 %and169, i8* %add.ptr170) #4, !dbg !518
  %49 = load i32, i32* %ret, align 4, !dbg !519
  ret i32 %49, !dbg !520
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac_dma_flush_tx_fifo(i8* %ioaddr) #0 !dbg !521 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %csr6 = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !522, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.declare(metadata i32* %csr6, metadata !524, metadata !DIExpression()), !dbg !525
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !526
  %add.ptr = getelementptr i8, i8* %0, i64 4120, !dbg !527
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !528
  store i32 %call, i32* %csr6, align 4, !dbg !525
  %1 = load i32, i32* %csr6, align 4, !dbg !529
  %or = or i32 %1, 1048576, !dbg !530
  %2 = load i8*, i8** %ioaddr.addr, align 8, !dbg !531
  %add.ptr1 = getelementptr i8, i8* %2, i64 4120, !dbg !532
  call void @writel(i32 %or, i8* %add.ptr1) #4, !dbg !533
  br label %do.body, !dbg !534

do.body:                                          ; preds = %do.cond, %entry
  br label %do.cond, !dbg !535

do.cond:                                          ; preds = %do.body
  %3 = load i8*, i8** %ioaddr.addr, align 8, !dbg !537
  %add.ptr2 = getelementptr i8, i8* %3, i64 4120, !dbg !538
  %call3 = call i32 @readl(i8* %add.ptr2) #4, !dbg !539
  %and = and i32 %call3, 1048576, !dbg !540
  %tobool = icmp ne i32 %and, 0, !dbg !535
  br i1 %tobool, label %do.body, label %do.end, !dbg !535, !llvm.loop !541

do.end:                                           ; preds = %do.cond
  ret void, !dbg !543
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @stmmac_set_mac_addr(i8* %ioaddr, i8* %addr, i32 %high, i32 %low) #0 !dbg !544 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %addr.addr = alloca i8*, align 8
  %high.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %data = alloca i64, align 8
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !551, metadata !DIExpression()), !dbg !552
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !553, metadata !DIExpression()), !dbg !554
  store i32 %high, i32* %high.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %high.addr, metadata !555, metadata !DIExpression()), !dbg !556
  store i32 %low, i32* %low.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %low.addr, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata i64* %data, metadata !559, metadata !DIExpression()), !dbg !560
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !561
  %arrayidx = getelementptr i8, i8* %0, i64 5, !dbg !561
  %1 = load i8, i8* %arrayidx, align 1, !dbg !561
  %conv = zext i8 %1 to i32, !dbg !561
  %shl = shl i32 %conv, 8, !dbg !562
  %2 = load i8*, i8** %addr.addr, align 8, !dbg !563
  %arrayidx1 = getelementptr i8, i8* %2, i64 4, !dbg !563
  %3 = load i8, i8* %arrayidx1, align 1, !dbg !563
  %conv2 = zext i8 %3 to i32, !dbg !563
  %or = or i32 %shl, %conv2, !dbg !564
  %conv3 = sext i32 %or to i64, !dbg !565
  store i64 %conv3, i64* %data, align 8, !dbg !566
  %4 = load i64, i64* %data, align 8, !dbg !567
  %or4 = or i64 %4, 2147483648, !dbg !568
  %conv5 = trunc i64 %or4 to i32, !dbg !567
  %5 = load i8*, i8** %ioaddr.addr, align 8, !dbg !569
  %6 = load i32, i32* %high.addr, align 4, !dbg !570
  %idx.ext = zext i32 %6 to i64, !dbg !571
  %add.ptr = getelementptr i8, i8* %5, i64 %idx.ext, !dbg !571
  call void @writel(i32 %conv5, i8* %add.ptr) #4, !dbg !572
  %7 = load i8*, i8** %addr.addr, align 8, !dbg !573
  %arrayidx6 = getelementptr i8, i8* %7, i64 3, !dbg !573
  %8 = load i8, i8* %arrayidx6, align 1, !dbg !573
  %conv7 = zext i8 %8 to i32, !dbg !573
  %shl8 = shl i32 %conv7, 24, !dbg !574
  %9 = load i8*, i8** %addr.addr, align 8, !dbg !575
  %arrayidx9 = getelementptr i8, i8* %9, i64 2, !dbg !575
  %10 = load i8, i8* %arrayidx9, align 1, !dbg !575
  %conv10 = zext i8 %10 to i32, !dbg !575
  %shl11 = shl i32 %conv10, 16, !dbg !576
  %or12 = or i32 %shl8, %shl11, !dbg !577
  %11 = load i8*, i8** %addr.addr, align 8, !dbg !578
  %arrayidx13 = getelementptr i8, i8* %11, i64 1, !dbg !578
  %12 = load i8, i8* %arrayidx13, align 1, !dbg !578
  %conv14 = zext i8 %12 to i32, !dbg !578
  %shl15 = shl i32 %conv14, 8, !dbg !579
  %or16 = or i32 %or12, %shl15, !dbg !580
  %13 = load i8*, i8** %addr.addr, align 8, !dbg !581
  %arrayidx17 = getelementptr i8, i8* %13, i64 0, !dbg !581
  %14 = load i8, i8* %arrayidx17, align 1, !dbg !581
  %conv18 = zext i8 %14 to i32, !dbg !581
  %or19 = or i32 %or16, %conv18, !dbg !582
  %conv20 = sext i32 %or19 to i64, !dbg !583
  store i64 %conv20, i64* %data, align 8, !dbg !584
  %15 = load i64, i64* %data, align 8, !dbg !585
  %conv21 = trunc i64 %15 to i32, !dbg !585
  %16 = load i8*, i8** %ioaddr.addr, align 8, !dbg !586
  %17 = load i32, i32* %low.addr, align 4, !dbg !587
  %idx.ext22 = zext i32 %17 to i64, !dbg !588
  %add.ptr23 = getelementptr i8, i8* %16, i64 %idx.ext22, !dbg !588
  call void @writel(i32 %conv21, i8* %add.ptr23) #4, !dbg !589
  ret void, !dbg !590
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @stmmac_set_mac(i8* %ioaddr, i1 zeroext %enable) #0 !dbg !591 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %enable.addr = alloca i8, align 1
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !594, metadata !DIExpression()), !dbg !595
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !596, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.declare(metadata i32* %value, metadata !598, metadata !DIExpression()), !dbg !599
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !600
  %add.ptr = getelementptr i8, i8* %0, i64 0, !dbg !601
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !602
  store i32 %call, i32* %value, align 4, !dbg !599
  %1 = load i8, i8* %enable.addr, align 1, !dbg !603
  %tobool = trunc i8 %1 to i1, !dbg !603
  br i1 %tobool, label %if.then, label %if.else, !dbg !605

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %value, align 4, !dbg !606
  %or = or i32 %2, 12, !dbg !606
  store i32 %or, i32* %value, align 4, !dbg !606
  br label %if.end, !dbg !607

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !608
  %and = and i32 %3, -13, !dbg !608
  store i32 %and, i32* %value, align 4, !dbg !608
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %value, align 4, !dbg !609
  %5 = load i8*, i8** %ioaddr.addr, align 8, !dbg !610
  %add.ptr1 = getelementptr i8, i8* %5, i64 0, !dbg !611
  call void @writel(i32 %4, i8* %add.ptr1) #4, !dbg !612
  ret void, !dbg !613
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @stmmac_get_mac_addr(i8* %ioaddr, i8* %addr, i32 %high, i32 %low) #0 !dbg !614 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %addr.addr = alloca i8*, align 8
  %high.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %hi_addr = alloca i32, align 4
  %lo_addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !618, metadata !DIExpression()), !dbg !619
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !620, metadata !DIExpression()), !dbg !621
  store i32 %high, i32* %high.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %high.addr, metadata !622, metadata !DIExpression()), !dbg !623
  store i32 %low, i32* %low.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %low.addr, metadata !624, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.declare(metadata i32* %hi_addr, metadata !626, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata i32* %lo_addr, metadata !628, metadata !DIExpression()), !dbg !629
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !630
  %1 = load i32, i32* %high.addr, align 4, !dbg !631
  %idx.ext = zext i32 %1 to i64, !dbg !632
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !632
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !633
  store i32 %call, i32* %hi_addr, align 4, !dbg !634
  %2 = load i8*, i8** %ioaddr.addr, align 8, !dbg !635
  %3 = load i32, i32* %low.addr, align 4, !dbg !636
  %idx.ext1 = zext i32 %3 to i64, !dbg !637
  %add.ptr2 = getelementptr i8, i8* %2, i64 %idx.ext1, !dbg !637
  %call3 = call i32 @readl(i8* %add.ptr2) #4, !dbg !638
  store i32 %call3, i32* %lo_addr, align 4, !dbg !639
  %4 = load i32, i32* %lo_addr, align 4, !dbg !640
  %and = and i32 %4, 255, !dbg !641
  %conv = trunc i32 %and to i8, !dbg !640
  %5 = load i8*, i8** %addr.addr, align 8, !dbg !642
  %arrayidx = getelementptr i8, i8* %5, i64 0, !dbg !642
  store i8 %conv, i8* %arrayidx, align 1, !dbg !643
  %6 = load i32, i32* %lo_addr, align 4, !dbg !644
  %shr = lshr i32 %6, 8, !dbg !645
  %and4 = and i32 %shr, 255, !dbg !646
  %conv5 = trunc i32 %and4 to i8, !dbg !647
  %7 = load i8*, i8** %addr.addr, align 8, !dbg !648
  %arrayidx6 = getelementptr i8, i8* %7, i64 1, !dbg !648
  store i8 %conv5, i8* %arrayidx6, align 1, !dbg !649
  %8 = load i32, i32* %lo_addr, align 4, !dbg !650
  %shr7 = lshr i32 %8, 16, !dbg !651
  %and8 = and i32 %shr7, 255, !dbg !652
  %conv9 = trunc i32 %and8 to i8, !dbg !653
  %9 = load i8*, i8** %addr.addr, align 8, !dbg !654
  %arrayidx10 = getelementptr i8, i8* %9, i64 2, !dbg !654
  store i8 %conv9, i8* %arrayidx10, align 1, !dbg !655
  %10 = load i32, i32* %lo_addr, align 4, !dbg !656
  %shr11 = lshr i32 %10, 24, !dbg !657
  %and12 = and i32 %shr11, 255, !dbg !658
  %conv13 = trunc i32 %and12 to i8, !dbg !659
  %11 = load i8*, i8** %addr.addr, align 8, !dbg !660
  %arrayidx14 = getelementptr i8, i8* %11, i64 3, !dbg !660
  store i8 %conv13, i8* %arrayidx14, align 1, !dbg !661
  %12 = load i32, i32* %hi_addr, align 4, !dbg !662
  %and15 = and i32 %12, 255, !dbg !663
  %conv16 = trunc i32 %and15 to i8, !dbg !662
  %13 = load i8*, i8** %addr.addr, align 8, !dbg !664
  %arrayidx17 = getelementptr i8, i8* %13, i64 4, !dbg !664
  store i8 %conv16, i8* %arrayidx17, align 1, !dbg !665
  %14 = load i32, i32* %hi_addr, align 4, !dbg !666
  %shr18 = lshr i32 %14, 8, !dbg !667
  %and19 = and i32 %shr18, 255, !dbg !668
  %conv20 = trunc i32 %and19 to i8, !dbg !669
  %15 = load i8*, i8** %addr.addr, align 8, !dbg !670
  %arrayidx21 = getelementptr i8, i8* %15, i64 5, !dbg !670
  store i8 %conv20, i8* %arrayidx21, align 1, !dbg !671
  ret void, !dbg !672
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { nounwind }
attributes #6 = { cold noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_irq_status", file: !4, line: 299, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/common.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "tx_hard_error", value: 1, isUnsigned: true)
!8 = !DIEnumerator(name: "tx_hard_error_bump_tc", value: 2, isUnsigned: true)
!9 = !DIEnumerator(name: "handle_rx", value: 4, isUnsigned: true)
!10 = !DIEnumerator(name: "handle_tx", value: 8, isUnsigned: true)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"Code Model", i32 2}
!18 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!19 = distinct !DISubprogram(name: "dwmac_dma_reset", scope: !1, file: !1, line: 16, type: !20, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !{}
!25 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !19, file: !1, line: 16, type: !23)
!26 = !DILocation(line: 16, column: 35, scope: !19)
!27 = !DILocalVariable(name: "value", scope: !19, file: !1, line: 18, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !29, line: 21, baseType: !30)
!29 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !31, line: 27, baseType: !5)
!31 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!32 = !DILocation(line: 18, column: 6, scope: !19)
!33 = !DILocation(line: 18, column: 20, scope: !19)
!34 = !DILocation(line: 18, column: 27, scope: !19)
!35 = !DILocation(line: 18, column: 14, scope: !19)
!36 = !DILocation(line: 21, column: 8, scope: !19)
!37 = !DILocation(line: 22, column: 9, scope: !19)
!38 = !DILocation(line: 22, column: 16, scope: !19)
!39 = !DILocation(line: 22, column: 23, scope: !19)
!40 = !DILocation(line: 22, column: 2, scope: !19)
!41 = !DILocalVariable(name: "__timeout_us", scope: !42, file: !1, line: 24, type: !43)
!42 = distinct !DILexicalBlock(scope: !19, file: !1, line: 24, column: 9)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !29, line: 23, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !31, line: 31, baseType: !45)
!45 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DILocation(line: 24, column: 9, scope: !42)
!47 = !DILocalVariable(name: "__sleep_us", scope: !42, file: !1, line: 24, type: !48)
!48 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !DILocalVariable(name: "__timeout", scope: !42, file: !1, line: 24, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !51, line: 29, baseType: !52)
!51 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !29, line: 22, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !31, line: 30, baseType: !54)
!54 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!55 = !DILocation(line: 24, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 24, column: 9)
!57 = distinct !DILexicalBlock(scope: !42, file: !1, line: 24, column: 9)
!58 = !DILocation(line: 24, column: 9, scope: !57)
!59 = !DILocation(line: 24, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 24, column: 9)
!61 = !DILocation(line: 24, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !60, file: !1, line: 24, column: 9)
!63 = !DILocation(line: 24, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !1, line: 24, column: 9)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 24, column: 9)
!66 = distinct !DILexicalBlock(scope: !42, file: !1, line: 24, column: 9)
!67 = !DILocation(line: 24, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 24, column: 9)
!69 = !DILocation(line: 24, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !64, file: !1, line: 24, column: 9)
!71 = !DILocation(line: 24, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !70, file: !1, line: 24, column: 9)
!73 = !DILocation(line: 24, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !64, file: !1, line: 24, column: 9)
!75 = !DILocation(line: 24, column: 9, scope: !65)
!76 = distinct !{!76, !77, !77}
!77 = !DILocation(line: 24, column: 9, scope: !66)
!78 = !DILocation(line: 24, column: 2, scope: !19)
!79 = distinct !DISubprogram(name: "readl", scope: !80, file: !80, line: 59, type: !81, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!80 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!81 = !DISubroutineType(types: !82)
!82 = !{!5, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!86 = !DILocalVariable(name: "addr", arg: 1, scope: !79, file: !80, line: 59, type: !83)
!87 = !DILocation(line: 59, column: 1, scope: !79)
!88 = !DILocalVariable(name: "ret", scope: !79, file: !80, line: 59, type: !5)
!89 = !{i32 -2146521641}
!90 = distinct !DISubprogram(name: "writel", scope: !80, file: !80, line: 67, type: !91, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !5, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!94 = !DILocalVariable(name: "val", arg: 1, scope: !90, file: !80, line: 67, type: !5)
!95 = !DILocation(line: 67, column: 1, scope: !90)
!96 = !DILocalVariable(name: "addr", arg: 2, scope: !90, file: !80, line: 67, type: !93)
!97 = !{i32 -2146519248}
!98 = distinct !DISubprogram(name: "ktime_add_us", scope: !51, file: !51, line: 179, type: !99, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!99 = !DISubroutineType(types: !100)
!100 = !{!50, !101, !102}
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!103 = !DILocalVariable(name: "kt", arg: 1, scope: !98, file: !51, line: 179, type: !101)
!104 = !DILocation(line: 179, column: 50, scope: !98)
!105 = !DILocalVariable(name: "usec", arg: 2, scope: !98, file: !51, line: 179, type: !102)
!106 = !DILocation(line: 179, column: 64, scope: !98)
!107 = !DILocation(line: 181, column: 9, scope: !98)
!108 = !DILocation(line: 181, column: 2, scope: !98)
!109 = distinct !DISubprogram(name: "ktime_compare", scope: !51, file: !51, line: 95, type: !110, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!110 = !DISubroutineType(types: !111)
!111 = !{!22, !101, !101}
!112 = !DILocalVariable(name: "cmp1", arg: 1, scope: !109, file: !51, line: 95, type: !101)
!113 = !DILocation(line: 95, column: 47, scope: !109)
!114 = !DILocalVariable(name: "cmp2", arg: 2, scope: !109, file: !51, line: 95, type: !101)
!115 = !DILocation(line: 95, column: 67, scope: !109)
!116 = !DILocation(line: 97, column: 6, scope: !117)
!117 = distinct !DILexicalBlock(scope: !109, file: !51, line: 97, column: 6)
!118 = !DILocation(line: 97, column: 13, scope: !117)
!119 = !DILocation(line: 97, column: 11, scope: !117)
!120 = !DILocation(line: 97, column: 6, scope: !109)
!121 = !DILocation(line: 98, column: 3, scope: !117)
!122 = !DILocation(line: 99, column: 6, scope: !123)
!123 = distinct !DILexicalBlock(scope: !109, file: !51, line: 99, column: 6)
!124 = !DILocation(line: 99, column: 13, scope: !123)
!125 = !DILocation(line: 99, column: 11, scope: !123)
!126 = !DILocation(line: 99, column: 6, scope: !109)
!127 = !DILocation(line: 100, column: 3, scope: !123)
!128 = !DILocation(line: 101, column: 2, scope: !109)
!129 = !DILocation(line: 102, column: 1, scope: !109)
!130 = distinct !DISubprogram(name: "dwmac_enable_dma_transmission", scope: !1, file: !1, line: 30, type: !131, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !23}
!133 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !130, file: !1, line: 30, type: !23)
!134 = !DILocation(line: 30, column: 50, scope: !130)
!135 = !DILocation(line: 32, column: 12, scope: !130)
!136 = !DILocation(line: 32, column: 19, scope: !130)
!137 = !DILocation(line: 32, column: 2, scope: !130)
!138 = !DILocation(line: 33, column: 1, scope: !130)
!139 = distinct !DISubprogram(name: "dwmac_enable_dma_irq", scope: !1, file: !1, line: 35, type: !140, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !23, !28, !142, !142}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !143, line: 30, baseType: !144)
!143 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!145 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !139, file: !1, line: 35, type: !23)
!146 = !DILocation(line: 35, column: 41, scope: !139)
!147 = !DILocalVariable(name: "chan", arg: 2, scope: !139, file: !1, line: 35, type: !28)
!148 = !DILocation(line: 35, column: 53, scope: !139)
!149 = !DILocalVariable(name: "rx", arg: 3, scope: !139, file: !1, line: 35, type: !142)
!150 = !DILocation(line: 35, column: 64, scope: !139)
!151 = !DILocalVariable(name: "tx", arg: 4, scope: !139, file: !1, line: 35, type: !142)
!152 = !DILocation(line: 35, column: 73, scope: !139)
!153 = !DILocalVariable(name: "value", scope: !139, file: !1, line: 37, type: !28)
!154 = !DILocation(line: 37, column: 6, scope: !139)
!155 = !DILocation(line: 37, column: 20, scope: !139)
!156 = !DILocation(line: 37, column: 27, scope: !139)
!157 = !DILocation(line: 37, column: 14, scope: !139)
!158 = !DILocation(line: 39, column: 6, scope: !159)
!159 = distinct !DILexicalBlock(scope: !139, file: !1, line: 39, column: 6)
!160 = !DILocation(line: 39, column: 6, scope: !139)
!161 = !DILocation(line: 40, column: 9, scope: !159)
!162 = !DILocation(line: 40, column: 3, scope: !159)
!163 = !DILocation(line: 41, column: 6, scope: !164)
!164 = distinct !DILexicalBlock(scope: !139, file: !1, line: 41, column: 6)
!165 = !DILocation(line: 41, column: 6, scope: !139)
!166 = !DILocation(line: 42, column: 9, scope: !164)
!167 = !DILocation(line: 42, column: 3, scope: !164)
!168 = !DILocation(line: 44, column: 9, scope: !139)
!169 = !DILocation(line: 44, column: 16, scope: !139)
!170 = !DILocation(line: 44, column: 23, scope: !139)
!171 = !DILocation(line: 44, column: 2, scope: !139)
!172 = !DILocation(line: 45, column: 1, scope: !139)
!173 = distinct !DISubprogram(name: "dwmac_disable_dma_irq", scope: !1, file: !1, line: 47, type: !140, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!174 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !173, file: !1, line: 47, type: !23)
!175 = !DILocation(line: 47, column: 42, scope: !173)
!176 = !DILocalVariable(name: "chan", arg: 2, scope: !173, file: !1, line: 47, type: !28)
!177 = !DILocation(line: 47, column: 54, scope: !173)
!178 = !DILocalVariable(name: "rx", arg: 3, scope: !173, file: !1, line: 47, type: !142)
!179 = !DILocation(line: 47, column: 65, scope: !173)
!180 = !DILocalVariable(name: "tx", arg: 4, scope: !173, file: !1, line: 47, type: !142)
!181 = !DILocation(line: 47, column: 74, scope: !173)
!182 = !DILocalVariable(name: "value", scope: !173, file: !1, line: 49, type: !28)
!183 = !DILocation(line: 49, column: 6, scope: !173)
!184 = !DILocation(line: 49, column: 20, scope: !173)
!185 = !DILocation(line: 49, column: 27, scope: !173)
!186 = !DILocation(line: 49, column: 14, scope: !173)
!187 = !DILocation(line: 51, column: 6, scope: !188)
!188 = distinct !DILexicalBlock(scope: !173, file: !1, line: 51, column: 6)
!189 = !DILocation(line: 51, column: 6, scope: !173)
!190 = !DILocation(line: 52, column: 9, scope: !188)
!191 = !DILocation(line: 52, column: 3, scope: !188)
!192 = !DILocation(line: 53, column: 6, scope: !193)
!193 = distinct !DILexicalBlock(scope: !173, file: !1, line: 53, column: 6)
!194 = !DILocation(line: 53, column: 6, scope: !173)
!195 = !DILocation(line: 54, column: 9, scope: !193)
!196 = !DILocation(line: 54, column: 3, scope: !193)
!197 = !DILocation(line: 56, column: 9, scope: !173)
!198 = !DILocation(line: 56, column: 16, scope: !173)
!199 = !DILocation(line: 56, column: 23, scope: !173)
!200 = !DILocation(line: 56, column: 2, scope: !173)
!201 = !DILocation(line: 57, column: 1, scope: !173)
!202 = distinct !DISubprogram(name: "dwmac_dma_start_tx", scope: !1, file: !1, line: 59, type: !203, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !23, !28}
!205 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !202, file: !1, line: 59, type: !23)
!206 = !DILocation(line: 59, column: 39, scope: !202)
!207 = !DILocalVariable(name: "chan", arg: 2, scope: !202, file: !1, line: 59, type: !28)
!208 = !DILocation(line: 59, column: 51, scope: !202)
!209 = !DILocalVariable(name: "value", scope: !202, file: !1, line: 61, type: !28)
!210 = !DILocation(line: 61, column: 6, scope: !202)
!211 = !DILocation(line: 61, column: 20, scope: !202)
!212 = !DILocation(line: 61, column: 27, scope: !202)
!213 = !DILocation(line: 61, column: 14, scope: !202)
!214 = !DILocation(line: 62, column: 8, scope: !202)
!215 = !DILocation(line: 63, column: 9, scope: !202)
!216 = !DILocation(line: 63, column: 16, scope: !202)
!217 = !DILocation(line: 63, column: 23, scope: !202)
!218 = !DILocation(line: 63, column: 2, scope: !202)
!219 = !DILocation(line: 64, column: 1, scope: !202)
!220 = distinct !DISubprogram(name: "dwmac_dma_stop_tx", scope: !1, file: !1, line: 66, type: !203, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!221 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !220, file: !1, line: 66, type: !23)
!222 = !DILocation(line: 66, column: 38, scope: !220)
!223 = !DILocalVariable(name: "chan", arg: 2, scope: !220, file: !1, line: 66, type: !28)
!224 = !DILocation(line: 66, column: 50, scope: !220)
!225 = !DILocalVariable(name: "value", scope: !220, file: !1, line: 68, type: !28)
!226 = !DILocation(line: 68, column: 6, scope: !220)
!227 = !DILocation(line: 68, column: 20, scope: !220)
!228 = !DILocation(line: 68, column: 27, scope: !220)
!229 = !DILocation(line: 68, column: 14, scope: !220)
!230 = !DILocation(line: 69, column: 8, scope: !220)
!231 = !DILocation(line: 70, column: 9, scope: !220)
!232 = !DILocation(line: 70, column: 16, scope: !220)
!233 = !DILocation(line: 70, column: 23, scope: !220)
!234 = !DILocation(line: 70, column: 2, scope: !220)
!235 = !DILocation(line: 71, column: 1, scope: !220)
!236 = distinct !DISubprogram(name: "dwmac_dma_start_rx", scope: !1, file: !1, line: 73, type: !203, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!237 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !236, file: !1, line: 73, type: !23)
!238 = !DILocation(line: 73, column: 39, scope: !236)
!239 = !DILocalVariable(name: "chan", arg: 2, scope: !236, file: !1, line: 73, type: !28)
!240 = !DILocation(line: 73, column: 51, scope: !236)
!241 = !DILocalVariable(name: "value", scope: !236, file: !1, line: 75, type: !28)
!242 = !DILocation(line: 75, column: 6, scope: !236)
!243 = !DILocation(line: 75, column: 20, scope: !236)
!244 = !DILocation(line: 75, column: 27, scope: !236)
!245 = !DILocation(line: 75, column: 14, scope: !236)
!246 = !DILocation(line: 76, column: 8, scope: !236)
!247 = !DILocation(line: 77, column: 9, scope: !236)
!248 = !DILocation(line: 77, column: 16, scope: !236)
!249 = !DILocation(line: 77, column: 23, scope: !236)
!250 = !DILocation(line: 77, column: 2, scope: !236)
!251 = !DILocation(line: 78, column: 1, scope: !236)
!252 = distinct !DISubprogram(name: "dwmac_dma_stop_rx", scope: !1, file: !1, line: 80, type: !203, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!253 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !252, file: !1, line: 80, type: !23)
!254 = !DILocation(line: 80, column: 38, scope: !252)
!255 = !DILocalVariable(name: "chan", arg: 2, scope: !252, file: !1, line: 80, type: !28)
!256 = !DILocation(line: 80, column: 50, scope: !252)
!257 = !DILocalVariable(name: "value", scope: !252, file: !1, line: 82, type: !28)
!258 = !DILocation(line: 82, column: 6, scope: !252)
!259 = !DILocation(line: 82, column: 20, scope: !252)
!260 = !DILocation(line: 82, column: 27, scope: !252)
!261 = !DILocation(line: 82, column: 14, scope: !252)
!262 = !DILocation(line: 83, column: 8, scope: !252)
!263 = !DILocation(line: 84, column: 9, scope: !252)
!264 = !DILocation(line: 84, column: 16, scope: !252)
!265 = !DILocation(line: 84, column: 23, scope: !252)
!266 = !DILocation(line: 84, column: 2, scope: !252)
!267 = !DILocation(line: 85, column: 1, scope: !252)
!268 = distinct !DISubprogram(name: "dwmac_dma_interrupt", scope: !1, file: !1, line: 157, type: !269, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!269 = !DISubroutineType(types: !270)
!270 = !{!22, !23, !271, !28}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_extra_stats", file: !4, line: 61, size: 7680, elements: !273)
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tx_underflow", scope: !272, file: !4, line: 63, baseType: !48, size: 64, align: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tx_carrier", scope: !272, file: !4, line: 64, baseType: !48, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tx_losscarrier", scope: !272, file: !4, line: 65, baseType: !48, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag", scope: !272, file: !4, line: 66, baseType: !48, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tx_deferred", scope: !272, file: !4, line: 67, baseType: !48, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tx_vlan", scope: !272, file: !4, line: 68, baseType: !48, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber", scope: !272, file: !4, line: 69, baseType: !48, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tx_frame_flushed", scope: !272, file: !4, line: 70, baseType: !48, size: 64, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tx_payload_error", scope: !272, file: !4, line: 71, baseType: !48, size: 64, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ip_header_error", scope: !272, file: !4, line: 72, baseType: !48, size: 64, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "rx_desc", scope: !272, file: !4, line: 74, baseType: !48, size: 64, offset: 640)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sa_filter_fail", scope: !272, file: !4, line: 75, baseType: !48, size: 64, offset: 704)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_error", scope: !272, file: !4, line: 76, baseType: !48, size: 64, offset: 768)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_csum_error", scope: !272, file: !4, line: 77, baseType: !48, size: 64, offset: 832)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "rx_collision", scope: !272, file: !4, line: 78, baseType: !48, size: 64, offset: 896)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rx_crc_errors", scope: !272, file: !4, line: 79, baseType: !48, size: 64, offset: 960)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "dribbling_bit", scope: !272, file: !4, line: 80, baseType: !48, size: 64, offset: 1024)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "rx_length", scope: !272, file: !4, line: 81, baseType: !48, size: 64, offset: 1088)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "rx_mii", scope: !272, file: !4, line: 82, baseType: !48, size: 64, offset: 1152)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "rx_multicast", scope: !272, file: !4, line: 83, baseType: !48, size: 64, offset: 1216)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "rx_gmac_overflow", scope: !272, file: !4, line: 84, baseType: !48, size: 64, offset: 1280)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog", scope: !272, file: !4, line: 85, baseType: !48, size: 64, offset: 1344)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "da_rx_filter_fail", scope: !272, file: !4, line: 86, baseType: !48, size: 64, offset: 1408)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sa_rx_filter_fail", scope: !272, file: !4, line: 87, baseType: !48, size: 64, offset: 1472)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "rx_missed_cntr", scope: !272, file: !4, line: 88, baseType: !48, size: 64, offset: 1536)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_cntr", scope: !272, file: !4, line: 89, baseType: !48, size: 64, offset: 1600)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rx_vlan", scope: !272, file: !4, line: 90, baseType: !48, size: 64, offset: 1664)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "rx_split_hdr_pkt_n", scope: !272, file: !4, line: 91, baseType: !48, size: 64, offset: 1728)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tx_undeflow_irq", scope: !272, file: !4, line: 93, baseType: !48, size: 64, offset: 1792)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tx_process_stopped_irq", scope: !272, file: !4, line: 94, baseType: !48, size: 64, offset: 1856)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber_irq", scope: !272, file: !4, line: 95, baseType: !48, size: 64, offset: 1920)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_irq", scope: !272, file: !4, line: 96, baseType: !48, size: 64, offset: 1984)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_unav_irq", scope: !272, file: !4, line: 97, baseType: !48, size: 64, offset: 2048)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "rx_process_stopped_irq", scope: !272, file: !4, line: 98, baseType: !48, size: 64, offset: 2112)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog_irq", scope: !272, file: !4, line: 99, baseType: !48, size: 64, offset: 2176)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tx_early_irq", scope: !272, file: !4, line: 100, baseType: !48, size: 64, offset: 2240)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_bus_error_irq", scope: !272, file: !4, line: 101, baseType: !48, size: 64, offset: 2304)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rx_early_irq", scope: !272, file: !4, line: 103, baseType: !48, size: 64, offset: 2368)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !272, file: !4, line: 104, baseType: !48, size: 64, offset: 2432)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tx_pkt_n", scope: !272, file: !4, line: 105, baseType: !48, size: 64, offset: 2496)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rx_pkt_n", scope: !272, file: !4, line: 106, baseType: !48, size: 64, offset: 2560)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "normal_irq_n", scope: !272, file: !4, line: 107, baseType: !48, size: 64, offset: 2624)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "rx_normal_irq_n", scope: !272, file: !4, line: 108, baseType: !48, size: 64, offset: 2688)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "napi_poll", scope: !272, file: !4, line: 109, baseType: !48, size: 64, offset: 2752)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tx_normal_irq_n", scope: !272, file: !4, line: 110, baseType: !48, size: 64, offset: 2816)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tx_clean", scope: !272, file: !4, line: 111, baseType: !48, size: 64, offset: 2880)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tx_set_ic_bit", scope: !272, file: !4, line: 112, baseType: !48, size: 64, offset: 2944)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "irq_receive_pmt_irq_n", scope: !272, file: !4, line: 113, baseType: !48, size: 64, offset: 3008)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_irq_n", scope: !272, file: !4, line: 115, baseType: !48, size: 64, offset: 3072)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_irq_n", scope: !272, file: !4, line: 116, baseType: !48, size: 64, offset: 3136)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_csum_offload_irq_n", scope: !272, file: !4, line: 117, baseType: !48, size: 64, offset: 3200)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_in_lpi_mode_n", scope: !272, file: !4, line: 119, baseType: !48, size: 64, offset: 3264)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_exit_lpi_mode_n", scope: !272, file: !4, line: 120, baseType: !48, size: 64, offset: 3328)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_in_lpi_mode_n", scope: !272, file: !4, line: 121, baseType: !48, size: 64, offset: 3392)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_exit_lpi_mode_n", scope: !272, file: !4, line: 122, baseType: !48, size: 64, offset: 3456)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "phy_eee_wakeup_error_n", scope: !272, file: !4, line: 123, baseType: !48, size: 64, offset: 3520)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hdr_err", scope: !272, file: !4, line: 125, baseType: !48, size: 64, offset: 3584)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ip_payload_err", scope: !272, file: !4, line: 126, baseType: !48, size: 64, offset: 3648)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ip_csum_bypassed", scope: !272, file: !4, line: 127, baseType: !48, size: 64, offset: 3712)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_pkt_rcvd", scope: !272, file: !4, line: 128, baseType: !48, size: 64, offset: 3776)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_pkt_rcvd", scope: !272, file: !4, line: 129, baseType: !48, size: 64, offset: 3840)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "no_ptp_rx_msg_type_ext", scope: !272, file: !4, line: 130, baseType: !48, size: 64, offset: 3904)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_sync", scope: !272, file: !4, line: 131, baseType: !48, size: 64, offset: 3968)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_follow_up", scope: !272, file: !4, line: 132, baseType: !48, size: 64, offset: 4032)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_req", scope: !272, file: !4, line: 133, baseType: !48, size: 64, offset: 4096)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_resp", scope: !272, file: !4, line: 134, baseType: !48, size: 64, offset: 4160)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_req", scope: !272, file: !4, line: 135, baseType: !48, size: 64, offset: 4224)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_resp", scope: !272, file: !4, line: 136, baseType: !48, size: 64, offset: 4288)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_follow_up", scope: !272, file: !4, line: 137, baseType: !48, size: 64, offset: 4352)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_announce", scope: !272, file: !4, line: 138, baseType: !48, size: 64, offset: 4416)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_management", scope: !272, file: !4, line: 139, baseType: !48, size: 64, offset: 4480)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_pkt_reserved_type", scope: !272, file: !4, line: 140, baseType: !48, size: 64, offset: 4544)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_frame_type", scope: !272, file: !4, line: 141, baseType: !48, size: 64, offset: 4608)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_ver", scope: !272, file: !4, line: 142, baseType: !48, size: 64, offset: 4672)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp_dropped", scope: !272, file: !4, line: 143, baseType: !48, size: 64, offset: 4736)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "av_pkt_rcvd", scope: !272, file: !4, line: 144, baseType: !48, size: 64, offset: 4800)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "av_tagged_pkt_rcvd", scope: !272, file: !4, line: 145, baseType: !48, size: 64, offset: 4864)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag_priority_val", scope: !272, file: !4, line: 146, baseType: !48, size: 64, offset: 4928)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "l3_filter_match", scope: !272, file: !4, line: 147, baseType: !48, size: 64, offset: 4992)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "l4_filter_match", scope: !272, file: !4, line: 148, baseType: !48, size: 64, offset: 5056)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "l3_l4_filter_no_match", scope: !272, file: !4, line: 149, baseType: !48, size: 64, offset: 5120)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_ane_n", scope: !272, file: !4, line: 151, baseType: !48, size: 64, offset: 5184)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_link_n", scope: !272, file: !4, line: 152, baseType: !48, size: 64, offset: 5248)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rgmii_n", scope: !272, file: !4, line: 153, baseType: !48, size: 64, offset: 5312)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_link", scope: !272, file: !4, line: 154, baseType: !48, size: 64, offset: 5376)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_duplex", scope: !272, file: !4, line: 155, baseType: !48, size: 64, offset: 5440)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_speed", scope: !272, file: !4, line: 156, baseType: !48, size: 64, offset: 5504)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_status_fifo_full", scope: !272, file: !4, line: 158, baseType: !48, size: 64, offset: 5568)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_not_empty", scope: !272, file: !4, line: 159, baseType: !48, size: 64, offset: 5632)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mmtl_fifo_ctrl", scope: !272, file: !4, line: 160, baseType: !48, size: 64, offset: 5696)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_write", scope: !272, file: !4, line: 161, baseType: !48, size: 64, offset: 5760)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_wait", scope: !272, file: !4, line: 162, baseType: !48, size: 64, offset: 5824)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_read", scope: !272, file: !4, line: 163, baseType: !48, size: 64, offset: 5888)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_idle", scope: !272, file: !4, line: 164, baseType: !48, size: 64, offset: 5952)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_in_pause", scope: !272, file: !4, line: 165, baseType: !48, size: 64, offset: 6016)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_xfer", scope: !272, file: !4, line: 166, baseType: !48, size: 64, offset: 6080)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_idle", scope: !272, file: !4, line: 167, baseType: !48, size: 64, offset: 6144)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_wait", scope: !272, file: !4, line: 168, baseType: !48, size: 64, offset: 6208)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_pause", scope: !272, file: !4, line: 169, baseType: !48, size: 64, offset: 6272)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_tx_proto_engine", scope: !272, file: !4, line: 170, baseType: !48, size: 64, offset: 6336)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_full", scope: !272, file: !4, line: 171, baseType: !48, size: 64, offset: 6400)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_above_thresh", scope: !272, file: !4, line: 172, baseType: !48, size: 64, offset: 6464)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_below_thresh", scope: !272, file: !4, line: 173, baseType: !48, size: 64, offset: 6528)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_empty", scope: !272, file: !4, line: 174, baseType: !48, size: 64, offset: 6592)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_flush", scope: !272, file: !4, line: 175, baseType: !48, size: 64, offset: 6656)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_read_data", scope: !272, file: !4, line: 176, baseType: !48, size: 64, offset: 6720)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_status", scope: !272, file: !4, line: 177, baseType: !48, size: 64, offset: 6784)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_idle", scope: !272, file: !4, line: 178, baseType: !48, size: 64, offset: 6848)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_ctrl_active", scope: !272, file: !4, line: 179, baseType: !48, size: 64, offset: 6912)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "mac_rx_frame_ctrl_fifo", scope: !272, file: !4, line: 180, baseType: !48, size: 64, offset: 6976)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_rx_proto_engine", scope: !272, file: !4, line: 181, baseType: !48, size: 64, offset: 7040)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_frames", scope: !272, file: !4, line: 183, baseType: !48, size: 64, offset: 7104)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_nfrags", scope: !272, file: !4, line: 184, baseType: !48, size: 64, offset: 7168)
!387 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !268, file: !1, line: 157, type: !23)
!388 = !DILocation(line: 157, column: 39, scope: !268)
!389 = !DILocalVariable(name: "x", arg: 2, scope: !268, file: !1, line: 158, type: !271)
!390 = !DILocation(line: 158, column: 31, scope: !268)
!391 = !DILocalVariable(name: "chan", arg: 3, scope: !268, file: !1, line: 158, type: !28)
!392 = !DILocation(line: 158, column: 38, scope: !268)
!393 = !DILocalVariable(name: "ret", scope: !268, file: !1, line: 160, type: !22)
!394 = !DILocation(line: 160, column: 6, scope: !268)
!395 = !DILocalVariable(name: "intr_status", scope: !268, file: !1, line: 162, type: !28)
!396 = !DILocation(line: 162, column: 6, scope: !268)
!397 = !DILocation(line: 162, column: 26, scope: !268)
!398 = !DILocation(line: 162, column: 33, scope: !268)
!399 = !DILocation(line: 162, column: 20, scope: !268)
!400 = !DILocation(line: 171, column: 6, scope: !401)
!401 = distinct !DILexicalBlock(scope: !268, file: !1, line: 171, column: 6)
!402 = !DILocation(line: 171, column: 6, scope: !268)
!403 = !DILocation(line: 172, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !1, line: 172, column: 7)
!405 = distinct !DILexicalBlock(scope: !401, file: !1, line: 171, column: 46)
!406 = !DILocation(line: 172, column: 7, scope: !405)
!407 = !DILocation(line: 173, column: 8, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !1, line: 172, column: 47)
!409 = !DILocation(line: 174, column: 4, scope: !408)
!410 = !DILocation(line: 174, column: 7, scope: !408)
!411 = !DILocation(line: 174, column: 22, scope: !408)
!412 = !DILocation(line: 175, column: 3, scope: !408)
!413 = !DILocation(line: 176, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !405, file: !1, line: 176, column: 7)
!415 = !DILocation(line: 176, column: 7, scope: !405)
!416 = !DILocation(line: 177, column: 4, scope: !414)
!417 = !DILocation(line: 177, column: 7, scope: !414)
!418 = !DILocation(line: 177, column: 20, scope: !414)
!419 = !DILocation(line: 179, column: 7, scope: !420)
!420 = distinct !DILexicalBlock(scope: !405, file: !1, line: 179, column: 7)
!421 = !DILocation(line: 179, column: 7, scope: !405)
!422 = !DILocation(line: 180, column: 4, scope: !420)
!423 = !DILocation(line: 180, column: 7, scope: !420)
!424 = !DILocation(line: 180, column: 22, scope: !420)
!425 = !DILocation(line: 182, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !405, file: !1, line: 182, column: 7)
!427 = !DILocation(line: 182, column: 7, scope: !405)
!428 = !DILocation(line: 183, column: 4, scope: !426)
!429 = !DILocation(line: 183, column: 7, scope: !426)
!430 = !DILocation(line: 183, column: 22, scope: !426)
!431 = !DILocation(line: 184, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !405, file: !1, line: 184, column: 7)
!433 = !DILocation(line: 184, column: 7, scope: !405)
!434 = !DILocation(line: 185, column: 4, scope: !432)
!435 = !DILocation(line: 185, column: 7, scope: !432)
!436 = !DILocation(line: 185, column: 29, scope: !432)
!437 = !DILocation(line: 186, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !405, file: !1, line: 186, column: 7)
!439 = !DILocation(line: 186, column: 7, scope: !405)
!440 = !DILocation(line: 187, column: 4, scope: !438)
!441 = !DILocation(line: 187, column: 7, scope: !438)
!442 = !DILocation(line: 187, column: 22, scope: !438)
!443 = !DILocation(line: 188, column: 7, scope: !444)
!444 = distinct !DILexicalBlock(scope: !405, file: !1, line: 188, column: 7)
!445 = !DILocation(line: 188, column: 7, scope: !405)
!446 = !DILocation(line: 189, column: 4, scope: !444)
!447 = !DILocation(line: 189, column: 7, scope: !444)
!448 = !DILocation(line: 189, column: 19, scope: !444)
!449 = !DILocation(line: 190, column: 7, scope: !450)
!450 = distinct !DILexicalBlock(scope: !405, file: !1, line: 190, column: 7)
!451 = !DILocation(line: 190, column: 7, scope: !405)
!452 = !DILocation(line: 191, column: 4, scope: !453)
!453 = distinct !DILexicalBlock(scope: !450, file: !1, line: 190, column: 47)
!454 = !DILocation(line: 191, column: 7, scope: !453)
!455 = !DILocation(line: 191, column: 29, scope: !453)
!456 = !DILocation(line: 192, column: 8, scope: !453)
!457 = !DILocation(line: 193, column: 3, scope: !453)
!458 = !DILocation(line: 194, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !405, file: !1, line: 194, column: 7)
!460 = !DILocation(line: 194, column: 7, scope: !405)
!461 = !DILocation(line: 195, column: 4, scope: !462)
!462 = distinct !DILexicalBlock(scope: !459, file: !1, line: 194, column: 47)
!463 = !DILocation(line: 195, column: 7, scope: !462)
!464 = !DILocation(line: 195, column: 26, scope: !462)
!465 = !DILocation(line: 196, column: 8, scope: !462)
!466 = !DILocation(line: 197, column: 3, scope: !462)
!467 = !DILocation(line: 198, column: 2, scope: !405)
!468 = !DILocation(line: 200, column: 6, scope: !469)
!469 = distinct !DILexicalBlock(scope: !268, file: !1, line: 200, column: 6)
!470 = !DILocation(line: 200, column: 6, scope: !268)
!471 = !DILocation(line: 201, column: 3, scope: !472)
!472 = distinct !DILexicalBlock(scope: !469, file: !1, line: 200, column: 44)
!473 = !DILocation(line: 201, column: 6, scope: !472)
!474 = !DILocation(line: 201, column: 18, scope: !472)
!475 = !DILocation(line: 202, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !1, line: 202, column: 7)
!477 = !DILocation(line: 202, column: 7, scope: !472)
!478 = !DILocalVariable(name: "value", scope: !479, file: !1, line: 203, type: !28)
!479 = distinct !DILexicalBlock(scope: !476, file: !1, line: 202, column: 44)
!480 = !DILocation(line: 203, column: 8, scope: !479)
!481 = !DILocation(line: 203, column: 22, scope: !479)
!482 = !DILocation(line: 203, column: 29, scope: !479)
!483 = !DILocation(line: 203, column: 16, scope: !479)
!484 = !DILocation(line: 205, column: 8, scope: !485)
!485 = distinct !DILexicalBlock(scope: !479, file: !1, line: 205, column: 8)
!486 = !DILocation(line: 205, column: 8, scope: !479)
!487 = !DILocation(line: 206, column: 5, scope: !488)
!488 = distinct !DILexicalBlock(scope: !485, file: !1, line: 205, column: 42)
!489 = !DILocation(line: 206, column: 8, scope: !488)
!490 = !DILocation(line: 206, column: 23, scope: !488)
!491 = !DILocation(line: 207, column: 9, scope: !488)
!492 = !DILocation(line: 208, column: 4, scope: !488)
!493 = !DILocation(line: 209, column: 3, scope: !479)
!494 = !DILocation(line: 210, column: 7, scope: !495)
!495 = distinct !DILexicalBlock(scope: !472, file: !1, line: 210, column: 7)
!496 = !DILocation(line: 210, column: 7, scope: !472)
!497 = !DILocation(line: 211, column: 4, scope: !498)
!498 = distinct !DILexicalBlock(scope: !495, file: !1, line: 210, column: 44)
!499 = !DILocation(line: 211, column: 7, scope: !498)
!500 = !DILocation(line: 211, column: 22, scope: !498)
!501 = !DILocation(line: 212, column: 8, scope: !498)
!502 = !DILocation(line: 213, column: 3, scope: !498)
!503 = !DILocation(line: 214, column: 7, scope: !504)
!504 = distinct !DILexicalBlock(scope: !472, file: !1, line: 214, column: 7)
!505 = !DILocation(line: 214, column: 7, scope: !472)
!506 = !DILocation(line: 215, column: 4, scope: !504)
!507 = !DILocation(line: 215, column: 7, scope: !504)
!508 = !DILocation(line: 215, column: 19, scope: !504)
!509 = !DILocation(line: 216, column: 2, scope: !472)
!510 = !DILocation(line: 218, column: 6, scope: !511)
!511 = distinct !DILexicalBlock(scope: !268, file: !1, line: 218, column: 6)
!512 = !DILocation(line: 218, column: 6, scope: !268)
!513 = !DILocation(line: 220, column: 3, scope: !511)
!514 = !DILocation(line: 223, column: 10, scope: !268)
!515 = !DILocation(line: 223, column: 22, scope: !268)
!516 = !DILocation(line: 223, column: 34, scope: !268)
!517 = !DILocation(line: 223, column: 41, scope: !268)
!518 = !DILocation(line: 223, column: 2, scope: !268)
!519 = !DILocation(line: 225, column: 9, scope: !268)
!520 = !DILocation(line: 225, column: 2, scope: !268)
!521 = distinct !DISubprogram(name: "dwmac_dma_flush_tx_fifo", scope: !1, file: !1, line: 228, type: !131, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!522 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !521, file: !1, line: 228, type: !23)
!523 = !DILocation(line: 228, column: 44, scope: !521)
!524 = !DILocalVariable(name: "csr6", scope: !521, file: !1, line: 230, type: !28)
!525 = !DILocation(line: 230, column: 6, scope: !521)
!526 = !DILocation(line: 230, column: 19, scope: !521)
!527 = !DILocation(line: 230, column: 26, scope: !521)
!528 = !DILocation(line: 230, column: 13, scope: !521)
!529 = !DILocation(line: 231, column: 10, scope: !521)
!530 = !DILocation(line: 231, column: 15, scope: !521)
!531 = !DILocation(line: 231, column: 35, scope: !521)
!532 = !DILocation(line: 231, column: 42, scope: !521)
!533 = !DILocation(line: 231, column: 2, scope: !521)
!534 = !DILocation(line: 233, column: 2, scope: !521)
!535 = !DILocation(line: 233, column: 6, scope: !536)
!536 = distinct !DILexicalBlock(scope: !521, file: !1, line: 233, column: 5)
!537 = !DILocation(line: 233, column: 22, scope: !521)
!538 = !DILocation(line: 233, column: 29, scope: !521)
!539 = !DILocation(line: 233, column: 16, scope: !521)
!540 = !DILocation(line: 233, column: 44, scope: !521)
!541 = distinct !{!541, !534, !542}
!542 = !DILocation(line: 233, column: 62, scope: !521)
!543 = !DILocation(line: 234, column: 1, scope: !521)
!544 = distinct !DISubprogram(name: "stmmac_set_mac_addr", scope: !1, file: !1, line: 236, type: !545, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !23, !547, !5, !5}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !29, line: 17, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !31, line: 21, baseType: !550)
!550 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!551 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !544, file: !1, line: 236, type: !23)
!552 = !DILocation(line: 236, column: 40, scope: !544)
!553 = !DILocalVariable(name: "addr", arg: 2, scope: !544, file: !1, line: 236, type: !547)
!554 = !DILocation(line: 236, column: 51, scope: !544)
!555 = !DILocalVariable(name: "high", arg: 3, scope: !544, file: !1, line: 237, type: !5)
!556 = !DILocation(line: 237, column: 18, scope: !544)
!557 = !DILocalVariable(name: "low", arg: 4, scope: !544, file: !1, line: 237, type: !5)
!558 = !DILocation(line: 237, column: 37, scope: !544)
!559 = !DILocalVariable(name: "data", scope: !544, file: !1, line: 239, type: !48)
!560 = !DILocation(line: 239, column: 16, scope: !544)
!561 = !DILocation(line: 241, column: 10, scope: !544)
!562 = !DILocation(line: 241, column: 18, scope: !544)
!563 = !DILocation(line: 241, column: 26, scope: !544)
!564 = !DILocation(line: 241, column: 24, scope: !544)
!565 = !DILocation(line: 241, column: 9, scope: !544)
!566 = !DILocation(line: 241, column: 7, scope: !544)
!567 = !DILocation(line: 246, column: 9, scope: !544)
!568 = !DILocation(line: 246, column: 14, scope: !544)
!569 = !DILocation(line: 246, column: 32, scope: !544)
!570 = !DILocation(line: 246, column: 41, scope: !544)
!571 = !DILocation(line: 246, column: 39, scope: !544)
!572 = !DILocation(line: 246, column: 2, scope: !544)
!573 = !DILocation(line: 247, column: 10, scope: !544)
!574 = !DILocation(line: 247, column: 18, scope: !544)
!575 = !DILocation(line: 247, column: 28, scope: !544)
!576 = !DILocation(line: 247, column: 36, scope: !544)
!577 = !DILocation(line: 247, column: 25, scope: !544)
!578 = !DILocation(line: 247, column: 46, scope: !544)
!579 = !DILocation(line: 247, column: 54, scope: !544)
!580 = !DILocation(line: 247, column: 43, scope: !544)
!581 = !DILocation(line: 247, column: 62, scope: !544)
!582 = !DILocation(line: 247, column: 60, scope: !544)
!583 = !DILocation(line: 247, column: 9, scope: !544)
!584 = !DILocation(line: 247, column: 7, scope: !544)
!585 = !DILocation(line: 248, column: 9, scope: !544)
!586 = !DILocation(line: 248, column: 15, scope: !544)
!587 = !DILocation(line: 248, column: 24, scope: !544)
!588 = !DILocation(line: 248, column: 22, scope: !544)
!589 = !DILocation(line: 248, column: 2, scope: !544)
!590 = !DILocation(line: 249, column: 1, scope: !544)
!591 = distinct !DISubprogram(name: "stmmac_set_mac", scope: !1, file: !1, line: 253, type: !592, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !23, !142}
!594 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !591, file: !1, line: 253, type: !23)
!595 = !DILocation(line: 253, column: 35, scope: !591)
!596 = !DILocalVariable(name: "enable", arg: 2, scope: !591, file: !1, line: 253, type: !142)
!597 = !DILocation(line: 253, column: 48, scope: !591)
!598 = !DILocalVariable(name: "value", scope: !591, file: !1, line: 255, type: !28)
!599 = !DILocation(line: 255, column: 6, scope: !591)
!600 = !DILocation(line: 255, column: 20, scope: !591)
!601 = !DILocation(line: 255, column: 27, scope: !591)
!602 = !DILocation(line: 255, column: 14, scope: !591)
!603 = !DILocation(line: 257, column: 6, scope: !604)
!604 = distinct !DILexicalBlock(scope: !591, file: !1, line: 257, column: 6)
!605 = !DILocation(line: 257, column: 6, scope: !591)
!606 = !DILocation(line: 258, column: 9, scope: !604)
!607 = !DILocation(line: 258, column: 3, scope: !604)
!608 = !DILocation(line: 260, column: 9, scope: !604)
!609 = !DILocation(line: 262, column: 9, scope: !591)
!610 = !DILocation(line: 262, column: 16, scope: !591)
!611 = !DILocation(line: 262, column: 23, scope: !591)
!612 = !DILocation(line: 262, column: 2, scope: !591)
!613 = !DILocation(line: 263, column: 1, scope: !591)
!614 = distinct !DISubprogram(name: "stmmac_get_mac_addr", scope: !1, file: !1, line: 265, type: !615, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !23, !617, !5, !5}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!618 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !614, file: !1, line: 265, type: !23)
!619 = !DILocation(line: 265, column: 40, scope: !614)
!620 = !DILocalVariable(name: "addr", arg: 2, scope: !614, file: !1, line: 265, type: !617)
!621 = !DILocation(line: 265, column: 63, scope: !614)
!622 = !DILocalVariable(name: "high", arg: 3, scope: !614, file: !1, line: 266, type: !5)
!623 = !DILocation(line: 266, column: 18, scope: !614)
!624 = !DILocalVariable(name: "low", arg: 4, scope: !614, file: !1, line: 266, type: !5)
!625 = !DILocation(line: 266, column: 37, scope: !614)
!626 = !DILocalVariable(name: "hi_addr", scope: !614, file: !1, line: 268, type: !5)
!627 = !DILocation(line: 268, column: 15, scope: !614)
!628 = !DILocalVariable(name: "lo_addr", scope: !614, file: !1, line: 268, type: !5)
!629 = !DILocation(line: 268, column: 24, scope: !614)
!630 = !DILocation(line: 271, column: 18, scope: !614)
!631 = !DILocation(line: 271, column: 27, scope: !614)
!632 = !DILocation(line: 271, column: 25, scope: !614)
!633 = !DILocation(line: 271, column: 12, scope: !614)
!634 = !DILocation(line: 271, column: 10, scope: !614)
!635 = !DILocation(line: 272, column: 18, scope: !614)
!636 = !DILocation(line: 272, column: 27, scope: !614)
!637 = !DILocation(line: 272, column: 25, scope: !614)
!638 = !DILocation(line: 272, column: 12, scope: !614)
!639 = !DILocation(line: 272, column: 10, scope: !614)
!640 = !DILocation(line: 275, column: 12, scope: !614)
!641 = !DILocation(line: 275, column: 20, scope: !614)
!642 = !DILocation(line: 275, column: 2, scope: !614)
!643 = !DILocation(line: 275, column: 10, scope: !614)
!644 = !DILocation(line: 276, column: 13, scope: !614)
!645 = !DILocation(line: 276, column: 21, scope: !614)
!646 = !DILocation(line: 276, column: 27, scope: !614)
!647 = !DILocation(line: 276, column: 12, scope: !614)
!648 = !DILocation(line: 276, column: 2, scope: !614)
!649 = !DILocation(line: 276, column: 10, scope: !614)
!650 = !DILocation(line: 277, column: 13, scope: !614)
!651 = !DILocation(line: 277, column: 21, scope: !614)
!652 = !DILocation(line: 277, column: 28, scope: !614)
!653 = !DILocation(line: 277, column: 12, scope: !614)
!654 = !DILocation(line: 277, column: 2, scope: !614)
!655 = !DILocation(line: 277, column: 10, scope: !614)
!656 = !DILocation(line: 278, column: 13, scope: !614)
!657 = !DILocation(line: 278, column: 21, scope: !614)
!658 = !DILocation(line: 278, column: 28, scope: !614)
!659 = !DILocation(line: 278, column: 12, scope: !614)
!660 = !DILocation(line: 278, column: 2, scope: !614)
!661 = !DILocation(line: 278, column: 10, scope: !614)
!662 = !DILocation(line: 279, column: 12, scope: !614)
!663 = !DILocation(line: 279, column: 20, scope: !614)
!664 = !DILocation(line: 279, column: 2, scope: !614)
!665 = !DILocation(line: 279, column: 10, scope: !614)
!666 = !DILocation(line: 280, column: 13, scope: !614)
!667 = !DILocation(line: 280, column: 21, scope: !614)
!668 = !DILocation(line: 280, column: 27, scope: !614)
!669 = !DILocation(line: 280, column: 12, scope: !614)
!670 = !DILocation(line: 280, column: 2, scope: !614)
!671 = !DILocation(line: 280, column: 10, scope: !614)
!672 = !DILocation(line: 281, column: 1, scope: !614)
