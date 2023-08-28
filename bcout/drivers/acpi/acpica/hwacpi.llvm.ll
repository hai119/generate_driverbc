; ModuleID = '../bcout/drivers/acpi/acpica/hwacpi.llvm.bc'
source_filename = "drivers/acpi/acpica/hwacpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>

@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@_acpi_module_name = internal constant [7 x i8] c"hwacpi\00", align 1, !dbg !0
@.str = private unnamed_addr constant [43 x i8] c"No SMI_CMD in FADT, mode transition failed\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"No ACPI mode transition supported in this system (enable/disable both zero)\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not write ACPI mode change\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_set_mode(i32 %mode) #0 !dbg !24 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %status, metadata !28, metadata !DIExpression()), !dbg !29
  %0 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !30
  %tobool = icmp ne i8 %0, 0, !dbg !30
  br i1 %tobool, label %if.then, label %if.end, !dbg !32

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !33
  br label %return, !dbg !33

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !35
  %tobool1 = icmp ne i32 %1, 0, !dbg !37
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !38

if.then2:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0)) #3, !dbg !39
  store i32 22, i32* %retval, align 4, !dbg !41
  br label %return, !dbg !41

if.end3:                                          ; preds = %if.end
  %2 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 7), align 1, !dbg !42
  %tobool4 = icmp ne i8 %2, 0, !dbg !44
  br i1 %tobool4, label %if.end7, label %land.lhs.true, !dbg !45

land.lhs.true:                                    ; preds = %if.end3
  %3 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 8), align 1, !dbg !46
  %tobool5 = icmp ne i8 %3, 0, !dbg !47
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !48

if.then6:                                         ; preds = %land.lhs.true
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !49
  store i32 0, i32* %retval, align 4, !dbg !51
  br label %return, !dbg !51

if.end7:                                          ; preds = %land.lhs.true, %if.end3
  %4 = load i32, i32* %mode.addr, align 4, !dbg !52
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
  ], !dbg !53

sw.bb:                                            ; preds = %if.end7
  %5 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !54
  %conv = zext i32 %5 to i64, !dbg !56
  %6 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 7), align 1, !dbg !57
  %conv8 = zext i8 %6 to i32, !dbg !58
  %call = call i32 @acpi_hw_write_port(i64 %conv, i32 %conv8, i32 8) #3, !dbg !59
  store i32 %call, i32* %status, align 4, !dbg !60
  br label %sw.epilog, !dbg !61

sw.bb9:                                           ; preds = %if.end7
  %7 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !62
  %conv10 = zext i32 %7 to i64, !dbg !63
  %8 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 8), align 1, !dbg !64
  %conv11 = zext i8 %8 to i32, !dbg !65
  %call12 = call i32 @acpi_hw_write_port(i64 %conv10, i32 %conv11, i32 8) #3, !dbg !66
  store i32 %call12, i32* %status, align 4, !dbg !67
  br label %sw.epilog, !dbg !68

sw.default:                                       ; preds = %if.end7
  store i32 4097, i32* %retval, align 4, !dbg !69
  br label %return, !dbg !69

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb
  %9 = load i32, i32* %status, align 4, !dbg !70
  %tobool13 = icmp ne i32 %9, 0, !dbg !70
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !72

if.then14:                                        ; preds = %sw.epilog
  %10 = load i32, i32* %status, align 4, !dbg !73
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 93, i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !73
  %11 = load i32, i32* %status, align 4, !dbg !75
  store i32 %11, i32* %retval, align 4, !dbg !75
  br label %return, !dbg !75

if.end15:                                         ; preds = %sw.epilog
  store i32 0, i32* %retval, align 4, !dbg !76
  br label %return, !dbg !76

