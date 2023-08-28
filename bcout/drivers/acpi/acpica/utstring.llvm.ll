; ModuleID = '../bcout/drivers/acpi/acpica/utstring.llvm.bc'
source_filename = "drivers/acpi/acpica/utstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

@.str = private unnamed_addr constant [20 x i8] c"<\22NULL STRING PTR\22>\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@_ctype = external dso_local constant [0 x i8], align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\\x%2.2X\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"\\___\00", align 1
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@_acpi_module_name = internal constant [9 x i8] c"utstring\00", align 1, !dbg !0
@.str.14 = private unnamed_addr constant [57 x i8] c"Invalid character(s) in name (0x%.8X), repaired: [%4.4s]\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_print_string(i8* %string, i16 zeroext %max_length) #0 !dbg !28 {
entry:
  %string.addr = alloca i8*, align 8
  %max_length.addr = alloca i16, align 2
  %i = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !35, metadata !DIExpression()), !dbg !36
  store i16 %max_length, i16* %max_length.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %max_length.addr, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %i, metadata !39, metadata !DIExpression()), !dbg !40
  %0 = load i8*, i8** %string.addr, align 8, !dbg !41
  %tobool = icmp ne i8* %0, null, !dbg !41
  br i1 %tobool, label %if.end, label %if.then, !dbg !43

if.then:                                          ; preds = %entry
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)) #3, !dbg !44
  br label %if.end43, !dbg !46

if.end:                                           ; preds = %entry
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !47
  store i32 0, i32* %i, align 4, !dbg !48
  br label %for.cond, !dbg !50

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4, !dbg !51
  %2 = load i16, i16* %max_length.addr, align 2, !dbg !53
  %conv = zext i16 %2 to i32, !dbg !53
  %cmp = icmp ult i32 %1, %conv, !dbg !54
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !55

land.rhs:                                         ; preds = %for.cond
  %3 = load i8*, i8** %string.addr, align 8, !dbg !56
  %4 = load i32, i32* %i, align 4, !dbg !57
  %idxprom = zext i32 %4 to i64, !dbg !56
  %arrayidx = getelementptr i8, i8* %3, i64 %idxprom, !dbg !56
  %5 = load i8, i8* %arrayidx, align 1, !dbg !56
  %conv2 = sext i8 %5 to i32, !dbg !56
  %tobool3 = icmp ne i32 %conv2, 0, !dbg !55
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %tobool3, %land.rhs ], !dbg !58
  br i1 %6, label %for.body, label %for.end, !dbg !59

for.body:                                         ; preds = %land.end
  %7 = load i8*, i8** %string.addr, align 8, !dbg !60
  %8 = load i32, i32* %i, align 4, !dbg !62
  %idxprom4 = zext i32 %8 to i64, !dbg !60
  %arrayidx5 = getelementptr i8, i8* %7, i64 %idxprom4, !dbg !60
  %9 = load i8, i8* %arrayidx5, align 1, !dbg !60
  %conv6 = sext i8 %9 to i32, !dbg !60
  switch i32 %conv6, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb7
    i32 12, label %sw.bb8
    i32 10, label %sw.bb9
    i32 13, label %sw.bb10
    i32 9, label %sw.bb11
    i32 11, label %sw.bb12
    i32 39, label %sw.bb13
    i32 34, label %sw.bb13
    i32 92, label %sw.bb13
  ], !dbg !63

sw.bb:                                            ; preds = %for.body
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !64
  br label %sw.epilog, !dbg !66

sw.bb7:                                           ; preds = %for.body
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !67
  br label %sw.epilog, !dbg !68

sw.bb8:                                           ; preds = %for.body
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3, !dbg !69
  br label %sw.epilog, !dbg !70

sw.bb9:                                           ; preds = %for.body
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #3, !dbg !71
  br label %sw.epilog, !dbg !72

sw.bb10:                                          ; preds = %for.body
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #3, !dbg !73
  br label %sw.epilog, !dbg !74

sw.bb11:                                          ; preds = %for.body
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #3, !dbg !75
  br label %sw.epilog, !dbg !76

sw.bb12:                                          ; preds = %for.body
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #3, !dbg !77
  br label %sw.epilog, !dbg !78

