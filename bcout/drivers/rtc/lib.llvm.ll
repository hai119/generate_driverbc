; ModuleID = '../bcout/drivers/rtc/lib.llvm.bc'
source_filename = "drivers/rtc/lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i64 }

@rtc_days_in_month = internal constant [12 x i8] c"\1F\1C\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F", align 1, !dbg !0
@rtc_ydays = internal constant [2 x [13 x i16]] [[13 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], [13 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366]], align 16, !dbg !17

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtc_month_days(i32 %month, i32 %year) #0 !dbg !35 {
entry:
  %month.addr = alloca i32, align 4
  %year.addr = alloca i32, align 4
  store i32 %month, i32* %month.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %month.addr, metadata !38, metadata !DIExpression()), !dbg !39
  store i32 %year, i32* %year.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %year.addr, metadata !40, metadata !DIExpression()), !dbg !41
  %0 = load i32, i32* %month.addr, align 4, !dbg !42
  %idxprom = zext i32 %0 to i64, !dbg !43
  %arrayidx = getelementptr [12 x i8], [12 x i8]* @rtc_days_in_month, i64 0, i64 %idxprom, !dbg !43
  %1 = load i8, i8* %arrayidx, align 1, !dbg !43
  %conv = zext i8 %1 to i32, !dbg !43
  %2 = load i32, i32* %year.addr, align 4, !dbg !44
  %call = call zeroext i1 @is_leap_year(i32 %2) #4, !dbg !45
  br i1 %call, label %land.rhs, label %land.end, !dbg !46

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %month.addr, align 4, !dbg !47
  %cmp = icmp eq i32 %3, 1, !dbg !48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !49
  %land.ext = zext i1 %4 to i32, !dbg !46
  %add = add i32 %conv, %land.ext, !dbg !50
  ret i32 %add, !dbg !51
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_leap_year(i32 %year) #0 !dbg !52 {
entry:
  %year.addr = alloca i32, align 4
  store i32 %year, i32* %year.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %year.addr, metadata !59, metadata !DIExpression()), !dbg !60
  %0 = load i32, i32* %year.addr, align 4, !dbg !61
  %rem = urem i32 %0, 4, !dbg !62
  %tobool = icmp ne i32 %rem, 0, !dbg !62
  br i1 %tobool, label %lor.rhs, label %land.lhs.true, !dbg !63

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %year.addr, align 4, !dbg !64
  %rem1 = urem i32 %1, 100, !dbg !65
  %tobool2 = icmp ne i32 %rem1, 0, !dbg !65
  br i1 %tobool2, label %lor.end, label %lor.rhs, !dbg !66

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %year.addr, align 4, !dbg !67
  %rem3 = urem i32 %2, 400, !dbg !68
  %tobool4 = icmp ne i32 %rem3, 0, !dbg !69
  %lnot = xor i1 %tobool4, true, !dbg !69
  br label %lor.end, !dbg !66

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %3 = phi i1 [ true, %land.lhs.true ], [ %lnot, %lor.rhs ]
  ret i1 %3, !dbg !70
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtc_year_days(i32 %day, i32 %month, i32 %year) #0 !dbg !71 {
entry:
  %day.addr = alloca i32, align 4
  %month.addr = alloca i32, align 4
  %year.addr = alloca i32, align 4
  store i32 %day, i32* %day.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %day.addr, metadata !74, metadata !DIExpression()), !dbg !75
  store i32 %month, i32* %month.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %month.addr, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 %year, i32* %year.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %year.addr, metadata !78, metadata !DIExpression()), !dbg !79
  %0 = load i32, i32* %year.addr, align 4, !dbg !80
  %call = call zeroext i1 @is_leap_year(i32 %0) #4, !dbg !81
  %idxprom = zext i1 %call to i64, !dbg !82
  %arrayidx = getelementptr [2 x [13 x i16]], [2 x [13 x i16]]* @rtc_ydays, i64 0, i64 %idxprom, !dbg !82
  %1 = load i32, i32* %month.addr, align 4, !dbg !83
  %idxprom1 = zext i32 %1 to i64, !dbg !82
  %arrayidx2 = getelementptr [13 x i16], [13 x i16]* %arrayidx, i64 0, i64 %idxprom1, !dbg !82
  %2 = load i16, i16* %arrayidx2, align 2, !dbg !82
  %conv = zext i16 %2 to i32, !dbg !82
  %3 = load i32, i32* %day.addr, align 4, !dbg !84
  %add = add i32 %conv, %3, !dbg !85
  %sub = sub i32 %add, 1, !dbg !86
  ret i32 %sub, !dbg !87
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @rtc_time64_to_tm(i64 %time, %struct.rtc_time* %tm) #0 !dbg !88 {
entry:
  %time.addr = alloca i64, align 8
  %tm.addr = alloca %struct.rtc_time*, align 8
  %month = alloca i32, align 4
  %year = alloca i32, align 4
  %secs = alloca i32, align 4
  %days = alloca i32, align 4
  %newdays = alloca i32, align 4
  store i64 %time, i64* %time.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %time.addr, metadata !106, metadata !DIExpression()), !dbg !107
  store %struct.rtc_time* %tm, %struct.rtc_time** %tm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtc_time** %tm.addr, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %month, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %year, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %secs, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %days, metadata !116, metadata !DIExpression()), !dbg !117
  %0 = load i64, i64* %time.addr, align 8, !dbg !118
  %call = call i64 @div_s64_rem(i64 %0, i32 86400, i32* %secs) #4, !dbg !119
  %conv = trunc i64 %call to i32, !dbg !119
  store i32 %conv, i32* %days, align 4, !dbg !120
  %1 = load i32, i32* %days, align 4, !dbg !121
  %add = add i32 %1, 4, !dbg !122
  %rem = srem i32 %add, 7, !dbg !123
  %2 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !124
  %tm_wday = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %2, i32 0, i32 6, !dbg !125
  store i32 %rem, i32* %tm_wday, align 4, !dbg !126
  %3 = load i32, i32* %days, align 4, !dbg !127
  %div = sdiv i32 %3, 365, !dbg !128
  %add1 = add i32 1970, %div, !dbg !129
  store i32 %add1, i32* %year, align 4, !dbg !130
  %4 = load i32, i32* %year, align 4, !dbg !131
  %sub = sub i32 %4, 1970, !dbg !132
  %mul = mul i32 %sub, 365, !dbg !133
  %5 = load i32, i32* %year, align 4, !dbg !134
  %sub2 = sub i32 %5, 1, !dbg !134
  %div3 = udiv i32 %sub2, 4, !dbg !134
  %6 = load i32, i32* %year, align 4, !dbg !134
  %sub4 = sub i32 %6, 1, !dbg !134
  %div5 = udiv i32 %sub4, 100, !dbg !134
  %sub6 = sub i32 %div3, %div5, !dbg !134
  %7 = load i32, i32* %year, align 4, !dbg !134
  %sub7 = sub i32 %7, 1, !dbg !134
  %div8 = udiv i32 %sub7, 400, !dbg !134
  %add9 = add i32 %sub6, %div8, !dbg !134
  %add10 = add i32 %mul, %add9, !dbg !135
  %sub11 = sub i32 %add10, 477, !dbg !136
  %8 = load i32, i32* %days, align 4, !dbg !137
  %sub12 = sub i32 %8, %sub11, !dbg !137
  store i32 %sub12, i32* %days, align 4, !dbg !137
  br label %while.cond, !dbg !138

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i32, i32* %days, align 4, !dbg !139
  %cmp = icmp slt i32 %9, 0, !dbg !140
  br i1 %cmp, label %while.body, label %while.end, !dbg !138

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %year, align 4, !dbg !141
  %sub14 = sub i32 %10, 1, !dbg !141
  store i32 %sub14, i32* %year, align 4, !dbg !141
  %11 = load i32, i32* %year, align 4, !dbg !143
  %call15 = call zeroext i1 @is_leap_year(i32 %11) #4, !dbg !144
  %conv16 = zext i1 %call15 to i32, !dbg !144
  %add17 = add i32 365, %conv16, !dbg !145
  %12 = load i32, i32* %days, align 4, !dbg !146
  %add18 = add i32 %12, %add17, !dbg !146
  store i32 %add18, i32* %days, align 4, !dbg !146
  br label %while.cond, !dbg !138, !llvm.loop !147

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* %year, align 4, !dbg !149
  %sub19 = sub i32 %13, 1900, !dbg !150
  %14 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !151
  %tm_year = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 5, !dbg !152
  store i32 %sub19, i32* %tm_year, align 4, !dbg !153
  %15 = load i32, i32* %days, align 4, !dbg !154
  %add20 = add i32 %15, 1, !dbg !155
  %16 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !156
  %tm_yday = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 7, !dbg !157
  store i32 %add20, i32* %tm_yday, align 4, !dbg !158
  store i32 0, i32* %month, align 4, !dbg !159
  br label %for.cond, !dbg !161

