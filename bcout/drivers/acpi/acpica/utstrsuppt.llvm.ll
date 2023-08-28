; ModuleID = '../bcout/drivers/acpi/acpica/utstrsuppt.llvm.bc'
source_filename = "drivers/acpi/acpica/utstrsuppt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

@_ctype = external dso_local constant [0 x i8], align 1
@acpi_gbl_integer_bit_width = external dso_local global i8, align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_convert_octal_string(i8* %string, i64* %return_value_ptr) #0 !dbg !24 {
entry:
  %string.addr = alloca i8*, align 8
  %return_value_ptr.addr = alloca i64*, align 8
  %accumulated_value = alloca i64, align 8
  %status = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !29, metadata !DIExpression()), !dbg !30
  store i64* %return_value_ptr, i64** %return_value_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %return_value_ptr.addr, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i64* %accumulated_value, metadata !33, metadata !DIExpression()), !dbg !34
  store i64 0, i64* %accumulated_value, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %status, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %status, align 4, !dbg !36
  br label %while.cond, !dbg !37

while.cond:                                       ; preds = %if.end8, %entry
  %0 = load i8*, i8** %string.addr, align 8, !dbg !38
  %1 = load i8, i8* %0, align 1, !dbg !39
  %tobool = icmp ne i8 %1, 0, !dbg !37
  br i1 %tobool, label %while.body, label %while.end, !dbg !37

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %string.addr, align 8, !dbg !40
  %3 = load i8, i8* %2, align 1, !dbg !40
  %conv = sext i8 %3 to i32, !dbg !40
  %cmp = icmp sge i32 %conv, 48, !dbg !40
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !40

land.lhs.true:                                    ; preds = %while.body
  %4 = load i8*, i8** %string.addr, align 8, !dbg !40
  %5 = load i8, i8* %4, align 1, !dbg !40
  %conv2 = sext i8 %5 to i32, !dbg !40
  %cmp3 = icmp sle i32 %conv2, 55, !dbg !40
  br i1 %cmp3, label %if.end, label %if.then, !dbg !43

if.then:                                          ; preds = %land.lhs.true, %while.body
  br label %while.end, !dbg !44

if.end:                                           ; preds = %land.lhs.true
  %6 = load i8*, i8** %string.addr, align 8, !dbg !46
  %7 = load i8, i8* %6, align 1, !dbg !47
  %conv5 = sext i8 %7 to i32, !dbg !47
  %call = call i32 @acpi_ut_insert_digit(i64* %accumulated_value, i32 8, i32 %conv5) #3, !dbg !48
  store i32 %call, i32* %status, align 4, !dbg !49
  %8 = load i32, i32* %status, align 4, !dbg !50
  %tobool6 = icmp ne i32 %8, 0, !dbg !50
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !52

if.then7:                                         ; preds = %if.end
  store i32 34, i32* %status, align 4, !dbg !53
  br label %while.end, !dbg !55

if.end8:                                          ; preds = %if.end
  %9 = load i8*, i8** %string.addr, align 8, !dbg !56
  %incdec.ptr = getelementptr i8, i8* %9, i32 1, !dbg !56
  store i8* %incdec.ptr, i8** %string.addr, align 8, !dbg !56
  br label %while.cond, !dbg !37, !llvm.loop !57

while.end:                                        ; preds = %if.then7, %if.then, %while.cond
  %10 = load i64, i64* %accumulated_value, align 8, !dbg !59
  %11 = load i64*, i64** %return_value_ptr.addr, align 8, !dbg !60
  store i64 %10, i64* %11, align 8, !dbg !61
  %12 = load i32, i32* %status, align 4, !dbg !62
  ret i32 %12, !dbg !63
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_insert_digit(i64* %accumulated_value, i32 %base, i32 %ascii_digit) #0 !dbg !64 {
entry:
  %retval = alloca i32, align 4
  %accumulated_value.addr = alloca i64*, align 8
  %base.addr = alloca i32, align 4
  %ascii_digit.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %product = alloca i64, align 8
  store i64* %accumulated_value, i64** %accumulated_value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %accumulated_value.addr, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !69, metadata !DIExpression()), !dbg !70
  store i32 %ascii_digit, i32* %ascii_digit.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ascii_digit.addr, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %status, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i64* %product, metadata !75, metadata !DIExpression()), !dbg !76
  %0 = load i64*, i64** %accumulated_value.addr, align 8, !dbg !77
  %1 = load i64, i64* %0, align 8, !dbg !78
  %2 = load i32, i32* %base.addr, align 4, !dbg !79
  %call = call i32 @acpi_ut_strtoul_multiply64(i64 %1, i32 %2, i64* %product) #3, !dbg !80
  store i32 %call, i32* %status, align 4, !dbg !81
  %3 = load i32, i32* %status, align 4, !dbg !82
  %tobool = icmp ne i32 %3, 0, !dbg !82
  br i1 %tobool, label %if.then, label %if.end, !dbg !84

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %status, align 4, !dbg !85
  store i32 %4, i32* %retval, align 4, !dbg !87
  br label %return, !dbg !87

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %product, align 8, !dbg !88
  %6 = load i32, i32* %ascii_digit.addr, align 4, !dbg !89
  %call1 = call zeroext i8 @acpi_ut_ascii_char_to_hex(i32 %6) #3, !dbg !90
  %conv = zext i8 %call1 to i32, !dbg !90
  %7 = load i64*, i64** %accumulated_value.addr, align 8, !dbg !91
  %call2 = call i32 @acpi_ut_strtoul_add64(i64 %5, i32 %conv, i64* %7) #3, !dbg !92
  store i32 %call2, i32* %status, align 4, !dbg !93
  %8 = load i32, i32* %status, align 4, !dbg !94
  store i32 %8, i32* %retval, align 4, !dbg !95
  br label %return, !dbg !95

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !96
  ret i32 %9, !dbg !96
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_convert_decimal_string(i8* %string, i64* %return_value_ptr) #0 !dbg !97 {
entry:
  %string.addr = alloca i8*, align 8
  %return_value_ptr.addr = alloca i64*, align 8
  %accumulated_value = alloca i64, align 8
  %status = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !98, metadata !DIExpression()), !dbg !99
  store i64* %return_value_ptr, i64** %return_value_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %return_value_ptr.addr, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata i64* %accumulated_value, metadata !102, metadata !DIExpression()), !dbg !103
  store i64 0, i64* %accumulated_value, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %status, metadata !104, metadata !DIExpression()), !dbg !105
  store i32 0, i32* %status, align 4, !dbg !105
  br label %while.cond, !dbg !106

