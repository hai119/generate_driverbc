; ModuleID = '../bcout/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.llvm.bc'
source_filename = "drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.stmmac_extra_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [56 x i8] }

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dwmac4_dma_reset(i8* %ioaddr) #0 !dbg !19 {
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
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !35
  store i32 %call, i32* %value, align 4, !dbg !32
  %1 = load i32, i32* %value, align 4, !dbg !36
  %conv = zext i32 %1 to i64, !dbg !36
  %or = or i64 %conv, 1, !dbg !36
  %conv1 = trunc i64 %or to i32, !dbg !36
  store i32 %conv1, i32* %value, align 4, !dbg !36
  %2 = load i32, i32* %value, align 4, !dbg !37
  %3 = load i8*, i8** %ioaddr.addr, align 8, !dbg !38
  %add.ptr2 = getelementptr i8, i8* %3, i64 4096, !dbg !39
  call void @writel(i32 %2, i8* %add.ptr2) #3, !dbg !40
  call void @llvm.dbg.declare(metadata i64* %__timeout_us, metadata !41, metadata !DIExpression()), !dbg !46
  store i64 1000000, i64* %__timeout_us, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata i64* %__sleep_us, metadata !47, metadata !DIExpression()), !dbg !46
  store i64 10000, i64* %__sleep_us, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata i64* %__timeout, metadata !49, metadata !DIExpression()), !dbg !46
  %call3 = call i64 @ktime_get() #3, !dbg !46
  %4 = load i64, i64* %__timeout_us, align 8, !dbg !46
  %call4 = call i64 @ktime_add_us(i64 %call3, i64 %4) #3, !dbg !46
  store i64 %call4, i64* %__timeout, align 8, !dbg !46
  br label %do.body, !dbg !46

do.body:                                          ; preds = %entry
  %5 = load i64, i64* %__sleep_us, align 8, !dbg !55
  %cmp = icmp ne i64 %5, 0, !dbg !55
  br i1 %cmp, label %if.then, label %if.end, !dbg !58

if.then:                                          ; preds = %do.body
  br label %do.body6, !dbg !55

do.body6:                                         ; preds = %if.then
  br label %do.body7, !dbg !59

do.body7:                                         ; preds = %do.body6
  br label %do.end, !dbg !61

do.end:                                           ; preds = %do.body7
  br label %do.end8, !dbg !59

do.end8:                                          ; preds = %do.end
  br label %if.end, !dbg !59

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !58

do.end9:                                          ; preds = %if.end
  br label %for.cond, !dbg !46

for.cond:                                         ; preds = %if.end26, %do.end9
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !63
  %add.ptr10 = getelementptr i8, i8* %6, i64 4096, !dbg !63
  %call11 = call i32 @readl(i8* %add.ptr10) #3, !dbg !63
  store i32 %call11, i32* %value, align 4, !dbg !63
  %7 = load i32, i32* %value, align 4, !dbg !67
  %conv12 = zext i32 %7 to i64, !dbg !67
  %and = and i64 %conv12, 1, !dbg !67
  %tobool = icmp ne i64 %and, 0, !dbg !67
  br i1 %tobool, label %if.end14, label %if.then13, !dbg !63

if.then13:                                        ; preds = %for.cond
  br label %for.end, !dbg !67

if.end14:                                         ; preds = %for.cond
  %8 = load i64, i64* %__timeout_us, align 8, !dbg !69
  %tobool15 = icmp ne i64 %8, 0, !dbg !69
  br i1 %tobool15, label %land.lhs.true, label %if.end23, !dbg !69

land.lhs.true:                                    ; preds = %if.end14
  %call16 = call i64 @ktime_get() #3, !dbg !69
  %9 = load i64, i64* %__timeout, align 8, !dbg !69
  %call17 = call i32 @ktime_compare(i64 %call16, i64 %9) #3, !dbg !69
  %cmp18 = icmp sgt i32 %call17, 0, !dbg !69
  br i1 %cmp18, label %if.then20, label %if.end23, !dbg !63

if.then20:                                        ; preds = %land.lhs.true
  %10 = load i8*, i8** %ioaddr.addr, align 8, !dbg !71
  %add.ptr21 = getelementptr i8, i8* %10, i64 4096, !dbg !71
  %call22 = call i32 @readl(i8* %add.ptr21) #3, !dbg !71
  store i32 %call22, i32* %value, align 4, !dbg !71
  br label %for.end, !dbg !71

if.end23:                                         ; preds = %land.lhs.true, %if.end14
  %11 = load i64, i64* %__sleep_us, align 8, !dbg !73
  %tobool24 = icmp ne i64 %11, 0, !dbg !73
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !63

if.then25:                                        ; preds = %if.end23
  %12 = load i64, i64* %__sleep_us, align 8, !dbg !73
  %shr = lshr i64 %12, 2, !dbg !73
  %add = add i64 %shr, 1, !dbg !73
  %13 = load i64, i64* %__sleep_us, align 8, !dbg !73
  call void @usleep_range(i64 %add, i64 %13) #3, !dbg !73
  br label %if.end26, !dbg !73

if.end26:                                         ; preds = %if.then25, %if.end23
  br label %for.cond, !dbg !75, !llvm.loop !76

for.end:                                          ; preds = %if.then20, %if.then13
  %14 = load i32, i32* %value, align 4, !dbg !46
  %conv27 = zext i32 %14 to i64, !dbg !46
  %and28 = and i64 %conv27, 1, !dbg !46
  %tobool29 = icmp ne i64 %and28, 0, !dbg !46
  %lnot = xor i1 %tobool29, true, !dbg !46
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
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #4, !dbg !87, !srcloc !89
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
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #4, !dbg !95, !srcloc !97
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
define dso_local void @dwmac4_set_rx_tail_ptr(i8* %ioaddr, i32 %tail_ptr, i32 %chan) #0 !dbg !130 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %tail_ptr.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !133, metadata !DIExpression()), !dbg !134
  store i32 %tail_ptr, i32* %tail_ptr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tail_ptr.addr, metadata !135, metadata !DIExpression()), !dbg !136
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !137, metadata !DIExpression()), !dbg !138
  %0 = load i32, i32* %tail_ptr.addr, align 4, !dbg !139
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !140
  %2 = load i32, i32* %chan.addr, align 4, !dbg !141
  %mul = mul i32 %2, 128, !dbg !141
  %add = add i32 4352, %mul, !dbg !141
  %add1 = add i32 %add, 40, !dbg !141
  %idx.ext = zext i32 %add1 to i64, !dbg !142
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !142
  call void @writel(i32 %0, i8* %add.ptr) #3, !dbg !143
  ret void, !dbg !144
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac4_set_tx_tail_ptr(i8* %ioaddr, i32 %tail_ptr, i32 %chan) #0 !dbg !145 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %tail_ptr.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !146, metadata !DIExpression()), !dbg !147
  store i32 %tail_ptr, i32* %tail_ptr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tail_ptr.addr, metadata !148, metadata !DIExpression()), !dbg !149
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = load i32, i32* %tail_ptr.addr, align 4, !dbg !152
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !153
  %2 = load i32, i32* %chan.addr, align 4, !dbg !154
  %mul = mul i32 %2, 128, !dbg !154
  %add = add i32 4352, %mul, !dbg !154
  %add1 = add i32 %add, 32, !dbg !154
  %idx.ext = zext i32 %add1 to i64, !dbg !155
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !155
  call void @writel(i32 %0, i8* %add.ptr) #3, !dbg !156
  ret void, !dbg !157
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac4_dma_start_tx(i8* %ioaddr, i32 %chan) #0 !dbg !158 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !161, metadata !DIExpression()), !dbg !162
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata i32* %value, metadata !165, metadata !DIExpression()), !dbg !166
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !167
  %1 = load i32, i32* %chan.addr, align 4, !dbg !168
  %mul = mul i32 %1, 128, !dbg !168
  %add = add i32 4352, %mul, !dbg !168
  %add1 = add i32 %add, 4, !dbg !168
  %idx.ext = zext i32 %add1 to i64, !dbg !169
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !169
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !170
  store i32 %call, i32* %value, align 4, !dbg !166
  %2 = load i32, i32* %value, align 4, !dbg !171
  %conv = zext i32 %2 to i64, !dbg !171
  %or = or i64 %conv, 1, !dbg !171
  %conv2 = trunc i64 %or to i32, !dbg !171
  store i32 %conv2, i32* %value, align 4, !dbg !171
  %3 = load i32, i32* %value, align 4, !dbg !172
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !173
  %5 = load i32, i32* %chan.addr, align 4, !dbg !174
  %mul3 = mul i32 %5, 128, !dbg !174
  %add4 = add i32 4352, %mul3, !dbg !174
  %add5 = add i32 %add4, 4, !dbg !174
  %idx.ext6 = zext i32 %add5 to i64, !dbg !175
  %add.ptr7 = getelementptr i8, i8* %4, i64 %idx.ext6, !dbg !175
  call void @writel(i32 %3, i8* %add.ptr7) #3, !dbg !176
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !177
  %add.ptr8 = getelementptr i8, i8* %6, i64 0, !dbg !178
  %call9 = call i32 @readl(i8* %add.ptr8) #3, !dbg !179
  store i32 %call9, i32* %value, align 4, !dbg !180
  %7 = load i32, i32* %value, align 4, !dbg !181
  %conv10 = zext i32 %7 to i64, !dbg !181
  %or11 = or i64 %conv10, 2, !dbg !181
  %conv12 = trunc i64 %or11 to i32, !dbg !181
  store i32 %conv12, i32* %value, align 4, !dbg !181
  %8 = load i32, i32* %value, align 4, !dbg !182
  %9 = load i8*, i8** %ioaddr.addr, align 8, !dbg !183
  %add.ptr13 = getelementptr i8, i8* %9, i64 0, !dbg !184
  call void @writel(i32 %8, i8* %add.ptr13) #3, !dbg !185
  ret void, !dbg !186
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac4_dma_stop_tx(i8* %ioaddr, i32 %chan) #0 !dbg !187 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !188, metadata !DIExpression()), !dbg !189
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %value, metadata !192, metadata !DIExpression()), !dbg !193
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !194
  %1 = load i32, i32* %chan.addr, align 4, !dbg !195
  %mul = mul i32 %1, 128, !dbg !195
  %add = add i32 4352, %mul, !dbg !195
  %add1 = add i32 %add, 4, !dbg !195
  %idx.ext = zext i32 %add1 to i64, !dbg !196
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !196
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !197
  store i32 %call, i32* %value, align 4, !dbg !193
  %2 = load i32, i32* %value, align 4, !dbg !198
  %conv = zext i32 %2 to i64, !dbg !198
  %and = and i64 %conv, -2, !dbg !198
  %conv2 = trunc i64 %and to i32, !dbg !198
  store i32 %conv2, i32* %value, align 4, !dbg !198
  %3 = load i32, i32* %value, align 4, !dbg !199
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !200
  %5 = load i32, i32* %chan.addr, align 4, !dbg !201
  %mul3 = mul i32 %5, 128, !dbg !201
  %add4 = add i32 4352, %mul3, !dbg !201
  %add5 = add i32 %add4, 4, !dbg !201
  %idx.ext6 = zext i32 %add5 to i64, !dbg !202
  %add.ptr7 = getelementptr i8, i8* %4, i64 %idx.ext6, !dbg !202
  call void @writel(i32 %3, i8* %add.ptr7) #3, !dbg !203
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !204
  %add.ptr8 = getelementptr i8, i8* %6, i64 0, !dbg !205
  %call9 = call i32 @readl(i8* %add.ptr8) #3, !dbg !206
  store i32 %call9, i32* %value, align 4, !dbg !207
  %7 = load i32, i32* %value, align 4, !dbg !208
  %conv10 = zext i32 %7 to i64, !dbg !208
  %and11 = and i64 %conv10, -3, !dbg !208
  %conv12 = trunc i64 %and11 to i32, !dbg !208
  store i32 %conv12, i32* %value, align 4, !dbg !208
  %8 = load i32, i32* %value, align 4, !dbg !209
  %9 = load i8*, i8** %ioaddr.addr, align 8, !dbg !210
  %add.ptr13 = getelementptr i8, i8* %9, i64 0, !dbg !211
  call void @writel(i32 %8, i8* %add.ptr13) #3, !dbg !212
  ret void, !dbg !213
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac4_dma_start_rx(i8* %ioaddr, i32 %chan) #0 !dbg !214 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !215, metadata !DIExpression()), !dbg !216
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %value, metadata !219, metadata !DIExpression()), !dbg !220
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !221
  %1 = load i32, i32* %chan.addr, align 4, !dbg !222
  %mul = mul i32 %1, 128, !dbg !222
  %add = add i32 4352, %mul, !dbg !222
  %add1 = add i32 %add, 8, !dbg !222
  %idx.ext = zext i32 %add1 to i64, !dbg !223
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !223
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !224
  store i32 %call, i32* %value, align 4, !dbg !220
  %2 = load i32, i32* %value, align 4, !dbg !225
  %conv = zext i32 %2 to i64, !dbg !225
  %or = or i64 %conv, 1, !dbg !225
  %conv2 = trunc i64 %or to i32, !dbg !225
  store i32 %conv2, i32* %value, align 4, !dbg !225
  %3 = load i32, i32* %value, align 4, !dbg !226
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !227
  %5 = load i32, i32* %chan.addr, align 4, !dbg !228
  %mul3 = mul i32 %5, 128, !dbg !228
  %add4 = add i32 4352, %mul3, !dbg !228
  %add5 = add i32 %add4, 8, !dbg !228
  %idx.ext6 = zext i32 %add5 to i64, !dbg !229
  %add.ptr7 = getelementptr i8, i8* %4, i64 %idx.ext6, !dbg !229
  call void @writel(i32 %3, i8* %add.ptr7) #3, !dbg !230
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !231
  %add.ptr8 = getelementptr i8, i8* %6, i64 0, !dbg !232
  %call9 = call i32 @readl(i8* %add.ptr8) #3, !dbg !233
  store i32 %call9, i32* %value, align 4, !dbg !234
  %7 = load i32, i32* %value, align 4, !dbg !235
  %conv10 = zext i32 %7 to i64, !dbg !235
  %or11 = or i64 %conv10, 1, !dbg !235
  %conv12 = trunc i64 %or11 to i32, !dbg !235
  store i32 %conv12, i32* %value, align 4, !dbg !235
  %8 = load i32, i32* %value, align 4, !dbg !236
  %9 = load i8*, i8** %ioaddr.addr, align 8, !dbg !237
  %add.ptr13 = getelementptr i8, i8* %9, i64 0, !dbg !238
  call void @writel(i32 %8, i8* %add.ptr13) #3, !dbg !239
  ret void, !dbg !240
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac4_dma_stop_rx(i8* %ioaddr, i32 %chan) #0 !dbg !241 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !242, metadata !DIExpression()), !dbg !243
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata i32* %value, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !248
  %1 = load i32, i32* %chan.addr, align 4, !dbg !249
  %mul = mul i32 %1, 128, !dbg !249
  %add = add i32 4352, %mul, !dbg !249
  %add1 = add i32 %add, 8, !dbg !249
  %idx.ext = zext i32 %add1 to i64, !dbg !250
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !250
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !251
  store i32 %call, i32* %value, align 4, !dbg !247
  %2 = load i32, i32* %value, align 4, !dbg !252
  %conv = zext i32 %2 to i64, !dbg !252
  %and = and i64 %conv, -2, !dbg !252
  %conv2 = trunc i64 %and to i32, !dbg !252
  store i32 %conv2, i32* %value, align 4, !dbg !252
  %3 = load i32, i32* %value, align 4, !dbg !253
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !254
  %5 = load i32, i32* %chan.addr, align 4, !dbg !255
  %mul3 = mul i32 %5, 128, !dbg !255
  %add4 = add i32 4352, %mul3, !dbg !255
  %add5 = add i32 %add4, 8, !dbg !255
  %idx.ext6 = zext i32 %add5 to i64, !dbg !256
  %add.ptr7 = getelementptr i8, i8* %4, i64 %idx.ext6, !dbg !256
  call void @writel(i32 %3, i8* %add.ptr7) #3, !dbg !257
  ret void, !dbg !258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac4_set_tx_ring_len(i8* %ioaddr, i32 %len, i32 %chan) #0 !dbg !259 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !260, metadata !DIExpression()), !dbg !261
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !262, metadata !DIExpression()), !dbg !263
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load i32, i32* %len.addr, align 4, !dbg !266
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !267
  %2 = load i32, i32* %chan.addr, align 4, !dbg !268
  %mul = mul i32 %2, 128, !dbg !268
  %add = add i32 4352, %mul, !dbg !268
  %add1 = add i32 %add, 44, !dbg !268
  %idx.ext = zext i32 %add1 to i64, !dbg !269
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !269
  call void @writel(i32 %0, i8* %add.ptr) #3, !dbg !270
  ret void, !dbg !271
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac4_set_rx_ring_len(i8* %ioaddr, i32 %len, i32 %chan) #0 !dbg !272 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !273, metadata !DIExpression()), !dbg !274
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !275, metadata !DIExpression()), !dbg !276
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !277, metadata !DIExpression()), !dbg !278
  %0 = load i32, i32* %len.addr, align 4, !dbg !279
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !280
  %2 = load i32, i32* %chan.addr, align 4, !dbg !281
  %mul = mul i32 %2, 128, !dbg !281
  %add = add i32 4352, %mul, !dbg !281
  %add1 = add i32 %add, 48, !dbg !281
  %idx.ext = zext i32 %add1 to i64, !dbg !282
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !282
  call void @writel(i32 %0, i8* %add.ptr) #3, !dbg !283
  ret void, !dbg !284
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac4_enable_dma_irq(i8* %ioaddr, i32 %chan, i1 zeroext %rx, i1 zeroext %tx) #0 !dbg !285 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %rx.addr = alloca i8, align 1
  %tx.addr = alloca i8, align 1
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !291, metadata !DIExpression()), !dbg !292
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !293, metadata !DIExpression()), !dbg !294
  %frombool = zext i1 %rx to i8
  store i8 %frombool, i8* %rx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rx.addr, metadata !295, metadata !DIExpression()), !dbg !296
  %frombool1 = zext i1 %tx to i8
  store i8 %frombool1, i8* %tx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tx.addr, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata i32* %value, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !301
  %1 = load i32, i32* %chan.addr, align 4, !dbg !302
  %mul = mul i32 %1, 128, !dbg !302
  %add = add i32 4352, %mul, !dbg !302
  %add2 = add i32 %add, 52, !dbg !302
  %idx.ext = zext i32 %add2 to i64, !dbg !303
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !303
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !304
  store i32 %call, i32* %value, align 4, !dbg !300
  %2 = load i8, i8* %rx.addr, align 1, !dbg !305
  %tobool = trunc i8 %2 to i1, !dbg !305
  br i1 %tobool, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !308
  %conv = zext i32 %3 to i64, !dbg !308
  %or = or i64 %conv, 64, !dbg !308
  %conv3 = trunc i64 %or to i32, !dbg !308
  store i32 %conv3, i32* %value, align 4, !dbg !308
  br label %if.end, !dbg !309

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* %tx.addr, align 1, !dbg !310
  %tobool4 = trunc i8 %4 to i1, !dbg !310
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !312

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* %value, align 4, !dbg !313
  %conv6 = zext i32 %5 to i64, !dbg !313
  %or7 = or i64 %conv6, 1, !dbg !313
  %conv8 = trunc i64 %or7 to i32, !dbg !313
  store i32 %conv8, i32* %value, align 4, !dbg !313
  br label %if.end9, !dbg !314