for.cond:                                         ; preds = %for.inc, %while.end
  %17 = load i32, i32* %month, align 4, !dbg !162
  %cmp21 = icmp ult i32 %17, 11, !dbg !164
  br i1 %cmp21, label %for.body, label %for.end, !dbg !165

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %newdays, metadata !166, metadata !DIExpression()), !dbg !168
  %18 = load i32, i32* %days, align 4, !dbg !169
  %19 = load i32, i32* %month, align 4, !dbg !170
  %20 = load i32, i32* %year, align 4, !dbg !171
  %call23 = call i32 @rtc_month_days(i32 %19, i32 %20) #4, !dbg !172
  %sub24 = sub i32 %18, %call23, !dbg !173
  store i32 %sub24, i32* %newdays, align 4, !dbg !174
  %21 = load i32, i32* %newdays, align 4, !dbg !175
  %cmp25 = icmp slt i32 %21, 0, !dbg !177
  br i1 %cmp25, label %if.then, label %if.end, !dbg !178

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !179

if.end:                                           ; preds = %for.body
  %22 = load i32, i32* %newdays, align 4, !dbg !180
  store i32 %22, i32* %days, align 4, !dbg !181
  br label %for.inc, !dbg !182

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %month, align 4, !dbg !183
  %inc = add i32 %23, 1, !dbg !183
  store i32 %inc, i32* %month, align 4, !dbg !183
  br label %for.cond, !dbg !184, !llvm.loop !185

