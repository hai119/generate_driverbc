; ModuleID = '../bcout/drivers/acpi/acpica/utbuffer.llvm.bc'
source_filename = "drivers/acpi/acpica/utbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

@.str = private unnamed_addr constant [36 x i8] c"Null Buffer Pointer in DumpBuffer!\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%8.4X: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%04X \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%08X \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"// \00", align 1
@_ctype = external dso_local constant [0 x i8], align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c".\00", align 1
@acpi_dbg_level = external dso_local global i32, align 4
@acpi_dbg_layer = external dso_local global i32, align 4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_dump_buffer(i8* %buffer, i32 %count, i32 %display, i32 %base_offset) #0 !dbg !27 {
entry:
  %buffer.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %display.addr = alloca i32, align 4
  %base_offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp32 = alloca i32, align 4
  %buf_char = alloca i8, align 1
  %display_data_only = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 %display, i32* %display.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %display.addr, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 %base_offset, i32* %base_offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base_offset.addr, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %i, metadata !41, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %i, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %j, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %temp32, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i8* %buf_char, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %display_data_only, metadata !49, metadata !DIExpression()), !dbg !50
  %0 = load i32, i32* %display.addr, align 4, !dbg !51
  %and = and i32 %0, 16, !dbg !52
  store i32 %and, i32* %display_data_only, align 4, !dbg !50
  %1 = load i32, i32* %display.addr, align 4, !dbg !53
  %and1 = and i32 %1, -17, !dbg !53
  store i32 %and1, i32* %display.addr, align 4, !dbg !53
  %2 = load i8*, i8** %buffer.addr, align 8, !dbg !54
  %tobool = icmp ne i8* %2, null, !dbg !54
  br i1 %tobool, label %if.end, label %if.then, !dbg !56

if.then:                                          ; preds = %entry
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0)) #3, !dbg !57
  br label %return, !dbg !59

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %count.addr, align 4, !dbg !60
  %cmp = icmp ult i32 %3, 4, !dbg !62
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !63

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %count.addr, align 4, !dbg !64
  %and2 = and i32 %4, 1, !dbg !65
  %tobool3 = icmp ne i32 %and2, 0, !dbg !65
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !66

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %display.addr, align 4, !dbg !67
  br label %if.end5, !dbg !69

if.end5:                                          ; preds = %if.then4, %lor.lhs.false
  br label %while.cond, !dbg !70

while.cond:                                       ; preds = %if.end71, %if.end5
  %5 = load i32, i32* %i, align 4, !dbg !71
  %6 = load i32, i32* %count.addr, align 4, !dbg !72
  %cmp6 = icmp ult i32 %5, %6, !dbg !73
  br i1 %cmp6, label %while.body, label %while.end, !dbg !70

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %display_data_only, align 4, !dbg !74
  %tobool7 = icmp ne i32 %7, 0, !dbg !74
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !77

if.then8:                                         ; preds = %while.body
  %8 = load i32, i32* %base_offset.addr, align 4, !dbg !78
  %9 = load i32, i32* %i, align 4, !dbg !80
  %add = add i32 %8, %9, !dbg !81
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %add) #3, !dbg !82
  br label %if.end9, !dbg !83

if.end9:                                          ; preds = %if.then8, %while.body
  store i32 0, i32* %j, align 4, !dbg !84
  br label %for.cond, !dbg !86

for.cond:                                         ; preds = %sw.epilog, %if.then13, %if.end9
  %10 = load i32, i32* %j, align 4, !dbg !87
  %cmp10 = icmp ult i32 %10, 16, !dbg !89
  br i1 %cmp10, label %for.body, label %for.end, !dbg !90

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !dbg !91
  %12 = load i32, i32* %j, align 4, !dbg !94
  %add11 = add i32 %11, %12, !dbg !95
  %13 = load i32, i32* %count.addr, align 4, !dbg !96
  %cmp12 = icmp uge i32 %add11, %13, !dbg !97
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !98

