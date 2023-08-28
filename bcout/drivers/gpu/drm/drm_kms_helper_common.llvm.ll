; ModuleID = '../bcout/drivers/gpu/drm/drm_kms_helper_common.llvm.bc'
source_filename = "drivers/gpu/drm/drm_kms_helper_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_drm_kms_helper_init6:\09\09\09"
module asm ".long\09drm_kms_helper_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

@__UNIQUE_ID_author252 = internal constant [49 x i8] c"drm_kms_helper.author=David Airlie, Jesse Barnes\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description253 = internal constant [42 x i8] c"drm_kms_helper.description=DRM KMS helper\00", section ".modinfo", align 1, !dbg !6
@__UNIQUE_ID_file254 = internal constant [51 x i8] c"drm_kms_helper.file=drivers/gpu/drm/drm_kms_helper\00", section ".modinfo", align 1, !dbg !13
@__UNIQUE_ID_license255 = internal constant [49 x i8] c"drm_kms_helper.license=GPL and additional rights\00", section ".modinfo", align 1, !dbg !18
@__UNIQUE_ID___addressable_drm_kms_helper_init256 = internal global i8* bitcast (i32 ()* @drm_kms_helper_init to i8*), section ".discard.addressable", align 8, !dbg !23
@__exitcall_drm_kms_helper_exit = internal global void ()* @drm_kms_helper_exit, section ".exitcall.exit", align 8, !dbg !26
@llvm.used = appending global [7 x i8*] [i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author252, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_description253, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_file254, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_license255, i32 0, i32 0), i8* bitcast (void ()* @drm_kms_helper_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_drm_kms_helper_init256 to i8*), i8* bitcast (void ()** @__exitcall_drm_kms_helper_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @drm_kms_helper_exit() #0 section ".exit.text" !dbg !38 {
entry:
  call void @drm_dp_aux_dev_exit() #4, !dbg !39
  ret void, !dbg !40
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_dp_aux_dev_exit() #1 !dbg !41 {
entry:
  ret void, !dbg !43
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_kms_helper_init() #0 section ".init.text" !dbg !44 {
entry:
  %ret = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !48, metadata !DIExpression()), !dbg !49
  %call = call i32 @drm_fb_helper_modinit() #4, !dbg !50
  store i32 %call, i32* %ret, align 4, !dbg !51
  %0 = load i32, i32* %ret, align 4, !dbg !52
  %cmp = icmp slt i32 %0, 0, !dbg !54
  br i1 %cmp, label %if.then, label %if.end, !dbg !55

if.then:                                          ; preds = %entry
  br label %out, !dbg !56

if.end:                                           ; preds = %entry
  %call1 = call i32 @drm_dp_aux_dev_init() #4, !dbg !57
  store i32 %call1, i32* %ret, align 4, !dbg !58
  %1 = load i32, i32* %ret, align 4, !dbg !59
  %cmp2 = icmp slt i32 %1, 0, !dbg !61
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !62

if.then3:                                         ; preds = %if.end
  br label %out, !dbg !63

if.end4:                                          ; preds = %if.end
  br label %out, !dbg !64

out:                                              ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !65), !dbg !66
  %2 = load i32, i32* %ret, align 4, !dbg !67
  ret i32 %2, !dbg !68
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone
declare dso_local i32 @drm_fb_helper_modinit() #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_dp_aux_dev_init() #1 !dbg !69 {
entry:
  ret i32 0, !dbg !70
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author252", scope: !2, file: !3, line: 34, type: !20, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_kms_helper_common.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!0, !6, !13, !18, !23, !26}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description253", scope: !2, file: !3, line: 35, type: !8, isLocal: true, isDefinition: true, align: 8)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 336, elements: !11)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{!12}
!12 = !DISubrange(count: 42)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file254", scope: !2, file: !3, line: 36, type: !15, isLocal: true, isDefinition: true, align: 8)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 408, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 51)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license255", scope: !2, file: !3, line: 36, type: !20, isLocal: true, isDefinition: true, align: 8)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 392, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 49)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_kms_helper_init256", scope: !2, file: !3, line: 88, type: !25, isLocal: true, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "__exitcall_drm_kms_helper_exit", scope: !2, file: !3, line: 89, type: !28, isLocal: true, isDefinition: true)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !29, line: 117, baseType: !30)
!29 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{null}
!33 = !{i32 7, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"Code Model", i32 2}
!37 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!38 = distinct !DISubprogram(name: "drm_kms_helper_exit", scope: !3, file: !3, line: 82, type: !31, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!39 = !DILocation(line: 85, column: 2, scope: !38)
!40 = !DILocation(line: 86, column: 1, scope: !38)
!41 = distinct !DISubprogram(name: "drm_dp_aux_dev_exit", scope: !42, file: !42, line: 57, type: !31, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!42 = !DIFile(filename: "drivers/gpu/drm/drm_crtc_helper_internal.h", directory: "/home/lizy2001/genbc/linux")
!43 = !DILocation(line: 59, column: 1, scope: !41)
!44 = distinct !DISubprogram(name: "drm_kms_helper_init", scope: !3, file: !3, line: 65, type: !45, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!45 = !DISubroutineType(types: !46)
!46 = !{!47}
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DILocalVariable(name: "ret", scope: !44, file: !3, line: 67, type: !47)
!49 = !DILocation(line: 67, column: 6, scope: !44)
!50 = !DILocation(line: 70, column: 8, scope: !44)
!51 = !DILocation(line: 70, column: 6, scope: !44)
!52 = !DILocation(line: 71, column: 6, scope: !53)
!53 = distinct !DILexicalBlock(scope: !44, file: !3, line: 71, column: 6)
!54 = !DILocation(line: 71, column: 10, scope: !53)
!55 = !DILocation(line: 71, column: 6, scope: !44)
!56 = !DILocation(line: 72, column: 3, scope: !53)
!57 = !DILocation(line: 74, column: 8, scope: !44)
!58 = !DILocation(line: 74, column: 6, scope: !44)
!59 = !DILocation(line: 75, column: 6, scope: !60)
!60 = distinct !DILexicalBlock(scope: !44, file: !3, line: 75, column: 6)
!61 = !DILocation(line: 75, column: 10, scope: !60)
!62 = !DILocation(line: 75, column: 6, scope: !44)
!63 = !DILocation(line: 76, column: 3, scope: !60)
!64 = !DILocation(line: 75, column: 12, scope: !60)
!65 = !DILabel(scope: !44, name: "out", file: !3, line: 78)
!66 = !DILocation(line: 78, column: 1, scope: !44)
!67 = !DILocation(line: 79, column: 9, scope: !44)
!68 = !DILocation(line: 79, column: 2, scope: !44)
!69 = distinct !DISubprogram(name: "drm_dp_aux_dev_init", scope: !42, file: !42, line: 52, type: !45, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!70 = !DILocation(line: 54, column: 2, scope: !69)
