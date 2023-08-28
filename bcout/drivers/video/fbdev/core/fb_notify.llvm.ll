; ModuleID = '../bcout/drivers/video/fbdev/core/fb_notify.llvm.bc'
source_filename = "drivers/video/fbdev/core/fb_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }

@fb_notifier_list = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.raw_spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.blocking_notifier_head* @fb_notifier_list to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.blocking_notifier_head* @fb_notifier_list to i8*), i64 16) to %struct.list_head*) } }, %struct.notifier_block* null }, align 8, !dbg !0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fb_register_client(%struct.notifier_block* %nb) #0 !dbg !61 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !66
  %call = call i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* @fb_notifier_list, %struct.notifier_block* %0) #3, !dbg !67
  ret i32 %call, !dbg !68
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fb_unregister_client(%struct.notifier_block* %nb) #0 !dbg !69 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !70, metadata !DIExpression()), !dbg !71
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !72
  %call = call i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* @fb_notifier_list, %struct.notifier_block* %0) #3, !dbg !73
  ret i32 %call, !dbg !74
}

; Function Attrs: noredzone
declare dso_local i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fb_notifier_call_chain(i64 %val, i8* %v) #0 !dbg !75 {
entry:
  %val.addr = alloca i64, align 8
  %v.addr = alloca i8*, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !78, metadata !DIExpression()), !dbg !79
  store i8* %v, i8** %v.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr, metadata !80, metadata !DIExpression()), !dbg !81
  %0 = load i64, i64* %val.addr, align 8, !dbg !82
  %1 = load i8*, i8** %v.addr, align 8, !dbg !83
  %call = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* @fb_notifier_list, i64 %0, i8* %1) #3, !dbg !84
  ret i32 %call, !dbg !85
}

; Function Attrs: noredzone
declare dso_local i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head*, i64, i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fb_notifier_list", scope: !2, file: !3, line: 17, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/fbdev/core/fb_notify.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!0}
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !7, line: 65, size: 320, elements: !8)
!7 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!8 = !{!9, !42}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !6, file: !7, line: 66, baseType: !10, size: 256)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !11, line: 35, size: 256, elements: !12)
!11 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!12 = !{!13, !26, !27, !36}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !10, file: !11, line: 36, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !15, line: 13, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !17, line: 175, baseType: !18)
!17 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 173, size: 64, elements: !19)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !18, file: !17, line: 174, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !22, line: 22, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !24, line: 30, baseType: !25)
!24 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!25 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !10, file: !11, line: 42, baseType: !14, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !10, file: !11, line: 46, baseType: !28, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !29, line: 29, baseType: !30)
!29 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !29, line: 20, elements: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !30, file: !29, line: 21, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !34, line: 25, baseType: !35)
!34 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 25, elements: !4)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !10, file: !11, line: 47, baseType: !37, size: 128, offset: 128)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !17, line: 178, size: 128, elements: !38)
!38 = !{!39, !41}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !37, file: !17, line: 179, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !37, file: !17, line: 179, baseType: !40, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !6, file: !7, line: 67, baseType: !43, size: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !7, line: 54, size: 192, elements: !45)
!45 = !{!46, !54, !55}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !44, file: !7, line: 55, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !7, line: 51, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !43, !52, !53}
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !7, line: 56, baseType: !43, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !44, file: !7, line: 57, baseType: !51, size: 32, offset: 128)
!56 = !{i32 7, !"Dwarf Version", i32 4}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"Code Model", i32 2}
!60 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!61 = distinct !DISubprogram(name: "fb_register_client", scope: !3, file: !3, line: 23, type: !62, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{!51, !43}
!64 = !DILocalVariable(name: "nb", arg: 1, scope: !61, file: !3, line: 23, type: !43)
!65 = !DILocation(line: 23, column: 47, scope: !61)
!66 = !DILocation(line: 25, column: 61, scope: !61)
!67 = !DILocation(line: 25, column: 9, scope: !61)
!68 = !DILocation(line: 25, column: 2, scope: !61)
!69 = distinct !DISubprogram(name: "fb_unregister_client", scope: !3, file: !3, line: 33, type: !62, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!70 = !DILocalVariable(name: "nb", arg: 1, scope: !69, file: !3, line: 33, type: !43)
!71 = !DILocation(line: 33, column: 49, scope: !69)
!72 = !DILocation(line: 35, column: 63, scope: !69)
!73 = !DILocation(line: 35, column: 9, scope: !69)
!74 = !DILocation(line: 35, column: 2, scope: !69)
!75 = distinct !DISubprogram(name: "fb_notifier_call_chain", scope: !3, file: !3, line: 43, type: !76, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!76 = !DISubroutineType(types: !77)
!77 = !{!51, !52, !53}
!78 = !DILocalVariable(name: "val", arg: 1, scope: !75, file: !3, line: 43, type: !52)
!79 = !DILocation(line: 43, column: 42, scope: !75)
!80 = !DILocalVariable(name: "v", arg: 2, scope: !75, file: !3, line: 43, type: !53)
!81 = !DILocation(line: 43, column: 53, scope: !75)
!82 = !DILocation(line: 45, column: 57, scope: !75)
!83 = !DILocation(line: 45, column: 62, scope: !75)
!84 = !DILocation(line: 45, column: 9, scope: !75)
!85 = !DILocation(line: 45, column: 2, scope: !75)
