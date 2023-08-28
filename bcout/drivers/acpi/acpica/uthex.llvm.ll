; ModuleID = '../bcout/drivers/acpi/acpica/uthex.llvm.bc'
source_filename = "drivers/acpi/acpica/uthex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

@acpi_gbl_hex_to_ascii = internal constant [16 x i8] c"0123456789ABCDEF", align 16, !dbg !0
@_ctype = external dso_local constant [0 x i8], align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local signext i8 @acpi_ut_hex_to_ascii_char(i64 %integer, i32 %position) #0 !dbg !28 {
entry:
  %integer.addr = alloca i64, align 8
  %position.addr = alloca i32, align 4
  %index = alloca i64, align 8
  store i64 %integer, i64* %integer.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %integer.addr, metadata !34, metadata !DIExpression()), !dbg !35
  store i32 %position, i32* %position.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %position.addr, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i64* %index, metadata !38, metadata !DIExpression()), !dbg !39
  %0 = load i64, i64* %integer.addr, align 8, !dbg !40
  %1 = load i32, i32* %position.addr, align 4, !dbg !41
  %call = call i32 @acpi_ut_short_shift_right(i64 %0, i32 %1, i64* %index) #3, !dbg !42
  %2 = load i64, i64* %index, align 8, !dbg !43
  %and = and i64 %2, 15, !dbg !44
  %arrayidx = getelementptr [16 x i8], [16 x i8]* @acpi_gbl_hex_to_ascii, i64 0, i64 %and, !dbg !45
  %3 = load i8, i8* %arrayidx, align 1, !dbg !45
  ret i8 %3, !dbg !46
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_short_shift_right(i64, i32, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_ascii_to_hex_byte(i8* %two_ascii_chars, i8* %return_byte) #0 !dbg !47 {
entry:
  %retval = alloca i32, align 4
  %two_ascii_chars.addr = alloca i8*, align 8
  %return_byte.addr = alloca i8*, align 8
  store i8* %two_ascii_chars, i8** %two_ascii_chars.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %two_ascii_chars.addr, metadata !52, metadata !DIExpression()), !dbg !53
  store i8* %return_byte, i8** %return_byte.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %return_byte.addr, metadata !54, metadata !DIExpression()), !dbg !55
  %0 = load i8*, i8** %two_ascii_chars.addr, align 8, !dbg !56
  %arrayidx = getelementptr i8, i8* %0, i64 0, !dbg !56
  %1 = load i8, i8* %arrayidx, align 1, !dbg !56
  %conv = sext i8 %1 to i32, !dbg !56
  %conv1 = trunc i32 %conv to i8, !dbg !56
  %conv2 = zext i8 %conv1 to i32, !dbg !56
  %idxprom = sext i32 %conv2 to i64, !dbg !56
  %arrayidx3 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !56
  %2 = load i8, i8* %arrayidx3, align 1, !dbg !56
  %conv4 = zext i8 %2 to i32, !dbg !56
  %and = and i32 %conv4, 68, !dbg !56
  %cmp = icmp ne i32 %and, 0, !dbg !56
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !58

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %two_ascii_chars.addr, align 8, !dbg !59
  %arrayidx6 = getelementptr i8, i8* %3, i64 1, !dbg !59
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !59
  %conv7 = sext i8 %4 to i32, !dbg !59
  %conv8 = trunc i32 %conv7 to i8, !dbg !59
  %conv9 = zext i8 %conv8 to i32, !dbg !59
  %idxprom10 = sext i32 %conv9 to i64, !dbg !59
  %arrayidx11 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom10, !dbg !59
  %5 = load i8, i8* %arrayidx11, align 1, !dbg !59
  %conv12 = zext i8 %5 to i32, !dbg !59
  %and13 = and i32 %conv12, 68, !dbg !59
  %cmp14 = icmp ne i32 %and13, 0, !dbg !59
  br i1 %cmp14, label %if.end, label %if.then, !dbg !60

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4101, i32* %retval, align 4, !dbg !61
  br label %return, !dbg !61

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i8*, i8** %two_ascii_chars.addr, align 8, !dbg !63
  %arrayidx16 = getelementptr i8, i8* %6, i64 1, !dbg !63
  %7 = load i8, i8* %arrayidx16, align 1, !dbg !63
  %conv17 = sext i8 %7 to i32, !dbg !63
  %call = call zeroext i8 @acpi_ut_ascii_char_to_hex(i32 %conv17) #3, !dbg !64
  %conv18 = zext i8 %call to i32, !dbg !64
  %8 = load i8*, i8** %two_ascii_chars.addr, align 8, !dbg !65
  %arrayidx19 = getelementptr i8, i8* %8, i64 0, !dbg !65
  %9 = load i8, i8* %arrayidx19, align 1, !dbg !65
  %conv20 = sext i8 %9 to i32, !dbg !65
  %call21 = call zeroext i8 @acpi_ut_ascii_char_to_hex(i32 %conv20) #3, !dbg !66
  %conv22 = zext i8 %call21 to i32, !dbg !66
  %shl = shl i32 %conv22, 4, !dbg !67
  %or = or i32 %conv18, %shl, !dbg !68
  %conv23 = trunc i32 %or to i8, !dbg !64
  %10 = load i8*, i8** %return_byte.addr, align 8, !dbg !69
  store i8 %conv23, i8* %10, align 1, !dbg !70
  store i32 0, i32* %retval, align 4, !dbg !71
  br label %return, !dbg !71

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !72
  ret i32 %11, !dbg !72
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ut_ascii_char_to_hex(i32 %hex_char) #0 !dbg !73 {
entry:
  %retval = alloca i8, align 1
  %hex_char.addr = alloca i32, align 4
  store i32 %hex_char, i32* %hex_char.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %hex_char.addr, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load i32, i32* %hex_char.addr, align 4, !dbg !78
  %cmp = icmp sle i32 %0, 57, !dbg !80
  br i1 %cmp, label %if.then, label %if.end, !dbg !81

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %hex_char.addr, align 4, !dbg !82
  %sub = sub i32 %1, 48, !dbg !84
  %conv = trunc i32 %sub to i8, !dbg !85
  store i8 %conv, i8* %retval, align 1, !dbg !86
  br label %return, !dbg !86

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %hex_char.addr, align 4, !dbg !87
  %cmp1 = icmp sle i32 %2, 70, !dbg !89
  br i1 %cmp1, label %if.then3, label %if.end6, !dbg !90

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %hex_char.addr, align 4, !dbg !91
  %sub4 = sub i32 %3, 55, !dbg !93
  %conv5 = trunc i32 %sub4 to i8, !dbg !94
  store i8 %conv5, i8* %retval, align 1, !dbg !95
  br label %return, !dbg !95

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %hex_char.addr, align 4, !dbg !96
  %sub7 = sub i32 %4, 87, !dbg !97
  %conv8 = trunc i32 %sub7 to i8, !dbg !98
  store i8 %conv8, i8* %retval, align 1, !dbg !99
  br label %return, !dbg !99

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %5 = load i8, i8* %retval, align 1, !dbg !100
  ret i8 %5, !dbg !100
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_gbl_hex_to_ascii", scope: !2, file: !3, line: 17, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/uthex.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !7, !8, !15}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !9, line: 421, baseType: !10)
!9 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !11, line: 21, baseType: !12)
!11 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !13, line: 27, baseType: !14)
!13 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !11, line: 17, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !13, line: 21, baseType: !7)
!17 = !{!0}
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !21)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !{!22}
!22 = !DISubrange(count: 16)
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"Code Model", i32 2}
!27 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!28 = distinct !DISubprogram(name: "acpi_ut_hex_to_ascii_char", scope: !3, file: !3, line: 36, type: !29, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!29 = !DISubroutineType(types: !30)
!30 = !{!20, !31, !10}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !11, line: 23, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !13, line: 31, baseType: !33)
!33 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocalVariable(name: "integer", arg: 1, scope: !28, file: !3, line: 36, type: !31)
!35 = !DILocation(line: 36, column: 36, scope: !28)
!36 = !DILocalVariable(name: "position", arg: 2, scope: !28, file: !3, line: 36, type: !10)
!37 = !DILocation(line: 36, column: 49, scope: !28)
!38 = !DILocalVariable(name: "index", scope: !28, file: !3, line: 38, type: !31)
!39 = !DILocation(line: 38, column: 6, scope: !28)
!40 = !DILocation(line: 40, column: 28, scope: !28)
!41 = !DILocation(line: 40, column: 37, scope: !28)
!42 = !DILocation(line: 40, column: 2, scope: !28)
!43 = !DILocation(line: 41, column: 32, scope: !28)
!44 = !DILocation(line: 41, column: 38, scope: !28)
!45 = !DILocation(line: 41, column: 10, scope: !28)
!46 = !DILocation(line: 41, column: 2, scope: !28)
!47 = distinct !DISubprogram(name: "acpi_ut_ascii_to_hex_byte", scope: !3, file: !3, line: 58, type: !48, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!48 = !DISubroutineType(types: !49)
!49 = !{!8, !50, !51}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!52 = !DILocalVariable(name: "two_ascii_chars", arg: 1, scope: !47, file: !3, line: 58, type: !50)
!53 = !DILocation(line: 58, column: 45, scope: !47)
!54 = !DILocalVariable(name: "return_byte", arg: 2, scope: !47, file: !3, line: 58, type: !51)
!55 = !DILocation(line: 58, column: 66, scope: !47)
!56 = !DILocation(line: 63, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !47, file: !3, line: 63, column: 6)
!58 = !DILocation(line: 63, column: 41, scope: !57)
!59 = !DILocation(line: 64, column: 7, scope: !57)
!60 = !DILocation(line: 63, column: 6, scope: !47)
!61 = !DILocation(line: 65, column: 3, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !3, line: 64, column: 42)
!63 = !DILocation(line: 69, column: 32, scope: !47)
!64 = !DILocation(line: 69, column: 6, scope: !47)
!65 = !DILocation(line: 70, column: 33, scope: !47)
!66 = !DILocation(line: 70, column: 7, scope: !47)
!67 = !DILocation(line: 70, column: 53, scope: !47)
!68 = !DILocation(line: 69, column: 52, scope: !47)
!69 = !DILocation(line: 68, column: 3, scope: !47)
!70 = !DILocation(line: 68, column: 15, scope: !47)
!71 = !DILocation(line: 72, column: 2, scope: !47)
!72 = !DILocation(line: 73, column: 1, scope: !47)
!73 = distinct !DISubprogram(name: "acpi_ut_ascii_char_to_hex", scope: !3, file: !3, line: 88, type: !74, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!74 = !DISubroutineType(types: !75)
!75 = !{!15, !6}
!76 = !DILocalVariable(name: "hex_char", arg: 1, scope: !73, file: !3, line: 88, type: !6)
!77 = !DILocation(line: 88, column: 34, scope: !73)
!78 = !DILocation(line: 93, column: 6, scope: !79)
!79 = distinct !DILexicalBlock(scope: !73, file: !3, line: 93, column: 6)
!80 = !DILocation(line: 93, column: 15, scope: !79)
!81 = !DILocation(line: 93, column: 6, scope: !73)
!82 = !DILocation(line: 94, column: 16, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !3, line: 93, column: 23)
!84 = !DILocation(line: 94, column: 25, scope: !83)
!85 = !DILocation(line: 94, column: 11, scope: !83)
!86 = !DILocation(line: 94, column: 3, scope: !83)
!87 = !DILocation(line: 99, column: 6, scope: !88)
!88 = distinct !DILexicalBlock(scope: !73, file: !3, line: 99, column: 6)
!89 = !DILocation(line: 99, column: 15, scope: !88)
!90 = !DILocation(line: 99, column: 6, scope: !73)
!91 = !DILocation(line: 100, column: 16, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !3, line: 99, column: 23)
!93 = !DILocation(line: 100, column: 25, scope: !92)
!94 = !DILocation(line: 100, column: 11, scope: !92)
!95 = !DILocation(line: 100, column: 3, scope: !92)
!96 = !DILocation(line: 105, column: 15, scope: !73)
!97 = !DILocation(line: 105, column: 24, scope: !73)
!98 = !DILocation(line: 105, column: 10, scope: !73)
!99 = !DILocation(line: 105, column: 2, scope: !73)
!100 = !DILocation(line: 106, column: 1, scope: !73)
