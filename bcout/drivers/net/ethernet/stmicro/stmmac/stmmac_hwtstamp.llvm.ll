; ModuleID = '../bcout/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.llvm.bc'
source_filename = "drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.stmmac_hwtimestamp = type { void (i8*, i32)*, void (i8*, i32, i32, i32*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32, i32, i32)*, void (i8*, i64*)* }

@stmmac_ptp = dso_local constant %struct.stmmac_hwtimestamp { void (i8*, i32)* @config_hw_tstamping, void (i8*, i32, i32, i32*)* @config_sub_second_increment, i32 (i8*, i32, i32)* @init_systime, i32 (i8*, i32)* @config_addend, i32 (i8*, i32, i32, i32, i32)* @adjust_systime, void (i8*, i64*)* @get_systime }, align 8, !dbg !0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @config_hw_tstamping(i8* %ioaddr, i32 %data) #0 !dbg !54 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %data.addr = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !57, metadata !DIExpression()), !dbg !58
  %0 = load i32, i32* %data.addr, align 4, !dbg !59
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !60
  %add.ptr = getelementptr i8, i8* %1, i64 0, !dbg !61
  call void @writel(i32 %0, i8* %add.ptr) #3, !dbg !62
  ret void, !dbg !63
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @config_sub_second_increment(i8* %ioaddr, i32 %ptp_clock, i32 %gmac4, i32* %ssinc) #0 !dbg !64 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %ptp_clock.addr = alloca i32, align 4
  %gmac4.addr = alloca i32, align 4
  %ssinc.addr = alloca i32*, align 8
  %value = alloca i32, align 4
  %data = alloca i64, align 8
  %reg_value = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !65, metadata !DIExpression()), !dbg !66
  store i32 %ptp_clock, i32* %ptp_clock.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ptp_clock.addr, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 %gmac4, i32* %gmac4.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gmac4.addr, metadata !69, metadata !DIExpression()), !dbg !70
  store i32* %ssinc, i32** %ssinc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ssinc.addr, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %value, metadata !73, metadata !DIExpression()), !dbg !74
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !75
  %add.ptr = getelementptr i8, i8* %0, i64 0, !dbg !76
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !77
  store i32 %call, i32* %value, align 4, !dbg !74
  call void @llvm.dbg.declare(metadata i64* %data, metadata !78, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %reg_value, metadata !81, metadata !DIExpression()), !dbg !82
  %1 = load i32, i32* %value, align 4, !dbg !83
  %conv = zext i32 %1 to i64, !dbg !83
  %and = and i64 %conv, 2, !dbg !85
  %tobool = icmp ne i64 %and, 0, !dbg !85
  br i1 %tobool, label %if.then, label %if.else, !dbg !86

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ptp_clock.addr, align 4, !dbg !87
  %conv1 = zext i32 %2 to i64, !dbg !87
  %div = udiv i64 2000000000, %conv1, !dbg !88
  store i64 %div, i64* %data, align 8, !dbg !89
  br label %if.end, !dbg !90

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %ptp_clock.addr, align 4, !dbg !91
  %conv2 = zext i32 %3 to i64, !dbg !91
  %div3 = udiv i64 1000000000, %conv2, !dbg !92
  store i64 %div3, i64* %data, align 8, !dbg !93
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %value, align 4, !dbg !94
  %conv4 = zext i32 %4 to i64, !dbg !94
  %and5 = and i64 %conv4, 512, !dbg !96
  %tobool6 = icmp ne i64 %and5, 0, !dbg !96
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !97

if.then7:                                         ; preds = %if.end
  %5 = load i64, i64* %data, align 8, !dbg !98
  %mul = mul i64 %5, 1000, !dbg !99
  %div8 = udiv i64 %mul, 465, !dbg !100
  store i64 %div8, i64* %data, align 8, !dbg !101
  br label %if.end9, !dbg !102

if.end9:                                          ; preds = %if.then7, %if.end
  %6 = load i64, i64* %data, align 8, !dbg !103
  %and10 = and i64 %6, 255, !dbg !103
  store i64 %and10, i64* %data, align 8, !dbg !103
  %7 = load i64, i64* %data, align 8, !dbg !104
  %conv11 = trunc i64 %7 to i32, !dbg !104
  store i32 %conv11, i32* %reg_value, align 4, !dbg !105
  %8 = load i32, i32* %gmac4.addr, align 4, !dbg !106
  %tobool12 = icmp ne i32 %8, 0, !dbg !106
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !108

if.then13:                                        ; preds = %if.end9
  %9 = load i32, i32* %reg_value, align 4, !dbg !109
  %shl = shl i32 %9, 16, !dbg !109
  store i32 %shl, i32* %reg_value, align 4, !dbg !109
  br label %if.end14, !dbg !110

if.end14:                                         ; preds = %if.then13, %if.end9
  %10 = load i32, i32* %reg_value, align 4, !dbg !111
  %11 = load i8*, i8** %ioaddr.addr, align 8, !dbg !112
  %add.ptr15 = getelementptr i8, i8* %11, i64 4, !dbg !113
  call void @writel(i32 %10, i8* %add.ptr15) #3, !dbg !114
  %12 = load i32*, i32** %ssinc.addr, align 8, !dbg !115
  %tobool16 = icmp ne i32* %12, null, !dbg !115
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !117

