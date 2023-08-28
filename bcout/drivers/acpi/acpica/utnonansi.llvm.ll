; ModuleID = '../bcout/drivers/acpi/acpica/utnonansi.llvm.bc'
source_filename = "drivers/acpi/acpica/utnonansi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

@_ctype = external dso_local constant [0 x i8], align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_strlwr(i8* %src_string) #0 !dbg !12 {
entry:
  %src_string.addr = alloca i8*, align 8
  %string = alloca i8*, align 8
  store i8* %src_string, i8** %src_string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src_string.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i8** %string, metadata !18, metadata !DIExpression()), !dbg !19
  %0 = load i8*, i8** %src_string.addr, align 8, !dbg !20
  %tobool = icmp ne i8* %0, null, !dbg !20
  br i1 %tobool, label %if.end, label %if.then, !dbg !22

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !23

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %src_string.addr, align 8, !dbg !25
  store i8* %1, i8** %string, align 8, !dbg !27
  br label %for.cond, !dbg !28

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i8*, i8** %string, align 8, !dbg !29
  %3 = load i8, i8* %2, align 1, !dbg !31
  %tobool1 = icmp ne i8 %3, 0, !dbg !32
  br i1 %tobool1, label %for.body, label %for.end, !dbg !32

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %string, align 8, !dbg !33
  %5 = load i8, i8* %4, align 1, !dbg !33
  %conv = sext i8 %5 to i32, !dbg !33
  %conv2 = trunc i32 %conv to i8, !dbg !33
  %call = call zeroext i8 @__tolower(i8 zeroext %conv2) #2, !dbg !33
  %6 = load i8*, i8** %string, align 8, !dbg !35
  store i8 %call, i8* %6, align 1, !dbg !36
  br label %for.inc, !dbg !37

for.inc:                                          ; preds = %for.body
  %7 = load i8*, i8** %string, align 8, !dbg !38
  %incdec.ptr = getelementptr i8, i8* %7, i32 1, !dbg !38
  store i8* %incdec.ptr, i8** %string, align 8, !dbg !38
  br label %for.cond, !dbg !39, !llvm.loop !40

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !42
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @__tolower(i8 zeroext %c) #0 !dbg !43 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !47, metadata !DIExpression()), !dbg !48
  %0 = load i8, i8* %c.addr, align 1, !dbg !49
  %conv = zext i8 %0 to i32, !dbg !49
  %idxprom = sext i32 %conv to i64, !dbg !49
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !49
  %1 = load i8, i8* %arrayidx, align 1, !dbg !49
  %conv1 = zext i8 %1 to i32, !dbg !49
  %and = and i32 %conv1, 1, !dbg !49
  %cmp = icmp ne i32 %and, 0, !dbg !49
  br i1 %cmp, label %if.then, label %if.end, !dbg !51

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1, !dbg !52
  %conv3 = zext i8 %2 to i32, !dbg !52
  %sub = sub i32 %conv3, -32, !dbg !52
  %conv4 = trunc i32 %sub to i8, !dbg !52
  store i8 %conv4, i8* %c.addr, align 1, !dbg !52
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %c.addr, align 1, !dbg !54
  ret i8 %3, !dbg !55
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_strupr(i8* %src_string) #0 !dbg !56 {
entry:
  %src_string.addr = alloca i8*, align 8
  %string = alloca i8*, align 8
  store i8* %src_string, i8** %src_string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src_string.addr, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i8** %string, metadata !59, metadata !DIExpression()), !dbg !60
  %0 = load i8*, i8** %src_string.addr, align 8, !dbg !61
  %tobool = icmp ne i8* %0, null, !dbg !61
  br i1 %tobool, label %if.end, label %if.then, !dbg !63

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !64

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %src_string.addr, align 8, !dbg !66
  store i8* %1, i8** %string, align 8, !dbg !68
  br label %for.cond, !dbg !69

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i8*, i8** %string, align 8, !dbg !70
  %3 = load i8, i8* %2, align 1, !dbg !72
  %tobool1 = icmp ne i8 %3, 0, !dbg !73
  br i1 %tobool1, label %for.body, label %for.end, !dbg !73

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %string, align 8, !dbg !74
  %5 = load i8, i8* %4, align 1, !dbg !74
  %conv = sext i8 %5 to i32, !dbg !74
  %conv2 = trunc i32 %conv to i8, !dbg !74
  %call = call zeroext i8 @__toupper(i8 zeroext %conv2) #2, !dbg !74
  %6 = load i8*, i8** %string, align 8, !dbg !76
  store i8 %call, i8* %6, align 1, !dbg !77
  br label %for.inc, !dbg !78

