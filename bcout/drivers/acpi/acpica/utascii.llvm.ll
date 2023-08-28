; ModuleID = '../bcout/drivers/acpi/acpica/utascii.llvm.bc'
source_filename = "drivers/acpi/acpica/utascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

@_ctype = external dso_local constant [0 x i8], align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ut_valid_nameseg(i8* %name) #0 !dbg !12 {
entry:
  %retval = alloca i8, align 1
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %i, align 4, !dbg !27
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !30
  %cmp = icmp ult i32 %0, 4, !dbg !32
  br i1 %cmp, label %for.body, label %for.end, !dbg !33

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %name.addr, align 8, !dbg !34
  %2 = load i32, i32* %i, align 4, !dbg !37
  %idxprom = zext i32 %2 to i64, !dbg !34
  %arrayidx = getelementptr i8, i8* %1, i64 %idxprom, !dbg !34
  %3 = load i8, i8* %arrayidx, align 1, !dbg !34
  %4 = load i32, i32* %i, align 4, !dbg !38
  %call = call zeroext i8 @acpi_ut_valid_name_char(i8 signext %3, i32 %4) #2, !dbg !39
  %tobool = icmp ne i8 %call, 0, !dbg !39
  br i1 %tobool, label %if.end, label %if.then, !dbg !40

if.then:                                          ; preds = %for.body
  store i8 0, i8* %retval, align 1, !dbg !41
  br label %return, !dbg !41

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !43

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4, !dbg !44
  %inc = add i32 %5, 1, !dbg !44
  store i32 %inc, i32* %i, align 4, !dbg !44
  br label %for.cond, !dbg !45, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %retval, align 1, !dbg !48
  br label %return, !dbg !48

return:                                           ; preds = %for.end, %if.then
  %6 = load i8, i8* %retval, align 1, !dbg !49
  ret i8 %6, !dbg !49
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ut_valid_name_char(i8 signext %character, i32 %position) #0 !dbg !50 {
entry:
  %retval = alloca i8, align 1
  %character.addr = alloca i8, align 1
  %position.addr = alloca i32, align 4
  store i8 %character, i8* %character.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %character.addr, metadata !53, metadata !DIExpression()), !dbg !54
  store i32 %position, i32* %position.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %position.addr, metadata !55, metadata !DIExpression()), !dbg !56
  %0 = load i8, i8* %character.addr, align 1, !dbg !57
  %conv = sext i8 %0 to i32, !dbg !57
  %cmp = icmp sge i32 %conv, 65, !dbg !59
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !60

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %character.addr, align 1, !dbg !61
  %conv2 = sext i8 %1 to i32, !dbg !61
  %cmp3 = icmp sle i32 %conv2, 90, !dbg !62
  br i1 %cmp3, label %if.end23, label %lor.lhs.false, !dbg !63

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i8, i8* %character.addr, align 1, !dbg !64
  %conv5 = sext i8 %2 to i32, !dbg !64
  %cmp6 = icmp sge i32 %conv5, 48, !dbg !65
  br i1 %cmp6, label %land.lhs.true8, label %lor.lhs.false12, !dbg !66

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %3 = load i8, i8* %character.addr, align 1, !dbg !67
  %conv9 = sext i8 %3 to i32, !dbg !67
  %cmp10 = icmp sle i32 %conv9, 57, !dbg !68
  br i1 %cmp10, label %if.end23, label %lor.lhs.false12, !dbg !69

lor.lhs.false12:                                  ; preds = %land.lhs.true8, %lor.lhs.false
  %4 = load i8, i8* %character.addr, align 1, !dbg !70
  %conv13 = sext i8 %4 to i32, !dbg !70
  %cmp14 = icmp eq i32 %conv13, 95, !dbg !71
  br i1 %cmp14, label %if.end23, label %if.then, !dbg !72

if.then:                                          ; preds = %lor.lhs.false12
  %5 = load i8, i8* %character.addr, align 1, !dbg !73
  %conv16 = sext i8 %5 to i32, !dbg !73
  %cmp17 = icmp eq i32 %conv16, 33, !dbg !76
  br i1 %cmp17, label %land.lhs.true19, label %if.end, !dbg !77

