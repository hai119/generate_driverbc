; ModuleID = '../bcout/drivers/media/common/siano/smsendian.llvm.bc'
source_filename = "drivers/media/common/siano/smsendian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @smsendian_handle_tx_message(i8* %buffer) #0 !dbg !8 {
entry:
  %buffer.addr = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !12, metadata !DIExpression()), !dbg !13
  ret void, !dbg !14
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @smsendian_handle_rx_message(i8* %buffer) #0 !dbg !15 {
entry:
  %buffer.addr = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !16, metadata !DIExpression()), !dbg !17
  ret void, !dbg !18
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @smsendian_handle_message_header(i8* %msg) #0 !dbg !19 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %msg.addr, metadata !20, metadata !DIExpression()), !dbg !21
  ret void, !dbg !22
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/media/common/siano/smsendian.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!8 = distinct !DISubprogram(name: "smsendian_handle_tx_message", scope: !1, file: !1, line: 17, type: !9, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DILocalVariable(name: "buffer", arg: 1, scope: !8, file: !1, line: 17, type: !11)
!13 = !DILocation(line: 17, column: 40, scope: !8)
!14 = !DILocation(line: 41, column: 1, scope: !8)
!15 = distinct !DISubprogram(name: "smsendian_handle_rx_message", scope: !1, file: !1, line: 44, type: !9, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DILocalVariable(name: "buffer", arg: 1, scope: !15, file: !1, line: 44, type: !11)
!17 = !DILocation(line: 44, column: 40, scope: !15)
!18 = !DILocation(line: 79, column: 1, scope: !15)
!19 = distinct !DISubprogram(name: "smsendian_handle_message_header", scope: !1, file: !1, line: 82, type: !9, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!20 = !DILocalVariable(name: "msg", arg: 1, scope: !19, file: !1, line: 82, type: !11)
!21 = !DILocation(line: 82, column: 44, scope: !19)
!22 = !DILocation(line: 91, column: 1, scope: !19)