while.cond:                                       ; preds = %if.end6, %entry
  %0 = load i8*, i8** %string.addr, align 8, !dbg !107
  %1 = load i8, i8* %0, align 1, !dbg !108
  %tobool = icmp ne i8 %1, 0, !dbg !106
  br i1 %tobool, label %while.body, label %while.end, !dbg !106

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %string.addr, align 8, !dbg !109
  %3 = load i8, i8* %2, align 1, !dbg !112
  %conv = sext i8 %3 to i32, !dbg !112
  %call = call i32 @isdigit(i32 %conv) #3, !dbg !113
  %tobool1 = icmp ne i32 %call, 0, !dbg !113
  br i1 %tobool1, label %if.end, label %if.then, !dbg !114

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !115

if.end:                                           ; preds = %while.body
  %4 = load i8*, i8** %string.addr, align 8, !dbg !117
  %5 = load i8, i8* %4, align 1, !dbg !118
  %conv2 = sext i8 %5 to i32, !dbg !118
  %call3 = call i32 @acpi_ut_insert_digit(i64* %accumulated_value, i32 10, i32 %conv2) #3, !dbg !119
  store i32 %call3, i32* %status, align 4, !dbg !120
  %6 = load i32, i32* %status, align 4, !dbg !121
  %tobool4 = icmp ne i32 %6, 0, !dbg !121
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !123

if.then5:                                         ; preds = %if.end
  store i32 33, i32* %status, align 4, !dbg !124
  br label %while.end, !dbg !126

if.end6:                                          ; preds = %if.end
  %7 = load i8*, i8** %string.addr, align 8, !dbg !127
  %incdec.ptr = getelementptr i8, i8* %7, i32 1, !dbg !127
  store i8* %incdec.ptr, i8** %string.addr, align 8, !dbg !127
  br label %while.cond, !dbg !106, !llvm.loop !128

while.end:                                        ; preds = %if.then5, %if.then, %while.cond
  %8 = load i64, i64* %accumulated_value, align 8, !dbg !130
  %9 = load i64*, i64** %return_value_ptr.addr, align 8, !dbg !131
  store i64 %8, i64* %9, align 8, !dbg !132
  %10 = load i32, i32* %status, align 4, !dbg !133
  ret i32 %10, !dbg !134
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @isdigit(i32 %c) #0 !dbg !135 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = load i32, i32* %c.addr, align 4, !dbg !141
  %cmp = icmp sle i32 48, %0, !dbg !142
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !143

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !144
  %cmp1 = icmp sle i32 %1, 57, !dbg !145
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !146
  %land.ext = zext i1 %2 to i32, !dbg !143
  ret i32 %land.ext, !dbg !147
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_convert_hex_string(i8* %string, i64* %return_value_ptr) #0 !dbg !148 {
entry:
  %string.addr = alloca i8*, align 8
  %return_value_ptr.addr = alloca i64*, align 8
  %accumulated_value = alloca i64, align 8
  %status = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !149, metadata !DIExpression()), !dbg !150
  store i64* %return_value_ptr, i64** %return_value_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %return_value_ptr.addr, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i64* %accumulated_value, metadata !153, metadata !DIExpression()), !dbg !154
  store i64 0, i64* %accumulated_value, align 8, !dbg !154
  call void @llvm.dbg.declare(metadata i32* %status, metadata !155, metadata !DIExpression()), !dbg !156
  store i32 0, i32* %status, align 4, !dbg !156
  br label %while.cond, !dbg !157

while.cond:                                       ; preds = %if.end6, %entry
  %0 = load i8*, i8** %string.addr, align 8, !dbg !158
  %1 = load i8, i8* %0, align 1, !dbg !159
  %tobool = icmp ne i8 %1, 0, !dbg !157
  br i1 %tobool, label %while.body, label %while.end, !dbg !157

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %string.addr, align 8, !dbg !160
  %3 = load i8, i8* %2, align 1, !dbg !160
  %conv = zext i8 %3 to i32, !dbg !160
  %idxprom = sext i32 %conv to i64, !dbg !160
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !160
  %4 = load i8, i8* %arrayidx, align 1, !dbg !160
  %conv1 = zext i8 %4 to i32, !dbg !160
  %and = and i32 %conv1, 68, !dbg !160
  %cmp = icmp ne i32 %and, 0, !dbg !160
  br i1 %cmp, label %if.end, label %if.then, !dbg !163

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !164

if.end:                                           ; preds = %while.body
  %5 = load i8*, i8** %string.addr, align 8, !dbg !166
  %6 = load i8, i8* %5, align 1, !dbg !167
  %conv3 = sext i8 %6 to i32, !dbg !167
  %call = call i32 @acpi_ut_insert_digit(i64* %accumulated_value, i32 16, i32 %conv3) #3, !dbg !168
  store i32 %call, i32* %status, align 4, !dbg !169
  %7 = load i32, i32* %status, align 4, !dbg !170
  %tobool4 = icmp ne i32 %7, 0, !dbg !170
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !172

if.then5:                                         ; preds = %if.end
  store i32 32, i32* %status, align 4, !dbg !173
  br label %while.end, !dbg !175

if.end6:                                          ; preds = %if.end
  %8 = load i8*, i8** %string.addr, align 8, !dbg !176
  %incdec.ptr = getelementptr i8, i8* %8, i32 1, !dbg !176
  store i8* %incdec.ptr, i8** %string.addr, align 8, !dbg !176
  br label %while.cond, !dbg !157, !llvm.loop !177

while.end:                                        ; preds = %if.then5, %if.then, %while.cond
  %9 = load i64, i64* %accumulated_value, align 8, !dbg !179
  %10 = load i64*, i64** %return_value_ptr.addr, align 8, !dbg !180
  store i64 %9, i64* %10, align 8, !dbg !181
  %11 = load i32, i32* %status, align 4, !dbg !182
  ret i32 %11, !dbg !183
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local signext i8 @acpi_ut_remove_leading_zeros(i8** %string) #0 !dbg !184 {
entry:
  %string.addr = alloca i8**, align 8
  store i8** %string, i8*** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %string.addr, metadata !188, metadata !DIExpression()), !dbg !189
  br label %while.cond, !dbg !190

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8**, i8*** %string.addr, align 8, !dbg !191
  %1 = load i8*, i8** %0, align 8, !dbg !192
  %2 = load i8, i8* %1, align 1, !dbg !193
  %conv = sext i8 %2 to i32, !dbg !193
  %cmp = icmp eq i32 %conv, 48, !dbg !194
  br i1 %cmp, label %while.body, label %while.end, !dbg !190