if.end9:                                          ; preds = %if.then5, %if.end
  %6 = load i32, i32* %value, align 4, !dbg !315
  %7 = load i8*, i8** %ioaddr.addr, align 8, !dbg !316
  %8 = load i32, i32* %chan.addr, align 4, !dbg !317
  %mul10 = mul i32 %8, 128, !dbg !317
  %add11 = add i32 4352, %mul10, !dbg !317
  %add12 = add i32 %add11, 52, !dbg !317
  %idx.ext13 = zext i32 %add12 to i64, !dbg !318
  %add.ptr14 = getelementptr i8, i8* %7, i64 %idx.ext13, !dbg !318
  call void @writel(i32 %6, i8* %add.ptr14) #3, !dbg !319
  ret void, !dbg !320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac410_enable_dma_irq(i8* %ioaddr, i32 %chan, i1 zeroext %rx, i1 zeroext %tx) #0 !dbg !321 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %rx.addr = alloca i8, align 1
  %tx.addr = alloca i8, align 1
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !322, metadata !DIExpression()), !dbg !323
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !324, metadata !DIExpression()), !dbg !325
  %frombool = zext i1 %rx to i8
  store i8 %frombool, i8* %rx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rx.addr, metadata !326, metadata !DIExpression()), !dbg !327
  %frombool1 = zext i1 %tx to i8
  store i8 %frombool1, i8* %tx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tx.addr, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.declare(metadata i32* %value, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !332
  %1 = load i32, i32* %chan.addr, align 4, !dbg !333
  %mul = mul i32 %1, 128, !dbg !333
  %add = add i32 4352, %mul, !dbg !333
  %add2 = add i32 %add, 52, !dbg !333
  %idx.ext = zext i32 %add2 to i64, !dbg !334
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !334
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !335
  store i32 %call, i32* %value, align 4, !dbg !331
  %2 = load i8, i8* %rx.addr, align 1, !dbg !336
  %tobool = trunc i8 %2 to i1, !dbg !336
  br i1 %tobool, label %if.then, label %if.end, !dbg !338

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !339
  %conv = zext i32 %3 to i64, !dbg !339
  %or = or i64 %conv, 64, !dbg !339
  %conv3 = trunc i64 %or to i32, !dbg !339
  store i32 %conv3, i32* %value, align 4, !dbg !339
  br label %if.end, !dbg !340

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* %tx.addr, align 1, !dbg !341
  %tobool4 = trunc i8 %4 to i1, !dbg !341
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !343

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* %value, align 4, !dbg !344
  %conv6 = zext i32 %5 to i64, !dbg !344
  %or7 = or i64 %conv6, 1, !dbg !344
  %conv8 = trunc i64 %or7 to i32, !dbg !344
  store i32 %conv8, i32* %value, align 4, !dbg !344
  br label %if.end9, !dbg !345

if.end9:                                          ; preds = %if.then5, %if.end
  %6 = load i32, i32* %value, align 4, !dbg !346
  %7 = load i8*, i8** %ioaddr.addr, align 8, !dbg !347
  %8 = load i32, i32* %chan.addr, align 4, !dbg !348
  %mul10 = mul i32 %8, 128, !dbg !348
  %add11 = add i32 4352, %mul10, !dbg !348
  %add12 = add i32 %add11, 52, !dbg !348
  %idx.ext13 = zext i32 %add12 to i64, !dbg !349
  %add.ptr14 = getelementptr i8, i8* %7, i64 %idx.ext13, !dbg !349
  call void @writel(i32 %6, i8* %add.ptr14) #3, !dbg !350
  ret void, !dbg !351
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac4_disable_dma_irq(i8* %ioaddr, i32 %chan, i1 zeroext %rx, i1 zeroext %tx) #0 !dbg !352 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %rx.addr = alloca i8, align 1
  %tx.addr = alloca i8, align 1
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !353, metadata !DIExpression()), !dbg !354
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !355, metadata !DIExpression()), !dbg !356
  %frombool = zext i1 %rx to i8
  store i8 %frombool, i8* %rx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rx.addr, metadata !357, metadata !DIExpression()), !dbg !358
  %frombool1 = zext i1 %tx to i8
  store i8 %frombool1, i8* %tx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tx.addr, metadata !359, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.declare(metadata i32* %value, metadata !361, metadata !DIExpression()), !dbg !362
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !363
  %1 = load i32, i32* %chan.addr, align 4, !dbg !364
  %mul = mul i32 %1, 128, !dbg !364
  %add = add i32 4352, %mul, !dbg !364
  %add2 = add i32 %add, 52, !dbg !364
  %idx.ext = zext i32 %add2 to i64, !dbg !365
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !365
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !366
  store i32 %call, i32* %value, align 4, !dbg !362
  %2 = load i8, i8* %rx.addr, align 1, !dbg !367
  %tobool = trunc i8 %2 to i1, !dbg !367
  br i1 %tobool, label %if.then, label %if.end, !dbg !369

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !370
  %conv = zext i32 %3 to i64, !dbg !370
  %and = and i64 %conv, -65, !dbg !370
  %conv3 = trunc i64 %and to i32, !dbg !370
  store i32 %conv3, i32* %value, align 4, !dbg !370
  br label %if.end, !dbg !371

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* %tx.addr, align 1, !dbg !372
  %tobool4 = trunc i8 %4 to i1, !dbg !372
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !374

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* %value, align 4, !dbg !375
  %conv6 = zext i32 %5 to i64, !dbg !375
  %and7 = and i64 %conv6, -2, !dbg !375
  %conv8 = trunc i64 %and7 to i32, !dbg !375
  store i32 %conv8, i32* %value, align 4, !dbg !375
  br label %if.end9, !dbg !376

if.end9:                                          ; preds = %if.then5, %if.end
  %6 = load i32, i32* %value, align 4, !dbg !377
  %7 = load i8*, i8** %ioaddr.addr, align 8, !dbg !378
  %8 = load i32, i32* %chan.addr, align 4, !dbg !379
  %mul10 = mul i32 %8, 128, !dbg !379
  %add11 = add i32 4352, %mul10, !dbg !379
  %add12 = add i32 %add11, 52, !dbg !379
  %idx.ext13 = zext i32 %add12 to i64, !dbg !380
  %add.ptr14 = getelementptr i8, i8* %7, i64 %idx.ext13, !dbg !380
  call void @writel(i32 %6, i8* %add.ptr14) #3, !dbg !381
  ret void, !dbg !382
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dwmac410_disable_dma_irq(i8* %ioaddr, i32 %chan, i1 zeroext %rx, i1 zeroext %tx) #0 !dbg !383 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %chan.addr = alloca i32, align 4
  %rx.addr = alloca i8, align 1
  %tx.addr = alloca i8, align 1
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !384, metadata !DIExpression()), !dbg !385
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %frombool = zext i1 %rx to i8
  store i8 %frombool, i8* %rx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rx.addr, metadata !388, metadata !DIExpression()), !dbg !389
  %frombool1 = zext i1 %tx to i8
  store i8 %frombool1, i8* %tx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tx.addr, metadata !390, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata i32* %value, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !394
  %1 = load i32, i32* %chan.addr, align 4, !dbg !395
  %mul = mul i32 %1, 128, !dbg !395
  %add = add i32 4352, %mul, !dbg !395
  %add2 = add i32 %add, 52, !dbg !395
  %idx.ext = zext i32 %add2 to i64, !dbg !396
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !396
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !397
  store i32 %call, i32* %value, align 4, !dbg !393
  %2 = load i8, i8* %rx.addr, align 1, !dbg !398
  %tobool = trunc i8 %2 to i1, !dbg !398
  br i1 %tobool, label %if.then, label %if.end, !dbg !400

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !401
  %conv = zext i32 %3 to i64, !dbg !401
  %and = and i64 %conv, -65, !dbg !401
  %conv3 = trunc i64 %and to i32, !dbg !401
  store i32 %conv3, i32* %value, align 4, !dbg !401
  br label %if.end, !dbg !402

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* %tx.addr, align 1, !dbg !403
  %tobool4 = trunc i8 %4 to i1, !dbg !403
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !405

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* %value, align 4, !dbg !406
  %conv6 = zext i32 %5 to i64, !dbg !406
  %and7 = and i64 %conv6, -2, !dbg !406
  %conv8 = trunc i64 %and7 to i32, !dbg !406
  store i32 %conv8, i32* %value, align 4, !dbg !406
  br label %if.end9, !dbg !407

