; ModuleID = '../bcout/drivers/edac/wq.llvm.bc'
source_filename = "drivers/edac/wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.workqueue_struct = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }

@wq = internal global %struct.workqueue_struct* null, align 8, !dbg !0
@.str = private unnamed_addr constant [12 x i8] c"edac-poller\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @edac_queue_work(%struct.delayed_work* %work, i64 %delay) #0 !dbg !63 {
entry:
  %work.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.delayed_work* %work, %struct.delayed_work** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %work.addr, metadata !124, metadata !DIExpression()), !dbg !125
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !126, metadata !DIExpression()), !dbg !127
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @wq, align 8, !dbg !128
  %1 = load %struct.delayed_work*, %struct.delayed_work** %work.addr, align 8, !dbg !129
  %2 = load i64, i64* %delay.addr, align 8, !dbg !130
  %call = call zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #3, !dbg !131
  ret i1 %call, !dbg !132
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %wq, %struct.delayed_work* %dwork, i64 %delay) #0 !dbg !133 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !136, metadata !DIExpression()), !dbg !137
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !138, metadata !DIExpression()), !dbg !139
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !142
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !143
  %2 = load i64, i64* %delay.addr, align 8, !dbg !144
  %call = call zeroext i1 @queue_delayed_work_on(i32 1, %struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #3, !dbg !145
  ret i1 %call, !dbg !146
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @edac_mod_work(%struct.delayed_work* %work, i64 %delay) #0 !dbg !147 {
entry:
  %work.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.delayed_work* %work, %struct.delayed_work** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %work.addr, metadata !148, metadata !DIExpression()), !dbg !149
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @wq, align 8, !dbg !152
  %1 = load %struct.delayed_work*, %struct.delayed_work** %work.addr, align 8, !dbg !153
  %2 = load i64, i64* %delay.addr, align 8, !dbg !154
  %call = call zeroext i1 @mod_delayed_work(%struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #3, !dbg !155
  ret i1 %call, !dbg !156
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mod_delayed_work(%struct.workqueue_struct* %wq, %struct.delayed_work* %dwork, i64 %delay) #0 !dbg !157 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !158, metadata !DIExpression()), !dbg !159
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !160, metadata !DIExpression()), !dbg !161
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !162, metadata !DIExpression()), !dbg !163
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !164
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !165
  %2 = load i64, i64* %delay.addr, align 8, !dbg !166
  %call = call zeroext i1 @mod_delayed_work_on(i32 1, %struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #3, !dbg !167
  ret i1 %call, !dbg !168
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @edac_stop_work(%struct.delayed_work* %work) #0 !dbg !169 {
entry:
  %work.addr = alloca %struct.delayed_work*, align 8
  %ret = alloca i8, align 1
  store %struct.delayed_work* %work, %struct.delayed_work** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %work.addr, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !174, metadata !DIExpression()), !dbg !175
  %0 = load %struct.delayed_work*, %struct.delayed_work** %work.addr, align 8, !dbg !176
  %call = call zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work* %0) #3, !dbg !177
  %frombool = zext i1 %call to i8, !dbg !178
  store i8 %frombool, i8* %ret, align 1, !dbg !178
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** @wq, align 8, !dbg !179
  call void @flush_workqueue(%struct.workqueue_struct* %1) #3, !dbg !180
  %2 = load i8, i8* %ret, align 1, !dbg !181
  %tobool = trunc i8 %2 to i1, !dbg !181
  ret i1 %tobool, !dbg !182
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work*) #2

; Function Attrs: noredzone
declare dso_local void @flush_workqueue(%struct.workqueue_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @edac_workqueue_setup() #0 !dbg !183 {
entry:
  %retval = alloca i32, align 4
  %call = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 655370, i32 1) #3, !dbg !186
  store %struct.workqueue_struct* %call, %struct.workqueue_struct** @wq, align 8, !dbg !187
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @wq, align 8, !dbg !188
  %tobool = icmp ne %struct.workqueue_struct* %0, null, !dbg !188
  br i1 %tobool, label %if.else, label %if.then, !dbg !190

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !191
  br label %return, !dbg !191

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !192
  br label %return, !dbg !192

return:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %retval, align 4, !dbg !193
  ret i32 %1, !dbg !193
}

; Function Attrs: noredzone
declare dso_local %struct.workqueue_struct* @alloc_workqueue(i8*, i32, i32, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @edac_workqueue_teardown() #0 !dbg !194 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @wq, align 8, !dbg !197
  call void @flush_workqueue(%struct.workqueue_struct* %0) #3, !dbg !198
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** @wq, align 8, !dbg !199
  call void @destroy_workqueue(%struct.workqueue_struct* %1) #3, !dbg !200
  store %struct.workqueue_struct* null, %struct.workqueue_struct** @wq, align 8, !dbg !201
  ret void, !dbg !202
}