while.body:                                       ; preds = %while.cond
  %3 = load i8**, i8*** %string.addr, align 8, !dbg !195
  %4 = load i8*, i8** %3, align 8, !dbg !197
  %add.ptr = getelementptr i8, i8* %4, i64 1, !dbg !197
  store i8* %add.ptr, i8** %3, align 8, !dbg !197
  br label %while.cond, !dbg !190, !llvm.loop !198

while.end:                                        ; preds = %while.cond
  %5 = load i8**, i8*** %string.addr, align 8, !dbg !200
  %6 = load i8*, i8** %5, align 8, !dbg !201
  %7 = load i8, i8* %6, align 1, !dbg !202
  ret i8 %7, !dbg !203
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local signext i8 @acpi_ut_remove_whitespace(i8** %string) #0 !dbg !204 {
entry:
  %string.addr = alloca i8**, align 8
  store i8** %string, i8*** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %string.addr, metadata !205, metadata !DIExpression()), !dbg !206
  br label %while.cond, !dbg !207

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8**, i8*** %string.addr, align 8, !dbg !208
  %1 = load i8*, i8** %0, align 8, !dbg !208
  %2 = load i8, i8* %1, align 1, !dbg !208
  %conv = zext i8 %2 to i32, !dbg !208
  %idxprom = sext i32 %conv to i64, !dbg !208
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !208
  %3 = load i8, i8* %arrayidx, align 1, !dbg !208
  %conv1 = zext i8 %3 to i32, !dbg !208
  %and = and i32 %conv1, 32, !dbg !208
  %cmp = icmp ne i32 %and, 0, !dbg !208
  br i1 %cmp, label %while.body, label %while.end, !dbg !207

while.body:                                       ; preds = %while.cond
  %4 = load i8**, i8*** %string.addr, align 8, !dbg !209
  %5 = load i8*, i8** %4, align 8, !dbg !211
  %add.ptr = getelementptr i8, i8* %5, i64 1, !dbg !211
  store i8* %add.ptr, i8** %4, align 8, !dbg !211
  br label %while.cond, !dbg !207, !llvm.loop !212

while.end:                                        ; preds = %while.cond
  %6 = load i8**, i8*** %string.addr, align 8, !dbg !214
  %7 = load i8*, i8** %6, align 8, !dbg !215
  %8 = load i8, i8* %7, align 1, !dbg !216
  ret i8 %8, !dbg !217
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ut_detect_hex_prefix(i8** %string) #0 !dbg !218 {
entry:
  %retval = alloca i8, align 1
  %string.addr = alloca i8**, align 8
  %initial_position = alloca i8*, align 8
  store i8** %string, i8*** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %string.addr, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i8** %initial_position, metadata !223, metadata !DIExpression()), !dbg !224
  %0 = load i8**, i8*** %string.addr, align 8, !dbg !225
  %1 = load i8*, i8** %0, align 8, !dbg !226
  store i8* %1, i8** %initial_position, align 8, !dbg !224
  %2 = load i8**, i8*** %string.addr, align 8, !dbg !227
  call void @acpi_ut_remove_hex_prefix(i8** %2) #3, !dbg !228
  %3 = load i8**, i8*** %string.addr, align 8, !dbg !229
  %4 = load i8*, i8** %3, align 8, !dbg !231
  %5 = load i8*, i8** %initial_position, align 8, !dbg !232
  %cmp = icmp ne i8* %4, %5, !dbg !233
  br i1 %cmp, label %if.then, label %if.end, !dbg !234

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !235
  br label %return, !dbg !235

if.end:                                           ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !237
  br label %return, !dbg !237

return:                                           ; preds = %if.end, %if.then
  %6 = load i8, i8* %retval, align 1, !dbg !238
  ret i8 %6, !dbg !238
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_remove_hex_prefix(i8** %string) #0 !dbg !239 {
entry:
  %string.addr = alloca i8**, align 8
  store i8** %string, i8*** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %string.addr, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = load i8**, i8*** %string.addr, align 8, !dbg !244
  %1 = load i8*, i8** %0, align 8, !dbg !246
  %2 = load i8, i8* %1, align 1, !dbg !247
  %conv = sext i8 %2 to i32, !dbg !247
  %cmp = icmp eq i32 %conv, 48, !dbg !248
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !249

land.lhs.true:                                    ; preds = %entry
  %3 = load i8**, i8*** %string.addr, align 8, !dbg !250
  %4 = load i8*, i8** %3, align 8, !dbg !250
  %add.ptr = getelementptr i8, i8* %4, i64 1, !dbg !250
  %5 = load i8, i8* %add.ptr, align 1, !dbg !250
  %conv2 = sext i8 %5 to i32, !dbg !250
  %conv3 = trunc i32 %conv2 to i8, !dbg !250
  %call = call zeroext i8 @__tolower(i8 zeroext %conv3) #3, !dbg !250
  %conv4 = zext i8 %call to i32, !dbg !250
  %cmp5 = icmp eq i32 %conv4, 120, !dbg !251
  br i1 %cmp5, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8**, i8*** %string.addr, align 8, !dbg !253
  %7 = load i8*, i8** %6, align 8, !dbg !255
  %add.ptr7 = getelementptr i8, i8* %7, i64 2, !dbg !255
  store i8* %add.ptr7, i8** %6, align 8, !dbg !255
  br label %if.end, !dbg !256

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !257
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @__tolower(i8 zeroext %c) #0 !dbg !258 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !261, metadata !DIExpression()), !dbg !262
  %0 = load i8, i8* %c.addr, align 1, !dbg !263
  %conv = zext i8 %0 to i32, !dbg !263
  %idxprom = sext i32 %conv to i64, !dbg !263
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !263
  %1 = load i8, i8* %arrayidx, align 1, !dbg !263
  %conv1 = zext i8 %1 to i32, !dbg !263
  %and = and i32 %conv1, 1, !dbg !263
  %cmp = icmp ne i32 %and, 0, !dbg !263
  br i1 %cmp, label %if.then, label %if.end, !dbg !265

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1, !dbg !266
  %conv3 = zext i8 %2 to i32, !dbg !266
  %sub = sub i32 %conv3, -32, !dbg !266
  %conv4 = trunc i32 %sub to i8, !dbg !266
  store i8 %conv4, i8* %c.addr, align 1, !dbg !266
  br label %if.end, !dbg !267

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %c.addr, align 1, !dbg !268
  ret i8 %3, !dbg !269
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ut_detect_octal_prefix(i8** %string) #0 !dbg !270 {
entry:
  %retval = alloca i8, align 1
  %string.addr = alloca i8**, align 8
  store i8** %string, i8*** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %string.addr, metadata !271, metadata !DIExpression()), !dbg !272
  %0 = load i8**, i8*** %string.addr, align 8, !dbg !273
  %1 = load i8*, i8** %0, align 8, !dbg !275
  %2 = load i8, i8* %1, align 1, !dbg !276
  %conv = sext i8 %2 to i32, !dbg !276
  %cmp = icmp eq i32 %conv, 48, !dbg !277
  br i1 %cmp, label %if.then, label %if.end, !dbg !278

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %string.addr, align 8, !dbg !279
  %4 = load i8*, i8** %3, align 8, !dbg !281
  %add.ptr = getelementptr i8, i8* %4, i64 1, !dbg !281
  store i8* %add.ptr, i8** %3, align 8, !dbg !281
  store i8 1, i8* %retval, align 1, !dbg !282
  br label %return, !dbg !282