land.lhs.true19:                                  ; preds = %if.then
  %6 = load i32, i32* %position.addr, align 4, !dbg !78
  %cmp20 = icmp eq i32 %6, 3, !dbg !79
  br i1 %cmp20, label %if.then22, label %if.end, !dbg !80

if.then22:                                        ; preds = %land.lhs.true19
  store i8 1, i8* %retval, align 1, !dbg !81
  br label %return, !dbg !81

if.end:                                           ; preds = %land.lhs.true19, %if.then
  store i8 0, i8* %retval, align 1, !dbg !83
  br label %return, !dbg !83

if.end23:                                         ; preds = %lor.lhs.false12, %land.lhs.true8, %land.lhs.true
  store i8 1, i8* %retval, align 1, !dbg !84
  br label %return, !dbg !84

return:                                           ; preds = %if.end23, %if.end, %if.then22
  %7 = load i8, i8* %retval, align 1, !dbg !85
  ret i8 %7, !dbg !85
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_check_and_repair_ascii(i8* %name, i8* %repaired_name, i32 %count) #0 !dbg !86 {
entry:
  %name.addr = alloca i8*, align 8
  %repaired_name.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !90, metadata !DIExpression()), !dbg !91
  store i8* %repaired_name, i8** %repaired_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %repaired_name.addr, metadata !92, metadata !DIExpression()), !dbg !93
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %i, metadata !96, metadata !DIExpression()), !dbg !97
  store i32 0, i32* %i, align 4, !dbg !98
  br label %for.cond, !dbg !100

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !101
  %1 = load i32, i32* %count.addr, align 4, !dbg !103
  %cmp = icmp ult i32 %0, %1, !dbg !104
  br i1 %cmp, label %for.body, label %for.end, !dbg !105

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %name.addr, align 8, !dbg !106
  %3 = load i32, i32* %i, align 4, !dbg !108
  %idxprom = zext i32 %3 to i64, !dbg !106
  %arrayidx = getelementptr i8, i8* %2, i64 %idxprom, !dbg !106
  %4 = load i8, i8* %arrayidx, align 1, !dbg !106
  %5 = load i8*, i8** %repaired_name.addr, align 8, !dbg !109
  %6 = load i32, i32* %i, align 4, !dbg !110
  %idxprom1 = zext i32 %6 to i64, !dbg !109
  %arrayidx2 = getelementptr i8, i8* %5, i64 %idxprom1, !dbg !109
  store i8 %4, i8* %arrayidx2, align 1, !dbg !111
  %7 = load i8*, i8** %name.addr, align 8, !dbg !112
  %8 = load i32, i32* %i, align 4, !dbg !114
  %idxprom3 = zext i32 %8 to i64, !dbg !112
  %arrayidx4 = getelementptr i8, i8* %7, i64 %idxprom3, !dbg !112
  %9 = load i8, i8* %arrayidx4, align 1, !dbg !112
  %tobool = icmp ne i8 %9, 0, !dbg !112
  br i1 %tobool, label %if.end, label %if.then, !dbg !115

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !116

if.end:                                           ; preds = %for.body
  %10 = load i8*, i8** %name.addr, align 8, !dbg !118
  %11 = load i32, i32* %i, align 4, !dbg !118
  %idxprom5 = zext i32 %11 to i64, !dbg !118
  %arrayidx6 = getelementptr i8, i8* %10, i64 %idxprom5, !dbg !118
  %12 = load i8, i8* %arrayidx6, align 1, !dbg !118
  %conv = zext i8 %12 to i32, !dbg !118
  %idxprom7 = sext i32 %conv to i64, !dbg !118
  %arrayidx8 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom7, !dbg !118
  %13 = load i8, i8* %arrayidx8, align 1, !dbg !118
  %conv9 = zext i8 %13 to i32, !dbg !118
  %and = and i32 %conv9, 151, !dbg !118
  %cmp10 = icmp ne i32 %and, 0, !dbg !118
  br i1 %cmp10, label %if.end15, label %if.then12, !dbg !120

