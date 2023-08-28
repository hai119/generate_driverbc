; ModuleID = '../bcout/drivers/acpi/acpica/utmath.llvm.bc'
source_filename = "drivers/acpi/acpica/utmath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

@_acpi_module_name = internal constant [7 x i8] c"utmath\00", align 1, !dbg !0
@.str = private unnamed_addr constant [15 x i8] c"Divide by zero\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_short_multiply(i64 %multiplicand, i32 %multiplier, i64* %out_product) #0 !dbg !24 {
entry:
  %multiplicand.addr = alloca i64, align 8
  %multiplier.addr = alloca i32, align 4
  %out_product.addr = alloca i64*, align 8
  store i64 %multiplicand, i64* %multiplicand.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %multiplicand.addr, metadata !31, metadata !DIExpression()), !dbg !32
  store i32 %multiplier, i32* %multiplier.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %multiplier.addr, metadata !33, metadata !DIExpression()), !dbg !34
  store i64* %out_product, i64** %out_product.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_product.addr, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = load i64*, i64** %out_product.addr, align 8, !dbg !37
  %tobool = icmp ne i64* %0, null, !dbg !37
  br i1 %tobool, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %multiplicand.addr, align 8, !dbg !40
  %2 = load i32, i32* %multiplier.addr, align 4, !dbg !42
  %conv = zext i32 %2 to i64, !dbg !42
  %mul = mul i64 %1, %conv, !dbg !43
  %3 = load i64*, i64** %out_product.addr, align 8, !dbg !44
  store i64 %mul, i64* %3, align 8, !dbg !45
  br label %if.end, !dbg !46

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !47
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_short_shift_left(i64 %operand, i32 %count, i64* %out_result) #0 !dbg !48 {
entry:
  %operand.addr = alloca i64, align 8
  %count.addr = alloca i32, align 4
  %out_result.addr = alloca i64*, align 8
  store i64 %operand, i64* %operand.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %operand.addr, metadata !49, metadata !DIExpression()), !dbg !50
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !51, metadata !DIExpression()), !dbg !52
  store i64* %out_result, i64** %out_result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_result.addr, metadata !53, metadata !DIExpression()), !dbg !54
  %0 = load i64*, i64** %out_result.addr, align 8, !dbg !55
  %tobool = icmp ne i64* %0, null, !dbg !55
  br i1 %tobool, label %if.then, label %if.end, !dbg !57

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %operand.addr, align 8, !dbg !58
  %2 = load i32, i32* %count.addr, align 4, !dbg !60
  %sh_prom = zext i32 %2 to i64, !dbg !61
  %shl = shl i64 %1, %sh_prom, !dbg !61
  %3 = load i64*, i64** %out_result.addr, align 8, !dbg !62
  store i64 %shl, i64* %3, align 8, !dbg !63
  br label %if.end, !dbg !64

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !65
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_short_shift_right(i64 %operand, i32 %count, i64* %out_result) #0 !dbg !66 {
entry:
  %operand.addr = alloca i64, align 8
  %count.addr = alloca i32, align 4
  %out_result.addr = alloca i64*, align 8
  store i64 %operand, i64* %operand.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %operand.addr, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !69, metadata !DIExpression()), !dbg !70
  store i64* %out_result, i64** %out_result.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_result.addr, metadata !71, metadata !DIExpression()), !dbg !72
  %0 = load i64*, i64** %out_result.addr, align 8, !dbg !73
  %tobool = icmp ne i64* %0, null, !dbg !73
  br i1 %tobool, label %if.then, label %if.end, !dbg !75

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %operand.addr, align 8, !dbg !76
  %2 = load i32, i32* %count.addr, align 4, !dbg !78
  %sh_prom = zext i32 %2 to i64, !dbg !79
  %shr = lshr i64 %1, %sh_prom, !dbg !79
  %3 = load i64*, i64** %out_result.addr, align 8, !dbg !80
  store i64 %shr, i64* %3, align 8, !dbg !81
  br label %if.end, !dbg !82

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !83
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_short_divide(i64 %in_dividend, i32 %divisor, i64* %out_quotient, i32* %out_remainder) #0 !dbg !84 {
entry:
  %retval = alloca i32, align 4
  %in_dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %out_quotient.addr = alloca i64*, align 8
  %out_remainder.addr = alloca i32*, align 8
  store i64 %in_dividend, i64* %in_dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %in_dividend.addr, metadata !88, metadata !DIExpression()), !dbg !89
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !90, metadata !DIExpression()), !dbg !91
  store i64* %out_quotient, i64** %out_quotient.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_quotient.addr, metadata !92, metadata !DIExpression()), !dbg !93
  store i32* %out_remainder, i32** %out_remainder.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_remainder.addr, metadata !94, metadata !DIExpression()), !dbg !95
  %0 = load i32, i32* %divisor.addr, align 4, !dbg !96
  %cmp = icmp eq i32 %0, 0, !dbg !98
  br i1 %cmp, label %if.then, label %if.end, !dbg !99

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 453, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #3, !dbg !100
  store i32 12300, i32* %retval, align 4, !dbg !102
  br label %return, !dbg !102

