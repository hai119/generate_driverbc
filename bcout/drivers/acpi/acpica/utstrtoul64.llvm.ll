; ModuleID = '../bcout/drivers/acpi/acpica/utstrtoul64.llvm.bc'
source_filename = "drivers/acpi/acpica/utstrtoul64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

@acpi_gbl_integer_bit_width = external dso_local global i8, align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_strtoul64(i8* %string, i64* %return_value) #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  %return_value.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %original_bit_width = alloca i8, align 1
  %base = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i64* %return_value, i64** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %return_value.addr, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %status, metadata !29, metadata !DIExpression()), !dbg !30
  store i32 0, i32* %status, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i8* %original_bit_width, metadata !31, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %base, metadata !36, metadata !DIExpression()), !dbg !37
  store i32 10, i32* %base, align 4, !dbg !37
  %0 = load i64*, i64** %return_value.addr, align 8, !dbg !38
  store i64 0, i64* %0, align 8, !dbg !39
  %1 = load i8*, i8** %string.addr, align 8, !dbg !40
  %2 = load i8, i8* %1, align 1, !dbg !42
  %conv = sext i8 %2 to i32, !dbg !42
  %cmp = icmp eq i32 %conv, 0, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !45
  br label %return, !dbg !45

if.end:                                           ; preds = %entry
  %call = call signext i8 @acpi_ut_remove_whitespace(i8** %string.addr) #3, !dbg !47
  %tobool = icmp ne i8 %call, 0, !dbg !47
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !49

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !50
  br label %return, !dbg !50

if.end3:                                          ; preds = %if.end
  %call4 = call zeroext i8 @acpi_ut_detect_hex_prefix(i8** %string.addr) #3, !dbg !52
  %tobool5 = icmp ne i8 %call4, 0, !dbg !52
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !54

if.then6:                                         ; preds = %if.end3
  store i32 16, i32* %base, align 4, !dbg !55
  br label %if.end11, !dbg !57

if.else:                                          ; preds = %if.end3
  %call7 = call zeroext i8 @acpi_ut_detect_octal_prefix(i8** %string.addr) #3, !dbg !58
  %tobool8 = icmp ne i8 %call7, 0, !dbg !58
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !60

if.then9:                                         ; preds = %if.else
  store i32 8, i32* %base, align 4, !dbg !61
  br label %if.end10, !dbg !63

if.end10:                                         ; preds = %if.then9, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then6
  %call12 = call signext i8 @acpi_ut_remove_leading_zeros(i8** %string.addr) #3, !dbg !64
  %tobool13 = icmp ne i8 %call12, 0, !dbg !64
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !66

if.then14:                                        ; preds = %if.end11
  store i32 0, i32* %retval, align 4, !dbg !67
  br label %return, !dbg !67

if.end15:                                         ; preds = %if.end11
  %3 = load i8, i8* @acpi_gbl_integer_bit_width, align 1, !dbg !69
  store i8 %3, i8* %original_bit_width, align 1, !dbg !70
  store i8 64, i8* @acpi_gbl_integer_bit_width, align 1, !dbg !71
  %4 = load i32, i32* %base, align 4, !dbg !72
  switch i32 %4, label %sw.default [
    i32 8, label %sw.bb
    i32 10, label %sw.bb17
    i32 16, label %sw.bb19
  ], !dbg !73

sw.bb:                                            ; preds = %if.end15
  %5 = load i8*, i8** %string.addr, align 8, !dbg !74
  %6 = load i64*, i64** %return_value.addr, align 8, !dbg !76
  %call16 = call i32 @acpi_ut_convert_octal_string(i8* %5, i64* %6) #3, !dbg !77
  store i32 %call16, i32* %status, align 4, !dbg !78
  br label %sw.epilog, !dbg !79

sw.bb17:                                          ; preds = %if.end15
  %7 = load i8*, i8** %string.addr, align 8, !dbg !80
  %8 = load i64*, i64** %return_value.addr, align 8, !dbg !81
  %call18 = call i32 @acpi_ut_convert_decimal_string(i8* %7, i64* %8) #3, !dbg !82
  store i32 %call18, i32* %status, align 4, !dbg !83
  br label %sw.epilog, !dbg !84

sw.bb19:                                          ; preds = %if.end15
  br label %sw.default, !dbg !84

sw.default:                                       ; preds = %if.end15, %sw.bb19
  %9 = load i8*, i8** %string.addr, align 8, !dbg !85
  %10 = load i64*, i64** %return_value.addr, align 8, !dbg !86
  %call20 = call i32 @acpi_ut_convert_hex_string(i8* %9, i64* %10) #3, !dbg !87
  store i32 %call20, i32* %status, align 4, !dbg !88
  br label %sw.epilog, !dbg !89

