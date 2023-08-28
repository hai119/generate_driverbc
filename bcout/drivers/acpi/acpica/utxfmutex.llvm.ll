; ModuleID = '../bcout/drivers/acpi/acpica/utxfmutex.llvm.bc'
source_filename = "drivers/acpi/acpica/utxfmutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_acquire_mutex(i8* %handle, i8* %pathname, i16 zeroext %timeout) #0 !dbg !19 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %pathname.addr = alloca i8*, align 8
  %timeout.addr = alloca i16, align 2
  %status = alloca i32, align 4
  %mutex_obj = alloca %union.acpi_operand_object*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !28, metadata !DIExpression()), !dbg !29
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !30, metadata !DIExpression()), !dbg !31
  store i16 %timeout, i16* %timeout.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %timeout.addr, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %status, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %mutex_obj, metadata !36, metadata !DIExpression()), !dbg !798
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !799
  %1 = load i8*, i8** %pathname.addr, align 8, !dbg !800
  %call = call i32 @acpi_ut_get_mutex_object(i8* %0, i8* %1, %union.acpi_operand_object** %mutex_obj) #3, !dbg !801
  store i32 %call, i32* %status, align 4, !dbg !802
  %2 = load i32, i32* %status, align 4, !dbg !803
  %tobool = icmp ne i32 %2, 0, !dbg !803
  br i1 %tobool, label %if.then, label %if.end, !dbg !805

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !806
  store i32 %3, i32* %retval, align 4, !dbg !808
  br label %return, !dbg !808

if.end:                                           ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex_obj, align 8, !dbg !809
  %mutex = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_mutex*, !dbg !809
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 7, !dbg !809
  %5 = load i8*, i8** %os_mutex, align 8, !dbg !809
  %6 = load i16, i16* %timeout.addr, align 2, !dbg !809
  %call1 = call i32 @acpi_os_wait_semaphore(i8* %5, i32 1, i16 zeroext %6) #3, !dbg !809
  store i32 %call1, i32* %status, align 4, !dbg !810
  %7 = load i32, i32* %status, align 4, !dbg !811
  store i32 %7, i32* %retval, align 4, !dbg !812
  br label %return, !dbg !812

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !813
  ret i32 %8, !dbg !813
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_get_mutex_object(i8* %handle, i8* %pathname, %union.acpi_operand_object** %ret_obj) #0 !dbg !814 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %pathname.addr = alloca i8*, align 8
  %ret_obj.addr = alloca %union.acpi_operand_object**, align 8
  %mutex_node = alloca %struct.acpi_namespace_node*, align 8
  %mutex_obj = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !817, metadata !DIExpression()), !dbg !818
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !819, metadata !DIExpression()), !dbg !820
  store %union.acpi_operand_object** %ret_obj, %union.acpi_operand_object*** %ret_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %ret_obj.addr, metadata !821, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %mutex_node, metadata !823, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %mutex_obj, metadata !825, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.declare(metadata i32* %status, metadata !827, metadata !DIExpression()), !dbg !828
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %ret_obj.addr, align 8, !dbg !829
  %tobool = icmp ne %union.acpi_operand_object** %0, null, !dbg !829
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !831

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !832
  %tobool1 = icmp ne i8* %1, null, !dbg !832
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !833

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i8*, i8** %pathname.addr, align 8, !dbg !834
  %tobool2 = icmp ne i8* %2, null, !dbg !834
  br i1 %tobool2, label %if.end, label %if.then, !dbg !835

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 4097, i32* %retval, align 4, !dbg !836
  br label %return, !dbg !836

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load i8*, i8** %handle.addr, align 8, !dbg !838
  %4 = bitcast i8* %3 to %struct.acpi_namespace_node*, !dbg !838
  store %struct.acpi_namespace_node* %4, %struct.acpi_namespace_node** %mutex_node, align 8, !dbg !839
  %5 = load i8*, i8** %pathname.addr, align 8, !dbg !840
  %cmp = icmp ne i8* %5, null, !dbg !842
  br i1 %cmp, label %if.then3, label %if.end7, !dbg !843

if.then3:                                         ; preds = %if.end
  %6 = load i8*, i8** %handle.addr, align 8, !dbg !844
  %7 = load i8*, i8** %pathname.addr, align 8, !dbg !846
  %8 = bitcast %struct.acpi_namespace_node** %mutex_node to i8*, !dbg !847
  %9 = bitcast i8* %8 to i8**, !dbg !847
  %call = call i32 @acpi_get_handle(i8* %6, i8* %7, i8** %9) #3, !dbg !848
  store i32 %call, i32* %status, align 4, !dbg !849
  %10 = load i32, i32* %status, align 4, !dbg !850
  %tobool4 = icmp ne i32 %10, 0, !dbg !850
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !852

if.then5:                                         ; preds = %if.then3
  %11 = load i32, i32* %status, align 4, !dbg !853
  store i32 %11, i32* %retval, align 4, !dbg !855
  br label %return, !dbg !855

if.end6:                                          ; preds = %if.then3
  br label %if.end7, !dbg !856

if.end7:                                          ; preds = %if.end6, %if.end
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %mutex_node, align 8, !dbg !857
  %tobool8 = icmp ne %struct.acpi_namespace_node* %12, null, !dbg !857
  br i1 %tobool8, label %lor.lhs.false9, label %if.then12, !dbg !859

lor.lhs.false9:                                   ; preds = %if.end7
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %mutex_node, align 8, !dbg !860
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %13, i32 0, i32 2, !dbg !861
  %14 = load i8, i8* %type, align 1, !dbg !861
  %conv = zext i8 %14 to i32, !dbg !860
  %cmp10 = icmp ne i32 %conv, 9, !dbg !862
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !863

if.then12:                                        ; preds = %lor.lhs.false9, %if.end7
  store i32 8, i32* %retval, align 4, !dbg !864
  br label %return, !dbg !864

if.end13:                                         ; preds = %lor.lhs.false9
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %mutex_node, align 8, !dbg !866
  %call14 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %15) #3, !dbg !867
  store %union.acpi_operand_object* %call14, %union.acpi_operand_object** %mutex_obj, align 8, !dbg !868
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex_obj, align 8, !dbg !869
  %tobool15 = icmp ne %union.acpi_operand_object* %16, null, !dbg !869
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !871

if.then16:                                        ; preds = %if.end13
  store i32 9, i32* %retval, align 4, !dbg !872
  br label %return, !dbg !872

if.end17:                                         ; preds = %if.end13
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex_obj, align 8, !dbg !874
  %18 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %ret_obj.addr, align 8, !dbg !875
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %18, align 8, !dbg !876
  store i32 0, i32* %retval, align 4, !dbg !877
  br label %return, !dbg !877

