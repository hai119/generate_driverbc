; ModuleID = '../bcout/drivers/acpi/acpica/psopinfo.llvm.bc'
source_filename = "drivers/acpi/acpica/psopinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }

@acpi_gbl_aml_op_info = external dso_local constant [131 x %struct.acpi_opcode_info], align 16
@.str = private unnamed_addr constant [23 x i8] c"OpcodeName unavailable\00", align 1
@acpi_gbl_argument_count = internal constant [12 x i8] c"\00\01\01\01\01\02\02\02\02\03\03\06", align 1, !dbg !0
@acpi_gbl_short_op_index = dso_local constant [256 x i8] c"\00\01kkkk\02k\03k\04\05\06\07nk\08\09\0Ao\0B\81kkkkkkkkkkkkkkkkkkkkkkkcmmgfheidj}\7F\80kkkkkkkllllllllllllllllllllllllllkmkml\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1Ak\1B\1C\1D\1E\1F !\22#$%&'()*+,-.pq/01234567r89:;<=stuvkkwxyz>?@ABC`ab\82kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkDkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkE", align 16, !dbg !15
@acpi_gbl_long_op_index = dso_local constant [137 x i8] c"kFGkkkkkkkkkkkkkkkHIkkkkkkkkkkk{JKLMNOPQRSTkkkkkUVW~kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkXYZ[\\]^_|", align 16, !dbg !21

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %opcode) #0 !dbg !34 {
entry:
  %retval = alloca %struct.acpi_opcode_info*, align 8
  %opcode.addr = alloca i16, align 2
  store i16 %opcode, i16* %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %opcode.addr, metadata !51, metadata !DIExpression()), !dbg !52
  %0 = load i16, i16* %opcode.addr, align 2, !dbg !53
  %conv = zext i16 %0 to i32, !dbg !53
  %and = and i32 %conv, 65280, !dbg !55
  %tobool = icmp ne i32 %and, 0, !dbg !55
  br i1 %tobool, label %if.end, label %if.then, !dbg !56

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %opcode.addr, align 2, !dbg !57
  %conv1 = trunc i16 %1 to i8, !dbg !59
  %idxprom = zext i8 %conv1 to i64, !dbg !60
  %arrayidx = getelementptr [0 x i8], [0 x i8]* bitcast ([256 x i8]* @acpi_gbl_short_op_index to [0 x i8]*), i64 0, i64 %idxprom, !dbg !60
  %2 = load i8, i8* %arrayidx, align 1, !dbg !60
  %idxprom2 = zext i8 %2 to i64, !dbg !61
  %arrayidx3 = getelementptr [131 x %struct.acpi_opcode_info], [131 x %struct.acpi_opcode_info]* @acpi_gbl_aml_op_info, i64 0, i64 %idxprom2, !dbg !61
  store %struct.acpi_opcode_info* %arrayidx3, %struct.acpi_opcode_info** %retval, align 8, !dbg !62
  br label %return, !dbg !62

if.end:                                           ; preds = %entry
  %3 = load i16, i16* %opcode.addr, align 2, !dbg !63
  %conv4 = zext i16 %3 to i32, !dbg !63
  %and5 = and i32 %conv4, 65280, !dbg !65
  %cmp = icmp eq i32 %and5, 23296, !dbg !66
  br i1 %cmp, label %land.lhs.true, label %if.end17, !dbg !67

land.lhs.true:                                    ; preds = %if.end
  %4 = load i16, i16* %opcode.addr, align 2, !dbg !68
  %conv7 = trunc i16 %4 to i8, !dbg !69
  %conv8 = zext i8 %conv7 to i32, !dbg !70
  %cmp9 = icmp sle i32 %conv8, 136, !dbg !71
  br i1 %cmp9, label %if.then11, label %if.end17, !dbg !72

