; ModuleID = '../bcout/drivers/media/rc/keymaps/rc-medion-x10.llvm.bc'
source_filename = "drivers/media/rc/keymaps/rc-medion-x10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_init_rc_map_medion_x106:\09\09\09"
module asm ".long\09init_rc_map_medion_x10 - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.rc_map_list = type { %struct.list_head, %struct.rc_map }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rc_map = type { %struct.rc_map_table*, i32, i32, i32, i32, i8*, %struct.spinlock }
%struct.rc_map_table = type { i64, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}

@medion_x10_map = internal global %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { %struct.rc_map_table* getelementptr inbounds ([53 x %struct.rc_map_table], [53 x %struct.rc_map_table]* @medion_x10, i32 0, i32 0), i32 53, i32 0, i32 0, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct.spinlock zeroinitializer } }, align 8, !dbg !0
@__UNIQUE_ID___addressable_init_rc_map_medion_x10202 = internal global i8* bitcast (i32 ()* @init_rc_map_medion_x10 to i8*), section ".discard.addressable", align 8, !dbg !38
@__exitcall_exit_rc_map_medion_x10 = internal global void ()* @exit_rc_map_medion_x10, section ".exitcall.exit", align 8, !dbg !41
@__UNIQUE_ID_file203 = internal constant [58 x i8] c"rc_medion_x10.file=drivers/media/rc/keymaps/rc-medion-x10\00", section ".modinfo", align 1, !dbg !48
@__UNIQUE_ID_license204 = internal constant [26 x i8] c"rc_medion_x10.license=GPL\00", section ".modinfo", align 1, !dbg !55
@__UNIQUE_ID_author205 = internal constant [58 x i8] c"rc_medion_x10.author=Anssi Hannula <anssi.hannula@iki.fi>\00", section ".modinfo", align 1, !dbg !60
@medion_x10 = internal global [53 x %struct.rc_map_table] [%struct.rc_map_table { i64 44, i32 377 }, %struct.rc_map_table { i64 45, i32 379 }, %struct.rc_map_table { i64 4, i32 389 }, %struct.rc_map_table { i64 6, i32 392 }, %struct.rc_map_table { i64 46, i32 385 }, %struct.rc_map_table { i64 5, i32 394 }, %struct.rc_map_table { i64 47, i32 358 }, %struct.rc_map_table { i64 48, i32 395 }, %struct.rc_map_table { i64 27, i32 141 }, %struct.rc_map_table { i64 49, i32 393 }, %struct.rc_map_table { i64 8, i32 114 }, %struct.rc_map_table { i64 9, i32 115 }, %struct.rc_map_table { i64 11, i32 402 }, %struct.rc_map_table { i64 12, i32 403 }, %struct.rc_map_table { i64 0, i32 113 }, %struct.rc_map_table { i64 50, i32 398 }, %struct.rc_map_table { i64 51, i32 399 }, %struct.rc_map_table { i64 52, i32 400 }, %struct.rc_map_table { i64 53, i32 401 }, %struct.rc_map_table { i64 22, i32 388 }, %struct.rc_map_table { i64 13, i32 513 }, %struct.rc_map_table { i64 14, i32 514 }, %struct.rc_map_table { i64 15, i32 515 }, %struct.rc_map_table { i64 16, i32 516 }, %struct.rc_map_table { i64 17, i32 517 }, %struct.rc_map_table { i64 18, i32 518 }, %struct.rc_map_table { i64 19, i32 519 }, %struct.rc_map_table { i64 20, i32 520 }, %struct.rc_map_table { i64 21, i32 521 }, %struct.rc_map_table { i64 23, i32 512 }, %struct.rc_map_table { i64 28, i32 217 }, %struct.rc_map_table { i64 32, i32 111 }, %struct.rc_map_table { i64 54, i32 374 }, %struct.rc_map_table { i64 24, i32 375 }, %struct.rc_map_table { i64 26, i32 103 }, %struct.rc_map_table { i64 34, i32 108 }, %struct.rc_map_table { i64 29, i32 105 }, %struct.rc_map_table { i64 31, i32 106 }, %struct.rc_map_table { i64 30, i32 352 }, %struct.rc_map_table { i64 55, i32 353 }, %struct.rc_map_table { i64 56, i32 176 }, %struct.rc_map_table { i64 36, i32 168 }, %struct.rc_map_table { i64 37, i32 207 }, %struct.rc_map_table { i64 38, i32 159 }, %struct.rc_map_table { i64 39, i32 167 }, %struct.rc_map_table { i64 40, i32 128 }, %struct.rc_map_table { i64 41, i32 119 }, %struct.rc_map_table { i64 33, i32 412 }, %struct.rc_map_table { i64 57, i32 227 }, %struct.rc_map_table { i64 35, i32 407 }, %struct.rc_map_table { i64 25, i32 139 }, %struct.rc_map_table { i64 58, i32 368 }, %struct.rc_map_table { i64 2, i32 116 }], align 16, !dbg !62
@.str = private unnamed_addr constant [14 x i8] c"rc-medion-x10\00", align 1
@llvm.used = appending global [6 x i8*] [i8* bitcast (void ()* @exit_rc_map_medion_x10 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_init_rc_map_medion_x10202 to i8*), i8* bitcast (void ()** @__exitcall_exit_rc_map_medion_x10 to i8*), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_file203, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_license204, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_author205, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @exit_rc_map_medion_x10() #0 section ".exit.text" !dbg !120 {
entry:
  call void @rc_map_unregister(%struct.rc_map_list* @medion_x10_map) #2, !dbg !121
  ret void, !dbg !122
}