if.then13:                                        ; preds = %for.body
  %14 = load i32, i32* %display.addr, align 4, !dbg !99
  %mul = mul i32 %14, 2, !dbg !101
  %add14 = add i32 %mul, 1, !dbg !102
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %add14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !103
  %15 = load i32, i32* %display.addr, align 4, !dbg !104
  %16 = load i32, i32* %j, align 4, !dbg !105
  %add15 = add i32 %16, %15, !dbg !105
  store i32 %add15, i32* %j, align 4, !dbg !105
  br label %for.cond, !dbg !106, !llvm.loop !107

if.end16:                                         ; preds = %for.body
  %17 = load i32, i32* %display.addr, align 4, !dbg !109
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
    i32 4, label %sw.bb26
    i32 8, label %sw.bb31
  ], !dbg !110

sw.bb:                                            ; preds = %if.end16
  br label %sw.default, !dbg !111

sw.default:                                       ; preds = %if.end16, %sw.bb
  %18 = load i8*, i8** %buffer.addr, align 8, !dbg !112
  %19 = load i32, i32* %i, align 4, !dbg !114
  %conv = zext i32 %19 to i64, !dbg !115
  %20 = load i32, i32* %j, align 4, !dbg !116
  %conv17 = zext i32 %20 to i64, !dbg !116
  %add18 = add i64 %conv, %conv17, !dbg !117
  %arrayidx = getelementptr i8, i8* %18, i64 %add18, !dbg !112
  %21 = load i8, i8* %arrayidx, align 1, !dbg !112
  %conv19 = zext i8 %21 to i32, !dbg !112
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %conv19) #3, !dbg !118
  br label %sw.epilog, !dbg !119

sw.bb20:                                          ; preds = %if.end16
  %22 = load i8*, i8** %buffer.addr, align 8, !dbg !120
  %23 = load i32, i32* %i, align 4, !dbg !120
  %conv21 = zext i32 %23 to i64, !dbg !120
  %24 = load i32, i32* %j, align 4, !dbg !120
  %conv22 = zext i32 %24 to i64, !dbg !120
  %add23 = add i64 %conv21, %conv22, !dbg !120
  %arrayidx24 = getelementptr i8, i8* %22, i64 %add23, !dbg !120
  %25 = bitcast i8* %arrayidx24 to i16*, !dbg !120
  %26 = load i16, i16* %25, align 2, !dbg !120
  %conv25 = zext i16 %26 to i32, !dbg !120
  %27 = bitcast i32* %temp32 to i8*, !dbg !120
  %28 = bitcast i8* %27 to i32*, !dbg !120
  store i32 %conv25, i32* %28, align 4, !dbg !120
  %29 = load i32, i32* %temp32, align 4, !dbg !121
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %29) #3, !dbg !122
  br label %sw.epilog, !dbg !123

sw.bb26:                                          ; preds = %if.end16
  %30 = load i8*, i8** %buffer.addr, align 8, !dbg !124
  %31 = load i32, i32* %i, align 4, !dbg !124
  %conv27 = zext i32 %31 to i64, !dbg !124
  %32 = load i32, i32* %j, align 4, !dbg !124
  %conv28 = zext i32 %32 to i64, !dbg !124
  %add29 = add i64 %conv27, %conv28, !dbg !124
  %arrayidx30 = getelementptr i8, i8* %30, i64 %add29, !dbg !124
  %33 = bitcast i8* %arrayidx30 to i32*, !dbg !124
  %34 = load i32, i32* %33, align 4, !dbg !124
  %35 = bitcast i32* %temp32 to i8*, !dbg !124
  %36 = bitcast i8* %35 to i32*, !dbg !124
  store i32 %34, i32* %36, align 4, !dbg !124
  %37 = load i32, i32* %temp32, align 4, !dbg !125
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %37) #3, !dbg !126
  br label %sw.epilog, !dbg !127