if.end:                                           ; preds = %entry
  %1 = load i64*, i64** %out_quotient.addr, align 8, !dbg !103
  %tobool = icmp ne i64* %1, null, !dbg !103
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !105

if.then1:                                         ; preds = %if.end
  %2 = load i64, i64* %in_dividend.addr, align 8, !dbg !106
  %3 = load i32, i32* %divisor.addr, align 4, !dbg !108
  %conv = zext i32 %3 to i64, !dbg !108
  %div = udiv i64 %2, %conv, !dbg !109
  %4 = load i64*, i64** %out_quotient.addr, align 8, !dbg !110
  store i64 %div, i64* %4, align 8, !dbg !111
  br label %if.end2, !dbg !112

if.end2:                                          ; preds = %if.then1, %if.end
  %5 = load i32*, i32** %out_remainder.addr, align 8, !dbg !113
  %tobool3 = icmp ne i32* %5, null, !dbg !113
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !115

if.then4:                                         ; preds = %if.end2
  %6 = load i64, i64* %in_dividend.addr, align 8, !dbg !116
  %7 = load i32, i32* %divisor.addr, align 4, !dbg !118
  %conv5 = zext i32 %7 to i64, !dbg !118
  %rem = urem i64 %6, %conv5, !dbg !119
  %conv6 = trunc i64 %rem to i32, !dbg !120
  %8 = load i32*, i32** %out_remainder.addr, align 8, !dbg !121
  store i32 %conv6, i32* %8, align 4, !dbg !122
  br label %if.end7, !dbg !123

if.end7:                                          ; preds = %if.then4, %if.end2
  store i32 0, i32* %retval, align 4, !dbg !124
  br label %return, !dbg !124

return:                                           ; preds = %if.end7, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !125
  ret i32 %9, !dbg !125
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_divide(i64 %in_dividend, i64 %in_divisor, i64* %out_quotient, i64* %out_remainder) #0 !dbg !126 {
entry:
  %retval = alloca i32, align 4
  %in_dividend.addr = alloca i64, align 8
  %in_divisor.addr = alloca i64, align 8
  %out_quotient.addr = alloca i64*, align 8
  %out_remainder.addr = alloca i64*, align 8
  store i64 %in_dividend, i64* %in_dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %in_dividend.addr, metadata !129, metadata !DIExpression()), !dbg !130
  store i64 %in_divisor, i64* %in_divisor.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %in_divisor.addr, metadata !131, metadata !DIExpression()), !dbg !132
  store i64* %out_quotient, i64** %out_quotient.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_quotient.addr, metadata !133, metadata !DIExpression()), !dbg !134
  store i64* %out_remainder, i64** %out_remainder.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_remainder.addr, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = load i64, i64* %in_divisor.addr, align 8, !dbg !137
  %cmp = icmp eq i64 %0, 0, !dbg !139
  br i1 %cmp, label %if.then, label %if.end, !dbg !140

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 478, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #3, !dbg !141
  store i32 12300, i32* %retval, align 4, !dbg !143
  br label %return, !dbg !143

