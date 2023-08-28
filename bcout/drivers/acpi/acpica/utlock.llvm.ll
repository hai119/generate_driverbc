; ModuleID = '../bcout/drivers/acpi/acpica/utlock.llvm.bc'
source_filename = "drivers/acpi/acpica/utlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_rw_lock = type { i8*, i8*, i32 }

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_create_rw_lock(%struct.acpi_rw_lock* %lock) #0 !dbg !10 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca %struct.acpi_rw_lock*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_rw_lock* %lock, %struct.acpi_rw_lock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_rw_lock** %lock.addr, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %status, metadata !29, metadata !DIExpression()), !dbg !30
  %0 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !31
  %num_readers = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %0, i32 0, i32 2, !dbg !32
  store i32 0, i32* %num_readers, align 8, !dbg !33
  %1 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !34
  %reader_mutex = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %1, i32 0, i32 1, !dbg !34
  %call = call i32 @acpi_os_create_semaphore(i32 1, i32 1, i8** %reader_mutex) #3, !dbg !34
  store i32 %call, i32* %status, align 4, !dbg !35
  %2 = load i32, i32* %status, align 4, !dbg !36
  %tobool = icmp ne i32 %2, 0, !dbg !36
  br i1 %tobool, label %if.then, label %if.end, !dbg !38

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !39
  store i32 %3, i32* %retval, align 4, !dbg !41
  br label %return, !dbg !41

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !42
  %writer_mutex = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %4, i32 0, i32 0, !dbg !42
  %call1 = call i32 @acpi_os_create_semaphore(i32 1, i32 1, i8** %writer_mutex) #3, !dbg !42
  store i32 %call1, i32* %status, align 4, !dbg !43
  %5 = load i32, i32* %status, align 4, !dbg !44
  store i32 %5, i32* %retval, align 4, !dbg !45
  br label %return, !dbg !45

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !46
  ret i32 %6, !dbg !46
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_create_semaphore(i32, i32, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_delete_rw_lock(%struct.acpi_rw_lock* %lock) #0 !dbg !47 {
entry:
  %lock.addr = alloca %struct.acpi_rw_lock*, align 8
  store %struct.acpi_rw_lock* %lock, %struct.acpi_rw_lock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_rw_lock** %lock.addr, metadata !50, metadata !DIExpression()), !dbg !51
  %0 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !52
  %reader_mutex = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %0, i32 0, i32 1, !dbg !52
  %1 = load i8*, i8** %reader_mutex, align 8, !dbg !52
  %call = call i32 @acpi_os_delete_semaphore(i8* %1) #3, !dbg !52
  %2 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !53
  %writer_mutex = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %2, i32 0, i32 0, !dbg !53
  %3 = load i8*, i8** %writer_mutex, align 8, !dbg !53
  %call1 = call i32 @acpi_os_delete_semaphore(i8* %3) #3, !dbg !53
  %4 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !54
  %num_readers = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %4, i32 0, i32 2, !dbg !55
  store i32 0, i32* %num_readers, align 8, !dbg !56
  %5 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !57
  %reader_mutex2 = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %5, i32 0, i32 1, !dbg !58
  store i8* null, i8** %reader_mutex2, align 8, !dbg !59
  %6 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !60
  %writer_mutex3 = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %6, i32 0, i32 0, !dbg !61
  store i8* null, i8** %writer_mutex3, align 8, !dbg !62
  ret void, !dbg !63
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_delete_semaphore(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_acquire_read_lock(%struct.acpi_rw_lock* %lock) #0 !dbg !64 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca %struct.acpi_rw_lock*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_rw_lock* %lock, %struct.acpi_rw_lock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_rw_lock** %lock.addr, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %status, metadata !67, metadata !DIExpression()), !dbg !68
  %0 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !69
  %reader_mutex = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %0, i32 0, i32 1, !dbg !69
  %1 = load i8*, i8** %reader_mutex, align 8, !dbg !69
  %call = call i32 @acpi_os_wait_semaphore(i8* %1, i32 1, i16 zeroext -1) #3, !dbg !69
  store i32 %call, i32* %status, align 4, !dbg !70
  %2 = load i32, i32* %status, align 4, !dbg !71
  %tobool = icmp ne i32 %2, 0, !dbg !71
  br i1 %tobool, label %if.then, label %if.end, !dbg !73

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !74
  store i32 %3, i32* %retval, align 4, !dbg !76
  br label %return, !dbg !76

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !77
  %num_readers = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %4, i32 0, i32 2, !dbg !78
  %5 = load i32, i32* %num_readers, align 8, !dbg !79
  %inc = add i32 %5, 1, !dbg !79
  store i32 %inc, i32* %num_readers, align 8, !dbg !79
  %6 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !80
  %num_readers1 = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %6, i32 0, i32 2, !dbg !82
  %7 = load i32, i32* %num_readers1, align 8, !dbg !82
  %cmp = icmp eq i32 %7, 1, !dbg !83
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !84

if.then2:                                         ; preds = %if.end
  %8 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !85
  %writer_mutex = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %8, i32 0, i32 0, !dbg !85
  %9 = load i8*, i8** %writer_mutex, align 8, !dbg !85
  %call3 = call i32 @acpi_os_wait_semaphore(i8* %9, i32 1, i16 zeroext -1) #3, !dbg !85
  store i32 %call3, i32* %status, align 4, !dbg !87
  br label %if.end4, !dbg !88

if.end4:                                          ; preds = %if.then2, %if.end
  %10 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !89
  %reader_mutex5 = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %10, i32 0, i32 1, !dbg !89
  %11 = load i8*, i8** %reader_mutex5, align 8, !dbg !89
  %call6 = call i32 @acpi_os_signal_semaphore(i8* %11, i32 1) #3, !dbg !89
  %12 = load i32, i32* %status, align 4, !dbg !90
  store i32 %12, i32* %retval, align 4, !dbg !91
  br label %return, !dbg !91

return:                                           ; preds = %if.end4, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !92
  ret i32 %13, !dbg !92
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_wait_semaphore(i8*, i32, i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_signal_semaphore(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_release_read_lock(%struct.acpi_rw_lock* %lock) #0 !dbg !93 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca %struct.acpi_rw_lock*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_rw_lock* %lock, %struct.acpi_rw_lock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_rw_lock** %lock.addr, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %status, metadata !96, metadata !DIExpression()), !dbg !97
  %0 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !98
  %reader_mutex = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %0, i32 0, i32 1, !dbg !98
  %1 = load i8*, i8** %reader_mutex, align 8, !dbg !98
  %call = call i32 @acpi_os_wait_semaphore(i8* %1, i32 1, i16 zeroext -1) #3, !dbg !98
  store i32 %call, i32* %status, align 4, !dbg !99
  %2 = load i32, i32* %status, align 4, !dbg !100
  %tobool = icmp ne i32 %2, 0, !dbg !100
  br i1 %tobool, label %if.then, label %if.end, !dbg !102

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !103
  store i32 %3, i32* %retval, align 4, !dbg !105
  br label %return, !dbg !105

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !106
  %num_readers = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %4, i32 0, i32 2, !dbg !107
  %5 = load i32, i32* %num_readers, align 8, !dbg !108
  %dec = add i32 %5, -1, !dbg !108
  store i32 %dec, i32* %num_readers, align 8, !dbg !108
  %6 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !109
  %num_readers1 = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %6, i32 0, i32 2, !dbg !111
  %7 = load i32, i32* %num_readers1, align 8, !dbg !111
  %cmp = icmp eq i32 %7, 0, !dbg !112
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !113

if.then2:                                         ; preds = %if.end
  %8 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !114
  %writer_mutex = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %8, i32 0, i32 0, !dbg !114
  %9 = load i8*, i8** %writer_mutex, align 8, !dbg !114
  %call3 = call i32 @acpi_os_signal_semaphore(i8* %9, i32 1) #3, !dbg !114
  br label %if.end4, !dbg !116

if.end4:                                          ; preds = %if.then2, %if.end
  %10 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !117
  %reader_mutex5 = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %10, i32 0, i32 1, !dbg !117
  %11 = load i8*, i8** %reader_mutex5, align 8, !dbg !117
  %call6 = call i32 @acpi_os_signal_semaphore(i8* %11, i32 1) #3, !dbg !117
  %12 = load i32, i32* %status, align 4, !dbg !118
  store i32 %12, i32* %retval, align 4, !dbg !119
  br label %return, !dbg !119

return:                                           ; preds = %if.end4, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !120
  ret i32 %13, !dbg !120
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_acquire_write_lock(%struct.acpi_rw_lock* %lock) #0 !dbg !121 {
entry:
  %lock.addr = alloca %struct.acpi_rw_lock*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_rw_lock* %lock, %struct.acpi_rw_lock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_rw_lock** %lock.addr, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata i32* %status, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !126
  %writer_mutex = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %0, i32 0, i32 0, !dbg !126
  %1 = load i8*, i8** %writer_mutex, align 8, !dbg !126
  %call = call i32 @acpi_os_wait_semaphore(i8* %1, i32 1, i16 zeroext -1) #3, !dbg !126
  store i32 %call, i32* %status, align 4, !dbg !127
  %2 = load i32, i32* %status, align 4, !dbg !128
  ret i32 %2, !dbg !129
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_release_write_lock(%struct.acpi_rw_lock* %lock) #0 !dbg !130 {
entry:
  %lock.addr = alloca %struct.acpi_rw_lock*, align 8
  store %struct.acpi_rw_lock* %lock, %struct.acpi_rw_lock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_rw_lock** %lock.addr, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = load %struct.acpi_rw_lock*, %struct.acpi_rw_lock** %lock.addr, align 8, !dbg !133
  %writer_mutex = getelementptr inbounds %struct.acpi_rw_lock, %struct.acpi_rw_lock* %0, i32 0, i32 0, !dbg !133
  %1 = load i8*, i8** %writer_mutex, align 8, !dbg !133
  %call = call i32 @acpi_os_signal_semaphore(i8* %1, i32 1) #3, !dbg !133
  ret void, !dbg !134
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utlock.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!10 = distinct !DISubprogram(name: "acpi_ut_create_rw_lock", scope: !1, file: !1, line: 28, type: !11, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !20}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !14, line: 421, baseType: !15)
!14 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 21, baseType: !17)
!16 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !18, line: 27, baseType: !19)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_rw_lock", file: !22, line: 58, size: 192, elements: !23)
!22 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !25, !26}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "writer_mutex", scope: !21, file: !22, line: 59, baseType: !4, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "reader_mutex", scope: !21, file: !22, line: 60, baseType: !4, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "num_readers", scope: !21, file: !22, line: 61, baseType: !15, size: 32, offset: 128)
!27 = !DILocalVariable(name: "lock", arg: 1, scope: !10, file: !1, line: 28, type: !20)
!28 = !DILocation(line: 28, column: 57, scope: !10)
!29 = !DILocalVariable(name: "status", scope: !10, file: !1, line: 30, type: !13)
!30 = !DILocation(line: 30, column: 14, scope: !10)
!31 = !DILocation(line: 32, column: 2, scope: !10)
!32 = !DILocation(line: 32, column: 8, scope: !10)
!33 = !DILocation(line: 32, column: 20, scope: !10)
!34 = !DILocation(line: 33, column: 11, scope: !10)
!35 = !DILocation(line: 33, column: 9, scope: !10)
!36 = !DILocation(line: 34, column: 6, scope: !37)
!37 = distinct !DILexicalBlock(scope: !10, file: !1, line: 34, column: 6)
!38 = !DILocation(line: 34, column: 6, scope: !10)
!39 = !DILocation(line: 35, column: 11, scope: !40)
!40 = distinct !DILexicalBlock(scope: !37, file: !1, line: 34, column: 28)
!41 = !DILocation(line: 35, column: 3, scope: !40)
!42 = !DILocation(line: 38, column: 11, scope: !10)
!43 = !DILocation(line: 38, column: 9, scope: !10)
!44 = !DILocation(line: 39, column: 10, scope: !10)
!45 = !DILocation(line: 39, column: 2, scope: !10)
!46 = !DILocation(line: 40, column: 1, scope: !10)
!47 = distinct !DISubprogram(name: "acpi_ut_delete_rw_lock", scope: !1, file: !1, line: 42, type: !48, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !20}
!50 = !DILocalVariable(name: "lock", arg: 1, scope: !47, file: !1, line: 42, type: !20)
!51 = !DILocation(line: 42, column: 50, scope: !47)
!52 = !DILocation(line: 45, column: 2, scope: !47)
!53 = !DILocation(line: 46, column: 2, scope: !47)
!54 = !DILocation(line: 48, column: 2, scope: !47)
!55 = !DILocation(line: 48, column: 8, scope: !47)
!56 = !DILocation(line: 48, column: 20, scope: !47)
!57 = !DILocation(line: 49, column: 2, scope: !47)
!58 = !DILocation(line: 49, column: 8, scope: !47)
!59 = !DILocation(line: 49, column: 21, scope: !47)
!60 = !DILocation(line: 50, column: 2, scope: !47)
!61 = !DILocation(line: 50, column: 8, scope: !47)
!62 = !DILocation(line: 50, column: 21, scope: !47)
!63 = !DILocation(line: 51, column: 1, scope: !47)
!64 = distinct !DISubprogram(name: "acpi_ut_acquire_read_lock", scope: !1, file: !1, line: 71, type: !11, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!65 = !DILocalVariable(name: "lock", arg: 1, scope: !64, file: !1, line: 71, type: !20)
!66 = !DILocation(line: 71, column: 60, scope: !64)
!67 = !DILocalVariable(name: "status", scope: !64, file: !1, line: 73, type: !13)
!68 = !DILocation(line: 73, column: 14, scope: !64)
!69 = !DILocation(line: 75, column: 11, scope: !64)
!70 = !DILocation(line: 75, column: 9, scope: !64)
!71 = !DILocation(line: 76, column: 6, scope: !72)
!72 = distinct !DILexicalBlock(scope: !64, file: !1, line: 76, column: 6)
!73 = !DILocation(line: 76, column: 6, scope: !64)
!74 = !DILocation(line: 77, column: 11, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !1, line: 76, column: 28)
!76 = !DILocation(line: 77, column: 3, scope: !75)
!77 = !DILocation(line: 82, column: 2, scope: !64)
!78 = !DILocation(line: 82, column: 8, scope: !64)
!79 = !DILocation(line: 82, column: 19, scope: !64)
!80 = !DILocation(line: 83, column: 6, scope: !81)
!81 = distinct !DILexicalBlock(scope: !64, file: !1, line: 83, column: 6)
!82 = !DILocation(line: 83, column: 12, scope: !81)
!83 = !DILocation(line: 83, column: 24, scope: !81)
!84 = !DILocation(line: 83, column: 6, scope: !64)
!85 = !DILocation(line: 85, column: 7, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 83, column: 30)
!87 = !DILocation(line: 84, column: 10, scope: !86)
!88 = !DILocation(line: 87, column: 2, scope: !86)
!89 = !DILocation(line: 89, column: 2, scope: !64)
!90 = !DILocation(line: 90, column: 10, scope: !64)
!91 = !DILocation(line: 90, column: 2, scope: !64)
!92 = !DILocation(line: 91, column: 1, scope: !64)
!93 = distinct !DISubprogram(name: "acpi_ut_release_read_lock", scope: !1, file: !1, line: 93, type: !11, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!94 = !DILocalVariable(name: "lock", arg: 1, scope: !93, file: !1, line: 93, type: !20)
!95 = !DILocation(line: 93, column: 60, scope: !93)
!96 = !DILocalVariable(name: "status", scope: !93, file: !1, line: 95, type: !13)
!97 = !DILocation(line: 95, column: 14, scope: !93)
!98 = !DILocation(line: 97, column: 11, scope: !93)
!99 = !DILocation(line: 97, column: 9, scope: !93)
!100 = !DILocation(line: 98, column: 6, scope: !101)
!101 = distinct !DILexicalBlock(scope: !93, file: !1, line: 98, column: 6)
!102 = !DILocation(line: 98, column: 6, scope: !93)
!103 = !DILocation(line: 99, column: 11, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 98, column: 28)
!105 = !DILocation(line: 99, column: 3, scope: !104)
!106 = !DILocation(line: 104, column: 2, scope: !93)
!107 = !DILocation(line: 104, column: 8, scope: !93)
!108 = !DILocation(line: 104, column: 19, scope: !93)
!109 = !DILocation(line: 105, column: 6, scope: !110)
!110 = distinct !DILexicalBlock(scope: !93, file: !1, line: 105, column: 6)
!111 = !DILocation(line: 105, column: 12, scope: !110)
!112 = !DILocation(line: 105, column: 24, scope: !110)
!113 = !DILocation(line: 105, column: 6, scope: !93)
!114 = !DILocation(line: 106, column: 3, scope: !115)
!115 = distinct !DILexicalBlock(scope: !110, file: !1, line: 105, column: 30)
!116 = !DILocation(line: 107, column: 2, scope: !115)
!117 = !DILocation(line: 109, column: 2, scope: !93)
!118 = !DILocation(line: 110, column: 10, scope: !93)
!119 = !DILocation(line: 110, column: 2, scope: !93)
!120 = !DILocation(line: 111, column: 1, scope: !93)
!121 = distinct !DISubprogram(name: "acpi_ut_acquire_write_lock", scope: !1, file: !1, line: 129, type: !11, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!122 = !DILocalVariable(name: "lock", arg: 1, scope: !121, file: !1, line: 129, type: !20)
!123 = !DILocation(line: 129, column: 61, scope: !121)
!124 = !DILocalVariable(name: "status", scope: !121, file: !1, line: 131, type: !13)
!125 = !DILocation(line: 131, column: 14, scope: !121)
!126 = !DILocation(line: 133, column: 11, scope: !121)
!127 = !DILocation(line: 133, column: 9, scope: !121)
!128 = !DILocation(line: 134, column: 10, scope: !121)
!129 = !DILocation(line: 134, column: 2, scope: !121)
!130 = distinct !DISubprogram(name: "acpi_ut_release_write_lock", scope: !1, file: !1, line: 137, type: !48, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!131 = !DILocalVariable(name: "lock", arg: 1, scope: !130, file: !1, line: 137, type: !20)
!132 = !DILocation(line: 137, column: 54, scope: !130)
!133 = !DILocation(line: 140, column: 2, scope: !130)
!134 = !DILocation(line: 141, column: 1, scope: !130)