sw.bb31:                                          ; preds = %if.end16
  %38 = load i8*, i8** %buffer.addr, align 8, !dbg !128
  %39 = load i32, i32* %i, align 4, !dbg !128
  %conv32 = zext i32 %39 to i64, !dbg !128
  %40 = load i32, i32* %j, align 4, !dbg !128
  %conv33 = zext i32 %40 to i64, !dbg !128
  %add34 = add i64 %conv32, %conv33, !dbg !128
  %arrayidx35 = getelementptr i8, i8* %38, i64 %add34, !dbg !128
  %41 = bitcast i8* %arrayidx35 to i32*, !dbg !128
  %42 = load i32, i32* %41, align 4, !dbg !128
  %43 = bitcast i32* %temp32 to i8*, !dbg !128
  %44 = bitcast i8* %43 to i32*, !dbg !128
  store i32 %42, i32* %44, align 4, !dbg !128
  %45 = load i32, i32* %temp32, align 4, !dbg !129
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %45) #3, !dbg !130
  %46 = load i8*, i8** %buffer.addr, align 8, !dbg !131
  %47 = load i32, i32* %i, align 4, !dbg !131
  %conv36 = zext i32 %47 to i64, !dbg !131
  %48 = load i32, i32* %j, align 4, !dbg !131
  %conv37 = zext i32 %48 to i64, !dbg !131
  %add38 = add i64 %conv36, %conv37, !dbg !131
  %add39 = add i64 %add38, 4, !dbg !131
  %arrayidx40 = getelementptr i8, i8* %46, i64 %add39, !dbg !131
  %49 = bitcast i8* %arrayidx40 to i32*, !dbg !131
  %50 = load i32, i32* %49, align 4, !dbg !131
  %51 = bitcast i32* %temp32 to i8*, !dbg !131
  %52 = bitcast i8* %51 to i32*, !dbg !131
  store i32 %50, i32* %52, align 4, !dbg !131
  %53 = load i32, i32* %temp32, align 4, !dbg !132
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %53) #3, !dbg !133
  br label %sw.epilog, !dbg !134

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb26, %sw.bb20, %sw.default
  %54 = load i32, i32* %display.addr, align 4, !dbg !135
  %55 = load i32, i32* %j, align 4, !dbg !136
  %add41 = add i32 %55, %54, !dbg !136
  store i32 %add41, i32* %j, align 4, !dbg !136
  br label %for.cond, !dbg !137, !llvm.loop !107

for.end:                                          ; preds = %for.cond
  %56 = load i32, i32* %display_data_only, align 4, !dbg !138
  %tobool42 = icmp ne i32 %56, 0, !dbg !138
  br i1 %tobool42, label %if.end71, label %if.then43, !dbg !140

if.then43:                                        ; preds = %for.end
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !141
  store i32 0, i32* %j, align 4, !dbg !143
  br label %for.cond44, !dbg !145

for.cond44:                                       ; preds = %for.inc, %if.then43
  %57 = load i32, i32* %j, align 4, !dbg !146
  %cmp45 = icmp ult i32 %57, 16, !dbg !148
  br i1 %cmp45, label %for.body47, label %for.end70, !dbg !149

for.body47:                                       ; preds = %for.cond44
  %58 = load i32, i32* %i, align 4, !dbg !150
  %59 = load i32, i32* %j, align 4, !dbg !153
  %add48 = add i32 %58, %59, !dbg !154
  %60 = load i32, i32* %count.addr, align 4, !dbg !155
  %cmp49 = icmp uge i32 %add48, %60, !dbg !156
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !157

if.then51:                                        ; preds = %for.body47
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #3, !dbg !158
  br label %return, !dbg !160

if.end52:                                         ; preds = %for.body47
  %61 = load i32, i32* %j, align 4, !dbg !161
  %cmp53 = icmp eq i32 %61, 0, !dbg !163
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !164

if.then55:                                        ; preds = %if.end52
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #3, !dbg !165
  br label %if.end56, !dbg !167

if.end56:                                         ; preds = %if.then55, %if.end52
  %62 = load i8*, i8** %buffer.addr, align 8, !dbg !168
  %63 = load i32, i32* %i, align 4, !dbg !169
  %conv57 = zext i32 %63 to i64, !dbg !170
  %64 = load i32, i32* %j, align 4, !dbg !171
  %conv58 = zext i32 %64 to i64, !dbg !171
  %add59 = add i64 %conv57, %conv58, !dbg !172
  %arrayidx60 = getelementptr i8, i8* %62, i64 %add59, !dbg !168
  %65 = load i8, i8* %arrayidx60, align 1, !dbg !168
  store i8 %65, i8* %buf_char, align 1, !dbg !173
  %66 = load i8, i8* %buf_char, align 1, !dbg !174
  %conv61 = zext i8 %66 to i32, !dbg !174
  %idxprom = sext i32 %conv61 to i64, !dbg !174
  %arrayidx62 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !174
  %67 = load i8, i8* %arrayidx62, align 1, !dbg !174
  %conv63 = zext i8 %67 to i32, !dbg !174
  %and64 = and i32 %conv63, 151, !dbg !174
  %cmp65 = icmp ne i32 %and64, 0, !dbg !174
  br i1 %cmp65, label %if.then67, label %if.else, !dbg !176