if.end9:                                          ; preds = %if.then5, %if.end
  %6 = load i32, i32* %value, align 4, !dbg !408
  %7 = load i8*, i8** %ioaddr.addr, align 8, !dbg !409
  %8 = load i32, i32* %chan.addr, align 4, !dbg !410
  %mul10 = mul i32 %8, 128, !dbg !410
  %add11 = add i32 4352, %mul10, !dbg !410
  %add12 = add i32 %add11, 52, !dbg !410
  %idx.ext13 = zext i32 %add12 to i64, !dbg !411
  %add.ptr14 = getelementptr i8, i8* %7, i64 %idx.ext13, !dbg !411
  call void @writel(i32 %6, i8* %add.ptr14) #3, !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dwmac4_dma_interrupt(i8* %ioaddr, %struct.stmmac_extra_stats* %x, i32 %chan) #0 !dbg !414 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %x.addr = alloca %struct.stmmac_extra_stats*, align 8
  %chan.addr = alloca i32, align 4
  %intr_status = alloca i32, align 4
  %intr_en = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !533, metadata !DIExpression()), !dbg !534
  store %struct.stmmac_extra_stats* %x, %struct.stmmac_extra_stats** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stmmac_extra_stats** %x.addr, metadata !535, metadata !DIExpression()), !dbg !536
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata i32* %intr_status, metadata !539, metadata !DIExpression()), !dbg !540
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !541
  %1 = load i32, i32* %chan.addr, align 4, !dbg !542
  %mul = mul i32 %1, 128, !dbg !542
  %add = add i32 4352, %mul, !dbg !542
  %add1 = add i32 %add, 96, !dbg !542
  %idx.ext = zext i32 %add1 to i64, !dbg !543
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !543
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !544
  store i32 %call, i32* %intr_status, align 4, !dbg !540
  call void @llvm.dbg.declare(metadata i32* %intr_en, metadata !545, metadata !DIExpression()), !dbg !546
  %2 = load i8*, i8** %ioaddr.addr, align 8, !dbg !547
  %3 = load i32, i32* %chan.addr, align 4, !dbg !548
  %mul2 = mul i32 %3, 128, !dbg !548
  %add3 = add i32 4352, %mul2, !dbg !548
  %add4 = add i32 %add3, 52, !dbg !548
  %idx.ext5 = zext i32 %add4 to i64, !dbg !549
  %add.ptr6 = getelementptr i8, i8* %2, i64 %idx.ext5, !dbg !549
  %call7 = call i32 @readl(i8* %add.ptr6) #3, !dbg !550
  store i32 %call7, i32* %intr_en, align 4, !dbg !546
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !551, metadata !DIExpression()), !dbg !552
  store i32 0, i32* %ret, align 4, !dbg !552
  %4 = load i32, i32* %intr_status, align 4, !dbg !553
  %conv = zext i32 %4 to i64, !dbg !553
  %and = and i64 %conv, 16384, !dbg !553
  %tobool = icmp ne i64 %and, 0, !dbg !553
  %lnot = xor i1 %tobool, true, !dbg !553
  %lnot8 = xor i1 %lnot, true, !dbg !553
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !553
  %conv9 = sext i32 %lnot.ext to i64, !dbg !553
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !553
  br i1 %tobool10, label %if.then, label %if.end81, !dbg !555

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %intr_status, align 4, !dbg !556
  %conv11 = zext i32 %5 to i64, !dbg !556
  %and12 = and i64 %conv11, 128, !dbg !556
  %tobool13 = icmp ne i64 %and12, 0, !dbg !556
  %lnot14 = xor i1 %tobool13, true, !dbg !556
  %lnot16 = xor i1 %lnot14, true, !dbg !556
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !556
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !556
  %tobool19 = icmp ne i64 %conv18, 0, !dbg !556
  br i1 %tobool19, label %if.then20, label %if.end, !dbg !559

if.then20:                                        ; preds = %if.then
  %6 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !560
  %rx_buf_unav_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %6, i32 0, i32 32, !dbg !561
  %7 = load i64, i64* %rx_buf_unav_irq, align 64, !dbg !562
  %inc = add i64 %7, 1, !dbg !562
  store i64 %inc, i64* %rx_buf_unav_irq, align 64, !dbg !562
  br label %if.end, !dbg !560

if.end:                                           ; preds = %if.then20, %if.then
  %8 = load i32, i32* %intr_status, align 4, !dbg !563
  %conv21 = zext i32 %8 to i64, !dbg !563
  %and22 = and i64 %conv21, 256, !dbg !563
  %tobool23 = icmp ne i64 %and22, 0, !dbg !563
  %lnot24 = xor i1 %tobool23, true, !dbg !563
  %lnot26 = xor i1 %lnot24, true, !dbg !563
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !563
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !563
  %tobool29 = icmp ne i64 %conv28, 0, !dbg !563
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !565

if.then30:                                        ; preds = %if.end
  %9 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !566
  %rx_process_stopped_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %9, i32 0, i32 33, !dbg !567
  %10 = load i64, i64* %rx_process_stopped_irq, align 8, !dbg !568
  %inc31 = add i64 %10, 1, !dbg !568
  store i64 %inc31, i64* %rx_process_stopped_irq, align 8, !dbg !568
  br label %if.end32, !dbg !566

if.end32:                                         ; preds = %if.then30, %if.end
  %11 = load i32, i32* %intr_status, align 4, !dbg !569
  %conv33 = zext i32 %11 to i64, !dbg !569
  %and34 = and i64 %conv33, 512, !dbg !569
  %tobool35 = icmp ne i64 %and34, 0, !dbg !569
  %lnot36 = xor i1 %tobool35, true, !dbg !569
  %lnot38 = xor i1 %lnot36, true, !dbg !569
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !569
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !569
  %tobool41 = icmp ne i64 %conv40, 0, !dbg !569
  br i1 %tobool41, label %if.then42, label %if.end44, !dbg !571

if.then42:                                        ; preds = %if.end32
  %12 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !572
  %rx_watchdog_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %12, i32 0, i32 34, !dbg !573
  %13 = load i64, i64* %rx_watchdog_irq, align 16, !dbg !574
  %inc43 = add i64 %13, 1, !dbg !574
  store i64 %inc43, i64* %rx_watchdog_irq, align 16, !dbg !574
  br label %if.end44, !dbg !572

if.end44:                                         ; preds = %if.then42, %if.end32
  %14 = load i32, i32* %intr_status, align 4, !dbg !575
  %conv45 = zext i32 %14 to i64, !dbg !575
  %and46 = and i64 %conv45, 1024, !dbg !575
  %tobool47 = icmp ne i64 %and46, 0, !dbg !575
  %lnot48 = xor i1 %tobool47, true, !dbg !575
  %lnot50 = xor i1 %lnot48, true, !dbg !575
  %lnot.ext51 = zext i1 %lnot50 to i32, !dbg !575
  %conv52 = sext i32 %lnot.ext51 to i64, !dbg !575
  %tobool53 = icmp ne i64 %conv52, 0, !dbg !575
  br i1 %tobool53, label %if.then54, label %if.end56, !dbg !577

if.then54:                                        ; preds = %if.end44
  %15 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !578
  %tx_early_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %15, i32 0, i32 35, !dbg !579
  %16 = load i64, i64* %tx_early_irq, align 8, !dbg !580
  %inc55 = add i64 %16, 1, !dbg !580
  store i64 %inc55, i64* %tx_early_irq, align 8, !dbg !580
  br label %if.end56, !dbg !578

if.end56:                                         ; preds = %if.then54, %if.end44
  %17 = load i32, i32* %intr_status, align 4, !dbg !581
  %conv57 = zext i32 %17 to i64, !dbg !581
  %and58 = and i64 %conv57, 2, !dbg !581
  %tobool59 = icmp ne i64 %and58, 0, !dbg !581
  %lnot60 = xor i1 %tobool59, true, !dbg !581
  %lnot62 = xor i1 %lnot60, true, !dbg !581
  %lnot.ext63 = zext i1 %lnot62 to i32, !dbg !581
  %conv64 = sext i32 %lnot.ext63 to i64, !dbg !581
  %tobool65 = icmp ne i64 %conv64, 0, !dbg !581
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !583

if.then66:                                        ; preds = %if.end56
  %18 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !584
  %tx_process_stopped_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %18, i32 0, i32 29, !dbg !586
  %19 = load i64, i64* %tx_process_stopped_irq, align 8, !dbg !587
  %inc67 = add i64 %19, 1, !dbg !587
  store i64 %inc67, i64* %tx_process_stopped_irq, align 8, !dbg !587
  store i32 1, i32* %ret, align 4, !dbg !588
  br label %if.end68, !dbg !589

if.end68:                                         ; preds = %if.then66, %if.end56
  %20 = load i32, i32* %intr_status, align 4, !dbg !590
  %conv69 = zext i32 %20 to i64, !dbg !590
  %and70 = and i64 %conv69, 4096, !dbg !590
  %tobool71 = icmp ne i64 %and70, 0, !dbg !590
  %lnot72 = xor i1 %tobool71, true, !dbg !590
  %lnot74 = xor i1 %lnot72, true, !dbg !590
  %lnot.ext75 = zext i1 %lnot74 to i32, !dbg !590
  %conv76 = sext i32 %lnot.ext75 to i64, !dbg !590
  %tobool77 = icmp ne i64 %conv76, 0, !dbg !590
  br i1 %tobool77, label %if.then78, label %if.end80, !dbg !592

if.then78:                                        ; preds = %if.end68
  %21 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !593
  %fatal_bus_error_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %21, i32 0, i32 36, !dbg !595
  %22 = load i64, i64* %fatal_bus_error_irq, align 32, !dbg !596
  %inc79 = add i64 %22, 1, !dbg !596
  store i64 %inc79, i64* %fatal_bus_error_irq, align 32, !dbg !596
  store i32 1, i32* %ret, align 4, !dbg !597
  br label %if.end80, !dbg !598

if.end80:                                         ; preds = %if.then78, %if.end68
  br label %if.end81, !dbg !599

if.end81:                                         ; preds = %if.end80, %entry
  %23 = load i32, i32* %intr_status, align 4, !dbg !600
  %conv82 = zext i32 %23 to i64, !dbg !600
  %and83 = and i64 %conv82, 32768, !dbg !600
  %tobool84 = icmp ne i64 %and83, 0, !dbg !600
  %lnot85 = xor i1 %tobool84, true, !dbg !600
  %lnot87 = xor i1 %lnot85, true, !dbg !600
  %lnot.ext88 = zext i1 %lnot87 to i32, !dbg !600
  %conv89 = sext i32 %lnot.ext88 to i64, !dbg !600
  %tobool90 = icmp ne i64 %conv89, 0, !dbg !600
  br i1 %tobool90, label %if.then91, label %if.end130, !dbg !602

if.then91:                                        ; preds = %if.end81
  %24 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !603
  %normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %24, i32 0, i32 41, !dbg !605
  %25 = load i64, i64* %normal_irq_n, align 8, !dbg !606
  %inc92 = add i64 %25, 1, !dbg !606
  store i64 %inc92, i64* %normal_irq_n, align 8, !dbg !606
  %26 = load i32, i32* %intr_status, align 4, !dbg !607
  %conv93 = zext i32 %26 to i64, !dbg !607
  %and94 = and i64 %conv93, 64, !dbg !607
  %tobool95 = icmp ne i64 %and94, 0, !dbg !607
  %lnot96 = xor i1 %tobool95, true, !dbg !607
  %lnot98 = xor i1 %lnot96, true, !dbg !607
  %lnot.ext99 = zext i1 %lnot98 to i32, !dbg !607
  %conv100 = sext i32 %lnot.ext99 to i64, !dbg !607
  %tobool101 = icmp ne i64 %conv100, 0, !dbg !607
  br i1 %tobool101, label %if.then102, label %if.end104, !dbg !609

