; ModuleID = '../bcout/drivers/acpi/acpica/rsmemory.llvm.bc'
source_filename = "drivers/acpi/acpica/rsmemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_rsconvert_info = type { i8, i8, i8, i8 }

@acpi_rs_convert_memory24 = dso_local global [4 x %struct.acpi_rsconvert_info] [%struct.acpi_rsconvert_info { i8 0, i8 8, i8 17, i8 4 }, %struct.acpi_rsconvert_info { i8 1, i8 -127, i8 12, i8 0 }, %struct.acpi_rsconvert_info { i8 3, i8 8, i8 3, i8 0 }, %struct.acpi_rsconvert_info { i8 26, i8 9, i8 4, i8 4 }], align 16, !dbg !0
@acpi_rs_convert_memory32 = dso_local global [4 x %struct.acpi_rsconvert_info] [%struct.acpi_rsconvert_info { i8 0, i8 9, i8 25, i8 4 }, %struct.acpi_rsconvert_info { i8 1, i8 -123, i8 20, i8 0 }, %struct.acpi_rsconvert_info { i8 3, i8 8, i8 3, i8 0 }, %struct.acpi_rsconvert_info { i8 27, i8 9, i8 4, i8 4 }], align 16, !dbg !6
@acpi_rs_convert_fixed_memory32 = dso_local global [4 x %struct.acpi_rsconvert_info] [%struct.acpi_rsconvert_info { i8 0, i8 10, i8 17, i8 4 }, %struct.acpi_rsconvert_info { i8 1, i8 -122, i8 12, i8 0 }, %struct.acpi_rsconvert_info { i8 3, i8 8, i8 3, i8 0 }, %struct.acpi_rsconvert_info { i8 27, i8 9, i8 4, i8 2 }], align 16, !dbg !23
@acpi_rs_get_vendor_small = dso_local global [3 x %struct.acpi_rsconvert_info] [%struct.acpi_rsconvert_info { i8 0, i8 6, i8 11, i8 3 }, %struct.acpi_rsconvert_info { i8 10, i8 8, i8 0, i8 1 }, %struct.acpi_rsconvert_info { i8 25, i8 10, i8 1, i8 0 }], align 1, !dbg !25
@acpi_rs_get_vendor_large = dso_local global [3 x %struct.acpi_rsconvert_info] [%struct.acpi_rsconvert_info { i8 0, i8 6, i8 11, i8 3 }, %struct.acpi_rsconvert_info { i8 10, i8 8, i8 0, i8 1 }, %struct.acpi_rsconvert_info { i8 25, i8 10, i8 3, i8 0 }], align 1, !dbg !30
@acpi_rs_set_vendor = dso_local global [7 x %struct.acpi_rsconvert_info] [%struct.acpi_rsconvert_info { i8 1, i8 112, i8 1, i8 7 }, %struct.acpi_rsconvert_info { i8 10, i8 8, i8 0, i8 0 }, %struct.acpi_rsconvert_info { i8 25, i8 10, i8 1, i8 0 }, %struct.acpi_rsconvert_info { i8 18, i8 0, i8 0, i8 7 }, %struct.acpi_rsconvert_info { i8 1, i8 -124, i8 3, i8 0 }, %struct.acpi_rsconvert_info { i8 10, i8 8, i8 0, i8 0 }, %struct.acpi_rsconvert_info { i8 25, i8 10, i8 3, i8 0 }], align 16, !dbg !32

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_rs_convert_memory24", scope: !2, file: !3, line: 20, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/rsmemory.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!0, !6, !23, !25, !30, !32}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "acpi_rs_convert_memory32", scope: !2, file: !3, line: 52, type: !8, isLocal: false, isDefinition: true)
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
!24 = distinct !DIGlobalVariable(name: "acpi_rs_convert_fixed_memory32", scope: !2, file: !3, line: 84, type: !8, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "acpi_rs_get_vendor_small", scope: !2, file: !3, line: 114, type: !27, isLocal: false, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 96, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 3)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "acpi_rs_get_vendor_large", scope: !2, file: !3, line: 138, type: !27, isLocal: false, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "acpi_rs_set_vendor", scope: !2, file: !3, line: 162, type: !34, isLocal: false, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 224, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 7)
!37 = !{i32 7, !"Dwarf Version", i32 4}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"Code Model", i32 2}
!41 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}