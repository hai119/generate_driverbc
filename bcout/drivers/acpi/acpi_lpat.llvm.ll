; ModuleID = '../bcout/drivers/acpi/acpi_lpat.llvm.bc'
source_filename = "drivers/acpi/acpi_lpat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_buffer = type { i64, i8* }
%struct.kmem_cache = type opaque
%struct.acpi_lpat_conversion_table = type { %struct.acpi_lpat*, i32 }
%struct.acpi_lpat = type { i32, i32 }
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.anon.2 = type { i32, i32, %union.acpi_object* }
%struct.anon = type { i32, i64 }

@__const.acpi_lpat_get_conversion_table.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"LPAT\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_lpat_raw_to_temp(%struct.acpi_lpat_conversion_table* %lpat_table, i32 %raw) #0 !dbg !93 {
entry:
  %retval = alloca i32, align 4
  %lpat_table.addr = alloca %struct.acpi_lpat_conversion_table*, align 8
  %raw.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %delta_temp = alloca i32, align 4
  %delta_raw = alloca i32, align 4
  %temp = alloca i32, align 4
  %lpat = alloca %struct.acpi_lpat*, align 8
  store %struct.acpi_lpat_conversion_table* %lpat_table, %struct.acpi_lpat_conversion_table** %lpat_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_lpat_conversion_table** %lpat_table.addr, metadata !102, metadata !DIExpression()), !dbg !103
  store i32 %raw, i32* %raw.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %raw.addr, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %i, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %delta_temp, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %delta_raw, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata %struct.acpi_lpat** %lpat, metadata !114, metadata !DIExpression()), !dbg !115
  %0 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table.addr, align 8, !dbg !116
  %lpat1 = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %0, i32 0, i32 0, !dbg !117
  %1 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat1, align 8, !dbg !117
  store %struct.acpi_lpat* %1, %struct.acpi_lpat** %lpat, align 8, !dbg !115
  store i32 0, i32* %i, align 4, !dbg !118
  br label %for.cond, !dbg !120

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !121
  %3 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table.addr, align 8, !dbg !123
  %lpat_count = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %3, i32 0, i32 1, !dbg !124
  %4 = load i32, i32* %lpat_count, align 8, !dbg !124
  %sub = sub i32 %4, 1, !dbg !125
  %cmp = icmp slt i32 %2, %sub, !dbg !126
  br i1 %cmp, label %for.body, label %for.end, !dbg !127

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %raw.addr, align 4, !dbg !128
  %6 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !131
  %7 = load i32, i32* %i, align 4, !dbg !132
  %idxprom = sext i32 %7 to i64, !dbg !131
  %arrayidx = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %6, i64 %idxprom, !dbg !131
  %raw2 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx, i32 0, i32 1, !dbg !133
  %8 = load i32, i32* %raw2, align 4, !dbg !133
  %cmp3 = icmp sge i32 %5, %8, !dbg !134
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false, !dbg !135

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %raw.addr, align 4, !dbg !136
  %10 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !137
  %11 = load i32, i32* %i, align 4, !dbg !138
  %add = add i32 %11, 1, !dbg !139
  %idxprom4 = sext i32 %add to i64, !dbg !137
  %arrayidx5 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %10, i64 %idxprom4, !dbg !137
  %raw6 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx5, i32 0, i32 1, !dbg !140
  %12 = load i32, i32* %raw6, align 4, !dbg !140
  %cmp7 = icmp sle i32 %9, %12, !dbg !141
  br i1 %cmp7, label %if.then, label %lor.lhs.false, !dbg !142

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %13 = load i32, i32* %raw.addr, align 4, !dbg !143
  %14 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !144
  %15 = load i32, i32* %i, align 4, !dbg !145
  %idxprom8 = sext i32 %15 to i64, !dbg !144
  %arrayidx9 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %14, i64 %idxprom8, !dbg !144
  %raw10 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx9, i32 0, i32 1, !dbg !146
  %16 = load i32, i32* %raw10, align 4, !dbg !146
  %cmp11 = icmp sle i32 %13, %16, !dbg !147
  br i1 %cmp11, label %land.lhs.true12, label %if.end, !dbg !148

land.lhs.true12:                                  ; preds = %lor.lhs.false
  %17 = load i32, i32* %raw.addr, align 4, !dbg !149
  %18 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !150
  %19 = load i32, i32* %i, align 4, !dbg !151
  %add13 = add i32 %19, 1, !dbg !152
  %idxprom14 = sext i32 %add13 to i64, !dbg !150
  %arrayidx15 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %18, i64 %idxprom14, !dbg !150
  %raw16 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx15, i32 0, i32 1, !dbg !153
  %20 = load i32, i32* %raw16, align 4, !dbg !153
  %cmp17 = icmp sge i32 %17, %20, !dbg !154
  br i1 %cmp17, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %land.lhs.true12, %land.lhs.true
  br label %for.end, !dbg !156

if.end:                                           ; preds = %land.lhs.true12, %lor.lhs.false
  br label %for.inc, !dbg !157

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4, !dbg !158
  %inc = add i32 %21, 1, !dbg !158
  store i32 %inc, i32* %i, align 4, !dbg !158
  br label %for.cond, !dbg !159, !llvm.loop !160

for.end:                                          ; preds = %if.then, %for.cond
  %22 = load i32, i32* %i, align 4, !dbg !162
  %23 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table.addr, align 8, !dbg !164
  %lpat_count18 = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %23, i32 0, i32 1, !dbg !165
  %24 = load i32, i32* %lpat_count18, align 8, !dbg !165
  %sub19 = sub i32 %24, 1, !dbg !166
  %cmp20 = icmp eq i32 %22, %sub19, !dbg !167
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !168

if.then21:                                        ; preds = %for.end
  store i32 -2, i32* %retval, align 4, !dbg !169
  br label %return, !dbg !169

if.end22:                                         ; preds = %for.end
  %25 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !170
  %26 = load i32, i32* %i, align 4, !dbg !171
  %add23 = add i32 %26, 1, !dbg !172
  %idxprom24 = sext i32 %add23 to i64, !dbg !170
  %arrayidx25 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %25, i64 %idxprom24, !dbg !170
  %temp26 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx25, i32 0, i32 0, !dbg !173
  %27 = load i32, i32* %temp26, align 4, !dbg !173
  %28 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !174
  %29 = load i32, i32* %i, align 4, !dbg !175
  %idxprom27 = sext i32 %29 to i64, !dbg !174
  %arrayidx28 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %28, i64 %idxprom27, !dbg !174
  %temp29 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx28, i32 0, i32 0, !dbg !176
  %30 = load i32, i32* %temp29, align 4, !dbg !176
  %sub30 = sub i32 %27, %30, !dbg !177
  store i32 %sub30, i32* %delta_temp, align 4, !dbg !178
  %31 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !179
  %32 = load i32, i32* %i, align 4, !dbg !180
  %add31 = add i32 %32, 1, !dbg !181
  %idxprom32 = sext i32 %add31 to i64, !dbg !179
  %arrayidx33 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %31, i64 %idxprom32, !dbg !179
  %raw34 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx33, i32 0, i32 1, !dbg !182
  %33 = load i32, i32* %raw34, align 4, !dbg !182
  %34 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !183
  %35 = load i32, i32* %i, align 4, !dbg !184
  %idxprom35 = sext i32 %35 to i64, !dbg !183
  %arrayidx36 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %34, i64 %idxprom35, !dbg !183
  %raw37 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx36, i32 0, i32 1, !dbg !185
  %36 = load i32, i32* %raw37, align 4, !dbg !185
  %sub38 = sub i32 %33, %36, !dbg !186
  store i32 %sub38, i32* %delta_raw, align 4, !dbg !187
  %37 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !188
  %38 = load i32, i32* %i, align 4, !dbg !189
  %idxprom39 = sext i32 %38 to i64, !dbg !188
  %arrayidx40 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %37, i64 %idxprom39, !dbg !188
  %temp41 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx40, i32 0, i32 0, !dbg !190
  %39 = load i32, i32* %temp41, align 4, !dbg !190
  %40 = load i32, i32* %raw.addr, align 4, !dbg !191
  %41 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !192
  %42 = load i32, i32* %i, align 4, !dbg !193
  %idxprom42 = sext i32 %42 to i64, !dbg !192
  %arrayidx43 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %41, i64 %idxprom42, !dbg !192
  %raw44 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx43, i32 0, i32 1, !dbg !194
  %43 = load i32, i32* %raw44, align 4, !dbg !194
  %sub45 = sub i32 %40, %43, !dbg !195
  %44 = load i32, i32* %delta_temp, align 4, !dbg !196
  %mul = mul i32 %sub45, %44, !dbg !197
  %45 = load i32, i32* %delta_raw, align 4, !dbg !198
  %div = sdiv i32 %mul, %45, !dbg !199
  %add46 = add i32 %39, %div, !dbg !200
  store i32 %add46, i32* %temp, align 4, !dbg !201
  %46 = load i32, i32* %temp, align 4, !dbg !202
  store i32 %46, i32* %retval, align 4, !dbg !203
  br label %return, !dbg !203

return:                                           ; preds = %if.end22, %if.then21
  %47 = load i32, i32* %retval, align 4, !dbg !204
  ret i32 %47, !dbg !204
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_lpat_temp_to_raw(%struct.acpi_lpat_conversion_table* %lpat_table, i32 %temp) #0 !dbg !205 {
entry:
  %retval = alloca i32, align 4
  %lpat_table.addr = alloca %struct.acpi_lpat_conversion_table*, align 8
  %temp.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %delta_temp = alloca i32, align 4
  %delta_raw = alloca i32, align 4
  %raw = alloca i32, align 4
  %lpat = alloca %struct.acpi_lpat*, align 8
  store %struct.acpi_lpat_conversion_table* %lpat_table, %struct.acpi_lpat_conversion_table** %lpat_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_lpat_conversion_table** %lpat_table.addr, metadata !206, metadata !DIExpression()), !dbg !207
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata i32* %i, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata i32* %delta_temp, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %delta_raw, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %raw, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata %struct.acpi_lpat** %lpat, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table.addr, align 8, !dbg !220
  %lpat1 = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %0, i32 0, i32 0, !dbg !221
  %1 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat1, align 8, !dbg !221
  store %struct.acpi_lpat* %1, %struct.acpi_lpat** %lpat, align 8, !dbg !219
  store i32 0, i32* %i, align 4, !dbg !222
  br label %for.cond, !dbg !224

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !225
  %3 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table.addr, align 8, !dbg !227
  %lpat_count = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %3, i32 0, i32 1, !dbg !228
  %4 = load i32, i32* %lpat_count, align 8, !dbg !228
  %sub = sub i32 %4, 1, !dbg !229
  %cmp = icmp slt i32 %2, %sub, !dbg !230
  br i1 %cmp, label %for.body, label %for.end, !dbg !231

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %temp.addr, align 4, !dbg !232
  %6 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !235
  %7 = load i32, i32* %i, align 4, !dbg !236
  %idxprom = sext i32 %7 to i64, !dbg !235
  %arrayidx = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %6, i64 %idxprom, !dbg !235
  %temp2 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx, i32 0, i32 0, !dbg !237
  %8 = load i32, i32* %temp2, align 4, !dbg !237
  %cmp3 = icmp sge i32 %5, %8, !dbg !238
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !239

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %temp.addr, align 4, !dbg !240
  %10 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !241
  %11 = load i32, i32* %i, align 4, !dbg !242
  %add = add i32 %11, 1, !dbg !243
  %idxprom4 = sext i32 %add to i64, !dbg !241
  %arrayidx5 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %10, i64 %idxprom4, !dbg !241
  %temp6 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx5, i32 0, i32 0, !dbg !244
  %12 = load i32, i32* %temp6, align 4, !dbg !244
  %cmp7 = icmp sle i32 %9, %12, !dbg !245
  br i1 %cmp7, label %if.then, label %if.end, !dbg !246

if.then:                                          ; preds = %land.lhs.true
  br label %for.end, !dbg !247

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !248

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4, !dbg !249
  %inc = add i32 %13, 1, !dbg !249
  store i32 %inc, i32* %i, align 4, !dbg !249
  br label %for.cond, !dbg !250, !llvm.loop !251

for.end:                                          ; preds = %if.then, %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !253
  %15 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table.addr, align 8, !dbg !255
  %lpat_count8 = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %15, i32 0, i32 1, !dbg !256
  %16 = load i32, i32* %lpat_count8, align 8, !dbg !256
  %sub9 = sub i32 %16, 1, !dbg !257
  %cmp10 = icmp eq i32 %14, %sub9, !dbg !258
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !259

if.then11:                                        ; preds = %for.end
  store i32 -2, i32* %retval, align 4, !dbg !260
  br label %return, !dbg !260

if.end12:                                         ; preds = %for.end
  %17 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !261
  %18 = load i32, i32* %i, align 4, !dbg !262
  %add13 = add i32 %18, 1, !dbg !263
  %idxprom14 = sext i32 %add13 to i64, !dbg !261
  %arrayidx15 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %17, i64 %idxprom14, !dbg !261
  %temp16 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx15, i32 0, i32 0, !dbg !264
  %19 = load i32, i32* %temp16, align 4, !dbg !264
  %20 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !265
  %21 = load i32, i32* %i, align 4, !dbg !266
  %idxprom17 = sext i32 %21 to i64, !dbg !265
  %arrayidx18 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %20, i64 %idxprom17, !dbg !265
  %temp19 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx18, i32 0, i32 0, !dbg !267
  %22 = load i32, i32* %temp19, align 4, !dbg !267
  %sub20 = sub i32 %19, %22, !dbg !268
  store i32 %sub20, i32* %delta_temp, align 4, !dbg !269
  %23 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !270
  %24 = load i32, i32* %i, align 4, !dbg !271
  %add21 = add i32 %24, 1, !dbg !272
  %idxprom22 = sext i32 %add21 to i64, !dbg !270
  %arrayidx23 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %23, i64 %idxprom22, !dbg !270
  %raw24 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx23, i32 0, i32 1, !dbg !273
  %25 = load i32, i32* %raw24, align 4, !dbg !273
  %26 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !274
  %27 = load i32, i32* %i, align 4, !dbg !275
  %idxprom25 = sext i32 %27 to i64, !dbg !274
  %arrayidx26 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %26, i64 %idxprom25, !dbg !274
  %raw27 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx26, i32 0, i32 1, !dbg !276
  %28 = load i32, i32* %raw27, align 4, !dbg !276
  %sub28 = sub i32 %25, %28, !dbg !277
  store i32 %sub28, i32* %delta_raw, align 4, !dbg !278
  %29 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !279
  %30 = load i32, i32* %i, align 4, !dbg !280
  %idxprom29 = sext i32 %30 to i64, !dbg !279
  %arrayidx30 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %29, i64 %idxprom29, !dbg !279
  %raw31 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx30, i32 0, i32 1, !dbg !281
  %31 = load i32, i32* %raw31, align 4, !dbg !281
  %32 = load i32, i32* %temp.addr, align 4, !dbg !282
  %33 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !283
  %34 = load i32, i32* %i, align 4, !dbg !284
  %idxprom32 = sext i32 %34 to i64, !dbg !283
  %arrayidx33 = getelementptr %struct.acpi_lpat, %struct.acpi_lpat* %33, i64 %idxprom32, !dbg !283
  %temp34 = getelementptr inbounds %struct.acpi_lpat, %struct.acpi_lpat* %arrayidx33, i32 0, i32 0, !dbg !285
  %35 = load i32, i32* %temp34, align 4, !dbg !285
  %sub35 = sub i32 %32, %35, !dbg !286
  %36 = load i32, i32* %delta_raw, align 4, !dbg !287
  %mul = mul i32 %sub35, %36, !dbg !288
  %37 = load i32, i32* %delta_temp, align 4, !dbg !289
  %div = sdiv i32 %mul, %37, !dbg !290
  %add36 = add i32 %31, %div, !dbg !291
  store i32 %add36, i32* %raw, align 4, !dbg !292
  %38 = load i32, i32* %raw, align 4, !dbg !293
  store i32 %38, i32* %retval, align 4, !dbg !294
  br label %return, !dbg !294

