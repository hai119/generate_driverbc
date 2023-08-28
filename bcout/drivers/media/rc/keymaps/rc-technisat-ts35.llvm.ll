; ModuleID = '../bcout/drivers/media/rc/keymaps/rc-technisat-ts35.llvm.bc'
source_filename = "drivers/media/rc/keymaps/rc-technisat-ts35.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_init_rc_map6:\09\09\09"
module asm ".long\09init_rc_map - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.rc_map_list = type { %struct.list_head, %struct.rc_map }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rc_map = type { %struct.rc_map_table*, i32, i32, i32, i32, i8*, %struct.spinlock }
%struct.rc_map_table = type { i64, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}

@technisat_ts35_map = internal global %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { %struct.rc_map_table* getelementptr inbounds ([33 x %struct.rc_map_table], [33 x %struct.rc_map_table]* @technisat_ts35, i32 0, i32 0), i32 33, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct.spinlock zeroinitializer } }, align 8, !dbg !0
@__UNIQUE_ID___addressable_init_rc_map202 = internal global i8* bitcast (i32 ()* @init_rc_map to i8*), section ".discard.addressable", align 8, !dbg !38
@__exitcall_exit_rc_map = internal global void ()* @exit_rc_map, section ".exitcall.exit", align 8, !dbg !41
@__UNIQUE_ID_file203 = internal constant [66 x i8] c"rc_technisat_ts35.file=drivers/media/rc/keymaps/rc-technisat-ts35\00", section ".modinfo", align 1, !dbg !48
@__UNIQUE_ID_license204 = internal constant [30 x i8] c"rc_technisat_ts35.license=GPL\00", section ".modinfo", align 1, !dbg !55
@technisat_ts35 = internal global [33 x %struct.rc_map_table] [%struct.rc_map_table { i64 50, i32 113 }, %struct.rc_map_table { i64 7, i32 226 }, %struct.rc_map_table { i64 28, i32 406 }, %struct.rc_map_table { i64 51, i32 116 }, %struct.rc_map_table { i64 62, i32 513 }, %struct.rc_map_table { i64 61, i32 514 }, %struct.rc_map_table { i64 60, i32 515 }, %struct.rc_map_table { i64 59, i32 516 }, %struct.rc_map_table { i64 58, i32 517 }, %struct.rc_map_table { i64 57, i32 518 }, %struct.rc_map_table { i64 56, i32 519 }, %struct.rc_map_table { i64 55, i32 520 }, %struct.rc_map_table { i64 54, i32 521 }, %struct.rc_map_table { i64 63, i32 512 }, %struct.rc_map_table { i64 53, i32 413 }, %struct.rc_map_table { i64 44, i32 377 }, %struct.rc_map_table { i64 32, i32 358 }, %struct.rc_map_table { i64 45, i32 139 }, %struct.rc_map_table { i64 31, i32 103 }, %struct.rc_map_table { i64 30, i32 108 }, %struct.rc_map_table { i64 46, i32 105 }, %struct.rc_map_table { i64 47, i32 106 }, %struct.rc_map_table { i64 40, i32 352 }, %struct.rc_map_table { i64 16, i32 365 }, %struct.rc_map_table { i64 29, i32 158 }, %struct.rc_map_table { i64 20, i32 398 }, %struct.rc_map_table { i64 19, i32 399 }, %struct.rc_map_table { i64 18, i32 400 }, %struct.rc_map_table { i64 17, i32 401 }, %struct.rc_map_table { i64 9, i32 353 }, %struct.rc_map_table { i64 3, i32 388 }, %struct.rc_map_table { i64 22, i32 128 }, %struct.rc_map_table { i64 48, i32 138 }], align 16, !dbg !60
@.str = private unnamed_addr constant [18 x i8] c"rc-technisat-ts35\00", align 1
@llvm.used = appending global [5 x i8*] [i8* bitcast (void ()* @exit_rc_map to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_init_rc_map202 to i8*), i8* bitcast (void ()** @__exitcall_exit_rc_map to i8*), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_file203, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__UNIQUE_ID_license204, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @exit_rc_map() #0 section ".exit.text" !dbg !118 {
entry:
  call void @rc_map_unregister(%struct.rc_map_list* @technisat_ts35_map) #2, !dbg !119
  ret void, !dbg !120
}

; Function Attrs: noredzone
declare dso_local void @rc_map_unregister(%struct.rc_map_list*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @init_rc_map() #0 section ".init.text" !dbg !121 {
entry:
  %call = call i32 @rc_map_register(%struct.rc_map_list* @technisat_ts35_map) #2, !dbg !125
  ret i32 %call, !dbg !126
}