sw.epilog:                                        ; preds = %sw.default, %sw.bb17, %sw.bb
  %11 = load i8, i8* %original_bit_width, align 1, !dbg !90
  store i8 %11, i8* @acpi_gbl_integer_bit_width, align 1, !dbg !91
  %12 = load i32, i32* %status, align 4, !dbg !92
  store i32 %12, i32* %retval, align 4, !dbg !92
  br label %return, !dbg !92

return:                                           ; preds = %sw.epilog, %if.then14, %if.then2, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !93
  ret i32 %13, !dbg !93
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local signext i8 @acpi_ut_remove_whitespace(i8**) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_detect_hex_prefix(i8**) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_detect_octal_prefix(i8**) #2

; Function Attrs: noredzone
declare dso_local signext i8 @acpi_ut_remove_leading_zeros(i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_convert_octal_string(i8*, i64*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_convert_decimal_string(i8*, i64*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_convert_hex_string(i8*, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @acpi_ut_implicit_strtoul64(i8* %string) #0 !dbg !94 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca i8*, align 8
  %converted_integer = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata i64* %converted_integer, metadata !99, metadata !DIExpression()), !dbg !100
  store i64 0, i64* %converted_integer, align 8, !dbg !100
  %call = call signext i8 @acpi_ut_remove_whitespace(i8** %string.addr) #3, !dbg !101
  %tobool = icmp ne i8 %call, 0, !dbg !101
  br i1 %tobool, label %if.end, label %if.then, !dbg !103

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !104
  br label %return, !dbg !104

if.end:                                           ; preds = %entry
  call void @acpi_ut_remove_hex_prefix(i8** %string.addr) #3, !dbg !106
  %call1 = call signext i8 @acpi_ut_remove_leading_zeros(i8** %string.addr) #3, !dbg !107
  %tobool2 = icmp ne i8 %call1, 0, !dbg !107
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !109

if.then3:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8, !dbg !110
  br label %return, !dbg !110

if.end4:                                          ; preds = %if.end
  %0 = load i8*, i8** %string.addr, align 8, !dbg !112
  %call5 = call i32 @acpi_ut_convert_hex_string(i8* %0, i64* %converted_integer) #3, !dbg !113
  %1 = load i64, i64* %converted_integer, align 8, !dbg !114
  store i64 %1, i64* %retval, align 8, !dbg !114
  br label %return, !dbg !114

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !115
  ret i64 %2, !dbg !115
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_hex_prefix(i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @acpi_ut_explicit_strtoul64(i8* %string) #0 !dbg !116 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca i8*, align 8
  %converted_integer = alloca i64, align 8
  %base = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata i64* %converted_integer, metadata !119, metadata !DIExpression()), !dbg !120
  store i64 0, i64* %converted_integer, align 8, !dbg !120
  call void @llvm.dbg.declare(metadata i32* %base, metadata !121, metadata !DIExpression()), !dbg !122
  store i32 10, i32* %base, align 4, !dbg !122
  %call = call signext i8 @acpi_ut_remove_whitespace(i8** %string.addr) #3, !dbg !123
  %tobool = icmp ne i8 %call, 0, !dbg !123
  br i1 %tobool, label %if.end, label %if.then, !dbg !125

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !126
  br label %return, !dbg !126

if.end:                                           ; preds = %entry
  %call1 = call zeroext i8 @acpi_ut_detect_hex_prefix(i8** %string.addr) #3, !dbg !128
  %tobool2 = icmp ne i8 %call1, 0, !dbg !128
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !130

if.then3:                                         ; preds = %if.end
  store i32 16, i32* %base, align 4, !dbg !131
  br label %if.end4, !dbg !133

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = call signext i8 @acpi_ut_remove_leading_zeros(i8** %string.addr) #3, !dbg !134
  %tobool6 = icmp ne i8 %call5, 0, !dbg !134
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !136

if.then7:                                         ; preds = %if.end4
  store i64 0, i64* %retval, align 8, !dbg !137
  br label %return, !dbg !137

if.end8:                                          ; preds = %if.end4
  %0 = load i32, i32* %base, align 4, !dbg !139
  switch i32 %0, label %sw.default [
    i32 10, label %sw.bb
    i32 16, label %sw.bb10
  ], !dbg !140

sw.bb:                                            ; preds = %if.end8
  br label %sw.default, !dbg !141

sw.default:                                       ; preds = %if.end8, %sw.bb
  %1 = load i8*, i8** %string.addr, align 8, !dbg !142
  %call9 = call i32 @acpi_ut_convert_decimal_string(i8* %1, i64* %converted_integer) #3, !dbg !144
  br label %sw.epilog, !dbg !145

sw.bb10:                                          ; preds = %if.end8
  %2 = load i8*, i8** %string.addr, align 8, !dbg !146
  %call11 = call i32 @acpi_ut_convert_hex_string(i8* %2, i64* %converted_integer) #3, !dbg !147
  br label %sw.epilog, !dbg !148

sw.epilog:                                        ; preds = %sw.bb10, %sw.default
  %3 = load i64, i64* %converted_integer, align 8, !dbg !149
  store i64 %3, i64* %retval, align 8, !dbg !149
  br label %return, !dbg !149

return:                                           ; preds = %sw.epilog, %if.then7, %if.then
  %4 = load i64, i64* %retval, align 8, !dbg !150
  ret i64 %4, !dbg !150
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utstrtoul64.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !5, line: 421, baseType: !6)
!5 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"Code Model", i32 2}
!15 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!16 = distinct !DISubprogram(name: "acpi_ut_strtoul64", scope: !1, file: !1, line: 80, type: !17, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{!4, !19, !21}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !24)
!24 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DILocalVariable(name: "string", arg: 1, scope: !16, file: !1, line: 80, type: !19)
!26 = !DILocation(line: 80, column: 37, scope: !16)
!27 = !DILocalVariable(name: "return_value", arg: 2, scope: !16, file: !1, line: 80, type: !21)
!28 = !DILocation(line: 80, column: 50, scope: !16)
!29 = !DILocalVariable(name: "status", scope: !16, file: !1, line: 82, type: !4)
!30 = !DILocation(line: 82, column: 14, scope: !16)
!31 = !DILocalVariable(name: "original_bit_width", scope: !16, file: !1, line: 83, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DILocation(line: 83, column: 5, scope: !16)
!36 = !DILocalVariable(name: "base", scope: !16, file: !1, line: 84, type: !6)
!37 = !DILocation(line: 84, column: 6, scope: !16)
!38 = !DILocation(line: 88, column: 3, scope: !16)
!39 = !DILocation(line: 88, column: 16, scope: !16)
!40 = !DILocation(line: 92, column: 7, scope: !41)
!41 = distinct !DILexicalBlock(scope: !16, file: !1, line: 92, column: 6)
!42 = !DILocation(line: 92, column: 6, scope: !41)
!43 = !DILocation(line: 92, column: 14, scope: !41)
!44 = !DILocation(line: 92, column: 6, scope: !16)
!45 = !DILocation(line: 93, column: 3, scope: !46)
!46 = distinct !DILexicalBlock(scope: !41, file: !1, line: 92, column: 20)
!47 = !DILocation(line: 96, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !16, file: !1, line: 96, column: 6)
!49 = !DILocation(line: 96, column: 6, scope: !16)
!50 = !DILocation(line: 97, column: 3, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 96, column: 43)
!52 = !DILocation(line: 103, column: 6, scope: !53)
!53 = distinct !DILexicalBlock(scope: !16, file: !1, line: 103, column: 6)
!54 = !DILocation(line: 103, column: 6, scope: !16)
!55 = !DILocation(line: 104, column: 8, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 103, column: 42)
!57 = !DILocation(line: 105, column: 2, scope: !56)
!58 = !DILocation(line: 111, column: 11, scope: !59)
!59 = distinct !DILexicalBlock(scope: !53, file: !1, line: 111, column: 11)
!60 = !DILocation(line: 111, column: 11, scope: !53)
!61 = !DILocation(line: 112, column: 8, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 111, column: 49)
!63 = !DILocation(line: 113, column: 2, scope: !62)
!64 = !DILocation(line: 115, column: 7, scope: !65)
!65 = distinct !DILexicalBlock(scope: !16, file: !1, line: 115, column: 6)
!66 = !DILocation(line: 115, column: 6, scope: !16)
!67 = !DILocation(line: 116, column: 3, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 115, column: 46)
!69 = !DILocation(line: 124, column: 23, scope: !16)
!70 = !DILocation(line: 124, column: 21, scope: !16)
!71 = !DILocation(line: 125, column: 29, scope: !16)
!72 = !DILocation(line: 131, column: 10, scope: !16)
!73 = !DILocation(line: 131, column: 2, scope: !16)
!74 = !DILocation(line: 133, column: 41, scope: !75)
!75 = distinct !DILexicalBlock(scope: !16, file: !1, line: 131, column: 16)
!76 = !DILocation(line: 133, column: 49, scope: !75)
!77 = !DILocation(line: 133, column: 12, scope: !75)
!78 = !DILocation(line: 133, column: 10, scope: !75)
!79 = !DILocation(line: 134, column: 3, scope: !75)
!80 = !DILocation(line: 137, column: 43, scope: !75)
!81 = !DILocation(line: 137, column: 51, scope: !75)
!82 = !DILocation(line: 137, column: 12, scope: !75)
!83 = !DILocation(line: 137, column: 10, scope: !75)
!84 = !DILocation(line: 138, column: 3, scope: !75)
!85 = !DILocation(line: 142, column: 39, scope: !75)
!86 = !DILocation(line: 142, column: 47, scope: !75)
!87 = !DILocation(line: 142, column: 12, scope: !75)
!88 = !DILocation(line: 142, column: 10, scope: !75)
!89 = !DILocation(line: 143, column: 3, scope: !75)
!90 = !DILocation(line: 148, column: 31, scope: !16)
!91 = !DILocation(line: 148, column: 29, scope: !16)
!92 = !DILocation(line: 149, column: 2, scope: !16)
!93 = !DILocation(line: 150, column: 1, scope: !16)
!94 = distinct !DISubprogram(name: "acpi_ut_implicit_strtoul64", scope: !1, file: !1, line: 206, type: !95, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!95 = !DISubroutineType(types: !96)
!96 = !{!22, !19}
!97 = !DILocalVariable(name: "string", arg: 1, scope: !94, file: !1, line: 206, type: !19)
!98 = !DILocation(line: 206, column: 38, scope: !94)
!99 = !DILocalVariable(name: "converted_integer", scope: !94, file: !1, line: 208, type: !22)
!100 = !DILocation(line: 208, column: 6, scope: !94)
!101 = !DILocation(line: 212, column: 7, scope: !102)
!102 = distinct !DILexicalBlock(scope: !94, file: !1, line: 212, column: 6)
!103 = !DILocation(line: 212, column: 6, scope: !94)
!104 = !DILocation(line: 213, column: 3, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !1, line: 212, column: 43)
!106 = !DILocation(line: 221, column: 2, scope: !94)
!107 = !DILocation(line: 223, column: 7, scope: !108)
!108 = distinct !DILexicalBlock(scope: !94, file: !1, line: 223, column: 6)
!109 = !DILocation(line: 223, column: 6, scope: !94)
!110 = !DILocation(line: 224, column: 3, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 223, column: 46)
!112 = !DILocation(line: 232, column: 29, scope: !94)
!113 = !DILocation(line: 232, column: 2, scope: !94)
!114 = !DILocation(line: 233, column: 2, scope: !94)
!115 = !DILocation(line: 234, column: 1, scope: !94)
!116 = distinct !DISubprogram(name: "acpi_ut_explicit_strtoul64", scope: !1, file: !1, line: 287, type: !95, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!117 = !DILocalVariable(name: "string", arg: 1, scope: !116, file: !1, line: 287, type: !19)
!118 = !DILocation(line: 287, column: 38, scope: !116)
!119 = !DILocalVariable(name: "converted_integer", scope: !116, file: !1, line: 289, type: !22)
!120 = !DILocation(line: 289, column: 6, scope: !116)
!121 = !DILocalVariable(name: "base", scope: !116, file: !1, line: 290, type: !6)
!122 = !DILocation(line: 290, column: 6, scope: !116)
!123 = !DILocation(line: 294, column: 7, scope: !124)
!124 = distinct !DILexicalBlock(scope: !116, file: !1, line: 294, column: 6)
!125 = !DILocation(line: 294, column: 6, scope: !116)
!126 = !DILocation(line: 295, column: 3, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !1, line: 294, column: 43)
!128 = !DILocation(line: 302, column: 6, scope: !129)
!129 = distinct !DILexicalBlock(scope: !116, file: !1, line: 302, column: 6)
!130 = !DILocation(line: 302, column: 6, scope: !116)
!131 = !DILocation(line: 303, column: 8, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !1, line: 302, column: 42)
!133 = !DILocation(line: 304, column: 2, scope: !132)
!134 = !DILocation(line: 306, column: 7, scope: !135)
!135 = distinct !DILexicalBlock(scope: !116, file: !1, line: 306, column: 6)
!136 = !DILocation(line: 306, column: 6, scope: !116)
!137 = !DILocation(line: 307, column: 3, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !1, line: 306, column: 46)
!139 = !DILocation(line: 315, column: 10, scope: !116)
!140 = !DILocation(line: 315, column: 2, scope: !116)
!141 = !DILocation(line: 315, column: 16, scope: !116)
!142 = !DILocation(line: 318, column: 34, scope: !143)
!143 = distinct !DILexicalBlock(scope: !116, file: !1, line: 315, column: 16)
!144 = !DILocation(line: 318, column: 3, scope: !143)
!145 = !DILocation(line: 319, column: 3, scope: !143)
!146 = !DILocation(line: 322, column: 30, scope: !143)
!147 = !DILocation(line: 322, column: 3, scope: !143)
!148 = !DILocation(line: 323, column: 3, scope: !143)
!149 = !DILocation(line: 326, column: 2, scope: !116)
!150 = !DILocation(line: 327, column: 1, scope: !116)