if.end:                                           ; preds = %entry
  %1 = load i64*, i64** %out_quotient.addr, align 8, !dbg !144
  %tobool = icmp ne i64* %1, null, !dbg !144
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !146

if.then1:                                         ; preds = %if.end
  %2 = load i64, i64* %in_dividend.addr, align 8, !dbg !147
  %3 = load i64, i64* %in_divisor.addr, align 8, !dbg !149
  %div = udiv i64 %2, %3, !dbg !150
  %4 = load i64*, i64** %out_quotient.addr, align 8, !dbg !151
  store i64 %div, i64* %4, align 8, !dbg !152
  br label %if.end2, !dbg !153

if.end2:                                          ; preds = %if.then1, %if.end
  %5 = load i64*, i64** %out_remainder.addr, align 8, !dbg !154
  %tobool3 = icmp ne i64* %5, null, !dbg !154
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !156

if.then4:                                         ; preds = %if.end2
  %6 = load i64, i64* %in_dividend.addr, align 8, !dbg !157
  %7 = load i64, i64* %in_divisor.addr, align 8, !dbg !159
  %rem = urem i64 %6, %7, !dbg !160
  %8 = load i64*, i64** %out_remainder.addr, align 8, !dbg !161
  store i64 %rem, i64* %8, align 8, !dbg !162
  br label %if.end5, !dbg !163

if.end5:                                          ; preds = %if.then4, %if.end2
  store i32 0, i32* %retval, align 4, !dbg !164
  br label %return, !dbg !164