; Function Attrs: noredzone
declare dso_local i32 @rc_map_register(%struct.rc_map_list*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "technisat_ts35_map", scope: !2, file: !3, line: 50, type: !77, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/rc/keymaps/rc-technisat-ts35.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rc_proto", file: !6, line: 200, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/uapi/linux/lirc.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!9 = !DIEnumerator(name: "RC_PROTO_UNKNOWN", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "RC_PROTO_OTHER", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "RC_PROTO_RC5", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "RC_PROTO_RC5X_20", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "RC_PROTO_RC5_SZ", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "RC_PROTO_JVC", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "RC_PROTO_SONY12", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "RC_PROTO_SONY15", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "RC_PROTO_SONY20", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "RC_PROTO_NEC", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "RC_PROTO_NECX", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "RC_PROTO_NEC32", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "RC_PROTO_SANYO", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "RC_PROTO_MCIR2_KBD", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "RC_PROTO_MCIR2_MSE", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "RC_PROTO_RC6_0", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "RC_PROTO_RC6_6A_20", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "RC_PROTO_RC6_6A_24", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "RC_PROTO_RC6_6A_32", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "RC_PROTO_RC6_MCE", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "RC_PROTO_SHARP", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "RC_PROTO_XMP", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "RC_PROTO_CEC", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "RC_PROTO_IMON", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "RC_PROTO_RCMM12", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "RC_PROTO_RCMM24", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "RC_PROTO_RCMM32", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "RC_PROTO_XBOX_DVD", value: 27, isUnsigned: true)
!37 = !{!38, !41, !48, !55, !0, !60}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_init_rc_map202", scope: !2, file: !3, line: 69, type: !40, isLocal: true, isDefinition: true)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__exitcall_exit_rc_map", scope: !2, file: !3, line: 70, type: !43, isLocal: true, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !44, line: 117, baseType: !45)
!44 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file203", scope: !2, file: !3, line: 72, type: !50, isLocal: true, isDefinition: true, align: 8)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 528, elements: !53)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !{!54}
!54 = !DISubrange(count: 66)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license204", scope: !2, file: !3, line: 72, type: !57, isLocal: true, isDefinition: true, align: 8)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 240, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 30)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "technisat_ts35", scope: !2, file: !3, line: 10, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 4224, elements: !75)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_table", file: !64, line: 140, size: 128, elements: !65)
!64 = !DIFile(filename: "./include/media/rc-map.h", directory: "/home/lizy2001/genbc/linux")
!65 = !{!66, !72}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !63, file: !64, line: 141, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !68, line: 23, baseType: !69)
!68 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !70, line: 31, baseType: !71)
!70 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!71 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !63, file: !64, line: 142, baseType: !73, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !68, line: 21, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !70, line: 27, baseType: !7)
!75 = !{!76}
!76 = !DISubrange(count: 33)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_list", file: !64, line: 173, size: 384, elements: !78)
!78 = !{!79, !86}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !77, file: !64, line: 174, baseType: !80, size: 128)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !81, line: 178, size: 128, elements: !82)
!81 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !85}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !80, file: !81, line: 179, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !80, file: !81, line: 179, baseType: !84, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !77, file: !64, line: 175, baseType: !87, size: 256, offset: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map", file: !64, line: 157, size: 256, elements: !88)
!88 = !{!89, !91, !92, !93, !94, !95, !97}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !87, file: !64, line: 158, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !87, file: !64, line: 159, baseType: !7, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !87, file: !64, line: 160, baseType: !7, size: 32, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !87, file: !64, line: 161, baseType: !7, size: 32, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "rc_proto", scope: !87, file: !64, line: 162, baseType: !5, size: 32, offset: 160)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !64, line: 163, baseType: !96, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !87, file: !64, line: 164, baseType: !98, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !99, line: 83, baseType: !100)
!99 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !99, line: 71, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !99, line: 72, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !99, line: 72, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !103, file: !99, line: 73, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !99, line: 20, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !106, file: !99, line: 21, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !110, line: 25, baseType: !111)
!110 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 25, elements: !112)
!112 = !{}
!113 = !{i32 7, !"Dwarf Version", i32 4}
!114 = !{i32 2, !"Debug Info Version", i32 3}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"Code Model", i32 2}
!117 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!118 = distinct !DISubprogram(name: "exit_rc_map", scope: !3, file: !3, line: 64, type: !46, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!119 = !DILocation(line: 66, column: 2, scope: !118)
!120 = !DILocation(line: 67, column: 1, scope: !118)
!121 = distinct !DISubprogram(name: "init_rc_map", scope: !3, file: !3, line: 59, type: !122, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!122 = !DISubroutineType(types: !123)
!123 = !{!124}
!124 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!125 = !DILocation(line: 61, column: 9, scope: !121)
!126 = !DILocation(line: 61, column: 2, scope: !121)