if.then17:                                        ; preds = %if.end14
  %13 = load i64, i64* %data, align 8, !dbg !118
  %conv18 = trunc i64 %13 to i32, !dbg !118
  %14 = load i32*, i32** %ssinc.addr, align 8, !dbg !119
  store i32 %conv18, i32* %14, align 4, !dbg !120
  br label %if.end19, !dbg !121

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void, !dbg !122
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @init_systime(i8* %ioaddr, i32 %sec, i32 %nsec) #0 !dbg !123 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %sec.addr = alloca i32, align 4
  %nsec.addr = alloca i32, align 4
  %value = alloca i32, align 4
  %__timeout_us = alloca i64, align 8
  %__sleep_us = alloca i64, align 8
  %__timeout = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !124, metadata !DIExpression()), !dbg !125
  store i32 %sec, i32* %sec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sec.addr, metadata !126, metadata !DIExpression()), !dbg !127
  store i32 %nsec, i32* %nsec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nsec.addr, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %value, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = load i32, i32* %sec.addr, align 4, !dbg !132
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !133
  %add.ptr = getelementptr i8, i8* %1, i64 16, !dbg !134
  call void @writel(i32 %0, i8* %add.ptr) #3, !dbg !135
  %2 = load i32, i32* %nsec.addr, align 4, !dbg !136
  %3 = load i8*, i8** %ioaddr.addr, align 8, !dbg !137
  %add.ptr1 = getelementptr i8, i8* %3, i64 20, !dbg !138
  call void @writel(i32 %2, i8* %add.ptr1) #3, !dbg !139
  %4 = load i8*, i8** %ioaddr.addr, align 8, !dbg !140
  %add.ptr2 = getelementptr i8, i8* %4, i64 0, !dbg !141
  %call = call i32 @readl(i8* %add.ptr2) #3, !dbg !142
  store i32 %call, i32* %value, align 4, !dbg !143
  %5 = load i32, i32* %value, align 4, !dbg !144
  %conv = zext i32 %5 to i64, !dbg !144
  %or = or i64 %conv, 4, !dbg !144
  %conv3 = trunc i64 %or to i32, !dbg !144
  store i32 %conv3, i32* %value, align 4, !dbg !144
  %6 = load i32, i32* %value, align 4, !dbg !145
  %7 = load i8*, i8** %ioaddr.addr, align 8, !dbg !146
  %add.ptr4 = getelementptr i8, i8* %7, i64 0, !dbg !147
  call void @writel(i32 %6, i8* %add.ptr4) #3, !dbg !148
  call void @llvm.dbg.declare(metadata i64* %__timeout_us, metadata !149, metadata !DIExpression()), !dbg !151
  store i64 100000, i64* %__timeout_us, align 8, !dbg !151
  call void @llvm.dbg.declare(metadata i64* %__sleep_us, metadata !152, metadata !DIExpression()), !dbg !151
  store i64 10000, i64* %__sleep_us, align 8, !dbg !151
  call void @llvm.dbg.declare(metadata i64* %__timeout, metadata !153, metadata !DIExpression()), !dbg !151
  %call5 = call i64 @ktime_get() #3, !dbg !151
  %8 = load i64, i64* %__timeout_us, align 8, !dbg !151
  %call6 = call i64 @ktime_add_us(i64 %call5, i64 %8) #3, !dbg !151
  store i64 %call6, i64* %__timeout, align 8, !dbg !151
  br label %do.body, !dbg !151

do.body:                                          ; preds = %entry
  %9 = load i64, i64* %__sleep_us, align 8, !dbg !159
  %cmp = icmp ne i64 %9, 0, !dbg !159
  br i1 %cmp, label %if.then, label %if.end, !dbg !162

if.then:                                          ; preds = %do.body
  br label %do.body8, !dbg !159

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !163

do.body9:                                         ; preds = %do.body8
  br label %do.end, !dbg !165

do.end:                                           ; preds = %do.body9
  br label %do.end10, !dbg !163

do.end10:                                         ; preds = %do.end
  br label %if.end, !dbg !163

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.end11, !dbg !162

do.end11:                                         ; preds = %if.end
  br label %for.cond, !dbg !151

for.cond:                                         ; preds = %if.end28, %do.end11
  %10 = load i8*, i8** %ioaddr.addr, align 8, !dbg !167
  %add.ptr12 = getelementptr i8, i8* %10, i64 0, !dbg !167
  %call13 = call i32 @readl(i8* %add.ptr12) #3, !dbg !167
  store i32 %call13, i32* %value, align 4, !dbg !167
  %11 = load i32, i32* %value, align 4, !dbg !171
  %conv14 = zext i32 %11 to i64, !dbg !171
  %and = and i64 %conv14, 4, !dbg !171
  %tobool = icmp ne i64 %and, 0, !dbg !171
  br i1 %tobool, label %if.end16, label %if.then15, !dbg !167

if.then15:                                        ; preds = %for.cond
  br label %for.end, !dbg !171

if.end16:                                         ; preds = %for.cond
  %12 = load i64, i64* %__timeout_us, align 8, !dbg !173
  %tobool17 = icmp ne i64 %12, 0, !dbg !173
  br i1 %tobool17, label %land.lhs.true, label %if.end25, !dbg !173

land.lhs.true:                                    ; preds = %if.end16
  %call18 = call i64 @ktime_get() #3, !dbg !173
  %13 = load i64, i64* %__timeout, align 8, !dbg !173
  %call19 = call i32 @ktime_compare(i64 %call18, i64 %13) #3, !dbg !173
  %cmp20 = icmp sgt i32 %call19, 0, !dbg !173
  br i1 %cmp20, label %if.then22, label %if.end25, !dbg !167

if.then22:                                        ; preds = %land.lhs.true
  %14 = load i8*, i8** %ioaddr.addr, align 8, !dbg !175
  %add.ptr23 = getelementptr i8, i8* %14, i64 0, !dbg !175
  %call24 = call i32 @readl(i8* %add.ptr23) #3, !dbg !175
  store i32 %call24, i32* %value, align 4, !dbg !175
  br label %for.end, !dbg !175

if.end25:                                         ; preds = %land.lhs.true, %if.end16
  %15 = load i64, i64* %__sleep_us, align 8, !dbg !177
  %tobool26 = icmp ne i64 %15, 0, !dbg !177
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !167

if.then27:                                        ; preds = %if.end25
  %16 = load i64, i64* %__sleep_us, align 8, !dbg !177
  %shr = lshr i64 %16, 2, !dbg !177
  %add = add i64 %shr, 1, !dbg !177
  %17 = load i64, i64* %__sleep_us, align 8, !dbg !177
  call void @usleep_range(i64 %add, i64 %17) #3, !dbg !177
  br label %if.end28, !dbg !177

if.end28:                                         ; preds = %if.then27, %if.end25
  br label %for.cond, !dbg !179, !llvm.loop !180

for.end:                                          ; preds = %if.then22, %if.then15
  %18 = load i32, i32* %value, align 4, !dbg !151
  %conv29 = zext i32 %18 to i64, !dbg !151
  %and30 = and i64 %conv29, 4, !dbg !151
  %tobool31 = icmp ne i64 %and30, 0, !dbg !151
  %lnot = xor i1 %tobool31, true, !dbg !151
  %19 = zext i1 %lnot to i64, !dbg !151
  %cond = select i1 %lnot, i32 0, i32 -110, !dbg !151
  store i32 %cond, i32* %tmp, align 4, !dbg !181
  %20 = load i32, i32* %tmp, align 4, !dbg !151
  ret i32 %20, !dbg !182
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @config_addend(i8* %ioaddr, i32 %addend) #0 !dbg !183 {
entry:
  %retval = alloca i32, align 4
  %ioaddr.addr = alloca i8*, align 8
  %addend.addr = alloca i32, align 4
  %value = alloca i32, align 4
  %limit = alloca i32, align 4
  %__ms = alloca i64, align 8
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !184, metadata !DIExpression()), !dbg !185
  store i32 %addend, i32* %addend.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addend.addr, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i32* %value, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i32* %limit, metadata !190, metadata !DIExpression()), !dbg !191
  %0 = load i32, i32* %addend.addr, align 4, !dbg !192
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !193
  %add.ptr = getelementptr i8, i8* %1, i64 24, !dbg !194
  call void @writel(i32 %0, i8* %add.ptr) #3, !dbg !195
  %2 = load i8*, i8** %ioaddr.addr, align 8, !dbg !196
  %add.ptr1 = getelementptr i8, i8* %2, i64 0, !dbg !197
  %call = call i32 @readl(i8* %add.ptr1) #3, !dbg !198
  store i32 %call, i32* %value, align 4, !dbg !199
  %3 = load i32, i32* %value, align 4, !dbg !200
  %conv = zext i32 %3 to i64, !dbg !200
  %or = or i64 %conv, 32, !dbg !200
  %conv2 = trunc i64 %or to i32, !dbg !200
  store i32 %conv2, i32* %value, align 4, !dbg !200
  %4 = load i32, i32* %value, align 4, !dbg !201
  %5 = load i8*, i8** %ioaddr.addr, align 8, !dbg !202
  %add.ptr3 = getelementptr i8, i8* %5, i64 0, !dbg !203
  call void @writel(i32 %4, i8* %add.ptr3) #3, !dbg !204
  store i32 10, i32* %limit, align 4, !dbg !205
  br label %while.cond, !dbg !206