return:                                           ; preds = %if.end15, %if.then14, %sw.default, %if.then6, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !77
  ret i32 %12, !dbg !77
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_write_port(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_get_mode() #0 !dbg !78 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %value = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata i32* %value, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !85
  %tobool = icmp ne i8 %0, 0, !dbg !85
  br i1 %tobool, label %if.then, label %if.end, !dbg !87

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !88
  br label %return, !dbg !88

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !90
  %tobool1 = icmp ne i32 %1, 0, !dbg !92
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !93

if.then2:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !94
  br label %return, !dbg !94

if.end3:                                          ; preds = %if.end
  %call = call i32 @acpi_read_bit_register(i32 14, i32* %value) #3, !dbg !96
  store i32 %call, i32* %status, align 4, !dbg !97
  %2 = load i32, i32* %status, align 4, !dbg !98
  %tobool4 = icmp ne i32 %2, 0, !dbg !98
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !100

if.then5:                                         ; preds = %if.end3
  store i32 2, i32* %retval, align 4, !dbg !101
  br label %return, !dbg !101

if.end6:                                          ; preds = %if.end3
  %3 = load i32, i32* %value, align 4, !dbg !103
  %tobool7 = icmp ne i32 %3, 0, !dbg !103
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !105

if.then8:                                         ; preds = %if.end6
  store i32 1, i32* %retval, align 4, !dbg !106
  br label %return, !dbg !106

if.else:                                          ; preds = %if.end6
  store i32 2, i32* %retval, align 4, !dbg !108
  br label %return, !dbg !108

return:                                           ; preds = %if.else, %if.then8, %if.then5, %if.then2, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !110
  ret i32 %4, !dbg !110
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_read_bit_register(i32, i32*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/hwacpi.c", directory: "/home/lizy2001/genbc/linux")
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
!24 = distinct !DISubprogram(name: "acpi_hw_set_mode", scope: !3, file: !3, line: 28, type: !25, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!25 = !DISubroutineType(types: !5)
!26 = !DILocalVariable(name: "mode", arg: 1, scope: !24, file: !3, line: 28, type: !8)
!27 = !DILocation(line: 28, column: 34, scope: !24)
!28 = !DILocalVariable(name: "status", scope: !24, file: !3, line: 31, type: !6)
!29 = !DILocation(line: 31, column: 14, scope: !24)
!30 = !DILocation(line: 37, column: 6, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !3, line: 37, column: 6)
!32 = !DILocation(line: 37, column: 6, scope: !24)
!33 = !DILocation(line: 38, column: 3, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !3, line: 37, column: 33)
!35 = !DILocation(line: 45, column: 21, scope: !36)
!36 = distinct !DILexicalBlock(scope: !24, file: !3, line: 45, column: 6)
!37 = !DILocation(line: 45, column: 7, scope: !36)
!38 = !DILocation(line: 45, column: 6, scope: !24)
!39 = !DILocation(line: 46, column: 3, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !3, line: 45, column: 34)
!41 = !DILocation(line: 48, column: 3, scope: !40)
!42 = !DILocation(line: 58, column: 21, scope: !43)
!43 = distinct !DILexicalBlock(scope: !24, file: !3, line: 58, column: 6)
!44 = !DILocation(line: 58, column: 7, scope: !43)
!45 = !DILocation(line: 58, column: 33, scope: !43)
!46 = !DILocation(line: 58, column: 51, scope: !43)
!47 = !DILocation(line: 58, column: 37, scope: !43)
!48 = !DILocation(line: 58, column: 6, scope: !24)
!49 = !DILocation(line: 59, column: 3, scope: !50)
!50 = distinct !DILexicalBlock(scope: !43, file: !3, line: 58, column: 65)
!51 = !DILocation(line: 62, column: 3, scope: !50)
!52 = !DILocation(line: 65, column: 10, scope: !24)
!53 = !DILocation(line: 65, column: 2, scope: !24)
!54 = !DILocation(line: 70, column: 45, scope: !55)
!55 = distinct !DILexicalBlock(scope: !24, file: !3, line: 65, column: 16)
!56 = !DILocation(line: 70, column: 31, scope: !55)
!57 = !DILocation(line: 71, column: 30, scope: !55)
!58 = !DILocation(line: 71, column: 10, scope: !55)
!59 = !DILocation(line: 70, column: 12, scope: !55)
!60 = !DILocation(line: 70, column: 10, scope: !55)
!61 = !DILocation(line: 74, column: 3, scope: !55)
!62 = !DILocation(line: 81, column: 45, scope: !55)
!63 = !DILocation(line: 81, column: 31, scope: !55)
!64 = !DILocation(line: 82, column: 29, scope: !55)
!65 = !DILocation(line: 82, column: 10, scope: !55)
!66 = !DILocation(line: 81, column: 12, scope: !55)
!67 = !DILocation(line: 81, column: 10, scope: !55)
!68 = !DILocation(line: 85, column: 3, scope: !55)
!69 = !DILocation(line: 89, column: 3, scope: !55)
!70 = !DILocation(line: 92, column: 6, scope: !71)
!71 = distinct !DILexicalBlock(scope: !24, file: !3, line: 92, column: 6)
!72 = !DILocation(line: 92, column: 6, scope: !24)
!73 = !DILocation(line: 93, column: 3, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !3, line: 92, column: 28)
!75 = !DILocation(line: 95, column: 3, scope: !74)
!76 = !DILocation(line: 98, column: 2, scope: !24)
!77 = !DILocation(line: 99, column: 1, scope: !24)
!78 = distinct !DISubprogram(name: "acpi_hw_get_mode", scope: !3, file: !3, line: 114, type: !79, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!79 = !DISubroutineType(types: !80)
!80 = !{!8}
!81 = !DILocalVariable(name: "status", scope: !78, file: !3, line: 116, type: !6)
!82 = !DILocation(line: 116, column: 14, scope: !78)
!83 = !DILocalVariable(name: "value", scope: !78, file: !3, line: 117, type: !8)
!84 = !DILocation(line: 117, column: 6, scope: !78)
!85 = !DILocation(line: 123, column: 6, scope: !86)
!86 = distinct !DILexicalBlock(scope: !78, file: !3, line: 123, column: 6)
!87 = !DILocation(line: 123, column: 6, scope: !78)
!88 = !DILocation(line: 124, column: 3, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !3, line: 123, column: 33)
!90 = !DILocation(line: 131, column: 21, scope: !91)
!91 = distinct !DILexicalBlock(scope: !78, file: !3, line: 131, column: 6)
!92 = !DILocation(line: 131, column: 7, scope: !91)
!93 = !DILocation(line: 131, column: 6, scope: !78)
!94 = !DILocation(line: 132, column: 3, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !3, line: 131, column: 34)
!96 = !DILocation(line: 135, column: 11, scope: !78)
!97 = !DILocation(line: 135, column: 9, scope: !78)
!98 = !DILocation(line: 136, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !78, file: !3, line: 136, column: 6)
!100 = !DILocation(line: 136, column: 6, scope: !78)
!101 = !DILocation(line: 137, column: 3, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !3, line: 136, column: 28)
!103 = !DILocation(line: 140, column: 6, scope: !104)
!104 = distinct !DILexicalBlock(scope: !78, file: !3, line: 140, column: 6)
!105 = !DILocation(line: 140, column: 6, scope: !78)
!106 = !DILocation(line: 141, column: 3, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !3, line: 140, column: 13)
!108 = !DILocation(line: 143, column: 3, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !3, line: 142, column: 9)
!110 = !DILocation(line: 145, column: 1, scope: !78)