for.end:                                          ; preds = %if.then, %for.cond
  %24 = load i32, i32* %month, align 4, !dbg !187
  %25 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !188
  %tm_mon = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 4, !dbg !189
  store i32 %24, i32* %tm_mon, align 4, !dbg !190
  %26 = load i32, i32* %days, align 4, !dbg !191
  %add27 = add i32 %26, 1, !dbg !192
  %27 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !193
  %tm_mday = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 3, !dbg !194
  store i32 %add27, i32* %tm_mday, align 4, !dbg !195
  %28 = load i32, i32* %secs, align 4, !dbg !196
  %div28 = udiv i32 %28, 3600, !dbg !197
  %29 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !198
  %tm_hour = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 2, !dbg !199
  store i32 %div28, i32* %tm_hour, align 4, !dbg !200
  %30 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !201
  %tm_hour29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 2, !dbg !202
  %31 = load i32, i32* %tm_hour29, align 4, !dbg !202
  %mul30 = mul i32 %31, 3600, !dbg !203
  %32 = load i32, i32* %secs, align 4, !dbg !204
  %sub31 = sub i32 %32, %mul30, !dbg !204
  store i32 %sub31, i32* %secs, align 4, !dbg !204
  %33 = load i32, i32* %secs, align 4, !dbg !205
  %div32 = udiv i32 %33, 60, !dbg !206
  %34 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !207
  %tm_min = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 1, !dbg !208
  store i32 %div32, i32* %tm_min, align 4, !dbg !209
  %35 = load i32, i32* %secs, align 4, !dbg !210
  %36 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !211
  %tm_min33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 1, !dbg !212
  %37 = load i32, i32* %tm_min33, align 4, !dbg !212
  %mul34 = mul i32 %37, 60, !dbg !213
  %sub35 = sub i32 %35, %mul34, !dbg !214
  %38 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !215
  %tm_sec = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 0, !dbg !216
  store i32 %sub35, i32* %tm_sec, align 4, !dbg !217
  %39 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !218
  %tm_isdst = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 8, !dbg !219
  store i32 0, i32* %tm_isdst, align 4, !dbg !220
  ret void, !dbg !221
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_s64_rem(i64 %dividend, i32 %divisor, i32* %remainder) #0 !dbg !222 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca i32*, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !229, metadata !DIExpression()), !dbg !230
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !231, metadata !DIExpression()), !dbg !232
  store i32* %remainder, i32** %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %remainder.addr, metadata !233, metadata !DIExpression()), !dbg !234
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !235
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !236
  %conv = sext i32 %1 to i64, !dbg !236
  %rem = srem i64 %0, %conv, !dbg !237
  %conv1 = trunc i64 %rem to i32, !dbg !235
  %2 = load i32*, i32** %remainder.addr, align 8, !dbg !238
  store i32 %conv1, i32* %2, align 4, !dbg !239
  %3 = load i64, i64* %dividend.addr, align 8, !dbg !240
  %4 = load i32, i32* %divisor.addr, align 4, !dbg !241
  %conv2 = sext i32 %4 to i64, !dbg !241
  %div = sdiv i64 %3, %conv2, !dbg !242
  ret i64 %div, !dbg !243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @rtc_valid_tm(%struct.rtc_time* %tm) #0 !dbg !244 {
entry:
  %retval = alloca i32, align 4
  %tm.addr = alloca %struct.rtc_time*, align 8
  store %struct.rtc_time* %tm, %struct.rtc_time** %tm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtc_time** %tm.addr, metadata !247, metadata !DIExpression()), !dbg !248
  %0 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !249
  %tm_year = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %0, i32 0, i32 5, !dbg !251
  %1 = load i32, i32* %tm_year, align 4, !dbg !251
  %cmp = icmp slt i32 %1, 70, !dbg !252
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !253

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !254
  %tm_year1 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %2, i32 0, i32 5, !dbg !255
  %3 = load i32, i32* %tm_year1, align 4, !dbg !255
  %cmp2 = icmp sgt i32 %3, 2147481747, !dbg !256
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !257

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !258
  %tm_mon = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %4, i32 0, i32 4, !dbg !259
  %5 = load i32, i32* %tm_mon, align 4, !dbg !259
  %cmp4 = icmp uge i32 %5, 12, !dbg !260
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !261

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %6 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !262
  %tm_mday = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %6, i32 0, i32 3, !dbg !263
  %7 = load i32, i32* %tm_mday, align 4, !dbg !263
  %cmp6 = icmp slt i32 %7, 1, !dbg !264
  br i1 %cmp6, label %if.then, label %lor.lhs.false7, !dbg !265

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %8 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !266
  %tm_mday8 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 3, !dbg !267
  %9 = load i32, i32* %tm_mday8, align 4, !dbg !267
  %10 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !268
  %tm_mon9 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 4, !dbg !269
  %11 = load i32, i32* %tm_mon9, align 4, !dbg !269
  %12 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !270
  %tm_year10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 5, !dbg !271
  %13 = load i32, i32* %tm_year10, align 4, !dbg !271
  %add = add i32 %13, 1900, !dbg !272
  %call = call i32 @rtc_month_days(i32 %11, i32 %add) #4, !dbg !273
  %cmp11 = icmp sgt i32 %9, %call, !dbg !274
  br i1 %cmp11, label %if.then, label %lor.lhs.false12, !dbg !275

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %14 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !276
  %tm_hour = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 2, !dbg !277
  %15 = load i32, i32* %tm_hour, align 4, !dbg !277
  %cmp13 = icmp uge i32 %15, 24, !dbg !278
  br i1 %cmp13, label %if.then, label %lor.lhs.false14, !dbg !279

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %16 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !280
  %tm_min = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 1, !dbg !281
  %17 = load i32, i32* %tm_min, align 4, !dbg !281
  %cmp15 = icmp uge i32 %17, 60, !dbg !282
  br i1 %cmp15, label %if.then, label %lor.lhs.false16, !dbg !283

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %18 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !284
  %tm_sec = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 0, !dbg !285
  %19 = load i32, i32* %tm_sec, align 4, !dbg !285
  %cmp17 = icmp uge i32 %19, 60, !dbg !286
  br i1 %cmp17, label %if.then, label %if.end, !dbg !287

if.then:                                          ; preds = %lor.lhs.false16, %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !288
  br label %return, !dbg !288