return:                                           ; preds = %if.end5, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !165
  ret i32 %9, !dbg !165
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 12, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utmath.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!0}
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 56, elements: !17)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18}
!18 = !DISubrange(count: 7)
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"Code Model", i32 2}
!23 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!24 = distinct !DISubprogram(name: "acpi_ut_short_multiply", scope: !3, file: !3, line: 165, type: !25, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!25 = !DISubroutineType(types: !26)
!26 = !{!6, !27, !8, !30}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !29)
!29 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!31 = !DILocalVariable(name: "multiplicand", arg: 1, scope: !24, file: !3, line: 165, type: !27)
!32 = !DILocation(line: 165, column: 28, scope: !24)
!33 = !DILocalVariable(name: "multiplier", arg: 2, scope: !24, file: !3, line: 165, type: !8)
!34 = !DILocation(line: 165, column: 46, scope: !24)
!35 = !DILocalVariable(name: "out_product", arg: 3, scope: !24, file: !3, line: 165, type: !30)
!36 = !DILocation(line: 165, column: 63, scope: !24)
!37 = !DILocation(line: 172, column: 6, scope: !38)
!38 = distinct !DILexicalBlock(scope: !24, file: !3, line: 172, column: 6)
!39 = !DILocation(line: 172, column: 6, scope: !24)
!40 = !DILocation(line: 173, column: 18, scope: !41)
!41 = distinct !DILexicalBlock(scope: !38, file: !3, line: 172, column: 19)
!42 = !DILocation(line: 173, column: 33, scope: !41)
!43 = !DILocation(line: 173, column: 31, scope: !41)
!44 = !DILocation(line: 173, column: 4, scope: !41)
!45 = !DILocation(line: 173, column: 16, scope: !41)
!46 = !DILocation(line: 174, column: 2, scope: !41)
!47 = !DILocation(line: 176, column: 2, scope: !24)
!48 = distinct !DISubprogram(name: "acpi_ut_short_shift_left", scope: !3, file: !3, line: 189, type: !25, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!49 = !DILocalVariable(name: "operand", arg: 1, scope: !48, file: !3, line: 189, type: !27)
!50 = !DILocation(line: 189, column: 42, scope: !48)
!51 = !DILocalVariable(name: "count", arg: 2, scope: !48, file: !3, line: 189, type: !8)
!52 = !DILocation(line: 189, column: 55, scope: !48)
!53 = !DILocalVariable(name: "out_result", arg: 3, scope: !48, file: !3, line: 189, type: !30)
!54 = !DILocation(line: 189, column: 67, scope: !48)
!55 = !DILocation(line: 196, column: 6, scope: !56)
!56 = distinct !DILexicalBlock(scope: !48, file: !3, line: 196, column: 6)
!57 = !DILocation(line: 196, column: 6, scope: !48)
!58 = !DILocation(line: 197, column: 17, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !3, line: 196, column: 18)
!60 = !DILocation(line: 197, column: 28, scope: !59)
!61 = !DILocation(line: 197, column: 25, scope: !59)
!62 = !DILocation(line: 197, column: 4, scope: !59)
!63 = !DILocation(line: 197, column: 15, scope: !59)
!64 = !DILocation(line: 198, column: 2, scope: !59)
!65 = !DILocation(line: 200, column: 2, scope: !48)
!66 = distinct !DISubprogram(name: "acpi_ut_short_shift_right", scope: !3, file: !3, line: 213, type: !25, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!67 = !DILocalVariable(name: "operand", arg: 1, scope: !66, file: !3, line: 213, type: !27)
!68 = !DILocation(line: 213, column: 43, scope: !66)
!69 = !DILocalVariable(name: "count", arg: 2, scope: !66, file: !3, line: 213, type: !8)
!70 = !DILocation(line: 213, column: 56, scope: !66)
!71 = !DILocalVariable(name: "out_result", arg: 3, scope: !66, file: !3, line: 213, type: !30)
!72 = !DILocation(line: 213, column: 68, scope: !66)
!73 = !DILocation(line: 220, column: 6, scope: !74)
!74 = distinct !DILexicalBlock(scope: !66, file: !3, line: 220, column: 6)
!75 = !DILocation(line: 220, column: 6, scope: !66)
!76 = !DILocation(line: 221, column: 17, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !3, line: 220, column: 18)
!78 = !DILocation(line: 221, column: 28, scope: !77)
!79 = !DILocation(line: 221, column: 25, scope: !77)
!80 = !DILocation(line: 221, column: 4, scope: !77)
!81 = !DILocation(line: 221, column: 15, scope: !77)
!82 = !DILocation(line: 222, column: 2, scope: !77)
!83 = !DILocation(line: 224, column: 2, scope: !66)
!84 = distinct !DISubprogram(name: "acpi_ut_short_divide", scope: !3, file: !3, line: 444, type: !85, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!85 = !DISubroutineType(types: !86)
!86 = !{!6, !27, !8, !30, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!88 = !DILocalVariable(name: "in_dividend", arg: 1, scope: !84, file: !3, line: 444, type: !27)
!89 = !DILocation(line: 444, column: 26, scope: !84)
!90 = !DILocalVariable(name: "divisor", arg: 2, scope: !84, file: !3, line: 445, type: !8)
!91 = !DILocation(line: 445, column: 12, scope: !84)
!92 = !DILocalVariable(name: "out_quotient", arg: 3, scope: !84, file: !3, line: 445, type: !30)
!93 = !DILocation(line: 445, column: 26, scope: !84)
!94 = !DILocalVariable(name: "out_remainder", arg: 4, scope: !84, file: !3, line: 445, type: !87)
!95 = !DILocation(line: 445, column: 45, scope: !84)
!96 = !DILocation(line: 452, column: 6, scope: !97)
!97 = distinct !DILexicalBlock(scope: !84, file: !3, line: 452, column: 6)
!98 = !DILocation(line: 452, column: 14, scope: !97)
!99 = !DILocation(line: 452, column: 6, scope: !84)
!100 = !DILocation(line: 453, column: 3, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !3, line: 452, column: 20)
!102 = !DILocation(line: 454, column: 3, scope: !101)
!103 = !DILocation(line: 459, column: 6, scope: !104)
!104 = distinct !DILexicalBlock(scope: !84, file: !3, line: 459, column: 6)
!105 = !DILocation(line: 459, column: 6, scope: !84)
!106 = !DILocation(line: 460, column: 19, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !3, line: 459, column: 20)
!108 = !DILocation(line: 460, column: 33, scope: !107)
!109 = !DILocation(line: 460, column: 31, scope: !107)
!110 = !DILocation(line: 460, column: 4, scope: !107)
!111 = !DILocation(line: 460, column: 17, scope: !107)
!112 = !DILocation(line: 461, column: 2, scope: !107)
!113 = !DILocation(line: 462, column: 6, scope: !114)
!114 = distinct !DILexicalBlock(scope: !84, file: !3, line: 462, column: 6)
!115 = !DILocation(line: 462, column: 6, scope: !84)
!116 = !DILocation(line: 463, column: 27, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !3, line: 462, column: 21)
!118 = !DILocation(line: 463, column: 41, scope: !117)
!119 = !DILocation(line: 463, column: 39, scope: !117)
!120 = !DILocation(line: 463, column: 20, scope: !117)
!121 = !DILocation(line: 463, column: 4, scope: !117)
!122 = !DILocation(line: 463, column: 18, scope: !117)
!123 = !DILocation(line: 464, column: 2, scope: !117)
!124 = !DILocation(line: 466, column: 2, scope: !84)
!125 = !DILocation(line: 467, column: 1, scope: !84)
!126 = distinct !DISubprogram(name: "acpi_ut_divide", scope: !3, file: !3, line: 470, type: !127, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!127 = !DISubroutineType(types: !128)
!128 = !{!6, !27, !27, !30, !30}
!129 = !DILocalVariable(name: "in_dividend", arg: 1, scope: !126, file: !3, line: 470, type: !27)
!130 = !DILocation(line: 470, column: 20, scope: !126)
!131 = !DILocalVariable(name: "in_divisor", arg: 2, scope: !126, file: !3, line: 471, type: !27)
!132 = !DILocation(line: 471, column: 13, scope: !126)
!133 = !DILocalVariable(name: "out_quotient", arg: 3, scope: !126, file: !3, line: 471, type: !30)
!134 = !DILocation(line: 471, column: 30, scope: !126)
!135 = !DILocalVariable(name: "out_remainder", arg: 4, scope: !126, file: !3, line: 471, type: !30)
!136 = !DILocation(line: 471, column: 49, scope: !126)
!137 = !DILocation(line: 477, column: 6, scope: !138)
!138 = distinct !DILexicalBlock(scope: !126, file: !3, line: 477, column: 6)
!139 = !DILocation(line: 477, column: 17, scope: !138)
!140 = !DILocation(line: 477, column: 6, scope: !126)
!141 = !DILocation(line: 478, column: 3, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !3, line: 477, column: 23)
!143 = !DILocation(line: 479, column: 3, scope: !142)
!144 = !DILocation(line: 484, column: 6, scope: !145)
!145 = distinct !DILexicalBlock(scope: !126, file: !3, line: 484, column: 6)
!146 = !DILocation(line: 484, column: 6, scope: !126)
!147 = !DILocation(line: 485, column: 19, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !3, line: 484, column: 20)
!149 = !DILocation(line: 485, column: 33, scope: !148)
!150 = !DILocation(line: 485, column: 31, scope: !148)
!151 = !DILocation(line: 485, column: 4, scope: !148)
!152 = !DILocation(line: 485, column: 17, scope: !148)
!153 = !DILocation(line: 486, column: 2, scope: !148)
!154 = !DILocation(line: 487, column: 6, scope: !155)
!155 = distinct !DILexicalBlock(scope: !126, file: !3, line: 487, column: 6)
!156 = !DILocation(line: 487, column: 6, scope: !126)
!157 = !DILocation(line: 488, column: 20, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !3, line: 487, column: 21)
!159 = !DILocation(line: 488, column: 34, scope: !158)
!160 = !DILocation(line: 488, column: 32, scope: !158)
!161 = !DILocation(line: 488, column: 4, scope: !158)
!162 = !DILocation(line: 488, column: 18, scope: !158)
!163 = !DILocation(line: 489, column: 2, scope: !158)
!164 = !DILocation(line: 491, column: 2, scope: !126)
!165 = !DILocation(line: 492, column: 1, scope: !126)
