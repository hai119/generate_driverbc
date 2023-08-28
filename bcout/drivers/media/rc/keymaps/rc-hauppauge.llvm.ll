; ModuleID = '../bcout/drivers/media/rc/keymaps/rc-hauppauge.llvm.bc'
source_filename = "drivers/media/rc/keymaps/rc-hauppauge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_init_rc_map_rc5_hauppauge_new6:\09\09\09"
module asm ".long\09init_rc_map_rc5_hauppauge_new - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.rc_map_list = type { %struct.list_head, %struct.rc_map }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rc_map = type { %struct.rc_map_table*, i32, i32, i32, i32, i8*, %struct.spinlock }
%struct.rc_map_table = type { i64, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}

@rc5_hauppauge_new_map = internal global %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { %struct.rc_map_table* getelementptr inbounds ([173 x %struct.rc_map_table], [173 x %struct.rc_map_table]* @rc5_hauppauge_new, i32 0, i32 0), i32 173, i32 0, i32 0, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.spinlock zeroinitializer } }, align 8, !dbg !0
@__UNIQUE_ID___addressable_init_rc_map_rc5_hauppauge_new202 = internal global i8* bitcast (i32 ()* @init_rc_map_rc5_hauppauge_new to i8*), section ".discard.addressable", align 8, !dbg !38
@__exitcall_exit_rc_map_rc5_hauppauge_new = internal global void ()* @exit_rc_map_rc5_hauppauge_new, section ".exitcall.exit", align 8, !dbg !41
@__UNIQUE_ID_file203 = internal constant [56 x i8] c"rc_hauppauge.file=drivers/media/rc/keymaps/rc-hauppauge\00", section ".modinfo", align 1, !dbg !48
@__UNIQUE_ID_license204 = internal constant [25 x i8] c"rc_hauppauge.license=GPL\00", section ".modinfo", align 1, !dbg !55
@__UNIQUE_ID_author205 = internal constant [42 x i8] c"rc_hauppauge.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1, !dbg !60
@rc5_hauppauge_new = internal global [173 x %struct.rc_map_table] [%struct.rc_map_table { i64 7739, i32 353 }, %struct.rc_map_table { i64 7741, i32 356 }, %struct.rc_map_table { i64 7708, i32 377 }, %struct.rc_map_table { i64 7704, i32 393 }, %struct.rc_map_table { i64 7705, i32 392 }, %struct.rc_map_table { i64 7706, i32 212 }, %struct.rc_map_table { i64 7707, i32 365 }, %struct.rc_map_table { i64 7692, i32 385 }, %struct.rc_map_table { i64 7700, i32 103 }, %struct.rc_map_table { i64 7701, i32 108 }, %struct.rc_map_table { i64 7702, i32 105 }, %struct.rc_map_table { i64 7703, i32 106 }, %struct.rc_map_table { i64 7717, i32 352 }, %struct.rc_map_table { i64 7711, i32 174 }, %struct.rc_map_table { i64 7693, i32 139 }, %struct.rc_map_table { i64 7696, i32 115 }, %struct.rc_map_table { i64 7697, i32 114 }, %struct.rc_map_table { i64 7698, i32 412 }, %struct.rc_map_table { i64 7695, i32 113 }, %struct.rc_map_table { i64 7712, i32 402 }, %struct.rc_map_table { i64 7713, i32 403 }, %struct.rc_map_table { i64 7735, i32 167 }, %struct.rc_map_table { i64 7734, i32 128 }, %struct.rc_map_table { i64 7730, i32 168 }, %struct.rc_map_table { i64 7733, i32 207 }, %struct.rc_map_table { i64 7732, i32 208 }, %struct.rc_map_table { i64 7716, i32 165 }, %struct.rc_map_table { i64 7728, i32 119 }, %struct.rc_map_table { i64 7710, i32 163 }, %struct.rc_map_table { i64 7681, i32 513 }, %struct.rc_map_table { i64 7682, i32 514 }, %struct.rc_map_table { i64 7683, i32 515 }, %struct.rc_map_table { i64 7684, i32 516 }, %struct.rc_map_table { i64 7685, i32 517 }, %struct.rc_map_table { i64 7686, i32 518 }, %struct.rc_map_table { i64 7687, i32 519 }, %struct.rc_map_table { i64 7688, i32 520 }, %struct.rc_map_table { i64 7689, i32 521 }, %struct.rc_map_table { i64 7690, i32 388 }, %struct.rc_map_table { i64 7680, i32 512 }, %struct.rc_map_table { i64 7694, i32 370 }, %struct.rc_map_table { i64 7691, i32 398 }, %struct.rc_map_table { i64 7726, i32 399 }, %struct.rc_map_table { i64 7736, i32 400 }, %struct.rc_map_table { i64 7721, i32 401 }, %struct.rc_map_table { i64 7997, i32 356 }, %struct.rc_map_table { i64 7995, i32 353 }, %struct.rc_map_table { i64 7936, i32 512 }, %struct.rc_map_table { i64 7937, i32 513 }, %struct.rc_map_table { i64 7938, i32 514 }, %struct.rc_map_table { i64 7939, i32 515 }, %struct.rc_map_table { i64 7940, i32 516 }, %struct.rc_map_table { i64 7941, i32 517 }, %struct.rc_map_table { i64 7942, i32 518 }, %struct.rc_map_table { i64 7943, i32 519 }, %struct.rc_map_table { i64 7944, i32 520 }, %struct.rc_map_table { i64 7945, i32 521 }, %struct.rc_map_table { i64 7967, i32 174 }, %struct.rc_map_table { i64 7949, i32 139 }, %struct.rc_map_table { i64 7952, i32 115 }, %struct.rc_map_table { i64 7953, i32 114 }, %struct.rc_map_table { i64 7968, i32 402 }, %struct.rc_map_table { i64 7969, i32 403 }, %struct.rc_map_table { i64 7973, i32 28 }, %struct.rc_map_table { i64 7947, i32 398 }, %struct.rc_map_table { i64 7982, i32 399 }, %struct.rc_map_table { i64 7992, i32 400 }, %struct.rc_map_table { i64 7977, i32 401 }, %struct.rc_map_table { i64 7951, i32 113 }, %struct.rc_map_table { i64 7948, i32 385 }, %struct.rc_map_table { i64 7996, i32 372 }, %struct.rc_map_table { i64 7986, i32 168 }, %struct.rc_map_table { i64 7989, i32 207 }, %struct.rc_map_table { i64 7988, i32 208 }, %struct.rc_map_table { i64 7991, i32 167 }, %struct.rc_map_table { i64 7990, i32 128 }, %struct.rc_map_table { i64 7984, i32 119 }, %struct.rc_map_table { i64 7972, i32 165 }, %struct.rc_map_table { i64 7966, i32 163 }, %struct.rc_map_table { i64 7424, i32 512 }, %struct.rc_map_table { i64 7425, i32 513 }, %struct.rc_map_table { i64 7426, i32 514 }, %struct.rc_map_table { i64 7427, i32 515 }, %struct.rc_map_table { i64 7428, i32 516 }, %struct.rc_map_table { i64 7429, i32 517 }, %struct.rc_map_table { i64 7430, i32 518 }, %struct.rc_map_table { i64 7431, i32 519 }, %struct.rc_map_table { i64 7432, i32 520 }, %struct.rc_map_table { i64 7433, i32 521 }, %struct.rc_map_table { i64 7434, i32 388 }, %struct.rc_map_table { i64 7437, i32 139 }, %struct.rc_map_table { i64 7439, i32 113 }, %struct.rc_map_table { i64 7440, i32 115 }, %struct.rc_map_table { i64 7441, i32 114 }, %struct.rc_map_table { i64 7442, i32 412 }, %struct.rc_map_table { i64 7444, i32 103 }, %struct.rc_map_table { i64 7445, i32 108 }, %struct.rc_map_table { i64 7446, i32 105 }, %struct.rc_map_table { i64 7447, i32 106 }, %struct.rc_map_table { i64 7452, i32 377 }, %struct.rc_map_table { i64 7454, i32 407 }, %struct.rc_map_table { i64 7455, i32 174 }, %struct.rc_map_table { i64 7456, i32 402 }, %struct.rc_map_table { i64 7457, i32 403 }, %struct.rc_map_table { i64 7460, i32 405 }, %struct.rc_map_table { i64 7461, i32 352 }, %struct.rc_map_table { i64 7472, i32 119 }, %struct.rc_map_table { i64 7474, i32 168 }, %struct.rc_map_table { i64 7476, i32 208 }, %struct.rc_map_table { i64 7477, i32 207 }, %struct.rc_map_table { i64 7478, i32 128 }, %struct.rc_map_table { i64 7479, i32 167 }, %struct.rc_map_table { i64 7483, i32 354 }, %struct.rc_map_table { i64 7485, i32 116 }, %struct.rc_map_table { i64 7487, i32 102 }, %struct.rc_map_table { i64 7227, i32 354 }, %struct.rc_map_table { i64 7229, i32 116 }, %struct.rc_map_table { i64 7188, i32 103 }, %struct.rc_map_table { i64 7189, i32 108 }, %struct.rc_map_table { i64 7190, i32 105 }, %struct.rc_map_table { i64 7191, i32 106 }, %struct.rc_map_table { i64 7205, i32 352 }, %struct.rc_map_table { i64 7168, i32 512 }, %struct.rc_map_table { i64 7169, i32 513 }, %struct.rc_map_table { i64 7170, i32 514 }, %struct.rc_map_table { i64 7171, i32 515 }, %struct.rc_map_table { i64 7172, i32 516 }, %struct.rc_map_table { i64 7173, i32 517 }, %struct.rc_map_table { i64 7174, i32 518 }, %struct.rc_map_table { i64 7175, i32 519 }, %struct.rc_map_table { i64 7176, i32 520 }, %struct.rc_map_table { i64 7177, i32 521 }, %struct.rc_map_table { i64 7199, i32 174 }, %struct.rc_map_table { i64 7181, i32 139 }, %struct.rc_map_table { i64 7196, i32 377 }, %struct.rc_map_table { i64 7184, i32 115 }, %struct.rc_map_table { i64 7185, i32 114 }, %struct.rc_map_table { i64 7200, i32 402 }, %struct.rc_map_table { i64 7201, i32 403 }, %struct.rc_map_table { i64 7183, i32 113 }, %struct.rc_map_table { i64 7186, i32 412 }, %struct.rc_map_table { i64 7222, i32 128 }, %struct.rc_map_table { i64 7223, i32 167 }, %struct.rc_map_table { i64 7204, i32 405 }, %struct.rc_map_table { i64 7198, i32 407 }, %struct.rc_map_table { i64 7178, i32 388 }, %struct.rc_map_table { i64 7182, i32 370 }, %struct.rc_map_table { i64 7218, i32 168 }, %struct.rc_map_table { i64 7216, i32 119 }, %struct.rc_map_table { i64 7221, i32 207 }, %struct.rc_map_table { i64 7220, i32 208 }, %struct.rc_map_table { i64 15, i32 377 }, %struct.rc_map_table { i64 31, i32 377 }, %struct.rc_map_table { i64 32, i32 402 }, %struct.rc_map_table { i64 12, i32 385 }, %struct.rc_map_table { i64 17, i32 114 }, %struct.rc_map_table { i64 46, i32 372 }, %struct.rc_map_table { i64 16, i32 115 }, %struct.rc_map_table { i64 13, i32 113 }, %struct.rc_map_table { i64 33, i32 403 }, %struct.rc_map_table { i64 34, i32 393 }, %struct.rc_map_table { i64 1, i32 513 }, %struct.rc_map_table { i64 2, i32 514 }, %struct.rc_map_table { i64 3, i32 515 }, %struct.rc_map_table { i64 4, i32 516 }, %struct.rc_map_table { i64 5, i32 517 }, %struct.rc_map_table { i64 6, i32 518 }, %struct.rc_map_table { i64 7, i32 519 }, %struct.rc_map_table { i64 8, i32 520 }, %struct.rc_map_table { i64 9, i32 521 }, %struct.rc_map_table { i64 30, i32 398 }, %struct.rc_map_table { i64 0, i32 512 }, %struct.rc_map_table { i64 38, i32 142 }], align 16, !dbg !65
@.str = private unnamed_addr constant [13 x i8] c"rc-hauppauge\00", align 1
@llvm.used = appending global [6 x i8*] [i8* bitcast (void ()* @exit_rc_map_rc5_hauppauge_new to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_init_rc_map_rc5_hauppauge_new202 to i8*), i8* bitcast (void ()** @__exitcall_exit_rc_map_rc5_hauppauge_new to i8*), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__UNIQUE_ID_file203, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license204, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_author205, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @exit_rc_map_rc5_hauppauge_new() #0 section ".exit.text" !dbg !123 {
entry:
  call void @rc_map_unregister(%struct.rc_map_list* @rc5_hauppauge_new_map) #2, !dbg !124
  ret void, !dbg !125
}