if.then11:                                        ; preds = %land.lhs.true
  %5 = load i16, i16* %opcode.addr, align 2, !dbg !73
  %conv12 = trunc i16 %5 to i8, !dbg !75
  %idxprom13 = zext i8 %conv12 to i64, !dbg !76
  %arrayidx14 = getelementptr [0 x i8], [0 x i8]* bitcast ([137 x i8]* @acpi_gbl_long_op_index to [0 x i8]*), i64 0, i64 %idxprom13, !dbg !76
  %6 = load i8, i8* %arrayidx14, align 1, !dbg !76
  %idxprom15 = zext i8 %6 to i64, !dbg !77
  %arrayidx16 = getelementptr [131 x %struct.acpi_opcode_info], [131 x %struct.acpi_opcode_info]* @acpi_gbl_aml_op_info, i64 0, i64 %idxprom15, !dbg !77
  store %struct.acpi_opcode_info* %arrayidx16, %struct.acpi_opcode_info** %retval, align 8, !dbg !78
  br label %return, !dbg !78

if.end17:                                         ; preds = %land.lhs.true, %if.end
  store %struct.acpi_opcode_info* getelementptr inbounds ([131 x %struct.acpi_opcode_info], [131 x %struct.acpi_opcode_info]* @acpi_gbl_aml_op_info, i64 0, i64 107), %struct.acpi_opcode_info** %retval, align 8, !dbg !79
  br label %return, !dbg !79

return:                                           ; preds = %if.end17, %if.then11, %if.then
  %7 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %retval, align 8, !dbg !80
  ret %struct.acpi_opcode_info* %7, !dbg !80
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ps_get_opcode_name(i16 zeroext %opcode) #0 !dbg !81 {
entry:
  %opcode.addr = alloca i16, align 2
  store i16 %opcode, i16* %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %opcode.addr, metadata !87, metadata !DIExpression()), !dbg !88
  ret i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), !dbg !89
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ps_get_argument_count(i32 %op_type) #0 !dbg !90 {
entry:
  %retval = alloca i8, align 1
  %op_type.addr = alloca i32, align 4
  store i32 %op_type, i32* %op_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op_type.addr, metadata !93, metadata !DIExpression()), !dbg !94
  %0 = load i32, i32* %op_type.addr, align 4, !dbg !95
  %cmp = icmp ule i32 %0, 11, !dbg !97
  br i1 %cmp, label %if.then, label %if.end, !dbg !98

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %op_type.addr, align 4, !dbg !99
  %idxprom = zext i32 %1 to i64, !dbg !101
  %arrayidx = getelementptr [12 x i8], [12 x i8]* @acpi_gbl_argument_count, i64 0, i64 %idxprom, !dbg !101
  %2 = load i8, i8* %arrayidx, align 1, !dbg !101
  store i8 %2, i8* %retval, align 1, !dbg !102
  br label %return, !dbg !102

