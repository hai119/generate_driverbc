; ModuleID = '../bcout/drivers/staging/comedi/drivers/ni_routing/ni_route_values.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/ni_routing/ni_route_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.family_route_values = type { i8*, [210 x [210 x i8]] }

@ni_660x_route_values = external dso_local constant %struct.family_route_values, align 8
@ni_eseries_route_values = external dso_local constant %struct.family_route_values, align 8
@ni_mseries_route_values = external dso_local constant %struct.family_route_values, align 8
@ni_all_route_values = dso_local constant [4 x %struct.family_route_values*] [%struct.family_route_values* @ni_660x_route_values, %struct.family_route_values* @ni_eseries_route_values, %struct.family_route_values* @ni_mseries_route_values, %struct.family_route_values* null], align 16, !dbg !0

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ni_all_route_values", scope: !2, file: !3, line: 37, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/ni_routing/ni_route_values.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !28)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "family_route_values", file: !11, line: 90, size: 352896, elements: !12)
!11 = !DIFile(filename: "drivers/staging/comedi/drivers/ni_routing/ni_route_values/../ni_route_values.h", directory: "/home/lizy2001/genbc/linux")
!12 = !{!13, !17}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !10, file: !11, line: 91, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "register_values", scope: !10, file: !11, line: 92, baseType: !18, size: 352800, offset: 64)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 352800, elements: !26)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "register_type", file: !11, line: 48, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !22, line: 17, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !24, line: 21, baseType: !25)
!24 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!27, !27}
!27 = !DISubrange(count: 210)
!28 = !{!29}
!29 = !DISubrange(count: 4)
!30 = !{i32 7, !"Dwarf Version", i32 4}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"Code Model", i32 2}
!34 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
