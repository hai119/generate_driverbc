; ModuleID = '../bcout/drivers/base/init.llvm.bc'
source_filename = "drivers/base/init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @driver_init() #0 section ".init.text" !dbg !8 {
entry:
  %call = call i32 @devtmpfs_init() #3, !dbg !11
  %call1 = call i32 @devices_init() #3, !dbg !12
  %call2 = call i32 @buses_init() #3, !dbg !13
  %call3 = call i32 @classes_init() #3, !dbg !14
  %call4 = call i32 @firmware_init() #3, !dbg !15
  %call5 = call i32 @hypervisor_init() #3, !dbg !16
  call void @of_core_init() #3, !dbg !17
  %call6 = call i32 @platform_bus_init() #3, !dbg !18
  call void @cpu_dev_init() #3, !dbg !19
  call void @memory_dev_init() #3, !dbg !20
  call void @container_dev_init() #3, !dbg !21
  ret void, !dbg !22
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devtmpfs_init() #1 !dbg !23 {
entry:
  ret i32 0, !dbg !28
}

; Function Attrs: noredzone
declare dso_local i32 @devices_init() #2

; Function Attrs: noredzone
declare dso_local i32 @buses_init() #2

; Function Attrs: noredzone
declare dso_local i32 @classes_init() #2

; Function Attrs: noredzone
declare dso_local i32 @firmware_init() #2

; Function Attrs: noredzone
declare dso_local i32 @hypervisor_init() #2

; Function Attrs: noredzone
declare dso_local void @of_core_init() #2

; Function Attrs: noredzone
declare dso_local i32 @platform_bus_init() #2

; Function Attrs: noredzone
declare dso_local void @cpu_dev_init() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @memory_dev_init() #1 !dbg !29 {
entry:
  ret void, !dbg !31
}

; Function Attrs: noredzone
declare dso_local void @container_dev_init() #2

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/base/init.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!8 = distinct !DISubprogram(name: "driver_init", scope: !1, file: !1, line: 20, type: !9, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !DILocation(line: 23, column: 2, scope: !8)
!12 = !DILocation(line: 24, column: 2, scope: !8)
!13 = !DILocation(line: 25, column: 2, scope: !8)
!14 = !DILocation(line: 26, column: 2, scope: !8)
!15 = !DILocation(line: 27, column: 2, scope: !8)
!16 = !DILocation(line: 28, column: 2, scope: !8)
!17 = !DILocation(line: 33, column: 2, scope: !8)
!18 = !DILocation(line: 34, column: 2, scope: !8)
!19 = !DILocation(line: 35, column: 2, scope: !8)
!20 = !DILocation(line: 36, column: 2, scope: !8)
!21 = !DILocation(line: 37, column: 2, scope: !8)
!22 = !DILocation(line: 38, column: 1, scope: !8)
!23 = distinct !DISubprogram(name: "devtmpfs_init", scope: !24, file: !24, line: 176, type: !25, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!24 = !DIFile(filename: "drivers/base/base.h", directory: "/home/lizy2001/genbc/linux")
!25 = !DISubroutineType(types: !26)
!26 = !{!27}
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DILocation(line: 176, column: 41, scope: !23)
!29 = distinct !DISubprogram(name: "memory_dev_init", scope: !30, file: !30, line: 66, type: !9, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!30 = !DIFile(filename: "./include/linux/memory.h", directory: "/home/lizy2001/genbc/linux")
!31 = !DILocation(line: 68, column: 2, scope: !29)