if.end:                                           ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !283
  br label %return, !dbg !283

return:                                           ; preds = %if.end, %if.then
  %5 = load i8, i8* %retval, align 1, !dbg !284
  ret i8 %5, !dbg !284
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_strtoul_multiply64(i64 %multiplicand, i32 %base, i64* %out_product) #0 !dbg !285 {
entry:
  %retval = alloca i32, align 4
  %multiplicand.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %out_product.addr = alloca i64*, align 8
  %product = alloca i64, align 8
  %quotient = alloca i64, align 8
  store i64 %multiplicand, i64* %multiplicand.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %multiplicand.addr, metadata !288, metadata !DIExpression()), !dbg !289
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !290, metadata !DIExpression()), !dbg !291
  store i64* %out_product, i64** %out_product.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_product.addr, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata i64* %product, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata i64* %quotient, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = load i64*, i64** %out_product.addr, align 8, !dbg !298
  store i64 0, i64* %0, align 8, !dbg !299
  %1 = load i64, i64* %multiplicand.addr, align 8, !dbg !300
  %tobool = icmp ne i64 %1, 0, !dbg !300
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !302

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %base.addr, align 4, !dbg !303
  %tobool1 = icmp ne i32 %2, 0, !dbg !303
  br i1 %tobool1, label %if.end, label %if.then, !dbg !304

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !305
  br label %return, !dbg !305

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %base.addr, align 4, !dbg !307
  %call = call i32 @acpi_ut_short_divide(i64 -1, i32 %3, i64* %quotient, i32* null) #3, !dbg !308
  %4 = load i64, i64* %multiplicand.addr, align 8, !dbg !309
  %5 = load i64, i64* %quotient, align 8, !dbg !311
  %cmp = icmp ugt i64 %4, %5, !dbg !312
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !313

if.then2:                                         ; preds = %if.end
  store i32 31, i32* %retval, align 4, !dbg !314
  br label %return, !dbg !314

if.end3:                                          ; preds = %if.end
  %6 = load i64, i64* %multiplicand.addr, align 8, !dbg !316
  %7 = load i32, i32* %base.addr, align 4, !dbg !317
  %conv = zext i32 %7 to i64, !dbg !317
  %mul = mul i64 %6, %conv, !dbg !318
  store i64 %mul, i64* %product, align 8, !dbg !319
  %8 = load i8, i8* @acpi_gbl_integer_bit_width, align 1, !dbg !320
  %conv4 = zext i8 %8 to i32, !dbg !320
  %cmp5 = icmp eq i32 %conv4, 32, !dbg !322
  br i1 %cmp5, label %land.lhs.true, label %if.end10, !dbg !323

land.lhs.true:                                    ; preds = %if.end3
  %9 = load i64, i64* %product, align 8, !dbg !324
  %cmp7 = icmp ugt i64 %9, 4294967295, !dbg !325
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !326

if.then9:                                         ; preds = %land.lhs.true
  store i32 31, i32* %retval, align 4, !dbg !327
  br label %return, !dbg !327

if.end10:                                         ; preds = %land.lhs.true, %if.end3
  %10 = load i64, i64* %product, align 8, !dbg !329
  %11 = load i64*, i64** %out_product.addr, align 8, !dbg !330
  store i64 %10, i64* %11, align 8, !dbg !331
  store i32 0, i32* %retval, align 4, !dbg !332
  br label %return, !dbg !332

return:                                           ; preds = %if.end10, %if.then9, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !333
  ret i32 %12, !dbg !333
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_strtoul_add64(i64 %addend1, i32 %digit, i64* %out_sum) #0 !dbg !334 {
entry:
  %retval = alloca i32, align 4
  %addend1.addr = alloca i64, align 8
  %digit.addr = alloca i32, align 4
  %out_sum.addr = alloca i64*, align 8
  %sum = alloca i64, align 8
  store i64 %addend1, i64* %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addend1.addr, metadata !335, metadata !DIExpression()), !dbg !336
  store i32 %digit, i32* %digit.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %digit.addr, metadata !337, metadata !DIExpression()), !dbg !338
  store i64* %out_sum, i64** %out_sum.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_sum.addr, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata i64* %sum, metadata !341, metadata !DIExpression()), !dbg !342
  %0 = load i64, i64* %addend1.addr, align 8, !dbg !343
  %cmp = icmp ugt i64 %0, 0, !dbg !345
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !346

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %digit.addr, align 4, !dbg !347
  %conv = zext i32 %1 to i64, !dbg !347
  %2 = load i64, i64* %addend1.addr, align 8, !dbg !348
  %sub = sub i64 -1, %2, !dbg !349
  %cmp1 = icmp ugt i64 %conv, %sub, !dbg !350
  br i1 %cmp1, label %if.then, label %if.end, !dbg !351

if.then:                                          ; preds = %land.lhs.true
  store i32 31, i32* %retval, align 4, !dbg !352
  br label %return, !dbg !352

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i64, i64* %addend1.addr, align 8, !dbg !354
  %4 = load i32, i32* %digit.addr, align 4, !dbg !355
  %conv3 = zext i32 %4 to i64, !dbg !355
  %add = add i64 %3, %conv3, !dbg !356
  store i64 %add, i64* %sum, align 8, !dbg !357
  %5 = load i8, i8* @acpi_gbl_integer_bit_width, align 1, !dbg !358
  %conv4 = zext i8 %5 to i32, !dbg !358
  %cmp5 = icmp eq i32 %conv4, 32, !dbg !360
  br i1 %cmp5, label %land.lhs.true7, label %if.end11, !dbg !361