if.then102:                                       ; preds = %if.then91
  %27 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !610
  %rx_normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %27, i32 0, i32 42, !dbg !612
  %28 = load i64, i64* %rx_normal_irq_n, align 16, !dbg !613
  %inc103 = add i64 %28, 1, !dbg !613
  store i64 %inc103, i64* %rx_normal_irq_n, align 16, !dbg !613
  %29 = load i32, i32* %ret, align 4, !dbg !614
  %or = or i32 %29, 4, !dbg !614
  store i32 %or, i32* %ret, align 4, !dbg !614
  br label %if.end104, !dbg !615

if.end104:                                        ; preds = %if.then102, %if.then91
  %30 = load i32, i32* %intr_status, align 4, !dbg !616
  %conv105 = zext i32 %30 to i64, !dbg !616
  %and106 = and i64 %conv105, 5, !dbg !616
  %tobool107 = icmp ne i64 %and106, 0, !dbg !616
  %lnot108 = xor i1 %tobool107, true, !dbg !616
  %lnot110 = xor i1 %lnot108, true, !dbg !616
  %lnot.ext111 = zext i1 %lnot110 to i32, !dbg !616
  %conv112 = sext i32 %lnot.ext111 to i64, !dbg !616
  %tobool113 = icmp ne i64 %conv112, 0, !dbg !616
  br i1 %tobool113, label %if.then114, label %if.end117, !dbg !618

if.then114:                                       ; preds = %if.end104
  %31 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !619
  %tx_normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %31, i32 0, i32 44, !dbg !621
  %32 = load i64, i64* %tx_normal_irq_n, align 32, !dbg !622
  %inc115 = add i64 %32, 1, !dbg !622
  store i64 %inc115, i64* %tx_normal_irq_n, align 32, !dbg !622
  %33 = load i32, i32* %ret, align 4, !dbg !623
  %or116 = or i32 %33, 8, !dbg !623
  store i32 %or116, i32* %ret, align 4, !dbg !623
  br label %if.end117, !dbg !624

if.end117:                                        ; preds = %if.then114, %if.end104
  %34 = load i32, i32* %intr_status, align 4, !dbg !625
  %conv118 = zext i32 %34 to i64, !dbg !625
  %and119 = and i64 %conv118, 2048, !dbg !625
  %tobool120 = icmp ne i64 %and119, 0, !dbg !625
  %lnot121 = xor i1 %tobool120, true, !dbg !625
  %lnot123 = xor i1 %lnot121, true, !dbg !625
  %lnot.ext124 = zext i1 %lnot123 to i32, !dbg !625
  %conv125 = sext i32 %lnot.ext124 to i64, !dbg !625
  %tobool126 = icmp ne i64 %conv125, 0, !dbg !625
  br i1 %tobool126, label %if.then127, label %if.end129, !dbg !627

if.then127:                                       ; preds = %if.end117
  %35 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %x.addr, align 8, !dbg !628
  %rx_early_irq = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %35, i32 0, i32 37, !dbg !629
  %36 = load i64, i64* %rx_early_irq, align 8, !dbg !630
  %inc128 = add i64 %36, 1, !dbg !630
  store i64 %inc128, i64* %rx_early_irq, align 8, !dbg !630
  br label %if.end129, !dbg !628

if.end129:                                        ; preds = %if.then127, %if.end117
  br label %if.end130, !dbg !631