return:                                           ; preds = %if.end17, %if.then16, %if.then12, %if.then5, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !878
  ret i32 %19, !dbg !878
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_wait_semaphore(i8*, i32, i16 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_release_mutex(i8* %handle, i8* %pathname) #0 !dbg !879 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %pathname.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %mutex_obj = alloca %union.acpi_operand_object*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !882, metadata !DIExpression()), !dbg !883
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !884, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.declare(metadata i32* %status, metadata !886, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %mutex_obj, metadata !888, metadata !DIExpression()), !dbg !889
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !890
  %1 = load i8*, i8** %pathname.addr, align 8, !dbg !891
  %call = call i32 @acpi_ut_get_mutex_object(i8* %0, i8* %1, %union.acpi_operand_object** %mutex_obj) #3, !dbg !892
  store i32 %call, i32* %status, align 4, !dbg !893
  %2 = load i32, i32* %status, align 4, !dbg !894
  %tobool = icmp ne i32 %2, 0, !dbg !894
  br i1 %tobool, label %if.then, label %if.end, !dbg !896

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !897
  store i32 %3, i32* %retval, align 4, !dbg !899
  br label %return, !dbg !899

if.end:                                           ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex_obj, align 8, !dbg !900
  %mutex = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_mutex*, !dbg !900
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 7, !dbg !900
  %5 = load i8*, i8** %os_mutex, align 8, !dbg !900
  %call1 = call i32 @acpi_os_signal_semaphore(i8* %5, i32 1) #3, !dbg !900
  store i32 0, i32* %retval, align 4, !dbg !901
  br label %return, !dbg !901

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !902
  ret i32 %6, !dbg !902
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_signal_semaphore(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_handle(i8*, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utxfmutex.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !11, !12}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !5, line: 421, baseType: !6)
!5 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !5, line: 424, baseType: !11)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"Code Model", i32 2}
!18 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!19 = distinct !DISubprogram(name: "acpi_acquire_mutex", scope: !1, file: !1, line: 100, type: !20, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{!4, !13, !22, !25}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !5, line: 423, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !27)
!27 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!28 = !DILocalVariable(name: "handle", arg: 1, scope: !19, file: !1, line: 100, type: !13)
!29 = !DILocation(line: 100, column: 32, scope: !19)
!30 = !DILocalVariable(name: "pathname", arg: 2, scope: !19, file: !1, line: 100, type: !22)
!31 = !DILocation(line: 100, column: 52, scope: !19)
!32 = !DILocalVariable(name: "timeout", arg: 3, scope: !19, file: !1, line: 100, type: !25)
!33 = !DILocation(line: 100, column: 66, scope: !19)
!34 = !DILocalVariable(name: "status", scope: !19, file: !1, line: 102, type: !4)
!35 = !DILocation(line: 102, column: 14, scope: !19)
!36 = !DILocalVariable(name: "mutex_obj", scope: !19, file: !1, line: 103, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !39, line: 367, size: 576, elements: !40)
!39 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!40 = !{!41, !52, !68, !78, !114, !128, !137, !449, !466, !481, !494, !572, !584, !598, !608, !626, !648, !667, !686, !705, !718, !744, !761, !774, !788, !797}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !38, file: !39, line: 368, baseType: !42, size: 128)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !39, line: 73, size: 128, elements: !43)
!43 = !{!44, !45, !49, !50, !51}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !42, file: !39, line: 74, baseType: !37, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !42, file: !39, line: 74, baseType: !46, size: 8, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !48)
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !39, line: 74, baseType: !46, size: 8, offset: 72)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !42, file: !39, line: 74, baseType: !25, size: 16, offset: 80)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !42, file: !39, line: 74, baseType: !46, size: 8, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !38, file: !39, line: 369, baseType: !53, size: 192)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !39, line: 76, size: 192, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !64}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !53, file: !39, line: 77, baseType: !37, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !53, file: !39, line: 77, baseType: !46, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !39, line: 77, baseType: !46, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !53, file: !39, line: 77, baseType: !25, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !39, line: 77, baseType: !46, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !53, file: !39, line: 77, baseType: !61, size: 24, offset: 104)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 24, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 3)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !53, file: !39, line: 78, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !67)
!67 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !38, file: !39, line: 370, baseType: !69, size: 256)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !39, line: 93, size: 256, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !77}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !69, file: !39, line: 94, baseType: !37, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !69, file: !39, line: 94, baseType: !46, size: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !39, line: 94, baseType: !46, size: 8, offset: 72)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !69, file: !39, line: 94, baseType: !25, size: 16, offset: 80)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !39, line: 94, baseType: !46, size: 8, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !69, file: !39, line: 94, baseType: !23, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !69, file: !39, line: 94, baseType: !6, size: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !38, file: !39, line: 371, baseType: !79, size: 384)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !39, line: 97, size: 384, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !88, !89, !90, !91}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !79, file: !39, line: 98, baseType: !37, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !39, line: 98, baseType: !46, size: 8, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !39, line: 98, baseType: !46, size: 8, offset: 72)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !79, file: !39, line: 98, baseType: !25, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !39, line: 98, baseType: !46, size: 8, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !79, file: !39, line: 98, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !79, file: !39, line: 98, baseType: !6, size: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !79, file: !39, line: 99, baseType: !6, size: 32, offset: 224)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !79, file: !39, line: 100, baseType: !87, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !79, file: !39, line: 101, baseType: !92, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !94, line: 133, size: 384, elements: !95)
!94 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99, !100, !109, !110, !111, !112}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !93, file: !94, line: 134, baseType: !37, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !94, line: 135, baseType: !46, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !94, line: 136, baseType: !46, size: 8, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !94, line: 137, baseType: !25, size: 16, offset: 80)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !93, file: !94, line: 138, baseType: !101, size: 32, offset: 96)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !102, line: 327, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !105}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !101, file: !102, line: 328, baseType: !6, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !101, file: !102, line: 329, baseType: !106, size: 32)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 32, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 4)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !93, file: !94, line: 139, baseType: !92, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !93, file: !94, line: 140, baseType: !92, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !93, file: !94, line: 141, baseType: !92, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !93, file: !94, line: 142, baseType: !113, size: 16, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !5, line: 445, baseType: !25)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !38, file: !39, line: 372, baseType: !115, size: 384)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !39, line: 104, size: 384, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !125, !126, !127}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !115, file: !39, line: 105, baseType: !37, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !115, file: !39, line: 105, baseType: !46, size: 8, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !39, line: 105, baseType: !46, size: 8, offset: 72)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !115, file: !39, line: 105, baseType: !25, size: 16, offset: 80)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !39, line: 105, baseType: !46, size: 8, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !115, file: !39, line: 105, baseType: !92, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !115, file: !39, line: 106, baseType: !124, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !115, file: !39, line: 107, baseType: !87, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !115, file: !39, line: 108, baseType: !6, size: 32, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !115, file: !39, line: 109, baseType: !6, size: 32, offset: 352)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !38, file: !39, line: 373, baseType: !129, size: 192)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !39, line: 118, size: 192, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !129, file: !39, line: 119, baseType: !37, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !129, file: !39, line: 119, baseType: !46, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !39, line: 119, baseType: !46, size: 8, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !129, file: !39, line: 119, baseType: !25, size: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !39, line: 119, baseType: !46, size: 8, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !129, file: !39, line: 119, baseType: !11, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !38, file: !39, line: 374, baseType: !138, size: 448)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !39, line: 143, size: 448, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !446, !447, !448}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !138, file: !39, line: 144, baseType: !37, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !138, file: !39, line: 144, baseType: !46, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !39, line: 144, baseType: !46, size: 8, offset: 72)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !138, file: !39, line: 144, baseType: !25, size: 16, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !39, line: 144, baseType: !46, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !138, file: !39, line: 144, baseType: !46, size: 8, offset: 104)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !138, file: !39, line: 145, baseType: !46, size: 8, offset: 112)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !138, file: !39, line: 146, baseType: !46, size: 8, offset: 120)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !138, file: !39, line: 147, baseType: !37, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !138, file: !39, line: 148, baseType: !37, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !138, file: !39, line: 149, baseType: !87, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !138, file: !39, line: 153, baseType: !152, size: 64, offset: 320)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !39, line: 150, size: 64, elements: !153)
!153 = !{!154, !445}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !152, file: !39, line: 151, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !94, line: 248, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!4, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !161, line: 37, size: 9024, elements: !162)
!161 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !391, !392, !393, !394, !395, !399, !401, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !428, !429, !430, !431, !432, !433, !434, !435, !437, !443}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !160, file: !161, line: 38, baseType: !159, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !160, file: !161, line: 39, baseType: !46, size: 8, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !160, file: !161, line: 40, baseType: !46, size: 8, offset: 72)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !160, file: !161, line: 41, baseType: !25, size: 16, offset: 80)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !160, file: !161, line: 42, baseType: !46, size: 8, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !160, file: !161, line: 43, baseType: !46, size: 8, offset: 104)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !160, file: !161, line: 44, baseType: !46, size: 8, offset: 112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !160, file: !161, line: 45, baseType: !113, size: 16, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !160, file: !161, line: 46, baseType: !46, size: 8, offset: 144)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !160, file: !161, line: 47, baseType: !46, size: 8, offset: 152)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !160, file: !161, line: 48, baseType: !46, size: 8, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !160, file: !161, line: 49, baseType: !46, size: 8, offset: 168)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !160, file: !161, line: 50, baseType: !46, size: 8, offset: 176)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !160, file: !161, line: 51, baseType: !46, size: 8, offset: 184)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !160, file: !161, line: 52, baseType: !46, size: 8, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !160, file: !161, line: 53, baseType: !46, size: 8, offset: 200)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !160, file: !161, line: 54, baseType: !87, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !160, file: !161, line: 55, baseType: !6, size: 32, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !160, file: !161, line: 56, baseType: !6, size: 32, offset: 352)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !160, file: !161, line: 57, baseType: !6, size: 32, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !160, file: !161, line: 58, baseType: !6, size: 32, offset: 416)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !160, file: !161, line: 60, baseType: !185, size: 640, offset: 448)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !94, line: 893, size: 640, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !273, !274, !389, !390}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !185, file: !94, line: 894, baseType: !87, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !185, file: !94, line: 895, baseType: !87, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !185, file: !94, line: 896, baseType: !87, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !185, file: !94, line: 897, baseType: !87, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !185, file: !94, line: 898, baseType: !87, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !185, file: !94, line: 899, baseType: !193, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !94, line: 875, size: 1600, elements: !195)
!195 = !{!196, !216, !232}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !194, file: !94, line: 876, baseType: !197, size: 448)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !94, line: 828, size: 448, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !215}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !197, file: !94, line: 829, baseType: !193, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !197, file: !94, line: 829, baseType: !46, size: 8, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !94, line: 829, baseType: !46, size: 8, offset: 72)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !197, file: !94, line: 829, baseType: !25, size: 16, offset: 80)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !197, file: !94, line: 829, baseType: !87, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !94, line: 829, baseType: !193, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !197, file: !94, line: 829, baseType: !92, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !197, file: !94, line: 829, baseType: !207, size: 64, offset: 320)
!207 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !94, line: 716, size: 64, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !207, file: !94, line: 717, baseType: !65, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !207, file: !94, line: 718, baseType: !6, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !207, file: !94, line: 719, baseType: !23, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !207, file: !94, line: 720, baseType: !87, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !94, line: 721, baseType: !23, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !207, file: !94, line: 722, baseType: !193, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !197, file: !94, line: 829, baseType: !46, size: 8, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !194, file: !94, line: 877, baseType: !217, size: 640)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !94, line: 835, size: 640, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !217, file: !94, line: 836, baseType: !193, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !217, file: !94, line: 836, baseType: !46, size: 8, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !217, file: !94, line: 836, baseType: !46, size: 8, offset: 72)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !217, file: !94, line: 836, baseType: !25, size: 16, offset: 80)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !217, file: !94, line: 836, baseType: !87, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !94, line: 836, baseType: !193, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !217, file: !94, line: 836, baseType: !92, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !217, file: !94, line: 836, baseType: !207, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !217, file: !94, line: 836, baseType: !46, size: 8, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !217, file: !94, line: 836, baseType: !23, size: 64, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !217, file: !94, line: 837, baseType: !87, size: 64, offset: 512)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !217, file: !94, line: 838, baseType: !6, size: 32, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !94, line: 839, baseType: !6, size: 32, offset: 608)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !194, file: !94, line: 878, baseType: !233, size: 1600)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !94, line: 846, size: 1600, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !233, file: !94, line: 847, baseType: !193, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !233, file: !94, line: 847, baseType: !46, size: 8, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !233, file: !94, line: 847, baseType: !46, size: 8, offset: 72)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !233, file: !94, line: 847, baseType: !25, size: 16, offset: 80)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !233, file: !94, line: 847, baseType: !87, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !233, file: !94, line: 847, baseType: !193, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !233, file: !94, line: 847, baseType: !92, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !233, file: !94, line: 847, baseType: !207, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !233, file: !94, line: 847, baseType: !46, size: 8, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !233, file: !94, line: 847, baseType: !193, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !233, file: !94, line: 848, baseType: !193, size: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !233, file: !94, line: 849, baseType: !23, size: 64, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !233, file: !94, line: 850, baseType: !46, size: 8, offset: 640)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !233, file: !94, line: 851, baseType: !23, size: 64, offset: 704)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !233, file: !94, line: 852, baseType: !23, size: 64, offset: 768)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !233, file: !94, line: 853, baseType: !23, size: 64, offset: 832)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !233, file: !94, line: 854, baseType: !106, size: 32, offset: 896)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !233, file: !94, line: 855, baseType: !6, size: 32, offset: 928)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !233, file: !94, line: 856, baseType: !6, size: 32, offset: 960)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !233, file: !94, line: 857, baseType: !6, size: 32, offset: 992)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !233, file: !94, line: 858, baseType: !6, size: 32, offset: 1024)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !233, file: !94, line: 859, baseType: !6, size: 32, offset: 1056)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !233, file: !94, line: 860, baseType: !6, size: 32, offset: 1088)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !233, file: !94, line: 861, baseType: !6, size: 32, offset: 1120)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !233, file: !94, line: 862, baseType: !6, size: 32, offset: 1152)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !233, file: !94, line: 863, baseType: !6, size: 32, offset: 1184)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !233, file: !94, line: 864, baseType: !6, size: 32, offset: 1216)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !233, file: !94, line: 865, baseType: !6, size: 32, offset: 1248)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !233, file: !94, line: 866, baseType: !6, size: 32, offset: 1280)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !233, file: !94, line: 867, baseType: !6, size: 32, offset: 1312)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !233, file: !94, line: 868, baseType: !25, size: 16, offset: 1344)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !233, file: !94, line: 869, baseType: !46, size: 8, offset: 1360)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !233, file: !94, line: 870, baseType: !46, size: 8, offset: 1368)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !233, file: !94, line: 871, baseType: !46, size: 8, offset: 1376)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !233, file: !94, line: 872, baseType: !270, size: 160, offset: 1384)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 160, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 20)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !185, file: !94, line: 900, baseType: !92, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !185, file: !94, line: 901, baseType: !275, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !94, line: 663, size: 640, elements: !277)
!277 = !{!278, !286, !299, !308, !317, !330, !344, !356, !368}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !276, file: !94, line: 664, baseType: !279, size: 128)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !94, line: 567, size: 128, elements: !280)
!280 = !{!281, !282, !283, !284, !285}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !94, line: 568, baseType: !11, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !94, line: 568, baseType: !46, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !94, line: 568, baseType: !46, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !94, line: 568, baseType: !25, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !94, line: 568, baseType: !25, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !276, file: !94, line: 665, baseType: !287, size: 384)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !94, line: 593, size: 384, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !94, line: 594, baseType: !11, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !94, line: 594, baseType: !46, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !94, line: 594, baseType: !46, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !94, line: 594, baseType: !25, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !94, line: 594, baseType: !25, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !287, file: !94, line: 594, baseType: !25, size: 16, offset: 112)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !287, file: !94, line: 595, baseType: !193, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !287, file: !94, line: 596, baseType: !87, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !287, file: !94, line: 597, baseType: !87, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !287, file: !94, line: 598, baseType: !65, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !276, file: !94, line: 666, baseType: !300, size: 192)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !94, line: 573, size: 192, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !94, line: 574, baseType: !11, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !94, line: 574, baseType: !46, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !94, line: 574, baseType: !46, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !94, line: 574, baseType: !25, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !94, line: 574, baseType: !25, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !300, file: !94, line: 574, baseType: !37, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !276, file: !94, line: 667, baseType: !309, size: 192)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !94, line: 604, size: 192, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !94, line: 605, baseType: !11, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !94, line: 605, baseType: !46, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !94, line: 605, baseType: !46, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !94, line: 605, baseType: !25, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !94, line: 605, baseType: !25, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !309, file: !94, line: 605, baseType: !92, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !276, file: !94, line: 668, baseType: !318, size: 448)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !94, line: 608, size: 448, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !94, line: 609, baseType: !11, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !94, line: 609, baseType: !46, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !94, line: 609, baseType: !46, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !94, line: 609, baseType: !25, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !318, file: !94, line: 609, baseType: !25, size: 16, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !318, file: !94, line: 609, baseType: !6, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !318, file: !94, line: 610, baseType: !193, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !318, file: !94, line: 611, baseType: !87, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !318, file: !94, line: 612, baseType: !87, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !318, file: !94, line: 613, baseType: !6, size: 32, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !276, file: !94, line: 669, baseType: !331, size: 512)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !94, line: 580, size: 512, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !94, line: 581, baseType: !11, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !331, file: !94, line: 581, baseType: !46, size: 8, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !94, line: 581, baseType: !46, size: 8, offset: 72)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !331, file: !94, line: 581, baseType: !25, size: 16, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !331, file: !94, line: 581, baseType: !25, size: 16, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !331, file: !94, line: 581, baseType: !6, size: 32, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !331, file: !94, line: 582, baseType: !37, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !331, file: !94, line: 583, baseType: !37, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !331, file: !94, line: 584, baseType: !159, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !331, file: !94, line: 585, baseType: !11, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !331, file: !94, line: 586, baseType: !6, size: 32, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !276, file: !94, line: 670, baseType: !345, size: 320)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !94, line: 620, size: 320, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !94, line: 621, baseType: !11, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !345, file: !94, line: 621, baseType: !46, size: 8, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !94, line: 621, baseType: !46, size: 8, offset: 72)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !345, file: !94, line: 621, baseType: !25, size: 16, offset: 80)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !345, file: !94, line: 621, baseType: !25, size: 16, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !345, file: !94, line: 621, baseType: !46, size: 8, offset: 112)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !345, file: !94, line: 622, baseType: !159, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !345, file: !94, line: 623, baseType: !37, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !345, file: !94, line: 624, baseType: !65, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !276, file: !94, line: 671, baseType: !357, size: 640)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !94, line: 631, size: 640, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !94, line: 632, baseType: !11, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !357, file: !94, line: 632, baseType: !46, size: 8, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !94, line: 632, baseType: !46, size: 8, offset: 72)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !357, file: !94, line: 632, baseType: !25, size: 16, offset: 80)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !357, file: !94, line: 632, baseType: !25, size: 16, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !357, file: !94, line: 633, baseType: !365, size: 512, offset: 128)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 512, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 8)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !276, file: !94, line: 672, baseType: !369, size: 320)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !94, line: 654, size: 320, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !94, line: 655, baseType: !11, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !369, file: !94, line: 655, baseType: !46, size: 8, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !94, line: 655, baseType: !46, size: 8, offset: 72)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !369, file: !94, line: 655, baseType: !25, size: 16, offset: 80)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !369, file: !94, line: 655, baseType: !25, size: 16, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !369, file: !94, line: 655, baseType: !46, size: 8, offset: 112)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !369, file: !94, line: 656, baseType: !92, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !369, file: !94, line: 657, baseType: !37, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !369, file: !94, line: 658, baseType: !380, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !94, line: 645, size: 128, elements: !382)
!382 = !{!383, !388}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !381, file: !94, line: 646, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !5, line: 1052, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !13, !6, !11}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !381, file: !94, line: 647, baseType: !11, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !185, file: !94, line: 902, baseType: !193, size: 64, offset: 512)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !185, file: !94, line: 903, baseType: !6, size: 32, offset: 576)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !160, file: !161, line: 61, baseType: !6, size: 32, offset: 1088)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !160, file: !161, line: 62, baseType: !6, size: 32, offset: 1120)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !160, file: !161, line: 63, baseType: !25, size: 16, offset: 1152)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !160, file: !161, line: 64, baseType: !46, size: 8, offset: 1168)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !160, file: !161, line: 66, baseType: !396, size: 2688, offset: 1216)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 2688, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 7)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !160, file: !161, line: 67, baseType: !400, size: 3072, offset: 3904)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 3072, elements: !366)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !160, file: !161, line: 68, baseType: !402, size: 576, offset: 6976)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 576, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 9)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !160, file: !161, line: 69, baseType: !124, size: 64, offset: 7552)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !160, file: !161, line: 71, baseType: !87, size: 64, offset: 7616)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !160, file: !161, line: 72, baseType: !124, size: 64, offset: 7680)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !160, file: !161, line: 73, baseType: !275, size: 64, offset: 7744)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !160, file: !161, line: 74, baseType: !92, size: 64, offset: 7808)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !160, file: !161, line: 75, baseType: !37, size: 64, offset: 7872)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !160, file: !161, line: 76, baseType: !92, size: 64, offset: 7936)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !160, file: !161, line: 77, baseType: !193, size: 64, offset: 8000)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !160, file: !161, line: 78, baseType: !37, size: 64, offset: 8064)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !160, file: !161, line: 79, baseType: !92, size: 64, offset: 8128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !160, file: !161, line: 80, baseType: !23, size: 64, offset: 8192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !160, file: !161, line: 81, baseType: !193, size: 64, offset: 8256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !160, file: !161, line: 82, baseType: !418, size: 64, offset: 8320)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !94, line: 702, size: 128, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !420, file: !94, line: 706, baseType: !6, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !420, file: !94, line: 707, baseType: !6, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !94, line: 708, baseType: !25, size: 16, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !420, file: !94, line: 709, baseType: !46, size: 8, offset: 80)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !420, file: !94, line: 710, baseType: !46, size: 8, offset: 88)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !420, file: !94, line: 711, baseType: !46, size: 8, offset: 96)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !160, file: !161, line: 83, baseType: !193, size: 64, offset: 8384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !160, file: !161, line: 84, baseType: !37, size: 64, offset: 8448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !160, file: !161, line: 85, baseType: !275, size: 64, offset: 8512)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !160, file: !161, line: 86, baseType: !37, size: 64, offset: 8576)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !160, file: !161, line: 87, baseType: !275, size: 64, offset: 8640)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !160, file: !161, line: 88, baseType: !193, size: 64, offset: 8704)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !160, file: !161, line: 89, baseType: !193, size: 64, offset: 8768)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !160, file: !161, line: 90, baseType: !436, size: 64, offset: 8832)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !160, file: !161, line: 91, baseType: !438, size: 64, offset: 8896)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !94, line: 637, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!4, !159, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !160, file: !161, line: 92, baseType: !444, size: 64, offset: 8960)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !94, line: 641, baseType: !156)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !152, file: !39, line: 152, baseType: !37, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !138, file: !39, line: 155, baseType: !6, size: 32, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !138, file: !39, line: 156, baseType: !113, size: 16, offset: 416)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !138, file: !39, line: 157, baseType: !46, size: 8, offset: 432)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !38, file: !39, line: 375, baseType: !450, size: 576)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !39, line: 122, size: 576, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !450, file: !39, line: 123, baseType: !37, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !450, file: !39, line: 123, baseType: !46, size: 8, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !450, file: !39, line: 123, baseType: !46, size: 8, offset: 72)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !450, file: !39, line: 123, baseType: !25, size: 16, offset: 80)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !39, line: 123, baseType: !46, size: 8, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !450, file: !39, line: 123, baseType: !46, size: 8, offset: 104)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !450, file: !39, line: 124, baseType: !25, size: 16, offset: 112)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !450, file: !39, line: 125, baseType: !11, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !450, file: !39, line: 126, baseType: !65, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !450, file: !39, line: 127, baseType: !436, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !450, file: !39, line: 128, baseType: !37, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !450, file: !39, line: 129, baseType: !37, size: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !450, file: !39, line: 130, baseType: !92, size: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !450, file: !39, line: 131, baseType: !46, size: 8, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !38, file: !39, line: 376, baseType: !467, size: 448)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !39, line: 134, size: 448, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !480}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !467, file: !39, line: 135, baseType: !37, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !467, file: !39, line: 135, baseType: !46, size: 8, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !467, file: !39, line: 135, baseType: !46, size: 8, offset: 72)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !467, file: !39, line: 135, baseType: !25, size: 16, offset: 80)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !39, line: 135, baseType: !46, size: 8, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !467, file: !39, line: 135, baseType: !46, size: 8, offset: 104)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !467, file: !39, line: 136, baseType: !92, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !467, file: !39, line: 137, baseType: !37, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !467, file: !39, line: 138, baseType: !37, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !467, file: !39, line: 139, baseType: !479, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !5, line: 129, baseType: !65)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !467, file: !39, line: 140, baseType: !6, size: 32, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !38, file: !39, line: 377, baseType: !482, size: 320)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !39, line: 184, size: 320, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !493}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !482, file: !39, line: 185, baseType: !37, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !482, file: !39, line: 185, baseType: !46, size: 8, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !482, file: !39, line: 185, baseType: !46, size: 8, offset: 72)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !482, file: !39, line: 185, baseType: !25, size: 16, offset: 80)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !39, line: 185, baseType: !46, size: 8, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !482, file: !39, line: 185, baseType: !490, size: 128, offset: 128)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 2)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !482, file: !39, line: 185, baseType: !37, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !38, file: !39, line: 378, baseType: !495, size: 384)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !39, line: 187, size: 384, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503, !504}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !495, file: !39, line: 188, baseType: !37, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !495, file: !39, line: 188, baseType: !46, size: 8, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !39, line: 188, baseType: !46, size: 8, offset: 72)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !495, file: !39, line: 188, baseType: !25, size: 16, offset: 80)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !39, line: 188, baseType: !46, size: 8, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !495, file: !39, line: 189, baseType: !490, size: 128, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !495, file: !39, line: 189, baseType: !37, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !495, file: !39, line: 189, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !94, line: 480, size: 576, elements: !507)
!507 = !{!508, !509, !510, !511, !519, !534, !566, !567, !568, !569, !570, !571}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !506, file: !94, line: 481, baseType: !92, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !506, file: !94, line: 482, baseType: !505, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !94, line: 483, baseType: !505, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !506, file: !94, line: 484, baseType: !512, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !94, line: 497, size: 256, elements: !514)
!514 = !{!515, !516, !517, !518}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !513, file: !94, line: 498, baseType: !512, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !94, line: 499, baseType: !512, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !513, file: !94, line: 500, baseType: !505, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !513, file: !94, line: 501, baseType: !6, size: 32, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !506, file: !94, line: 485, baseType: !520, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !94, line: 466, size: 320, elements: !522)
!522 = !{!523, !528, !529, !530, !531, !532, !533}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !521, file: !94, line: 467, baseType: !524, size: 128)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !94, line: 459, size: 128, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !524, file: !94, line: 460, baseType: !46, size: 8)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !524, file: !94, line: 461, baseType: !65, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !521, file: !94, line: 468, baseType: !524, size: 128, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !521, file: !94, line: 469, baseType: !25, size: 16, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !521, file: !94, line: 470, baseType: !46, size: 8, offset: 272)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !521, file: !94, line: 471, baseType: !46, size: 8, offset: 280)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !521, file: !94, line: 472, baseType: !46, size: 8, offset: 288)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !521, file: !94, line: 473, baseType: !46, size: 8, offset: 296)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !506, file: !94, line: 486, baseType: !535, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !94, line: 448, size: 192, elements: !537)
!537 = !{!538, !561, !562, !563, !564, !565}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !536, file: !94, line: 449, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !94, line: 438, size: 64, elements: !540)
!540 = !{!541, !542, !555}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !539, file: !94, line: 439, baseType: !92, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !539, file: !94, line: 440, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !94, line: 419, size: 256, elements: !545)
!545 = !{!546, !551, !552, !553, !554}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !544, file: !94, line: 420, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !5, line: 1049, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!6, !13, !6, !11}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !544, file: !94, line: 421, baseType: !11, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !544, file: !94, line: 422, baseType: !92, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !544, file: !94, line: 423, baseType: !46, size: 8, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !544, file: !94, line: 424, baseType: !46, size: 8, offset: 200)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !539, file: !94, line: 441, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !94, line: 429, size: 128, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !557, file: !94, line: 430, baseType: !92, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !557, file: !94, line: 431, baseType: !556, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !536, file: !94, line: 450, baseType: !520, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !536, file: !94, line: 451, baseType: !46, size: 8, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !536, file: !94, line: 452, baseType: !46, size: 8, offset: 136)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !536, file: !94, line: 453, baseType: !46, size: 8, offset: 144)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !536, file: !94, line: 454, baseType: !46, size: 8, offset: 152)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !506, file: !94, line: 487, baseType: !65, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !506, file: !94, line: 488, baseType: !6, size: 32, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !506, file: !94, line: 489, baseType: !25, size: 16, offset: 480)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !506, file: !94, line: 490, baseType: !25, size: 16, offset: 496)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !506, file: !94, line: 491, baseType: !46, size: 8, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !506, file: !94, line: 492, baseType: !46, size: 8, offset: 520)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !38, file: !39, line: 379, baseType: !573, size: 384)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !39, line: 192, size: 384, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !583}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !573, file: !39, line: 193, baseType: !37, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !573, file: !39, line: 193, baseType: !46, size: 8, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !573, file: !39, line: 193, baseType: !46, size: 8, offset: 72)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !573, file: !39, line: 193, baseType: !25, size: 16, offset: 80)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !39, line: 193, baseType: !46, size: 8, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !573, file: !39, line: 193, baseType: !490, size: 128, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !573, file: !39, line: 193, baseType: !37, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !573, file: !39, line: 193, baseType: !6, size: 32, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !573, file: !39, line: 194, baseType: !6, size: 32, offset: 352)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !38, file: !39, line: 380, baseType: !585, size: 384)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !39, line: 197, size: 384, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !585, file: !39, line: 198, baseType: !37, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !585, file: !39, line: 198, baseType: !46, size: 8, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !585, file: !39, line: 198, baseType: !46, size: 8, offset: 72)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !585, file: !39, line: 198, baseType: !25, size: 16, offset: 80)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !39, line: 198, baseType: !46, size: 8, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !585, file: !39, line: 200, baseType: !46, size: 8, offset: 104)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !585, file: !39, line: 201, baseType: !46, size: 8, offset: 112)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !585, file: !39, line: 202, baseType: !490, size: 128, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !585, file: !39, line: 202, baseType: !37, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !585, file: !39, line: 202, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !5, line: 128, baseType: !65)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !38, file: !39, line: 381, baseType: !599, size: 320)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !39, line: 205, size: 320, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !39, line: 206, baseType: !37, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !39, line: 206, baseType: !46, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !39, line: 206, baseType: !46, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !39, line: 206, baseType: !25, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !39, line: 206, baseType: !46, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !599, file: !39, line: 206, baseType: !490, size: 128, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !599, file: !39, line: 206, baseType: !37, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !38, file: !39, line: 382, baseType: !609, size: 384)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !39, line: 233, size: 384, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !609, file: !39, line: 234, baseType: !37, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !609, file: !39, line: 234, baseType: !46, size: 8, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !609, file: !39, line: 234, baseType: !46, size: 8, offset: 72)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !609, file: !39, line: 234, baseType: !25, size: 16, offset: 80)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !609, file: !39, line: 234, baseType: !46, size: 8, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !609, file: !39, line: 234, baseType: !46, size: 8, offset: 104)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !609, file: !39, line: 234, baseType: !46, size: 8, offset: 112)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !609, file: !39, line: 234, baseType: !46, size: 8, offset: 120)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !609, file: !39, line: 234, baseType: !92, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !609, file: !39, line: 234, baseType: !6, size: 32, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !609, file: !39, line: 234, baseType: !6, size: 32, offset: 224)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !609, file: !39, line: 234, baseType: !6, size: 32, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !609, file: !39, line: 234, baseType: !46, size: 8, offset: 288)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !609, file: !39, line: 234, baseType: !46, size: 8, offset: 296)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !609, file: !39, line: 234, baseType: !37, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !38, file: !39, line: 383, baseType: !627, size: 576)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !39, line: 237, size: 576, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !627, file: !39, line: 238, baseType: !37, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !627, file: !39, line: 238, baseType: !46, size: 8, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !39, line: 238, baseType: !46, size: 8, offset: 72)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !627, file: !39, line: 238, baseType: !25, size: 16, offset: 80)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !39, line: 238, baseType: !46, size: 8, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !627, file: !39, line: 238, baseType: !46, size: 8, offset: 104)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !627, file: !39, line: 238, baseType: !46, size: 8, offset: 112)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !627, file: !39, line: 238, baseType: !46, size: 8, offset: 120)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !627, file: !39, line: 238, baseType: !92, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !627, file: !39, line: 238, baseType: !6, size: 32, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !627, file: !39, line: 238, baseType: !6, size: 32, offset: 224)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !627, file: !39, line: 238, baseType: !6, size: 32, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !627, file: !39, line: 238, baseType: !46, size: 8, offset: 288)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !627, file: !39, line: 238, baseType: !46, size: 8, offset: 296)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !627, file: !39, line: 238, baseType: !25, size: 16, offset: 304)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !627, file: !39, line: 239, baseType: !37, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !627, file: !39, line: 240, baseType: !87, size: 64, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !627, file: !39, line: 241, baseType: !25, size: 16, offset: 448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !627, file: !39, line: 242, baseType: !87, size: 64, offset: 512)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !38, file: !39, line: 384, baseType: !649, size: 384)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !39, line: 262, size: 384, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !649, file: !39, line: 263, baseType: !37, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !649, file: !39, line: 263, baseType: !46, size: 8, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !649, file: !39, line: 263, baseType: !46, size: 8, offset: 72)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !649, file: !39, line: 263, baseType: !25, size: 16, offset: 80)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !39, line: 263, baseType: !46, size: 8, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !649, file: !39, line: 263, baseType: !46, size: 8, offset: 104)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !649, file: !39, line: 263, baseType: !46, size: 8, offset: 112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !649, file: !39, line: 263, baseType: !46, size: 8, offset: 120)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !649, file: !39, line: 263, baseType: !92, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !649, file: !39, line: 263, baseType: !6, size: 32, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !649, file: !39, line: 263, baseType: !6, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !649, file: !39, line: 263, baseType: !6, size: 32, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !649, file: !39, line: 263, baseType: !46, size: 8, offset: 288)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !649, file: !39, line: 263, baseType: !46, size: 8, offset: 296)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !649, file: !39, line: 263, baseType: !46, size: 8, offset: 304)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !649, file: !39, line: 264, baseType: !37, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !38, file: !39, line: 385, baseType: !668, size: 448)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !39, line: 245, size: 448, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !668, file: !39, line: 246, baseType: !37, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !668, file: !39, line: 246, baseType: !46, size: 8, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !39, line: 246, baseType: !46, size: 8, offset: 72)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !668, file: !39, line: 246, baseType: !25, size: 16, offset: 80)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !39, line: 246, baseType: !46, size: 8, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !668, file: !39, line: 246, baseType: !46, size: 8, offset: 104)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !668, file: !39, line: 246, baseType: !46, size: 8, offset: 112)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !668, file: !39, line: 246, baseType: !46, size: 8, offset: 120)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !668, file: !39, line: 246, baseType: !92, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !668, file: !39, line: 246, baseType: !6, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !668, file: !39, line: 246, baseType: !6, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !668, file: !39, line: 246, baseType: !6, size: 32, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !668, file: !39, line: 246, baseType: !46, size: 8, offset: 288)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !668, file: !39, line: 246, baseType: !46, size: 8, offset: 296)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !668, file: !39, line: 246, baseType: !37, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !668, file: !39, line: 247, baseType: !37, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !38, file: !39, line: 386, baseType: !687, size: 448)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !39, line: 250, size: 448, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !687, file: !39, line: 251, baseType: !37, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !687, file: !39, line: 251, baseType: !46, size: 8, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !687, file: !39, line: 251, baseType: !46, size: 8, offset: 72)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !687, file: !39, line: 251, baseType: !25, size: 16, offset: 80)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !39, line: 251, baseType: !46, size: 8, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !687, file: !39, line: 251, baseType: !46, size: 8, offset: 104)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !687, file: !39, line: 251, baseType: !46, size: 8, offset: 112)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !687, file: !39, line: 251, baseType: !46, size: 8, offset: 120)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !687, file: !39, line: 251, baseType: !92, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !687, file: !39, line: 251, baseType: !6, size: 32, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !687, file: !39, line: 251, baseType: !6, size: 32, offset: 224)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !687, file: !39, line: 251, baseType: !6, size: 32, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !687, file: !39, line: 251, baseType: !46, size: 8, offset: 288)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !687, file: !39, line: 251, baseType: !46, size: 8, offset: 296)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !687, file: !39, line: 256, baseType: !37, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !687, file: !39, line: 257, baseType: !37, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !38, file: !39, line: 387, baseType: !706, size: 512)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !39, line: 273, size: 512, elements: !707)
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !716, !717}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !706, file: !39, line: 274, baseType: !37, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !706, file: !39, line: 274, baseType: !46, size: 8, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !39, line: 274, baseType: !46, size: 8, offset: 72)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !706, file: !39, line: 274, baseType: !25, size: 16, offset: 80)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !39, line: 274, baseType: !46, size: 8, offset: 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !706, file: !39, line: 274, baseType: !92, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !706, file: !39, line: 275, baseType: !6, size: 32, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !706, file: !39, line: 276, baseType: !384, size: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !706, file: !39, line: 277, baseType: !11, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !39, line: 278, baseType: !490, size: 128, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !38, file: !39, line: 388, baseType: !719, size: 512)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !39, line: 281, size: 512, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !734, !735, !736, !742, !743}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !719, file: !39, line: 282, baseType: !37, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !719, file: !39, line: 282, baseType: !46, size: 8, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !719, file: !39, line: 282, baseType: !46, size: 8, offset: 72)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !719, file: !39, line: 282, baseType: !25, size: 16, offset: 80)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !39, line: 282, baseType: !46, size: 8, offset: 96)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !719, file: !39, line: 282, baseType: !46, size: 8, offset: 104)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !719, file: !39, line: 283, baseType: !46, size: 8, offset: 112)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !719, file: !39, line: 284, baseType: !729, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !5, line: 1084, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!4, !6, !479, !6, !733, !11, !11}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !719, file: !39, line: 285, baseType: !92, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !719, file: !39, line: 286, baseType: !11, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !719, file: !39, line: 287, baseType: !737, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !5, line: 1102, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!4, !13, !6, !11, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !719, file: !39, line: 288, baseType: !37, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !719, file: !39, line: 289, baseType: !37, size: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !38, file: !39, line: 389, baseType: !745, size: 512)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !39, line: 307, size: 512, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !745, file: !39, line: 308, baseType: !37, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !39, line: 308, baseType: !46, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !39, line: 308, baseType: !46, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !745, file: !39, line: 308, baseType: !25, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !39, line: 308, baseType: !46, size: 8, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !745, file: !39, line: 308, baseType: !46, size: 8, offset: 104)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !745, file: !39, line: 309, baseType: !46, size: 8, offset: 112)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !745, file: !39, line: 310, baseType: !46, size: 8, offset: 120)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !745, file: !39, line: 311, baseType: !11, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !745, file: !39, line: 312, baseType: !92, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !745, file: !39, line: 313, baseType: !124, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !745, file: !39, line: 314, baseType: !87, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !745, file: !39, line: 315, baseType: !87, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !745, file: !39, line: 316, baseType: !6, size: 32, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !38, file: !39, line: 390, baseType: !762, size: 448)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !39, line: 340, size: 448, elements: !763)
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !772, !773}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !762, file: !39, line: 341, baseType: !37, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !762, file: !39, line: 341, baseType: !46, size: 8, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !762, file: !39, line: 341, baseType: !46, size: 8, offset: 72)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !762, file: !39, line: 341, baseType: !25, size: 16, offset: 80)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !762, file: !39, line: 341, baseType: !46, size: 8, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !762, file: !39, line: 341, baseType: !92, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !762, file: !39, line: 342, baseType: !92, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !762, file: !39, line: 343, baseType: !11, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !762, file: !39, line: 344, baseType: !87, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !762, file: !39, line: 345, baseType: !6, size: 32, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !38, file: !39, line: 391, baseType: !775, size: 256)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !39, line: 350, size: 256, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !787}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !775, file: !39, line: 351, baseType: !37, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !775, file: !39, line: 351, baseType: !46, size: 8, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !39, line: 351, baseType: !46, size: 8, offset: 72)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !775, file: !39, line: 351, baseType: !25, size: 16, offset: 80)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !39, line: 351, baseType: !46, size: 8, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !775, file: !39, line: 351, baseType: !783, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !5, line: 1055, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !13, !11}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !775, file: !39, line: 352, baseType: !11, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !38, file: !39, line: 392, baseType: !789, size: 192)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !39, line: 357, size: 192, elements: !790)
!790 = !{!791, !792, !793, !794, !795, !796}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !789, file: !39, line: 358, baseType: !37, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !789, file: !39, line: 358, baseType: !46, size: 8, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !789, file: !39, line: 358, baseType: !46, size: 8, offset: 72)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !789, file: !39, line: 358, baseType: !25, size: 16, offset: 80)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !39, line: 358, baseType: !46, size: 8, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !789, file: !39, line: 358, baseType: !37, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !38, file: !39, line: 399, baseType: !93, size: 384)
!798 = !DILocation(line: 103, column: 29, scope: !19)
!799 = !DILocation(line: 107, column: 36, scope: !19)
!800 = !DILocation(line: 107, column: 44, scope: !19)
!801 = !DILocation(line: 107, column: 11, scope: !19)
!802 = !DILocation(line: 107, column: 9, scope: !19)
!803 = !DILocation(line: 108, column: 6, scope: !804)
!804 = distinct !DILexicalBlock(scope: !19, file: !1, line: 108, column: 6)
!805 = !DILocation(line: 108, column: 6, scope: !19)
!806 = !DILocation(line: 109, column: 11, scope: !807)
!807 = distinct !DILexicalBlock(scope: !804, file: !1, line: 108, column: 28)
!808 = !DILocation(line: 109, column: 3, scope: !807)
!809 = !DILocation(line: 114, column: 11, scope: !19)
!810 = !DILocation(line: 114, column: 9, scope: !19)
!811 = !DILocation(line: 115, column: 10, scope: !19)
!812 = !DILocation(line: 115, column: 2, scope: !19)
!813 = !DILocation(line: 116, column: 1, scope: !19)
!814 = distinct !DISubprogram(name: "acpi_ut_get_mutex_object", scope: !1, file: !1, line: 38, type: !815, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!815 = !DISubroutineType(types: !816)
!816 = !{!4, !13, !22, !124}
!817 = !DILocalVariable(name: "handle", arg: 1, scope: !814, file: !1, line: 38, type: !13)
!818 = !DILocation(line: 38, column: 38, scope: !814)
!819 = !DILocalVariable(name: "pathname", arg: 2, scope: !814, file: !1, line: 39, type: !22)
!820 = !DILocation(line: 39, column: 17, scope: !814)
!821 = !DILocalVariable(name: "ret_obj", arg: 3, scope: !814, file: !1, line: 40, type: !124)
!822 = !DILocation(line: 40, column: 33, scope: !814)
!823 = !DILocalVariable(name: "mutex_node", scope: !814, file: !1, line: 42, type: !92)
!824 = !DILocation(line: 42, column: 30, scope: !814)
!825 = !DILocalVariable(name: "mutex_obj", scope: !814, file: !1, line: 43, type: !37)
!826 = !DILocation(line: 43, column: 29, scope: !814)
!827 = !DILocalVariable(name: "status", scope: !814, file: !1, line: 44, type: !4)
!828 = !DILocation(line: 44, column: 14, scope: !814)
!829 = !DILocation(line: 48, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !814, file: !1, line: 48, column: 6)
!831 = !DILocation(line: 48, column: 15, scope: !830)
!832 = !DILocation(line: 48, column: 20, scope: !830)
!833 = !DILocation(line: 48, column: 27, scope: !830)
!834 = !DILocation(line: 48, column: 31, scope: !830)
!835 = !DILocation(line: 48, column: 6, scope: !814)
!836 = !DILocation(line: 49, column: 3, scope: !837)
!837 = distinct !DILexicalBlock(scope: !830, file: !1, line: 48, column: 42)
!838 = !DILocation(line: 54, column: 15, scope: !814)
!839 = !DILocation(line: 54, column: 13, scope: !814)
!840 = !DILocation(line: 55, column: 6, scope: !841)
!841 = distinct !DILexicalBlock(scope: !814, file: !1, line: 55, column: 6)
!842 = !DILocation(line: 55, column: 15, scope: !841)
!843 = !DILocation(line: 55, column: 6, scope: !814)
!844 = !DILocation(line: 57, column: 23, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !1, line: 55, column: 24)
!846 = !DILocation(line: 57, column: 31, scope: !845)
!847 = !DILocation(line: 58, column: 9, scope: !845)
!848 = !DILocation(line: 57, column: 7, scope: !845)
!849 = !DILocation(line: 56, column: 10, scope: !845)
!850 = !DILocation(line: 59, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !845, file: !1, line: 59, column: 7)
!852 = !DILocation(line: 59, column: 7, scope: !845)
!853 = !DILocation(line: 60, column: 12, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !1, line: 59, column: 29)
!855 = !DILocation(line: 60, column: 4, scope: !854)
!856 = !DILocation(line: 62, column: 2, scope: !845)
!857 = !DILocation(line: 66, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !814, file: !1, line: 66, column: 6)
!859 = !DILocation(line: 66, column: 18, scope: !858)
!860 = !DILocation(line: 66, column: 22, scope: !858)
!861 = !DILocation(line: 66, column: 34, scope: !858)
!862 = !DILocation(line: 66, column: 39, scope: !858)
!863 = !DILocation(line: 66, column: 6, scope: !814)
!864 = !DILocation(line: 67, column: 3, scope: !865)
!865 = distinct !DILexicalBlock(scope: !858, file: !1, line: 66, column: 60)
!866 = !DILocation(line: 72, column: 42, scope: !814)
!867 = !DILocation(line: 72, column: 14, scope: !814)
!868 = !DILocation(line: 72, column: 12, scope: !814)
!869 = !DILocation(line: 73, column: 7, scope: !870)
!870 = distinct !DILexicalBlock(scope: !814, file: !1, line: 73, column: 6)
!871 = !DILocation(line: 73, column: 6, scope: !814)
!872 = !DILocation(line: 74, column: 3, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !1, line: 73, column: 18)
!874 = !DILocation(line: 77, column: 13, scope: !814)
!875 = !DILocation(line: 77, column: 3, scope: !814)
!876 = !DILocation(line: 77, column: 11, scope: !814)
!877 = !DILocation(line: 78, column: 2, scope: !814)
!878 = !DILocation(line: 79, column: 1, scope: !814)
!879 = distinct !DISubprogram(name: "acpi_release_mutex", scope: !1, file: !1, line: 136, type: !880, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!880 = !DISubroutineType(types: !881)
!881 = !{!4, !13, !22}
!882 = !DILocalVariable(name: "handle", arg: 1, scope: !879, file: !1, line: 136, type: !13)
!883 = !DILocation(line: 136, column: 44, scope: !879)
!884 = !DILocalVariable(name: "pathname", arg: 2, scope: !879, file: !1, line: 136, type: !22)
!885 = !DILocation(line: 136, column: 64, scope: !879)
!886 = !DILocalVariable(name: "status", scope: !879, file: !1, line: 138, type: !4)
!887 = !DILocation(line: 138, column: 14, scope: !879)
!888 = !DILocalVariable(name: "mutex_obj", scope: !879, file: !1, line: 139, type: !37)
!889 = !DILocation(line: 139, column: 29, scope: !879)
!890 = !DILocation(line: 143, column: 36, scope: !879)
!891 = !DILocation(line: 143, column: 44, scope: !879)
!892 = !DILocation(line: 143, column: 11, scope: !879)
!893 = !DILocation(line: 143, column: 9, scope: !879)
!894 = !DILocation(line: 144, column: 6, scope: !895)
!895 = distinct !DILexicalBlock(scope: !879, file: !1, line: 144, column: 6)
!896 = !DILocation(line: 144, column: 6, scope: !879)
!897 = !DILocation(line: 145, column: 11, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !1, line: 144, column: 28)
!899 = !DILocation(line: 145, column: 3, scope: !898)
!900 = !DILocation(line: 150, column: 2, scope: !879)
!901 = !DILocation(line: 151, column: 2, scope: !879)
!902 = !DILocation(line: 152, column: 1, scope: !879)