if.end:                                           ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !103
  br label %return, !dbg !103

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, i8* %retval, align 1, !dbg !104
  ret i8 %3, !dbg !104
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_gbl_argument_count", scope: !2, file: !3, line: 19, type: !26, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/psopinfo.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !11}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !13)
!13 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!14 = !{!15, !21, !0}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "acpi_gbl_short_op_index", scope: !2, file: !3, line: 171, type: !17, isLocal: false, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !19)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!19 = !{!20}
!20 = !DISubrange(count: 256)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "acpi_gbl_long_op_index", scope: !2, file: !3, line: 212, type: !23, isLocal: false, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1096, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 137)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 96, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 12)
!29 = !{i32 7, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"Code Model", i32 2}
!33 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!34 = distinct !DISubprogram(name: "acpi_ps_get_opcode_info", scope: !3, file: !3, line: 35, type: !35, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !11}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !40, line: 702, size: 128, elements: !41)
!40 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !46, !47, !48, !49, !50}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !39, file: !40, line: 706, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !45)
!45 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !39, file: !40, line: 707, baseType: !43, size: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !40, line: 708, baseType: !11, size: 16, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !39, file: !40, line: 709, baseType: !6, size: 8, offset: 80)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !39, file: !40, line: 710, baseType: !6, size: 8, offset: 88)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !39, file: !40, line: 711, baseType: !6, size: 8, offset: 96)
!51 = !DILocalVariable(name: "opcode", arg: 1, scope: !34, file: !3, line: 35, type: !11)
!52 = !DILocation(line: 35, column: 60, scope: !34)
!53 = !DILocation(line: 46, column: 8, scope: !54)
!54 = distinct !DILexicalBlock(scope: !34, file: !3, line: 46, column: 6)
!55 = !DILocation(line: 46, column: 15, scope: !54)
!56 = !DILocation(line: 46, column: 6, scope: !34)
!57 = !DILocation(line: 51, column: 33, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !3, line: 46, column: 26)
!59 = !DILocation(line: 51, column: 29, scope: !58)
!60 = !DILocation(line: 51, column: 5, scope: !58)
!61 = !DILocation(line: 50, column: 12, scope: !58)
!62 = !DILocation(line: 50, column: 3, scope: !58)
!63 = !DILocation(line: 54, column: 8, scope: !64)
!64 = distinct !DILexicalBlock(scope: !34, file: !3, line: 54, column: 6)
!65 = !DILocation(line: 54, column: 15, scope: !64)
!66 = !DILocation(line: 54, column: 25, scope: !64)
!67 = !DILocation(line: 54, column: 49, scope: !64)
!68 = !DILocation(line: 55, column: 12, scope: !64)
!69 = !DILocation(line: 55, column: 8, scope: !64)
!70 = !DILocation(line: 55, column: 7, scope: !64)
!71 = !DILocation(line: 55, column: 20, scope: !64)
!72 = !DILocation(line: 54, column: 6, scope: !34)
!73 = !DILocation(line: 60, column: 32, scope: !74)
!74 = distinct !DILexicalBlock(scope: !64, file: !3, line: 55, column: 45)
!75 = !DILocation(line: 60, column: 28, scope: !74)
!76 = !DILocation(line: 60, column: 5, scope: !74)
!77 = !DILocation(line: 59, column: 12, scope: !74)
!78 = !DILocation(line: 59, column: 3, scope: !74)
!79 = !DILocation(line: 111, column: 2, scope: !34)
!80 = !DILocation(line: 112, column: 1, scope: !34)
!81 = distinct !DISubprogram(name: "acpi_ps_get_opcode_name", scope: !3, file: !3, line: 127, type: !82, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !11}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!87 = !DILocalVariable(name: "opcode", arg: 1, scope: !81, file: !3, line: 127, type: !11)
!88 = !DILocation(line: 127, column: 41, scope: !81)
!89 = !DILocation(line: 140, column: 2, scope: !81)
!90 = distinct !DISubprogram(name: "acpi_ps_get_argument_count", scope: !3, file: !3, line: 157, type: !91, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!91 = !DISubroutineType(types: !92)
!92 = !{!6, !43}
!93 = !DILocalVariable(name: "op_type", arg: 1, scope: !90, file: !3, line: 157, type: !43)
!94 = !DILocation(line: 157, column: 35, scope: !90)
!95 = !DILocation(line: 160, column: 6, scope: !96)
!96 = distinct !DILexicalBlock(scope: !90, file: !3, line: 160, column: 6)
!97 = !DILocation(line: 160, column: 14, scope: !96)
!98 = !DILocation(line: 160, column: 6, scope: !90)
!99 = !DILocation(line: 161, column: 35, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !3, line: 160, column: 41)
!101 = !DILocation(line: 161, column: 11, scope: !100)
!102 = !DILocation(line: 161, column: 3, scope: !100)
!103 = !DILocation(line: 164, column: 2, scope: !90)
!104 = !DILocation(line: 165, column: 1, scope: !90)
