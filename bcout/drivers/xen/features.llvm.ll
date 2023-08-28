; ModuleID = '../bcout/drivers/xen/features.llvm.bc'
source_filename = "drivers/xen/features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.xen_feature_info = type { i32, i32 }

@xen_features = dso_local global [32 x i8] zeroinitializer, section ".data..read_mostly", align 16, !dbg !0

; Function Attrs: noinline noredzone nounwind optnone
define dso_local void @xen_setup_features() #0 !dbg !23 {
entry:
  %fi = alloca %struct.xen_feature_info, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.xen_feature_info* %fi, metadata !26, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %i, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %j, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %i, align 4, !dbg !42
  br label %for.cond, !dbg !44

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %i, align 4, !dbg !45
  %cmp = icmp slt i32 %0, 1, !dbg !47
  br i1 %cmp, label %for.body, label %for.end8, !dbg !48

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !49
  %submap_idx = getelementptr inbounds %struct.xen_feature_info, %struct.xen_feature_info* %fi, i32 0, i32 0, !dbg !51
  store i32 %1, i32* %submap_idx, align 4, !dbg !52
  %2 = bitcast %struct.xen_feature_info* %fi to i8*, !dbg !53
  %call = call i32 @HYPERVISOR_xen_version(i32 6, i8* %2) #4, !dbg !55
  %cmp1 = icmp slt i32 %call, 0, !dbg !56
  br i1 %cmp1, label %if.then, label %if.end, !dbg !57

if.then:                                          ; preds = %for.body
  br label %for.end8, !dbg !58

if.end:                                           ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !59
  br label %for.cond2, !dbg !61

for.cond2:                                        ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4, !dbg !62
  %cmp3 = icmp slt i32 %3, 32, !dbg !64
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !65

for.body4:                                        ; preds = %for.cond2
  %submap = getelementptr inbounds %struct.xen_feature_info, %struct.xen_feature_info* %fi, i32 0, i32 1, !dbg !66
  %4 = load i32, i32* %submap, align 4, !dbg !66
  %5 = load i32, i32* %j, align 4, !dbg !67
  %shl = shl i32 1, %5, !dbg !68
  %and = and i32 %4, %shl, !dbg !69
  %tobool = icmp ne i32 %and, 0, !dbg !70
  %lnot = xor i1 %tobool, true, !dbg !70
  %lnot5 = xor i1 %lnot, true, !dbg !71
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !71
  %conv = trunc i32 %lnot.ext to i8, !dbg !71
  %6 = load i32, i32* %i, align 4, !dbg !72
  %mul = mul i32 %6, 32, !dbg !73
  %7 = load i32, i32* %j, align 4, !dbg !74
  %add = add i32 %mul, %7, !dbg !75
  %idxprom = sext i32 %add to i64, !dbg !76
  %arrayidx = getelementptr [32 x i8], [32 x i8]* @xen_features, i64 0, i64 %idxprom, !dbg !76
  store i8 %conv, i8* %arrayidx, align 1, !dbg !77
  br label %for.inc, !dbg !76

for.inc:                                          ; preds = %for.body4
  %8 = load i32, i32* %j, align 4, !dbg !78
  %inc = add i32 %8, 1, !dbg !78
  store i32 %inc, i32* %j, align 4, !dbg !78
  br label %for.cond2, !dbg !79, !llvm.loop !80

for.end:                                          ; preds = %for.cond2
  br label %for.inc6, !dbg !82

for.inc6:                                         ; preds = %for.end
  %9 = load i32, i32* %i, align 4, !dbg !83
  %inc7 = add i32 %9, 1, !dbg !83
  store i32 %inc7, i32* %i, align 4, !dbg !83
  br label %for.cond, !dbg !84, !llvm.loop !85

