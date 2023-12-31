; ModuleID = '../bcout/drivers/tty/vt/consolemap_deftbl.llvm.bc'
source_filename = "drivers/tty/vt/consolemap_deftbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

@dfont_unicount = dso_local global [256 x i8] c"\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\02\01\01\01\01\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\05\01\02\02\04\01\01\01\05\01\02\01\01\01\05\01\01\02\01\01\04\01\01\01\02\01\01\01\01\01\03\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\02\02\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\02\01\02\01\02\02\01\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01", align 16, !dbg !0
@dfont_unitable = dso_local global [303 x i16] [i16 0, i16 9786, i16 9787, i16 9829, i16 9830, i16 9670, i16 9827, i16 9824, i16 8226, i16 9688, i16 9675, i16 9689, i16 9794, i16 9792, i16 9834, i16 9835, i16 9788, i16 164, i16 9654, i16 9658, i16 9664, i16 9668, i16 8597, i16 8252, i16 182, i16 167, i16 9644, i16 8616, i16 8593, i16 8595, i16 8594, i16 8592, i16 8735, i16 8596, i16 9650, i16 9660, i16 32, i16 33, i16 34, i16 168, i16 35, i16 36, i16 37, i16 38, i16 39, i16 180, i16 40, i16 41, i16 42, i16 43, i16 44, i16 184, i16 45, i16 173, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 192, i16 193, i16 194, i16 195, i16 66, i16 67, i16 169, i16 68, i16 208, i16 69, i16 200, i16 202, i16 203, i16 70, i16 71, i16 72, i16 73, i16 204, i16 205, i16 206, i16 207, i16 74, i16 75, i16 8490, i16 76, i16 77, i16 78, i16 79, i16 210, i16 211, i16 212, i16 213, i16 80, i16 81, i16 82, i16 174, i16 83, i16 84, i16 85, i16 217, i16 218, i16 219, i16 86, i16 87, i16 88, i16 89, i16 221, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 9149, i16 -2044, i16 96, i16 97, i16 227, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 245, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 215, i16 121, i16 253, i16 122, i16 123, i16 124, i16 166, i16 125, i16 126, i16 8962, i16 199, i16 252, i16 233, i16 226, i16 228, i16 224, i16 229, i16 231, i16 234, i16 235, i16 232, i16 239, i16 238, i16 236, i16 196, i16 197, i16 8491, i16 201, i16 230, i16 198, i16 244, i16 246, i16 242, i16 251, i16 249, i16 255, i16 214, i16 220, i16 162, i16 163, i16 165, i16 8359, i16 402, i16 225, i16 237, i16 243, i16 250, i16 241, i16 209, i16 170, i16 186, i16 191, i16 8976, i16 172, i16 189, i16 188, i16 161, i16 171, i16 187, i16 9617, i16 9618, i16 9619, i16 9474, i16 9508, i16 9569, i16 9570, i16 9558, i16 9557, i16 9571, i16 9553, i16 9559, i16 9565, i16 9564, i16 9563, i16 9488, i16 9492, i16 9524, i16 9516, i16 9500, i16 9472, i16 9532, i16 9566, i16 9567, i16 9562, i16 9556, i16 9577, i16 9574, i16 9568, i16 9552, i16 9580, i16 9575, i16 9576, i16 9572, i16 9573, i16 9561, i16 9560, i16 9554, i16 9555, i16 9579, i16 9578, i16 9496, i16 9484, i16 9608, i16 9604, i16 9612, i16 9616, i16 9600, i16 945, i16 946, i16 223, i16 915, i16 960, i16 931, i16 963, i16 181, i16 956, i16 964, i16 934, i16 216, i16 920, i16 937, i16 8486, i16 948, i16 240, i16 8734, i16 966, i16 248, i16 949, i16 8712, i16 8745, i16 8801, i16 177, i16 8805, i16 8804, i16 8992, i16 8993, i16 247, i16 8776, i16 176, i16 8729, i16 183, i16 8730, i16 8319, i16 178, i16 9632, i16 -3, i16 160], align 16, !dbg !6

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dfont_unicount", scope: !2, file: !3, line: 10, type: !16, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/tty/vt/consolemap_deftbl.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "dfont_unitable", scope: !2, file: !3, line: 46, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 4848, elements: !14)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !10, line: 19, baseType: !11)
!10 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !12, line: 24, baseType: !13)
!12 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!13 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!14 = !{!15}
!15 = !DISubrange(count: 303)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !20)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !10, line: 17, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !12, line: 21, baseType: !19)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !{!21}
!21 = !DISubrange(count: 256)
!22 = !{i32 7, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"Code Model", i32 2}
!26 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