if.then67:                                        ; preds = %if.end56
  %68 = load i8, i8* %buf_char, align 1, !dbg !177
  %conv68 = zext i8 %68 to i32, !dbg !177
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %conv68) #3, !dbg !179
  br label %if.end69, !dbg !180

if.else:                                          ; preds = %if.end56
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #3, !dbg !181
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then67
  br label %for.inc, !dbg !183

for.inc:                                          ; preds = %if.end69
  %69 = load i32, i32* %j, align 4, !dbg !184
  %inc = add i32 %69, 1, !dbg !184
  store i32 %inc, i32* %j, align 4, !dbg !184
  br label %for.cond44, !dbg !185, !llvm.loop !186

for.end70:                                        ; preds = %for.cond44
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #3, !dbg !188
  br label %if.end71, !dbg !189

if.end71:                                         ; preds = %for.end70, %for.end
  %70 = load i32, i32* %i, align 4, !dbg !190
  %add72 = add i32 %70, 16, !dbg !190
  store i32 %add72, i32* %i, align 4, !dbg !190
  br label %while.cond, !dbg !70, !llvm.loop !191

while.end:                                        ; preds = %while.cond
  br label %return, !dbg !193

return:                                           ; preds = %while.end, %if.then51, %if.then
  ret void, !dbg !194
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_os_printf(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_debug_dump_buffer(i8* %buffer, i32 %count, i32 %display, i32 %component_id) #0 !dbg !195 {
entry:
  %buffer.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %display.addr = alloca i32, align 4
  %component_id.addr = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !196, metadata !DIExpression()), !dbg !197
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !198, metadata !DIExpression()), !dbg !199
  store i32 %display, i32* %display.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %display.addr, metadata !200, metadata !DIExpression()), !dbg !201
  store i32 %component_id, i32* %component_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %component_id.addr, metadata !202, metadata !DIExpression()), !dbg !203
  %0 = load i32, i32* @acpi_dbg_level, align 4, !dbg !204
  %and = and i32 8192, %0, !dbg !206
  %tobool = icmp ne i32 %and, 0, !dbg !206
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !207

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %component_id.addr, align 4, !dbg !208
  %2 = load i32, i32* @acpi_dbg_layer, align 4, !dbg !209
  %and1 = and i32 %1, %2, !dbg !210
  %tobool2 = icmp ne i32 %and1, 0, !dbg !210
  br i1 %tobool2, label %if.end, label %if.then, !dbg !211

if.then:                                          ; preds = %land.lhs.true, %entry
  br label %return, !dbg !212