while.cond:                                       ; preds = %while.end, %entry
  %6 = load i32, i32* %limit, align 4, !dbg !207
  %dec = add i32 %6, -1, !dbg !207
  store i32 %dec, i32* %limit, align 4, !dbg !207
  %tobool = icmp ne i32 %6, 0, !dbg !206
  br i1 %tobool, label %while.body, label %while.end12, !dbg !206

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %ioaddr.addr, align 8, !dbg !208
  %add.ptr4 = getelementptr i8, i8* %7, i64 0, !dbg !211
  %call5 = call i32 @readl(i8* %add.ptr4) #3, !dbg !212
  %conv6 = zext i32 %call5 to i64, !dbg !212
  %and = and i64 %conv6, 32, !dbg !213
  %tobool7 = icmp ne i64 %and, 0, !dbg !213
  br i1 %tobool7, label %if.end, label %if.then, !dbg !214

if.then:                                          ; preds = %while.body
  br label %while.end12, !dbg !215

if.end:                                           ; preds = %while.body
  call void @llvm.dbg.declare(metadata i64* %__ms, metadata !216, metadata !DIExpression()), !dbg !218
  store i64 10, i64* %__ms, align 8, !dbg !218
  br label %while.cond8, !dbg !218

while.cond8:                                      ; preds = %while.body11, %if.end
  %8 = load i64, i64* %__ms, align 8, !dbg !218
  %dec9 = add i64 %8, -1, !dbg !218
  store i64 %dec9, i64* %__ms, align 8, !dbg !218
  %tobool10 = icmp ne i64 %8, 0, !dbg !218
  br i1 %tobool10, label %while.body11, label %while.end, !dbg !218

while.body11:                                     ; preds = %while.cond8
  call void @__const_udelay(i64 4295000) #3, !dbg !219
  br label %while.cond8, !dbg !218, !llvm.loop !224

while.end:                                        ; preds = %while.cond8
  br label %while.cond, !dbg !206, !llvm.loop !225

while.end12:                                      ; preds = %if.then, %while.cond
  %9 = load i32, i32* %limit, align 4, !dbg !227
  %cmp = icmp slt i32 %9, 0, !dbg !229
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !230

if.then14:                                        ; preds = %while.end12
  store i32 -16, i32* %retval, align 4, !dbg !231
  br label %return, !dbg !231

if.end15:                                         ; preds = %while.end12
  store i32 0, i32* %retval, align 4, !dbg !232
  br label %return, !dbg !232

return:                                           ; preds = %if.end15, %if.then14
  %10 = load i32, i32* %retval, align 4, !dbg !233
  ret i32 %10, !dbg !233
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @adjust_systime(i8* %ioaddr, i32 %sec, i32 %nsec, i32 %add_sub, i32 %gmac4) #0 !dbg !234 {
entry:
  %retval = alloca i32, align 4
  %ioaddr.addr = alloca i8*, align 8
  %sec.addr = alloca i32, align 4
  %nsec.addr = alloca i32, align 4
  %add_sub.addr = alloca i32, align 4
  %gmac4.addr = alloca i32, align 4
  %value = alloca i32, align 4
  %limit = alloca i32, align 4
  %__ms = alloca i64, align 8
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !235, metadata !DIExpression()), !dbg !236
  store i32 %sec, i32* %sec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sec.addr, metadata !237, metadata !DIExpression()), !dbg !238
  store i32 %nsec, i32* %nsec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nsec.addr, metadata !239, metadata !DIExpression()), !dbg !240
  store i32 %add_sub, i32* %add_sub.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %add_sub.addr, metadata !241, metadata !DIExpression()), !dbg !242
  store i32 %gmac4, i32* %gmac4.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gmac4.addr, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %value, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %limit, metadata !247, metadata !DIExpression()), !dbg !248
  %0 = load i32, i32* %add_sub.addr, align 4, !dbg !249
  %tobool = icmp ne i32 %0, 0, !dbg !249
  br i1 %tobool, label %if.then, label %if.end8, !dbg !251

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %gmac4.addr, align 4, !dbg !252
  %tobool1 = icmp ne i32 %1, 0, !dbg !252
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !255

if.then2:                                         ; preds = %if.then
  %2 = load i32, i32* %sec.addr, align 4, !dbg !256
  %sub = sub i32 0, %2, !dbg !257
  store i32 %sub, i32* %sec.addr, align 4, !dbg !258
  br label %if.end, !dbg !259

if.end:                                           ; preds = %if.then2, %if.then
  %3 = load i8*, i8** %ioaddr.addr, align 8, !dbg !260
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !261
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !262
  store i32 %call, i32* %value, align 4, !dbg !263
  %4 = load i32, i32* %value, align 4, !dbg !264
  %conv = zext i32 %4 to i64, !dbg !264
  %and = and i64 %conv, 512, !dbg !266
  %tobool3 = icmp ne i64 %and, 0, !dbg !266
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !267

if.then4:                                         ; preds = %if.end
  %5 = load i32, i32* %nsec.addr, align 4, !dbg !268
  %sub5 = sub i32 1000000000, %5, !dbg !269
  store i32 %sub5, i32* %nsec.addr, align 4, !dbg !270
  br label %if.end7, !dbg !271

if.else:                                          ; preds = %if.end
  %6 = load i32, i32* %nsec.addr, align 4, !dbg !272
  %sub6 = sub i32 -2147483648, %6, !dbg !273
  store i32 %sub6, i32* %nsec.addr, align 4, !dbg !274
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  br label %if.end8, !dbg !275