if.end130:                                        ; preds = %if.end129, %if.end81
  %37 = load i32, i32* %intr_status, align 4, !dbg !632
  %38 = load i32, i32* %intr_en, align 4, !dbg !633
  %and131 = and i32 %37, %38, !dbg !634
  %39 = load i8*, i8** %ioaddr.addr, align 8, !dbg !635
  %40 = load i32, i32* %chan.addr, align 4, !dbg !636
  %mul132 = mul i32 %40, 128, !dbg !636
  %add133 = add i32 4352, %mul132, !dbg !636
  %add134 = add i32 %add133, 96, !dbg !636
  %idx.ext135 = zext i32 %add134 to i64, !dbg !637
  %add.ptr136 = getelementptr i8, i8* %39, i64 %idx.ext135, !dbg !637
  call void @writel(i32 %and131, i8* %add.ptr136) #3, !dbg !638
  %41 = load i32, i32* %ret, align 4, !dbg !639
  ret i32 %41, !dbg !640
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @stmmac_dwmac4_set_mac_addr(i8* %ioaddr, i8* %addr, i32 %high, i32 %low) #0 !dbg !641 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %addr.addr = alloca i8*, align 8
  %high.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %data = alloca i64, align 8
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !648, metadata !DIExpression()), !dbg !649
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !650, metadata !DIExpression()), !dbg !651
  store i32 %high, i32* %high.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %high.addr, metadata !652, metadata !DIExpression()), !dbg !653
  store i32 %low, i32* %low.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %low.addr, metadata !654, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.declare(metadata i64* %data, metadata !656, metadata !DIExpression()), !dbg !657
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !658
  %arrayidx = getelementptr i8, i8* %0, i64 5, !dbg !658
  %1 = load i8, i8* %arrayidx, align 1, !dbg !658
  %conv = zext i8 %1 to i32, !dbg !658
  %shl = shl i32 %conv, 8, !dbg !659
  %2 = load i8*, i8** %addr.addr, align 8, !dbg !660
  %arrayidx1 = getelementptr i8, i8* %2, i64 4, !dbg !660
  %3 = load i8, i8* %arrayidx1, align 1, !dbg !660
  %conv2 = zext i8 %3 to i32, !dbg !660
  %or = or i32 %shl, %conv2, !dbg !661
  %conv3 = sext i32 %or to i64, !dbg !662
  store i64 %conv3, i64* %data, align 8, !dbg !663
  %4 = load i64, i64* %data, align 8, !dbg !664
  store i64 %4, i64* %data, align 8, !dbg !664
  %5 = load i64, i64* %data, align 8, !dbg !665
  %or4 = or i64 %5, 2147483648, !dbg !666
  %conv5 = trunc i64 %or4 to i32, !dbg !665
  %6 = load i8*, i8** %ioaddr.addr, align 8, !dbg !667
  %7 = load i32, i32* %high.addr, align 4, !dbg !668
  %idx.ext = zext i32 %7 to i64, !dbg !669
  %add.ptr = getelementptr i8, i8* %6, i64 %idx.ext, !dbg !669
  call void @writel(i32 %conv5, i8* %add.ptr) #3, !dbg !670
  %8 = load i8*, i8** %addr.addr, align 8, !dbg !671
  %arrayidx6 = getelementptr i8, i8* %8, i64 3, !dbg !671
  %9 = load i8, i8* %arrayidx6, align 1, !dbg !671
  %conv7 = zext i8 %9 to i32, !dbg !671
  %shl8 = shl i32 %conv7, 24, !dbg !672
  %10 = load i8*, i8** %addr.addr, align 8, !dbg !673
  %arrayidx9 = getelementptr i8, i8* %10, i64 2, !dbg !673
  %11 = load i8, i8* %arrayidx9, align 1, !dbg !673
  %conv10 = zext i8 %11 to i32, !dbg !673
  %shl11 = shl i32 %conv10, 16, !dbg !674
  %or12 = or i32 %shl8, %shl11, !dbg !675
  %12 = load i8*, i8** %addr.addr, align 8, !dbg !676
  %arrayidx13 = getelementptr i8, i8* %12, i64 1, !dbg !676
  %13 = load i8, i8* %arrayidx13, align 1, !dbg !676
  %conv14 = zext i8 %13 to i32, !dbg !676
  %shl15 = shl i32 %conv14, 8, !dbg !677
  %or16 = or i32 %or12, %shl15, !dbg !678
  %14 = load i8*, i8** %addr.addr, align 8, !dbg !679
  %arrayidx17 = getelementptr i8, i8* %14, i64 0, !dbg !679
  %15 = load i8, i8* %arrayidx17, align 1, !dbg !679
  %conv18 = zext i8 %15 to i32, !dbg !679
  %or19 = or i32 %or16, %conv18, !dbg !680
  %conv20 = sext i32 %or19 to i64, !dbg !681
  store i64 %conv20, i64* %data, align 8, !dbg !682
  %16 = load i64, i64* %data, align 8, !dbg !683
  %conv21 = trunc i64 %16 to i32, !dbg !683
  %17 = load i8*, i8** %ioaddr.addr, align 8, !dbg !684
  %18 = load i32, i32* %low.addr, align 4, !dbg !685
  %idx.ext22 = zext i32 %18 to i64, !dbg !686
  %add.ptr23 = getelementptr i8, i8* %17, i64 %idx.ext22, !dbg !686
  call void @writel(i32 %conv21, i8* %add.ptr23) #3, !dbg !687
  ret void, !dbg !688
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @stmmac_dwmac4_set_mac(i8* %ioaddr, i1 zeroext %enable) #0 !dbg !689 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %enable.addr = alloca i8, align 1
  %value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !692, metadata !DIExpression()), !dbg !693
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !694, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.declare(metadata i32* %value, metadata !696, metadata !DIExpression()), !dbg !697
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !698
  %add.ptr = getelementptr i8, i8* %0, i64 0, !dbg !699
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !700
  store i32 %call, i32* %value, align 4, !dbg !697
  %1 = load i8, i8* %enable.addr, align 1, !dbg !701
  %tobool = trunc i8 %1 to i1, !dbg !701
  br i1 %tobool, label %if.then, label %if.else, !dbg !703

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %value, align 4, !dbg !704
  %conv = zext i32 %2 to i64, !dbg !704
  %or = or i64 %conv, 3, !dbg !704
  %conv1 = trunc i64 %or to i32, !dbg !704
  store i32 %conv1, i32* %value, align 4, !dbg !704
  br label %if.end, !dbg !705

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !706
  %conv2 = zext i32 %3 to i64, !dbg !706
  %and = and i64 %conv2, -4, !dbg !706
  %conv3 = trunc i64 %and to i32, !dbg !706
  store i32 %conv3, i32* %value, align 4, !dbg !706
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %value, align 4, !dbg !707
  %5 = load i8*, i8** %ioaddr.addr, align 8, !dbg !708
  %add.ptr4 = getelementptr i8, i8* %5, i64 0, !dbg !709
  call void @writel(i32 %4, i8* %add.ptr4) #3, !dbg !710
  ret void, !dbg !711
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @stmmac_dwmac4_get_mac_addr(i8* %ioaddr, i8* %addr, i32 %high, i32 %low) #0 !dbg !712 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %addr.addr = alloca i8*, align 8
  %high.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %hi_addr = alloca i32, align 4
  %lo_addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !716, metadata !DIExpression()), !dbg !717
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !718, metadata !DIExpression()), !dbg !719
  store i32 %high, i32* %high.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %high.addr, metadata !720, metadata !DIExpression()), !dbg !721
  store i32 %low, i32* %low.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %low.addr, metadata !722, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.declare(metadata i32* %hi_addr, metadata !724, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.declare(metadata i32* %lo_addr, metadata !726, metadata !DIExpression()), !dbg !727
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !728
  %1 = load i32, i32* %high.addr, align 4, !dbg !729
  %idx.ext = zext i32 %1 to i64, !dbg !730
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !730
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !731
  store i32 %call, i32* %hi_addr, align 4, !dbg !732
  %2 = load i8*, i8** %ioaddr.addr, align 8, !dbg !733
  %3 = load i32, i32* %low.addr, align 4, !dbg !734
  %idx.ext1 = zext i32 %3 to i64, !dbg !735
  %add.ptr2 = getelementptr i8, i8* %2, i64 %idx.ext1, !dbg !735
  %call3 = call i32 @readl(i8* %add.ptr2) #3, !dbg !736
  store i32 %call3, i32* %lo_addr, align 4, !dbg !737
  %4 = load i32, i32* %lo_addr, align 4, !dbg !738
  %and = and i32 %4, 255, !dbg !739
  %conv = trunc i32 %and to i8, !dbg !738
  %5 = load i8*, i8** %addr.addr, align 8, !dbg !740
  %arrayidx = getelementptr i8, i8* %5, i64 0, !dbg !740
  store i8 %conv, i8* %arrayidx, align 1, !dbg !741
  %6 = load i32, i32* %lo_addr, align 4, !dbg !742
  %shr = lshr i32 %6, 8, !dbg !743
  %and4 = and i32 %shr, 255, !dbg !744
  %conv5 = trunc i32 %and4 to i8, !dbg !745
  %7 = load i8*, i8** %addr.addr, align 8, !dbg !746
  %arrayidx6 = getelementptr i8, i8* %7, i64 1, !dbg !746
  store i8 %conv5, i8* %arrayidx6, align 1, !dbg !747
  %8 = load i32, i32* %lo_addr, align 4, !dbg !748
  %shr7 = lshr i32 %8, 16, !dbg !749
  %and8 = and i32 %shr7, 255, !dbg !750
  %conv9 = trunc i32 %and8 to i8, !dbg !751
  %9 = load i8*, i8** %addr.addr, align 8, !dbg !752
  %arrayidx10 = getelementptr i8, i8* %9, i64 2, !dbg !752
  store i8 %conv9, i8* %arrayidx10, align 1, !dbg !753
  %10 = load i32, i32* %lo_addr, align 4, !dbg !754
  %shr11 = lshr i32 %10, 24, !dbg !755
  %and12 = and i32 %shr11, 255, !dbg !756
  %conv13 = trunc i32 %and12 to i8, !dbg !757
  %11 = load i8*, i8** %addr.addr, align 8, !dbg !758
  %arrayidx14 = getelementptr i8, i8* %11, i64 3, !dbg !758
  store i8 %conv13, i8* %arrayidx14, align 1, !dbg !759
  %12 = load i32, i32* %hi_addr, align 4, !dbg !760
  %and15 = and i32 %12, 255, !dbg !761
  %conv16 = trunc i32 %and15 to i8, !dbg !760
  %13 = load i8*, i8** %addr.addr, align 8, !dbg !762
  %arrayidx17 = getelementptr i8, i8* %13, i64 4, !dbg !762
  store i8 %conv16, i8* %arrayidx17, align 1, !dbg !763
  %14 = load i32, i32* %hi_addr, align 4, !dbg !764
  %shr18 = lshr i32 %14, 8, !dbg !765
  %and19 = and i32 %shr18, 255, !dbg !766
  %conv20 = trunc i32 %and19 to i8, !dbg !767
  %15 = load i8*, i8** %addr.addr, align 8, !dbg !768
  %arrayidx21 = getelementptr i8, i8* %15, i64 5, !dbg !768
  store i8 %conv20, i8* %arrayidx21, align 1, !dbg !769
  ret void, !dbg !770
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c", directory: "/home/lizy2001/genbc/linux")
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
!19 = distinct !DISubprogram(name: "dwmac4_dma_reset", scope: !1, file: !1, line: 15, type: !20, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !{}
!25 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !19, file: !1, line: 15, type: !23)
!26 = !DILocation(line: 15, column: 36, scope: !19)
!27 = !DILocalVariable(name: "value", scope: !19, file: !1, line: 17, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !29, line: 21, baseType: !30)
!29 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !31, line: 27, baseType: !5)
!31 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!32 = !DILocation(line: 17, column: 6, scope: !19)
!33 = !DILocation(line: 17, column: 20, scope: !19)
!34 = !DILocation(line: 17, column: 27, scope: !19)
!35 = !DILocation(line: 17, column: 14, scope: !19)
!36 = !DILocation(line: 20, column: 8, scope: !19)
!37 = !DILocation(line: 21, column: 9, scope: !19)
!38 = !DILocation(line: 21, column: 16, scope: !19)
!39 = !DILocation(line: 21, column: 23, scope: !19)
!40 = !DILocation(line: 21, column: 2, scope: !19)
!41 = !DILocalVariable(name: "__timeout_us", scope: !42, file: !1, line: 23, type: !43)
!42 = distinct !DILexicalBlock(scope: !19, file: !1, line: 23, column: 9)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !29, line: 23, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !31, line: 31, baseType: !45)
!45 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DILocation(line: 23, column: 9, scope: !42)
!47 = !DILocalVariable(name: "__sleep_us", scope: !42, file: !1, line: 23, type: !48)
!48 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !DILocalVariable(name: "__timeout", scope: !42, file: !1, line: 23, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !51, line: 29, baseType: !52)
!51 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !29, line: 22, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !31, line: 30, baseType: !54)
!54 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!55 = !DILocation(line: 23, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 23, column: 9)
!57 = distinct !DILexicalBlock(scope: !42, file: !1, line: 23, column: 9)
!58 = !DILocation(line: 23, column: 9, scope: !57)
!59 = !DILocation(line: 23, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 23, column: 9)
!61 = !DILocation(line: 23, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !60, file: !1, line: 23, column: 9)
!63 = !DILocation(line: 23, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !1, line: 23, column: 9)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 23, column: 9)
!66 = distinct !DILexicalBlock(scope: !42, file: !1, line: 23, column: 9)
!67 = !DILocation(line: 23, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 23, column: 9)
!69 = !DILocation(line: 23, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !64, file: !1, line: 23, column: 9)
!71 = !DILocation(line: 23, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !70, file: !1, line: 23, column: 9)
!73 = !DILocation(line: 23, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !64, file: !1, line: 23, column: 9)
!75 = !DILocation(line: 23, column: 9, scope: !65)
!76 = distinct !{!76, !77, !77}
!77 = !DILocation(line: 23, column: 9, scope: !66)
!78 = !DILocation(line: 23, column: 2, scope: !19)
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
!89 = !{i32 -2146522941}
!90 = distinct !DISubprogram(name: "writel", scope: !80, file: !80, line: 67, type: !91, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !5, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!94 = !DILocalVariable(name: "val", arg: 1, scope: !90, file: !80, line: 67, type: !5)
!95 = !DILocation(line: 67, column: 1, scope: !90)
!96 = !DILocalVariable(name: "addr", arg: 2, scope: !90, file: !80, line: 67, type: !93)
!97 = !{i32 -2146520548}
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
!130 = distinct !DISubprogram(name: "dwmac4_set_rx_tail_ptr", scope: !1, file: !1, line: 28, type: !131, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !23, !28, !28}
!133 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !130, file: !1, line: 28, type: !23)
!134 = !DILocation(line: 28, column: 43, scope: !130)
!135 = !DILocalVariable(name: "tail_ptr", arg: 2, scope: !130, file: !1, line: 28, type: !28)
!136 = !DILocation(line: 28, column: 55, scope: !130)
!137 = !DILocalVariable(name: "chan", arg: 3, scope: !130, file: !1, line: 28, type: !28)
!138 = !DILocation(line: 28, column: 69, scope: !130)
!139 = !DILocation(line: 30, column: 9, scope: !130)
!140 = !DILocation(line: 30, column: 19, scope: !130)
!141 = !DILocation(line: 30, column: 28, scope: !130)
!142 = !DILocation(line: 30, column: 26, scope: !130)
!143 = !DILocation(line: 30, column: 2, scope: !130)
!144 = !DILocation(line: 31, column: 1, scope: !130)
!145 = distinct !DISubprogram(name: "dwmac4_set_tx_tail_ptr", scope: !1, file: !1, line: 33, type: !131, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!146 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !145, file: !1, line: 33, type: !23)
!147 = !DILocation(line: 33, column: 43, scope: !145)
!148 = !DILocalVariable(name: "tail_ptr", arg: 2, scope: !145, file: !1, line: 33, type: !28)
!149 = !DILocation(line: 33, column: 55, scope: !145)
!150 = !DILocalVariable(name: "chan", arg: 3, scope: !145, file: !1, line: 33, type: !28)
!151 = !DILocation(line: 33, column: 69, scope: !145)
!152 = !DILocation(line: 35, column: 9, scope: !145)
!153 = !DILocation(line: 35, column: 19, scope: !145)
!154 = !DILocation(line: 35, column: 28, scope: !145)
!155 = !DILocation(line: 35, column: 26, scope: !145)
!156 = !DILocation(line: 35, column: 2, scope: !145)
!157 = !DILocation(line: 36, column: 1, scope: !145)
!158 = distinct !DISubprogram(name: "dwmac4_dma_start_tx", scope: !1, file: !1, line: 38, type: !159, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !23, !28}
!161 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !158, file: !1, line: 38, type: !23)
!162 = !DILocation(line: 38, column: 40, scope: !158)
!163 = !DILocalVariable(name: "chan", arg: 2, scope: !158, file: !1, line: 38, type: !28)
!164 = !DILocation(line: 38, column: 52, scope: !158)
!165 = !DILocalVariable(name: "value", scope: !158, file: !1, line: 40, type: !28)
!166 = !DILocation(line: 40, column: 6, scope: !158)
!167 = !DILocation(line: 40, column: 20, scope: !158)
!168 = !DILocation(line: 40, column: 29, scope: !158)
!169 = !DILocation(line: 40, column: 27, scope: !158)
!170 = !DILocation(line: 40, column: 14, scope: !158)
!171 = !DILocation(line: 42, column: 8, scope: !158)
!172 = !DILocation(line: 43, column: 9, scope: !158)
!173 = !DILocation(line: 43, column: 16, scope: !158)
!174 = !DILocation(line: 43, column: 25, scope: !158)
!175 = !DILocation(line: 43, column: 23, scope: !158)
!176 = !DILocation(line: 43, column: 2, scope: !158)
!177 = !DILocation(line: 45, column: 16, scope: !158)
!178 = !DILocation(line: 45, column: 23, scope: !158)
!179 = !DILocation(line: 45, column: 10, scope: !158)
!180 = !DILocation(line: 45, column: 8, scope: !158)
!181 = !DILocation(line: 46, column: 8, scope: !158)
!182 = !DILocation(line: 47, column: 9, scope: !158)
!183 = !DILocation(line: 47, column: 16, scope: !158)
!184 = !DILocation(line: 47, column: 23, scope: !158)
!185 = !DILocation(line: 47, column: 2, scope: !158)
!186 = !DILocation(line: 48, column: 1, scope: !158)
!187 = distinct !DISubprogram(name: "dwmac4_dma_stop_tx", scope: !1, file: !1, line: 50, type: !159, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!188 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !187, file: !1, line: 50, type: !23)
!189 = !DILocation(line: 50, column: 39, scope: !187)
!190 = !DILocalVariable(name: "chan", arg: 2, scope: !187, file: !1, line: 50, type: !28)
!191 = !DILocation(line: 50, column: 51, scope: !187)
!192 = !DILocalVariable(name: "value", scope: !187, file: !1, line: 52, type: !28)
!193 = !DILocation(line: 52, column: 6, scope: !187)
!194 = !DILocation(line: 52, column: 20, scope: !187)
!195 = !DILocation(line: 52, column: 29, scope: !187)
!196 = !DILocation(line: 52, column: 27, scope: !187)
!197 = !DILocation(line: 52, column: 14, scope: !187)
!198 = !DILocation(line: 54, column: 8, scope: !187)
!199 = !DILocation(line: 55, column: 9, scope: !187)
!200 = !DILocation(line: 55, column: 16, scope: !187)
!201 = !DILocation(line: 55, column: 25, scope: !187)
!202 = !DILocation(line: 55, column: 23, scope: !187)
!203 = !DILocation(line: 55, column: 2, scope: !187)
!204 = !DILocation(line: 57, column: 16, scope: !187)
!205 = !DILocation(line: 57, column: 23, scope: !187)
!206 = !DILocation(line: 57, column: 10, scope: !187)
!207 = !DILocation(line: 57, column: 8, scope: !187)
!208 = !DILocation(line: 58, column: 8, scope: !187)
!209 = !DILocation(line: 59, column: 9, scope: !187)
!210 = !DILocation(line: 59, column: 16, scope: !187)
!211 = !DILocation(line: 59, column: 23, scope: !187)
!212 = !DILocation(line: 59, column: 2, scope: !187)
!213 = !DILocation(line: 60, column: 1, scope: !187)
!214 = distinct !DISubprogram(name: "dwmac4_dma_start_rx", scope: !1, file: !1, line: 62, type: !159, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!215 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !214, file: !1, line: 62, type: !23)
!216 = !DILocation(line: 62, column: 40, scope: !214)
!217 = !DILocalVariable(name: "chan", arg: 2, scope: !214, file: !1, line: 62, type: !28)
!218 = !DILocation(line: 62, column: 52, scope: !214)
!219 = !DILocalVariable(name: "value", scope: !214, file: !1, line: 64, type: !28)
!220 = !DILocation(line: 64, column: 6, scope: !214)
!221 = !DILocation(line: 64, column: 20, scope: !214)
!222 = !DILocation(line: 64, column: 29, scope: !214)
!223 = !DILocation(line: 64, column: 27, scope: !214)
!224 = !DILocation(line: 64, column: 14, scope: !214)
!225 = !DILocation(line: 66, column: 8, scope: !214)
!226 = !DILocation(line: 68, column: 9, scope: !214)
!227 = !DILocation(line: 68, column: 16, scope: !214)
!228 = !DILocation(line: 68, column: 25, scope: !214)
!229 = !DILocation(line: 68, column: 23, scope: !214)
!230 = !DILocation(line: 68, column: 2, scope: !214)
!231 = !DILocation(line: 70, column: 16, scope: !214)
!232 = !DILocation(line: 70, column: 23, scope: !214)
!233 = !DILocation(line: 70, column: 10, scope: !214)
!234 = !DILocation(line: 70, column: 8, scope: !214)
!235 = !DILocation(line: 71, column: 8, scope: !214)
!236 = !DILocation(line: 72, column: 9, scope: !214)
!237 = !DILocation(line: 72, column: 16, scope: !214)
!238 = !DILocation(line: 72, column: 23, scope: !214)
!239 = !DILocation(line: 72, column: 2, scope: !214)
!240 = !DILocation(line: 73, column: 1, scope: !214)
!241 = distinct !DISubprogram(name: "dwmac4_dma_stop_rx", scope: !1, file: !1, line: 75, type: !159, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!242 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !241, file: !1, line: 75, type: !23)
!243 = !DILocation(line: 75, column: 39, scope: !241)
!244 = !DILocalVariable(name: "chan", arg: 2, scope: !241, file: !1, line: 75, type: !28)
!245 = !DILocation(line: 75, column: 51, scope: !241)
!246 = !DILocalVariable(name: "value", scope: !241, file: !1, line: 77, type: !28)
!247 = !DILocation(line: 77, column: 6, scope: !241)
!248 = !DILocation(line: 77, column: 20, scope: !241)
!249 = !DILocation(line: 77, column: 29, scope: !241)
!250 = !DILocation(line: 77, column: 27, scope: !241)
!251 = !DILocation(line: 77, column: 14, scope: !241)
!252 = !DILocation(line: 79, column: 8, scope: !241)
!253 = !DILocation(line: 80, column: 9, scope: !241)
!254 = !DILocation(line: 80, column: 16, scope: !241)
!255 = !DILocation(line: 80, column: 25, scope: !241)
!256 = !DILocation(line: 80, column: 23, scope: !241)
!257 = !DILocation(line: 80, column: 2, scope: !241)
!258 = !DILocation(line: 81, column: 1, scope: !241)
!259 = distinct !DISubprogram(name: "dwmac4_set_tx_ring_len", scope: !1, file: !1, line: 83, type: !131, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!260 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !259, file: !1, line: 83, type: !23)
!261 = !DILocation(line: 83, column: 43, scope: !259)
!262 = !DILocalVariable(name: "len", arg: 2, scope: !259, file: !1, line: 83, type: !28)
!263 = !DILocation(line: 83, column: 55, scope: !259)
!264 = !DILocalVariable(name: "chan", arg: 3, scope: !259, file: !1, line: 83, type: !28)
!265 = !DILocation(line: 83, column: 64, scope: !259)
!266 = !DILocation(line: 85, column: 9, scope: !259)
!267 = !DILocation(line: 85, column: 14, scope: !259)
!268 = !DILocation(line: 85, column: 23, scope: !259)
!269 = !DILocation(line: 85, column: 21, scope: !259)
!270 = !DILocation(line: 85, column: 2, scope: !259)
!271 = !DILocation(line: 86, column: 1, scope: !259)
!272 = distinct !DISubprogram(name: "dwmac4_set_rx_ring_len", scope: !1, file: !1, line: 88, type: !131, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!273 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !272, file: !1, line: 88, type: !23)
!274 = !DILocation(line: 88, column: 43, scope: !272)
!275 = !DILocalVariable(name: "len", arg: 2, scope: !272, file: !1, line: 88, type: !28)
!276 = !DILocation(line: 88, column: 55, scope: !272)
!277 = !DILocalVariable(name: "chan", arg: 3, scope: !272, file: !1, line: 88, type: !28)
!278 = !DILocation(line: 88, column: 64, scope: !272)
!279 = !DILocation(line: 90, column: 9, scope: !272)
!280 = !DILocation(line: 90, column: 14, scope: !272)
!281 = !DILocation(line: 90, column: 23, scope: !272)
!282 = !DILocation(line: 90, column: 21, scope: !272)
!283 = !DILocation(line: 90, column: 2, scope: !272)
!284 = !DILocation(line: 91, column: 1, scope: !272)
!285 = distinct !DISubprogram(name: "dwmac4_enable_dma_irq", scope: !1, file: !1, line: 93, type: !286, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !23, !28, !288, !288}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !289, line: 30, baseType: !290)
!289 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!290 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!291 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !285, file: !1, line: 93, type: !23)
!292 = !DILocation(line: 93, column: 42, scope: !285)
!293 = !DILocalVariable(name: "chan", arg: 2, scope: !285, file: !1, line: 93, type: !28)
!294 = !DILocation(line: 93, column: 54, scope: !285)
!295 = !DILocalVariable(name: "rx", arg: 3, scope: !285, file: !1, line: 93, type: !288)
!296 = !DILocation(line: 93, column: 65, scope: !285)
!297 = !DILocalVariable(name: "tx", arg: 4, scope: !285, file: !1, line: 93, type: !288)
!298 = !DILocation(line: 93, column: 74, scope: !285)
!299 = !DILocalVariable(name: "value", scope: !285, file: !1, line: 95, type: !28)
!300 = !DILocation(line: 95, column: 6, scope: !285)
!301 = !DILocation(line: 95, column: 20, scope: !285)
!302 = !DILocation(line: 95, column: 29, scope: !285)
!303 = !DILocation(line: 95, column: 27, scope: !285)
!304 = !DILocation(line: 95, column: 14, scope: !285)
!305 = !DILocation(line: 97, column: 6, scope: !306)
!306 = distinct !DILexicalBlock(scope: !285, file: !1, line: 97, column: 6)
!307 = !DILocation(line: 97, column: 6, scope: !285)
!308 = !DILocation(line: 98, column: 9, scope: !306)
!309 = !DILocation(line: 98, column: 3, scope: !306)
!310 = !DILocation(line: 99, column: 6, scope: !311)
!311 = distinct !DILexicalBlock(scope: !285, file: !1, line: 99, column: 6)
!312 = !DILocation(line: 99, column: 6, scope: !285)
!313 = !DILocation(line: 100, column: 9, scope: !311)
!314 = !DILocation(line: 100, column: 3, scope: !311)
!315 = !DILocation(line: 102, column: 9, scope: !285)
!316 = !DILocation(line: 102, column: 16, scope: !285)
!317 = !DILocation(line: 102, column: 25, scope: !285)
!318 = !DILocation(line: 102, column: 23, scope: !285)
!319 = !DILocation(line: 102, column: 2, scope: !285)
!320 = !DILocation(line: 103, column: 1, scope: !285)
!321 = distinct !DISubprogram(name: "dwmac410_enable_dma_irq", scope: !1, file: !1, line: 105, type: !286, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!322 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !321, file: !1, line: 105, type: !23)
!323 = !DILocation(line: 105, column: 44, scope: !321)
!324 = !DILocalVariable(name: "chan", arg: 2, scope: !321, file: !1, line: 105, type: !28)
!325 = !DILocation(line: 105, column: 56, scope: !321)
!326 = !DILocalVariable(name: "rx", arg: 3, scope: !321, file: !1, line: 105, type: !288)
!327 = !DILocation(line: 105, column: 67, scope: !321)
!328 = !DILocalVariable(name: "tx", arg: 4, scope: !321, file: !1, line: 105, type: !288)
!329 = !DILocation(line: 105, column: 76, scope: !321)
!330 = !DILocalVariable(name: "value", scope: !321, file: !1, line: 107, type: !28)
!331 = !DILocation(line: 107, column: 6, scope: !321)
!332 = !DILocation(line: 107, column: 20, scope: !321)
!333 = !DILocation(line: 107, column: 29, scope: !321)
!334 = !DILocation(line: 107, column: 27, scope: !321)
!335 = !DILocation(line: 107, column: 14, scope: !321)
!336 = !DILocation(line: 109, column: 6, scope: !337)
!337 = distinct !DILexicalBlock(scope: !321, file: !1, line: 109, column: 6)
!338 = !DILocation(line: 109, column: 6, scope: !321)
!339 = !DILocation(line: 110, column: 9, scope: !337)
!340 = !DILocation(line: 110, column: 3, scope: !337)
!341 = !DILocation(line: 111, column: 6, scope: !342)
!342 = distinct !DILexicalBlock(scope: !321, file: !1, line: 111, column: 6)
!343 = !DILocation(line: 111, column: 6, scope: !321)
!344 = !DILocation(line: 112, column: 9, scope: !342)
!345 = !DILocation(line: 112, column: 3, scope: !342)
!346 = !DILocation(line: 114, column: 9, scope: !321)
!347 = !DILocation(line: 114, column: 16, scope: !321)
!348 = !DILocation(line: 114, column: 25, scope: !321)
!349 = !DILocation(line: 114, column: 23, scope: !321)
!350 = !DILocation(line: 114, column: 2, scope: !321)
!351 = !DILocation(line: 115, column: 1, scope: !321)
!352 = distinct !DISubprogram(name: "dwmac4_disable_dma_irq", scope: !1, file: !1, line: 117, type: !286, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!353 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !352, file: !1, line: 117, type: !23)
!354 = !DILocation(line: 117, column: 43, scope: !352)
!355 = !DILocalVariable(name: "chan", arg: 2, scope: !352, file: !1, line: 117, type: !28)
!356 = !DILocation(line: 117, column: 55, scope: !352)
!357 = !DILocalVariable(name: "rx", arg: 3, scope: !352, file: !1, line: 117, type: !288)
!358 = !DILocation(line: 117, column: 66, scope: !352)
!359 = !DILocalVariable(name: "tx", arg: 4, scope: !352, file: !1, line: 117, type: !288)
!360 = !DILocation(line: 117, column: 75, scope: !352)
!361 = !DILocalVariable(name: "value", scope: !352, file: !1, line: 119, type: !28)
!362 = !DILocation(line: 119, column: 6, scope: !352)
!363 = !DILocation(line: 119, column: 20, scope: !352)
!364 = !DILocation(line: 119, column: 29, scope: !352)
!365 = !DILocation(line: 119, column: 27, scope: !352)
!366 = !DILocation(line: 119, column: 14, scope: !352)
!367 = !DILocation(line: 121, column: 6, scope: !368)
!368 = distinct !DILexicalBlock(scope: !352, file: !1, line: 121, column: 6)
!369 = !DILocation(line: 121, column: 6, scope: !352)
!370 = !DILocation(line: 122, column: 9, scope: !368)
!371 = !DILocation(line: 122, column: 3, scope: !368)
!372 = !DILocation(line: 123, column: 6, scope: !373)
!373 = distinct !DILexicalBlock(scope: !352, file: !1, line: 123, column: 6)
!374 = !DILocation(line: 123, column: 6, scope: !352)
!375 = !DILocation(line: 124, column: 9, scope: !373)
!376 = !DILocation(line: 124, column: 3, scope: !373)
!377 = !DILocation(line: 126, column: 9, scope: !352)
!378 = !DILocation(line: 126, column: 16, scope: !352)
!379 = !DILocation(line: 126, column: 25, scope: !352)
!380 = !DILocation(line: 126, column: 23, scope: !352)
!381 = !DILocation(line: 126, column: 2, scope: !352)
!382 = !DILocation(line: 127, column: 1, scope: !352)
!383 = distinct !DISubprogram(name: "dwmac410_disable_dma_irq", scope: !1, file: !1, line: 129, type: !286, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!384 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !383, file: !1, line: 129, type: !23)
!385 = !DILocation(line: 129, column: 45, scope: !383)
!386 = !DILocalVariable(name: "chan", arg: 2, scope: !383, file: !1, line: 129, type: !28)
!387 = !DILocation(line: 129, column: 57, scope: !383)
!388 = !DILocalVariable(name: "rx", arg: 3, scope: !383, file: !1, line: 129, type: !288)
!389 = !DILocation(line: 129, column: 68, scope: !383)
!390 = !DILocalVariable(name: "tx", arg: 4, scope: !383, file: !1, line: 129, type: !288)
!391 = !DILocation(line: 129, column: 77, scope: !383)
!392 = !DILocalVariable(name: "value", scope: !383, file: !1, line: 131, type: !28)
!393 = !DILocation(line: 131, column: 6, scope: !383)
!394 = !DILocation(line: 131, column: 20, scope: !383)
!395 = !DILocation(line: 131, column: 29, scope: !383)
!396 = !DILocation(line: 131, column: 27, scope: !383)
!397 = !DILocation(line: 131, column: 14, scope: !383)
!398 = !DILocation(line: 133, column: 6, scope: !399)
!399 = distinct !DILexicalBlock(scope: !383, file: !1, line: 133, column: 6)
!400 = !DILocation(line: 133, column: 6, scope: !383)
!401 = !DILocation(line: 134, column: 9, scope: !399)
!402 = !DILocation(line: 134, column: 3, scope: !399)
!403 = !DILocation(line: 135, column: 6, scope: !404)
!404 = distinct !DILexicalBlock(scope: !383, file: !1, line: 135, column: 6)
!405 = !DILocation(line: 135, column: 6, scope: !383)
!406 = !DILocation(line: 136, column: 9, scope: !404)
!407 = !DILocation(line: 136, column: 3, scope: !404)
!408 = !DILocation(line: 138, column: 9, scope: !383)
!409 = !DILocation(line: 138, column: 16, scope: !383)
!410 = !DILocation(line: 138, column: 25, scope: !383)
!411 = !DILocation(line: 138, column: 23, scope: !383)
!412 = !DILocation(line: 138, column: 2, scope: !383)
!413 = !DILocation(line: 139, column: 1, scope: !383)
!414 = distinct !DISubprogram(name: "dwmac4_dma_interrupt", scope: !1, file: !1, line: 141, type: !415, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!415 = !DISubroutineType(types: !416)
!416 = !{!22, !23, !417, !28}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_extra_stats", file: !4, line: 61, size: 7680, elements: !419)
!419 = !{!420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tx_underflow", scope: !418, file: !4, line: 63, baseType: !48, size: 64, align: 512)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tx_carrier", scope: !418, file: !4, line: 64, baseType: !48, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "tx_losscarrier", scope: !418, file: !4, line: 65, baseType: !48, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag", scope: !418, file: !4, line: 66, baseType: !48, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tx_deferred", scope: !418, file: !4, line: 67, baseType: !48, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tx_vlan", scope: !418, file: !4, line: 68, baseType: !48, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber", scope: !418, file: !4, line: 69, baseType: !48, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tx_frame_flushed", scope: !418, file: !4, line: 70, baseType: !48, size: 64, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "tx_payload_error", scope: !418, file: !4, line: 71, baseType: !48, size: 64, offset: 512)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ip_header_error", scope: !418, file: !4, line: 72, baseType: !48, size: 64, offset: 576)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rx_desc", scope: !418, file: !4, line: 74, baseType: !48, size: 64, offset: 640)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sa_filter_fail", scope: !418, file: !4, line: 75, baseType: !48, size: 64, offset: 704)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_error", scope: !418, file: !4, line: 76, baseType: !48, size: 64, offset: 768)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_csum_error", scope: !418, file: !4, line: 77, baseType: !48, size: 64, offset: 832)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rx_collision", scope: !418, file: !4, line: 78, baseType: !48, size: 64, offset: 896)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rx_crc_errors", scope: !418, file: !4, line: 79, baseType: !48, size: 64, offset: 960)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "dribbling_bit", scope: !418, file: !4, line: 80, baseType: !48, size: 64, offset: 1024)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rx_length", scope: !418, file: !4, line: 81, baseType: !48, size: 64, offset: 1088)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "rx_mii", scope: !418, file: !4, line: 82, baseType: !48, size: 64, offset: 1152)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rx_multicast", scope: !418, file: !4, line: 83, baseType: !48, size: 64, offset: 1216)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rx_gmac_overflow", scope: !418, file: !4, line: 84, baseType: !48, size: 64, offset: 1280)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog", scope: !418, file: !4, line: 85, baseType: !48, size: 64, offset: 1344)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "da_rx_filter_fail", scope: !418, file: !4, line: 86, baseType: !48, size: 64, offset: 1408)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sa_rx_filter_fail", scope: !418, file: !4, line: 87, baseType: !48, size: 64, offset: 1472)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rx_missed_cntr", scope: !418, file: !4, line: 88, baseType: !48, size: 64, offset: 1536)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_cntr", scope: !418, file: !4, line: 89, baseType: !48, size: 64, offset: 1600)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rx_vlan", scope: !418, file: !4, line: 90, baseType: !48, size: 64, offset: 1664)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rx_split_hdr_pkt_n", scope: !418, file: !4, line: 91, baseType: !48, size: 64, offset: 1728)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tx_undeflow_irq", scope: !418, file: !4, line: 93, baseType: !48, size: 64, offset: 1792)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "tx_process_stopped_irq", scope: !418, file: !4, line: 94, baseType: !48, size: 64, offset: 1856)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tx_jabber_irq", scope: !418, file: !4, line: 95, baseType: !48, size: 64, offset: 1920)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rx_overflow_irq", scope: !418, file: !4, line: 96, baseType: !48, size: 64, offset: 1984)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_unav_irq", scope: !418, file: !4, line: 97, baseType: !48, size: 64, offset: 2048)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rx_process_stopped_irq", scope: !418, file: !4, line: 98, baseType: !48, size: 64, offset: 2112)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rx_watchdog_irq", scope: !418, file: !4, line: 99, baseType: !48, size: 64, offset: 2176)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "tx_early_irq", scope: !418, file: !4, line: 100, baseType: !48, size: 64, offset: 2240)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_bus_error_irq", scope: !418, file: !4, line: 101, baseType: !48, size: 64, offset: 2304)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rx_early_irq", scope: !418, file: !4, line: 103, baseType: !48, size: 64, offset: 2368)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !418, file: !4, line: 104, baseType: !48, size: 64, offset: 2432)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tx_pkt_n", scope: !418, file: !4, line: 105, baseType: !48, size: 64, offset: 2496)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rx_pkt_n", scope: !418, file: !4, line: 106, baseType: !48, size: 64, offset: 2560)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "normal_irq_n", scope: !418, file: !4, line: 107, baseType: !48, size: 64, offset: 2624)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rx_normal_irq_n", scope: !418, file: !4, line: 108, baseType: !48, size: 64, offset: 2688)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "napi_poll", scope: !418, file: !4, line: 109, baseType: !48, size: 64, offset: 2752)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "tx_normal_irq_n", scope: !418, file: !4, line: 110, baseType: !48, size: 64, offset: 2816)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "tx_clean", scope: !418, file: !4, line: 111, baseType: !48, size: 64, offset: 2880)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "tx_set_ic_bit", scope: !418, file: !4, line: 112, baseType: !48, size: 64, offset: 2944)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "irq_receive_pmt_irq_n", scope: !418, file: !4, line: 113, baseType: !48, size: 64, offset: 3008)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_tx_irq_n", scope: !418, file: !4, line: 115, baseType: !48, size: 64, offset: 3072)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_irq_n", scope: !418, file: !4, line: 116, baseType: !48, size: 64, offset: 3136)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mmc_rx_csum_offload_irq_n", scope: !418, file: !4, line: 117, baseType: !48, size: 64, offset: 3200)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_in_lpi_mode_n", scope: !418, file: !4, line: 119, baseType: !48, size: 64, offset: 3264)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_path_exit_lpi_mode_n", scope: !418, file: !4, line: 120, baseType: !48, size: 64, offset: 3328)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_in_lpi_mode_n", scope: !418, file: !4, line: 121, baseType: !48, size: 64, offset: 3392)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_path_exit_lpi_mode_n", scope: !418, file: !4, line: 122, baseType: !48, size: 64, offset: 3456)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "phy_eee_wakeup_error_n", scope: !418, file: !4, line: 123, baseType: !48, size: 64, offset: 3520)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hdr_err", scope: !418, file: !4, line: 125, baseType: !48, size: 64, offset: 3584)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ip_payload_err", scope: !418, file: !4, line: 126, baseType: !48, size: 64, offset: 3648)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ip_csum_bypassed", scope: !418, file: !4, line: 127, baseType: !48, size: 64, offset: 3712)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_pkt_rcvd", scope: !418, file: !4, line: 128, baseType: !48, size: 64, offset: 3776)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_pkt_rcvd", scope: !418, file: !4, line: 129, baseType: !48, size: 64, offset: 3840)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "no_ptp_rx_msg_type_ext", scope: !418, file: !4, line: 130, baseType: !48, size: 64, offset: 3904)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_sync", scope: !418, file: !4, line: 131, baseType: !48, size: 64, offset: 3968)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_follow_up", scope: !418, file: !4, line: 132, baseType: !48, size: 64, offset: 4032)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_req", scope: !418, file: !4, line: 133, baseType: !48, size: 64, offset: 4096)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_delay_resp", scope: !418, file: !4, line: 134, baseType: !48, size: 64, offset: 4160)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_req", scope: !418, file: !4, line: 135, baseType: !48, size: 64, offset: 4224)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_resp", scope: !418, file: !4, line: 136, baseType: !48, size: 64, offset: 4288)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_pdelay_follow_up", scope: !418, file: !4, line: 137, baseType: !48, size: 64, offset: 4352)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_announce", scope: !418, file: !4, line: 138, baseType: !48, size: 64, offset: 4416)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_type_management", scope: !418, file: !4, line: 139, baseType: !48, size: 64, offset: 4480)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_rx_msg_pkt_reserved_type", scope: !418, file: !4, line: 140, baseType: !48, size: 64, offset: 4544)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_frame_type", scope: !418, file: !4, line: 141, baseType: !48, size: 64, offset: 4608)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_ver", scope: !418, file: !4, line: 142, baseType: !48, size: 64, offset: 4672)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp_dropped", scope: !418, file: !4, line: 143, baseType: !48, size: 64, offset: 4736)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "av_pkt_rcvd", scope: !418, file: !4, line: 144, baseType: !48, size: 64, offset: 4800)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "av_tagged_pkt_rcvd", scope: !418, file: !4, line: 145, baseType: !48, size: 64, offset: 4864)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tag_priority_val", scope: !418, file: !4, line: 146, baseType: !48, size: 64, offset: 4928)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "l3_filter_match", scope: !418, file: !4, line: 147, baseType: !48, size: 64, offset: 4992)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "l4_filter_match", scope: !418, file: !4, line: 148, baseType: !48, size: 64, offset: 5056)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "l3_l4_filter_no_match", scope: !418, file: !4, line: 149, baseType: !48, size: 64, offset: 5120)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_ane_n", scope: !418, file: !4, line: 151, baseType: !48, size: 64, offset: 5184)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pcs_link_n", scope: !418, file: !4, line: 152, baseType: !48, size: 64, offset: 5248)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rgmii_n", scope: !418, file: !4, line: 153, baseType: !48, size: 64, offset: 5312)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_link", scope: !418, file: !4, line: 154, baseType: !48, size: 64, offset: 5376)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_duplex", scope: !418, file: !4, line: 155, baseType: !48, size: 64, offset: 5440)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pcs_speed", scope: !418, file: !4, line: 156, baseType: !48, size: 64, offset: 5504)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_status_fifo_full", scope: !418, file: !4, line: 158, baseType: !48, size: 64, offset: 5568)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_not_empty", scope: !418, file: !4, line: 159, baseType: !48, size: 64, offset: 5632)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mmtl_fifo_ctrl", scope: !418, file: !4, line: 160, baseType: !48, size: 64, offset: 5696)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_write", scope: !418, file: !4, line: 161, baseType: !48, size: 64, offset: 5760)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_wait", scope: !418, file: !4, line: 162, baseType: !48, size: 64, offset: 5824)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_read", scope: !418, file: !4, line: 163, baseType: !48, size: 64, offset: 5888)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_tx_fifo_read_ctrl_idle", scope: !418, file: !4, line: 164, baseType: !48, size: 64, offset: 5952)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_in_pause", scope: !418, file: !4, line: 165, baseType: !48, size: 64, offset: 6016)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_xfer", scope: !418, file: !4, line: 166, baseType: !48, size: 64, offset: 6080)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_idle", scope: !418, file: !4, line: 167, baseType: !48, size: 64, offset: 6144)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_wait", scope: !418, file: !4, line: 168, baseType: !48, size: 64, offset: 6208)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mac_tx_frame_ctrl_pause", scope: !418, file: !4, line: 169, baseType: !48, size: 64, offset: 6272)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_tx_proto_engine", scope: !418, file: !4, line: 170, baseType: !48, size: 64, offset: 6336)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_full", scope: !418, file: !4, line: 171, baseType: !48, size: 64, offset: 6400)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_above_thresh", scope: !418, file: !4, line: 172, baseType: !48, size: 64, offset: 6464)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_below_thresh", scope: !418, file: !4, line: 173, baseType: !48, size: 64, offset: 6528)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_fill_level_empty", scope: !418, file: !4, line: 174, baseType: !48, size: 64, offset: 6592)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_flush", scope: !418, file: !4, line: 175, baseType: !48, size: 64, offset: 6656)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_read_data", scope: !418, file: !4, line: 176, baseType: !48, size: 64, offset: 6720)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_status", scope: !418, file: !4, line: 177, baseType: !48, size: 64, offset: 6784)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_read_ctrl_idle", scope: !418, file: !4, line: 178, baseType: !48, size: 64, offset: 6848)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mtl_rx_fifo_ctrl_active", scope: !418, file: !4, line: 179, baseType: !48, size: 64, offset: 6912)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mac_rx_frame_ctrl_fifo", scope: !418, file: !4, line: 180, baseType: !48, size: 64, offset: 6976)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mac_gmii_rx_proto_engine", scope: !418, file: !4, line: 181, baseType: !48, size: 64, offset: 7040)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_frames", scope: !418, file: !4, line: 183, baseType: !48, size: 64, offset: 7104)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tx_tso_nfrags", scope: !418, file: !4, line: 184, baseType: !48, size: 64, offset: 7168)
!533 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !414, file: !1, line: 141, type: !23)
!534 = !DILocation(line: 141, column: 40, scope: !414)
!535 = !DILocalVariable(name: "x", arg: 2, scope: !414, file: !1, line: 142, type: !417)
!536 = !DILocation(line: 142, column: 32, scope: !414)
!537 = !DILocalVariable(name: "chan", arg: 3, scope: !414, file: !1, line: 142, type: !28)
!538 = !DILocation(line: 142, column: 39, scope: !414)
!539 = !DILocalVariable(name: "intr_status", scope: !414, file: !1, line: 144, type: !28)
!540 = !DILocation(line: 144, column: 6, scope: !414)
!541 = !DILocation(line: 144, column: 26, scope: !414)
!542 = !DILocation(line: 144, column: 35, scope: !414)
!543 = !DILocation(line: 144, column: 33, scope: !414)
!544 = !DILocation(line: 144, column: 20, scope: !414)
!545 = !DILocalVariable(name: "intr_en", scope: !414, file: !1, line: 145, type: !28)
!546 = !DILocation(line: 145, column: 6, scope: !414)
!547 = !DILocation(line: 145, column: 22, scope: !414)
!548 = !DILocation(line: 145, column: 31, scope: !414)
!549 = !DILocation(line: 145, column: 29, scope: !414)
!550 = !DILocation(line: 145, column: 16, scope: !414)
!551 = !DILocalVariable(name: "ret", scope: !414, file: !1, line: 146, type: !22)
!552 = !DILocation(line: 146, column: 6, scope: !414)
!553 = !DILocation(line: 149, column: 6, scope: !554)
!554 = distinct !DILexicalBlock(scope: !414, file: !1, line: 149, column: 6)
!555 = !DILocation(line: 149, column: 6, scope: !414)
!556 = !DILocation(line: 150, column: 7, scope: !557)
!557 = distinct !DILexicalBlock(scope: !558, file: !1, line: 150, column: 7)
!558 = distinct !DILexicalBlock(scope: !554, file: !1, line: 149, column: 51)
!559 = !DILocation(line: 150, column: 7, scope: !558)
!560 = !DILocation(line: 151, column: 4, scope: !557)
!561 = !DILocation(line: 151, column: 7, scope: !557)
!562 = !DILocation(line: 151, column: 22, scope: !557)
!563 = !DILocation(line: 152, column: 7, scope: !564)
!564 = distinct !DILexicalBlock(scope: !558, file: !1, line: 152, column: 7)
!565 = !DILocation(line: 152, column: 7, scope: !558)
!566 = !DILocation(line: 153, column: 4, scope: !564)
!567 = !DILocation(line: 153, column: 7, scope: !564)
!568 = !DILocation(line: 153, column: 29, scope: !564)
!569 = !DILocation(line: 154, column: 7, scope: !570)
!570 = distinct !DILexicalBlock(scope: !558, file: !1, line: 154, column: 7)
!571 = !DILocation(line: 154, column: 7, scope: !558)
!572 = !DILocation(line: 155, column: 4, scope: !570)
!573 = !DILocation(line: 155, column: 7, scope: !570)
!574 = !DILocation(line: 155, column: 22, scope: !570)
!575 = !DILocation(line: 156, column: 7, scope: !576)
!576 = distinct !DILexicalBlock(scope: !558, file: !1, line: 156, column: 7)
!577 = !DILocation(line: 156, column: 7, scope: !558)
!578 = !DILocation(line: 157, column: 4, scope: !576)
!579 = !DILocation(line: 157, column: 7, scope: !576)
!580 = !DILocation(line: 157, column: 19, scope: !576)
!581 = !DILocation(line: 158, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !558, file: !1, line: 158, column: 7)
!583 = !DILocation(line: 158, column: 7, scope: !558)
!584 = !DILocation(line: 159, column: 4, scope: !585)
!585 = distinct !DILexicalBlock(scope: !582, file: !1, line: 158, column: 52)
!586 = !DILocation(line: 159, column: 7, scope: !585)
!587 = !DILocation(line: 159, column: 29, scope: !585)
!588 = !DILocation(line: 160, column: 8, scope: !585)
!589 = !DILocation(line: 161, column: 3, scope: !585)
!590 = !DILocation(line: 162, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !558, file: !1, line: 162, column: 7)
!592 = !DILocation(line: 162, column: 7, scope: !558)
!593 = !DILocation(line: 163, column: 4, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !1, line: 162, column: 52)
!595 = !DILocation(line: 163, column: 7, scope: !594)
!596 = !DILocation(line: 163, column: 26, scope: !594)
!597 = !DILocation(line: 164, column: 8, scope: !594)
!598 = !DILocation(line: 165, column: 3, scope: !594)
!599 = !DILocation(line: 166, column: 2, scope: !558)
!600 = !DILocation(line: 168, column: 6, scope: !601)
!601 = distinct !DILexicalBlock(scope: !414, file: !1, line: 168, column: 6)
!602 = !DILocation(line: 168, column: 6, scope: !414)
!603 = !DILocation(line: 169, column: 3, scope: !604)
!604 = distinct !DILexicalBlock(scope: !601, file: !1, line: 168, column: 49)
!605 = !DILocation(line: 169, column: 6, scope: !604)
!606 = !DILocation(line: 169, column: 18, scope: !604)
!607 = !DILocation(line: 170, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !604, file: !1, line: 170, column: 7)
!609 = !DILocation(line: 170, column: 7, scope: !604)
!610 = !DILocation(line: 171, column: 4, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !1, line: 170, column: 49)
!612 = !DILocation(line: 171, column: 7, scope: !611)
!613 = !DILocation(line: 171, column: 22, scope: !611)
!614 = !DILocation(line: 172, column: 8, scope: !611)
!615 = !DILocation(line: 173, column: 3, scope: !611)
!616 = !DILocation(line: 174, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !604, file: !1, line: 174, column: 7)
!618 = !DILocation(line: 174, column: 7, scope: !604)
!619 = !DILocation(line: 176, column: 4, scope: !620)
!620 = distinct !DILexicalBlock(scope: !617, file: !1, line: 175, column: 31)
!621 = !DILocation(line: 176, column: 7, scope: !620)
!622 = !DILocation(line: 176, column: 22, scope: !620)
!623 = !DILocation(line: 177, column: 8, scope: !620)
!624 = !DILocation(line: 178, column: 3, scope: !620)
!625 = !DILocation(line: 179, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !604, file: !1, line: 179, column: 7)
!627 = !DILocation(line: 179, column: 7, scope: !604)
!628 = !DILocation(line: 180, column: 4, scope: !626)
!629 = !DILocation(line: 180, column: 7, scope: !626)
!630 = !DILocation(line: 180, column: 19, scope: !626)
!631 = !DILocation(line: 181, column: 2, scope: !604)
!632 = !DILocation(line: 183, column: 9, scope: !414)
!633 = !DILocation(line: 183, column: 23, scope: !414)
!634 = !DILocation(line: 183, column: 21, scope: !414)
!635 = !DILocation(line: 183, column: 32, scope: !414)
!636 = !DILocation(line: 183, column: 41, scope: !414)
!637 = !DILocation(line: 183, column: 39, scope: !414)
!638 = !DILocation(line: 183, column: 2, scope: !414)
!639 = !DILocation(line: 184, column: 9, scope: !414)
!640 = !DILocation(line: 184, column: 2, scope: !414)
!641 = distinct !DISubprogram(name: "stmmac_dwmac4_set_mac_addr", scope: !1, file: !1, line: 187, type: !642, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !23, !644, !5, !5}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !29, line: 17, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !31, line: 21, baseType: !647)
!647 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!648 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !641, file: !1, line: 187, type: !23)
!649 = !DILocation(line: 187, column: 47, scope: !641)
!650 = !DILocalVariable(name: "addr", arg: 2, scope: !641, file: !1, line: 187, type: !644)
!651 = !DILocation(line: 187, column: 58, scope: !641)
!652 = !DILocalVariable(name: "high", arg: 3, scope: !641, file: !1, line: 188, type: !5)
!653 = !DILocation(line: 188, column: 18, scope: !641)
!654 = !DILocalVariable(name: "low", arg: 4, scope: !641, file: !1, line: 188, type: !5)
!655 = !DILocation(line: 188, column: 37, scope: !641)
!656 = !DILocalVariable(name: "data", scope: !641, file: !1, line: 190, type: !48)
!657 = !DILocation(line: 190, column: 16, scope: !641)
!658 = !DILocation(line: 192, column: 10, scope: !641)
!659 = !DILocation(line: 192, column: 18, scope: !641)
!660 = !DILocation(line: 192, column: 26, scope: !641)
!661 = !DILocation(line: 192, column: 24, scope: !641)
!662 = !DILocation(line: 192, column: 9, scope: !641)
!663 = !DILocation(line: 192, column: 7, scope: !641)
!664 = !DILocation(line: 197, column: 7, scope: !641)
!665 = !DILocation(line: 198, column: 9, scope: !641)
!666 = !DILocation(line: 198, column: 14, scope: !641)
!667 = !DILocation(line: 198, column: 32, scope: !641)
!668 = !DILocation(line: 198, column: 41, scope: !641)
!669 = !DILocation(line: 198, column: 39, scope: !641)
!670 = !DILocation(line: 198, column: 2, scope: !641)
!671 = !DILocation(line: 199, column: 10, scope: !641)
!672 = !DILocation(line: 199, column: 18, scope: !641)
!673 = !DILocation(line: 199, column: 28, scope: !641)
!674 = !DILocation(line: 199, column: 36, scope: !641)
!675 = !DILocation(line: 199, column: 25, scope: !641)
!676 = !DILocation(line: 199, column: 46, scope: !641)
!677 = !DILocation(line: 199, column: 54, scope: !641)
!678 = !DILocation(line: 199, column: 43, scope: !641)
!679 = !DILocation(line: 199, column: 62, scope: !641)
!680 = !DILocation(line: 199, column: 60, scope: !641)
!681 = !DILocation(line: 199, column: 9, scope: !641)
!682 = !DILocation(line: 199, column: 7, scope: !641)
!683 = !DILocation(line: 200, column: 9, scope: !641)
!684 = !DILocation(line: 200, column: 15, scope: !641)
!685 = !DILocation(line: 200, column: 24, scope: !641)
!686 = !DILocation(line: 200, column: 22, scope: !641)
!687 = !DILocation(line: 200, column: 2, scope: !641)
!688 = !DILocation(line: 201, column: 1, scope: !641)
!689 = distinct !DISubprogram(name: "stmmac_dwmac4_set_mac", scope: !1, file: !1, line: 204, type: !690, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !23, !288}
!692 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !689, file: !1, line: 204, type: !23)
!693 = !DILocation(line: 204, column: 42, scope: !689)
!694 = !DILocalVariable(name: "enable", arg: 2, scope: !689, file: !1, line: 204, type: !288)
!695 = !DILocation(line: 204, column: 55, scope: !689)
!696 = !DILocalVariable(name: "value", scope: !689, file: !1, line: 206, type: !28)
!697 = !DILocation(line: 206, column: 6, scope: !689)
!698 = !DILocation(line: 206, column: 20, scope: !689)
!699 = !DILocation(line: 206, column: 27, scope: !689)
!700 = !DILocation(line: 206, column: 14, scope: !689)
!701 = !DILocation(line: 208, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !689, file: !1, line: 208, column: 6)
!703 = !DILocation(line: 208, column: 6, scope: !689)
!704 = !DILocation(line: 209, column: 9, scope: !702)
!705 = !DILocation(line: 209, column: 3, scope: !702)
!706 = !DILocation(line: 211, column: 9, scope: !702)
!707 = !DILocation(line: 213, column: 9, scope: !689)
!708 = !DILocation(line: 213, column: 16, scope: !689)
!709 = !DILocation(line: 213, column: 23, scope: !689)
!710 = !DILocation(line: 213, column: 2, scope: !689)
!711 = !DILocation(line: 214, column: 1, scope: !689)
!712 = distinct !DISubprogram(name: "stmmac_dwmac4_get_mac_addr", scope: !1, file: !1, line: 216, type: !713, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !23, !715, !5, !5}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!716 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !712, file: !1, line: 216, type: !23)
!717 = !DILocation(line: 216, column: 47, scope: !712)
!718 = !DILocalVariable(name: "addr", arg: 2, scope: !712, file: !1, line: 216, type: !715)
!719 = !DILocation(line: 216, column: 70, scope: !712)
!720 = !DILocalVariable(name: "high", arg: 3, scope: !712, file: !1, line: 217, type: !5)
!721 = !DILocation(line: 217, column: 18, scope: !712)
!722 = !DILocalVariable(name: "low", arg: 4, scope: !712, file: !1, line: 217, type: !5)
!723 = !DILocation(line: 217, column: 37, scope: !712)
!724 = !DILocalVariable(name: "hi_addr", scope: !712, file: !1, line: 219, type: !5)
!725 = !DILocation(line: 219, column: 15, scope: !712)
!726 = !DILocalVariable(name: "lo_addr", scope: !712, file: !1, line: 219, type: !5)
!727 = !DILocation(line: 219, column: 24, scope: !712)
!728 = !DILocation(line: 222, column: 18, scope: !712)
!729 = !DILocation(line: 222, column: 27, scope: !712)
!730 = !DILocation(line: 222, column: 25, scope: !712)
!731 = !DILocation(line: 222, column: 12, scope: !712)
!732 = !DILocation(line: 222, column: 10, scope: !712)
!733 = !DILocation(line: 223, column: 18, scope: !712)
!734 = !DILocation(line: 223, column: 27, scope: !712)
!735 = !DILocation(line: 223, column: 25, scope: !712)
!736 = !DILocation(line: 223, column: 12, scope: !712)
!737 = !DILocation(line: 223, column: 10, scope: !712)
!738 = !DILocation(line: 226, column: 12, scope: !712)
!739 = !DILocation(line: 226, column: 20, scope: !712)
!740 = !DILocation(line: 226, column: 2, scope: !712)
!741 = !DILocation(line: 226, column: 10, scope: !712)
!742 = !DILocation(line: 227, column: 13, scope: !712)
!743 = !DILocation(line: 227, column: 21, scope: !712)
!744 = !DILocation(line: 227, column: 27, scope: !712)
!745 = !DILocation(line: 227, column: 12, scope: !712)
!746 = !DILocation(line: 227, column: 2, scope: !712)
!747 = !DILocation(line: 227, column: 10, scope: !712)
!748 = !DILocation(line: 228, column: 13, scope: !712)
!749 = !DILocation(line: 228, column: 21, scope: !712)
!750 = !DILocation(line: 228, column: 28, scope: !712)
!751 = !DILocation(line: 228, column: 12, scope: !712)
!752 = !DILocation(line: 228, column: 2, scope: !712)
!753 = !DILocation(line: 228, column: 10, scope: !712)
!754 = !DILocation(line: 229, column: 13, scope: !712)
!755 = !DILocation(line: 229, column: 21, scope: !712)
!756 = !DILocation(line: 229, column: 28, scope: !712)
!757 = !DILocation(line: 229, column: 12, scope: !712)
!758 = !DILocation(line: 229, column: 2, scope: !712)
!759 = !DILocation(line: 229, column: 10, scope: !712)
!760 = !DILocation(line: 230, column: 12, scope: !712)
!761 = !DILocation(line: 230, column: 20, scope: !712)
!762 = !DILocation(line: 230, column: 2, scope: !712)
!763 = !DILocation(line: 230, column: 10, scope: !712)
!764 = !DILocation(line: 231, column: 13, scope: !712)
!765 = !DILocation(line: 231, column: 21, scope: !712)
!766 = !DILocation(line: 231, column: 27, scope: !712)
!767 = !DILocation(line: 231, column: 12, scope: !712)
!768 = !DILocation(line: 231, column: 2, scope: !712)
!769 = !DILocation(line: 231, column: 10, scope: !712)
!770 = !DILocation(line: 232, column: 1, scope: !712)