sw.bb13:                                          ; preds = %for.body, %for.body, %for.body
  %10 = load i8*, i8** %string.addr, align 8, !dbg !79
  %11 = load i32, i32* %i, align 4, !dbg !80
  %idxprom14 = zext i32 %11 to i64, !dbg !79
  %arrayidx15 = getelementptr i8, i8* %10, i64 %idxprom14, !dbg !79
  %12 = load i8, i8* %arrayidx15, align 1, !dbg !79
  %conv16 = sext i8 %12 to i32, !dbg !81
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %conv16) #3, !dbg !82
  br label %sw.epilog, !dbg !83

sw.default:                                       ; preds = %for.body
  %13 = load i8*, i8** %string.addr, align 8, !dbg !84
  %14 = load i32, i32* %i, align 4, !dbg !84
  %idxprom17 = zext i32 %14 to i64, !dbg !84
  %arrayidx18 = getelementptr i8, i8* %13, i64 %idxprom17, !dbg !84
  %15 = load i8, i8* %arrayidx18, align 1, !dbg !84
  %conv19 = sext i8 %15 to i32, !dbg !84
  %conv20 = trunc i32 %conv19 to i8, !dbg !84
  %conv21 = zext i8 %conv20 to i32, !dbg !84
  %idxprom22 = sext i32 %conv21 to i64, !dbg !84
  %arrayidx23 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom22, !dbg !84
  %16 = load i8, i8* %arrayidx23, align 1, !dbg !84
  %conv24 = zext i8 %16 to i32, !dbg !84
  %and = and i32 %conv24, 151, !dbg !84
  %cmp25 = icmp ne i32 %and, 0, !dbg !84
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !86

if.then27:                                        ; preds = %sw.default
  %17 = load i8*, i8** %string.addr, align 8, !dbg !87
  %18 = load i32, i32* %i, align 4, !dbg !89
  %idxprom28 = zext i32 %18 to i64, !dbg !87
  %arrayidx29 = getelementptr i8, i8* %17, i64 %idxprom28, !dbg !87
  %19 = load i8, i8* %arrayidx29, align 1, !dbg !87
  %conv30 = sext i8 %19 to i32, !dbg !90
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %conv30) #3, !dbg !91
  br label %if.end34, !dbg !92

if.else:                                          ; preds = %sw.default
  %20 = load i8*, i8** %string.addr, align 8, !dbg !93
  %21 = load i32, i32* %i, align 4, !dbg !95
  %idxprom31 = zext i32 %21 to i64, !dbg !93
  %arrayidx32 = getelementptr i8, i8* %20, i64 %idxprom31, !dbg !93
  %22 = load i8, i8* %arrayidx32, align 1, !dbg !93
  %conv33 = sext i8 %22 to i32, !dbg !96
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %conv33) #3, !dbg !97
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then27
  br label %sw.epilog, !dbg !98

sw.epilog:                                        ; preds = %if.end34, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb
  br label %for.inc, !dbg !99

for.inc:                                          ; preds = %sw.epilog
  %23 = load i32, i32* %i, align 4, !dbg !100
  %inc = add i32 %23, 1, !dbg !100
  store i32 %inc, i32* %i, align 4, !dbg !100
  br label %for.cond, !dbg !101, !llvm.loop !102

for.end:                                          ; preds = %land.end
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !104
  %24 = load i32, i32* %i, align 4, !dbg !105
  %25 = load i16, i16* %max_length.addr, align 2, !dbg !107
  %conv35 = zext i16 %25 to i32, !dbg !107
  %cmp36 = icmp eq i32 %24, %conv35, !dbg !108
  br i1 %cmp36, label %land.lhs.true, label %if.end43, !dbg !109

land.lhs.true:                                    ; preds = %for.end
  %26 = load i8*, i8** %string.addr, align 8, !dbg !110
  %27 = load i32, i32* %i, align 4, !dbg !111
  %idxprom38 = zext i32 %27 to i64, !dbg !110
  %arrayidx39 = getelementptr i8, i8* %26, i64 %idxprom38, !dbg !110
  %28 = load i8, i8* %arrayidx39, align 1, !dbg !110
  %conv40 = sext i8 %28 to i32, !dbg !110
  %tobool41 = icmp ne i32 %conv40, 0, !dbg !110
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !112

if.then42:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #3, !dbg !113
  br label %if.end43, !dbg !115