if.end8:                                          ; preds = %if.end7, %entry
  %7 = load i32, i32* %sec.addr, align 4, !dbg !276
  %8 = load i8*, i8** %ioaddr.addr, align 8, !dbg !277
  %add.ptr9 = getelementptr i8, i8* %8, i64 16, !dbg !278
  call void @writel(i32 %7, i8* %add.ptr9) #3, !dbg !279
  %9 = load i32, i32* %add_sub.addr, align 4, !dbg !280
  %shl = shl i32 %9, 31, !dbg !281
  %10 = load i32, i32* %nsec.addr, align 4, !dbg !282
  %or = or i32 %shl, %10, !dbg !283
  store i32 %or, i32* %value, align 4, !dbg !284
  %11 = load i32, i32* %value, align 4, !dbg !285
  %12 = load i8*, i8** %ioaddr.addr, align 8, !dbg !286
  %add.ptr10 = getelementptr i8, i8* %12, i64 20, !dbg !287
  call void @writel(i32 %11, i8* %add.ptr10) #3, !dbg !288
  %13 = load i8*, i8** %ioaddr.addr, align 8, !dbg !289
  %add.ptr11 = getelementptr i8, i8* %13, i64 0, !dbg !290
  %call12 = call i32 @readl(i8* %add.ptr11) #3, !dbg !291
  store i32 %call12, i32* %value, align 4, !dbg !292
  %14 = load i32, i32* %value, align 4, !dbg !293
  %conv13 = zext i32 %14 to i64, !dbg !293
  %or14 = or i64 %conv13, 8, !dbg !293
  %conv15 = trunc i64 %or14 to i32, !dbg !293
  store i32 %conv15, i32* %value, align 4, !dbg !293
  %15 = load i32, i32* %value, align 4, !dbg !294
  %16 = load i8*, i8** %ioaddr.addr, align 8, !dbg !295
  %add.ptr16 = getelementptr i8, i8* %16, i64 0, !dbg !296
  call void @writel(i32 %15, i8* %add.ptr16) #3, !dbg !297
  store i32 10, i32* %limit, align 4, !dbg !298
  br label %while.cond, !dbg !299

while.cond:                                       ; preds = %while.end, %if.end8
  %17 = load i32, i32* %limit, align 4, !dbg !300
  %dec = add i32 %17, -1, !dbg !300
  store i32 %dec, i32* %limit, align 4, !dbg !300
  %tobool17 = icmp ne i32 %17, 0, !dbg !299
  br i1 %tobool17, label %while.body, label %while.end29, !dbg !299

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %ioaddr.addr, align 8, !dbg !301
  %add.ptr18 = getelementptr i8, i8* %18, i64 0, !dbg !304
  %call19 = call i32 @readl(i8* %add.ptr18) #3, !dbg !305
  %conv20 = zext i32 %call19 to i64, !dbg !305
  %and21 = and i64 %conv20, 8, !dbg !306
  %tobool22 = icmp ne i64 %and21, 0, !dbg !306
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !307

if.then23:                                        ; preds = %while.body
  br label %while.end29, !dbg !308

if.end24:                                         ; preds = %while.body
  call void @llvm.dbg.declare(metadata i64* %__ms, metadata !309, metadata !DIExpression()), !dbg !311
  store i64 10, i64* %__ms, align 8, !dbg !311
  br label %while.cond25, !dbg !311

while.cond25:                                     ; preds = %while.body28, %if.end24
  %19 = load i64, i64* %__ms, align 8, !dbg !311
  %dec26 = add i64 %19, -1, !dbg !311
  store i64 %dec26, i64* %__ms, align 8, !dbg !311
  %tobool27 = icmp ne i64 %19, 0, !dbg !311
  br i1 %tobool27, label %while.body28, label %while.end, !dbg !311

while.body28:                                     ; preds = %while.cond25
  call void @__const_udelay(i64 4295000) #3, !dbg !312
  br label %while.cond25, !dbg !311, !llvm.loop !317

while.end:                                        ; preds = %while.cond25
  br label %while.cond, !dbg !299, !llvm.loop !318

while.end29:                                      ; preds = %if.then23, %while.cond
  %20 = load i32, i32* %limit, align 4, !dbg !320
  %cmp = icmp slt i32 %20, 0, !dbg !322
  br i1 %cmp, label %if.then31, label %if.end32, !dbg !323

if.then31:                                        ; preds = %while.end29
  store i32 -16, i32* %retval, align 4, !dbg !324
  br label %return, !dbg !324

if.end32:                                         ; preds = %while.end29
  store i32 0, i32* %retval, align 4, !dbg !325
  br label %return, !dbg !325