for.end8:                                         ; preds = %if.then, %for.cond
  ret void, !dbg !87
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone
define internal i32 @HYPERVISOR_xen_version(i32 %cmd, i8* %arg) #0 !dbg !88 {
entry:
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !93, metadata !DIExpression()), !dbg !94
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !97, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !100, metadata !DIExpression()), !dbg !99
  %0 = load i64, i64* %__arg1, align 8, !dbg !99
  store i64 %0, i64* %__arg1, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !101, metadata !DIExpression()), !dbg !99
  %1 = load i64, i64* %__arg2, align 8, !dbg !99
  store i64 %1, i64* %__arg2, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !102, metadata !DIExpression()), !dbg !99
  %2 = load i64, i64* %__arg3, align 8, !dbg !99
  store i64 %2, i64* %__arg3, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !103, metadata !DIExpression()), !dbg !99
  %3 = load i64, i64* %__arg4, align 8, !dbg !99
  store i64 %3, i64* %__arg4, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !104, metadata !DIExpression()), !dbg !99
  %4 = load i64, i64* %__arg5, align 8, !dbg !99
  store i64 %4, i64* %__arg5, align 8, !dbg !99
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !99
  %conv = sext i32 %5 to i64, !dbg !99
  store i64 %conv, i64* %__arg1, align 8, !dbg !99
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !99
  %7 = ptrtoint i8* %6 to i64, !dbg !99
  store i64 %7, i64* %__arg2, align 8, !dbg !99
  %8 = call i64 @llvm.read_register.i64(metadata !17), !dbg !99
  %9 = load i64, i64* %__arg1, align 8, !dbg !99
  %10 = load i64, i64* %__arg2, align 8, !dbg !99
  %11 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 544, i64 %8, i64 %9, i64 %10) #3, !dbg !99, !srcloc !105
  %asmresult = extractvalue { i64, i64, i64, i64 } %11, 0, !dbg !99
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %11, 1, !dbg !99
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %11, 2, !dbg !99
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %11, 3, !dbg !99
  store i64 %asmresult, i64* %__res, align 8, !dbg !99
  call void @llvm.write_register.i64(metadata !17, i64 %asmresult1), !dbg !99
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !99
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !99
  %12 = load i64, i64* %__res, align 8, !dbg !99
  %conv4 = trunc i64 %12 to i32, !dbg !99
  store i32 %conv4, i32* %tmp, align 4, !dbg !99
  %13 = load i32, i32* %tmp, align 4, !dbg !99
  ret i32 %13, !dbg !106
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #2

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #3