; Function Attrs: noredzone
declare dso_local void @destroy_workqueue(%struct.workqueue_struct*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_delayed_work_on(i32, %struct.workqueue_struct*, %struct.delayed_work*, i64) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @mod_delayed_work_on(i32, %struct.workqueue_struct*, %struct.delayed_work*, i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "wq", scope: !2, file: !3, line: 4, type: !56, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !55, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/edac/wq.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !23}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 308, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!9 = !DIEnumerator(name: "WQ_UNBOUND", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "WQ_FREEZABLE", value: 4, isUnsigned: true)
!11 = !DIEnumerator(name: "WQ_MEM_RECLAIM", value: 8, isUnsigned: true)
!12 = !DIEnumerator(name: "WQ_HIGHPRI", value: 16, isUnsigned: true)
!13 = !DIEnumerator(name: "WQ_CPU_INTENSIVE", value: 32, isUnsigned: true)
!14 = !DIEnumerator(name: "WQ_SYSFS", value: 64, isUnsigned: true)
!15 = !DIEnumerator(name: "WQ_POWER_EFFICIENT", value: 128, isUnsigned: true)
!16 = !DIEnumerator(name: "__WQ_DRAINING", value: 65536, isUnsigned: true)
!17 = !DIEnumerator(name: "__WQ_ORDERED", value: 131072, isUnsigned: true)
!18 = !DIEnumerator(name: "__WQ_LEGACY", value: 262144, isUnsigned: true)
!19 = !DIEnumerator(name: "__WQ_ORDERED_EXPLICIT", value: 524288, isUnsigned: true)
!20 = !DIEnumerator(name: "WQ_MAX_ACTIVE", value: 512, isUnsigned: true)
!21 = !DIEnumerator(name: "WQ_MAX_UNBOUND_PER_CPU", value: 4, isUnsigned: true)
!22 = !DIEnumerator(name: "WQ_DFL_ACTIVE", value: 256, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 30, baseType: !24, size: 64, elements: !25)
!24 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!26 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!27 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!28 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!29 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!30 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!31 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!32 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!33 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!34 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!35 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!36 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!37 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!38 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!39 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!40 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!41 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!42 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!43 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!44 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!45 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!46 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!47 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!48 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!49 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!50 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!51 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!52 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!53 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!54 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!55 = !{!0}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !6, line: 18, flags: DIFlagFwdDecl)
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"Code Model", i32 2}
!62 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!63 = distinct !DISubprogram(name: "edac_queue_work", scope: !3, file: !3, line: 6, type: !64, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !69, !111}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !67, line: 30, baseType: !68)
!67 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!68 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !6, line: 115, size: 704, elements: !71)
!71 = !{!72, !99, !120, !121}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !70, file: !6, line: 116, baseType: !73, size: 256)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !6, line: 102, size: 256, elements: !74)
!74 = !{!75, !87, !93}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !73, file: !6, line: 103, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !77, line: 13, baseType: !78)
!77 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !67, line: 175, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 173, size: 64, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !79, file: !67, line: 174, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !83, line: 22, baseType: !84)
!83 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !85, line: 30, baseType: !86)
!85 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!86 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !73, file: !6, line: 104, baseType: !88, size: 128, offset: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !67, line: 178, size: 128, elements: !89)
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !67, line: 179, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !88, file: !67, line: 179, baseType: !91, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !73, file: !6, line: 105, baseType: !94, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !6, line: 21, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !70, file: !6, line: 117, baseType: !100, size: 320, offset: 256)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !101, line: 11, size: 320, elements: !102)
!101 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !110, !112, !117}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !100, file: !101, line: 16, baseType: !104, size: 128)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !67, line: 186, size: 128, elements: !105)
!105 = !{!106, !108}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !67, line: 187, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !104, file: !67, line: 187, baseType: !109, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !100, file: !101, line: 17, baseType: !111, size: 64, offset: 128)
!111 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !100, file: !101, line: 18, baseType: !113, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !101, line: 19, baseType: !118, size: 32, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !83, line: 21, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !85, line: 27, baseType: !7)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !70, file: !6, line: 120, baseType: !56, size: 64, offset: 576)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !70, file: !6, line: 121, baseType: !122, size: 32, offset: 640)
!122 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!123 = !{}
!124 = !DILocalVariable(name: "work", arg: 1, scope: !63, file: !3, line: 6, type: !69)
!125 = !DILocation(line: 6, column: 43, scope: !63)
!126 = !DILocalVariable(name: "delay", arg: 2, scope: !63, file: !3, line: 6, type: !111)
!127 = !DILocation(line: 6, column: 63, scope: !63)
!128 = !DILocation(line: 8, column: 28, scope: !63)
!129 = !DILocation(line: 8, column: 32, scope: !63)
!130 = !DILocation(line: 8, column: 38, scope: !63)
!131 = !DILocation(line: 8, column: 9, scope: !63)
!132 = !DILocation(line: 8, column: 2, scope: !63)
!133 = distinct !DISubprogram(name: "queue_delayed_work", scope: !6, file: !6, line: 518, type: !134, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!134 = !DISubroutineType(types: !135)
!135 = !{!66, !56, !69, !111}
!136 = !DILocalVariable(name: "wq", arg: 1, scope: !133, file: !6, line: 518, type: !56)
!137 = !DILocation(line: 518, column: 64, scope: !133)
!138 = !DILocalVariable(name: "dwork", arg: 2, scope: !133, file: !6, line: 519, type: !69)
!139 = !DILocation(line: 519, column: 32, scope: !133)
!140 = !DILocalVariable(name: "delay", arg: 3, scope: !133, file: !6, line: 520, type: !111)
!141 = !DILocation(line: 520, column: 25, scope: !133)
!142 = !DILocation(line: 522, column: 49, scope: !133)
!143 = !DILocation(line: 522, column: 53, scope: !133)
!144 = !DILocation(line: 522, column: 60, scope: !133)
!145 = !DILocation(line: 522, column: 9, scope: !133)
!146 = !DILocation(line: 522, column: 2, scope: !133)
!147 = distinct !DISubprogram(name: "edac_mod_work", scope: !3, file: !3, line: 12, type: !64, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!148 = !DILocalVariable(name: "work", arg: 1, scope: !147, file: !3, line: 12, type: !69)
!149 = !DILocation(line: 12, column: 41, scope: !147)
!150 = !DILocalVariable(name: "delay", arg: 2, scope: !147, file: !3, line: 12, type: !111)
!151 = !DILocation(line: 12, column: 61, scope: !147)
!152 = !DILocation(line: 14, column: 26, scope: !147)
!153 = !DILocation(line: 14, column: 30, scope: !147)
!154 = !DILocation(line: 14, column: 36, scope: !147)
!155 = !DILocation(line: 14, column: 9, scope: !147)
!156 = !DILocation(line: 14, column: 2, scope: !147)
!157 = distinct !DISubprogram(name: "mod_delayed_work", scope: !6, file: !6, line: 533, type: !134, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!158 = !DILocalVariable(name: "wq", arg: 1, scope: !157, file: !6, line: 533, type: !56)
!159 = !DILocation(line: 533, column: 62, scope: !157)
!160 = !DILocalVariable(name: "dwork", arg: 2, scope: !157, file: !6, line: 534, type: !69)
!161 = !DILocation(line: 534, column: 30, scope: !157)
!162 = !DILocalVariable(name: "delay", arg: 3, scope: !157, file: !6, line: 535, type: !111)
!163 = !DILocation(line: 535, column: 23, scope: !157)
!164 = !DILocation(line: 537, column: 47, scope: !157)
!165 = !DILocation(line: 537, column: 51, scope: !157)
!166 = !DILocation(line: 537, column: 58, scope: !157)
!167 = !DILocation(line: 537, column: 9, scope: !157)
!168 = !DILocation(line: 537, column: 2, scope: !157)
!169 = distinct !DISubprogram(name: "edac_stop_work", scope: !3, file: !3, line: 18, type: !170, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!170 = !DISubroutineType(types: !171)
!171 = !{!66, !69}
!172 = !DILocalVariable(name: "work", arg: 1, scope: !169, file: !3, line: 18, type: !69)
!173 = !DILocation(line: 18, column: 42, scope: !169)
!174 = !DILocalVariable(name: "ret", scope: !169, file: !3, line: 20, type: !66)
!175 = !DILocation(line: 20, column: 7, scope: !169)
!176 = !DILocation(line: 22, column: 33, scope: !169)
!177 = !DILocation(line: 22, column: 8, scope: !169)
!178 = !DILocation(line: 22, column: 6, scope: !169)
!179 = !DILocation(line: 23, column: 18, scope: !169)
!180 = !DILocation(line: 23, column: 2, scope: !169)
!181 = !DILocation(line: 25, column: 9, scope: !169)
!182 = !DILocation(line: 25, column: 2, scope: !169)
!183 = distinct !DISubprogram(name: "edac_workqueue_setup", scope: !3, file: !3, line: 29, type: !184, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!184 = !DISubroutineType(types: !185)
!185 = !{!122}
!186 = !DILocation(line: 31, column: 7, scope: !183)
!187 = !DILocation(line: 31, column: 5, scope: !183)
!188 = !DILocation(line: 32, column: 7, scope: !189)
!189 = distinct !DILexicalBlock(scope: !183, file: !3, line: 32, column: 6)
!190 = !DILocation(line: 32, column: 6, scope: !183)
!191 = !DILocation(line: 33, column: 3, scope: !189)
!192 = !DILocation(line: 35, column: 3, scope: !189)
!193 = !DILocation(line: 36, column: 1, scope: !183)
!194 = distinct !DISubprogram(name: "edac_workqueue_teardown", scope: !3, file: !3, line: 38, type: !195, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!195 = !DISubroutineType(types: !196)
!196 = !{null}
!197 = !DILocation(line: 40, column: 18, scope: !194)
!198 = !DILocation(line: 40, column: 2, scope: !194)
!199 = !DILocation(line: 41, column: 20, scope: !194)
!200 = !DILocation(line: 41, column: 2, scope: !194)
!201 = !DILocation(line: 42, column: 5, scope: !194)
!202 = !DILocation(line: 43, column: 1, scope: !194)
