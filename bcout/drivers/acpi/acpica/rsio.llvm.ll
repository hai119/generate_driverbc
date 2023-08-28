; ModuleID = '../bcout/drivers/acpi/acpica/rsio.llvm.bc'
source_filename = "drivers/acpi/acpica/rsio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_rsconvert_info = type { i8, i8, i8, i8 }

@acpi_rs_convert_io = dso_local global [5 x %struct.acpi_rsconvert_info] [%struct.acpi_rsconvert_info { i8 0, i8 4, i8 15, i8 5 }, %struct.acpi_rsconvert_info { i8 1, i8 64, i8 8, i8 0 }, %struct.acpi_rsconvert_info { i8 3, i8 8, i8 1, i8 0 }, %struct.acpi_rsconvert_info { i8 25, i8 9, i8 6, i8 2 }, %struct.acpi_rsconvert_info { i8 26, i8 11, i8 2, i8 2 }], align 16, !dbg !0
@acpi_rs_convert_fixed_io = dso_local global [4 x %struct.acpi_rsconvert_info] [%struct.acpi_rsconvert_info { i8 0, i8 5, i8 11, i8 4 }, %struct.acpi_rsconvert_info { i8 1, i8 72, i8 4, i8 0 }, %struct.acpi_rsconvert_info { i8 25, i8 10, i8 3, i8 1 }, %struct.acpi_rsconvert_info { i8 26, i8 8, i8 1, i8 1 }], align 16, !dbg !6
@acpi_rs_convert_generic_reg = dso_local global [4 x %struct.acpi_rsconvert_info] [%struct.acpi_rsconvert_info { i8 0, i8 16, i8 20, i8 4 }, %struct.acpi_rsconvert_info { i8 1, i8 -126, i8 15, i8 0 }, %struct.acpi_rsconvert_info { i8 25, i8 8, i8 3, i8 4 }, %struct.acpi_rsconvert_info { i8 28, i8 12, i8 7, i8 1 }], align 16, !dbg !23
@acpi_rs_convert_end_dpf = dso_local global [2 x %struct.acpi_rsconvert_info] [%struct.acpi_rsconvert_info { i8 0, i8 3, i8 16, i8 2 }, %struct.acpi_rsconvert_info { i8 1, i8 56, i8 1, i8 0 }], align 1, !dbg !25
@acpi_rs_convert_end_tag = dso_local global [2 x %struct.acpi_rsconvert_info] [%struct.acpi_rsconvert_info { i8 0, i8 7, i8 16, i8 2 }, %struct.acpi_rsconvert_info { i8 1, i8 120, i8 2, i8 0 }], align 1, !dbg !30
@acpi_rs_get_start_dpf = dso_local global [6 x %struct.acpi_rsconvert_info] [%struct.acpi_rsconvert_info { i8 0, i8 2, i8 11, i8 6 }, %struct.acpi_rsconvert_info { i8 29, i8 9, i8 1, i8 2 }, %struct.acpi_rsconvert_info { i8 3, i8 8, i8 0, i8 0 }, %struct.acpi_rsconvert_info { i8 19, i8 0, i8 0, i8 1 }, %struct.acpi_rsconvert_info { i8 4, i8 9, i8 1, i8 0 }, %struct.acpi_rsconvert_info { i8 4, i8 10, i8 1, i8 2 }], align 16, !dbg !32
@acpi_rs_set_start_dpf = dso_local global [10 x %struct.acpi_rsconvert_info] [%struct.acpi_rsconvert_info { i8 1, i8 48, i8 2, i8 10 }, %struct.acpi_rsconvert_info { i8 4, i8 9, i8 1, i8 0 }, %struct.acpi_rsconvert_info { i8 4, i8 10, i8 1, i8 2 }, %struct.acpi_rsconvert_info { i8 17, i8 1, i8 8, i8 1 }, %struct.acpi_rsconvert_info { i8 20, i8 0, i8 0, i8 1 }, %struct.acpi_rsconvert_info { i8 17, i8 1, i8 8, i8 0 }, %struct.acpi_rsconvert_info { i8 20, i8 0, i8 0, i8 2 }, %struct.acpi_rsconvert_info { i8 19, i8 1, i8 9, i8 1 }, %struct.acpi_rsconvert_info { i8 19, i8 1, i8 10, i8 1 }, %struct.acpi_rsconvert_info { i8 20, i8 0, i8 0, i8 1 }], align 16, !dbg !37

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_rs_convert_io", scope: !2, file: !3, line: 20, type: !42, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/rsio.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!0, !6, !23, !25, !30, !32, !37}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "acpi_rs_convert_fixed_io", scope: !2, file: !3, line: 56, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 128, elements: !21)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_rsconvert_info", file: !10, line: 32, size: 32, elements: !11)
!10 = !DIFile(filename: "drivers/acpi/acpica/acresrc.h", directory: "/home/lizy2001/genbc/linux")
!11 = !{!12, !18, !19, !20}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !9, file: !10, line: 33, baseType: !13, size: 8)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !17)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "resource_offset", scope: !9, file: !10, line: 34, baseType: !13, size: 8, offset: 8)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "aml_offset", scope: !9, file: !10, line: 35, baseType: !13, size: 8, offset: 16)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !9, file: !10, line: 36, baseType: !13, size: 8, offset: 24)
!21 = !{!22}
!22 = !DISubrange(count: 4)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "acpi_rs_convert_generic_reg", scope: !2, file: !3, line: 84, type: !8, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "acpi_rs_convert_end_dpf", scope: !2, file: !3, line: 116, type: !27, isLocal: false, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 2)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "acpi_rs_convert_end_tag", scope: !2, file: !3, line: 132, type: !27, isLocal: false, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "acpi_rs_get_start_dpf", scope: !2, file: !3, line: 153, type: !34, isLocal: false, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 6)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "acpi_rs_set_start_dpf", scope: !2, file: !3, line: 193, type: !39, isLocal: false, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 320, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 10)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 5)
!45 = !{i32 7, !"Dwarf Version", i32 4}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"Code Model", i32 2}
!49 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}