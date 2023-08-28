; ModuleID = '../bcout/drivers/media/rc/keymaps/rc-medion-x10-or2x.llvm.bc'
source_filename = "drivers/media/rc/keymaps/rc-medion-x10-or2x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_init_rc_map_medion_x10_or2x6:\09\09\09"
module asm ".long\09init_rc_map_medion_x10_or2x - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.rc_map_list = type { %struct.list_head, %struct.rc_map }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rc_map = type { %struct.rc_map_table*, i32, i32, i32, i32, i8*, %struct.spinlock }
%struct.rc_map_table = type { i64, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}

@medion_x10_or2x_map = internal global %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { %struct.rc_map_table* getelementptr inbounds ([45 x %struct.rc_map_table], [45 x %struct.rc_map_table]* @medion_x10_or2x, i32 0, i32 0), i32 45, i32 0, i32 0, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), %struct.spinlock zeroinitializer } }, align 8, !dbg !0
@__UNIQUE_ID___addressable_init_rc_map_medion_x10_or2x202 = internal global i8* bitcast (i32 ()* @init_rc_map_medion_x10_or2x to i8*), section ".discard.addressable", align 8, !dbg !38
@__exitcall_exit_rc_map_medion_x10_or2x = internal global void ()* @exit_rc_map_medion_x10_or2x, section ".exitcall.exit", align 8, !dbg !41
@__UNIQUE_ID_description203 = internal constant [71 x i8] c"rc_medion_x10_or2x.description=Medion X10 OR22/OR24 RF remote keytable\00", section ".modinfo", align 1, !dbg !48
@__UNIQUE_ID_author204 = internal constant [63 x i8] c"rc_medion_x10_or2x.author=Anssi Hannula <anssi.hannula@iki.fi>\00", section ".modinfo", align 1, !dbg !55
@__UNIQUE_ID_file205 = internal constant [68 x i8] c"rc_medion_x10_or2x.file=drivers/media/rc/keymaps/rc-medion-x10-or2x\00", section ".modinfo", align 1, !dbg !60
@__UNIQUE_ID_license206 = internal constant [31 x i8] c"rc_medion_x10_or2x.license=GPL\00", section ".modinfo", align 1, !dbg !65
@medion_x10_or2x = internal global [45 x %struct.rc_map_table] [%struct.rc_map_table { i64 2, i32 116 }, %struct.rc_map_table { i64 22, i32 388 }, %struct.rc_map_table { i64 9, i32 115 }, %struct.rc_map_table { i64 8, i32 114 }, %struct.rc_map_table { i64 0, i32 113 }, %struct.rc_map_table { i64 11, i32 402 }, %struct.rc_map_table { i64 12, i32 403 }, %struct.rc_map_table { i64 50, i32 398 }, %struct.rc_map_table { i64 51, i32 399 }, %struct.rc_map_table { i64 52, i32 400 }, %struct.rc_map_table { i64 53, i32 401 }, %struct.rc_map_table { i64 24, i32 366 }, %struct.rc_map_table { i64 4, i32 389 }, %struct.rc_map_table { i64 49, i32 365 }, %struct.rc_map_table { i64 28, i32 377 }, %struct.rc_map_table { i64 32, i32 158 }, %struct.rc_map_table { i64 47, i32 358 }, %struct.rc_map_table { i64 26, i32 103 }, %struct.rc_map_table { i64 34, i32 108 }, %struct.rc_map_table { i64 29, i32 105 }, %struct.rc_map_table { i64 31, i32 106 }, %struct.rc_map_table { i64 30, i32 352 }, %struct.rc_map_table { i64 27, i32 226 }, %struct.rc_map_table { i64 33, i32 412 }, %struct.rc_map_table { i64 35, i32 407 }, %struct.rc_map_table { i64 36, i32 168 }, %struct.rc_map_table { i64 38, i32 159 }, %struct.rc_map_table { i64 37, i32 207 }, %struct.rc_map_table { i64 40, i32 128 }, %struct.rc_map_table { i64 41, i32 119 }, %struct.rc_map_table { i64 39, i32 167 }, %struct.rc_map_table { i64 13, i32 513 }, %struct.rc_map_table { i64 14, i32 514 }, %struct.rc_map_table { i64 15, i32 515 }, %struct.rc_map_table { i64 16, i32 516 }, %struct.rc_map_table { i64 17, i32 517 }, %struct.rc_map_table { i64 18, i32 518 }, %struct.rc_map_table { i64 19, i32 519 }, %struct.rc_map_table { i64 20, i32 520 }, %struct.rc_map_table { i64 21, i32 521 }, %struct.rc_map_table { i64 23, i32 512 }, %struct.rc_map_table { i64 48, i32 355 }, %struct.rc_map_table { i64 54, i32 28 }, %struct.rc_map_table { i64 55, i32 522 }, %struct.rc_map_table { i64 56, i32 523 }], align 16, !dbg !70
@.str = private unnamed_addr constant [19 x i8] c"rc-medion-x10-or2x\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @exit_rc_map_medion_x10_or2x to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_init_rc_map_medion_x10_or2x202 to i8*), i8* bitcast (void ()** @__exitcall_exit_rc_map_medion_x10_or2x to i8*), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__UNIQUE_ID_description203, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_author204, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__UNIQUE_ID_file205, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_license206, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @exit_rc_map_medion_x10_or2x() #0 section ".exit.text" !dbg !128 {
entry:
  call void @rc_map_unregister(%struct.rc_map_list* @medion_x10_or2x_map) #2, !dbg !129
  ret void, !dbg !130
}