attributes #0 = { noinline noredzone nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xen_features", scope: !2, file: !3, line: 19, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/features.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0}
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !15)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !11, line: 17, baseType: !12)
!11 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !13, line: 21, baseType: !14)
!13 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!16}
!16 = !DISubrange(count: 32)
!17 = !{!"rsp"}
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"Code Model", i32 2}
!22 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!23 = distinct !DISubprogram(name: "xen_setup_features", scope: !3, file: !3, line: 22, type: !24, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!24 = !DISubroutineType(types: !25)
!25 = !{null}
!26 = !DILocalVariable(name: "fi", scope: !23, file: !3, line: 24, type: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_feature_info", file: !28, line: 53, size: 64, elements: !29)
!28 = !DIFile(filename: "./include/xen/interface/version.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30, !32}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "submap_idx", scope: !27, file: !28, line: 54, baseType: !31, size: 32)
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "submap", scope: !27, file: !28, line: 55, baseType: !33, size: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 104, baseType: !35)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !11, line: 21, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !13, line: 27, baseType: !31)
!37 = !DILocation(line: 24, column: 26, scope: !23)
!38 = !DILocalVariable(name: "i", scope: !23, file: !3, line: 25, type: !7)
!39 = !DILocation(line: 25, column: 6, scope: !23)
!40 = !DILocalVariable(name: "j", scope: !23, file: !3, line: 25, type: !7)
!41 = !DILocation(line: 25, column: 9, scope: !23)
!42 = !DILocation(line: 27, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !23, file: !3, line: 27, column: 2)
!44 = !DILocation(line: 27, column: 7, scope: !43)
!45 = !DILocation(line: 27, column: 14, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !3, line: 27, column: 2)
!47 = !DILocation(line: 27, column: 16, scope: !46)
!48 = !DILocation(line: 27, column: 2, scope: !43)
!49 = !DILocation(line: 28, column: 19, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !3, line: 27, column: 43)
!51 = !DILocation(line: 28, column: 6, scope: !50)
!52 = !DILocation(line: 28, column: 17, scope: !50)
!53 = !DILocation(line: 29, column: 51, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !3, line: 29, column: 7)
!55 = !DILocation(line: 29, column: 7, scope: !54)
!56 = !DILocation(line: 29, column: 56, scope: !54)
!57 = !DILocation(line: 29, column: 7, scope: !50)
!58 = !DILocation(line: 30, column: 4, scope: !54)
!59 = !DILocation(line: 31, column: 10, scope: !60)
!60 = distinct !DILexicalBlock(scope: !50, file: !3, line: 31, column: 3)
!61 = !DILocation(line: 31, column: 8, scope: !60)
!62 = !DILocation(line: 31, column: 15, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !3, line: 31, column: 3)
!64 = !DILocation(line: 31, column: 17, scope: !63)
!65 = !DILocation(line: 31, column: 3, scope: !60)
!66 = !DILocation(line: 32, column: 37, scope: !63)
!67 = !DILocation(line: 32, column: 49, scope: !63)
!68 = !DILocation(line: 32, column: 47, scope: !63)
!69 = !DILocation(line: 32, column: 44, scope: !63)
!70 = !DILocation(line: 32, column: 32, scope: !63)
!71 = !DILocation(line: 32, column: 31, scope: !63)
!72 = !DILocation(line: 32, column: 17, scope: !63)
!73 = !DILocation(line: 32, column: 19, scope: !63)
!74 = !DILocation(line: 32, column: 26, scope: !63)
!75 = !DILocation(line: 32, column: 24, scope: !63)
!76 = !DILocation(line: 32, column: 4, scope: !63)
!77 = !DILocation(line: 32, column: 29, scope: !63)
!78 = !DILocation(line: 31, column: 24, scope: !63)
!79 = !DILocation(line: 31, column: 3, scope: !63)
!80 = distinct !{!80, !65, !81}
!81 = !DILocation(line: 32, column: 50, scope: !60)
!82 = !DILocation(line: 33, column: 2, scope: !50)
!83 = !DILocation(line: 27, column: 39, scope: !46)
!84 = !DILocation(line: 27, column: 2, scope: !46)
!85 = distinct !{!85, !48, !86}
!86 = !DILocation(line: 33, column: 2, scope: !43)
!87 = !DILocation(line: 34, column: 1, scope: !23)
!88 = distinct !DISubprogram(name: "HYPERVISOR_xen_version", scope: !89, file: !89, line: 362, type: !90, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!89 = !DIFile(filename: "./arch/x86/include/asm/xen/hypercall.h", directory: "/home/lizy2001/genbc/linux")
!90 = !DISubroutineType(types: !91)
!91 = !{!7, !7, !92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!93 = !DILocalVariable(name: "cmd", arg: 1, scope: !88, file: !89, line: 362, type: !7)
!94 = !DILocation(line: 362, column: 28, scope: !88)
!95 = !DILocalVariable(name: "arg", arg: 2, scope: !88, file: !89, line: 362, type: !92)
!96 = !DILocation(line: 362, column: 39, scope: !88)
!97 = !DILocalVariable(name: "__res", scope: !98, file: !89, line: 364, type: !6)
!98 = distinct !DILexicalBlock(scope: !88, file: !89, line: 364, column: 9)
!99 = !DILocation(line: 364, column: 9, scope: !98)
!100 = !DILocalVariable(name: "__arg1", scope: !98, file: !89, line: 364, type: !6)
!101 = !DILocalVariable(name: "__arg2", scope: !98, file: !89, line: 364, type: !6)
!102 = !DILocalVariable(name: "__arg3", scope: !98, file: !89, line: 364, type: !6)
!103 = !DILocalVariable(name: "__arg4", scope: !98, file: !89, line: 364, type: !6)
!104 = !DILocalVariable(name: "__arg5", scope: !98, file: !89, line: 364, type: !6)
!105 = !{i32 -2143029529}
!106 = !DILocation(line: 364, column: 2, scope: !88)
