; ModuleID = '../bcout/drivers/ras/ras.llvm.bc'
source_filename = "drivers/ras/ras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_ras_init4:\09\09\09"
module asm ".long\09ras_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.guid_t = type { [16 x i8] }
%struct.cper_sec_proc_arm = type { i32, i16, i16, i32, i8, [3 x i8], i64, i64, i32, i32 }

@__UNIQUE_ID___addressable_ras_init238 = internal global i8* bitcast (i32 ()* @ras_init to i8*), section ".discard.addressable", align 8, !dbg !0
@__setup_str_parse_ras_param = internal constant [4 x i8] c"ras\00", section ".init.rodata", align 1, !dbg !22
@__setup_parse_ras_param = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @__setup_str_parse_ras_param, i32 0, i32 0), i32 (i8*)* @parse_ras_param, i32 0 }, section ".init.setup", align 8, !dbg !6
@llvm.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_ras_init238 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_parse_ras_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @log_non_standard_event(%struct.guid_t* %sec_type, %struct.guid_t* %fru_id, i8* %fru_text, i8 zeroext %sev, i8* %err, i32 %len) #0 !dbg !33 {
entry:
  %sec_type.addr = alloca %struct.guid_t*, align 8
  %fru_id.addr = alloca %struct.guid_t*, align 8
  %fru_text.addr = alloca i8*, align 8
  %sev.addr = alloca i8, align 1
  %err.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.guid_t* %sec_type, %struct.guid_t** %sec_type.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.guid_t** %sec_type.addr, metadata !57, metadata !DIExpression()), !dbg !58
  store %struct.guid_t* %fru_id, %struct.guid_t** %fru_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.guid_t** %fru_id.addr, metadata !59, metadata !DIExpression()), !dbg !60
  store i8* %fru_text, i8** %fru_text.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fru_text.addr, metadata !61, metadata !DIExpression()), !dbg !62
  store i8 %sev, i8* %sev.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sev.addr, metadata !63, metadata !DIExpression()), !dbg !64
  store i8* %err, i8** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %err.addr, metadata !65, metadata !DIExpression()), !dbg !66
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !67, metadata !DIExpression()), !dbg !68
  %0 = load %struct.guid_t*, %struct.guid_t** %sec_type.addr, align 8, !dbg !69
  %1 = load %struct.guid_t*, %struct.guid_t** %fru_id.addr, align 8, !dbg !70
  %2 = load i8*, i8** %fru_text.addr, align 8, !dbg !71
  %3 = load i8, i8* %sev.addr, align 1, !dbg !72
  %4 = load i8*, i8** %err.addr, align 8, !dbg !73
  %5 = load i32, i32* %len.addr, align 4, !dbg !74
  call void @trace_non_standard_event(%struct.guid_t* %0, %struct.guid_t* %1, i8* %2, i8 zeroext %3, i8* %4, i32 %5) #3, !dbg !75
  ret void, !dbg !76
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_non_standard_event(%struct.guid_t* %sec_type, %struct.guid_t* %fru_id, i8* %fru_text, i8 zeroext %sev, i8* %err, i32 %len) #0 !dbg !77 {
entry:
  %sec_type.addr = alloca %struct.guid_t*, align 8
  %fru_id.addr = alloca %struct.guid_t*, align 8
  %fru_text.addr = alloca i8*, align 8
  %sev.addr = alloca i8, align 1
  %err.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.guid_t* %sec_type, %struct.guid_t** %sec_type.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.guid_t** %sec_type.addr, metadata !79, metadata !DIExpression()), !dbg !80
  store %struct.guid_t* %fru_id, %struct.guid_t** %fru_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.guid_t** %fru_id.addr, metadata !81, metadata !DIExpression()), !dbg !80
  store i8* %fru_text, i8** %fru_text.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fru_text.addr, metadata !82, metadata !DIExpression()), !dbg !80
  store i8 %sev, i8* %sev.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sev.addr, metadata !83, metadata !DIExpression()), !dbg !80
  store i8* %err, i8** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %err.addr, metadata !84, metadata !DIExpression()), !dbg !80
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !85, metadata !DIExpression()), !dbg !80
  ret void, !dbg !80
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @log_arm_hw_error(%struct.cper_sec_proc_arm* %err) #0 !dbg !86 {
entry:
  %err.addr = alloca %struct.cper_sec_proc_arm*, align 8
  store %struct.cper_sec_proc_arm* %err, %struct.cper_sec_proc_arm** %err.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cper_sec_proc_arm** %err.addr, metadata !112, metadata !DIExpression()), !dbg !113
  %0 = load %struct.cper_sec_proc_arm*, %struct.cper_sec_proc_arm** %err.addr, align 8, !dbg !114
  call void @trace_arm_event(%struct.cper_sec_proc_arm* %0) #3, !dbg !115
  ret void, !dbg !116
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_arm_event(%struct.cper_sec_proc_arm* %proc) #0 !dbg !117 {
entry:
  %proc.addr = alloca %struct.cper_sec_proc_arm*, align 8
  store %struct.cper_sec_proc_arm* %proc, %struct.cper_sec_proc_arm** %proc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cper_sec_proc_arm** %proc.addr, metadata !122, metadata !DIExpression()), !dbg !123
  ret void, !dbg !123
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ras_init() #2 section ".init.text" !dbg !124 {
entry:
  %rc = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !127, metadata !DIExpression()), !dbg !128
  store i32 0, i32* %rc, align 4, !dbg !128
  call void @ras_debugfs_init() #3, !dbg !129
  %call = call i32 @ras_add_daemon_trace() #3, !dbg !130
  store i32 %call, i32* %rc, align 4, !dbg !131
  %0 = load i32, i32* %rc, align 4, !dbg !132
  ret i32 %0, !dbg !133
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @parse_ras_param(i8* %str) #2 section ".init.text" !dbg !134 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !135, metadata !DIExpression()), !dbg !136
  ret i32 1, !dbg !137
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ras_debugfs_init() #0 !dbg !138 {
entry:
  ret void, !dbg !142
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ras_add_daemon_trace() #0 !dbg !143 {
entry:
  ret i32 0, !dbg !144
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ras_init238", scope: !2, file: !3, line: 38, type: !27, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/ras/ras.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!0, !6, !22}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "__setup_parse_ras_param", scope: !2, file: !3, line: 55, type: !8, isLocal: true, isDefinition: true, align: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !9, line: 241, size: 192, elements: !10)
!9 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!10 = !{!11, !15, !21}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !8, file: !9, line: 242, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !8, file: !9, line: 243, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !20}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !8, file: !9, line: 244, baseType: !19, size: 32, offset: 128)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "__setup_str_parse_ras_param", scope: !2, file: !3, line: 55, type: !24, isLocal: true, isDefinition: true, align: 8)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 4)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !{i32 7, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"Code Model", i32 2}
!32 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!33 = distinct !DISubprogram(name: "log_non_standard_event", scope: !3, file: !3, line: 17, type: !34, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36, !36, !12, !49, !52, !53}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !39, line: 25, baseType: !40)
!39 = !DIFile(filename: "./include/uapi/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 23, size: 128, elements: !41)
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !40, file: !39, line: 24, baseType: !43, size: 128)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 128, elements: !47)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !45, line: 21, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !{!48}
!48 = !DISubrange(count: 16)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !51, line: 17, baseType: !44)
!51 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !51, line: 21, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !45, line: 27, baseType: !56)
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !DILocalVariable(name: "sec_type", arg: 1, scope: !33, file: !3, line: 17, type: !36)
!58 = !DILocation(line: 17, column: 43, scope: !33)
!59 = !DILocalVariable(name: "fru_id", arg: 2, scope: !33, file: !3, line: 17, type: !36)
!60 = !DILocation(line: 17, column: 67, scope: !33)
!61 = !DILocalVariable(name: "fru_text", arg: 3, scope: !33, file: !3, line: 18, type: !12)
!62 = !DILocation(line: 18, column: 20, scope: !33)
!63 = !DILocalVariable(name: "sev", arg: 4, scope: !33, file: !3, line: 18, type: !49)
!64 = !DILocation(line: 18, column: 39, scope: !33)
!65 = !DILocalVariable(name: "err", arg: 5, scope: !33, file: !3, line: 18, type: !52)
!66 = !DILocation(line: 18, column: 54, scope: !33)
!67 = !DILocalVariable(name: "len", arg: 6, scope: !33, file: !3, line: 19, type: !53)
!68 = !DILocation(line: 19, column: 18, scope: !33)
!69 = !DILocation(line: 21, column: 27, scope: !33)
!70 = !DILocation(line: 21, column: 37, scope: !33)
!71 = !DILocation(line: 21, column: 45, scope: !33)
!72 = !DILocation(line: 21, column: 55, scope: !33)
!73 = !DILocation(line: 21, column: 60, scope: !33)
!74 = !DILocation(line: 21, column: 65, scope: !33)
!75 = !DILocation(line: 21, column: 2, scope: !33)
!76 = !DILocation(line: 22, column: 1, scope: !33)
!77 = distinct !DISubprogram(name: "trace_non_standard_event", scope: !78, file: !78, line: 219, type: !34, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!78 = !DIFile(filename: "./include/trace/../../include/ras/ras_event.h", directory: "/home/lizy2001/genbc/linux")
!79 = !DILocalVariable(name: "sec_type", arg: 1, scope: !77, file: !78, line: 219, type: !36)
!80 = !DILocation(line: 219, column: 1, scope: !77)
!81 = !DILocalVariable(name: "fru_id", arg: 2, scope: !77, file: !78, line: 219, type: !36)
!82 = !DILocalVariable(name: "fru_text", arg: 3, scope: !77, file: !78, line: 219, type: !12)
!83 = !DILocalVariable(name: "sev", arg: 4, scope: !77, file: !78, line: 219, type: !49)
!84 = !DILocalVariable(name: "err", arg: 5, scope: !77, file: !78, line: 219, type: !52)
!85 = !DILocalVariable(name: "len", arg: 6, scope: !77, file: !78, line: 219, type: !53)
!86 = distinct !DISubprogram(name: "log_arm_hw_error", scope: !3, file: !3, line: 24, type: !87, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !89}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cper_sec_proc_arm", file: !91, line: 405, size: 320, elements: !92)
!91 = !DIFile(filename: "./include/linux/cper.h", directory: "/home/lizy2001/genbc/linux")
!92 = !{!93, !94, !98, !99, !100, !101, !105, !109, !110, !111}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "validation_bits", scope: !90, file: !91, line: 406, baseType: !54, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "err_info_num", scope: !90, file: !91, line: 407, baseType: !95, size: 16, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !51, line: 19, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !45, line: 24, baseType: !97)
!97 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "context_info_num", scope: !90, file: !91, line: 408, baseType: !95, size: 16, offset: 48)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "section_length", scope: !90, file: !91, line: 409, baseType: !54, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_level", scope: !90, file: !91, line: 410, baseType: !50, size: 8, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !90, file: !91, line: 411, baseType: !102, size: 24, offset: 104)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 24, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 3)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "mpidr", scope: !90, file: !91, line: 412, baseType: !106, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !51, line: 23, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !45, line: 31, baseType: !108)
!108 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "midr", scope: !90, file: !91, line: 413, baseType: !106, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "running_state", scope: !90, file: !91, line: 414, baseType: !54, size: 32, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "psci_state", scope: !90, file: !91, line: 415, baseType: !54, size: 32, offset: 288)
!112 = !DILocalVariable(name: "err", arg: 1, scope: !86, file: !3, line: 24, type: !89)
!113 = !DILocation(line: 24, column: 49, scope: !86)
!114 = !DILocation(line: 26, column: 18, scope: !86)
!115 = !DILocation(line: 26, column: 2, scope: !86)
!116 = !DILocation(line: 27, column: 1, scope: !86)
!117 = distinct !DISubprogram(name: "trace_arm_event", scope: !78, file: !78, line: 171, type: !118, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!122 = !DILocalVariable(name: "proc", arg: 1, scope: !117, file: !78, line: 171, type: !120)
!123 = !DILocation(line: 171, column: 1, scope: !117)
!124 = distinct !DISubprogram(name: "ras_init", scope: !3, file: !3, line: 29, type: !125, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!125 = !DISubroutineType(types: !126)
!126 = !{!19}
!127 = !DILocalVariable(name: "rc", scope: !124, file: !3, line: 31, type: !19)
!128 = !DILocation(line: 31, column: 6, scope: !124)
!129 = !DILocation(line: 33, column: 2, scope: !124)
!130 = !DILocation(line: 34, column: 7, scope: !124)
!131 = !DILocation(line: 34, column: 5, scope: !124)
!132 = !DILocation(line: 36, column: 9, scope: !124)
!133 = !DILocation(line: 36, column: 2, scope: !124)
!134 = distinct !DISubprogram(name: "parse_ras_param", scope: !3, file: !3, line: 47, type: !17, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!135 = !DILocalVariable(name: "str", arg: 1, scope: !134, file: !3, line: 47, type: !20)
!136 = !DILocation(line: 47, column: 41, scope: !134)
!137 = !DILocation(line: 53, column: 2, scope: !134)
!138 = distinct !DISubprogram(name: "ras_debugfs_init", scope: !139, file: !139, line: 15, type: !140, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!139 = !DIFile(filename: "./include/linux/ras.h", directory: "/home/lizy2001/genbc/linux")
!140 = !DISubroutineType(types: !141)
!141 = !{null}
!142 = !DILocation(line: 15, column: 45, scope: !138)
!143 = distinct !DISubprogram(name: "ras_add_daemon_trace", scope: !139, file: !139, line: 16, type: !125, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!144 = !DILocation(line: 16, column: 48, scope: !143)