for.inc:                                          ; preds = %for.body
  %7 = load i8*, i8** %string, align 8, !dbg !79
  %incdec.ptr = getelementptr i8, i8* %7, i32 1, !dbg !79
  store i8* %incdec.ptr, i8** %string, align 8, !dbg !79
  br label %for.cond, !dbg !80, !llvm.loop !81

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !83
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @__toupper(i8 zeroext %c) #0 !dbg !84 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !85, metadata !DIExpression()), !dbg !86
  %0 = load i8, i8* %c.addr, align 1, !dbg !87
  %conv = zext i8 %0 to i32, !dbg !87
  %idxprom = sext i32 %conv to i64, !dbg !87
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !87
  %1 = load i8, i8* %arrayidx, align 1, !dbg !87
  %conv1 = zext i8 %1 to i32, !dbg !87
  %and = and i32 %conv1, 2, !dbg !87
  %cmp = icmp ne i32 %and, 0, !dbg !87
  br i1 %cmp, label %if.then, label %if.end, !dbg !89

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1, !dbg !90
  %conv3 = zext i8 %2 to i32, !dbg !90
  %sub = sub i32 %conv3, 32, !dbg !90
  %conv4 = trunc i32 %sub to i8, !dbg !90
  store i8 %conv4, i8* %c.addr, align 1, !dbg !90
  br label %if.end, !dbg !91

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %c.addr, align 1, !dbg !92
  ret i8 %3, !dbg !93
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_stricmp(i8* %string1, i8* %string2) #0 !dbg !94 {
entry:
  %string1.addr = alloca i8*, align 8
  %string2.addr = alloca i8*, align 8
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  store i8* %string1, i8** %string1.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string1.addr, metadata !97, metadata !DIExpression()), !dbg !98
  store i8* %string2, i8** %string2.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string2.addr, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %c1, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %c2, metadata !103, metadata !DIExpression()), !dbg !104
  br label %do.body, !dbg !105

do.body:                                          ; preds = %land.end, %entry
  %0 = load i8*, i8** %string1.addr, align 8, !dbg !106
  %1 = load i8, i8* %0, align 1, !dbg !106
  %conv = sext i8 %1 to i32, !dbg !106
  %conv1 = trunc i32 %conv to i8, !dbg !106
  %call = call zeroext i8 @__tolower(i8 zeroext %conv1) #2, !dbg !106
  %conv2 = zext i8 %call to i32, !dbg !106
  store i32 %conv2, i32* %c1, align 4, !dbg !108
  %2 = load i8*, i8** %string2.addr, align 8, !dbg !109
  %3 = load i8, i8* %2, align 1, !dbg !109
  %conv3 = sext i8 %3 to i32, !dbg !109
  %conv4 = trunc i32 %conv3 to i8, !dbg !109
  %call5 = call zeroext i8 @__tolower(i8 zeroext %conv4) #2, !dbg !109
  %conv6 = zext i8 %call5 to i32, !dbg !109
  store i32 %conv6, i32* %c2, align 4, !dbg !110
  %4 = load i8*, i8** %string1.addr, align 8, !dbg !111
  %incdec.ptr = getelementptr i8, i8* %4, i32 1, !dbg !111
  store i8* %incdec.ptr, i8** %string1.addr, align 8, !dbg !111
  %5 = load i8*, i8** %string2.addr, align 8, !dbg !112
  %incdec.ptr7 = getelementptr i8, i8* %5, i32 1, !dbg !112
  store i8* %incdec.ptr7, i8** %string2.addr, align 8, !dbg !112
  br label %do.cond, !dbg !113

do.cond:                                          ; preds = %do.body
  %6 = load i32, i32* %c1, align 4, !dbg !114
  %7 = load i32, i32* %c2, align 4, !dbg !115
  %cmp = icmp eq i32 %6, %7, !dbg !116
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !117