return:                                           ; preds = %if.end12, %if.then11
  %39 = load i32, i32* %retval, align 4, !dbg !295
  ret i32 %39, !dbg !295
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_lpat_conversion_table* @acpi_lpat_get_conversion_table(i8* %handle) #0 !dbg !296 {
entry:
  %retval = alloca %struct.acpi_lpat_conversion_table*, align 8
  %handle.addr = alloca i8*, align 8
  %lpat_table = alloca %struct.acpi_lpat_conversion_table*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %obj_p = alloca %union.acpi_object*, align 8
  %obj_e = alloca %union.acpi_object*, align 8
  %lpat = alloca i32*, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata %struct.acpi_lpat_conversion_table** %lpat_table, metadata !301, metadata !DIExpression()), !dbg !302
  store %struct.acpi_lpat_conversion_table* null, %struct.acpi_lpat_conversion_table** %lpat_table, align 8, !dbg !302
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !303, metadata !DIExpression()), !dbg !309
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_lpat_get_conversion_table.buffer to i8*), i64 16, i1 false), !dbg !309
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj_p, metadata !310, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj_e, metadata !312, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.declare(metadata i32** %lpat, metadata !314, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata i32* %i, metadata !317, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.declare(metadata i32* %status, metadata !319, metadata !DIExpression()), !dbg !321
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !322
  %call = call i32 @acpi_evaluate_object(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #7, !dbg !323
  store i32 %call, i32* %status, align 4, !dbg !324
  %2 = load i32, i32* %status, align 4, !dbg !325
  %tobool = icmp ne i32 %2, 0, !dbg !325
  br i1 %tobool, label %if.then, label %if.end, !dbg !327

if.then:                                          ; preds = %entry
  store %struct.acpi_lpat_conversion_table* null, %struct.acpi_lpat_conversion_table** %retval, align 8, !dbg !328
  br label %return, !dbg !328

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !329
  %3 = load i8*, i8** %pointer, align 8, !dbg !329
  %4 = bitcast i8* %3 to %union.acpi_object*, !dbg !330
  store %union.acpi_object* %4, %union.acpi_object** %obj_p, align 8, !dbg !331
  %5 = load %union.acpi_object*, %union.acpi_object** %obj_p, align 8, !dbg !332
  %tobool1 = icmp ne %union.acpi_object* %5, null, !dbg !332
  br i1 %tobool1, label %lor.lhs.false, label %if.then8, !dbg !334

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %union.acpi_object*, %union.acpi_object** %obj_p, align 8, !dbg !335
  %type = bitcast %union.acpi_object* %6 to i32*, !dbg !336
  %7 = load i32, i32* %type, align 8, !dbg !336
  %cmp = icmp ne i32 %7, 4, !dbg !337
  br i1 %cmp, label %if.then8, label %lor.lhs.false2, !dbg !338

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %8 = load %union.acpi_object*, %union.acpi_object** %obj_p, align 8, !dbg !339
  %package = bitcast %union.acpi_object* %8 to %struct.anon.2*, !dbg !340
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 1, !dbg !341
  %9 = load i32, i32* %count, align 4, !dbg !341
  %rem = urem i32 %9, 2, !dbg !342
  %tobool3 = icmp ne i32 %rem, 0, !dbg !342
  br i1 %tobool3, label %if.then8, label %lor.lhs.false4, !dbg !343

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %10 = load %union.acpi_object*, %union.acpi_object** %obj_p, align 8, !dbg !344
  %package5 = bitcast %union.acpi_object* %10 to %struct.anon.2*, !dbg !345
  %count6 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package5, i32 0, i32 1, !dbg !346
  %11 = load i32, i32* %count6, align 4, !dbg !346
  %cmp7 = icmp ult i32 %11, 4, !dbg !347
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !348

if.then8:                                         ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %if.end
  br label %out, !dbg !349

if.end9:                                          ; preds = %lor.lhs.false4
  %12 = load %union.acpi_object*, %union.acpi_object** %obj_p, align 8, !dbg !350
  %package10 = bitcast %union.acpi_object* %12 to %struct.anon.2*, !dbg !351
  %count11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package10, i32 0, i32 1, !dbg !352
  %13 = load i32, i32* %count11, align 4, !dbg !352
  %conv = zext i32 %13 to i64, !dbg !350
  %call12 = call i8* @kcalloc(i64 %conv, i64 4, i32 3264) #7, !dbg !353
  %14 = bitcast i8* %call12 to i32*, !dbg !353
  store i32* %14, i32** %lpat, align 8, !dbg !354
  %15 = load i32*, i32** %lpat, align 8, !dbg !355
  %tobool13 = icmp ne i32* %15, null, !dbg !355
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !357

if.then14:                                        ; preds = %if.end9
  br label %out, !dbg !358

if.end15:                                         ; preds = %if.end9
  store i32 0, i32* %i, align 4, !dbg !359
  br label %for.cond, !dbg !361

for.cond:                                         ; preds = %for.inc, %if.end15
  %16 = load i32, i32* %i, align 4, !dbg !362
  %17 = load %union.acpi_object*, %union.acpi_object** %obj_p, align 8, !dbg !364
  %package16 = bitcast %union.acpi_object* %17 to %struct.anon.2*, !dbg !365
  %count17 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package16, i32 0, i32 1, !dbg !366
  %18 = load i32, i32* %count17, align 4, !dbg !366
  %cmp18 = icmp ult i32 %16, %18, !dbg !367
  br i1 %cmp18, label %for.body, label %for.end, !dbg !368

for.body:                                         ; preds = %for.cond
  %19 = load %union.acpi_object*, %union.acpi_object** %obj_p, align 8, !dbg !369
  %package20 = bitcast %union.acpi_object* %19 to %struct.anon.2*, !dbg !371
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package20, i32 0, i32 2, !dbg !372
  %20 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !372
  %21 = load i32, i32* %i, align 4, !dbg !373
  %idxprom = sext i32 %21 to i64, !dbg !369
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %20, i64 %idxprom, !dbg !369
  store %union.acpi_object* %arrayidx, %union.acpi_object** %obj_e, align 8, !dbg !374
  %22 = load %union.acpi_object*, %union.acpi_object** %obj_e, align 8, !dbg !375
  %type21 = bitcast %union.acpi_object* %22 to i32*, !dbg !377
  %23 = load i32, i32* %type21, align 8, !dbg !377
  %cmp22 = icmp ne i32 %23, 1, !dbg !378
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !379

if.then24:                                        ; preds = %for.body
  %24 = load i32*, i32** %lpat, align 8, !dbg !380
  %25 = bitcast i32* %24 to i8*, !dbg !380
  call void @kfree(i8* %25) #7, !dbg !382
  br label %out, !dbg !383

if.end25:                                         ; preds = %for.body
  %26 = load %union.acpi_object*, %union.acpi_object** %obj_e, align 8, !dbg !384
  %integer = bitcast %union.acpi_object* %26 to %struct.anon*, !dbg !385
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !386
  %27 = load i64, i64* %value, align 8, !dbg !386
  %conv26 = trunc i64 %27 to i32, !dbg !387
  %28 = load i32*, i32** %lpat, align 8, !dbg !388
  %29 = load i32, i32* %i, align 4, !dbg !389
  %idxprom27 = sext i32 %29 to i64, !dbg !388
  %arrayidx28 = getelementptr i32, i32* %28, i64 %idxprom27, !dbg !388
  store i32 %conv26, i32* %arrayidx28, align 4, !dbg !390
  br label %for.inc, !dbg !391

for.inc:                                          ; preds = %if.end25
  %30 = load i32, i32* %i, align 4, !dbg !392
  %inc = add i32 %30, 1, !dbg !392
  store i32 %inc, i32* %i, align 4, !dbg !392
  br label %for.cond, !dbg !393, !llvm.loop !394

for.end:                                          ; preds = %for.cond
  %call29 = call i8* @kzalloc(i64 16, i32 3264) #7, !dbg !396
  %31 = bitcast i8* %call29 to %struct.acpi_lpat_conversion_table*, !dbg !396
  store %struct.acpi_lpat_conversion_table* %31, %struct.acpi_lpat_conversion_table** %lpat_table, align 8, !dbg !397
  %32 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table, align 8, !dbg !398
  %tobool30 = icmp ne %struct.acpi_lpat_conversion_table* %32, null, !dbg !398
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !400

if.then31:                                        ; preds = %for.end
  %33 = load i32*, i32** %lpat, align 8, !dbg !401
  %34 = bitcast i32* %33 to i8*, !dbg !401
  call void @kfree(i8* %34) #7, !dbg !403
  br label %out, !dbg !404

if.end32:                                         ; preds = %for.end
  %35 = load i32*, i32** %lpat, align 8, !dbg !405
  %36 = bitcast i32* %35 to %struct.acpi_lpat*, !dbg !406
  %37 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table, align 8, !dbg !407
  %lpat33 = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %37, i32 0, i32 0, !dbg !408
  store %struct.acpi_lpat* %36, %struct.acpi_lpat** %lpat33, align 8, !dbg !409
  %38 = load %union.acpi_object*, %union.acpi_object** %obj_p, align 8, !dbg !410
  %package34 = bitcast %union.acpi_object* %38 to %struct.anon.2*, !dbg !411
  %count35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package34, i32 0, i32 1, !dbg !412
  %39 = load i32, i32* %count35, align 4, !dbg !412
  %div = udiv i32 %39, 2, !dbg !413
  %40 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table, align 8, !dbg !414
  %lpat_count = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %40, i32 0, i32 1, !dbg !415
  store i32 %div, i32* %lpat_count, align 8, !dbg !416
  br label %out, !dbg !414

out:                                              ; preds = %if.end32, %if.then31, %if.then24, %if.then14, %if.then8
  call void @llvm.dbg.label(metadata !417), !dbg !418
  %pointer36 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !419
  %41 = load i8*, i8** %pointer36, align 8, !dbg !419
  call void @kfree(i8* %41) #7, !dbg !420
  %42 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table, align 8, !dbg !421
  store %struct.acpi_lpat_conversion_table* %42, %struct.acpi_lpat_conversion_table** %retval, align 8, !dbg !422
  br label %return, !dbg !422

return:                                           ; preds = %out, %if.then
  %43 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %retval, align 8, !dbg !423
  ret %struct.acpi_lpat_conversion_table* %43, !dbg !423
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !424 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !432, metadata !DIExpression()), !dbg !433
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !434, metadata !DIExpression()), !dbg !435
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !436, metadata !DIExpression()), !dbg !437
  %0 = load i64, i64* %n.addr, align 8, !dbg !438
  %1 = load i64, i64* %size.addr, align 8, !dbg !439
  %2 = load i32, i32* %flags.addr, align 4, !dbg !440
  %or = or i32 %2, 256, !dbg !441
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #7, !dbg !442
  ret i8* %call, !dbg !443
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !444 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !447, metadata !DIExpression()), !dbg !454
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !460, metadata !DIExpression()), !dbg !461
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !462, metadata !DIExpression()), !dbg !463
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !464, metadata !DIExpression()), !dbg !465
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !466, metadata !DIExpression()), !dbg !470
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !472, metadata !DIExpression()), !dbg !476
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !478, metadata !DIExpression()), !dbg !482
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !487, metadata !DIExpression()), !dbg !488
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !489, metadata !DIExpression()), !dbg !490
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !491, metadata !DIExpression()), !dbg !492
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !493, metadata !DIExpression()), !dbg !494
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !495, metadata !DIExpression()), !dbg !496
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !497, metadata !DIExpression()), !dbg !498
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !499, metadata !DIExpression()), !dbg !500
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !501, metadata !DIExpression()), !dbg !502
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !503, metadata !DIExpression()), !dbg !504
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !505, metadata !DIExpression()), !dbg !506
  %0 = load i64, i64* %size.addr, align 8, !dbg !507
  %1 = load i32, i32* %flags.addr, align 4, !dbg !508
  %or = or i32 %1, 256, !dbg !509
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !510
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !511
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !512

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !513
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !514
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !515

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !516
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !517
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !518
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !519
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !496
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !520
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !521
  %10 = load i32, i32* %order.i.i, align 4, !dbg !522
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !523
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !524
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !525
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !526
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !526
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !526
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !526
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !526
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !527
  br label %kmalloc.exit, !dbg !527

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !528
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !529
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !529
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !531

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !532
  br label %kmalloc_index.exit.i, !dbg !532

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !533
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !535
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !536

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !537
  br label %kmalloc_index.exit.i, !dbg !537

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !538
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !540
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !541

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !542
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !543
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !544

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !545
  br label %kmalloc_index.exit.i, !dbg !545

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !546
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !548
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !549

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !550
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !551
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !552

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !553
  br label %kmalloc_index.exit.i, !dbg !553

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !554
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !556
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !557

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !558
  br label %kmalloc_index.exit.i, !dbg !558

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !559
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !561
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !562

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !563
  br label %kmalloc_index.exit.i, !dbg !563

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !564
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !566
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !567

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !568
  br label %kmalloc_index.exit.i, !dbg !568

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !569
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !571
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !572

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !573
  br label %kmalloc_index.exit.i, !dbg !573

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !574
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !576
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !577

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !578
  br label %kmalloc_index.exit.i, !dbg !578

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !579
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !581
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !582

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !583
  br label %kmalloc_index.exit.i, !dbg !583

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !584
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !586
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !587

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !588
  br label %kmalloc_index.exit.i, !dbg !588

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !589
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !591
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !592

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !593
  br label %kmalloc_index.exit.i, !dbg !593

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !594
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !596
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !597

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !598
  br label %kmalloc_index.exit.i, !dbg !598

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !599
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !601
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !602

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !603
  br label %kmalloc_index.exit.i, !dbg !603

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !604
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !606
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !607

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !608
  br label %kmalloc_index.exit.i, !dbg !608

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !609
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !611
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !612

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !613
  br label %kmalloc_index.exit.i, !dbg !613

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !614
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !616
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !617

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !618
  br label %kmalloc_index.exit.i, !dbg !618

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !619
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !621
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !622

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !623
  br label %kmalloc_index.exit.i, !dbg !623

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !624
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !626
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !627

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !628
  br label %kmalloc_index.exit.i, !dbg !628

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !629
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !631
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !632

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !633
  br label %kmalloc_index.exit.i, !dbg !633

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !634
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !636
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !637

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !638
  br label %kmalloc_index.exit.i, !dbg !638

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !639
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !641
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !642

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !643
  br label %kmalloc_index.exit.i, !dbg !643

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !644
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !646
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !647

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !648
  br label %kmalloc_index.exit.i, !dbg !648

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !649
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !651
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !652

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !653
  br label %kmalloc_index.exit.i, !dbg !653

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !654
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !656
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !657

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !658
  br label %kmalloc_index.exit.i, !dbg !658

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !659
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !661
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !662

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !663
  br label %kmalloc_index.exit.i, !dbg !663

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !664
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !666
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !667

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !668
  br label %kmalloc_index.exit.i, !dbg !668

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !669
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !671
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !672

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !673
  br label %kmalloc_index.exit.i, !dbg !673

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !674, !srcloc !677
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #8, !dbg !678, !srcloc !681
  unreachable, !dbg !682

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !683
  store i32 %45, i32* %index.i, align 4, !dbg !684
  %46 = load i32, i32* %index.i, align 4, !dbg !685
  %tobool.i = icmp ne i32 %46, 0, !dbg !685
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !687

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !688
  br label %kmalloc.exit, !dbg !688

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !689
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !690
  %and.i.i = and i32 %48, 17, !dbg !690
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !690
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !690
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !690
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !690
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !692

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !693
  br label %kmalloc_type.exit.i, !dbg !693

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !694
  %and2.i.i = and i32 %49, 1, !dbg !695
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !694
  %50 = zext i1 %tobool3.i.i to i64, !dbg !694
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !694
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !696
  br label %kmalloc_type.exit.i, !dbg !696

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !697
  %idxprom.i = zext i32 %51 to i64, !dbg !698
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !698
  %52 = load i32, i32* %index.i, align 4, !dbg !699
  %idxprom6.i = zext i32 %52 to i64, !dbg !698
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !698
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !698
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !700
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !701
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !702
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !703
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !704
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !704
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !704
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !704
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !704
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !465
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !705
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !706
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !707
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !708
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !709
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !710
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !711
  store i8* %62, i8** %retval.i, align 8, !dbg !712
  br label %kmalloc.exit, !dbg !712

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !713
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !714
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !715
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !715
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !715
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !715
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !715
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !716
  br label %kmalloc.exit, !dbg !716

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !717
  ret i8* %65, !dbg !718
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_lpat_free_conversion_table(%struct.acpi_lpat_conversion_table* %lpat_table) #0 !dbg !719 {
entry:
  %lpat_table.addr = alloca %struct.acpi_lpat_conversion_table*, align 8
  store %struct.acpi_lpat_conversion_table* %lpat_table, %struct.acpi_lpat_conversion_table** %lpat_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_lpat_conversion_table** %lpat_table.addr, metadata !722, metadata !DIExpression()), !dbg !723
  %0 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table.addr, align 8, !dbg !724
  %tobool = icmp ne %struct.acpi_lpat_conversion_table* %0, null, !dbg !724
  br i1 %tobool, label %if.then, label %if.end, !dbg !726

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table.addr, align 8, !dbg !727
  %lpat = getelementptr inbounds %struct.acpi_lpat_conversion_table, %struct.acpi_lpat_conversion_table* %1, i32 0, i32 0, !dbg !729
  %2 = load %struct.acpi_lpat*, %struct.acpi_lpat** %lpat, align 8, !dbg !729
  %3 = bitcast %struct.acpi_lpat* %2 to i8*, !dbg !727
  call void @kfree(i8* %3) #7, !dbg !730
  %4 = load %struct.acpi_lpat_conversion_table*, %struct.acpi_lpat_conversion_table** %lpat_table.addr, align 8, !dbg !731
  %5 = bitcast %struct.acpi_lpat_conversion_table* %4 to i8*, !dbg !731
  call void @kfree(i8* %5) #7, !dbg !732
  br label %if.end, !dbg !733

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !734
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !735 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !447, metadata !DIExpression()), !dbg !736
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !460, metadata !DIExpression()), !dbg !740
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !462, metadata !DIExpression()), !dbg !741
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !464, metadata !DIExpression()), !dbg !742
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !466, metadata !DIExpression()), !dbg !743
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !472, metadata !DIExpression()), !dbg !745
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !478, metadata !DIExpression()), !dbg !747
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !487, metadata !DIExpression()), !dbg !750
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !489, metadata !DIExpression()), !dbg !751
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !491, metadata !DIExpression()), !dbg !752
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !493, metadata !DIExpression()), !dbg !753
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !495, metadata !DIExpression()), !dbg !754
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !497, metadata !DIExpression()), !dbg !755
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !499, metadata !DIExpression()), !dbg !756
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !501, metadata !DIExpression()), !dbg !757
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !758, metadata !DIExpression()), !dbg !759
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !760, metadata !DIExpression()), !dbg !761
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !762, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !764, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !766, metadata !DIExpression()), !dbg !769
  %0 = load i64, i64* %n.addr, align 8, !dbg !769
  store i64 %0, i64* %__a, align 8, !dbg !769
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !770, metadata !DIExpression()), !dbg !769
  %1 = load i64, i64* %size.addr, align 8, !dbg !769
  store i64 %1, i64* %__b, align 8, !dbg !769
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !771, metadata !DIExpression()), !dbg !769
  store i64* %bytes, i64** %__d, align 8, !dbg !769
  %cmp = icmp eq i64* %__a, %__b, !dbg !769
  %conv = zext i1 %cmp to i32, !dbg !769
  %2 = load i64*, i64** %__d, align 8, !dbg !769
  %cmp1 = icmp eq i64* %__a, %2, !dbg !769
  %conv2 = zext i1 %cmp1 to i32, !dbg !769
  %3 = load i64, i64* %__a, align 8, !dbg !769
  %4 = load i64, i64* %__b, align 8, !dbg !769
  %5 = load i64*, i64** %__d, align 8, !dbg !769
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !769
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !769
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !769
  store i64 %8, i64* %5, align 8, !dbg !769
  %frombool = zext i1 %7 to i8, !dbg !769
  store i8 %frombool, i8* %tmp, align 1, !dbg !769
  %9 = load i8, i8* %tmp, align 1, !dbg !769
  %tobool = trunc i8 %9 to i1, !dbg !769
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #7, !dbg !773
  %lnot = xor i1 %call, true, !dbg !773
  %lnot3 = xor i1 %lnot, true, !dbg !773
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !773
  %conv4 = sext i32 %lnot.ext to i64, !dbg !773
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !773
  br i1 %tobool5, label %if.then, label %if.end, !dbg !774

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !775
  br label %return, !dbg !775

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !776
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !777
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !778

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !779
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !780
  br i1 %13, label %if.then6, label %if.end8, !dbg !781

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !782
  %15 = load i32, i32* %flags.addr, align 4, !dbg !783
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !784
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #8, !dbg !785
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !786

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !787
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !788
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !789

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !790
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !791
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !792
  %call.i.i = call i32 @get_order(i64 %21) #9, !dbg !793
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !754
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !794
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !795
  %24 = load i32, i32* %order.i.i, align 4, !dbg !796
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !797
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !798
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !799
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #10, !dbg !800
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !800
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !800
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !800
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !800
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !801
  br label %kmalloc.exit, !dbg !801

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !802
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !803
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !803
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !804

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !805
  br label %kmalloc_index.exit.i, !dbg !805

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !806
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !807
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !808

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !809
  br label %kmalloc_index.exit.i, !dbg !809

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !810
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !811
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !812

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !813
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !814
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !815

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !816
  br label %kmalloc_index.exit.i, !dbg !816

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !817
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !818
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !819

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !820
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !821
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !822

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !823
  br label %kmalloc_index.exit.i, !dbg !823

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !824
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !825
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !826

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !827
  br label %kmalloc_index.exit.i, !dbg !827

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !828
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !829
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !830

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !831
  br label %kmalloc_index.exit.i, !dbg !831

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !832
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !833
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !834

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !835
  br label %kmalloc_index.exit.i, !dbg !835

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !836
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !837
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !838

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !839
  br label %kmalloc_index.exit.i, !dbg !839

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !840
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !841
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !842

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !843
  br label %kmalloc_index.exit.i, !dbg !843

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !844
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !845
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !846

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !847
  br label %kmalloc_index.exit.i, !dbg !847

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !848
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !849
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !850

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !851
  br label %kmalloc_index.exit.i, !dbg !851

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !852
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !853
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !854

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !855
  br label %kmalloc_index.exit.i, !dbg !855

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !856
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !857
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !858

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !859
  br label %kmalloc_index.exit.i, !dbg !859

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !860
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !861
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !862

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !863
  br label %kmalloc_index.exit.i, !dbg !863

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !864
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !865
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !866

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !867
  br label %kmalloc_index.exit.i, !dbg !867

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !868
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !869
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !870

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !871
  br label %kmalloc_index.exit.i, !dbg !871

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !872
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !873
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !874

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !875
  br label %kmalloc_index.exit.i, !dbg !875

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !876
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !877
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !878

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !879
  br label %kmalloc_index.exit.i, !dbg !879

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !880
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !881
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !882

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !883
  br label %kmalloc_index.exit.i, !dbg !883

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !884
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !885
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !886

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !887
  br label %kmalloc_index.exit.i, !dbg !887

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !888
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !889
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !890

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !891
  br label %kmalloc_index.exit.i, !dbg !891

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !892
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !893
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !894

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !895
  br label %kmalloc_index.exit.i, !dbg !895

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !896
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !897
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !898

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !899
  br label %kmalloc_index.exit.i, !dbg !899

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !900
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !901
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !902

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !903
  br label %kmalloc_index.exit.i, !dbg !903

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !904
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !905
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !906

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !907
  br label %kmalloc_index.exit.i, !dbg !907

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !908
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !909
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !910

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !911
  br label %kmalloc_index.exit.i, !dbg !911

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !912
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !913
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !914

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !915
  br label %kmalloc_index.exit.i, !dbg !915

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !916
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !917
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !918

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !919
  br label %kmalloc_index.exit.i, !dbg !919

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !920, !srcloc !677
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #8, !dbg !921, !srcloc !681
  unreachable, !dbg !922

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !923
  store i32 %59, i32* %index.i, align 4, !dbg !924
  %60 = load i32, i32* %index.i, align 4, !dbg !925
  %tobool.i = icmp ne i32 %60, 0, !dbg !925
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !926

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !927
  br label %kmalloc.exit, !dbg !927

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !928
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !929
  %and.i.i = and i32 %62, 17, !dbg !929
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !929
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !929
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !929
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !929
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !930

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !931
  br label %kmalloc_type.exit.i, !dbg !931

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !932
  %and2.i.i = and i32 %63, 1, !dbg !933
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !932
  %64 = zext i1 %tobool3.i.i to i64, !dbg !932
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !932
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !934
  br label %kmalloc_type.exit.i, !dbg !934

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !935
  %idxprom.i = zext i32 %65 to i64, !dbg !936
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !936
  %66 = load i32, i32* %index.i, align 4, !dbg !937
  %idxprom6.i = zext i32 %66 to i64, !dbg !936
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !936
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !936
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !938
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !939
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !940
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !941
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #10, !dbg !942
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !942
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !942
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !942
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !942
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !742
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !943
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !944
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !945
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !946
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #10, !dbg !947
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !948
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !949
  store i8* %76, i8** %retval.i, align 8, !dbg !950
  br label %kmalloc.exit, !dbg !950

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !951
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !952
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #10, !dbg !953
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !953
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !953
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !953
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !953
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !954
  br label %kmalloc.exit, !dbg !954

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !955
  store i8* %79, i8** %retval, align 8, !dbg !956
  br label %return, !dbg !956

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !957
  %81 = load i32, i32* %flags.addr, align 4, !dbg !958
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #7, !dbg !959
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !959
  %maskedptr = and i64 %ptrint, 7, !dbg !959
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !959
  call void @llvm.assume(i1 %maskcond), !dbg !959
  store i8* %call9, i8** %retval, align 8, !dbg !960
  br label %return, !dbg !960

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !961
  ret i8* %82, !dbg !961
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !962 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !968, metadata !DIExpression()), !dbg !969
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !970
  %tobool = trunc i8 %0 to i1, !dbg !970
  %lnot = xor i1 %tobool, true, !dbg !970
  %lnot1 = xor i1 %lnot, true, !dbg !970
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !970
  %conv = sext i32 %lnot.ext to i64, !dbg !970
  %tobool2 = icmp ne i64 %conv, 0, !dbg !970
  ret i1 %tobool2, !dbg !971
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !972 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !976, metadata !DIExpression()), !dbg !981
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !983, metadata !DIExpression()), !dbg !984
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !985, metadata !DIExpression()), !dbg !986
  %0 = load i64, i64* %size.addr, align 8, !dbg !987
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !989
  br i1 %1, label %if.then, label %if.end447, !dbg !990

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !991
  %tobool = icmp ne i64 %2, 0, !dbg !991
  br i1 %tobool, label %if.end, label %if.then1, !dbg !994

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !995
  br label %return, !dbg !995

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !996
  %cmp = icmp ult i64 %3, 4096, !dbg !998
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !999

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1000
  br label %return, !dbg !1000

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub = sub i64 %4, 1, !dbg !1001
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1001
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1001

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub4 = sub i64 %6, 1, !dbg !1001
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1001
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1001

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub6 = sub i64 %8, 1, !dbg !1001
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1001
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1001

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1001

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub9 = sub i64 %9, 1, !dbg !1001
  %and = and i64 %sub9, -9223372036854775808, !dbg !1001
  %tobool10 = icmp ne i64 %and, 0, !dbg !1001
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1001

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1001

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub13 = sub i64 %10, 1, !dbg !1001
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1001
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1001
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1001

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1001

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub18 = sub i64 %11, 1, !dbg !1001
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1001
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1001
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1001

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1001

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub23 = sub i64 %12, 1, !dbg !1001
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1001
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1001
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1001

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1001

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub28 = sub i64 %13, 1, !dbg !1001
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1001
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1001
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1001

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1001

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub33 = sub i64 %14, 1, !dbg !1001
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1001
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1001
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1001

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1001

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub38 = sub i64 %15, 1, !dbg !1001
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1001
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1001
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1001

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1001

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub43 = sub i64 %16, 1, !dbg !1001
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1001
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1001
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1001

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1001

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub48 = sub i64 %17, 1, !dbg !1001
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1001
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1001
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1001

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1001

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub53 = sub i64 %18, 1, !dbg !1001
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1001
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1001
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1001

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1001

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub58 = sub i64 %19, 1, !dbg !1001
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1001
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1001
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1001

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1001

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub63 = sub i64 %20, 1, !dbg !1001
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1001
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1001
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1001

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1001

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub68 = sub i64 %21, 1, !dbg !1001
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1001
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1001
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1001

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1001

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub73 = sub i64 %22, 1, !dbg !1001
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1001
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1001
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1001

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1001

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub78 = sub i64 %23, 1, !dbg !1001
  %and79 = and i64 %sub78, 562949953421312, !dbg !1001
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1001
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1001

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1001

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub83 = sub i64 %24, 1, !dbg !1001
  %and84 = and i64 %sub83, 281474976710656, !dbg !1001
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1001
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1001

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1001

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub88 = sub i64 %25, 1, !dbg !1001
  %and89 = and i64 %sub88, 140737488355328, !dbg !1001
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1001
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1001

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1001

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub93 = sub i64 %26, 1, !dbg !1001
  %and94 = and i64 %sub93, 70368744177664, !dbg !1001
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1001
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1001

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1001

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub98 = sub i64 %27, 1, !dbg !1001
  %and99 = and i64 %sub98, 35184372088832, !dbg !1001
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1001
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1001

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1001

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub103 = sub i64 %28, 1, !dbg !1001
  %and104 = and i64 %sub103, 17592186044416, !dbg !1001
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1001
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1001

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1001

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub108 = sub i64 %29, 1, !dbg !1001
  %and109 = and i64 %sub108, 8796093022208, !dbg !1001
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1001
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1001

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1001

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub113 = sub i64 %30, 1, !dbg !1001
  %and114 = and i64 %sub113, 4398046511104, !dbg !1001
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1001
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1001

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1001

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub118 = sub i64 %31, 1, !dbg !1001
  %and119 = and i64 %sub118, 2199023255552, !dbg !1001
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1001
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1001

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1001

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub123 = sub i64 %32, 1, !dbg !1001
  %and124 = and i64 %sub123, 1099511627776, !dbg !1001
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1001
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1001

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1001

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub128 = sub i64 %33, 1, !dbg !1001
  %and129 = and i64 %sub128, 549755813888, !dbg !1001
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1001
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1001

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1001

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub133 = sub i64 %34, 1, !dbg !1001
  %and134 = and i64 %sub133, 274877906944, !dbg !1001
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1001
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1001

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1001

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub138 = sub i64 %35, 1, !dbg !1001
  %and139 = and i64 %sub138, 137438953472, !dbg !1001
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1001
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1001

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1001

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub143 = sub i64 %36, 1, !dbg !1001
  %and144 = and i64 %sub143, 68719476736, !dbg !1001
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1001
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1001

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1001

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub148 = sub i64 %37, 1, !dbg !1001
  %and149 = and i64 %sub148, 34359738368, !dbg !1001
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1001
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1001

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1001

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub153 = sub i64 %38, 1, !dbg !1001
  %and154 = and i64 %sub153, 17179869184, !dbg !1001
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1001
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1001

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1001

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub158 = sub i64 %39, 1, !dbg !1001
  %and159 = and i64 %sub158, 8589934592, !dbg !1001
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1001
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1001

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1001

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub163 = sub i64 %40, 1, !dbg !1001
  %and164 = and i64 %sub163, 4294967296, !dbg !1001
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1001
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1001

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1001

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub168 = sub i64 %41, 1, !dbg !1001
  %and169 = and i64 %sub168, 2147483648, !dbg !1001
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1001
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1001

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1001

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub173 = sub i64 %42, 1, !dbg !1001
  %and174 = and i64 %sub173, 1073741824, !dbg !1001
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1001
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1001

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1001

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub178 = sub i64 %43, 1, !dbg !1001
  %and179 = and i64 %sub178, 536870912, !dbg !1001
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1001
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1001

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1001

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub183 = sub i64 %44, 1, !dbg !1001
  %and184 = and i64 %sub183, 268435456, !dbg !1001
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1001
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1001

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1001

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub188 = sub i64 %45, 1, !dbg !1001
  %and189 = and i64 %sub188, 134217728, !dbg !1001
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1001
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1001

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1001

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub193 = sub i64 %46, 1, !dbg !1001
  %and194 = and i64 %sub193, 67108864, !dbg !1001
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1001
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1001

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1001

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub198 = sub i64 %47, 1, !dbg !1001
  %and199 = and i64 %sub198, 33554432, !dbg !1001
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1001
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1001

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1001

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub203 = sub i64 %48, 1, !dbg !1001
  %and204 = and i64 %sub203, 16777216, !dbg !1001
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1001
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1001

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1001

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub208 = sub i64 %49, 1, !dbg !1001
  %and209 = and i64 %sub208, 8388608, !dbg !1001
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1001
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1001

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1001

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub213 = sub i64 %50, 1, !dbg !1001
  %and214 = and i64 %sub213, 4194304, !dbg !1001
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1001
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1001

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1001

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub218 = sub i64 %51, 1, !dbg !1001
  %and219 = and i64 %sub218, 2097152, !dbg !1001
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1001
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1001

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1001

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub223 = sub i64 %52, 1, !dbg !1001
  %and224 = and i64 %sub223, 1048576, !dbg !1001
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1001
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1001

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1001

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub228 = sub i64 %53, 1, !dbg !1001
  %and229 = and i64 %sub228, 524288, !dbg !1001
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1001
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1001

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1001

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub233 = sub i64 %54, 1, !dbg !1001
  %and234 = and i64 %sub233, 262144, !dbg !1001
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1001
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1001

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1001

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub238 = sub i64 %55, 1, !dbg !1001
  %and239 = and i64 %sub238, 131072, !dbg !1001
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1001
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1001

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1001

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub243 = sub i64 %56, 1, !dbg !1001
  %and244 = and i64 %sub243, 65536, !dbg !1001
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1001
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1001

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1001

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub248 = sub i64 %57, 1, !dbg !1001
  %and249 = and i64 %sub248, 32768, !dbg !1001
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1001
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1001

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1001

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub253 = sub i64 %58, 1, !dbg !1001
  %and254 = and i64 %sub253, 16384, !dbg !1001
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1001
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1001

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1001

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub258 = sub i64 %59, 1, !dbg !1001
  %and259 = and i64 %sub258, 8192, !dbg !1001
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1001
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1001

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1001

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub263 = sub i64 %60, 1, !dbg !1001
  %and264 = and i64 %sub263, 4096, !dbg !1001
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1001
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1001

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1001

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub268 = sub i64 %61, 1, !dbg !1001
  %and269 = and i64 %sub268, 2048, !dbg !1001
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1001
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1001

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1001

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub273 = sub i64 %62, 1, !dbg !1001
  %and274 = and i64 %sub273, 1024, !dbg !1001
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1001
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1001

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1001

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub278 = sub i64 %63, 1, !dbg !1001
  %and279 = and i64 %sub278, 512, !dbg !1001
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1001
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1001

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1001

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub283 = sub i64 %64, 1, !dbg !1001
  %and284 = and i64 %sub283, 256, !dbg !1001
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1001
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1001

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1001

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub288 = sub i64 %65, 1, !dbg !1001
  %and289 = and i64 %sub288, 128, !dbg !1001
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1001
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1001

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1001

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub293 = sub i64 %66, 1, !dbg !1001
  %and294 = and i64 %sub293, 64, !dbg !1001
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1001
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1001

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1001

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub298 = sub i64 %67, 1, !dbg !1001
  %and299 = and i64 %sub298, 32, !dbg !1001
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1001
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1001

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1001

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub303 = sub i64 %68, 1, !dbg !1001
  %and304 = and i64 %sub303, 16, !dbg !1001
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1001
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1001

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1001

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub308 = sub i64 %69, 1, !dbg !1001
  %and309 = and i64 %sub308, 8, !dbg !1001
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1001
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1001

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1001

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub313 = sub i64 %70, 1, !dbg !1001
  %and314 = and i64 %sub313, 4, !dbg !1001
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1001
  %71 = zext i1 %tobool315 to i64, !dbg !1001
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1001
  br label %cond.end, !dbg !1001

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1001
  br label %cond.end317, !dbg !1001

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1001
  br label %cond.end319, !dbg !1001

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1001
  br label %cond.end321, !dbg !1001

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1001
  br label %cond.end323, !dbg !1001

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1001
  br label %cond.end325, !dbg !1001

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1001
  br label %cond.end327, !dbg !1001

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1001
  br label %cond.end329, !dbg !1001

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1001
  br label %cond.end331, !dbg !1001

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1001
  br label %cond.end333, !dbg !1001

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1001
  br label %cond.end335, !dbg !1001

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1001
  br label %cond.end337, !dbg !1001

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1001
  br label %cond.end339, !dbg !1001

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1001
  br label %cond.end341, !dbg !1001

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1001
  br label %cond.end343, !dbg !1001

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1001
  br label %cond.end345, !dbg !1001

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1001
  br label %cond.end347, !dbg !1001

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1001
  br label %cond.end349, !dbg !1001

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1001
  br label %cond.end351, !dbg !1001

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1001
  br label %cond.end353, !dbg !1001

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1001
  br label %cond.end355, !dbg !1001

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1001
  br label %cond.end357, !dbg !1001

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1001
  br label %cond.end359, !dbg !1001

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1001
  br label %cond.end361, !dbg !1001

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1001
  br label %cond.end363, !dbg !1001

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1001
  br label %cond.end365, !dbg !1001

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1001
  br label %cond.end367, !dbg !1001

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1001
  br label %cond.end369, !dbg !1001

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1001
  br label %cond.end371, !dbg !1001

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1001
  br label %cond.end373, !dbg !1001

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1001
  br label %cond.end375, !dbg !1001

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1001
  br label %cond.end377, !dbg !1001

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1001
  br label %cond.end379, !dbg !1001

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1001
  br label %cond.end381, !dbg !1001

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1001
  br label %cond.end383, !dbg !1001

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1001
  br label %cond.end385, !dbg !1001

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1001
  br label %cond.end387, !dbg !1001

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1001
  br label %cond.end389, !dbg !1001

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1001
  br label %cond.end391, !dbg !1001

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1001
  br label %cond.end393, !dbg !1001

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1001
  br label %cond.end395, !dbg !1001

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1001
  br label %cond.end397, !dbg !1001

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1001
  br label %cond.end399, !dbg !1001

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1001
  br label %cond.end401, !dbg !1001

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1001
  br label %cond.end403, !dbg !1001

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1001
  br label %cond.end405, !dbg !1001

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1001
  br label %cond.end407, !dbg !1001

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1001
  br label %cond.end409, !dbg !1001

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1001
  br label %cond.end411, !dbg !1001

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1001
  br label %cond.end413, !dbg !1001

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1001
  br label %cond.end415, !dbg !1001

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1001
  br label %cond.end417, !dbg !1001

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1001
  br label %cond.end419, !dbg !1001

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1001
  br label %cond.end421, !dbg !1001

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1001
  br label %cond.end423, !dbg !1001

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1001
  br label %cond.end425, !dbg !1001

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1001
  br label %cond.end427, !dbg !1001

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1001
  br label %cond.end429, !dbg !1001

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1001
  br label %cond.end431, !dbg !1001

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1001
  br label %cond.end433, !dbg !1001

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1001
  br label %cond.end435, !dbg !1001

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1001
  br label %cond.end437, !dbg !1001

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1001
  br label %cond.end440, !dbg !1001

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1001

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1001
  br label %cond.end444, !dbg !1001

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1001
  %sub443 = sub i64 %72, 1, !dbg !1001
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1001
  br label %cond.end444, !dbg !1001

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1001
  %sub446 = sub i32 %cond445, 12, !dbg !1002
  %add = add i32 %sub446, 1, !dbg !1003
  store i32 %add, i32* %retval, align 4, !dbg !1004
  br label %return, !dbg !1004

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1005
  %dec = add i64 %73, -1, !dbg !1005
  store i64 %dec, i64* %size.addr, align 8, !dbg !1005
  %74 = load i64, i64* %size.addr, align 8, !dbg !1006
  %shr = lshr i64 %74, 12, !dbg !1006
  store i64 %shr, i64* %size.addr, align 8, !dbg !1006
  %75 = load i64, i64* %size.addr, align 8, !dbg !1007
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !984
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1008
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1009
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !1008, !srcloc !1010
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1008
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1011
  %add.i = add i32 %79, 1, !dbg !1012
  store i32 %add.i, i32* %retval, align 4, !dbg !1013
  br label %return, !dbg !1013

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1014
  ret i32 %80, !dbg !1014
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1015 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !976, metadata !DIExpression()), !dbg !1019
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !983, metadata !DIExpression()), !dbg !1021
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1022, metadata !DIExpression()), !dbg !1023
  %0 = load i64, i64* %n.addr, align 8, !dbg !1024
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1021
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1025
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1026
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !1025, !srcloc !1010
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1025
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1027
  %add.i = add i32 %4, 1, !dbg !1028
  %sub = sub i32 %add.i, 1, !dbg !1029
  ret i32 %sub, !dbg !1030
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1031 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1037, metadata !DIExpression()), !dbg !1038
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1039, metadata !DIExpression()), !dbg !1040
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1041, metadata !DIExpression()), !dbg !1042
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1043, metadata !DIExpression()), !dbg !1044
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1045
  ret i8* %0, !dbg !1046
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpi_lpat.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4, line: 305, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!11 = !{!12, !76, !78, !81, !61}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !14, line: 899, size: 192, elements: !15)
!14 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !22, !30, !38, !48, !54, !62, !70}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !14, line: 900, baseType: !17, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !14, line: 635, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !5)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !13, file: !14, line: 904, baseType: !23, size: 128)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !14, line: 901, size: 128, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !23, file: !14, line: 902, baseType: !17, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !23, file: !14, line: 903, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !19, line: 23, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 31, baseType: !29)
!29 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !13, file: !14, line: 910, baseType: !31, size: 128)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !14, line: 906, size: 128, elements: !32)
!32 = !{!33, !34, !35}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !31, file: !14, line: 907, baseType: !17, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !31, file: !14, line: 908, baseType: !18, size: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !31, file: !14, line: 909, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !13, file: !14, line: 916, baseType: !39, size: 128)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !14, line: 912, size: 128, elements: !40)
!40 = !{!41, !42, !43}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !39, file: !14, line: 913, baseType: !17, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !39, file: !14, line: 914, baseType: !18, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !39, file: !14, line: 915, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !47)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !13, file: !14, line: 922, baseType: !49, size: 128)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !14, line: 918, size: 128, elements: !50)
!50 = !{!51, !52, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !14, line: 919, baseType: !17, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !49, file: !14, line: 920, baseType: !18, size: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !49, file: !14, line: 921, baseType: !12, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !13, file: !14, line: 928, baseType: !55, size: 128)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !14, line: 924, size: 128, elements: !56)
!56 = !{!57, !58, !59}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !14, line: 925, baseType: !17, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !55, file: !14, line: 926, baseType: !17, size: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !55, file: !14, line: 927, baseType: !60, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !14, line: 424, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !13, file: !14, line: 935, baseType: !63, size: 192)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !14, line: 930, size: 192, elements: !64)
!64 = !{!65, !66, !67, !69}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !63, file: !14, line: 931, baseType: !17, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !63, file: !14, line: 932, baseType: !18, size: 32, offset: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !63, file: !14, line: 933, baseType: !68, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !14, line: 128, baseType: !27)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !63, file: !14, line: 934, baseType: !18, size: 32, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !13, file: !14, line: 941, baseType: !71, size: 96)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !14, line: 937, size: 96, elements: !72)
!72 = !{!73, !74, !75}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !71, file: !14, line: 938, baseType: !17, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !71, file: !14, line: 939, baseType: !18, size: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !71, file: !14, line: 940, baseType: !18, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !77, line: 148, baseType: !5)
!77 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !19, line: 22, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !21, line: 30, baseType: !80)
!80 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpat", file: !83, line: 11, size: 64, elements: !84)
!83 = !DIFile(filename: "./include/acpi/acpi_lpat.h", directory: "/home/lizy2001/genbc/linux")
!84 = !{!85, !87}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !82, file: !83, line: 12, baseType: !86, size: 32)
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !82, file: !83, line: 13, baseType: !86, size: 32, offset: 32)
!88 = !{i32 7, !"Dwarf Version", i32 4}
!89 = !{i32 2, !"Debug Info Version", i32 3}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"Code Model", i32 2}
!92 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!93 = distinct !DISubprogram(name: "acpi_lpat_raw_to_temp", scope: !1, file: !1, line: 23, type: !94, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !101)
!94 = !DISubroutineType(types: !95)
!95 = !{!86, !96, !86}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpat_conversion_table", file: !83, line: 16, size: 128, elements: !98)
!98 = !{!99, !100}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "lpat", scope: !97, file: !83, line: 17, baseType: !81, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "lpat_count", scope: !97, file: !83, line: 18, baseType: !86, size: 32, offset: 64)
!101 = !{}
!102 = !DILocalVariable(name: "lpat_table", arg: 1, scope: !93, file: !1, line: 23, type: !96)
!103 = !DILocation(line: 23, column: 62, scope: !93)
!104 = !DILocalVariable(name: "raw", arg: 2, scope: !93, file: !1, line: 24, type: !86)
!105 = !DILocation(line: 24, column: 10, scope: !93)
!106 = !DILocalVariable(name: "i", scope: !93, file: !1, line: 26, type: !86)
!107 = !DILocation(line: 26, column: 6, scope: !93)
!108 = !DILocalVariable(name: "delta_temp", scope: !93, file: !1, line: 26, type: !86)
!109 = !DILocation(line: 26, column: 9, scope: !93)
!110 = !DILocalVariable(name: "delta_raw", scope: !93, file: !1, line: 26, type: !86)
!111 = !DILocation(line: 26, column: 21, scope: !93)
!112 = !DILocalVariable(name: "temp", scope: !93, file: !1, line: 26, type: !86)
!113 = !DILocation(line: 26, column: 32, scope: !93)
!114 = !DILocalVariable(name: "lpat", scope: !93, file: !1, line: 27, type: !81)
!115 = !DILocation(line: 27, column: 20, scope: !93)
!116 = !DILocation(line: 27, column: 27, scope: !93)
!117 = !DILocation(line: 27, column: 39, scope: !93)
!118 = !DILocation(line: 29, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !93, file: !1, line: 29, column: 2)
!120 = !DILocation(line: 29, column: 7, scope: !119)
!121 = !DILocation(line: 29, column: 14, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 29, column: 2)
!123 = !DILocation(line: 29, column: 18, scope: !122)
!124 = !DILocation(line: 29, column: 30, scope: !122)
!125 = !DILocation(line: 29, column: 41, scope: !122)
!126 = !DILocation(line: 29, column: 16, scope: !122)
!127 = !DILocation(line: 29, column: 2, scope: !119)
!128 = !DILocation(line: 30, column: 8, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !1, line: 30, column: 7)
!130 = distinct !DILexicalBlock(scope: !122, file: !1, line: 29, column: 51)
!131 = !DILocation(line: 30, column: 15, scope: !129)
!132 = !DILocation(line: 30, column: 20, scope: !129)
!133 = !DILocation(line: 30, column: 23, scope: !129)
!134 = !DILocation(line: 30, column: 12, scope: !129)
!135 = !DILocation(line: 30, column: 27, scope: !129)
!136 = !DILocation(line: 30, column: 30, scope: !129)
!137 = !DILocation(line: 30, column: 37, scope: !129)
!138 = !DILocation(line: 30, column: 42, scope: !129)
!139 = !DILocation(line: 30, column: 43, scope: !129)
!140 = !DILocation(line: 30, column: 47, scope: !129)
!141 = !DILocation(line: 30, column: 34, scope: !129)
!142 = !DILocation(line: 30, column: 52, scope: !129)
!143 = !DILocation(line: 31, column: 8, scope: !129)
!144 = !DILocation(line: 31, column: 15, scope: !129)
!145 = !DILocation(line: 31, column: 20, scope: !129)
!146 = !DILocation(line: 31, column: 23, scope: !129)
!147 = !DILocation(line: 31, column: 12, scope: !129)
!148 = !DILocation(line: 31, column: 27, scope: !129)
!149 = !DILocation(line: 31, column: 30, scope: !129)
!150 = !DILocation(line: 31, column: 37, scope: !129)
!151 = !DILocation(line: 31, column: 42, scope: !129)
!152 = !DILocation(line: 31, column: 43, scope: !129)
!153 = !DILocation(line: 31, column: 47, scope: !129)
!154 = !DILocation(line: 31, column: 34, scope: !129)
!155 = !DILocation(line: 30, column: 7, scope: !130)
!156 = !DILocation(line: 32, column: 4, scope: !129)
!157 = !DILocation(line: 33, column: 2, scope: !130)
!158 = !DILocation(line: 29, column: 47, scope: !122)
!159 = !DILocation(line: 29, column: 2, scope: !122)
!160 = distinct !{!160, !127, !161}
!161 = !DILocation(line: 33, column: 2, scope: !119)
!162 = !DILocation(line: 35, column: 6, scope: !163)
!163 = distinct !DILexicalBlock(scope: !93, file: !1, line: 35, column: 6)
!164 = !DILocation(line: 35, column: 11, scope: !163)
!165 = !DILocation(line: 35, column: 23, scope: !163)
!166 = !DILocation(line: 35, column: 34, scope: !163)
!167 = !DILocation(line: 35, column: 8, scope: !163)
!168 = !DILocation(line: 35, column: 6, scope: !93)
!169 = !DILocation(line: 36, column: 3, scope: !163)
!170 = !DILocation(line: 38, column: 15, scope: !93)
!171 = !DILocation(line: 38, column: 20, scope: !93)
!172 = !DILocation(line: 38, column: 21, scope: !93)
!173 = !DILocation(line: 38, column: 25, scope: !93)
!174 = !DILocation(line: 38, column: 32, scope: !93)
!175 = !DILocation(line: 38, column: 37, scope: !93)
!176 = !DILocation(line: 38, column: 40, scope: !93)
!177 = !DILocation(line: 38, column: 30, scope: !93)
!178 = !DILocation(line: 38, column: 13, scope: !93)
!179 = !DILocation(line: 39, column: 14, scope: !93)
!180 = !DILocation(line: 39, column: 19, scope: !93)
!181 = !DILocation(line: 39, column: 20, scope: !93)
!182 = !DILocation(line: 39, column: 24, scope: !93)
!183 = !DILocation(line: 39, column: 30, scope: !93)
!184 = !DILocation(line: 39, column: 35, scope: !93)
!185 = !DILocation(line: 39, column: 38, scope: !93)
!186 = !DILocation(line: 39, column: 28, scope: !93)
!187 = !DILocation(line: 39, column: 12, scope: !93)
!188 = !DILocation(line: 40, column: 9, scope: !93)
!189 = !DILocation(line: 40, column: 14, scope: !93)
!190 = !DILocation(line: 40, column: 17, scope: !93)
!191 = !DILocation(line: 40, column: 25, scope: !93)
!192 = !DILocation(line: 40, column: 31, scope: !93)
!193 = !DILocation(line: 40, column: 36, scope: !93)
!194 = !DILocation(line: 40, column: 39, scope: !93)
!195 = !DILocation(line: 40, column: 29, scope: !93)
!196 = !DILocation(line: 40, column: 46, scope: !93)
!197 = !DILocation(line: 40, column: 44, scope: !93)
!198 = !DILocation(line: 40, column: 59, scope: !93)
!199 = !DILocation(line: 40, column: 57, scope: !93)
!200 = !DILocation(line: 40, column: 22, scope: !93)
!201 = !DILocation(line: 40, column: 7, scope: !93)
!202 = !DILocation(line: 42, column: 9, scope: !93)
!203 = !DILocation(line: 42, column: 2, scope: !93)
!204 = !DILocation(line: 43, column: 1, scope: !93)
!205 = distinct !DISubprogram(name: "acpi_lpat_temp_to_raw", scope: !1, file: !1, line: 57, type: !94, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !101)
!206 = !DILocalVariable(name: "lpat_table", arg: 1, scope: !205, file: !1, line: 57, type: !96)
!207 = !DILocation(line: 57, column: 62, scope: !205)
!208 = !DILocalVariable(name: "temp", arg: 2, scope: !205, file: !1, line: 58, type: !86)
!209 = !DILocation(line: 58, column: 10, scope: !205)
!210 = !DILocalVariable(name: "i", scope: !205, file: !1, line: 60, type: !86)
!211 = !DILocation(line: 60, column: 6, scope: !205)
!212 = !DILocalVariable(name: "delta_temp", scope: !205, file: !1, line: 60, type: !86)
!213 = !DILocation(line: 60, column: 9, scope: !205)
!214 = !DILocalVariable(name: "delta_raw", scope: !205, file: !1, line: 60, type: !86)
!215 = !DILocation(line: 60, column: 21, scope: !205)
!216 = !DILocalVariable(name: "raw", scope: !205, file: !1, line: 60, type: !86)
!217 = !DILocation(line: 60, column: 32, scope: !205)
!218 = !DILocalVariable(name: "lpat", scope: !205, file: !1, line: 61, type: !81)
!219 = !DILocation(line: 61, column: 20, scope: !205)
!220 = !DILocation(line: 61, column: 27, scope: !205)
!221 = !DILocation(line: 61, column: 39, scope: !205)
!222 = !DILocation(line: 63, column: 9, scope: !223)
!223 = distinct !DILexicalBlock(scope: !205, file: !1, line: 63, column: 2)
!224 = !DILocation(line: 63, column: 7, scope: !223)
!225 = !DILocation(line: 63, column: 14, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !1, line: 63, column: 2)
!227 = !DILocation(line: 63, column: 18, scope: !226)
!228 = !DILocation(line: 63, column: 30, scope: !226)
!229 = !DILocation(line: 63, column: 41, scope: !226)
!230 = !DILocation(line: 63, column: 16, scope: !226)
!231 = !DILocation(line: 63, column: 2, scope: !223)
!232 = !DILocation(line: 64, column: 7, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !1, line: 64, column: 7)
!234 = distinct !DILexicalBlock(scope: !226, file: !1, line: 63, column: 51)
!235 = !DILocation(line: 64, column: 15, scope: !233)
!236 = !DILocation(line: 64, column: 20, scope: !233)
!237 = !DILocation(line: 64, column: 23, scope: !233)
!238 = !DILocation(line: 64, column: 12, scope: !233)
!239 = !DILocation(line: 64, column: 28, scope: !233)
!240 = !DILocation(line: 64, column: 31, scope: !233)
!241 = !DILocation(line: 64, column: 39, scope: !233)
!242 = !DILocation(line: 64, column: 44, scope: !233)
!243 = !DILocation(line: 64, column: 45, scope: !233)
!244 = !DILocation(line: 64, column: 49, scope: !233)
!245 = !DILocation(line: 64, column: 36, scope: !233)
!246 = !DILocation(line: 64, column: 7, scope: !234)
!247 = !DILocation(line: 65, column: 4, scope: !233)
!248 = !DILocation(line: 66, column: 2, scope: !234)
!249 = !DILocation(line: 63, column: 47, scope: !226)
!250 = !DILocation(line: 63, column: 2, scope: !226)
!251 = distinct !{!251, !231, !252}
!252 = !DILocation(line: 66, column: 2, scope: !223)
!253 = !DILocation(line: 68, column: 6, scope: !254)
!254 = distinct !DILexicalBlock(scope: !205, file: !1, line: 68, column: 6)
!255 = !DILocation(line: 68, column: 12, scope: !254)
!256 = !DILocation(line: 68, column: 24, scope: !254)
!257 = !DILocation(line: 68, column: 35, scope: !254)
!258 = !DILocation(line: 68, column: 8, scope: !254)
!259 = !DILocation(line: 68, column: 6, scope: !205)
!260 = !DILocation(line: 69, column: 3, scope: !254)
!261 = !DILocation(line: 71, column: 15, scope: !205)
!262 = !DILocation(line: 71, column: 20, scope: !205)
!263 = !DILocation(line: 71, column: 21, scope: !205)
!264 = !DILocation(line: 71, column: 25, scope: !205)
!265 = !DILocation(line: 71, column: 32, scope: !205)
!266 = !DILocation(line: 71, column: 37, scope: !205)
!267 = !DILocation(line: 71, column: 40, scope: !205)
!268 = !DILocation(line: 71, column: 30, scope: !205)
!269 = !DILocation(line: 71, column: 13, scope: !205)
!270 = !DILocation(line: 72, column: 14, scope: !205)
!271 = !DILocation(line: 72, column: 19, scope: !205)
!272 = !DILocation(line: 72, column: 20, scope: !205)
!273 = !DILocation(line: 72, column: 24, scope: !205)
!274 = !DILocation(line: 72, column: 30, scope: !205)
!275 = !DILocation(line: 72, column: 35, scope: !205)
!276 = !DILocation(line: 72, column: 38, scope: !205)
!277 = !DILocation(line: 72, column: 28, scope: !205)
!278 = !DILocation(line: 72, column: 12, scope: !205)
!279 = !DILocation(line: 73, column: 8, scope: !205)
!280 = !DILocation(line: 73, column: 13, scope: !205)
!281 = !DILocation(line: 73, column: 16, scope: !205)
!282 = !DILocation(line: 73, column: 23, scope: !205)
!283 = !DILocation(line: 73, column: 30, scope: !205)
!284 = !DILocation(line: 73, column: 35, scope: !205)
!285 = !DILocation(line: 73, column: 38, scope: !205)
!286 = !DILocation(line: 73, column: 28, scope: !205)
!287 = !DILocation(line: 73, column: 46, scope: !205)
!288 = !DILocation(line: 73, column: 44, scope: !205)
!289 = !DILocation(line: 73, column: 58, scope: !205)
!290 = !DILocation(line: 73, column: 56, scope: !205)
!291 = !DILocation(line: 73, column: 20, scope: !205)
!292 = !DILocation(line: 73, column: 6, scope: !205)
!293 = !DILocation(line: 75, column: 9, scope: !205)
!294 = !DILocation(line: 75, column: 2, scope: !205)
!295 = !DILocation(line: 76, column: 1, scope: !205)
!296 = distinct !DISubprogram(name: "acpi_lpat_get_conversion_table", scope: !1, file: !1, line: 89, type: !297, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !101)
!297 = !DISubroutineType(types: !298)
!298 = !{!96, !60}
!299 = !DILocalVariable(name: "handle", arg: 1, scope: !296, file: !1, line: 90, type: !60)
!300 = !DILocation(line: 90, column: 11, scope: !296)
!301 = !DILocalVariable(name: "lpat_table", scope: !296, file: !1, line: 92, type: !96)
!302 = !DILocation(line: 92, column: 37, scope: !296)
!303 = !DILocalVariable(name: "buffer", scope: !296, file: !1, line: 93, type: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !14, line: 969, size: 128, elements: !305)
!305 = !{!306, !308}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !304, file: !14, line: 970, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !14, line: 127, baseType: !27)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !304, file: !14, line: 971, baseType: !61, size: 64, offset: 64)
!309 = !DILocation(line: 93, column: 21, scope: !296)
!310 = !DILocalVariable(name: "obj_p", scope: !296, file: !1, line: 94, type: !12)
!311 = !DILocation(line: 94, column: 21, scope: !296)
!312 = !DILocalVariable(name: "obj_e", scope: !296, file: !1, line: 94, type: !12)
!313 = !DILocation(line: 94, column: 29, scope: !296)
!314 = !DILocalVariable(name: "lpat", scope: !296, file: !1, line: 95, type: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!316 = !DILocation(line: 95, column: 7, scope: !296)
!317 = !DILocalVariable(name: "i", scope: !296, file: !1, line: 95, type: !86)
!318 = !DILocation(line: 95, column: 13, scope: !296)
!319 = !DILocalVariable(name: "status", scope: !296, file: !1, line: 96, type: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !14, line: 421, baseType: !18)
!321 = !DILocation(line: 96, column: 14, scope: !296)
!322 = !DILocation(line: 98, column: 32, scope: !296)
!323 = !DILocation(line: 98, column: 11, scope: !296)
!324 = !DILocation(line: 98, column: 9, scope: !296)
!325 = !DILocation(line: 99, column: 6, scope: !326)
!326 = distinct !DILexicalBlock(scope: !296, file: !1, line: 99, column: 6)
!327 = !DILocation(line: 99, column: 6, scope: !296)
!328 = !DILocation(line: 100, column: 3, scope: !326)
!329 = !DILocation(line: 102, column: 38, scope: !296)
!330 = !DILocation(line: 102, column: 10, scope: !296)
!331 = !DILocation(line: 102, column: 8, scope: !296)
!332 = !DILocation(line: 103, column: 7, scope: !333)
!333 = distinct !DILexicalBlock(scope: !296, file: !1, line: 103, column: 6)
!334 = !DILocation(line: 103, column: 13, scope: !333)
!335 = !DILocation(line: 103, column: 17, scope: !333)
!336 = !DILocation(line: 103, column: 24, scope: !333)
!337 = !DILocation(line: 103, column: 29, scope: !333)
!338 = !DILocation(line: 103, column: 51, scope: !333)
!339 = !DILocation(line: 104, column: 7, scope: !333)
!340 = !DILocation(line: 104, column: 14, scope: !333)
!341 = !DILocation(line: 104, column: 22, scope: !333)
!342 = !DILocation(line: 104, column: 28, scope: !333)
!343 = !DILocation(line: 104, column: 33, scope: !333)
!344 = !DILocation(line: 104, column: 37, scope: !333)
!345 = !DILocation(line: 104, column: 44, scope: !333)
!346 = !DILocation(line: 104, column: 52, scope: !333)
!347 = !DILocation(line: 104, column: 58, scope: !333)
!348 = !DILocation(line: 103, column: 6, scope: !296)
!349 = !DILocation(line: 105, column: 3, scope: !333)
!350 = !DILocation(line: 107, column: 17, scope: !296)
!351 = !DILocation(line: 107, column: 24, scope: !296)
!352 = !DILocation(line: 107, column: 32, scope: !296)
!353 = !DILocation(line: 107, column: 9, scope: !296)
!354 = !DILocation(line: 107, column: 7, scope: !296)
!355 = !DILocation(line: 108, column: 7, scope: !356)
!356 = distinct !DILexicalBlock(scope: !296, file: !1, line: 108, column: 6)
!357 = !DILocation(line: 108, column: 6, scope: !296)
!358 = !DILocation(line: 109, column: 3, scope: !356)
!359 = !DILocation(line: 111, column: 9, scope: !360)
!360 = distinct !DILexicalBlock(scope: !296, file: !1, line: 111, column: 2)
!361 = !DILocation(line: 111, column: 7, scope: !360)
!362 = !DILocation(line: 111, column: 14, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !1, line: 111, column: 2)
!364 = !DILocation(line: 111, column: 18, scope: !363)
!365 = !DILocation(line: 111, column: 25, scope: !363)
!366 = !DILocation(line: 111, column: 33, scope: !363)
!367 = !DILocation(line: 111, column: 16, scope: !363)
!368 = !DILocation(line: 111, column: 2, scope: !360)
!369 = !DILocation(line: 112, column: 12, scope: !370)
!370 = distinct !DILexicalBlock(scope: !363, file: !1, line: 111, column: 45)
!371 = !DILocation(line: 112, column: 19, scope: !370)
!372 = !DILocation(line: 112, column: 27, scope: !370)
!373 = !DILocation(line: 112, column: 36, scope: !370)
!374 = !DILocation(line: 112, column: 9, scope: !370)
!375 = !DILocation(line: 113, column: 7, scope: !376)
!376 = distinct !DILexicalBlock(scope: !370, file: !1, line: 113, column: 7)
!377 = !DILocation(line: 113, column: 14, scope: !376)
!378 = !DILocation(line: 113, column: 19, scope: !376)
!379 = !DILocation(line: 113, column: 7, scope: !370)
!380 = !DILocation(line: 114, column: 10, scope: !381)
!381 = distinct !DILexicalBlock(scope: !376, file: !1, line: 113, column: 41)
!382 = !DILocation(line: 114, column: 4, scope: !381)
!383 = !DILocation(line: 115, column: 4, scope: !381)
!384 = !DILocation(line: 117, column: 18, scope: !370)
!385 = !DILocation(line: 117, column: 25, scope: !370)
!386 = !DILocation(line: 117, column: 33, scope: !370)
!387 = !DILocation(line: 117, column: 13, scope: !370)
!388 = !DILocation(line: 117, column: 3, scope: !370)
!389 = !DILocation(line: 117, column: 8, scope: !370)
!390 = !DILocation(line: 117, column: 11, scope: !370)
!391 = !DILocation(line: 118, column: 2, scope: !370)
!392 = !DILocation(line: 111, column: 41, scope: !363)
!393 = !DILocation(line: 111, column: 2, scope: !363)
!394 = distinct !{!394, !368, !395}
!395 = !DILocation(line: 118, column: 2, scope: !360)
!396 = !DILocation(line: 120, column: 15, scope: !296)
!397 = !DILocation(line: 120, column: 13, scope: !296)
!398 = !DILocation(line: 121, column: 7, scope: !399)
!399 = distinct !DILexicalBlock(scope: !296, file: !1, line: 121, column: 6)
!400 = !DILocation(line: 121, column: 6, scope: !296)
!401 = !DILocation(line: 122, column: 9, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !1, line: 121, column: 19)
!403 = !DILocation(line: 122, column: 3, scope: !402)
!404 = !DILocation(line: 123, column: 3, scope: !402)
!405 = !DILocation(line: 126, column: 41, scope: !296)
!406 = !DILocation(line: 126, column: 21, scope: !296)
!407 = !DILocation(line: 126, column: 2, scope: !296)
!408 = !DILocation(line: 126, column: 14, scope: !296)
!409 = !DILocation(line: 126, column: 19, scope: !296)
!410 = !DILocation(line: 127, column: 27, scope: !296)
!411 = !DILocation(line: 127, column: 34, scope: !296)
!412 = !DILocation(line: 127, column: 42, scope: !296)
!413 = !DILocation(line: 127, column: 48, scope: !296)
!414 = !DILocation(line: 127, column: 2, scope: !296)
!415 = !DILocation(line: 127, column: 14, scope: !296)
!416 = !DILocation(line: 127, column: 25, scope: !296)
!417 = !DILabel(scope: !296, name: "out", file: !1, line: 129)
!418 = !DILocation(line: 129, column: 1, scope: !296)
!419 = !DILocation(line: 130, column: 15, scope: !296)
!420 = !DILocation(line: 130, column: 2, scope: !296)
!421 = !DILocation(line: 131, column: 9, scope: !296)
!422 = !DILocation(line: 131, column: 2, scope: !296)
!423 = !DILocation(line: 132, column: 1, scope: !296)
!424 = distinct !DISubprogram(name: "kcalloc", scope: !4, file: !4, line: 601, type: !425, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !101)
!425 = !DISubroutineType(types: !426)
!426 = !{!61, !427, !427, !76}
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 55, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !429, line: 72, baseType: !430)
!429 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !429, line: 16, baseType: !431)
!431 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!432 = !DILocalVariable(name: "n", arg: 1, scope: !424, file: !4, line: 601, type: !427)
!433 = !DILocation(line: 601, column: 36, scope: !424)
!434 = !DILocalVariable(name: "size", arg: 2, scope: !424, file: !4, line: 601, type: !427)
!435 = !DILocation(line: 601, column: 46, scope: !424)
!436 = !DILocalVariable(name: "flags", arg: 3, scope: !424, file: !4, line: 601, type: !76)
!437 = !DILocation(line: 601, column: 58, scope: !424)
!438 = !DILocation(line: 603, column: 23, scope: !424)
!439 = !DILocation(line: 603, column: 26, scope: !424)
!440 = !DILocation(line: 603, column: 32, scope: !424)
!441 = !DILocation(line: 603, column: 38, scope: !424)
!442 = !DILocation(line: 603, column: 9, scope: !424)
!443 = !DILocation(line: 603, column: 2, scope: !424)
!444 = distinct !DISubprogram(name: "kzalloc", scope: !4, file: !4, line: 662, type: !445, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !101)
!445 = !DISubroutineType(types: !446)
!446 = !{!61, !427, !76}
!447 = !DILocalVariable(name: "s", arg: 1, scope: !448, file: !4, line: 445, type: !451)
!448 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !4, file: !4, line: 445, type: !449, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !101)
!449 = !DISubroutineType(types: !450)
!450 = !{!61, !451, !76, !427}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !453, line: 117, flags: DIFlagFwdDecl)
!453 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!454 = !DILocation(line: 445, column: 72, scope: !448, inlinedAt: !455)
!455 = distinct !DILocation(line: 552, column: 10, scope: !456, inlinedAt: !459)
!456 = distinct !DILexicalBlock(scope: !457, file: !4, line: 540, column: 34)
!457 = distinct !DILexicalBlock(scope: !458, file: !4, line: 540, column: 6)
!458 = distinct !DISubprogram(name: "kmalloc", scope: !4, file: !4, line: 538, type: !445, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !101)
!459 = distinct !DILocation(line: 664, column: 9, scope: !444)
!460 = !DILocalVariable(name: "flags", arg: 2, scope: !448, file: !4, line: 446, type: !76)
!461 = !DILocation(line: 446, column: 9, scope: !448, inlinedAt: !455)
!462 = !DILocalVariable(name: "size", arg: 3, scope: !448, file: !4, line: 446, type: !427)
!463 = !DILocation(line: 446, column: 23, scope: !448, inlinedAt: !455)
!464 = !DILocalVariable(name: "ret", scope: !448, file: !4, line: 448, type: !61)
!465 = !DILocation(line: 448, column: 8, scope: !448, inlinedAt: !455)
!466 = !DILocalVariable(name: "flags", arg: 1, scope: !467, file: !4, line: 318, type: !76)
!467 = distinct !DISubprogram(name: "kmalloc_type", scope: !4, file: !4, line: 318, type: !468, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !101)
!468 = !DISubroutineType(types: !469)
!469 = !{!3, !76}
!470 = !DILocation(line: 318, column: 67, scope: !467, inlinedAt: !471)
!471 = distinct !DILocation(line: 553, column: 20, scope: !456, inlinedAt: !459)
!472 = !DILocalVariable(name: "size", arg: 1, scope: !473, file: !4, line: 346, type: !427)
!473 = distinct !DISubprogram(name: "kmalloc_index", scope: !4, file: !4, line: 346, type: !474, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !101)
!474 = !DISubroutineType(types: !475)
!475 = !{!5, !427}
!476 = !DILocation(line: 346, column: 58, scope: !473, inlinedAt: !477)
!477 = distinct !DILocation(line: 547, column: 11, scope: !456, inlinedAt: !459)
!478 = !DILocalVariable(name: "size", arg: 1, scope: !479, file: !4, line: 472, type: !427)
!479 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !4, file: !4, line: 472, type: !480, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !101)
!480 = !DISubroutineType(types: !481)
!481 = !{!61, !427, !76, !5}
!482 = !DILocation(line: 472, column: 28, scope: !479, inlinedAt: !483)
!483 = distinct !DILocation(line: 481, column: 9, scope: !484, inlinedAt: !485)
!484 = distinct !DISubprogram(name: "kmalloc_large", scope: !4, file: !4, line: 478, type: !445, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !101)
!485 = distinct !DILocation(line: 545, column: 11, scope: !486, inlinedAt: !459)
!486 = distinct !DILexicalBlock(scope: !456, file: !4, line: 544, column: 7)
!487 = !DILocalVariable(name: "flags", arg: 2, scope: !479, file: !4, line: 472, type: !76)
!488 = !DILocation(line: 472, column: 40, scope: !479, inlinedAt: !483)
!489 = !DILocalVariable(name: "order", arg: 3, scope: !479, file: !4, line: 472, type: !5)
!490 = !DILocation(line: 472, column: 60, scope: !479, inlinedAt: !483)
!491 = !DILocalVariable(name: "size", arg: 1, scope: !484, file: !4, line: 478, type: !427)
!492 = !DILocation(line: 478, column: 51, scope: !484, inlinedAt: !485)
!493 = !DILocalVariable(name: "flags", arg: 2, scope: !484, file: !4, line: 478, type: !76)
!494 = !DILocation(line: 478, column: 63, scope: !484, inlinedAt: !485)
!495 = !DILocalVariable(name: "order", scope: !484, file: !4, line: 480, type: !5)
!496 = !DILocation(line: 480, column: 15, scope: !484, inlinedAt: !485)
!497 = !DILocalVariable(name: "size", arg: 1, scope: !458, file: !4, line: 538, type: !427)
!498 = !DILocation(line: 538, column: 45, scope: !458, inlinedAt: !459)
!499 = !DILocalVariable(name: "flags", arg: 2, scope: !458, file: !4, line: 538, type: !76)
!500 = !DILocation(line: 538, column: 57, scope: !458, inlinedAt: !459)
!501 = !DILocalVariable(name: "index", scope: !456, file: !4, line: 542, type: !5)
!502 = !DILocation(line: 542, column: 16, scope: !456, inlinedAt: !459)
!503 = !DILocalVariable(name: "size", arg: 1, scope: !444, file: !4, line: 662, type: !427)
!504 = !DILocation(line: 662, column: 36, scope: !444)
!505 = !DILocalVariable(name: "flags", arg: 2, scope: !444, file: !4, line: 662, type: !76)
!506 = !DILocation(line: 662, column: 48, scope: !444)
!507 = !DILocation(line: 664, column: 17, scope: !444)
!508 = !DILocation(line: 664, column: 23, scope: !444)
!509 = !DILocation(line: 664, column: 29, scope: !444)
!510 = !DILocation(line: 540, column: 27, scope: !457, inlinedAt: !459)
!511 = !DILocation(line: 540, column: 6, scope: !457, inlinedAt: !459)
!512 = !DILocation(line: 540, column: 6, scope: !458, inlinedAt: !459)
!513 = !DILocation(line: 544, column: 7, scope: !486, inlinedAt: !459)
!514 = !DILocation(line: 544, column: 12, scope: !486, inlinedAt: !459)
!515 = !DILocation(line: 544, column: 7, scope: !456, inlinedAt: !459)
!516 = !DILocation(line: 545, column: 25, scope: !486, inlinedAt: !459)
!517 = !DILocation(line: 545, column: 31, scope: !486, inlinedAt: !459)
!518 = !DILocation(line: 480, column: 33, scope: !484, inlinedAt: !485)
!519 = !DILocation(line: 480, column: 23, scope: !484, inlinedAt: !485)
!520 = !DILocation(line: 481, column: 29, scope: !484, inlinedAt: !485)
!521 = !DILocation(line: 481, column: 35, scope: !484, inlinedAt: !485)
!522 = !DILocation(line: 481, column: 42, scope: !484, inlinedAt: !485)
!523 = !DILocation(line: 474, column: 23, scope: !479, inlinedAt: !483)
!524 = !DILocation(line: 474, column: 29, scope: !479, inlinedAt: !483)
!525 = !DILocation(line: 474, column: 36, scope: !479, inlinedAt: !483)
!526 = !DILocation(line: 474, column: 9, scope: !479, inlinedAt: !483)
!527 = !DILocation(line: 545, column: 4, scope: !486, inlinedAt: !459)
!528 = !DILocation(line: 547, column: 25, scope: !456, inlinedAt: !459)
!529 = !DILocation(line: 348, column: 7, scope: !530, inlinedAt: !477)
!530 = distinct !DILexicalBlock(scope: !473, file: !4, line: 348, column: 6)
!531 = !DILocation(line: 348, column: 6, scope: !473, inlinedAt: !477)
!532 = !DILocation(line: 349, column: 3, scope: !530, inlinedAt: !477)
!533 = !DILocation(line: 351, column: 6, scope: !534, inlinedAt: !477)
!534 = distinct !DILexicalBlock(scope: !473, file: !4, line: 351, column: 6)
!535 = !DILocation(line: 351, column: 11, scope: !534, inlinedAt: !477)
!536 = !DILocation(line: 351, column: 6, scope: !473, inlinedAt: !477)
!537 = !DILocation(line: 352, column: 3, scope: !534, inlinedAt: !477)
!538 = !DILocation(line: 354, column: 32, scope: !539, inlinedAt: !477)
!539 = distinct !DILexicalBlock(scope: !473, file: !4, line: 354, column: 6)
!540 = !DILocation(line: 354, column: 37, scope: !539, inlinedAt: !477)
!541 = !DILocation(line: 354, column: 42, scope: !539, inlinedAt: !477)
!542 = !DILocation(line: 354, column: 45, scope: !539, inlinedAt: !477)
!543 = !DILocation(line: 354, column: 50, scope: !539, inlinedAt: !477)
!544 = !DILocation(line: 354, column: 6, scope: !473, inlinedAt: !477)
!545 = !DILocation(line: 355, column: 3, scope: !539, inlinedAt: !477)
!546 = !DILocation(line: 356, column: 32, scope: !547, inlinedAt: !477)
!547 = distinct !DILexicalBlock(scope: !473, file: !4, line: 356, column: 6)
!548 = !DILocation(line: 356, column: 37, scope: !547, inlinedAt: !477)
!549 = !DILocation(line: 356, column: 43, scope: !547, inlinedAt: !477)
!550 = !DILocation(line: 356, column: 46, scope: !547, inlinedAt: !477)
!551 = !DILocation(line: 356, column: 51, scope: !547, inlinedAt: !477)
!552 = !DILocation(line: 356, column: 6, scope: !473, inlinedAt: !477)
!553 = !DILocation(line: 357, column: 3, scope: !547, inlinedAt: !477)
!554 = !DILocation(line: 358, column: 6, scope: !555, inlinedAt: !477)
!555 = distinct !DILexicalBlock(scope: !473, file: !4, line: 358, column: 6)
!556 = !DILocation(line: 358, column: 11, scope: !555, inlinedAt: !477)
!557 = !DILocation(line: 358, column: 6, scope: !473, inlinedAt: !477)
!558 = !DILocation(line: 358, column: 26, scope: !555, inlinedAt: !477)
!559 = !DILocation(line: 359, column: 6, scope: !560, inlinedAt: !477)
!560 = distinct !DILexicalBlock(scope: !473, file: !4, line: 359, column: 6)
!561 = !DILocation(line: 359, column: 11, scope: !560, inlinedAt: !477)
!562 = !DILocation(line: 359, column: 6, scope: !473, inlinedAt: !477)
!563 = !DILocation(line: 359, column: 26, scope: !560, inlinedAt: !477)
!564 = !DILocation(line: 360, column: 6, scope: !565, inlinedAt: !477)
!565 = distinct !DILexicalBlock(scope: !473, file: !4, line: 360, column: 6)
!566 = !DILocation(line: 360, column: 11, scope: !565, inlinedAt: !477)
!567 = !DILocation(line: 360, column: 6, scope: !473, inlinedAt: !477)
!568 = !DILocation(line: 360, column: 26, scope: !565, inlinedAt: !477)
!569 = !DILocation(line: 361, column: 6, scope: !570, inlinedAt: !477)
!570 = distinct !DILexicalBlock(scope: !473, file: !4, line: 361, column: 6)
!571 = !DILocation(line: 361, column: 11, scope: !570, inlinedAt: !477)
!572 = !DILocation(line: 361, column: 6, scope: !473, inlinedAt: !477)
!573 = !DILocation(line: 361, column: 26, scope: !570, inlinedAt: !477)
!574 = !DILocation(line: 362, column: 6, scope: !575, inlinedAt: !477)
!575 = distinct !DILexicalBlock(scope: !473, file: !4, line: 362, column: 6)
!576 = !DILocation(line: 362, column: 11, scope: !575, inlinedAt: !477)
!577 = !DILocation(line: 362, column: 6, scope: !473, inlinedAt: !477)
!578 = !DILocation(line: 362, column: 26, scope: !575, inlinedAt: !477)
!579 = !DILocation(line: 363, column: 6, scope: !580, inlinedAt: !477)
!580 = distinct !DILexicalBlock(scope: !473, file: !4, line: 363, column: 6)
!581 = !DILocation(line: 363, column: 11, scope: !580, inlinedAt: !477)
!582 = !DILocation(line: 363, column: 6, scope: !473, inlinedAt: !477)
!583 = !DILocation(line: 363, column: 26, scope: !580, inlinedAt: !477)
!584 = !DILocation(line: 364, column: 6, scope: !585, inlinedAt: !477)
!585 = distinct !DILexicalBlock(scope: !473, file: !4, line: 364, column: 6)
!586 = !DILocation(line: 364, column: 11, scope: !585, inlinedAt: !477)
!587 = !DILocation(line: 364, column: 6, scope: !473, inlinedAt: !477)
!588 = !DILocation(line: 364, column: 26, scope: !585, inlinedAt: !477)
!589 = !DILocation(line: 365, column: 6, scope: !590, inlinedAt: !477)
!590 = distinct !DILexicalBlock(scope: !473, file: !4, line: 365, column: 6)
!591 = !DILocation(line: 365, column: 11, scope: !590, inlinedAt: !477)
!592 = !DILocation(line: 365, column: 6, scope: !473, inlinedAt: !477)
!593 = !DILocation(line: 365, column: 26, scope: !590, inlinedAt: !477)
!594 = !DILocation(line: 366, column: 6, scope: !595, inlinedAt: !477)
!595 = distinct !DILexicalBlock(scope: !473, file: !4, line: 366, column: 6)
!596 = !DILocation(line: 366, column: 11, scope: !595, inlinedAt: !477)
!597 = !DILocation(line: 366, column: 6, scope: !473, inlinedAt: !477)
!598 = !DILocation(line: 366, column: 26, scope: !595, inlinedAt: !477)
!599 = !DILocation(line: 367, column: 6, scope: !600, inlinedAt: !477)
!600 = distinct !DILexicalBlock(scope: !473, file: !4, line: 367, column: 6)
!601 = !DILocation(line: 367, column: 11, scope: !600, inlinedAt: !477)
!602 = !DILocation(line: 367, column: 6, scope: !473, inlinedAt: !477)
!603 = !DILocation(line: 367, column: 26, scope: !600, inlinedAt: !477)
!604 = !DILocation(line: 368, column: 6, scope: !605, inlinedAt: !477)
!605 = distinct !DILexicalBlock(scope: !473, file: !4, line: 368, column: 6)
!606 = !DILocation(line: 368, column: 11, scope: !605, inlinedAt: !477)
!607 = !DILocation(line: 368, column: 6, scope: !473, inlinedAt: !477)
!608 = !DILocation(line: 368, column: 26, scope: !605, inlinedAt: !477)
!609 = !DILocation(line: 369, column: 6, scope: !610, inlinedAt: !477)
!610 = distinct !DILexicalBlock(scope: !473, file: !4, line: 369, column: 6)
!611 = !DILocation(line: 369, column: 11, scope: !610, inlinedAt: !477)
!612 = !DILocation(line: 369, column: 6, scope: !473, inlinedAt: !477)
!613 = !DILocation(line: 369, column: 26, scope: !610, inlinedAt: !477)
!614 = !DILocation(line: 370, column: 6, scope: !615, inlinedAt: !477)
!615 = distinct !DILexicalBlock(scope: !473, file: !4, line: 370, column: 6)
!616 = !DILocation(line: 370, column: 11, scope: !615, inlinedAt: !477)
!617 = !DILocation(line: 370, column: 6, scope: !473, inlinedAt: !477)
!618 = !DILocation(line: 370, column: 26, scope: !615, inlinedAt: !477)
!619 = !DILocation(line: 371, column: 6, scope: !620, inlinedAt: !477)
!620 = distinct !DILexicalBlock(scope: !473, file: !4, line: 371, column: 6)
!621 = !DILocation(line: 371, column: 11, scope: !620, inlinedAt: !477)
!622 = !DILocation(line: 371, column: 6, scope: !473, inlinedAt: !477)
!623 = !DILocation(line: 371, column: 26, scope: !620, inlinedAt: !477)
!624 = !DILocation(line: 372, column: 6, scope: !625, inlinedAt: !477)
!625 = distinct !DILexicalBlock(scope: !473, file: !4, line: 372, column: 6)
!626 = !DILocation(line: 372, column: 11, scope: !625, inlinedAt: !477)
!627 = !DILocation(line: 372, column: 6, scope: !473, inlinedAt: !477)
!628 = !DILocation(line: 372, column: 26, scope: !625, inlinedAt: !477)
!629 = !DILocation(line: 373, column: 6, scope: !630, inlinedAt: !477)
!630 = distinct !DILexicalBlock(scope: !473, file: !4, line: 373, column: 6)
!631 = !DILocation(line: 373, column: 11, scope: !630, inlinedAt: !477)
!632 = !DILocation(line: 373, column: 6, scope: !473, inlinedAt: !477)
!633 = !DILocation(line: 373, column: 26, scope: !630, inlinedAt: !477)
!634 = !DILocation(line: 374, column: 6, scope: !635, inlinedAt: !477)
!635 = distinct !DILexicalBlock(scope: !473, file: !4, line: 374, column: 6)
!636 = !DILocation(line: 374, column: 11, scope: !635, inlinedAt: !477)
!637 = !DILocation(line: 374, column: 6, scope: !473, inlinedAt: !477)
!638 = !DILocation(line: 374, column: 26, scope: !635, inlinedAt: !477)
!639 = !DILocation(line: 375, column: 6, scope: !640, inlinedAt: !477)
!640 = distinct !DILexicalBlock(scope: !473, file: !4, line: 375, column: 6)
!641 = !DILocation(line: 375, column: 11, scope: !640, inlinedAt: !477)
!642 = !DILocation(line: 375, column: 6, scope: !473, inlinedAt: !477)
!643 = !DILocation(line: 375, column: 27, scope: !640, inlinedAt: !477)
!644 = !DILocation(line: 376, column: 6, scope: !645, inlinedAt: !477)
!645 = distinct !DILexicalBlock(scope: !473, file: !4, line: 376, column: 6)
!646 = !DILocation(line: 376, column: 11, scope: !645, inlinedAt: !477)
!647 = !DILocation(line: 376, column: 6, scope: !473, inlinedAt: !477)
!648 = !DILocation(line: 376, column: 32, scope: !645, inlinedAt: !477)
!649 = !DILocation(line: 377, column: 6, scope: !650, inlinedAt: !477)
!650 = distinct !DILexicalBlock(scope: !473, file: !4, line: 377, column: 6)
!651 = !DILocation(line: 377, column: 11, scope: !650, inlinedAt: !477)
!652 = !DILocation(line: 377, column: 6, scope: !473, inlinedAt: !477)
!653 = !DILocation(line: 377, column: 32, scope: !650, inlinedAt: !477)
!654 = !DILocation(line: 378, column: 6, scope: !655, inlinedAt: !477)
!655 = distinct !DILexicalBlock(scope: !473, file: !4, line: 378, column: 6)
!656 = !DILocation(line: 378, column: 11, scope: !655, inlinedAt: !477)
!657 = !DILocation(line: 378, column: 6, scope: !473, inlinedAt: !477)
!658 = !DILocation(line: 378, column: 32, scope: !655, inlinedAt: !477)
!659 = !DILocation(line: 379, column: 6, scope: !660, inlinedAt: !477)
!660 = distinct !DILexicalBlock(scope: !473, file: !4, line: 379, column: 6)
!661 = !DILocation(line: 379, column: 11, scope: !660, inlinedAt: !477)
!662 = !DILocation(line: 379, column: 6, scope: !473, inlinedAt: !477)
!663 = !DILocation(line: 379, column: 33, scope: !660, inlinedAt: !477)
!664 = !DILocation(line: 380, column: 6, scope: !665, inlinedAt: !477)
!665 = distinct !DILexicalBlock(scope: !473, file: !4, line: 380, column: 6)
!666 = !DILocation(line: 380, column: 11, scope: !665, inlinedAt: !477)
!667 = !DILocation(line: 380, column: 6, scope: !473, inlinedAt: !477)
!668 = !DILocation(line: 380, column: 33, scope: !665, inlinedAt: !477)
!669 = !DILocation(line: 381, column: 6, scope: !670, inlinedAt: !477)
!670 = distinct !DILexicalBlock(scope: !473, file: !4, line: 381, column: 6)
!671 = !DILocation(line: 381, column: 11, scope: !670, inlinedAt: !477)
!672 = !DILocation(line: 381, column: 6, scope: !473, inlinedAt: !477)
!673 = !DILocation(line: 381, column: 33, scope: !670, inlinedAt: !477)
!674 = !DILocation(line: 382, column: 2, scope: !675, inlinedAt: !477)
!675 = distinct !DILexicalBlock(scope: !676, file: !4, line: 382, column: 2)
!676 = distinct !DILexicalBlock(scope: !473, file: !4, line: 382, column: 2)
!677 = !{i32 -2144219892, i32 -2144219863, i32 -2144219817, i32 -2144219759, i32 -2144219705, i32 -2144219651, i32 -2144219596, i32 -2144219565}
!678 = !DILocation(line: 382, column: 2, scope: !679, inlinedAt: !477)
!679 = distinct !DILexicalBlock(scope: !680, file: !4, line: 382, column: 2)
!680 = distinct !DILexicalBlock(scope: !676, file: !4, line: 382, column: 2)
!681 = !{i32 -2144219122, i32 -2144219115, i32 -2144219061, i32 -2144219030, i32 -2144219000}
!682 = !DILocation(line: 382, column: 2, scope: !680, inlinedAt: !477)
!683 = !DILocation(line: 386, column: 1, scope: !473, inlinedAt: !477)
!684 = !DILocation(line: 547, column: 9, scope: !456, inlinedAt: !459)
!685 = !DILocation(line: 549, column: 8, scope: !686, inlinedAt: !459)
!686 = distinct !DILexicalBlock(scope: !456, file: !4, line: 549, column: 7)
!687 = !DILocation(line: 549, column: 7, scope: !456, inlinedAt: !459)
!688 = !DILocation(line: 550, column: 4, scope: !686, inlinedAt: !459)
!689 = !DILocation(line: 553, column: 33, scope: !456, inlinedAt: !459)
!690 = !DILocation(line: 325, column: 6, scope: !691, inlinedAt: !471)
!691 = distinct !DILexicalBlock(scope: !467, file: !4, line: 325, column: 6)
!692 = !DILocation(line: 325, column: 6, scope: !467, inlinedAt: !471)
!693 = !DILocation(line: 326, column: 3, scope: !691, inlinedAt: !471)
!694 = !DILocation(line: 332, column: 9, scope: !467, inlinedAt: !471)
!695 = !DILocation(line: 332, column: 15, scope: !467, inlinedAt: !471)
!696 = !DILocation(line: 332, column: 2, scope: !467, inlinedAt: !471)
!697 = !DILocation(line: 336, column: 1, scope: !467, inlinedAt: !471)
!698 = !DILocation(line: 553, column: 5, scope: !456, inlinedAt: !459)
!699 = !DILocation(line: 553, column: 41, scope: !456, inlinedAt: !459)
!700 = !DILocation(line: 554, column: 5, scope: !456, inlinedAt: !459)
!701 = !DILocation(line: 554, column: 12, scope: !456, inlinedAt: !459)
!702 = !DILocation(line: 448, column: 31, scope: !448, inlinedAt: !455)
!703 = !DILocation(line: 448, column: 34, scope: !448, inlinedAt: !455)
!704 = !DILocation(line: 448, column: 14, scope: !448, inlinedAt: !455)
!705 = !DILocation(line: 450, column: 22, scope: !448, inlinedAt: !455)
!706 = !DILocation(line: 450, column: 25, scope: !448, inlinedAt: !455)
!707 = !DILocation(line: 450, column: 30, scope: !448, inlinedAt: !455)
!708 = !DILocation(line: 450, column: 36, scope: !448, inlinedAt: !455)
!709 = !DILocation(line: 450, column: 8, scope: !448, inlinedAt: !455)
!710 = !DILocation(line: 450, column: 6, scope: !448, inlinedAt: !455)
!711 = !DILocation(line: 451, column: 9, scope: !448, inlinedAt: !455)
!712 = !DILocation(line: 552, column: 3, scope: !456, inlinedAt: !459)
!713 = !DILocation(line: 557, column: 19, scope: !458, inlinedAt: !459)
!714 = !DILocation(line: 557, column: 25, scope: !458, inlinedAt: !459)
!715 = !DILocation(line: 557, column: 9, scope: !458, inlinedAt: !459)
!716 = !DILocation(line: 557, column: 2, scope: !458, inlinedAt: !459)
!717 = !DILocation(line: 558, column: 1, scope: !458, inlinedAt: !459)
!718 = !DILocation(line: 664, column: 2, scope: !444)
!719 = distinct !DISubprogram(name: "acpi_lpat_free_conversion_table", scope: !1, file: !1, line: 143, type: !720, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !101)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !96}
!722 = !DILocalVariable(name: "lpat_table", arg: 1, scope: !719, file: !1, line: 144, type: !96)
!723 = !DILocation(line: 144, column: 11, scope: !719)
!724 = !DILocation(line: 146, column: 6, scope: !725)
!725 = distinct !DILexicalBlock(scope: !719, file: !1, line: 146, column: 6)
!726 = !DILocation(line: 146, column: 6, scope: !719)
!727 = !DILocation(line: 147, column: 9, scope: !728)
!728 = distinct !DILexicalBlock(scope: !725, file: !1, line: 146, column: 18)
!729 = !DILocation(line: 147, column: 21, scope: !728)
!730 = !DILocation(line: 147, column: 3, scope: !728)
!731 = !DILocation(line: 148, column: 9, scope: !728)
!732 = !DILocation(line: 148, column: 3, scope: !728)
!733 = !DILocation(line: 149, column: 2, scope: !728)
!734 = !DILocation(line: 150, column: 1, scope: !719)
!735 = distinct !DISubprogram(name: "kmalloc_array", scope: !4, file: !4, line: 584, type: !425, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !101)
!736 = !DILocation(line: 445, column: 72, scope: !448, inlinedAt: !737)
!737 = distinct !DILocation(line: 552, column: 10, scope: !456, inlinedAt: !738)
!738 = distinct !DILocation(line: 591, column: 10, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !4, line: 590, column: 6)
!740 = !DILocation(line: 446, column: 9, scope: !448, inlinedAt: !737)
!741 = !DILocation(line: 446, column: 23, scope: !448, inlinedAt: !737)
!742 = !DILocation(line: 448, column: 8, scope: !448, inlinedAt: !737)
!743 = !DILocation(line: 318, column: 67, scope: !467, inlinedAt: !744)
!744 = distinct !DILocation(line: 553, column: 20, scope: !456, inlinedAt: !738)
!745 = !DILocation(line: 346, column: 58, scope: !473, inlinedAt: !746)
!746 = distinct !DILocation(line: 547, column: 11, scope: !456, inlinedAt: !738)
!747 = !DILocation(line: 472, column: 28, scope: !479, inlinedAt: !748)
!748 = distinct !DILocation(line: 481, column: 9, scope: !484, inlinedAt: !749)
!749 = distinct !DILocation(line: 545, column: 11, scope: !486, inlinedAt: !738)
!750 = !DILocation(line: 472, column: 40, scope: !479, inlinedAt: !748)
!751 = !DILocation(line: 472, column: 60, scope: !479, inlinedAt: !748)
!752 = !DILocation(line: 478, column: 51, scope: !484, inlinedAt: !749)
!753 = !DILocation(line: 478, column: 63, scope: !484, inlinedAt: !749)
!754 = !DILocation(line: 480, column: 15, scope: !484, inlinedAt: !749)
!755 = !DILocation(line: 538, column: 45, scope: !458, inlinedAt: !738)
!756 = !DILocation(line: 538, column: 57, scope: !458, inlinedAt: !738)
!757 = !DILocation(line: 542, column: 16, scope: !456, inlinedAt: !738)
!758 = !DILocalVariable(name: "n", arg: 1, scope: !735, file: !4, line: 584, type: !427)
!759 = !DILocation(line: 584, column: 42, scope: !735)
!760 = !DILocalVariable(name: "size", arg: 2, scope: !735, file: !4, line: 584, type: !427)
!761 = !DILocation(line: 584, column: 52, scope: !735)
!762 = !DILocalVariable(name: "flags", arg: 3, scope: !735, file: !4, line: 584, type: !76)
!763 = !DILocation(line: 584, column: 64, scope: !735)
!764 = !DILocalVariable(name: "bytes", scope: !735, file: !4, line: 586, type: !427)
!765 = !DILocation(line: 586, column: 9, scope: !735)
!766 = !DILocalVariable(name: "__a", scope: !767, file: !4, line: 588, type: !427)
!767 = distinct !DILexicalBlock(scope: !768, file: !4, line: 588, column: 6)
!768 = distinct !DILexicalBlock(scope: !735, file: !4, line: 588, column: 6)
!769 = !DILocation(line: 588, column: 6, scope: !767)
!770 = !DILocalVariable(name: "__b", scope: !767, file: !4, line: 588, type: !427)
!771 = !DILocalVariable(name: "__d", scope: !767, file: !4, line: 588, type: !772)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!773 = !DILocation(line: 588, column: 6, scope: !768)
!774 = !DILocation(line: 588, column: 6, scope: !735)
!775 = !DILocation(line: 589, column: 3, scope: !768)
!776 = !DILocation(line: 590, column: 27, scope: !739)
!777 = !DILocation(line: 590, column: 6, scope: !739)
!778 = !DILocation(line: 590, column: 30, scope: !739)
!779 = !DILocation(line: 590, column: 54, scope: !739)
!780 = !DILocation(line: 590, column: 33, scope: !739)
!781 = !DILocation(line: 590, column: 6, scope: !735)
!782 = !DILocation(line: 591, column: 18, scope: !739)
!783 = !DILocation(line: 591, column: 25, scope: !739)
!784 = !DILocation(line: 540, column: 27, scope: !457, inlinedAt: !738)
!785 = !DILocation(line: 540, column: 6, scope: !457, inlinedAt: !738)
!786 = !DILocation(line: 540, column: 6, scope: !458, inlinedAt: !738)
!787 = !DILocation(line: 544, column: 7, scope: !486, inlinedAt: !738)
!788 = !DILocation(line: 544, column: 12, scope: !486, inlinedAt: !738)
!789 = !DILocation(line: 544, column: 7, scope: !456, inlinedAt: !738)
!790 = !DILocation(line: 545, column: 25, scope: !486, inlinedAt: !738)
!791 = !DILocation(line: 545, column: 31, scope: !486, inlinedAt: !738)
!792 = !DILocation(line: 480, column: 33, scope: !484, inlinedAt: !749)
!793 = !DILocation(line: 480, column: 23, scope: !484, inlinedAt: !749)
!794 = !DILocation(line: 481, column: 29, scope: !484, inlinedAt: !749)
!795 = !DILocation(line: 481, column: 35, scope: !484, inlinedAt: !749)
!796 = !DILocation(line: 481, column: 42, scope: !484, inlinedAt: !749)
!797 = !DILocation(line: 474, column: 23, scope: !479, inlinedAt: !748)
!798 = !DILocation(line: 474, column: 29, scope: !479, inlinedAt: !748)
!799 = !DILocation(line: 474, column: 36, scope: !479, inlinedAt: !748)
!800 = !DILocation(line: 474, column: 9, scope: !479, inlinedAt: !748)
!801 = !DILocation(line: 545, column: 4, scope: !486, inlinedAt: !738)
!802 = !DILocation(line: 547, column: 25, scope: !456, inlinedAt: !738)
!803 = !DILocation(line: 348, column: 7, scope: !530, inlinedAt: !746)
!804 = !DILocation(line: 348, column: 6, scope: !473, inlinedAt: !746)
!805 = !DILocation(line: 349, column: 3, scope: !530, inlinedAt: !746)
!806 = !DILocation(line: 351, column: 6, scope: !534, inlinedAt: !746)
!807 = !DILocation(line: 351, column: 11, scope: !534, inlinedAt: !746)
!808 = !DILocation(line: 351, column: 6, scope: !473, inlinedAt: !746)
!809 = !DILocation(line: 352, column: 3, scope: !534, inlinedAt: !746)
!810 = !DILocation(line: 354, column: 32, scope: !539, inlinedAt: !746)
!811 = !DILocation(line: 354, column: 37, scope: !539, inlinedAt: !746)
!812 = !DILocation(line: 354, column: 42, scope: !539, inlinedAt: !746)
!813 = !DILocation(line: 354, column: 45, scope: !539, inlinedAt: !746)
!814 = !DILocation(line: 354, column: 50, scope: !539, inlinedAt: !746)
!815 = !DILocation(line: 354, column: 6, scope: !473, inlinedAt: !746)
!816 = !DILocation(line: 355, column: 3, scope: !539, inlinedAt: !746)
!817 = !DILocation(line: 356, column: 32, scope: !547, inlinedAt: !746)
!818 = !DILocation(line: 356, column: 37, scope: !547, inlinedAt: !746)
!819 = !DILocation(line: 356, column: 43, scope: !547, inlinedAt: !746)
!820 = !DILocation(line: 356, column: 46, scope: !547, inlinedAt: !746)
!821 = !DILocation(line: 356, column: 51, scope: !547, inlinedAt: !746)
!822 = !DILocation(line: 356, column: 6, scope: !473, inlinedAt: !746)
!823 = !DILocation(line: 357, column: 3, scope: !547, inlinedAt: !746)
!824 = !DILocation(line: 358, column: 6, scope: !555, inlinedAt: !746)
!825 = !DILocation(line: 358, column: 11, scope: !555, inlinedAt: !746)
!826 = !DILocation(line: 358, column: 6, scope: !473, inlinedAt: !746)
!827 = !DILocation(line: 358, column: 26, scope: !555, inlinedAt: !746)
!828 = !DILocation(line: 359, column: 6, scope: !560, inlinedAt: !746)
!829 = !DILocation(line: 359, column: 11, scope: !560, inlinedAt: !746)
!830 = !DILocation(line: 359, column: 6, scope: !473, inlinedAt: !746)
!831 = !DILocation(line: 359, column: 26, scope: !560, inlinedAt: !746)
!832 = !DILocation(line: 360, column: 6, scope: !565, inlinedAt: !746)
!833 = !DILocation(line: 360, column: 11, scope: !565, inlinedAt: !746)
!834 = !DILocation(line: 360, column: 6, scope: !473, inlinedAt: !746)
!835 = !DILocation(line: 360, column: 26, scope: !565, inlinedAt: !746)
!836 = !DILocation(line: 361, column: 6, scope: !570, inlinedAt: !746)
!837 = !DILocation(line: 361, column: 11, scope: !570, inlinedAt: !746)
!838 = !DILocation(line: 361, column: 6, scope: !473, inlinedAt: !746)
!839 = !DILocation(line: 361, column: 26, scope: !570, inlinedAt: !746)
!840 = !DILocation(line: 362, column: 6, scope: !575, inlinedAt: !746)
!841 = !DILocation(line: 362, column: 11, scope: !575, inlinedAt: !746)
!842 = !DILocation(line: 362, column: 6, scope: !473, inlinedAt: !746)
!843 = !DILocation(line: 362, column: 26, scope: !575, inlinedAt: !746)
!844 = !DILocation(line: 363, column: 6, scope: !580, inlinedAt: !746)
!845 = !DILocation(line: 363, column: 11, scope: !580, inlinedAt: !746)
!846 = !DILocation(line: 363, column: 6, scope: !473, inlinedAt: !746)
!847 = !DILocation(line: 363, column: 26, scope: !580, inlinedAt: !746)
!848 = !DILocation(line: 364, column: 6, scope: !585, inlinedAt: !746)
!849 = !DILocation(line: 364, column: 11, scope: !585, inlinedAt: !746)
!850 = !DILocation(line: 364, column: 6, scope: !473, inlinedAt: !746)
!851 = !DILocation(line: 364, column: 26, scope: !585, inlinedAt: !746)
!852 = !DILocation(line: 365, column: 6, scope: !590, inlinedAt: !746)
!853 = !DILocation(line: 365, column: 11, scope: !590, inlinedAt: !746)
!854 = !DILocation(line: 365, column: 6, scope: !473, inlinedAt: !746)
!855 = !DILocation(line: 365, column: 26, scope: !590, inlinedAt: !746)
!856 = !DILocation(line: 366, column: 6, scope: !595, inlinedAt: !746)
!857 = !DILocation(line: 366, column: 11, scope: !595, inlinedAt: !746)
!858 = !DILocation(line: 366, column: 6, scope: !473, inlinedAt: !746)
!859 = !DILocation(line: 366, column: 26, scope: !595, inlinedAt: !746)
!860 = !DILocation(line: 367, column: 6, scope: !600, inlinedAt: !746)
!861 = !DILocation(line: 367, column: 11, scope: !600, inlinedAt: !746)
!862 = !DILocation(line: 367, column: 6, scope: !473, inlinedAt: !746)
!863 = !DILocation(line: 367, column: 26, scope: !600, inlinedAt: !746)
!864 = !DILocation(line: 368, column: 6, scope: !605, inlinedAt: !746)
!865 = !DILocation(line: 368, column: 11, scope: !605, inlinedAt: !746)
!866 = !DILocation(line: 368, column: 6, scope: !473, inlinedAt: !746)
!867 = !DILocation(line: 368, column: 26, scope: !605, inlinedAt: !746)
!868 = !DILocation(line: 369, column: 6, scope: !610, inlinedAt: !746)
!869 = !DILocation(line: 369, column: 11, scope: !610, inlinedAt: !746)
!870 = !DILocation(line: 369, column: 6, scope: !473, inlinedAt: !746)
!871 = !DILocation(line: 369, column: 26, scope: !610, inlinedAt: !746)
!872 = !DILocation(line: 370, column: 6, scope: !615, inlinedAt: !746)
!873 = !DILocation(line: 370, column: 11, scope: !615, inlinedAt: !746)
!874 = !DILocation(line: 370, column: 6, scope: !473, inlinedAt: !746)
!875 = !DILocation(line: 370, column: 26, scope: !615, inlinedAt: !746)
!876 = !DILocation(line: 371, column: 6, scope: !620, inlinedAt: !746)
!877 = !DILocation(line: 371, column: 11, scope: !620, inlinedAt: !746)
!878 = !DILocation(line: 371, column: 6, scope: !473, inlinedAt: !746)
!879 = !DILocation(line: 371, column: 26, scope: !620, inlinedAt: !746)
!880 = !DILocation(line: 372, column: 6, scope: !625, inlinedAt: !746)
!881 = !DILocation(line: 372, column: 11, scope: !625, inlinedAt: !746)
!882 = !DILocation(line: 372, column: 6, scope: !473, inlinedAt: !746)
!883 = !DILocation(line: 372, column: 26, scope: !625, inlinedAt: !746)
!884 = !DILocation(line: 373, column: 6, scope: !630, inlinedAt: !746)
!885 = !DILocation(line: 373, column: 11, scope: !630, inlinedAt: !746)
!886 = !DILocation(line: 373, column: 6, scope: !473, inlinedAt: !746)
!887 = !DILocation(line: 373, column: 26, scope: !630, inlinedAt: !746)
!888 = !DILocation(line: 374, column: 6, scope: !635, inlinedAt: !746)
!889 = !DILocation(line: 374, column: 11, scope: !635, inlinedAt: !746)
!890 = !DILocation(line: 374, column: 6, scope: !473, inlinedAt: !746)
!891 = !DILocation(line: 374, column: 26, scope: !635, inlinedAt: !746)
!892 = !DILocation(line: 375, column: 6, scope: !640, inlinedAt: !746)
!893 = !DILocation(line: 375, column: 11, scope: !640, inlinedAt: !746)
!894 = !DILocation(line: 375, column: 6, scope: !473, inlinedAt: !746)
!895 = !DILocation(line: 375, column: 27, scope: !640, inlinedAt: !746)
!896 = !DILocation(line: 376, column: 6, scope: !645, inlinedAt: !746)
!897 = !DILocation(line: 376, column: 11, scope: !645, inlinedAt: !746)
!898 = !DILocation(line: 376, column: 6, scope: !473, inlinedAt: !746)
!899 = !DILocation(line: 376, column: 32, scope: !645, inlinedAt: !746)
!900 = !DILocation(line: 377, column: 6, scope: !650, inlinedAt: !746)
!901 = !DILocation(line: 377, column: 11, scope: !650, inlinedAt: !746)
!902 = !DILocation(line: 377, column: 6, scope: !473, inlinedAt: !746)
!903 = !DILocation(line: 377, column: 32, scope: !650, inlinedAt: !746)
!904 = !DILocation(line: 378, column: 6, scope: !655, inlinedAt: !746)
!905 = !DILocation(line: 378, column: 11, scope: !655, inlinedAt: !746)
!906 = !DILocation(line: 378, column: 6, scope: !473, inlinedAt: !746)
!907 = !DILocation(line: 378, column: 32, scope: !655, inlinedAt: !746)
!908 = !DILocation(line: 379, column: 6, scope: !660, inlinedAt: !746)
!909 = !DILocation(line: 379, column: 11, scope: !660, inlinedAt: !746)
!910 = !DILocation(line: 379, column: 6, scope: !473, inlinedAt: !746)
!911 = !DILocation(line: 379, column: 33, scope: !660, inlinedAt: !746)
!912 = !DILocation(line: 380, column: 6, scope: !665, inlinedAt: !746)
!913 = !DILocation(line: 380, column: 11, scope: !665, inlinedAt: !746)
!914 = !DILocation(line: 380, column: 6, scope: !473, inlinedAt: !746)
!915 = !DILocation(line: 380, column: 33, scope: !665, inlinedAt: !746)
!916 = !DILocation(line: 381, column: 6, scope: !670, inlinedAt: !746)
!917 = !DILocation(line: 381, column: 11, scope: !670, inlinedAt: !746)
!918 = !DILocation(line: 381, column: 6, scope: !473, inlinedAt: !746)
!919 = !DILocation(line: 381, column: 33, scope: !670, inlinedAt: !746)
!920 = !DILocation(line: 382, column: 2, scope: !675, inlinedAt: !746)
!921 = !DILocation(line: 382, column: 2, scope: !679, inlinedAt: !746)
!922 = !DILocation(line: 382, column: 2, scope: !680, inlinedAt: !746)
!923 = !DILocation(line: 386, column: 1, scope: !473, inlinedAt: !746)
!924 = !DILocation(line: 547, column: 9, scope: !456, inlinedAt: !738)
!925 = !DILocation(line: 549, column: 8, scope: !686, inlinedAt: !738)
!926 = !DILocation(line: 549, column: 7, scope: !456, inlinedAt: !738)
!927 = !DILocation(line: 550, column: 4, scope: !686, inlinedAt: !738)
!928 = !DILocation(line: 553, column: 33, scope: !456, inlinedAt: !738)
!929 = !DILocation(line: 325, column: 6, scope: !691, inlinedAt: !744)
!930 = !DILocation(line: 325, column: 6, scope: !467, inlinedAt: !744)
!931 = !DILocation(line: 326, column: 3, scope: !691, inlinedAt: !744)
!932 = !DILocation(line: 332, column: 9, scope: !467, inlinedAt: !744)
!933 = !DILocation(line: 332, column: 15, scope: !467, inlinedAt: !744)
!934 = !DILocation(line: 332, column: 2, scope: !467, inlinedAt: !744)
!935 = !DILocation(line: 336, column: 1, scope: !467, inlinedAt: !744)
!936 = !DILocation(line: 553, column: 5, scope: !456, inlinedAt: !738)
!937 = !DILocation(line: 553, column: 41, scope: !456, inlinedAt: !738)
!938 = !DILocation(line: 554, column: 5, scope: !456, inlinedAt: !738)
!939 = !DILocation(line: 554, column: 12, scope: !456, inlinedAt: !738)
!940 = !DILocation(line: 448, column: 31, scope: !448, inlinedAt: !737)
!941 = !DILocation(line: 448, column: 34, scope: !448, inlinedAt: !737)
!942 = !DILocation(line: 448, column: 14, scope: !448, inlinedAt: !737)
!943 = !DILocation(line: 450, column: 22, scope: !448, inlinedAt: !737)
!944 = !DILocation(line: 450, column: 25, scope: !448, inlinedAt: !737)
!945 = !DILocation(line: 450, column: 30, scope: !448, inlinedAt: !737)
!946 = !DILocation(line: 450, column: 36, scope: !448, inlinedAt: !737)
!947 = !DILocation(line: 450, column: 8, scope: !448, inlinedAt: !737)
!948 = !DILocation(line: 450, column: 6, scope: !448, inlinedAt: !737)
!949 = !DILocation(line: 451, column: 9, scope: !448, inlinedAt: !737)
!950 = !DILocation(line: 552, column: 3, scope: !456, inlinedAt: !738)
!951 = !DILocation(line: 557, column: 19, scope: !458, inlinedAt: !738)
!952 = !DILocation(line: 557, column: 25, scope: !458, inlinedAt: !738)
!953 = !DILocation(line: 557, column: 9, scope: !458, inlinedAt: !738)
!954 = !DILocation(line: 557, column: 2, scope: !458, inlinedAt: !738)
!955 = !DILocation(line: 558, column: 1, scope: !458, inlinedAt: !738)
!956 = !DILocation(line: 591, column: 3, scope: !739)
!957 = !DILocation(line: 592, column: 19, scope: !735)
!958 = !DILocation(line: 592, column: 26, scope: !735)
!959 = !DILocation(line: 592, column: 9, scope: !735)
!960 = !DILocation(line: 592, column: 2, scope: !735)
!961 = !DILocation(line: 593, column: 1, scope: !735)
!962 = distinct !DISubprogram(name: "__must_check_overflow", scope: !963, file: !963, line: 52, type: !964, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !101)
!963 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!964 = !DISubroutineType(types: !965)
!965 = !{!966, !966}
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !77, line: 30, baseType: !967)
!967 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!968 = !DILocalVariable(name: "overflow", arg: 1, scope: !962, file: !963, line: 52, type: !966)
!969 = !DILocation(line: 52, column: 60, scope: !962)
!970 = !DILocation(line: 54, column: 9, scope: !962)
!971 = !DILocation(line: 54, column: 2, scope: !962)
!972 = distinct !DISubprogram(name: "get_order", scope: !973, file: !973, line: 29, type: !974, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !101)
!973 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!974 = !DISubroutineType(types: !975)
!975 = !{!86, !431}
!976 = !DILocalVariable(name: "x", arg: 1, scope: !977, file: !978, line: 366, type: !28)
!977 = distinct !DISubprogram(name: "fls64", scope: !978, file: !978, line: 366, type: !979, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !101)
!978 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!979 = !DISubroutineType(types: !980)
!980 = !{!86, !28}
!981 = !DILocation(line: 366, column: 40, scope: !977, inlinedAt: !982)
!982 = distinct !DILocation(line: 46, column: 9, scope: !972)
!983 = !DILocalVariable(name: "bitpos", scope: !977, file: !978, line: 368, type: !86)
!984 = !DILocation(line: 368, column: 6, scope: !977, inlinedAt: !982)
!985 = !DILocalVariable(name: "size", arg: 1, scope: !972, file: !973, line: 29, type: !431)
!986 = !DILocation(line: 29, column: 63, scope: !972)
!987 = !DILocation(line: 31, column: 27, scope: !988)
!988 = distinct !DILexicalBlock(scope: !972, file: !973, line: 31, column: 6)
!989 = !DILocation(line: 31, column: 6, scope: !988)
!990 = !DILocation(line: 31, column: 6, scope: !972)
!991 = !DILocation(line: 32, column: 8, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !973, line: 32, column: 7)
!993 = distinct !DILexicalBlock(scope: !988, file: !973, line: 31, column: 34)
!994 = !DILocation(line: 32, column: 7, scope: !993)
!995 = !DILocation(line: 33, column: 4, scope: !992)
!996 = !DILocation(line: 35, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !993, file: !973, line: 35, column: 7)
!998 = !DILocation(line: 35, column: 12, scope: !997)
!999 = !DILocation(line: 35, column: 7, scope: !993)
!1000 = !DILocation(line: 36, column: 4, scope: !997)
!1001 = !DILocation(line: 38, column: 10, scope: !993)
!1002 = !DILocation(line: 38, column: 28, scope: !993)
!1003 = !DILocation(line: 38, column: 41, scope: !993)
!1004 = !DILocation(line: 38, column: 3, scope: !993)
!1005 = !DILocation(line: 41, column: 6, scope: !972)
!1006 = !DILocation(line: 42, column: 7, scope: !972)
!1007 = !DILocation(line: 46, column: 15, scope: !972)
!1008 = !DILocation(line: 374, column: 2, scope: !977, inlinedAt: !982)
!1009 = !DILocation(line: 376, column: 14, scope: !977, inlinedAt: !982)
!1010 = !{i32 320810}
!1011 = !DILocation(line: 377, column: 9, scope: !977, inlinedAt: !982)
!1012 = !DILocation(line: 377, column: 16, scope: !977, inlinedAt: !982)
!1013 = !DILocation(line: 46, column: 2, scope: !972)
!1014 = !DILocation(line: 48, column: 1, scope: !972)
!1015 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1016, file: !1016, line: 30, type: !1017, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !101)
!1016 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!86, !27}
!1019 = !DILocation(line: 366, column: 40, scope: !977, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 32, column: 9, scope: !1015)
!1021 = !DILocation(line: 368, column: 6, scope: !977, inlinedAt: !1020)
!1022 = !DILocalVariable(name: "n", arg: 1, scope: !1015, file: !1016, line: 30, type: !27)
!1023 = !DILocation(line: 30, column: 21, scope: !1015)
!1024 = !DILocation(line: 32, column: 15, scope: !1015)
!1025 = !DILocation(line: 374, column: 2, scope: !977, inlinedAt: !1020)
!1026 = !DILocation(line: 376, column: 14, scope: !977, inlinedAt: !1020)
!1027 = !DILocation(line: 377, column: 9, scope: !977, inlinedAt: !1020)
!1028 = !DILocation(line: 377, column: 16, scope: !977, inlinedAt: !1020)
!1029 = !DILocation(line: 32, column: 18, scope: !1015)
!1030 = !DILocation(line: 32, column: 2, scope: !1015)
!1031 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1032, file: !1032, line: 137, type: !1033, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !101)
!1032 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!61, !451, !1035, !427, !76}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1037 = !DILocalVariable(name: "s", arg: 1, scope: !1031, file: !1032, line: 137, type: !451)
!1038 = !DILocation(line: 137, column: 54, scope: !1031)
!1039 = !DILocalVariable(name: "object", arg: 2, scope: !1031, file: !1032, line: 137, type: !1035)
!1040 = !DILocation(line: 137, column: 69, scope: !1031)
!1041 = !DILocalVariable(name: "size", arg: 3, scope: !1031, file: !1032, line: 138, type: !427)
!1042 = !DILocation(line: 138, column: 12, scope: !1031)
!1043 = !DILocalVariable(name: "flags", arg: 4, scope: !1031, file: !1032, line: 138, type: !76)
!1044 = !DILocation(line: 138, column: 24, scope: !1031)
!1045 = !DILocation(line: 140, column: 17, scope: !1031)
!1046 = !DILocation(line: 140, column: 2, scope: !1031)