if.then12:                                        ; preds = %if.end
  %14 = load i8*, i8** %repaired_name.addr, align 8, !dbg !121
  %15 = load i32, i32* %i, align 4, !dbg !123
  %idxprom13 = zext i32 %15 to i64, !dbg !121
  %arrayidx14 = getelementptr i8, i8* %14, i64 %idxprom13, !dbg !121
  store i8 32, i8* %arrayidx14, align 1, !dbg !124
  br label %if.end15, !dbg !125

if.end15:                                         ; preds = %if.then12, %if.end
  br label %for.inc, !dbg !126

for.inc:                                          ; preds = %if.end15
  %16 = load i32, i32* %i, align 4, !dbg !127
  %inc = add i32 %16, 1, !dbg !127
  store i32 %inc, i32* %i, align 4, !dbg !127
  br label %for.cond, !dbg !128, !llvm.loop !129

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !131
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utascii.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"Code Model", i32 2}
!11 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!12 = distinct !DISubprogram(name: "acpi_ut_valid_nameseg", scope: !1, file: !1, line: 27, type: !13, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !19}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !16, line: 17, baseType: !17)
!16 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !6)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!20 = !DILocalVariable(name: "name", arg: 1, scope: !12, file: !1, line: 27, type: !19)
!21 = !DILocation(line: 27, column: 32, scope: !12)
!22 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 29, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 21, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !18, line: 27, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DILocation(line: 29, column: 6, scope: !12)
!27 = !DILocation(line: 33, column: 9, scope: !28)
!28 = distinct !DILexicalBlock(scope: !12, file: !1, line: 33, column: 2)
!29 = !DILocation(line: 33, column: 7, scope: !28)
!30 = !DILocation(line: 33, column: 14, scope: !31)
!31 = distinct !DILexicalBlock(scope: !28, file: !1, line: 33, column: 2)
!32 = !DILocation(line: 33, column: 16, scope: !31)
!33 = !DILocation(line: 33, column: 2, scope: !28)
!34 = !DILocation(line: 34, column: 32, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 34, column: 7)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 33, column: 42)
!37 = !DILocation(line: 34, column: 37, scope: !35)
!38 = !DILocation(line: 34, column: 41, scope: !35)
!39 = !DILocation(line: 34, column: 8, scope: !35)
!40 = !DILocation(line: 34, column: 7, scope: !36)
!41 = !DILocation(line: 35, column: 4, scope: !42)
!42 = distinct !DILexicalBlock(scope: !35, file: !1, line: 34, column: 45)
!43 = !DILocation(line: 37, column: 2, scope: !36)
!44 = !DILocation(line: 33, column: 38, scope: !31)
!45 = !DILocation(line: 33, column: 2, scope: !31)
!46 = distinct !{!46, !33, !47}
!47 = !DILocation(line: 37, column: 2, scope: !28)
!48 = !DILocation(line: 39, column: 2, scope: !12)
!49 = !DILocation(line: 40, column: 1, scope: !12)
!50 = distinct !DISubprogram(name: "acpi_ut_valid_name_char", scope: !1, file: !1, line: 60, type: !51, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!51 = !DISubroutineType(types: !52)
!52 = !{!15, !4, !23}
!53 = !DILocalVariable(name: "character", arg: 1, scope: !50, file: !1, line: 60, type: !4)
!54 = !DILocation(line: 60, column: 33, scope: !50)
!55 = !DILocalVariable(name: "position", arg: 2, scope: !50, file: !1, line: 60, type: !23)
!56 = !DILocation(line: 60, column: 48, scope: !50)
!57 = !DILocation(line: 63, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !50, file: !1, line: 63, column: 6)
!59 = !DILocation(line: 63, column: 19, scope: !58)
!60 = !DILocation(line: 63, column: 26, scope: !58)
!61 = !DILocation(line: 63, column: 29, scope: !58)
!62 = !DILocation(line: 63, column: 39, scope: !58)
!63 = !DILocation(line: 63, column: 47, scope: !58)
!64 = !DILocation(line: 64, column: 9, scope: !58)
!65 = !DILocation(line: 64, column: 19, scope: !58)
!66 = !DILocation(line: 64, column: 26, scope: !58)
!67 = !DILocation(line: 64, column: 29, scope: !58)
!68 = !DILocation(line: 64, column: 39, scope: !58)
!69 = !DILocation(line: 64, column: 47, scope: !58)
!70 = !DILocation(line: 64, column: 51, scope: !58)
!71 = !DILocation(line: 64, column: 61, scope: !58)
!72 = !DILocation(line: 63, column: 6, scope: !50)
!73 = !DILocation(line: 68, column: 7, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 68, column: 7)
!75 = distinct !DILexicalBlock(scope: !58, file: !1, line: 64, column: 71)
!76 = !DILocation(line: 68, column: 17, scope: !74)
!77 = !DILocation(line: 68, column: 24, scope: !74)
!78 = !DILocation(line: 68, column: 27, scope: !74)
!79 = !DILocation(line: 68, column: 36, scope: !74)
!80 = !DILocation(line: 68, column: 7, scope: !75)
!81 = !DILocation(line: 69, column: 4, scope: !82)
!82 = distinct !DILexicalBlock(scope: !74, file: !1, line: 68, column: 42)
!83 = !DILocation(line: 72, column: 3, scope: !75)
!84 = !DILocation(line: 75, column: 2, scope: !50)
!85 = !DILocation(line: 76, column: 1, scope: !50)
!86 = distinct !DISubprogram(name: "acpi_ut_check_and_repair_ascii", scope: !1, file: !1, line: 92, type: !87, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !89, !19, !23}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!90 = !DILocalVariable(name: "name", arg: 1, scope: !86, file: !1, line: 92, type: !89)
!91 = !DILocation(line: 92, column: 41, scope: !86)
!92 = !DILocalVariable(name: "repaired_name", arg: 2, scope: !86, file: !1, line: 92, type: !19)
!93 = !DILocation(line: 92, column: 53, scope: !86)
!94 = !DILocalVariable(name: "count", arg: 3, scope: !86, file: !1, line: 92, type: !23)
!95 = !DILocation(line: 92, column: 72, scope: !86)
!96 = !DILocalVariable(name: "i", scope: !86, file: !1, line: 94, type: !23)
!97 = !DILocation(line: 94, column: 6, scope: !86)
!98 = !DILocation(line: 96, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !86, file: !1, line: 96, column: 2)
!100 = !DILocation(line: 96, column: 7, scope: !99)
!101 = !DILocation(line: 96, column: 14, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !1, line: 96, column: 2)
!103 = !DILocation(line: 96, column: 18, scope: !102)
!104 = !DILocation(line: 96, column: 16, scope: !102)
!105 = !DILocation(line: 96, column: 2, scope: !99)
!106 = !DILocation(line: 97, column: 28, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 96, column: 30)
!108 = !DILocation(line: 97, column: 33, scope: !107)
!109 = !DILocation(line: 97, column: 3, scope: !107)
!110 = !DILocation(line: 97, column: 17, scope: !107)
!111 = !DILocation(line: 97, column: 20, scope: !107)
!112 = !DILocation(line: 99, column: 8, scope: !113)
!113 = distinct !DILexicalBlock(scope: !107, file: !1, line: 99, column: 7)
!114 = !DILocation(line: 99, column: 13, scope: !113)
!115 = !DILocation(line: 99, column: 7, scope: !107)
!116 = !DILocation(line: 100, column: 4, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 99, column: 17)
!118 = !DILocation(line: 102, column: 8, scope: !119)
!119 = distinct !DILexicalBlock(scope: !107, file: !1, line: 102, column: 7)
!120 = !DILocation(line: 102, column: 7, scope: !107)
!121 = !DILocation(line: 103, column: 4, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 102, column: 26)
!123 = !DILocation(line: 103, column: 18, scope: !122)
!124 = !DILocation(line: 103, column: 21, scope: !122)
!125 = !DILocation(line: 104, column: 3, scope: !122)
!126 = !DILocation(line: 105, column: 2, scope: !107)
!127 = !DILocation(line: 96, column: 26, scope: !102)
!128 = !DILocation(line: 96, column: 2, scope: !102)
!129 = distinct !{!129, !105, !130}
!130 = !DILocation(line: 105, column: 2, scope: !99)
!131 = !DILocation(line: 106, column: 1, scope: !86)