if.end43:                                         ; preds = %if.then, %if.then42, %land.lhs.true, %for.end
  ret void, !dbg !116
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_os_printf(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_repair_name(i8* %name) #0 !dbg !117 {
entry:
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %found_bad_char = alloca i8, align 1
  %original_name = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i32* %i, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata i8* %found_bad_char, metadata !124, metadata !DIExpression()), !dbg !127
  store i8 0, i8* %found_bad_char, align 1, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %original_name, metadata !128, metadata !DIExpression()), !dbg !129
  %0 = load i8*, i8** %name.addr, align 8, !dbg !130
  %1 = bitcast i8* %0 to i32*, !dbg !130
  %2 = load i32, i32* %1, align 4, !dbg !130
  %3 = load i32, i32* bitcast ([5 x i8]* @.str.13 to i32*), align 4, !dbg !130
  %cmp = icmp eq i32 %2, %3, !dbg !130
  br i1 %cmp, label %if.then, label %if.end, !dbg !132

if.then:                                          ; preds = %entry
  br label %if.end11, !dbg !133

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %name.addr, align 8, !dbg !135
  %5 = bitcast i8* %4 to i32*, !dbg !135
  %6 = load i32, i32* %5, align 4, !dbg !135
  %7 = bitcast i32* %original_name to i8*, !dbg !135
  %8 = bitcast i8* %7 to i32*, !dbg !135
  store i32 %6, i32* %8, align 4, !dbg !135
  store i32 0, i32* %i, align 4, !dbg !136
  br label %for.cond, !dbg !138

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !dbg !139
  %cmp1 = icmp ult i32 %9, 4, !dbg !141
  br i1 %cmp1, label %for.body, label %for.end, !dbg !142

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %name.addr, align 8, !dbg !143
  %11 = load i32, i32* %i, align 4, !dbg !146
  %idxprom = zext i32 %11 to i64, !dbg !143
  %arrayidx = getelementptr i8, i8* %10, i64 %idxprom, !dbg !143
  %12 = load i8, i8* %arrayidx, align 1, !dbg !143
  %13 = load i32, i32* %i, align 4, !dbg !147
  %call = call zeroext i8 @acpi_ut_valid_name_char(i8 signext %12, i32 %13) #3, !dbg !148
  %tobool = icmp ne i8 %call, 0, !dbg !148
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !149

if.then2:                                         ; preds = %for.body
  br label %for.inc, !dbg !150

if.end3:                                          ; preds = %for.body
  %14 = load i8*, i8** %name.addr, align 8, !dbg !152
  %15 = load i32, i32* %i, align 4, !dbg !153
  %idxprom4 = zext i32 %15 to i64, !dbg !152
  %arrayidx5 = getelementptr i8, i8* %14, i64 %idxprom4, !dbg !152
  store i8 42, i8* %arrayidx5, align 1, !dbg !154
  store i8 1, i8* %found_bad_char, align 1, !dbg !155
  br label %for.inc, !dbg !156

for.inc:                                          ; preds = %if.end3, %if.then2
  %16 = load i32, i32* %i, align 4, !dbg !157
  %inc = add i32 %16, 1, !dbg !157
  store i32 %inc, i32* %i, align 4, !dbg !157
  br label %for.cond, !dbg !158, !llvm.loop !159

for.end:                                          ; preds = %for.cond
  %17 = load i8, i8* %found_bad_char, align 1, !dbg !161
  %tobool6 = icmp ne i8 %17, 0, !dbg !161
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !163

if.then7:                                         ; preds = %for.end
  %18 = load i8, i8* @acpi_gbl_enable_interpreter_slack, align 1, !dbg !164
  %tobool8 = icmp ne i8 %18, 0, !dbg !164
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !167

if.then9:                                         ; preds = %if.then7
  %19 = load i32, i32* %original_name, align 4, !dbg !168
  %20 = load i8*, i8** %name.addr, align 8, !dbg !168
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 171, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0), i32 %19, i8* %20) #3, !dbg !168
  br label %if.end10, !dbg !170

if.else:                                          ; preds = %if.then7
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  br label %if.end11, !dbg !171