land.lhs.true7:                                   ; preds = %if.end
  %6 = load i64, i64* %sum, align 8, !dbg !362
  %cmp8 = icmp ugt i64 %6, 4294967295, !dbg !363
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !364

if.then10:                                        ; preds = %land.lhs.true7
  store i32 31, i32* %retval, align 4, !dbg !365
  br label %return, !dbg !365

if.end11:                                         ; preds = %land.lhs.true7, %if.end
  %7 = load i64, i64* %sum, align 8, !dbg !367
  %8 = load i64*, i64** %out_sum.addr, align 8, !dbg !368
  store i64 %7, i64* %8, align 8, !dbg !369
  store i32 0, i32* %retval, align 4, !dbg !370
  br label %return, !dbg !370

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !371
  ret i32 %9, !dbg !371
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_ascii_char_to_hex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_short_divide(i64, i32, i64*, i32*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utstrsuppt.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !11, !12, !13, !14, !16, !6}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !5, line: 421, baseType: !6)
!5 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !13)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !18)
!18 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"Code Model", i32 2}
!23 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!24 = distinct !DISubprogram(name: "acpi_ut_convert_octal_string", scope: !1, file: !1, line: 40, type: !25, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!4, !27, !28}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!29 = !DILocalVariable(name: "string", arg: 1, scope: !24, file: !1, line: 40, type: !27)
!30 = !DILocation(line: 40, column: 48, scope: !24)
!31 = !DILocalVariable(name: "return_value_ptr", arg: 2, scope: !24, file: !1, line: 40, type: !28)
!32 = !DILocation(line: 40, column: 61, scope: !24)
!33 = !DILocalVariable(name: "accumulated_value", scope: !24, file: !1, line: 42, type: !16)
!34 = !DILocation(line: 42, column: 6, scope: !24)
!35 = !DILocalVariable(name: "status", scope: !24, file: !1, line: 43, type: !4)
!36 = !DILocation(line: 43, column: 14, scope: !24)
!37 = !DILocation(line: 47, column: 2, scope: !24)
!38 = !DILocation(line: 47, column: 10, scope: !24)
!39 = !DILocation(line: 47, column: 9, scope: !24)
!40 = !DILocation(line: 53, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 53, column: 7)
!42 = distinct !DILexicalBlock(scope: !24, file: !1, line: 47, column: 18)
!43 = !DILocation(line: 53, column: 7, scope: !42)
!44 = !DILocation(line: 57, column: 4, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 53, column: 40)
!46 = !DILocation(line: 62, column: 57, scope: !42)
!47 = !DILocation(line: 62, column: 56, scope: !42)
!48 = !DILocation(line: 62, column: 12, scope: !42)
!49 = !DILocation(line: 62, column: 10, scope: !42)
!50 = !DILocation(line: 63, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !42, file: !1, line: 63, column: 7)
!52 = !DILocation(line: 63, column: 7, scope: !42)
!53 = !DILocation(line: 64, column: 11, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 63, column: 29)
!55 = !DILocation(line: 65, column: 4, scope: !54)
!56 = !DILocation(line: 68, column: 9, scope: !42)
!57 = distinct !{!57, !37, !58}
!58 = !DILocation(line: 69, column: 2, scope: !24)
!59 = !DILocation(line: 73, column: 22, scope: !24)
!60 = !DILocation(line: 73, column: 3, scope: !24)
!61 = !DILocation(line: 73, column: 20, scope: !24)
!62 = !DILocation(line: 74, column: 10, scope: !24)
!63 = !DILocation(line: 74, column: 2, scope: !24)
!64 = distinct !DISubprogram(name: "acpi_ut_insert_digit", scope: !1, file: !1, line: 331, type: !65, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!65 = !DISubroutineType(types: !66)
!66 = !{!4, !28, !6, !12}
!67 = !DILocalVariable(name: "accumulated_value", arg: 1, scope: !64, file: !1, line: 331, type: !28)
!68 = !DILocation(line: 331, column: 27, scope: !64)
!69 = !DILocalVariable(name: "base", arg: 2, scope: !64, file: !1, line: 331, type: !6)
!70 = !DILocation(line: 331, column: 50, scope: !64)
!71 = !DILocalVariable(name: "ascii_digit", arg: 3, scope: !64, file: !1, line: 331, type: !12)
!72 = !DILocation(line: 331, column: 60, scope: !64)
!73 = !DILocalVariable(name: "status", scope: !64, file: !1, line: 333, type: !4)
!74 = !DILocation(line: 333, column: 14, scope: !64)
!75 = !DILocalVariable(name: "product", scope: !64, file: !1, line: 334, type: !16)
!76 = !DILocation(line: 334, column: 6, scope: !64)
!77 = !DILocation(line: 338, column: 39, scope: !64)
!78 = !DILocation(line: 338, column: 38, scope: !64)
!79 = !DILocation(line: 338, column: 58, scope: !64)
!80 = !DILocation(line: 338, column: 11, scope: !64)
!81 = !DILocation(line: 338, column: 9, scope: !64)
!82 = !DILocation(line: 339, column: 6, scope: !83)
!83 = distinct !DILexicalBlock(scope: !64, file: !1, line: 339, column: 6)
!84 = !DILocation(line: 339, column: 6, scope: !64)
!85 = !DILocation(line: 340, column: 11, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !1, line: 339, column: 28)
!87 = !DILocation(line: 340, column: 3, scope: !86)
!88 = !DILocation(line: 346, column: 28, scope: !64)
!89 = !DILocation(line: 347, column: 33, scope: !64)
!90 = !DILocation(line: 347, column: 7, scope: !64)
!91 = !DILocation(line: 348, column: 7, scope: !64)
!92 = !DILocation(line: 346, column: 6, scope: !64)
!93 = !DILocation(line: 345, column: 9, scope: !64)
!94 = !DILocation(line: 350, column: 10, scope: !64)
!95 = !DILocation(line: 350, column: 2, scope: !64)
!96 = !DILocation(line: 351, column: 1, scope: !64)
!97 = distinct !DISubprogram(name: "acpi_ut_convert_decimal_string", scope: !1, file: !1, line: 94, type: !25, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!98 = !DILocalVariable(name: "string", arg: 1, scope: !97, file: !1, line: 94, type: !27)
!99 = !DILocation(line: 94, column: 50, scope: !97)
!100 = !DILocalVariable(name: "return_value_ptr", arg: 2, scope: !97, file: !1, line: 94, type: !28)
!101 = !DILocation(line: 94, column: 63, scope: !97)
!102 = !DILocalVariable(name: "accumulated_value", scope: !97, file: !1, line: 96, type: !16)
!103 = !DILocation(line: 96, column: 6, scope: !97)
!104 = !DILocalVariable(name: "status", scope: !97, file: !1, line: 97, type: !4)
!105 = !DILocation(line: 97, column: 14, scope: !97)
!106 = !DILocation(line: 101, column: 2, scope: !97)
!107 = !DILocation(line: 101, column: 10, scope: !97)
!108 = !DILocation(line: 101, column: 9, scope: !97)
!109 = !DILocation(line: 107, column: 17, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 107, column: 7)
!111 = distinct !DILexicalBlock(scope: !97, file: !1, line: 101, column: 18)
!112 = !DILocation(line: 107, column: 16, scope: !110)
!113 = !DILocation(line: 107, column: 8, scope: !110)
!114 = !DILocation(line: 107, column: 7, scope: !111)
!115 = !DILocation(line: 111, column: 4, scope: !116)
!116 = distinct !DILexicalBlock(scope: !110, file: !1, line: 107, column: 26)
!117 = !DILocation(line: 116, column: 58, scope: !111)
!118 = !DILocation(line: 116, column: 57, scope: !111)
!119 = !DILocation(line: 116, column: 12, scope: !111)
!120 = !DILocation(line: 116, column: 10, scope: !111)
!121 = !DILocation(line: 117, column: 7, scope: !122)
!122 = distinct !DILexicalBlock(scope: !111, file: !1, line: 117, column: 7)
!123 = !DILocation(line: 117, column: 7, scope: !111)
!124 = !DILocation(line: 118, column: 11, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 117, column: 29)
!126 = !DILocation(line: 119, column: 4, scope: !125)
!127 = !DILocation(line: 122, column: 9, scope: !111)
!128 = distinct !{!128, !106, !129}
!129 = !DILocation(line: 123, column: 2, scope: !97)
!130 = !DILocation(line: 127, column: 22, scope: !97)
!131 = !DILocation(line: 127, column: 3, scope: !97)
!132 = !DILocation(line: 127, column: 20, scope: !97)
!133 = !DILocation(line: 128, column: 10, scope: !97)
!134 = !DILocation(line: 128, column: 2, scope: !97)
!135 = distinct !DISubprogram(name: "isdigit", scope: !136, file: !136, line: 26, type: !137, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!136 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/lizy2001/genbc/linux")
!137 = !DISubroutineType(types: !138)
!138 = !{!12, !12}
!139 = !DILocalVariable(name: "c", arg: 1, scope: !135, file: !136, line: 26, type: !12)
!140 = !DILocation(line: 26, column: 31, scope: !135)
!141 = !DILocation(line: 28, column: 16, scope: !135)
!142 = !DILocation(line: 28, column: 13, scope: !135)
!143 = !DILocation(line: 28, column: 18, scope: !135)
!144 = !DILocation(line: 28, column: 21, scope: !135)
!145 = !DILocation(line: 28, column: 23, scope: !135)
!146 = !DILocation(line: 0, scope: !135)
!147 = !DILocation(line: 28, column: 2, scope: !135)
!148 = distinct !DISubprogram(name: "acpi_ut_convert_hex_string", scope: !1, file: !1, line: 148, type: !25, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!149 = !DILocalVariable(name: "string", arg: 1, scope: !148, file: !1, line: 148, type: !27)
!150 = !DILocation(line: 148, column: 46, scope: !148)
!151 = !DILocalVariable(name: "return_value_ptr", arg: 2, scope: !148, file: !1, line: 148, type: !28)
!152 = !DILocation(line: 148, column: 59, scope: !148)
!153 = !DILocalVariable(name: "accumulated_value", scope: !148, file: !1, line: 150, type: !16)
!154 = !DILocation(line: 150, column: 6, scope: !148)
!155 = !DILocalVariable(name: "status", scope: !148, file: !1, line: 151, type: !4)
!156 = !DILocation(line: 151, column: 14, scope: !148)
!157 = !DILocation(line: 155, column: 2, scope: !148)
!158 = !DILocation(line: 155, column: 10, scope: !148)
!159 = !DILocation(line: 155, column: 9, scope: !148)
!160 = !DILocation(line: 161, column: 8, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 161, column: 7)
!162 = distinct !DILexicalBlock(scope: !148, file: !1, line: 155, column: 18)
!163 = !DILocation(line: 161, column: 7, scope: !162)
!164 = !DILocation(line: 165, column: 4, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 161, column: 27)
!166 = !DILocation(line: 170, column: 58, scope: !162)
!167 = !DILocation(line: 170, column: 57, scope: !162)
!168 = !DILocation(line: 170, column: 12, scope: !162)
!169 = !DILocation(line: 170, column: 10, scope: !162)
!170 = !DILocation(line: 171, column: 7, scope: !171)
!171 = distinct !DILexicalBlock(scope: !162, file: !1, line: 171, column: 7)
!172 = !DILocation(line: 171, column: 7, scope: !162)
!173 = !DILocation(line: 172, column: 11, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !1, line: 171, column: 29)
!175 = !DILocation(line: 173, column: 4, scope: !174)
!176 = !DILocation(line: 176, column: 9, scope: !162)
!177 = distinct !{!177, !157, !178}
!178 = !DILocation(line: 177, column: 2, scope: !148)
!179 = !DILocation(line: 181, column: 22, scope: !148)
!180 = !DILocation(line: 181, column: 3, scope: !148)
!181 = !DILocation(line: 181, column: 20, scope: !148)
!182 = !DILocation(line: 182, column: 10, scope: !148)
!183 = !DILocation(line: 182, column: 2, scope: !148)
!184 = distinct !DISubprogram(name: "acpi_ut_remove_leading_zeros", scope: !1, file: !1, line: 200, type: !185, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!185 = !DISubroutineType(types: !186)
!186 = !{!11, !187}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!188 = !DILocalVariable(name: "string", arg: 1, scope: !184, file: !1, line: 200, type: !187)
!189 = !DILocation(line: 200, column: 42, scope: !184)
!190 = !DILocation(line: 203, column: 2, scope: !184)
!191 = !DILocation(line: 203, column: 11, scope: !184)
!192 = !DILocation(line: 203, column: 10, scope: !184)
!193 = !DILocation(line: 203, column: 9, scope: !184)
!194 = !DILocation(line: 203, column: 18, scope: !184)
!195 = !DILocation(line: 204, column: 4, scope: !196)
!196 = distinct !DILexicalBlock(scope: !184, file: !1, line: 203, column: 38)
!197 = !DILocation(line: 204, column: 11, scope: !196)
!198 = distinct !{!198, !190, !199}
!199 = !DILocation(line: 205, column: 2, scope: !184)
!200 = !DILocation(line: 207, column: 12, scope: !184)
!201 = !DILocation(line: 207, column: 11, scope: !184)
!202 = !DILocation(line: 207, column: 10, scope: !184)
!203 = !DILocation(line: 207, column: 2, scope: !184)
!204 = distinct !DISubprogram(name: "acpi_ut_remove_whitespace", scope: !1, file: !1, line: 225, type: !185, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!205 = !DILocalVariable(name: "string", arg: 1, scope: !204, file: !1, line: 225, type: !187)
!206 = !DILocation(line: 225, column: 39, scope: !204)
!207 = !DILocation(line: 228, column: 2, scope: !204)
!208 = !DILocation(line: 228, column: 9, scope: !204)
!209 = !DILocation(line: 229, column: 4, scope: !210)
!210 = distinct !DILexicalBlock(scope: !204, file: !1, line: 228, column: 32)
!211 = !DILocation(line: 229, column: 11, scope: !210)
!212 = distinct !{!212, !207, !213}
!213 = !DILocation(line: 230, column: 2, scope: !204)
!214 = !DILocation(line: 232, column: 12, scope: !204)
!215 = !DILocation(line: 232, column: 11, scope: !204)
!216 = !DILocation(line: 232, column: 10, scope: !204)
!217 = !DILocation(line: 232, column: 2, scope: !204)
!218 = distinct !DISubprogram(name: "acpi_ut_detect_hex_prefix", scope: !1, file: !1, line: 247, type: !219, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!219 = !DISubroutineType(types: !220)
!220 = !{!14, !187}
!221 = !DILocalVariable(name: "string", arg: 1, scope: !218, file: !1, line: 247, type: !187)
!222 = !DILocation(line: 247, column: 37, scope: !218)
!223 = !DILocalVariable(name: "initial_position", scope: !218, file: !1, line: 249, type: !27)
!224 = !DILocation(line: 249, column: 8, scope: !218)
!225 = !DILocation(line: 249, column: 28, scope: !218)
!226 = !DILocation(line: 249, column: 27, scope: !218)
!227 = !DILocation(line: 251, column: 28, scope: !218)
!228 = !DILocation(line: 251, column: 2, scope: !218)
!229 = !DILocation(line: 252, column: 7, scope: !230)
!230 = distinct !DILexicalBlock(scope: !218, file: !1, line: 252, column: 6)
!231 = !DILocation(line: 252, column: 6, scope: !230)
!232 = !DILocation(line: 252, column: 17, scope: !230)
!233 = !DILocation(line: 252, column: 14, scope: !230)
!234 = !DILocation(line: 252, column: 6, scope: !218)
!235 = !DILocation(line: 253, column: 3, scope: !236)
!236 = distinct !DILexicalBlock(scope: !230, file: !1, line: 252, column: 35)
!237 = !DILocation(line: 256, column: 2, scope: !218)
!238 = !DILocation(line: 257, column: 1, scope: !218)
!239 = distinct !DISubprogram(name: "acpi_ut_remove_hex_prefix", scope: !1, file: !1, line: 271, type: !240, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !187}
!242 = !DILocalVariable(name: "string", arg: 1, scope: !239, file: !1, line: 271, type: !187)
!243 = !DILocation(line: 271, column: 39, scope: !239)
!244 = !DILocation(line: 273, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !1, line: 273, column: 6)
!246 = !DILocation(line: 273, column: 8, scope: !245)
!247 = !DILocation(line: 273, column: 7, scope: !245)
!248 = !DILocation(line: 273, column: 16, scope: !245)
!249 = !DILocation(line: 273, column: 36, scope: !245)
!250 = !DILocation(line: 274, column: 7, scope: !245)
!251 = !DILocation(line: 274, column: 36, scope: !245)
!252 = !DILocation(line: 273, column: 6, scope: !239)
!253 = !DILocation(line: 275, column: 4, scope: !254)
!254 = distinct !DILexicalBlock(scope: !245, file: !1, line: 274, column: 45)
!255 = !DILocation(line: 275, column: 11, scope: !254)
!256 = !DILocation(line: 276, column: 2, scope: !254)
!257 = !DILocation(line: 277, column: 1, scope: !239)
!258 = distinct !DISubprogram(name: "__tolower", scope: !136, file: !136, line: 42, type: !259, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!259 = !DISubroutineType(types: !260)
!260 = !{!13, !13}
!261 = !DILocalVariable(name: "c", arg: 1, scope: !258, file: !136, line: 42, type: !13)
!262 = !DILocation(line: 42, column: 53, scope: !258)
!263 = !DILocation(line: 44, column: 6, scope: !264)
!264 = distinct !DILexicalBlock(scope: !258, file: !136, line: 44, column: 6)
!265 = !DILocation(line: 44, column: 6, scope: !258)
!266 = !DILocation(line: 45, column: 5, scope: !264)
!267 = !DILocation(line: 45, column: 3, scope: !264)
!268 = !DILocation(line: 46, column: 9, scope: !258)
!269 = !DILocation(line: 46, column: 2, scope: !258)
!270 = distinct !DISubprogram(name: "acpi_ut_detect_octal_prefix", scope: !1, file: !1, line: 292, type: !219, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!271 = !DILocalVariable(name: "string", arg: 1, scope: !270, file: !1, line: 292, type: !187)
!272 = !DILocation(line: 292, column: 39, scope: !270)
!273 = !DILocation(line: 295, column: 8, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !1, line: 295, column: 6)
!275 = !DILocation(line: 295, column: 7, scope: !274)
!276 = !DILocation(line: 295, column: 6, scope: !274)
!277 = !DILocation(line: 295, column: 15, scope: !274)
!278 = !DILocation(line: 295, column: 6, scope: !270)
!279 = !DILocation(line: 296, column: 4, scope: !280)
!280 = distinct !DILexicalBlock(scope: !274, file: !1, line: 295, column: 35)
!281 = !DILocation(line: 296, column: 11, scope: !280)
!282 = !DILocation(line: 297, column: 3, scope: !280)
!283 = !DILocation(line: 300, column: 2, scope: !270)
!284 = !DILocation(line: 301, column: 1, scope: !270)
!285 = distinct !DISubprogram(name: "acpi_ut_strtoul_multiply64", scope: !1, file: !1, line: 370, type: !286, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!286 = !DISubroutineType(types: !287)
!287 = !{!4, !16, !6, !28}
!288 = !DILocalVariable(name: "multiplicand", arg: 1, scope: !285, file: !1, line: 370, type: !16)
!289 = !DILocation(line: 370, column: 32, scope: !285)
!290 = !DILocalVariable(name: "base", arg: 2, scope: !285, file: !1, line: 370, type: !6)
!291 = !DILocation(line: 370, column: 50, scope: !285)
!292 = !DILocalVariable(name: "out_product", arg: 3, scope: !285, file: !1, line: 370, type: !28)
!293 = !DILocation(line: 370, column: 61, scope: !285)
!294 = !DILocalVariable(name: "product", scope: !285, file: !1, line: 372, type: !16)
!295 = !DILocation(line: 372, column: 6, scope: !285)
!296 = !DILocalVariable(name: "quotient", scope: !285, file: !1, line: 373, type: !16)
!297 = !DILocation(line: 373, column: 6, scope: !285)
!298 = !DILocation(line: 377, column: 3, scope: !285)
!299 = !DILocation(line: 377, column: 15, scope: !285)
!300 = !DILocation(line: 378, column: 7, scope: !301)
!301 = distinct !DILexicalBlock(scope: !285, file: !1, line: 378, column: 6)
!302 = !DILocation(line: 378, column: 20, scope: !301)
!303 = !DILocation(line: 378, column: 24, scope: !301)
!304 = !DILocation(line: 378, column: 6, scope: !285)
!305 = !DILocation(line: 379, column: 3, scope: !306)
!306 = distinct !DILexicalBlock(scope: !301, file: !1, line: 378, column: 30)
!307 = !DILocation(line: 390, column: 40, scope: !285)
!308 = !DILocation(line: 390, column: 2, scope: !285)
!309 = !DILocation(line: 391, column: 6, scope: !310)
!310 = distinct !DILexicalBlock(scope: !285, file: !1, line: 391, column: 6)
!311 = !DILocation(line: 391, column: 21, scope: !310)
!312 = !DILocation(line: 391, column: 19, scope: !310)
!313 = !DILocation(line: 391, column: 6, scope: !285)
!314 = !DILocation(line: 392, column: 3, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !1, line: 391, column: 31)
!316 = !DILocation(line: 395, column: 12, scope: !285)
!317 = !DILocation(line: 395, column: 27, scope: !285)
!318 = !DILocation(line: 395, column: 25, scope: !285)
!319 = !DILocation(line: 395, column: 10, scope: !285)
!320 = !DILocation(line: 399, column: 7, scope: !321)
!321 = distinct !DILexicalBlock(scope: !285, file: !1, line: 399, column: 6)
!322 = !DILocation(line: 399, column: 34, scope: !321)
!323 = !DILocation(line: 399, column: 41, scope: !321)
!324 = !DILocation(line: 399, column: 45, scope: !321)
!325 = !DILocation(line: 399, column: 53, scope: !321)
!326 = !DILocation(line: 399, column: 6, scope: !285)
!327 = !DILocation(line: 400, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !321, file: !1, line: 399, column: 73)
!329 = !DILocation(line: 403, column: 17, scope: !285)
!330 = !DILocation(line: 403, column: 3, scope: !285)
!331 = !DILocation(line: 403, column: 15, scope: !285)
!332 = !DILocation(line: 404, column: 2, scope: !285)
!333 = !DILocation(line: 405, column: 1, scope: !285)
!334 = distinct !DISubprogram(name: "acpi_ut_strtoul_add64", scope: !1, file: !1, line: 423, type: !286, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!335 = !DILocalVariable(name: "addend1", arg: 1, scope: !334, file: !1, line: 423, type: !16)
!336 = !DILocation(line: 423, column: 46, scope: !334)
!337 = !DILocalVariable(name: "digit", arg: 2, scope: !334, file: !1, line: 423, type: !6)
!338 = !DILocation(line: 423, column: 59, scope: !334)
!339 = !DILocalVariable(name: "out_sum", arg: 3, scope: !334, file: !1, line: 423, type: !28)
!340 = !DILocation(line: 423, column: 71, scope: !334)
!341 = !DILocalVariable(name: "sum", scope: !334, file: !1, line: 425, type: !16)
!342 = !DILocation(line: 425, column: 6, scope: !334)
!343 = !DILocation(line: 429, column: 7, scope: !344)
!344 = distinct !DILexicalBlock(scope: !334, file: !1, line: 429, column: 6)
!345 = !DILocation(line: 429, column: 15, scope: !344)
!346 = !DILocation(line: 429, column: 20, scope: !344)
!347 = !DILocation(line: 429, column: 24, scope: !344)
!348 = !DILocation(line: 429, column: 51, scope: !344)
!349 = !DILocation(line: 429, column: 49, scope: !344)
!350 = !DILocation(line: 429, column: 30, scope: !344)
!351 = !DILocation(line: 429, column: 6, scope: !334)
!352 = !DILocation(line: 430, column: 3, scope: !353)
!353 = distinct !DILexicalBlock(scope: !344, file: !1, line: 429, column: 62)
!354 = !DILocation(line: 433, column: 8, scope: !334)
!355 = !DILocation(line: 433, column: 18, scope: !334)
!356 = !DILocation(line: 433, column: 16, scope: !334)
!357 = !DILocation(line: 433, column: 6, scope: !334)
!358 = !DILocation(line: 437, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !334, file: !1, line: 437, column: 6)
!360 = !DILocation(line: 437, column: 34, scope: !359)
!361 = !DILocation(line: 437, column: 41, scope: !359)
!362 = !DILocation(line: 437, column: 45, scope: !359)
!363 = !DILocation(line: 437, column: 49, scope: !359)
!364 = !DILocation(line: 437, column: 6, scope: !334)
!365 = !DILocation(line: 438, column: 3, scope: !366)
!366 = distinct !DILexicalBlock(scope: !359, file: !1, line: 437, column: 69)
!367 = !DILocation(line: 441, column: 13, scope: !334)
!368 = !DILocation(line: 441, column: 3, scope: !334)
!369 = !DILocation(line: 441, column: 11, scope: !334)
!370 = !DILocation(line: 442, column: 2, scope: !334)
!371 = !DILocation(line: 443, column: 1, scope: !334)