if.end:                                           ; preds = %lor.lhs.false16
  store i32 0, i32* %retval, align 4, !dbg !289
  br label %return, !dbg !289

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !290
  ret i32 %20, !dbg !290
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @rtc_tm_to_time64(%struct.rtc_time* %tm) #0 !dbg !291 {
entry:
  %tm.addr = alloca %struct.rtc_time*, align 8
  store %struct.rtc_time* %tm, %struct.rtc_time** %tm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtc_time** %tm.addr, metadata !294, metadata !DIExpression()), !dbg !295
  %0 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !296
  %tm_year = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %0, i32 0, i32 5, !dbg !297
  %1 = load i32, i32* %tm_year, align 4, !dbg !297
  %add = add i32 %1, 1900, !dbg !298
  %2 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !299
  %tm_mon = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %2, i32 0, i32 4, !dbg !300
  %3 = load i32, i32* %tm_mon, align 4, !dbg !300
  %add1 = add i32 %3, 1, !dbg !301
  %4 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !302
  %tm_mday = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %4, i32 0, i32 3, !dbg !303
  %5 = load i32, i32* %tm_mday, align 4, !dbg !303
  %6 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !304
  %tm_hour = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %6, i32 0, i32 2, !dbg !305
  %7 = load i32, i32* %tm_hour, align 4, !dbg !305
  %8 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !306
  %tm_min = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 1, !dbg !307
  %9 = load i32, i32* %tm_min, align 4, !dbg !307
  %10 = load %struct.rtc_time*, %struct.rtc_time** %tm.addr, align 8, !dbg !308
  %tm_sec = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 0, !dbg !309
  %11 = load i32, i32* %tm_sec, align 4, !dbg !309
  %call = call i64 @mktime64(i32 %add, i32 %add1, i32 %5, i32 %7, i32 %9, i32 %11) #4, !dbg !310
  ret i64 %call, !dbg !311
}

; Function Attrs: noredzone
declare dso_local i64 @mktime64(i32, i32, i32, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @rtc_tm_to_ktime(%struct.rtc_time* byval(%struct.rtc_time) align 8 %tm) #0 !dbg !312 {
entry:
  call void @llvm.dbg.declare(metadata %struct.rtc_time* %tm, metadata !317, metadata !DIExpression()), !dbg !318
  %call = call i64 @rtc_tm_to_time64(%struct.rtc_time* %tm) #4, !dbg !319
  %call1 = call i64 @ktime_set(i64 %call, i64 0) #4, !dbg !320
  ret i64 %call1, !dbg !321
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_set(i64 %secs, i64 %nsecs) #0 !dbg !322 {
entry:
  %retval = alloca i64, align 8
  %secs.addr = alloca i64, align 8
  %nsecs.addr = alloca i64, align 8
  store i64 %secs, i64* %secs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %secs.addr, metadata !328, metadata !DIExpression()), !dbg !329
  store i64 %nsecs, i64* %nsecs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nsecs.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load i64, i64* %secs.addr, align 8, !dbg !332
  %cmp = icmp sge i64 %0, 9223372036, !dbg !332
  %lnot = xor i1 %cmp, true, !dbg !332
  %lnot1 = xor i1 %lnot, true, !dbg !332
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !332
  %conv = sext i32 %lnot.ext to i64, !dbg !332
  %tobool = icmp ne i64 %conv, 0, !dbg !332
  br i1 %tobool, label %if.then, label %if.end, !dbg !334

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, i64* %retval, align 8, !dbg !335
  br label %return, !dbg !335

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %secs.addr, align 8, !dbg !336
  %mul = mul i64 %1, 1000000000, !dbg !337
  %2 = load i64, i64* %nsecs.addr, align 8, !dbg !338
  %add = add i64 %mul, %2, !dbg !339
  store i64 %add, i64* %retval, align 8, !dbg !340
  br label %return, !dbg !340

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !341
  ret i64 %3, !dbg !341
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @rtc_ktime_to_tm(%struct.rtc_time* noalias sret %agg.result, i64 %kt) #0 !dbg !342 {
entry:
  %kt.addr = alloca i64, align 8
  %ts = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata %struct.timespec64* %ts, metadata !347, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata %struct.rtc_time* %agg.result, metadata !354, metadata !DIExpression()), !dbg !355
  %0 = load i64, i64* %kt.addr, align 8, !dbg !356
  %call = call { i64, i64 } @ns_to_timespec64(i64 %0) #4, !dbg !356
  %1 = bitcast %struct.timespec64* %tmp to { i64, i64 }*, !dbg !356
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0, !dbg !356
  %3 = extractvalue { i64, i64 } %call, 0, !dbg !356
  store i64 %3, i64* %2, align 8, !dbg !356
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1, !dbg !356
  %5 = extractvalue { i64, i64 } %call, 1, !dbg !356
  store i64 %5, i64* %4, align 8, !dbg !356
  %6 = bitcast %struct.timespec64* %ts to i8*, !dbg !356
  %7 = bitcast %struct.timespec64* %tmp to i8*, !dbg !356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false), !dbg !356
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 1, !dbg !357
  %8 = load i64, i64* %tv_nsec, align 8, !dbg !357
  %tobool = icmp ne i64 %8, 0, !dbg !359
  br i1 %tobool, label %if.then, label %if.end, !dbg !360

if.then:                                          ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 0, !dbg !361
  %9 = load i64, i64* %tv_sec, align 8, !dbg !362
  %inc = add i64 %9, 1, !dbg !362
  store i64 %inc, i64* %tv_sec, align 8, !dbg !362
  br label %if.end, !dbg !363

if.end:                                           ; preds = %if.then, %entry
  %tv_sec1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 0, !dbg !364
  %10 = load i64, i64* %tv_sec1, align 8, !dbg !364
  call void @rtc_time64_to_tm(i64 %10, %struct.rtc_time* %agg.result) #4, !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noredzone