; Function Attrs: noredzone
declare dso_local void @rc_map_unregister(%struct.rc_map_list*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @init_rc_map_rc5_hauppauge_new() #0 section ".init.text" !dbg !126 {
entry:
  %call = call i32 @rc_map_register(%struct.rc_map_list* @rc5_hauppauge_new_map) #2, !dbg !130
  ret i32 %call, !dbg !131
}

; Function Attrs: noredzone
declare dso_local i32 @rc_map_register(%struct.rc_map_list*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rc5_hauppauge_new_map", scope: !2, file: !3, line: 266, type: !82, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/rc/keymaps/rc-hauppauge.c", directory: "/home/lizy2001/genbc/linux")
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
!37 = !{!38, !41, !48, !55, !60, !0, !65}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_init_rc_map_rc5_hauppauge_new202", scope: !2, file: !3, line: 285, type: !40, isLocal: true, isDefinition: true)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__exitcall_exit_rc_map_rc5_hauppauge_new", scope: !2, file: !3, line: 286, type: !43, isLocal: true, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !44, line: 117, baseType: !45)
!44 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file203", scope: !2, file: !3, line: 288, type: !50, isLocal: true, isDefinition: true, align: 8)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 448, elements: !53)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !{!54}
!54 = !DISubrange(count: 56)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license204", scope: !2, file: !3, line: 288, type: !57, isLocal: true, isDefinition: true, align: 8)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 200, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 25)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author205", scope: !2, file: !3, line: 289, type: !62, isLocal: true, isDefinition: true, align: 8)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 336, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 42)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "rc5_hauppauge_new", scope: !2, file: !3, line: 24, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 22144, elements: !80)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_table", file: !69, line: 140, size: 128, elements: !70)
!69 = !DIFile(filename: "./include/media/rc-map.h", directory: "/home/lizy2001/genbc/linux")
!70 = !{!71, !77}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !68, file: !69, line: 141, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !73, line: 23, baseType: !74)
!73 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !75, line: 31, baseType: !76)
!75 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!76 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !68, file: !69, line: 142, baseType: !78, size: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !73, line: 21, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !75, line: 27, baseType: !7)
!80 = !{!81}
!81 = !DISubrange(count: 173)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_list", file: !69, line: 173, size: 384, elements: !83)
!83 = !{!84, !91}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !82, file: !69, line: 174, baseType: !85, size: 128)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !86, line: 178, size: 128, elements: !87)
!86 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !90}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !85, file: !86, line: 179, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !85, file: !86, line: 179, baseType: !89, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !82, file: !69, line: 175, baseType: !92, size: 256, offset: 128)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map", file: !69, line: 157, size: 256, elements: !93)
!93 = !{!94, !96, !97, !98, !99, !100, !102}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !92, file: !69, line: 158, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !92, file: !69, line: 159, baseType: !7, size: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !92, file: !69, line: 160, baseType: !7, size: 32, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !92, file: !69, line: 161, baseType: !7, size: 32, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "rc_proto", scope: !92, file: !69, line: 162, baseType: !5, size: 32, offset: 160)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !92, file: !69, line: 163, baseType: !101, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !92, file: !69, line: 164, baseType: !103, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !104, line: 83, baseType: !105)
!104 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !104, line: 71, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !104, line: 72, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !104, line: 72, elements: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !108, file: !104, line: 73, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !104, line: 20, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !111, file: !104, line: 21, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !115, line: 25, baseType: !116)
!115 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 25, elements: !117)
!117 = !{}
!118 = !{i32 7, !"Dwarf Version", i32 4}
!119 = !{i32 2, !"Debug Info Version", i32 3}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"Code Model", i32 2}
!122 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!123 = distinct !DISubprogram(name: "exit_rc_map_rc5_hauppauge_new", scope: !3, file: !3, line: 280, type: !46, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !117)
!124 = !DILocation(line: 282, column: 2, scope: !123)
!125 = !DILocation(line: 283, column: 1, scope: !123)
!126 = distinct !DISubprogram(name: "init_rc_map_rc5_hauppauge_new", scope: !3, file: !3, line: 275, type: !127, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !117)
!127 = !DISubroutineType(types: !128)
!128 = !{!129}
!129 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!130 = !DILocation(line: 277, column: 9, scope: !126)
!131 = !DILocation(line: 277, column: 2, scope: !126)