; Function Attrs: noredzone
declare dso_local void @rc_map_unregister(%struct.rc_map_list*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @init_rc_map_medion_x10_or2x() #0 section ".init.text" !dbg !131 {
entry:
  %call = call i32 @rc_map_register(%struct.rc_map_list* @medion_x10_or2x_map) #2, !dbg !135
  ret i32 %call, !dbg !136
}

; Function Attrs: noredzone
declare dso_local i32 @rc_map_register(%struct.rc_map_list*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "medion_x10_or2x_map", scope: !2, file: !3, line: 71, type: !87, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/rc/keymaps/rc-medion-x10-or2x.c", directory: "/home/lizy2001/genbc/linux")
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
!37 = !{!38, !41, !48, !55, !60, !65, !0, !70}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_init_rc_map_medion_x10_or2x202", scope: !2, file: !3, line: 90, type: !40, isLocal: true, isDefinition: true)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__exitcall_exit_rc_map_medion_x10_or2x", scope: !2, file: !3, line: 91, type: !43, isLocal: true, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !44, line: 117, baseType: !45)
!44 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description203", scope: !2, file: !3, line: 93, type: !50, isLocal: true, isDefinition: true, align: 8)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 568, elements: !53)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !{!54}
!54 = !DISubrange(count: 71)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author204", scope: !2, file: !3, line: 94, type: !57, isLocal: true, isDefinition: true, align: 8)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 504, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 63)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file205", scope: !2, file: !3, line: 95, type: !62, isLocal: true, isDefinition: true, align: 8)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 544, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 68)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license206", scope: !2, file: !3, line: 95, type: !67, isLocal: true, isDefinition: true, align: 8)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 248, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 31)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "medion_x10_or2x", scope: !2, file: !3, line: 16, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 5760, elements: !85)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_table", file: !74, line: 140, size: 128, elements: !75)
!74 = !DIFile(filename: "./include/media/rc-map.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !82}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !73, file: !74, line: 141, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !78, line: 23, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !80, line: 31, baseType: !81)
!80 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!81 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !73, file: !74, line: 142, baseType: !83, size: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !78, line: 21, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !80, line: 27, baseType: !7)
!85 = !{!86}
!86 = !DISubrange(count: 45)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_list", file: !74, line: 173, size: 384, elements: !88)
!88 = !{!89, !96}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !87, file: !74, line: 174, baseType: !90, size: 128)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !91, line: 178, size: 128, elements: !92)
!91 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !91, line: 179, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !90, file: !91, line: 179, baseType: !94, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !87, file: !74, line: 175, baseType: !97, size: 256, offset: 128)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map", file: !74, line: 157, size: 256, elements: !98)
!98 = !{!99, !101, !102, !103, !104, !105, !107}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !97, file: !74, line: 158, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !97, file: !74, line: 159, baseType: !7, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !97, file: !74, line: 160, baseType: !7, size: 32, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !97, file: !74, line: 161, baseType: !7, size: 32, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "rc_proto", scope: !97, file: !74, line: 162, baseType: !5, size: 32, offset: 160)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !74, line: 163, baseType: !106, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !97, file: !74, line: 164, baseType: !108, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !109, line: 83, baseType: !110)
!109 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !109, line: 71, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, scope: !110, file: !109, line: 72, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !110, file: !109, line: 72, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !113, file: !109, line: 73, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !109, line: 20, elements: !117)
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !116, file: !109, line: 21, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !120, line: 25, baseType: !121)
!120 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 25, elements: !122)
!122 = !{}
!123 = !{i32 7, !"Dwarf Version", i32 4}
!124 = !{i32 2, !"Debug Info Version", i32 3}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"Code Model", i32 2}
!127 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!128 = distinct !DISubprogram(name: "exit_rc_map_medion_x10_or2x", scope: !3, file: !3, line: 85, type: !46, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !122)
!129 = !DILocation(line: 87, column: 2, scope: !128)
!130 = !DILocation(line: 88, column: 1, scope: !128)
!131 = distinct !DISubprogram(name: "init_rc_map_medion_x10_or2x", scope: !3, file: !3, line: 80, type: !132, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !122)
!132 = !DISubroutineType(types: !133)
!133 = !{!134}
!134 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!135 = !DILocation(line: 82, column: 9, scope: !131)
!136 = !DILocation(line: 82, column: 2, scope: !131)