if.end:                                           ; preds = %land.lhs.true
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !214
  %4 = load i32, i32* %count.addr, align 4, !dbg !215
  %5 = load i32, i32* %display.addr, align 4, !dbg !216
  call void @acpi_ut_dump_buffer(i8* %3, i32 %4, i32 %5, i32 0) #3, !dbg !217
  br label %return, !dbg !218

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !218
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utbuffer.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !11, !15, !16, !20, !21}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !5, line: 127, baseType: !6)
!5 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !14)
!14 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !19)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !{i32 7, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"Code Model", i32 2}
!26 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!27 = distinct !DISubprogram(name: "acpi_ut_dump_buffer", scope: !1, file: !1, line: 34, type: !28, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !17, !17, !17}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !21)
!33 = !DILocalVariable(name: "buffer", arg: 1, scope: !27, file: !1, line: 34, type: !30)
!34 = !DILocation(line: 34, column: 30, scope: !27)
!35 = !DILocalVariable(name: "count", arg: 2, scope: !27, file: !1, line: 34, type: !17)
!36 = !DILocation(line: 34, column: 42, scope: !27)
!37 = !DILocalVariable(name: "display", arg: 3, scope: !27, file: !1, line: 34, type: !17)
!38 = !DILocation(line: 34, column: 53, scope: !27)
!39 = !DILocalVariable(name: "base_offset", arg: 4, scope: !27, file: !1, line: 34, type: !17)
!40 = !DILocation(line: 34, column: 66, scope: !27)
!41 = !DILocalVariable(name: "i", scope: !27, file: !1, line: 36, type: !17)
!42 = !DILocation(line: 36, column: 6, scope: !27)
!43 = !DILocalVariable(name: "j", scope: !27, file: !1, line: 37, type: !17)
!44 = !DILocation(line: 37, column: 6, scope: !27)
!45 = !DILocalVariable(name: "temp32", scope: !27, file: !1, line: 38, type: !17)
!46 = !DILocation(line: 38, column: 6, scope: !27)
!47 = !DILocalVariable(name: "buf_char", scope: !27, file: !1, line: 39, type: !31)
!48 = !DILocation(line: 39, column: 5, scope: !27)
!49 = !DILocalVariable(name: "display_data_only", scope: !27, file: !1, line: 40, type: !17)
!50 = !DILocation(line: 40, column: 6, scope: !27)
!51 = !DILocation(line: 40, column: 26, scope: !27)
!52 = !DILocation(line: 40, column: 34, scope: !27)
!53 = !DILocation(line: 42, column: 10, scope: !27)
!54 = !DILocation(line: 43, column: 7, scope: !55)
!55 = distinct !DILexicalBlock(scope: !27, file: !1, line: 43, column: 6)
!56 = !DILocation(line: 43, column: 6, scope: !27)
!57 = !DILocation(line: 44, column: 3, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 43, column: 15)
!59 = !DILocation(line: 45, column: 3, scope: !58)
!60 = !DILocation(line: 48, column: 7, scope: !61)
!61 = distinct !DILexicalBlock(scope: !27, file: !1, line: 48, column: 6)
!62 = !DILocation(line: 48, column: 13, scope: !61)
!63 = !DILocation(line: 48, column: 18, scope: !61)
!64 = !DILocation(line: 48, column: 22, scope: !61)
!65 = !DILocation(line: 48, column: 28, scope: !61)
!66 = !DILocation(line: 48, column: 6, scope: !27)
!67 = !DILocation(line: 49, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !61, file: !1, line: 48, column: 37)
!69 = !DILocation(line: 50, column: 2, scope: !68)
!70 = !DILocation(line: 54, column: 2, scope: !27)
!71 = !DILocation(line: 54, column: 9, scope: !27)
!72 = !DILocation(line: 54, column: 13, scope: !27)
!73 = !DILocation(line: 54, column: 11, scope: !27)
!74 = !DILocation(line: 58, column: 8, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 58, column: 7)
!76 = distinct !DILexicalBlock(scope: !27, file: !1, line: 54, column: 20)
!77 = !DILocation(line: 58, column: 7, scope: !76)
!78 = !DILocation(line: 59, column: 31, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 58, column: 27)
!80 = !DILocation(line: 59, column: 45, scope: !79)
!81 = !DILocation(line: 59, column: 43, scope: !79)
!82 = !DILocation(line: 59, column: 4, scope: !79)
!83 = !DILocation(line: 60, column: 3, scope: !79)
!84 = !DILocation(line: 64, column: 10, scope: !85)
!85 = distinct !DILexicalBlock(scope: !76, file: !1, line: 64, column: 3)
!86 = !DILocation(line: 64, column: 8, scope: !85)
!87 = !DILocation(line: 64, column: 15, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 64, column: 3)
!89 = !DILocation(line: 64, column: 17, scope: !88)
!90 = !DILocation(line: 64, column: 3, scope: !85)
!91 = !DILocation(line: 65, column: 8, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 65, column: 8)
!93 = distinct !DILexicalBlock(scope: !88, file: !1, line: 64, column: 24)
!94 = !DILocation(line: 65, column: 12, scope: !92)
!95 = !DILocation(line: 65, column: 10, scope: !92)
!96 = !DILocation(line: 65, column: 17, scope: !92)
!97 = !DILocation(line: 65, column: 14, scope: !92)
!98 = !DILocation(line: 65, column: 8, scope: !93)
!99 = !DILocation(line: 69, column: 29, scope: !100)
!100 = distinct !DILexicalBlock(scope: !92, file: !1, line: 65, column: 24)
!101 = !DILocation(line: 69, column: 37, scope: !100)
!102 = !DILocation(line: 69, column: 42, scope: !100)
!103 = !DILocation(line: 69, column: 5, scope: !100)
!104 = !DILocation(line: 70, column: 10, scope: !100)
!105 = !DILocation(line: 70, column: 7, scope: !100)
!106 = !DILocation(line: 71, column: 5, scope: !100)
!107 = distinct !{!107, !90, !108}
!108 = !DILocation(line: 110, column: 3, scope: !85)
!109 = !DILocation(line: 74, column: 12, scope: !93)
!110 = !DILocation(line: 74, column: 4, scope: !93)
!111 = !DILocation(line: 74, column: 21, scope: !93)
!112 = !DILocation(line: 79, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !93, file: !1, line: 74, column: 21)
!114 = !DILocation(line: 79, column: 31, scope: !113)
!115 = !DILocation(line: 79, column: 20, scope: !113)
!116 = !DILocation(line: 79, column: 35, scope: !113)
!117 = !DILocation(line: 79, column: 33, scope: !113)
!118 = !DILocation(line: 78, column: 5, scope: !113)
!119 = !DILocation(line: 80, column: 5, scope: !113)
!120 = !DILocation(line: 84, column: 5, scope: !113)
!121 = !DILocation(line: 86, column: 29, scope: !113)
!122 = !DILocation(line: 86, column: 5, scope: !113)
!123 = !DILocation(line: 87, column: 5, scope: !113)
!124 = !DILocation(line: 91, column: 5, scope: !113)
!125 = !DILocation(line: 93, column: 29, scope: !113)
!126 = !DILocation(line: 93, column: 5, scope: !113)
!127 = !DILocation(line: 94, column: 5, scope: !113)
!128 = !DILocation(line: 98, column: 5, scope: !113)
!129 = !DILocation(line: 100, column: 28, scope: !113)
!130 = !DILocation(line: 100, column: 5, scope: !113)
!131 = !DILocation(line: 102, column: 5, scope: !113)
!132 = !DILocation(line: 105, column: 29, scope: !113)
!133 = !DILocation(line: 105, column: 5, scope: !113)
!134 = !DILocation(line: 106, column: 5, scope: !113)
!135 = !DILocation(line: 109, column: 9, scope: !93)
!136 = !DILocation(line: 109, column: 6, scope: !93)
!137 = !DILocation(line: 64, column: 3, scope: !88)
!138 = !DILocation(line: 116, column: 8, scope: !139)
!139 = distinct !DILexicalBlock(scope: !76, file: !1, line: 116, column: 7)
!140 = !DILocation(line: 116, column: 7, scope: !76)
!141 = !DILocation(line: 117, column: 4, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !1, line: 116, column: 27)
!143 = !DILocation(line: 118, column: 11, scope: !144)
!144 = distinct !DILexicalBlock(scope: !142, file: !1, line: 118, column: 4)
!145 = !DILocation(line: 118, column: 9, scope: !144)
!146 = !DILocation(line: 118, column: 16, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !1, line: 118, column: 4)
!148 = !DILocation(line: 118, column: 18, scope: !147)
!149 = !DILocation(line: 118, column: 4, scope: !144)
!150 = !DILocation(line: 119, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 119, column: 9)
!152 = distinct !DILexicalBlock(scope: !147, file: !1, line: 118, column: 29)
!153 = !DILocation(line: 119, column: 13, scope: !151)
!154 = !DILocation(line: 119, column: 11, scope: !151)
!155 = !DILocation(line: 119, column: 18, scope: !151)
!156 = !DILocation(line: 119, column: 15, scope: !151)
!157 = !DILocation(line: 119, column: 9, scope: !152)
!158 = !DILocation(line: 120, column: 6, scope: !159)
!159 = distinct !DILexicalBlock(scope: !151, file: !1, line: 119, column: 25)
!160 = !DILocation(line: 121, column: 6, scope: !159)
!161 = !DILocation(line: 128, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !152, file: !1, line: 128, column: 9)
!163 = !DILocation(line: 128, column: 11, scope: !162)
!164 = !DILocation(line: 128, column: 9, scope: !152)
!165 = !DILocation(line: 129, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 128, column: 17)
!167 = !DILocation(line: 130, column: 5, scope: !166)
!168 = !DILocation(line: 132, column: 16, scope: !152)
!169 = !DILocation(line: 132, column: 34, scope: !152)
!170 = !DILocation(line: 132, column: 23, scope: !152)
!171 = !DILocation(line: 132, column: 38, scope: !152)
!172 = !DILocation(line: 132, column: 36, scope: !152)
!173 = !DILocation(line: 132, column: 14, scope: !152)
!174 = !DILocation(line: 133, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !152, file: !1, line: 133, column: 9)
!176 = !DILocation(line: 133, column: 9, scope: !152)
!177 = !DILocation(line: 134, column: 27, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !1, line: 133, column: 28)
!179 = !DILocation(line: 134, column: 6, scope: !178)
!180 = !DILocation(line: 135, column: 5, scope: !178)
!181 = !DILocation(line: 136, column: 6, scope: !182)
!182 = distinct !DILexicalBlock(scope: !175, file: !1, line: 135, column: 12)
!183 = !DILocation(line: 138, column: 4, scope: !152)
!184 = !DILocation(line: 118, column: 25, scope: !147)
!185 = !DILocation(line: 118, column: 4, scope: !147)
!186 = distinct !{!186, !149, !187}
!187 = !DILocation(line: 138, column: 4, scope: !144)
!188 = !DILocation(line: 142, column: 4, scope: !142)
!189 = !DILocation(line: 143, column: 3, scope: !142)
!190 = !DILocation(line: 144, column: 5, scope: !76)
!191 = distinct !{!191, !70, !192}
!192 = !DILocation(line: 145, column: 2, scope: !27)
!193 = !DILocation(line: 147, column: 2, scope: !27)
!194 = !DILocation(line: 148, column: 1, scope: !27)
!195 = distinct !DISubprogram(name: "acpi_ut_debug_dump_buffer", scope: !1, file: !1, line: 170, type: !28, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!196 = !DILocalVariable(name: "buffer", arg: 1, scope: !195, file: !1, line: 170, type: !30)
!197 = !DILocation(line: 170, column: 31, scope: !195)
!198 = !DILocalVariable(name: "count", arg: 2, scope: !195, file: !1, line: 170, type: !17)
!199 = !DILocation(line: 170, column: 43, scope: !195)
!200 = !DILocalVariable(name: "display", arg: 3, scope: !195, file: !1, line: 170, type: !17)
!201 = !DILocation(line: 170, column: 54, scope: !195)
!202 = !DILocalVariable(name: "component_id", arg: 4, scope: !195, file: !1, line: 170, type: !17)
!203 = !DILocation(line: 170, column: 67, scope: !195)
!204 = !DILocation(line: 175, column: 26, scope: !205)
!205 = distinct !DILexicalBlock(scope: !195, file: !1, line: 175, column: 6)
!206 = !DILocation(line: 175, column: 24, scope: !205)
!207 = !DILocation(line: 175, column: 42, scope: !205)
!208 = !DILocation(line: 176, column: 9, scope: !205)
!209 = !DILocation(line: 176, column: 24, scope: !205)
!210 = !DILocation(line: 176, column: 22, scope: !205)
!211 = !DILocation(line: 175, column: 6, scope: !195)
!212 = !DILocation(line: 177, column: 3, scope: !213)
!213 = distinct !DILexicalBlock(scope: !205, file: !1, line: 176, column: 42)
!214 = !DILocation(line: 180, column: 22, scope: !195)
!215 = !DILocation(line: 180, column: 30, scope: !195)
!216 = !DILocation(line: 180, column: 37, scope: !195)
!217 = !DILocation(line: 180, column: 2, scope: !195)
!218 = !DILocation(line: 181, column: 1, scope: !195)