land.rhs:                                         ; preds = %do.cond
  %8 = load i32, i32* %c1, align 4, !dbg !118
  %tobool = icmp ne i32 %8, 0, !dbg !117
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %9 = phi i1 [ false, %do.cond ], [ %tobool, %land.rhs ], !dbg !119
  br i1 %9, label %do.body, label %do.end, !dbg !113, !llvm.loop !120

do.end:                                           ; preds = %land.end
  %10 = load i32, i32* %c1, align 4, !dbg !122
  %11 = load i32, i32* %c2, align 4, !dbg !123
  %sub = sub i32 %10, %11, !dbg !124
  ret i32 %sub, !dbg !125
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utnonansi.c", directory: "/home/lizy2001/genbc/linux")
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
!12 = distinct !DISubprogram(name: "acpi_ut_strlwr", scope: !1, file: !1, line: 29, type: !13, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!16 = !DILocalVariable(name: "src_string", arg: 1, scope: !12, file: !1, line: 29, type: !15)
!17 = !DILocation(line: 29, column: 27, scope: !12)
!18 = !DILocalVariable(name: "string", scope: !12, file: !1, line: 31, type: !15)
!19 = !DILocation(line: 31, column: 8, scope: !12)
!20 = !DILocation(line: 35, column: 7, scope: !21)
!21 = distinct !DILexicalBlock(scope: !12, file: !1, line: 35, column: 6)
!22 = !DILocation(line: 35, column: 6, scope: !12)
!23 = !DILocation(line: 36, column: 3, scope: !24)
!24 = distinct !DILexicalBlock(scope: !21, file: !1, line: 35, column: 19)
!25 = !DILocation(line: 41, column: 16, scope: !26)
!26 = distinct !DILexicalBlock(scope: !12, file: !1, line: 41, column: 2)
!27 = !DILocation(line: 41, column: 14, scope: !26)
!28 = !DILocation(line: 41, column: 7, scope: !26)
!29 = !DILocation(line: 41, column: 29, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 41, column: 2)
!31 = !DILocation(line: 41, column: 28, scope: !30)
!32 = !DILocation(line: 41, column: 2, scope: !26)
!33 = !DILocation(line: 42, column: 19, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 41, column: 47)
!35 = !DILocation(line: 42, column: 4, scope: !34)
!36 = !DILocation(line: 42, column: 11, scope: !34)
!37 = !DILocation(line: 43, column: 2, scope: !34)
!38 = !DILocation(line: 41, column: 43, scope: !30)
!39 = !DILocation(line: 41, column: 2, scope: !30)
!40 = distinct !{!40, !32, !41}
!41 = !DILocation(line: 43, column: 2, scope: !26)
!42 = !DILocation(line: 44, column: 1, scope: !12)
!43 = distinct !DISubprogram(name: "__tolower", scope: !44, file: !44, line: 42, type: !45, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!44 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/lizy2001/genbc/linux")
!45 = !DISubroutineType(types: !46)
!46 = !{!6, !6}
!47 = !DILocalVariable(name: "c", arg: 1, scope: !43, file: !44, line: 42, type: !6)
!48 = !DILocation(line: 42, column: 53, scope: !43)
!49 = !DILocation(line: 44, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !43, file: !44, line: 44, column: 6)
!51 = !DILocation(line: 44, column: 6, scope: !43)
!52 = !DILocation(line: 45, column: 5, scope: !50)
!53 = !DILocation(line: 45, column: 3, scope: !50)
!54 = !DILocation(line: 46, column: 9, scope: !43)
!55 = !DILocation(line: 46, column: 2, scope: !43)
!56 = distinct !DISubprogram(name: "acpi_ut_strupr", scope: !1, file: !1, line: 58, type: !13, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!57 = !DILocalVariable(name: "src_string", arg: 1, scope: !56, file: !1, line: 58, type: !15)
!58 = !DILocation(line: 58, column: 27, scope: !56)
!59 = !DILocalVariable(name: "string", scope: !56, file: !1, line: 60, type: !15)
!60 = !DILocation(line: 60, column: 8, scope: !56)
!61 = !DILocation(line: 64, column: 7, scope: !62)
!62 = distinct !DILexicalBlock(scope: !56, file: !1, line: 64, column: 6)
!63 = !DILocation(line: 64, column: 6, scope: !56)
!64 = !DILocation(line: 65, column: 3, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 64, column: 19)
!66 = !DILocation(line: 70, column: 16, scope: !67)
!67 = distinct !DILexicalBlock(scope: !56, file: !1, line: 70, column: 2)
!68 = !DILocation(line: 70, column: 14, scope: !67)
!69 = !DILocation(line: 70, column: 7, scope: !67)
!70 = !DILocation(line: 70, column: 29, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 70, column: 2)
!72 = !DILocation(line: 70, column: 28, scope: !71)
!73 = !DILocation(line: 70, column: 2, scope: !67)
!74 = !DILocation(line: 71, column: 19, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 70, column: 47)
!76 = !DILocation(line: 71, column: 4, scope: !75)
!77 = !DILocation(line: 71, column: 11, scope: !75)
!78 = !DILocation(line: 72, column: 2, scope: !75)
!79 = !DILocation(line: 70, column: 43, scope: !71)
!80 = !DILocation(line: 70, column: 2, scope: !71)
!81 = distinct !{!81, !73, !82}
!82 = !DILocation(line: 72, column: 2, scope: !67)
!83 = !DILocation(line: 73, column: 1, scope: !56)
!84 = distinct !DISubprogram(name: "__toupper", scope: !44, file: !44, line: 49, type: !45, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!85 = !DILocalVariable(name: "c", arg: 1, scope: !84, file: !44, line: 49, type: !6)
!86 = !DILocation(line: 49, column: 53, scope: !84)
!87 = !DILocation(line: 51, column: 6, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !44, line: 51, column: 6)
!89 = !DILocation(line: 51, column: 6, scope: !84)
!90 = !DILocation(line: 52, column: 5, scope: !88)
!91 = !DILocation(line: 52, column: 3, scope: !88)
!92 = !DILocation(line: 53, column: 9, scope: !84)
!93 = !DILocation(line: 53, column: 2, scope: !84)
!94 = distinct !DISubprogram(name: "acpi_ut_stricmp", scope: !1, file: !1, line: 90, type: !95, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!95 = !DISubroutineType(types: !96)
!96 = !{!5, !15, !15}
!97 = !DILocalVariable(name: "string1", arg: 1, scope: !94, file: !1, line: 90, type: !15)
!98 = !DILocation(line: 90, column: 27, scope: !94)
!99 = !DILocalVariable(name: "string2", arg: 2, scope: !94, file: !1, line: 90, type: !15)
!100 = !DILocation(line: 90, column: 42, scope: !94)
!101 = !DILocalVariable(name: "c1", scope: !94, file: !1, line: 92, type: !5)
!102 = !DILocation(line: 92, column: 6, scope: !94)
!103 = !DILocalVariable(name: "c2", scope: !94, file: !1, line: 93, type: !5)
!104 = !DILocation(line: 93, column: 6, scope: !94)
!105 = !DILocation(line: 95, column: 2, scope: !94)
!106 = !DILocation(line: 96, column: 8, scope: !107)
!107 = distinct !DILexicalBlock(scope: !94, file: !1, line: 95, column: 5)
!108 = !DILocation(line: 96, column: 6, scope: !107)
!109 = !DILocation(line: 97, column: 8, scope: !107)
!110 = !DILocation(line: 97, column: 6, scope: !107)
!111 = !DILocation(line: 99, column: 10, scope: !107)
!112 = !DILocation(line: 100, column: 10, scope: !107)
!113 = !DILocation(line: 101, column: 2, scope: !107)
!114 = !DILocation(line: 102, column: 10, scope: !94)
!115 = !DILocation(line: 102, column: 16, scope: !94)
!116 = !DILocation(line: 102, column: 13, scope: !94)
!117 = !DILocation(line: 102, column: 20, scope: !94)
!118 = !DILocation(line: 102, column: 24, scope: !94)
!119 = !DILocation(line: 0, scope: !94)
!120 = distinct !{!120, !105, !121}
!121 = !DILocation(line: 102, column: 27, scope: !94)
!122 = !DILocation(line: 104, column: 10, scope: !94)
!123 = !DILocation(line: 104, column: 15, scope: !94)
!124 = !DILocation(line: 104, column: 13, scope: !94)
!125 = !DILocation(line: 104, column: 2, scope: !94)