if.end11:                                         ; preds = %if.then, %if.end10, %for.end
  ret void, !dbg !172
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_valid_name_char(i8 signext, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 13, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utstring.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !7, !8, !12, !16}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !9, line: 20, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !11, line: 26, baseType: !6)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !15)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !{!0}
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 72, elements: !21)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !{!22}
!22 = !DISubrange(count: 9)
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"Code Model", i32 2}
!27 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!28 = distinct !DISubprogram(name: "acpi_ut_print_string", scope: !3, file: !3, line: 29, type: !29, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !32}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !34)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DILocalVariable(name: "string", arg: 1, scope: !28, file: !3, line: 29, type: !31)
!36 = !DILocation(line: 29, column: 33, scope: !28)
!37 = !DILocalVariable(name: "max_length", arg: 2, scope: !28, file: !3, line: 29, type: !32)
!38 = !DILocation(line: 29, column: 45, scope: !28)
!39 = !DILocalVariable(name: "i", scope: !28, file: !3, line: 31, type: !13)
!40 = !DILocation(line: 31, column: 6, scope: !28)
!41 = !DILocation(line: 33, column: 7, scope: !42)
!42 = distinct !DILexicalBlock(scope: !28, file: !3, line: 33, column: 6)
!43 = !DILocation(line: 33, column: 6, scope: !28)
!44 = !DILocation(line: 34, column: 3, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !3, line: 33, column: 15)
!46 = !DILocation(line: 35, column: 3, scope: !45)
!47 = !DILocation(line: 38, column: 2, scope: !28)
!48 = !DILocation(line: 39, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !28, file: !3, line: 39, column: 2)
!50 = !DILocation(line: 39, column: 7, scope: !49)
!51 = !DILocation(line: 39, column: 15, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !3, line: 39, column: 2)
!53 = !DILocation(line: 39, column: 19, scope: !52)
!54 = !DILocation(line: 39, column: 17, scope: !52)
!55 = !DILocation(line: 39, column: 31, scope: !52)
!56 = !DILocation(line: 39, column: 34, scope: !52)
!57 = !DILocation(line: 39, column: 41, scope: !52)
!58 = !DILocation(line: 0, scope: !52)
!59 = !DILocation(line: 39, column: 2, scope: !49)
!60 = !DILocation(line: 43, column: 11, scope: !61)
!61 = distinct !DILexicalBlock(scope: !52, file: !3, line: 39, column: 50)
!62 = !DILocation(line: 43, column: 18, scope: !61)
!63 = !DILocation(line: 43, column: 3, scope: !61)
!64 = !DILocation(line: 46, column: 4, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !3, line: 43, column: 22)
!66 = !DILocation(line: 47, column: 4, scope: !65)
!67 = !DILocation(line: 51, column: 4, scope: !65)
!68 = !DILocation(line: 52, column: 4, scope: !65)
!69 = !DILocation(line: 56, column: 4, scope: !65)
!70 = !DILocation(line: 57, column: 4, scope: !65)
!71 = !DILocation(line: 61, column: 4, scope: !65)
!72 = !DILocation(line: 62, column: 4, scope: !65)
!73 = !DILocation(line: 66, column: 4, scope: !65)
!74 = !DILocation(line: 67, column: 4, scope: !65)
!75 = !DILocation(line: 71, column: 4, scope: !65)
!76 = !DILocation(line: 72, column: 4, scope: !65)
!77 = !DILocation(line: 76, column: 4, scope: !65)
!78 = !DILocation(line: 77, column: 4, scope: !65)
!79 = !DILocation(line: 83, column: 32, scope: !65)
!80 = !DILocation(line: 83, column: 39, scope: !65)
!81 = !DILocation(line: 83, column: 27, scope: !65)
!82 = !DILocation(line: 83, column: 4, scope: !65)
!83 = !DILocation(line: 84, column: 4, scope: !65)
!84 = !DILocation(line: 90, column: 8, scope: !85)
!85 = distinct !DILexicalBlock(scope: !65, file: !3, line: 90, column: 8)
!86 = !DILocation(line: 90, column: 8, scope: !65)
!87 = !DILocation(line: 93, column: 31, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !3, line: 90, column: 33)
!89 = !DILocation(line: 93, column: 38, scope: !88)
!90 = !DILocation(line: 93, column: 26, scope: !88)
!91 = !DILocation(line: 93, column: 5, scope: !88)
!92 = !DILocation(line: 94, column: 4, scope: !88)
!93 = !DILocation(line: 97, column: 37, scope: !94)
!94 = distinct !DILexicalBlock(scope: !85, file: !3, line: 94, column: 11)
!95 = !DILocation(line: 97, column: 44, scope: !94)
!96 = !DILocation(line: 97, column: 32, scope: !94)
!97 = !DILocation(line: 97, column: 5, scope: !94)
!98 = !DILocation(line: 99, column: 4, scope: !65)
!99 = !DILocation(line: 101, column: 2, scope: !61)
!100 = !DILocation(line: 39, column: 46, scope: !52)
!101 = !DILocation(line: 39, column: 2, scope: !52)
!102 = distinct !{!102, !59, !103}
!103 = !DILocation(line: 101, column: 2, scope: !49)
!104 = !DILocation(line: 103, column: 2, scope: !28)
!105 = !DILocation(line: 105, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !28, file: !3, line: 105, column: 6)
!107 = !DILocation(line: 105, column: 11, scope: !106)
!108 = !DILocation(line: 105, column: 8, scope: !106)
!109 = !DILocation(line: 105, column: 22, scope: !106)
!110 = !DILocation(line: 105, column: 25, scope: !106)
!111 = !DILocation(line: 105, column: 32, scope: !106)
!112 = !DILocation(line: 105, column: 6, scope: !28)
!113 = !DILocation(line: 106, column: 3, scope: !114)
!114 = distinct !DILexicalBlock(scope: !106, file: !3, line: 105, column: 36)
!115 = !DILocation(line: 107, column: 2, scope: !114)
!116 = !DILocation(line: 108, column: 1, scope: !28)
!117 = distinct !DISubprogram(name: "acpi_ut_repair_name", scope: !3, file: !3, line: 132, type: !118, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !31}
!120 = !DILocalVariable(name: "name", arg: 1, scope: !117, file: !3, line: 132, type: !31)
!121 = !DILocation(line: 132, column: 32, scope: !117)
!122 = !DILocalVariable(name: "i", scope: !117, file: !3, line: 134, type: !13)
!123 = !DILocation(line: 134, column: 6, scope: !117)
!124 = !DILocalVariable(name: "found_bad_char", scope: !117, file: !3, line: 135, type: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !7)
!127 = !DILocation(line: 135, column: 5, scope: !117)
!128 = !DILocalVariable(name: "original_name", scope: !117, file: !3, line: 136, type: !13)
!129 = !DILocation(line: 136, column: 6, scope: !117)
!130 = !DILocation(line: 144, column: 6, scope: !131)
!131 = distinct !DILexicalBlock(scope: !117, file: !3, line: 144, column: 6)
!132 = !DILocation(line: 144, column: 6, scope: !117)
!133 = !DILocation(line: 145, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !3, line: 144, column: 54)
!135 = !DILocation(line: 148, column: 2, scope: !117)
!136 = !DILocation(line: 152, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !117, file: !3, line: 152, column: 2)
!138 = !DILocation(line: 152, column: 7, scope: !137)
!139 = !DILocation(line: 152, column: 14, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !3, line: 152, column: 2)
!141 = !DILocation(line: 152, column: 16, scope: !140)
!142 = !DILocation(line: 152, column: 2, scope: !137)
!143 = !DILocation(line: 153, column: 31, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 153, column: 7)
!145 = distinct !DILexicalBlock(scope: !140, file: !3, line: 152, column: 42)
!146 = !DILocation(line: 153, column: 36, scope: !144)
!147 = !DILocation(line: 153, column: 40, scope: !144)
!148 = !DILocation(line: 153, column: 7, scope: !144)
!149 = !DILocation(line: 153, column: 7, scope: !145)
!150 = !DILocation(line: 154, column: 4, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !3, line: 153, column: 44)
!152 = !DILocation(line: 162, column: 3, scope: !145)
!153 = !DILocation(line: 162, column: 8, scope: !145)
!154 = !DILocation(line: 162, column: 11, scope: !145)
!155 = !DILocation(line: 163, column: 18, scope: !145)
!156 = !DILocation(line: 164, column: 2, scope: !145)
!157 = !DILocation(line: 152, column: 38, scope: !140)
!158 = !DILocation(line: 152, column: 2, scope: !140)
!159 = distinct !{!159, !142, !160}
!160 = !DILocation(line: 164, column: 2, scope: !137)
!161 = !DILocation(line: 166, column: 6, scope: !162)
!162 = distinct !DILexicalBlock(scope: !117, file: !3, line: 166, column: 6)
!163 = !DILocation(line: 166, column: 6, scope: !117)
!164 = !DILocation(line: 170, column: 8, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 170, column: 7)
!166 = distinct !DILexicalBlock(scope: !162, file: !3, line: 166, column: 22)
!167 = !DILocation(line: 170, column: 7, scope: !166)
!168 = !DILocation(line: 171, column: 4, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !3, line: 170, column: 43)
!170 = !DILocation(line: 174, column: 3, scope: !169)
!171 = !DILocation(line: 179, column: 2, scope: !166)
!172 = !DILocation(line: 180, column: 1, scope: !117)