declare dso_local { i64, i64 } @ns_to_timespec64(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rtc_days_in_month", scope: !2, file: !3, line: 14, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/rtc/lib.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !7, !8, !13}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !9, line: 22, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !11, line: 30, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !15)
!15 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !{!0, !17}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "rtc_ydays", scope: !2, file: !3, line: 18, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 416, elements: !22)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!22 = !{!23, !24}
!23 = !DISubrange(count: 2)
!24 = !DISubrange(count: 13)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 96, elements: !28)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !{!29}
!29 = !DISubrange(count: 12)
!30 = !{i32 7, !"Dwarf Version", i32 4}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"Code Model", i32 2}
!34 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!35 = distinct !DISubprogram(name: "rtc_month_days", scope: !3, file: !3, line: 30, type: !36, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!36 = !DISubroutineType(types: !37)
!37 = !{!6, !7, !7}
!38 = !DILocalVariable(name: "month", arg: 1, scope: !35, file: !3, line: 30, type: !7)
!39 = !DILocation(line: 30, column: 33, scope: !35)
!40 = !DILocalVariable(name: "year", arg: 2, scope: !35, file: !3, line: 30, type: !7)
!41 = !DILocation(line: 30, column: 53, scope: !35)
!42 = !DILocation(line: 32, column: 27, scope: !35)
!43 = !DILocation(line: 32, column: 9, scope: !35)
!44 = !DILocation(line: 32, column: 50, scope: !35)
!45 = !DILocation(line: 32, column: 37, scope: !35)
!46 = !DILocation(line: 32, column: 56, scope: !35)
!47 = !DILocation(line: 32, column: 59, scope: !35)
!48 = !DILocation(line: 32, column: 65, scope: !35)
!49 = !DILocation(line: 0, scope: !35)
!50 = !DILocation(line: 32, column: 34, scope: !35)
!51 = !DILocation(line: 32, column: 2, scope: !35)
!52 = distinct !DISubprogram(name: "is_leap_year", scope: !53, file: !53, line: 203, type: !54, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!53 = !DIFile(filename: "./include/linux/rtc.h", directory: "/home/lizy2001/genbc/linux")
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !7}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !57, line: 30, baseType: !58)
!57 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!58 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!59 = !DILocalVariable(name: "year", arg: 1, scope: !52, file: !53, line: 203, type: !7)
!60 = !DILocation(line: 203, column: 46, scope: !52)
!61 = !DILocation(line: 205, column: 12, scope: !52)
!62 = !DILocation(line: 205, column: 17, scope: !52)
!63 = !DILocation(line: 205, column: 22, scope: !52)
!64 = !DILocation(line: 205, column: 26, scope: !52)
!65 = !DILocation(line: 205, column: 31, scope: !52)
!66 = !DILocation(line: 205, column: 39, scope: !52)
!67 = !DILocation(line: 205, column: 44, scope: !52)
!68 = !DILocation(line: 205, column: 49, scope: !52)
!69 = !DILocation(line: 205, column: 42, scope: !52)
!70 = !DILocation(line: 205, column: 2, scope: !52)
!71 = distinct !DISubprogram(name: "rtc_year_days", scope: !3, file: !3, line: 39, type: !72, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!72 = !DISubroutineType(types: !73)
!73 = !{!6, !7, !7, !7}
!74 = !DILocalVariable(name: "day", arg: 1, scope: !71, file: !3, line: 39, type: !7)
!75 = !DILocation(line: 39, column: 32, scope: !71)
!76 = !DILocalVariable(name: "month", arg: 2, scope: !71, file: !3, line: 39, type: !7)
!77 = !DILocation(line: 39, column: 50, scope: !71)
!78 = !DILocalVariable(name: "year", arg: 3, scope: !71, file: !3, line: 39, type: !7)
!79 = !DILocation(line: 39, column: 70, scope: !71)
!80 = !DILocation(line: 41, column: 32, scope: !71)
!81 = !DILocation(line: 41, column: 19, scope: !71)
!82 = !DILocation(line: 41, column: 9, scope: !71)
!83 = !DILocation(line: 41, column: 39, scope: !71)
!84 = !DILocation(line: 41, column: 48, scope: !71)
!85 = !DILocation(line: 41, column: 46, scope: !71)
!86 = !DILocation(line: 41, column: 52, scope: !71)
!87 = !DILocation(line: 41, column: 2, scope: !71)
!88 = distinct !DISubprogram(name: "rtc_time64_to_tm", scope: !3, file: !3, line: 49, type: !89, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !91, !93}
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !92, line: 8, baseType: !10)
!92 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_time", file: !95, line: 24, size: 288, elements: !96)
!95 = !DIFile(filename: "./include/uapi/linux/rtc.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !94, file: !95, line: 25, baseType: !6, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !94, file: !95, line: 26, baseType: !6, size: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !94, file: !95, line: 27, baseType: !6, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !94, file: !95, line: 28, baseType: !6, size: 32, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !94, file: !95, line: 29, baseType: !6, size: 32, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !94, file: !95, line: 30, baseType: !6, size: 32, offset: 160)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !94, file: !95, line: 31, baseType: !6, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !94, file: !95, line: 32, baseType: !6, size: 32, offset: 224)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !94, file: !95, line: 33, baseType: !6, size: 32, offset: 256)
!106 = !DILocalVariable(name: "time", arg: 1, scope: !88, file: !3, line: 49, type: !91)
!107 = !DILocation(line: 49, column: 32, scope: !88)
!108 = !DILocalVariable(name: "tm", arg: 2, scope: !88, file: !3, line: 49, type: !93)
!109 = !DILocation(line: 49, column: 55, scope: !88)
!110 = !DILocalVariable(name: "month", scope: !88, file: !3, line: 51, type: !7)
!111 = !DILocation(line: 51, column: 15, scope: !88)
!112 = !DILocalVariable(name: "year", scope: !88, file: !3, line: 51, type: !7)
!113 = !DILocation(line: 51, column: 22, scope: !88)
!114 = !DILocalVariable(name: "secs", scope: !88, file: !3, line: 51, type: !7)
!115 = !DILocation(line: 51, column: 28, scope: !88)
!116 = !DILocalVariable(name: "days", scope: !88, file: !3, line: 52, type: !6)
!117 = !DILocation(line: 52, column: 6, scope: !88)
!118 = !DILocation(line: 55, column: 21, scope: !88)
!119 = !DILocation(line: 55, column: 9, scope: !88)
!120 = !DILocation(line: 55, column: 7, scope: !88)
!121 = !DILocation(line: 58, column: 17, scope: !88)
!122 = !DILocation(line: 58, column: 22, scope: !88)
!123 = !DILocation(line: 58, column: 27, scope: !88)
!124 = !DILocation(line: 58, column: 2, scope: !88)
!125 = !DILocation(line: 58, column: 6, scope: !88)
!126 = !DILocation(line: 58, column: 14, scope: !88)
!127 = !DILocation(line: 60, column: 16, scope: !88)
!128 = !DILocation(line: 60, column: 21, scope: !88)
!129 = !DILocation(line: 60, column: 14, scope: !88)
!130 = !DILocation(line: 60, column: 7, scope: !88)
!131 = !DILocation(line: 61, column: 11, scope: !88)
!132 = !DILocation(line: 61, column: 16, scope: !88)
!133 = !DILocation(line: 61, column: 24, scope: !88)
!134 = !DILocation(line: 62, column: 5, scope: !88)
!135 = !DILocation(line: 62, column: 3, scope: !88)
!136 = !DILocation(line: 63, column: 3, scope: !88)
!137 = !DILocation(line: 61, column: 7, scope: !88)
!138 = !DILocation(line: 64, column: 2, scope: !88)
!139 = !DILocation(line: 64, column: 9, scope: !88)
!140 = !DILocation(line: 64, column: 14, scope: !88)
!141 = !DILocation(line: 65, column: 8, scope: !142)
!142 = distinct !DILexicalBlock(scope: !88, file: !3, line: 64, column: 19)
!143 = !DILocation(line: 66, column: 30, scope: !142)
!144 = !DILocation(line: 66, column: 17, scope: !142)
!145 = !DILocation(line: 66, column: 15, scope: !142)
!146 = !DILocation(line: 66, column: 8, scope: !142)
!147 = distinct !{!147, !138, !148}
!148 = !DILocation(line: 67, column: 2, scope: !88)
!149 = !DILocation(line: 68, column: 16, scope: !88)
!150 = !DILocation(line: 68, column: 21, scope: !88)
!151 = !DILocation(line: 68, column: 2, scope: !88)
!152 = !DILocation(line: 68, column: 6, scope: !88)
!153 = !DILocation(line: 68, column: 14, scope: !88)
!154 = !DILocation(line: 69, column: 16, scope: !88)
!155 = !DILocation(line: 69, column: 21, scope: !88)
!156 = !DILocation(line: 69, column: 2, scope: !88)
!157 = !DILocation(line: 69, column: 6, scope: !88)
!158 = !DILocation(line: 69, column: 14, scope: !88)
!159 = !DILocation(line: 71, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !88, file: !3, line: 71, column: 2)
!161 = !DILocation(line: 71, column: 7, scope: !160)
!162 = !DILocation(line: 71, column: 18, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !3, line: 71, column: 2)
!164 = !DILocation(line: 71, column: 24, scope: !163)
!165 = !DILocation(line: 71, column: 2, scope: !160)
!166 = !DILocalVariable(name: "newdays", scope: !167, file: !3, line: 72, type: !6)
!167 = distinct !DILexicalBlock(scope: !163, file: !3, line: 71, column: 39)
!168 = !DILocation(line: 72, column: 7, scope: !167)
!169 = !DILocation(line: 74, column: 13, scope: !167)
!170 = !DILocation(line: 74, column: 35, scope: !167)
!171 = !DILocation(line: 74, column: 42, scope: !167)
!172 = !DILocation(line: 74, column: 20, scope: !167)
!173 = !DILocation(line: 74, column: 18, scope: !167)
!174 = !DILocation(line: 74, column: 11, scope: !167)
!175 = !DILocation(line: 75, column: 7, scope: !176)
!176 = distinct !DILexicalBlock(scope: !167, file: !3, line: 75, column: 7)
!177 = !DILocation(line: 75, column: 15, scope: !176)
!178 = !DILocation(line: 75, column: 7, scope: !167)
!179 = !DILocation(line: 76, column: 4, scope: !176)
!180 = !DILocation(line: 77, column: 10, scope: !167)
!181 = !DILocation(line: 77, column: 8, scope: !167)
!182 = !DILocation(line: 78, column: 2, scope: !167)
!183 = !DILocation(line: 71, column: 35, scope: !163)
!184 = !DILocation(line: 71, column: 2, scope: !163)
!185 = distinct !{!185, !165, !186}
!186 = !DILocation(line: 78, column: 2, scope: !160)
!187 = !DILocation(line: 79, column: 15, scope: !88)
!188 = !DILocation(line: 79, column: 2, scope: !88)
!189 = !DILocation(line: 79, column: 6, scope: !88)
!190 = !DILocation(line: 79, column: 13, scope: !88)
!191 = !DILocation(line: 80, column: 16, scope: !88)
!192 = !DILocation(line: 80, column: 21, scope: !88)
!193 = !DILocation(line: 80, column: 2, scope: !88)
!194 = !DILocation(line: 80, column: 6, scope: !88)
!195 = !DILocation(line: 80, column: 14, scope: !88)
!196 = !DILocation(line: 82, column: 16, scope: !88)
!197 = !DILocation(line: 82, column: 21, scope: !88)
!198 = !DILocation(line: 82, column: 2, scope: !88)
!199 = !DILocation(line: 82, column: 6, scope: !88)
!200 = !DILocation(line: 82, column: 14, scope: !88)
!201 = !DILocation(line: 83, column: 10, scope: !88)
!202 = !DILocation(line: 83, column: 14, scope: !88)
!203 = !DILocation(line: 83, column: 22, scope: !88)
!204 = !DILocation(line: 83, column: 7, scope: !88)
!205 = !DILocation(line: 84, column: 15, scope: !88)
!206 = !DILocation(line: 84, column: 20, scope: !88)
!207 = !DILocation(line: 84, column: 2, scope: !88)
!208 = !DILocation(line: 84, column: 6, scope: !88)
!209 = !DILocation(line: 84, column: 13, scope: !88)
!210 = !DILocation(line: 85, column: 15, scope: !88)
!211 = !DILocation(line: 85, column: 22, scope: !88)
!212 = !DILocation(line: 85, column: 26, scope: !88)
!213 = !DILocation(line: 85, column: 33, scope: !88)
!214 = !DILocation(line: 85, column: 20, scope: !88)
!215 = !DILocation(line: 85, column: 2, scope: !88)
!216 = !DILocation(line: 85, column: 6, scope: !88)
!217 = !DILocation(line: 85, column: 13, scope: !88)
!218 = !DILocation(line: 87, column: 2, scope: !88)
!219 = !DILocation(line: 87, column: 6, scope: !88)
!220 = !DILocation(line: 87, column: 15, scope: !88)
!221 = !DILocation(line: 88, column: 1, scope: !88)
!222 = distinct !DISubprogram(name: "div_s64_rem", scope: !223, file: !223, line: 39, type: !224, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!223 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!224 = !DISubroutineType(types: !225)
!225 = !{!8, !8, !226, !228}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !9, line: 20, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !11, line: 26, baseType: !6)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!229 = !DILocalVariable(name: "dividend", arg: 1, scope: !222, file: !223, line: 39, type: !8)
!230 = !DILocation(line: 39, column: 35, scope: !222)
!231 = !DILocalVariable(name: "divisor", arg: 2, scope: !222, file: !223, line: 39, type: !226)
!232 = !DILocation(line: 39, column: 49, scope: !222)
!233 = !DILocalVariable(name: "remainder", arg: 3, scope: !222, file: !223, line: 39, type: !228)
!234 = !DILocation(line: 39, column: 63, scope: !222)
!235 = !DILocation(line: 41, column: 15, scope: !222)
!236 = !DILocation(line: 41, column: 26, scope: !222)
!237 = !DILocation(line: 41, column: 24, scope: !222)
!238 = !DILocation(line: 41, column: 3, scope: !222)
!239 = !DILocation(line: 41, column: 13, scope: !222)
!240 = !DILocation(line: 42, column: 9, scope: !222)
!241 = !DILocation(line: 42, column: 20, scope: !222)
!242 = !DILocation(line: 42, column: 18, scope: !222)
!243 = !DILocation(line: 42, column: 2, scope: !222)
!244 = distinct !DISubprogram(name: "rtc_valid_tm", scope: !3, file: !3, line: 94, type: !245, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!245 = !DISubroutineType(types: !246)
!246 = !{!6, !93}
!247 = !DILocalVariable(name: "tm", arg: 1, scope: !244, file: !3, line: 94, type: !93)
!248 = !DILocation(line: 94, column: 35, scope: !244)
!249 = !DILocation(line: 96, column: 6, scope: !250)
!250 = distinct !DILexicalBlock(scope: !244, file: !3, line: 96, column: 6)
!251 = !DILocation(line: 96, column: 10, scope: !250)
!252 = !DILocation(line: 96, column: 18, scope: !250)
!253 = !DILocation(line: 96, column: 23, scope: !250)
!254 = !DILocation(line: 97, column: 6, scope: !250)
!255 = !DILocation(line: 97, column: 10, scope: !250)
!256 = !DILocation(line: 97, column: 18, scope: !250)
!257 = !DILocation(line: 97, column: 37, scope: !250)
!258 = !DILocation(line: 98, column: 21, scope: !250)
!259 = !DILocation(line: 98, column: 25, scope: !250)
!260 = !DILocation(line: 98, column: 33, scope: !250)
!261 = !DILocation(line: 98, column: 39, scope: !250)
!262 = !DILocation(line: 99, column: 6, scope: !250)
!263 = !DILocation(line: 99, column: 10, scope: !250)
!264 = !DILocation(line: 99, column: 18, scope: !250)
!265 = !DILocation(line: 99, column: 22, scope: !250)
!266 = !DILocation(line: 100, column: 6, scope: !250)
!267 = !DILocation(line: 100, column: 10, scope: !250)
!268 = !DILocation(line: 100, column: 35, scope: !250)
!269 = !DILocation(line: 100, column: 39, scope: !250)
!270 = !DILocation(line: 101, column: 22, scope: !250)
!271 = !DILocation(line: 101, column: 26, scope: !250)
!272 = !DILocation(line: 101, column: 34, scope: !250)
!273 = !DILocation(line: 100, column: 20, scope: !250)
!274 = !DILocation(line: 100, column: 18, scope: !250)
!275 = !DILocation(line: 101, column: 43, scope: !250)
!276 = !DILocation(line: 102, column: 21, scope: !250)
!277 = !DILocation(line: 102, column: 25, scope: !250)
!278 = !DILocation(line: 102, column: 34, scope: !250)
!279 = !DILocation(line: 102, column: 40, scope: !250)
!280 = !DILocation(line: 103, column: 21, scope: !250)
!281 = !DILocation(line: 103, column: 25, scope: !250)
!282 = !DILocation(line: 103, column: 33, scope: !250)
!283 = !DILocation(line: 103, column: 39, scope: !250)
!284 = !DILocation(line: 104, column: 21, scope: !250)
!285 = !DILocation(line: 104, column: 25, scope: !250)
!286 = !DILocation(line: 104, column: 33, scope: !250)
!287 = !DILocation(line: 96, column: 6, scope: !244)
!288 = !DILocation(line: 105, column: 3, scope: !250)
!289 = !DILocation(line: 107, column: 2, scope: !244)
!290 = !DILocation(line: 108, column: 1, scope: !244)
!291 = distinct !DISubprogram(name: "rtc_tm_to_time64", scope: !3, file: !3, line: 115, type: !292, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!292 = !DISubroutineType(types: !293)
!293 = !{!91, !93}
!294 = !DILocalVariable(name: "tm", arg: 1, scope: !291, file: !3, line: 115, type: !93)
!295 = !DILocation(line: 115, column: 44, scope: !291)
!296 = !DILocation(line: 117, column: 33, scope: !291)
!297 = !DILocation(line: 117, column: 37, scope: !291)
!298 = !DILocation(line: 117, column: 45, scope: !291)
!299 = !DILocation(line: 117, column: 54, scope: !291)
!300 = !DILocation(line: 117, column: 58, scope: !291)
!301 = !DILocation(line: 117, column: 65, scope: !291)
!302 = !DILocation(line: 118, column: 4, scope: !291)
!303 = !DILocation(line: 118, column: 8, scope: !291)
!304 = !DILocation(line: 118, column: 17, scope: !291)
!305 = !DILocation(line: 118, column: 21, scope: !291)
!306 = !DILocation(line: 118, column: 30, scope: !291)
!307 = !DILocation(line: 118, column: 34, scope: !291)
!308 = !DILocation(line: 118, column: 42, scope: !291)
!309 = !DILocation(line: 118, column: 46, scope: !291)
!310 = !DILocation(line: 117, column: 9, scope: !291)
!311 = !DILocation(line: 117, column: 2, scope: !291)
!312 = distinct !DISubprogram(name: "rtc_tm_to_ktime", scope: !3, file: !3, line: 125, type: !313, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !94}
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !316, line: 29, baseType: !8)
!316 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!317 = !DILocalVariable(name: "tm", arg: 1, scope: !312, file: !3, line: 125, type: !94)
!318 = !DILocation(line: 125, column: 41, scope: !312)
!319 = !DILocation(line: 127, column: 19, scope: !312)
!320 = !DILocation(line: 127, column: 9, scope: !312)
!321 = !DILocation(line: 127, column: 2, scope: !312)
!322 = distinct !DISubprogram(name: "ktime_set", scope: !316, file: !316, line: 38, type: !323, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!323 = !DISubroutineType(types: !324)
!324 = !{!315, !325, !326}
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!328 = !DILocalVariable(name: "secs", arg: 1, scope: !322, file: !316, line: 38, type: !325)
!329 = !DILocation(line: 38, column: 43, scope: !322)
!330 = !DILocalVariable(name: "nsecs", arg: 2, scope: !322, file: !316, line: 38, type: !326)
!331 = !DILocation(line: 38, column: 69, scope: !322)
!332 = !DILocation(line: 40, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !322, file: !316, line: 40, column: 6)
!334 = !DILocation(line: 40, column: 6, scope: !322)
!335 = !DILocation(line: 41, column: 3, scope: !333)
!336 = !DILocation(line: 43, column: 9, scope: !322)
!337 = !DILocation(line: 43, column: 14, scope: !322)
!338 = !DILocation(line: 43, column: 36, scope: !322)
!339 = !DILocation(line: 43, column: 29, scope: !322)
!340 = !DILocation(line: 43, column: 2, scope: !322)
!341 = !DILocation(line: 44, column: 1, scope: !322)
!342 = distinct !DISubprogram(name: "rtc_ktime_to_tm", scope: !3, file: !3, line: 134, type: !343, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!343 = !DISubroutineType(types: !344)
!344 = !{!94, !315}
!345 = !DILocalVariable(name: "kt", arg: 1, scope: !342, file: !3, line: 134, type: !315)
!346 = !DILocation(line: 134, column: 41, scope: !342)
!347 = !DILocalVariable(name: "ts", scope: !342, file: !3, line: 136, type: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !92, line: 13, size: 128, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !348, file: !92, line: 14, baseType: !91, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !348, file: !92, line: 15, baseType: !352, size: 64, offset: 64)
!352 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!353 = !DILocation(line: 136, column: 20, scope: !342)
!354 = !DILocalVariable(name: "ret", scope: !342, file: !3, line: 137, type: !94)
!355 = !DILocation(line: 137, column: 18, scope: !342)
!356 = !DILocation(line: 139, column: 7, scope: !342)
!357 = !DILocation(line: 141, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !342, file: !3, line: 141, column: 6)
!359 = !DILocation(line: 141, column: 6, scope: !358)
!360 = !DILocation(line: 141, column: 6, scope: !342)
!361 = !DILocation(line: 142, column: 6, scope: !358)
!362 = !DILocation(line: 142, column: 12, scope: !358)
!363 = !DILocation(line: 142, column: 3, scope: !358)
!364 = !DILocation(line: 143, column: 22, scope: !342)
!365 = !DILocation(line: 143, column: 2, scope: !342)
!366 = !DILocation(line: 144, column: 2, scope: !342)
