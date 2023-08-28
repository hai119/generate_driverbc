; ModuleID = '../bcout/drivers/video/fbdev/matrox/matroxfb_Ti3026.llvm.bc'
source_filename = "drivers/video/fbdev/matrox/matroxfb_Ti3026.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

@__UNIQUE_ID_file244 = internal constant [64 x i8] c"matroxfb_Ti3026.file=drivers/video/fbdev/matrox/matroxfb_Ti3026\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license245 = internal constant [28 x i8] c"matroxfb_Ti3026.license=GPL\00", section ".modinfo", align 1, !dbg !6
@llvm.used = appending global [2 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__UNIQUE_ID_file244, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_license245, i32 0, i32 0)], section "llvm.metadata"

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file244", scope: !2, file: !3, line: 749, type: !13, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/fbdev/matrox/matroxfb_Ti3026.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license245", scope: !2, file: !3, line: 749, type: !8, isLocal: true, isDefinition: true, align: 8)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 224, elements: !11)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{!12}
!12 = !DISubrange(count: 28)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 512, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 64)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"Code Model", i32 2}
!20 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