return:                                           ; preds = %if.end32, %if.then31
  %21 = load i32, i32* %retval, align 4, !dbg !326
  ret i32 %21, !dbg !326
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @get_systime(i8* %ioaddr, i64* %systime) #0 !dbg !327 {
entry:
  %ioaddr.addr = alloca i8*, align 8
  %systime.addr = alloca i64*, align 8
  %ns = alloca i64, align 8
  store i8* %ioaddr, i8** %ioaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ioaddr.addr, metadata !328, metadata !DIExpression()), !dbg !329
  store i64* %systime, i64** %systime.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %systime.addr, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata i64* %ns, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load i8*, i8** %ioaddr.addr, align 8, !dbg !334
  %add.ptr = getelementptr i8, i8* %0, i64 12, !dbg !335
  %call = call i32 @readl(i8* %add.ptr) #3, !dbg !336
  %conv = zext i32 %call to i64, !dbg !336
  store i64 %conv, i64* %ns, align 8, !dbg !337
  %1 = load i8*, i8** %ioaddr.addr, align 8, !dbg !338
  %add.ptr1 = getelementptr i8, i8* %1, i64 8, !dbg !339
  %call2 = call i32 @readl(i8* %add.ptr1) #3, !dbg !340
  %conv3 = zext i32 %call2 to i64, !dbg !340
  %mul = mul i64 %conv3, 1000000000, !dbg !341
  %2 = load i64, i64* %ns, align 8, !dbg !342
  %add = add i64 %2, %mul, !dbg !342
  store i64 %add, i64* %ns, align 8, !dbg !342
  %3 = load i64*, i64** %systime.addr, align 8, !dbg !343
  %tobool = icmp ne i64* %3, null, !dbg !343
  br i1 %tobool, label %if.then, label %if.end, !dbg !345

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %ns, align 8, !dbg !346
  %5 = load i64*, i64** %systime.addr, align 8, !dbg !347
  store i64 %4, i64* %5, align 8, !dbg !348
  br label %if.end, !dbg !349

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !350
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !351 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !357, metadata !DIExpression()), !dbg !358
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !359, metadata !DIExpression()), !dbg !358
  %0 = load i32, i32* %val.addr, align 4, !dbg !358
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !358
  %2 = bitcast i8* %1 to i32*, !dbg !358
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #4, !dbg !358, !srcloc !360
  ret void, !dbg !358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !361 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !366, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !368, metadata !DIExpression()), !dbg !367
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !367
  %1 = bitcast i8* %0 to i32*, !dbg !367
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #4, !dbg !367, !srcloc !369
  store i32 %2, i32* %ret, align 4, !dbg !367
  %3 = load i32, i32* %ret, align 4, !dbg !367
  ret i32 %3, !dbg !367
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_add_us(i64 %kt, i64 %usec) #0 !dbg !370 {
entry:
  %kt.addr = alloca i64, align 8
  %usec.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !375, metadata !DIExpression()), !dbg !376
  store i64 %usec, i64* %usec.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %usec.addr, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = load i64, i64* %kt.addr, align 8, !dbg !379
  %1 = load i64, i64* %usec.addr, align 8, !dbg !379
  %mul = mul i64 %1, 1000, !dbg !379
  %add = add i64 %0, %mul, !dbg !379
  ret i64 %add, !dbg !380
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ktime_compare(i64 %cmp1, i64 %cmp2) #0 !dbg !381 {
entry:
  %retval = alloca i32, align 4
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !384, metadata !DIExpression()), !dbg !385
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !388
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !390
  %cmp = icmp slt i64 %0, %1, !dbg !391
  br i1 %cmp, label %if.then, label %if.end, !dbg !392

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !393
  br label %return, !dbg !393

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %cmp1.addr, align 8, !dbg !394
  %3 = load i64, i64* %cmp2.addr, align 8, !dbg !396
  %cmp3 = icmp sgt i64 %2, %3, !dbg !397
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !398

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !399
  br label %return, !dbg !399

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !400
  br label %return, !dbg !400

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !401
  ret i32 %4, !dbg !401
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #2

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "stmmac_ptp", scope: !2, file: !3, line: 156, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !8)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !{!0}
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmmac_hwtimestamp", file: !12, line: 494, size: 384, elements: !13)
!12 = !DIFile(filename: "drivers/net/ethernet/stmicro/stmmac/hwif.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !23, !29, !33, !37, !41}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "config_hw_tstamping", scope: !11, file: !12, line: 495, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !19}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !20, line: 21, baseType: !21)
!20 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !22, line: 27, baseType: !8)
!22 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!23 = !DIDerivedType(tag: DW_TAG_member, name: "config_sub_second_increment", scope: !11, file: !12, line: 496, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !18, !19, !27, !28}
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "init_systime", scope: !11, file: !12, line: 498, baseType: !30, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{!27, !18, !19, !19}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "config_addend", scope: !11, file: !12, line: 499, baseType: !34, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!27, !18, !19}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "adjust_systime", scope: !11, file: !12, line: 500, baseType: !38, size: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!27, !18, !19, !19, !27, !27}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "get_systime", scope: !11, file: !12, line: 502, baseType: !42, size: 64, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !18, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !20, line: 23, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !22, line: 31, baseType: !48)
!48 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"Code Model", i32 2}
!53 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!54 = distinct !DISubprogram(name: "config_hw_tstamping", scope: !3, file: !3, line: 18, type: !16, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!55 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !54, file: !3, line: 18, type: !18)
!56 = !DILocation(line: 18, column: 47, scope: !54)
!57 = !DILocalVariable(name: "data", arg: 2, scope: !54, file: !3, line: 18, type: !19)
!58 = !DILocation(line: 18, column: 59, scope: !54)
!59 = !DILocation(line: 20, column: 9, scope: !54)
!60 = !DILocation(line: 20, column: 15, scope: !54)
!61 = !DILocation(line: 20, column: 22, scope: !54)
!62 = !DILocation(line: 20, column: 2, scope: !54)
!63 = !DILocation(line: 21, column: 1, scope: !54)
!64 = distinct !DISubprogram(name: "config_sub_second_increment", scope: !3, file: !3, line: 23, type: !25, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!65 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !64, file: !3, line: 23, type: !18)
!66 = !DILocation(line: 23, column: 55, scope: !64)
!67 = !DILocalVariable(name: "ptp_clock", arg: 2, scope: !64, file: !3, line: 24, type: !19)
!68 = !DILocation(line: 24, column: 7, scope: !64)
!69 = !DILocalVariable(name: "gmac4", arg: 3, scope: !64, file: !3, line: 24, type: !27)
!70 = !DILocation(line: 24, column: 22, scope: !64)
!71 = !DILocalVariable(name: "ssinc", arg: 4, scope: !64, file: !3, line: 24, type: !28)
!72 = !DILocation(line: 24, column: 34, scope: !64)
!73 = !DILocalVariable(name: "value", scope: !64, file: !3, line: 26, type: !19)
!74 = !DILocation(line: 26, column: 6, scope: !64)
!75 = !DILocation(line: 26, column: 20, scope: !64)
!76 = !DILocation(line: 26, column: 27, scope: !64)
!77 = !DILocation(line: 26, column: 14, scope: !64)
!78 = !DILocalVariable(name: "data", scope: !64, file: !3, line: 27, type: !79)
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DILocation(line: 27, column: 16, scope: !64)
!81 = !DILocalVariable(name: "reg_value", scope: !64, file: !3, line: 28, type: !19)
!82 = !DILocation(line: 28, column: 6, scope: !64)
!83 = !DILocation(line: 38, column: 6, scope: !84)
!84 = distinct !DILexicalBlock(scope: !64, file: !3, line: 38, column: 6)
!85 = !DILocation(line: 38, column: 12, scope: !84)
!86 = !DILocation(line: 38, column: 6, scope: !64)
!87 = !DILocation(line: 39, column: 27, scope: !84)
!88 = !DILocation(line: 39, column: 25, scope: !84)
!89 = !DILocation(line: 39, column: 8, scope: !84)
!90 = !DILocation(line: 39, column: 3, scope: !84)
!91 = !DILocation(line: 41, column: 27, scope: !84)
!92 = !DILocation(line: 41, column: 25, scope: !84)
!93 = !DILocation(line: 41, column: 8, scope: !84)
!94 = !DILocation(line: 44, column: 8, scope: !95)
!95 = distinct !DILexicalBlock(scope: !64, file: !3, line: 44, column: 6)
!96 = !DILocation(line: 44, column: 14, scope: !95)
!97 = !DILocation(line: 44, column: 6, scope: !64)
!98 = !DILocation(line: 45, column: 11, scope: !95)
!99 = !DILocation(line: 45, column: 16, scope: !95)
!100 = !DILocation(line: 45, column: 24, scope: !95)
!101 = !DILocation(line: 45, column: 8, scope: !95)
!102 = !DILocation(line: 45, column: 3, scope: !95)
!103 = !DILocation(line: 47, column: 7, scope: !64)
!104 = !DILocation(line: 49, column: 14, scope: !64)
!105 = !DILocation(line: 49, column: 12, scope: !64)
!106 = !DILocation(line: 50, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !64, file: !3, line: 50, column: 6)
!108 = !DILocation(line: 50, column: 6, scope: !64)
!109 = !DILocation(line: 51, column: 13, scope: !107)
!110 = !DILocation(line: 51, column: 3, scope: !107)
!111 = !DILocation(line: 53, column: 9, scope: !64)
!112 = !DILocation(line: 53, column: 20, scope: !64)
!113 = !DILocation(line: 53, column: 27, scope: !64)
!114 = !DILocation(line: 53, column: 2, scope: !64)
!115 = !DILocation(line: 55, column: 6, scope: !116)
!116 = distinct !DILexicalBlock(scope: !64, file: !3, line: 55, column: 6)
!117 = !DILocation(line: 55, column: 6, scope: !64)
!118 = !DILocation(line: 56, column: 12, scope: !116)
!119 = !DILocation(line: 56, column: 4, scope: !116)
!120 = !DILocation(line: 56, column: 10, scope: !116)
!121 = !DILocation(line: 56, column: 3, scope: !116)
!122 = !DILocation(line: 57, column: 1, scope: !64)
!123 = distinct !DISubprogram(name: "init_systime", scope: !3, file: !3, line: 59, type: !31, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!124 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !123, file: !3, line: 59, type: !18)
!125 = !DILocation(line: 59, column: 39, scope: !123)
!126 = !DILocalVariable(name: "sec", arg: 2, scope: !123, file: !3, line: 59, type: !19)
!127 = !DILocation(line: 59, column: 51, scope: !123)
!128 = !DILocalVariable(name: "nsec", arg: 3, scope: !123, file: !3, line: 59, type: !19)
!129 = !DILocation(line: 59, column: 60, scope: !123)
!130 = !DILocalVariable(name: "value", scope: !123, file: !3, line: 61, type: !19)
!131 = !DILocation(line: 61, column: 6, scope: !123)
!132 = !DILocation(line: 63, column: 9, scope: !123)
!133 = !DILocation(line: 63, column: 14, scope: !123)
!134 = !DILocation(line: 63, column: 21, scope: !123)
!135 = !DILocation(line: 63, column: 2, scope: !123)
!136 = !DILocation(line: 64, column: 9, scope: !123)
!137 = !DILocation(line: 64, column: 15, scope: !123)
!138 = !DILocation(line: 64, column: 22, scope: !123)
!139 = !DILocation(line: 64, column: 2, scope: !123)
!140 = !DILocation(line: 66, column: 16, scope: !123)
!141 = !DILocation(line: 66, column: 23, scope: !123)
!142 = !DILocation(line: 66, column: 10, scope: !123)
!143 = !DILocation(line: 66, column: 8, scope: !123)
!144 = !DILocation(line: 67, column: 8, scope: !123)
!145 = !DILocation(line: 68, column: 9, scope: !123)
!146 = !DILocation(line: 68, column: 16, scope: !123)
!147 = !DILocation(line: 68, column: 23, scope: !123)
!148 = !DILocation(line: 68, column: 2, scope: !123)
!149 = !DILocalVariable(name: "__timeout_us", scope: !150, file: !3, line: 71, type: !46)
!150 = distinct !DILexicalBlock(scope: !123, file: !3, line: 71, column: 9)
!151 = !DILocation(line: 71, column: 9, scope: !150)
!152 = !DILocalVariable(name: "__sleep_us", scope: !150, file: !3, line: 71, type: !79)
!153 = !DILocalVariable(name: "__timeout", scope: !150, file: !3, line: 71, type: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !155, line: 29, baseType: !156)
!155 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !20, line: 22, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !22, line: 30, baseType: !158)
!158 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!159 = !DILocation(line: 71, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !3, line: 71, column: 9)
!161 = distinct !DILexicalBlock(scope: !150, file: !3, line: 71, column: 9)
!162 = !DILocation(line: 71, column: 9, scope: !161)
!163 = !DILocation(line: 71, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !3, line: 71, column: 9)
!165 = !DILocation(line: 71, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !164, file: !3, line: 71, column: 9)
!167 = !DILocation(line: 71, column: 9, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !3, line: 71, column: 9)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 71, column: 9)
!170 = distinct !DILexicalBlock(scope: !150, file: !3, line: 71, column: 9)
!171 = !DILocation(line: 71, column: 9, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !3, line: 71, column: 9)
!173 = !DILocation(line: 71, column: 9, scope: !174)
!174 = distinct !DILexicalBlock(scope: !168, file: !3, line: 71, column: 9)
!175 = !DILocation(line: 71, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !174, file: !3, line: 71, column: 9)
!177 = !DILocation(line: 71, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !168, file: !3, line: 71, column: 9)
!179 = !DILocation(line: 71, column: 9, scope: !169)
!180 = distinct !{!180, !181, !181}
!181 = !DILocation(line: 71, column: 9, scope: !170)
!182 = !DILocation(line: 71, column: 2, scope: !123)
!183 = distinct !DISubprogram(name: "config_addend", scope: !3, file: !3, line: 76, type: !35, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!184 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !183, file: !3, line: 76, type: !18)
!185 = !DILocation(line: 76, column: 40, scope: !183)
!186 = !DILocalVariable(name: "addend", arg: 2, scope: !183, file: !3, line: 76, type: !19)
!187 = !DILocation(line: 76, column: 52, scope: !183)
!188 = !DILocalVariable(name: "value", scope: !183, file: !3, line: 78, type: !19)
!189 = !DILocation(line: 78, column: 6, scope: !183)
!190 = !DILocalVariable(name: "limit", scope: !183, file: !3, line: 79, type: !27)
!191 = !DILocation(line: 79, column: 6, scope: !183)
!192 = !DILocation(line: 81, column: 9, scope: !183)
!193 = !DILocation(line: 81, column: 17, scope: !183)
!194 = !DILocation(line: 81, column: 24, scope: !183)
!195 = !DILocation(line: 81, column: 2, scope: !183)
!196 = !DILocation(line: 83, column: 16, scope: !183)
!197 = !DILocation(line: 83, column: 23, scope: !183)
!198 = !DILocation(line: 83, column: 10, scope: !183)
!199 = !DILocation(line: 83, column: 8, scope: !183)
!200 = !DILocation(line: 84, column: 8, scope: !183)
!201 = !DILocation(line: 85, column: 9, scope: !183)
!202 = !DILocation(line: 85, column: 16, scope: !183)
!203 = !DILocation(line: 85, column: 23, scope: !183)
!204 = !DILocation(line: 85, column: 2, scope: !183)
!205 = !DILocation(line: 88, column: 8, scope: !183)
!206 = !DILocation(line: 89, column: 2, scope: !183)
!207 = !DILocation(line: 89, column: 14, scope: !183)
!208 = !DILocation(line: 90, column: 15, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 90, column: 7)
!210 = distinct !DILexicalBlock(scope: !183, file: !3, line: 89, column: 18)
!211 = !DILocation(line: 90, column: 22, scope: !209)
!212 = !DILocation(line: 90, column: 9, scope: !209)
!213 = !DILocation(line: 90, column: 33, scope: !209)
!214 = !DILocation(line: 90, column: 7, scope: !210)
!215 = !DILocation(line: 91, column: 4, scope: !209)
!216 = !DILocalVariable(name: "__ms", scope: !217, file: !3, line: 92, type: !79)
!217 = distinct !DILexicalBlock(scope: !210, file: !3, line: 92, column: 3)
!218 = !DILocation(line: 92, column: 3, scope: !217)
!219 = !DILocation(line: 92, column: 3, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 92, column: 3)
!221 = distinct !DILexicalBlock(scope: !222, file: !3, line: 92, column: 3)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 92, column: 3)
!223 = distinct !DILexicalBlock(scope: !217, file: !3, line: 92, column: 3)
!224 = distinct !{!224, !218, !218}
!225 = distinct !{!225, !206, !226}
!226 = !DILocation(line: 93, column: 2, scope: !183)
!227 = !DILocation(line: 94, column: 6, scope: !228)
!228 = distinct !DILexicalBlock(scope: !183, file: !3, line: 94, column: 6)
!229 = !DILocation(line: 94, column: 12, scope: !228)
!230 = !DILocation(line: 94, column: 6, scope: !183)
!231 = !DILocation(line: 95, column: 3, scope: !228)
!232 = !DILocation(line: 97, column: 2, scope: !183)
!233 = !DILocation(line: 98, column: 1, scope: !183)
!234 = distinct !DISubprogram(name: "adjust_systime", scope: !3, file: !3, line: 100, type: !39, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!235 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !234, file: !3, line: 100, type: !18)
!236 = !DILocation(line: 100, column: 41, scope: !234)
!237 = !DILocalVariable(name: "sec", arg: 2, scope: !234, file: !3, line: 100, type: !19)
!238 = !DILocation(line: 100, column: 53, scope: !234)
!239 = !DILocalVariable(name: "nsec", arg: 3, scope: !234, file: !3, line: 100, type: !19)
!240 = !DILocation(line: 100, column: 62, scope: !234)
!241 = !DILocalVariable(name: "add_sub", arg: 4, scope: !234, file: !3, line: 101, type: !27)
!242 = !DILocation(line: 101, column: 7, scope: !234)
!243 = !DILocalVariable(name: "gmac4", arg: 5, scope: !234, file: !3, line: 101, type: !27)
!244 = !DILocation(line: 101, column: 20, scope: !234)
!245 = !DILocalVariable(name: "value", scope: !234, file: !3, line: 103, type: !19)
!246 = !DILocation(line: 103, column: 6, scope: !234)
!247 = !DILocalVariable(name: "limit", scope: !234, file: !3, line: 104, type: !27)
!248 = !DILocation(line: 104, column: 6, scope: !234)
!249 = !DILocation(line: 106, column: 6, scope: !250)
!250 = distinct !DILexicalBlock(scope: !234, file: !3, line: 106, column: 6)
!251 = !DILocation(line: 106, column: 6, scope: !234)
!252 = !DILocation(line: 111, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !3, line: 111, column: 7)
!254 = distinct !DILexicalBlock(scope: !250, file: !3, line: 106, column: 15)
!255 = !DILocation(line: 111, column: 7, scope: !254)
!256 = !DILocation(line: 112, column: 11, scope: !253)
!257 = !DILocation(line: 112, column: 10, scope: !253)
!258 = !DILocation(line: 112, column: 8, scope: !253)
!259 = !DILocation(line: 112, column: 4, scope: !253)
!260 = !DILocation(line: 114, column: 17, scope: !254)
!261 = !DILocation(line: 114, column: 24, scope: !254)
!262 = !DILocation(line: 114, column: 11, scope: !254)
!263 = !DILocation(line: 114, column: 9, scope: !254)
!264 = !DILocation(line: 115, column: 7, scope: !265)
!265 = distinct !DILexicalBlock(scope: !254, file: !3, line: 115, column: 7)
!266 = !DILocation(line: 115, column: 13, scope: !265)
!267 = !DILocation(line: 115, column: 7, scope: !254)
!268 = !DILocation(line: 116, column: 40, scope: !265)
!269 = !DILocation(line: 116, column: 38, scope: !265)
!270 = !DILocation(line: 116, column: 9, scope: !265)
!271 = !DILocation(line: 116, column: 4, scope: !265)
!272 = !DILocation(line: 118, column: 39, scope: !265)
!273 = !DILocation(line: 118, column: 37, scope: !265)
!274 = !DILocation(line: 118, column: 9, scope: !265)
!275 = !DILocation(line: 119, column: 2, scope: !254)
!276 = !DILocation(line: 121, column: 9, scope: !234)
!277 = !DILocation(line: 121, column: 14, scope: !234)
!278 = !DILocation(line: 121, column: 21, scope: !234)
!279 = !DILocation(line: 121, column: 2, scope: !234)
!280 = !DILocation(line: 122, column: 11, scope: !234)
!281 = !DILocation(line: 122, column: 19, scope: !234)
!282 = !DILocation(line: 122, column: 49, scope: !234)
!283 = !DILocation(line: 122, column: 47, scope: !234)
!284 = !DILocation(line: 122, column: 8, scope: !234)
!285 = !DILocation(line: 123, column: 9, scope: !234)
!286 = !DILocation(line: 123, column: 16, scope: !234)
!287 = !DILocation(line: 123, column: 23, scope: !234)
!288 = !DILocation(line: 123, column: 2, scope: !234)
!289 = !DILocation(line: 126, column: 16, scope: !234)
!290 = !DILocation(line: 126, column: 23, scope: !234)
!291 = !DILocation(line: 126, column: 10, scope: !234)
!292 = !DILocation(line: 126, column: 8, scope: !234)
!293 = !DILocation(line: 127, column: 8, scope: !234)
!294 = !DILocation(line: 128, column: 9, scope: !234)
!295 = !DILocation(line: 128, column: 16, scope: !234)
!296 = !DILocation(line: 128, column: 23, scope: !234)
!297 = !DILocation(line: 128, column: 2, scope: !234)
!298 = !DILocation(line: 131, column: 8, scope: !234)
!299 = !DILocation(line: 132, column: 2, scope: !234)
!300 = !DILocation(line: 132, column: 14, scope: !234)
!301 = !DILocation(line: 133, column: 15, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !3, line: 133, column: 7)
!303 = distinct !DILexicalBlock(scope: !234, file: !3, line: 132, column: 18)
!304 = !DILocation(line: 133, column: 22, scope: !302)
!305 = !DILocation(line: 133, column: 9, scope: !302)
!306 = !DILocation(line: 133, column: 33, scope: !302)
!307 = !DILocation(line: 133, column: 7, scope: !303)
!308 = !DILocation(line: 134, column: 4, scope: !302)
!309 = !DILocalVariable(name: "__ms", scope: !310, file: !3, line: 135, type: !79)
!310 = distinct !DILexicalBlock(scope: !303, file: !3, line: 135, column: 3)
!311 = !DILocation(line: 135, column: 3, scope: !310)
!312 = !DILocation(line: 135, column: 3, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !3, line: 135, column: 3)
!314 = distinct !DILexicalBlock(scope: !315, file: !3, line: 135, column: 3)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 135, column: 3)
!316 = distinct !DILexicalBlock(scope: !310, file: !3, line: 135, column: 3)
!317 = distinct !{!317, !311, !311}
!318 = distinct !{!318, !299, !319}
!319 = !DILocation(line: 136, column: 2, scope: !234)
!320 = !DILocation(line: 137, column: 6, scope: !321)
!321 = distinct !DILexicalBlock(scope: !234, file: !3, line: 137, column: 6)
!322 = !DILocation(line: 137, column: 12, scope: !321)
!323 = !DILocation(line: 137, column: 6, scope: !234)
!324 = !DILocation(line: 138, column: 3, scope: !321)
!325 = !DILocation(line: 140, column: 2, scope: !234)
!326 = !DILocation(line: 141, column: 1, scope: !234)
!327 = distinct !DISubprogram(name: "get_systime", scope: !3, file: !3, line: 143, type: !43, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!328 = !DILocalVariable(name: "ioaddr", arg: 1, scope: !327, file: !3, line: 143, type: !18)
!329 = !DILocation(line: 143, column: 39, scope: !327)
!330 = !DILocalVariable(name: "systime", arg: 2, scope: !327, file: !3, line: 143, type: !45)
!331 = !DILocation(line: 143, column: 52, scope: !327)
!332 = !DILocalVariable(name: "ns", scope: !327, file: !3, line: 145, type: !46)
!333 = !DILocation(line: 145, column: 6, scope: !327)
!334 = !DILocation(line: 148, column: 13, scope: !327)
!335 = !DILocation(line: 148, column: 20, scope: !327)
!336 = !DILocation(line: 148, column: 7, scope: !327)
!337 = !DILocation(line: 148, column: 5, scope: !327)
!338 = !DILocation(line: 150, column: 14, scope: !327)
!339 = !DILocation(line: 150, column: 21, scope: !327)
!340 = !DILocation(line: 150, column: 8, scope: !327)
!341 = !DILocation(line: 150, column: 33, scope: !327)
!342 = !DILocation(line: 150, column: 5, scope: !327)
!343 = !DILocation(line: 152, column: 6, scope: !344)
!344 = distinct !DILexicalBlock(scope: !327, file: !3, line: 152, column: 6)
!345 = !DILocation(line: 152, column: 6, scope: !327)
!346 = !DILocation(line: 153, column: 14, scope: !344)
!347 = !DILocation(line: 153, column: 4, scope: !344)
!348 = !DILocation(line: 153, column: 12, scope: !344)
!349 = !DILocation(line: 153, column: 3, scope: !344)
!350 = !DILocation(line: 154, column: 1, scope: !327)
!351 = distinct !DISubprogram(name: "writel", scope: !352, file: !352, line: 67, type: !353, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!352 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!353 = !DISubroutineType(types: !354)
!354 = !{null, !8, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!357 = !DILocalVariable(name: "val", arg: 1, scope: !351, file: !352, line: 67, type: !8)
!358 = !DILocation(line: 67, column: 1, scope: !351)
!359 = !DILocalVariable(name: "addr", arg: 2, scope: !351, file: !352, line: 67, type: !355)
!360 = !{i32 -2146522393}
!361 = distinct !DISubprogram(name: "readl", scope: !352, file: !352, line: 59, type: !362, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!362 = !DISubroutineType(types: !363)
!363 = !{!8, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!366 = !DILocalVariable(name: "addr", arg: 1, scope: !361, file: !352, line: 59, type: !364)
!367 = !DILocation(line: 59, column: 1, scope: !361)
!368 = !DILocalVariable(name: "ret", scope: !361, file: !352, line: 59, type: !8)
!369 = !{i32 -2146524786}
!370 = distinct !DISubprogram(name: "ktime_add_us", scope: !155, file: !155, line: 179, type: !371, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!371 = !DISubroutineType(types: !372)
!372 = !{!154, !373, !374}
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!375 = !DILocalVariable(name: "kt", arg: 1, scope: !370, file: !155, line: 179, type: !373)
!376 = !DILocation(line: 179, column: 50, scope: !370)
!377 = !DILocalVariable(name: "usec", arg: 2, scope: !370, file: !155, line: 179, type: !374)
!378 = !DILocation(line: 179, column: 64, scope: !370)
!379 = !DILocation(line: 181, column: 9, scope: !370)
!380 = !DILocation(line: 181, column: 2, scope: !370)
!381 = distinct !DISubprogram(name: "ktime_compare", scope: !155, file: !155, line: 95, type: !382, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!382 = !DISubroutineType(types: !383)
!383 = !{!27, !373, !373}
!384 = !DILocalVariable(name: "cmp1", arg: 1, scope: !381, file: !155, line: 95, type: !373)
!385 = !DILocation(line: 95, column: 47, scope: !381)
!386 = !DILocalVariable(name: "cmp2", arg: 2, scope: !381, file: !155, line: 95, type: !373)
!387 = !DILocation(line: 95, column: 67, scope: !381)
!388 = !DILocation(line: 97, column: 6, scope: !389)
!389 = distinct !DILexicalBlock(scope: !381, file: !155, line: 97, column: 6)
!390 = !DILocation(line: 97, column: 13, scope: !389)
!391 = !DILocation(line: 97, column: 11, scope: !389)
!392 = !DILocation(line: 97, column: 6, scope: !381)
!393 = !DILocation(line: 98, column: 3, scope: !389)
!394 = !DILocation(line: 99, column: 6, scope: !395)
!395 = distinct !DILexicalBlock(scope: !381, file: !155, line: 99, column: 6)
!396 = !DILocation(line: 99, column: 13, scope: !395)
!397 = !DILocation(line: 99, column: 11, scope: !395)
!398 = !DILocation(line: 99, column: 6, scope: !381)
!399 = !DILocation(line: 100, column: 3, scope: !395)
!400 = !DILocation(line: 101, column: 2, scope: !381)
!401 = !DILocation(line: 102, column: 1, scope: !381)