; Function Attrs: noredzone
declare dso_local void @rc_map_unregister(%struct.rc_map_list*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @init_rc_map_medion_x10() #0 section ".init.text" !dbg !123 {
entry:
  %call = call i32 @rc_map_register(%struct.rc_map_list* @medion_x10_map) #2, !dbg !127
  ret i32 %call, !dbg !128
}

; Function Attrs: noredzone
declare dso_local i32 @rc_map_register(%struct.rc_map_list*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "medion_x10_map", scope: !2, file: !3, line: 81, type: !79, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/rc/keymaps/rc-medion-x10.c", directory: "/home/lizy2001/genbc/linux")
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
!37 = !{!38, !41, !48, !55, !60, !0, !62}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_init_rc_map_medion_x10202", scope: !2, file: !3, line: 100, type: !40, isLocal: true, isDefinition: true)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__exitcall_exit_rc_map_medion_x10", scope: !2, file: !3, line: 101, type: !43, isLocal: true, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !44, line: 117, baseType: !45)
!44 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file203", scope: !2, file: !3, line: 103, type: !50, isLocal: true, isDefinition: true, align: 8)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 464, elements: !53)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !{!54}
!54 = !DISubrange(count: 58)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license204", scope: !2, file: !3, line: 103, type: !57, isLocal: true, isDefinition: true, align: 8)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 208, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 26)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author205", scope: !2, file: !3, line: 104, type: !50, isLocal: true, isDefinition: true, align: 8)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "medion_x10", scope: !2, file: !3, line: 14, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 6784, elements: !77)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_table", file: !66, line: 140, size: 128, elements: !67)
!66 = !DIFile(filename: "./include/media/rc-map.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !74}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !65, file: !66, line: 141, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !70, line: 23, baseType: !71)
!70 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !72, line: 31, baseType: !73)
!72 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!73 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !65, file: !66, line: 142, baseType: !75, size: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !70, line: 21, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !72, line: 27, baseType: !7)
!77 = !{!78}
!78 = !DISubrange(count: 53)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_list", file: !66, line: 173, size: 384, elements: !80)
!80 = !{!81, !88}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !79, file: !66, line: 174, baseType: !82, size: 128)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !83, line: 178, size: 128, elements: !84)
!83 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!84 = !{!85, !87}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !82, file: !83, line: 179, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !82, file: !83, line: 179, baseType: !86, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !79, file: !66, line: 175, baseType: !89, size: 256, offset: 128)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map", file: !66, line: 157, size: 256, elements: !90)
!90 = !{!91, !93, !94, !95, !96, !97, !99}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !89, file: !66, line: 158, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !89, file: !66, line: 159, baseType: !7, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !89, file: !66, line: 160, baseType: !7, size: 32, offset: 96)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !89, file: !66, line: 161, baseType: !7, size: 32, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "rc_proto", scope: !89, file: !66, line: 162, baseType: !5, size: 32, offset: 160)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !89, file: !66, line: 163, baseType: !98, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !89, file: !66, line: 164, baseType: !100, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !101, line: 83, baseType: !102)
!101 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !101, line: 71, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !102, file: !101, line: 72, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !101, line: 72, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !105, file: !101, line: 73, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !101, line: 20, elements: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !108, file: !101, line: 21, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !112, line: 25, baseType: !113)
!112 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 25, elements: !114)
!114 = !{}
!115 = !{i32 7, !"Dwarf Version", i32 4}
!116 = !{i32 2, !"Debug Info Version", i32 3}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"Code Model", i32 2}
!119 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!120 = distinct !DISubprogram(name: "exit_rc_map_medion_x10", scope: !3, file: !3, line: 95, type: !46, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !114)
!121 = !DILocation(line: 97, column: 2, scope: !120)
!122 = !DILocation(line: 98, column: 1, scope: !120)
!123 = distinct !DISubprogram(name: "init_rc_map_medion_x10", scope: !3, file: !3, line: 90, type: !124, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !114)
!124 = !DISubroutineType(types: !125)
!125 = !{!126}
!126 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!127 = !DILocation(line: 92, column: 9, scope: !123)
!128 = !DILocation(line: 92, column: 2, scope: !123)
