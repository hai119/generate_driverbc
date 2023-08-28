; ModuleID = '../bcout/drivers/acpi/acpica/exsystem.llvm.bc'
source_filename = "drivers/acpi/acpica/exsystem.c"
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
%struct.acpi_object_event = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8* }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }

@_acpi_module_name = internal constant [9 x i8] c"exsystem\00", align 1, !dbg !0
@.str = private unnamed_addr constant [33 x i8] c"Time parameter is too large (%u)\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_system_wait_semaphore(i8* %semaphore, i16 zeroext %timeout) #0 !dbg !27 {
entry:
  %retval = alloca i32, align 4
  %semaphore.addr = alloca i8*, align 8
  %timeout.addr = alloca i16, align 2
  %status = alloca i32, align 4
  store i8* %semaphore, i8** %semaphore.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %semaphore.addr, metadata !31, metadata !DIExpression()), !dbg !32
  store i16 %timeout, i16* %timeout.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %timeout.addr, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %status, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = load i8*, i8** %semaphore.addr, align 8, !dbg !37
  %call = call i32 @acpi_os_wait_semaphore(i8* %0, i32 1, i16 zeroext 0) #3, !dbg !38
  store i32 %call, i32* %status, align 4, !dbg !39
  %1 = load i32, i32* %status, align 4, !dbg !40
  %tobool = icmp ne i32 %1, 0, !dbg !40
  br i1 %tobool, label %if.end, label %if.then, !dbg !42

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !43
  store i32 %2, i32* %retval, align 4, !dbg !43
  br label %return, !dbg !43

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !45
  %cmp = icmp eq i32 %3, 17, !dbg !47
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !48

if.then1:                                         ; preds = %if.end
  call void @acpi_ex_exit_interpreter() #3, !dbg !49
  %4 = load i8*, i8** %semaphore.addr, align 8, !dbg !51
  %5 = load i16, i16* %timeout.addr, align 2, !dbg !52
  %call2 = call i32 @acpi_os_wait_semaphore(i8* %4, i32 1, i16 zeroext %5) #3, !dbg !53
  store i32 %call2, i32* %status, align 4, !dbg !54
  call void @acpi_ex_enter_interpreter() #3, !dbg !55
  br label %if.end3, !dbg !56

if.end3:                                          ; preds = %if.then1, %if.end
  %6 = load i32, i32* %status, align 4, !dbg !57
  store i32 %6, i32* %retval, align 4, !dbg !57
  br label %return, !dbg !57

return:                                           ; preds = %if.end3, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !58
  ret i32 %7, !dbg !58
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_wait_semaphore(i8*, i32, i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_exit_interpreter() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_enter_interpreter() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_system_wait_mutex(i8* %mutex, i16 zeroext %timeout) #0 !dbg !59 {
entry:
  %retval = alloca i32, align 4
  %mutex.addr = alloca i8*, align 8
  %timeout.addr = alloca i16, align 2
  %status = alloca i32, align 4
  store i8* %mutex, i8** %mutex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mutex.addr, metadata !60, metadata !DIExpression()), !dbg !61
  store i16 %timeout, i16* %timeout.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %timeout.addr, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %status, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load i8*, i8** %mutex.addr, align 8, !dbg !66
  %call = call i32 @acpi_os_wait_semaphore(i8* %0, i32 1, i16 zeroext 0) #3, !dbg !66
  store i32 %call, i32* %status, align 4, !dbg !67
  %1 = load i32, i32* %status, align 4, !dbg !68
  %tobool = icmp ne i32 %1, 0, !dbg !68
  br i1 %tobool, label %if.end, label %if.then, !dbg !70

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !71
  store i32 %2, i32* %retval, align 4, !dbg !71
  br label %return, !dbg !71

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !73
  %cmp = icmp eq i32 %3, 17, !dbg !75
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !76

if.then1:                                         ; preds = %if.end
  call void @acpi_ex_exit_interpreter() #3, !dbg !77
  %4 = load i8*, i8** %mutex.addr, align 8, !dbg !79
  %5 = load i16, i16* %timeout.addr, align 2, !dbg !79
  %call2 = call i32 @acpi_os_wait_semaphore(i8* %4, i32 1, i16 zeroext %5) #3, !dbg !79
  store i32 %call2, i32* %status, align 4, !dbg !80
  call void @acpi_ex_enter_interpreter() #3, !dbg !81
  br label %if.end3, !dbg !82

if.end3:                                          ; preds = %if.then1, %if.end
  %6 = load i32, i32* %status, align 4, !dbg !83
  store i32 %6, i32* %retval, align 4, !dbg !83
  br label %return, !dbg !83

return:                                           ; preds = %if.end3, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !84
  ret i32 %7, !dbg !84
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_system_do_stall(i32 %how_long) #0 !dbg !85 {
entry:
  %how_long.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %how_long, i32* %how_long.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %how_long.addr, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %status, metadata !90, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %status, align 4, !dbg !91
  %0 = load i32, i32* %how_long.addr, align 4, !dbg !92
  %cmp = icmp ugt i32 %0, 255, !dbg !94
  br i1 %cmp, label %if.then, label %if.else, !dbg !95

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %how_long.addr, align 4, !dbg !96
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %1) #3, !dbg !96
  store i32 12292, i32* %status, align 4, !dbg !98
  br label %if.end, !dbg !99

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %how_long.addr, align 4, !dbg !100
  call void @acpi_os_stall(i32 %2) #3, !dbg !102
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %status, align 4, !dbg !103
  ret i32 %3, !dbg !104
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_stall(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_system_do_sleep(i64 %how_long) #0 !dbg !105 {
entry:
  %how_long.addr = alloca i64, align 8
  store i64 %how_long, i64* %how_long.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %how_long.addr, metadata !111, metadata !DIExpression()), !dbg !112
  call void @acpi_ex_exit_interpreter() #3, !dbg !113
  %0 = load i64, i64* %how_long.addr, align 8, !dbg !114
  %cmp = icmp ugt i64 %0, 2000, !dbg !116
  br i1 %cmp, label %if.then, label %if.end, !dbg !117

if.then:                                          ; preds = %entry
  store i64 2000, i64* %how_long.addr, align 8, !dbg !118
  br label %if.end, !dbg !120

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %how_long.addr, align 8, !dbg !121
  call void @acpi_os_sleep(i64 %1) #3, !dbg !122
  call void @acpi_ex_enter_interpreter() #3, !dbg !123
  ret i32 0, !dbg !124
}

; Function Attrs: noredzone
declare dso_local void @acpi_os_sleep(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_system_signal_event(%union.acpi_operand_object* %obj_desc) #0 !dbg !125 {
entry:
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !886, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.declare(metadata i32* %status, metadata !888, metadata !DIExpression()), !dbg !889
  store i32 0, i32* %status, align 4, !dbg !889
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !890
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !890
  br i1 %tobool, label %if.then, label %if.end, !dbg !892

if.then:                                          ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !893
  %event = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_event*, !dbg !895
  %os_semaphore = getelementptr inbounds %struct.acpi_object_event, %struct.acpi_object_event* %event, i32 0, i32 5, !dbg !896
  %2 = load i8*, i8** %os_semaphore, align 8, !dbg !896
  %call = call i32 @acpi_os_signal_semaphore(i8* %2, i32 1) #3, !dbg !897
  store i32 %call, i32* %status, align 4, !dbg !898
  br label %if.end, !dbg !899

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %status, align 4, !dbg !900
  ret i32 %3, !dbg !900
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_signal_semaphore(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_system_wait_event(%union.acpi_operand_object* %time_desc, %union.acpi_operand_object* %obj_desc) #0 !dbg !901 {
entry:
  %time_desc.addr = alloca %union.acpi_operand_object*, align 8
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %time_desc, %union.acpi_operand_object** %time_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %time_desc.addr, metadata !904, metadata !DIExpression()), !dbg !905
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !906, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.declare(metadata i32* %status, metadata !908, metadata !DIExpression()), !dbg !909
  store i32 0, i32* %status, align 4, !dbg !909
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !910
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !910
  br i1 %tobool, label %if.then, label %if.end, !dbg !912

if.then:                                          ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !913
  %event = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_event*, !dbg !915
  %os_semaphore = getelementptr inbounds %struct.acpi_object_event, %struct.acpi_object_event* %event, i32 0, i32 5, !dbg !916
  %2 = load i8*, i8** %os_semaphore, align 8, !dbg !916
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %time_desc.addr, align 8, !dbg !917
  %integer = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_integer*, !dbg !918
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !919
  %4 = load i64, i64* %value, align 8, !dbg !919
  %conv = trunc i64 %4 to i16, !dbg !920
  %call = call i32 @acpi_ex_system_wait_semaphore(i8* %2, i16 zeroext %conv) #3, !dbg !921
  store i32 %call, i32* %status, align 4, !dbg !922
  br label %if.end, !dbg !923

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %status, align 4, !dbg !924
  ret i32 %5, !dbg !924
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_system_reset_event(%union.acpi_operand_object* %obj_desc) #0 !dbg !925 {
entry:
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %temp_semaphore = alloca i8*, align 8
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !926, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.declare(metadata i32* %status, metadata !928, metadata !DIExpression()), !dbg !929
  store i32 0, i32* %status, align 4, !dbg !929
  call void @llvm.dbg.declare(metadata i8** %temp_semaphore, metadata !930, metadata !DIExpression()), !dbg !931
  %call = call i32 @acpi_os_create_semaphore(i32 -1, i32 0, i8** %temp_semaphore) #3, !dbg !932
  store i32 %call, i32* %status, align 4, !dbg !933
  %0 = load i32, i32* %status, align 4, !dbg !934
  %tobool = icmp ne i32 %0, 0, !dbg !934
  br i1 %tobool, label %if.end, label %if.then, !dbg !936

if.then:                                          ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !937
  %event = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_event*, !dbg !939
  %os_semaphore = getelementptr inbounds %struct.acpi_object_event, %struct.acpi_object_event* %event, i32 0, i32 5, !dbg !940
  %2 = load i8*, i8** %os_semaphore, align 8, !dbg !940
  %call1 = call i32 @acpi_os_delete_semaphore(i8* %2) #3, !dbg !941
  %3 = load i8*, i8** %temp_semaphore, align 8, !dbg !942
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !943
  %event2 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_event*, !dbg !944
  %os_semaphore3 = getelementptr inbounds %struct.acpi_object_event, %struct.acpi_object_event* %event2, i32 0, i32 5, !dbg !945
  store i8* %3, i8** %os_semaphore3, align 8, !dbg !946
  br label %if.end, !dbg !947

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %status, align 4, !dbg !948
  ret i32 %5, !dbg !949
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_create_semaphore(i32, i32, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_delete_semaphore(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exsystem.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !8}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !15)
!15 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!16 = !{!0}
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 72, elements: !20)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 9)
!22 = !{i32 7, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"Code Model", i32 2}
!26 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!27 = distinct !DISubprogram(name: "acpi_ex_system_wait_semaphore", scope: !3, file: !3, line: 31, type: !28, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{!6, !30, !13}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DILocalVariable(name: "semaphore", arg: 1, scope: !27, file: !3, line: 31, type: !30)
!32 = !DILocation(line: 31, column: 58, scope: !27)
!33 = !DILocalVariable(name: "timeout", arg: 2, scope: !27, file: !3, line: 31, type: !13)
!34 = !DILocation(line: 31, column: 73, scope: !27)
!35 = !DILocalVariable(name: "status", scope: !27, file: !3, line: 33, type: !6)
!36 = !DILocation(line: 33, column: 14, scope: !27)
!37 = !DILocation(line: 37, column: 34, scope: !27)
!38 = !DILocation(line: 37, column: 11, scope: !27)
!39 = !DILocation(line: 37, column: 9, scope: !27)
!40 = !DILocation(line: 38, column: 6, scope: !41)
!41 = distinct !DILexicalBlock(scope: !27, file: !3, line: 38, column: 6)
!42 = !DILocation(line: 38, column: 6, scope: !27)
!43 = !DILocation(line: 39, column: 3, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !3, line: 38, column: 28)
!45 = !DILocation(line: 42, column: 6, scope: !46)
!46 = distinct !DILexicalBlock(scope: !27, file: !3, line: 42, column: 6)
!47 = !DILocation(line: 42, column: 13, scope: !46)
!48 = !DILocation(line: 42, column: 6, scope: !27)
!49 = !DILocation(line: 46, column: 3, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !3, line: 42, column: 25)
!51 = !DILocation(line: 47, column: 35, scope: !50)
!52 = !DILocation(line: 47, column: 49, scope: !50)
!53 = !DILocation(line: 47, column: 12, scope: !50)
!54 = !DILocation(line: 47, column: 10, scope: !50)
!55 = !DILocation(line: 55, column: 3, scope: !50)
!56 = !DILocation(line: 56, column: 2, scope: !50)
!57 = !DILocation(line: 58, column: 2, scope: !27)
!58 = !DILocation(line: 59, column: 1, scope: !27)
!59 = distinct !DISubprogram(name: "acpi_ex_system_wait_mutex", scope: !3, file: !3, line: 76, type: !28, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!60 = !DILocalVariable(name: "mutex", arg: 1, scope: !59, file: !3, line: 76, type: !30)
!61 = !DILocation(line: 76, column: 50, scope: !59)
!62 = !DILocalVariable(name: "timeout", arg: 2, scope: !59, file: !3, line: 76, type: !13)
!63 = !DILocation(line: 76, column: 61, scope: !59)
!64 = !DILocalVariable(name: "status", scope: !59, file: !3, line: 78, type: !6)
!65 = !DILocation(line: 78, column: 14, scope: !59)
!66 = !DILocation(line: 82, column: 11, scope: !59)
!67 = !DILocation(line: 82, column: 9, scope: !59)
!68 = !DILocation(line: 83, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !59, file: !3, line: 83, column: 6)
!70 = !DILocation(line: 83, column: 6, scope: !59)
!71 = !DILocation(line: 84, column: 3, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !3, line: 83, column: 28)
!73 = !DILocation(line: 87, column: 6, scope: !74)
!74 = distinct !DILexicalBlock(scope: !59, file: !3, line: 87, column: 6)
!75 = !DILocation(line: 87, column: 13, scope: !74)
!76 = !DILocation(line: 87, column: 6, scope: !59)
!77 = !DILocation(line: 91, column: 3, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !3, line: 87, column: 25)
!79 = !DILocation(line: 92, column: 12, scope: !78)
!80 = !DILocation(line: 92, column: 10, scope: !78)
!81 = !DILocation(line: 100, column: 3, scope: !78)
!82 = !DILocation(line: 101, column: 2, scope: !78)
!83 = !DILocation(line: 103, column: 2, scope: !59)
!84 = !DILocation(line: 104, column: 1, scope: !59)
!85 = distinct !DISubprogram(name: "acpi_ex_system_do_stall", scope: !3, file: !3, line: 123, type: !86, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!86 = !DISubroutineType(types: !87)
!87 = !{!6, !8}
!88 = !DILocalVariable(name: "how_long", arg: 1, scope: !85, file: !3, line: 123, type: !8)
!89 = !DILocation(line: 123, column: 41, scope: !85)
!90 = !DILocalVariable(name: "status", scope: !85, file: !3, line: 125, type: !6)
!91 = !DILocation(line: 125, column: 14, scope: !85)
!92 = !DILocation(line: 129, column: 6, scope: !93)
!93 = distinct !DILexicalBlock(scope: !85, file: !3, line: 129, column: 6)
!94 = !DILocation(line: 129, column: 15, scope: !93)
!95 = !DILocation(line: 129, column: 6, scope: !85)
!96 = !DILocation(line: 136, column: 3, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !3, line: 129, column: 22)
!98 = !DILocation(line: 138, column: 10, scope: !97)
!99 = !DILocation(line: 139, column: 2, scope: !97)
!100 = !DILocation(line: 140, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !93, file: !3, line: 139, column: 9)
!102 = !DILocation(line: 140, column: 3, scope: !101)
!103 = !DILocation(line: 143, column: 10, scope: !85)
!104 = !DILocation(line: 143, column: 2, scope: !85)
!105 = distinct !DISubprogram(name: "acpi_ex_system_do_sleep", scope: !3, file: !3, line: 159, type: !106, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!106 = !DISubroutineType(types: !107)
!107 = !{!6, !108}
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !110)
!110 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DILocalVariable(name: "how_long", arg: 1, scope: !105, file: !3, line: 159, type: !108)
!112 = !DILocation(line: 159, column: 41, scope: !105)
!113 = !DILocation(line: 165, column: 2, scope: !105)
!114 = !DILocation(line: 171, column: 6, scope: !115)
!115 = distinct !DILexicalBlock(scope: !105, file: !3, line: 171, column: 6)
!116 = !DILocation(line: 171, column: 15, scope: !115)
!117 = !DILocation(line: 171, column: 6, scope: !105)
!118 = !DILocation(line: 172, column: 12, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !3, line: 171, column: 33)
!120 = !DILocation(line: 173, column: 2, scope: !119)
!121 = !DILocation(line: 175, column: 16, scope: !105)
!122 = !DILocation(line: 175, column: 2, scope: !105)
!123 = !DILocation(line: 179, column: 2, scope: !105)
!124 = !DILocation(line: 180, column: 2, scope: !105)
!125 = distinct !DISubprogram(name: "acpi_ex_system_signal_event", scope: !3, file: !3, line: 196, type: !126, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!126 = !DISubroutineType(types: !127)
!127 = !{!6, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !130, line: 367, size: 576, elements: !131)
!130 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!131 = !{!132, !143, !156, !167, !203, !217, !226, !537, !554, !569, !582, !660, !672, !686, !696, !714, !736, !755, !774, !793, !806, !832, !849, !862, !876, !885}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !129, file: !130, line: 368, baseType: !133, size: 128)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !130, line: 73, size: 128, elements: !134)
!134 = !{!135, !136, !140, !141, !142}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !133, file: !130, line: 74, baseType: !128, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !133, file: !130, line: 74, baseType: !137, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !139)
!139 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !130, line: 74, baseType: !137, size: 8, offset: 72)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !133, file: !130, line: 74, baseType: !13, size: 16, offset: 80)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !130, line: 74, baseType: !137, size: 8, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !129, file: !130, line: 369, baseType: !144, size: 192)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !130, line: 76, size: 192, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !155}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !144, file: !130, line: 77, baseType: !128, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !144, file: !130, line: 77, baseType: !137, size: 8, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !144, file: !130, line: 77, baseType: !137, size: 8, offset: 72)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !144, file: !130, line: 77, baseType: !13, size: 16, offset: 80)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !144, file: !130, line: 77, baseType: !137, size: 8, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !144, file: !130, line: 77, baseType: !152, size: 24, offset: 104)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 24, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 3)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !144, file: !130, line: 78, baseType: !108, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !129, file: !130, line: 370, baseType: !157, size: 256)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !130, line: 93, size: 256, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !166}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !157, file: !130, line: 94, baseType: !128, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !157, file: !130, line: 94, baseType: !137, size: 8, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !157, file: !130, line: 94, baseType: !137, size: 8, offset: 72)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !157, file: !130, line: 94, baseType: !13, size: 16, offset: 80)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !130, line: 94, baseType: !137, size: 8, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !157, file: !130, line: 94, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !157, file: !130, line: 94, baseType: !8, size: 32, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !129, file: !130, line: 371, baseType: !168, size: 384)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !130, line: 97, size: 384, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !177, !178, !179, !180}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !168, file: !130, line: 98, baseType: !128, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !168, file: !130, line: 98, baseType: !137, size: 8, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !130, line: 98, baseType: !137, size: 8, offset: 72)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !168, file: !130, line: 98, baseType: !13, size: 16, offset: 80)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !130, line: 98, baseType: !137, size: 8, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !168, file: !130, line: 98, baseType: !176, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !168, file: !130, line: 98, baseType: !8, size: 32, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !168, file: !130, line: 99, baseType: !8, size: 32, offset: 224)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !168, file: !130, line: 100, baseType: !176, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !168, file: !130, line: 101, baseType: !181, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !183, line: 133, size: 384, elements: !184)
!183 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!184 = !{!185, !186, !187, !188, !189, !198, !199, !200, !201}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !182, file: !183, line: 134, baseType: !128, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !182, file: !183, line: 135, baseType: !137, size: 8, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !182, file: !183, line: 136, baseType: !137, size: 8, offset: 72)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !183, line: 137, baseType: !13, size: 16, offset: 80)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !183, line: 138, baseType: !190, size: 32, offset: 96)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !191, line: 327, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !194}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !190, file: !191, line: 328, baseType: !8, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !190, file: !191, line: 329, baseType: !195, size: 32)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 4)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !182, file: !183, line: 139, baseType: !181, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !182, file: !183, line: 140, baseType: !181, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !182, file: !183, line: 141, baseType: !181, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !182, file: !183, line: 142, baseType: !202, size: 16, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !13)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !129, file: !130, line: 372, baseType: !204, size: 384)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !130, line: 104, size: 384, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !214, !215, !216}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !204, file: !130, line: 105, baseType: !128, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !204, file: !130, line: 105, baseType: !137, size: 8, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !204, file: !130, line: 105, baseType: !137, size: 8, offset: 72)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !204, file: !130, line: 105, baseType: !13, size: 16, offset: 80)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !130, line: 105, baseType: !137, size: 8, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !204, file: !130, line: 105, baseType: !181, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !204, file: !130, line: 106, baseType: !213, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !204, file: !130, line: 107, baseType: !176, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !204, file: !130, line: 108, baseType: !8, size: 32, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !204, file: !130, line: 109, baseType: !8, size: 32, offset: 352)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !129, file: !130, line: 373, baseType: !218, size: 192)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !130, line: 118, size: 192, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !218, file: !130, line: 119, baseType: !128, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !218, file: !130, line: 119, baseType: !137, size: 8, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !218, file: !130, line: 119, baseType: !137, size: 8, offset: 72)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !218, file: !130, line: 119, baseType: !13, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !130, line: 119, baseType: !137, size: 8, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !218, file: !130, line: 119, baseType: !30, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !129, file: !130, line: 374, baseType: !227, size: 448)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !130, line: 143, size: 448, elements: !228)
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !534, !535, !536}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !227, file: !130, line: 144, baseType: !128, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !227, file: !130, line: 144, baseType: !137, size: 8, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !227, file: !130, line: 144, baseType: !137, size: 8, offset: 72)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !227, file: !130, line: 144, baseType: !13, size: 16, offset: 80)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !227, file: !130, line: 144, baseType: !137, size: 8, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !227, file: !130, line: 144, baseType: !137, size: 8, offset: 104)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !227, file: !130, line: 145, baseType: !137, size: 8, offset: 112)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !227, file: !130, line: 146, baseType: !137, size: 8, offset: 120)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !227, file: !130, line: 147, baseType: !128, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !227, file: !130, line: 148, baseType: !128, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !227, file: !130, line: 149, baseType: !176, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !227, file: !130, line: 153, baseType: !241, size: 64, offset: 320)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !227, file: !130, line: 150, size: 64, elements: !242)
!242 = !{!243, !533}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !241, file: !130, line: 151, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !183, line: 248, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!6, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !250, line: 37, size: 9024, elements: !251)
!250 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !481, !482, !483, !484, !485, !489, !491, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !516, !517, !518, !519, !520, !521, !522, !523, !525, !531}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !250, line: 38, baseType: !248, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !249, file: !250, line: 39, baseType: !137, size: 8, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !249, file: !250, line: 40, baseType: !137, size: 8, offset: 72)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !249, file: !250, line: 41, baseType: !13, size: 16, offset: 80)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !249, file: !250, line: 42, baseType: !137, size: 8, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !249, file: !250, line: 43, baseType: !137, size: 8, offset: 104)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !249, file: !250, line: 44, baseType: !137, size: 8, offset: 112)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !249, file: !250, line: 45, baseType: !202, size: 16, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !249, file: !250, line: 46, baseType: !137, size: 8, offset: 144)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !249, file: !250, line: 47, baseType: !137, size: 8, offset: 152)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !249, file: !250, line: 48, baseType: !137, size: 8, offset: 160)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !249, file: !250, line: 49, baseType: !137, size: 8, offset: 168)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !249, file: !250, line: 50, baseType: !137, size: 8, offset: 176)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !249, file: !250, line: 51, baseType: !137, size: 8, offset: 184)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !249, file: !250, line: 52, baseType: !137, size: 8, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !249, file: !250, line: 53, baseType: !137, size: 8, offset: 200)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !249, file: !250, line: 54, baseType: !176, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !249, file: !250, line: 55, baseType: !8, size: 32, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !249, file: !250, line: 56, baseType: !8, size: 32, offset: 352)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !249, file: !250, line: 57, baseType: !8, size: 32, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !249, file: !250, line: 58, baseType: !8, size: 32, offset: 416)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !249, file: !250, line: 60, baseType: !274, size: 640, offset: 448)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !183, line: 893, size: 640, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !362, !363, !479, !480}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !274, file: !183, line: 894, baseType: !176, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !274, file: !183, line: 895, baseType: !176, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !274, file: !183, line: 896, baseType: !176, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !274, file: !183, line: 897, baseType: !176, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !274, file: !183, line: 898, baseType: !176, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !274, file: !183, line: 899, baseType: !282, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !183, line: 875, size: 1600, elements: !284)
!284 = !{!285, !305, !321}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !283, file: !183, line: 876, baseType: !286, size: 448)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !183, line: 828, size: 448, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !304}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !286, file: !183, line: 829, baseType: !282, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !286, file: !183, line: 829, baseType: !137, size: 8, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !183, line: 829, baseType: !137, size: 8, offset: 72)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !286, file: !183, line: 829, baseType: !13, size: 16, offset: 80)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !286, file: !183, line: 829, baseType: !176, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !183, line: 829, baseType: !282, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !286, file: !183, line: 829, baseType: !181, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !286, file: !183, line: 829, baseType: !296, size: 64, offset: 320)
!296 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !183, line: 716, size: 64, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !296, file: !183, line: 717, baseType: !108, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !296, file: !183, line: 718, baseType: !8, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !296, file: !183, line: 719, baseType: !165, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !296, file: !183, line: 720, baseType: !176, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !183, line: 721, baseType: !165, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !296, file: !183, line: 722, baseType: !282, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !286, file: !183, line: 829, baseType: !137, size: 8, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !283, file: !183, line: 877, baseType: !306, size: 640)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !183, line: 835, size: 640, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !306, file: !183, line: 836, baseType: !282, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !306, file: !183, line: 836, baseType: !137, size: 8, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !183, line: 836, baseType: !137, size: 8, offset: 72)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !306, file: !183, line: 836, baseType: !13, size: 16, offset: 80)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !306, file: !183, line: 836, baseType: !176, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !183, line: 836, baseType: !282, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !306, file: !183, line: 836, baseType: !181, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !306, file: !183, line: 836, baseType: !296, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !306, file: !183, line: 836, baseType: !137, size: 8, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !306, file: !183, line: 836, baseType: !165, size: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !306, file: !183, line: 837, baseType: !176, size: 64, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !306, file: !183, line: 838, baseType: !8, size: 32, offset: 576)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !183, line: 839, baseType: !8, size: 32, offset: 608)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !283, file: !183, line: 878, baseType: !322, size: 1600)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !183, line: 846, size: 1600, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !322, file: !183, line: 847, baseType: !282, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !322, file: !183, line: 847, baseType: !137, size: 8, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !183, line: 847, baseType: !137, size: 8, offset: 72)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !322, file: !183, line: 847, baseType: !13, size: 16, offset: 80)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !322, file: !183, line: 847, baseType: !176, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !183, line: 847, baseType: !282, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !322, file: !183, line: 847, baseType: !181, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !322, file: !183, line: 847, baseType: !296, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !322, file: !183, line: 847, baseType: !137, size: 8, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !322, file: !183, line: 847, baseType: !282, size: 64, offset: 448)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !322, file: !183, line: 848, baseType: !282, size: 64, offset: 512)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !322, file: !183, line: 849, baseType: !165, size: 64, offset: 576)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !322, file: !183, line: 850, baseType: !137, size: 8, offset: 640)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !322, file: !183, line: 851, baseType: !165, size: 64, offset: 704)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !322, file: !183, line: 852, baseType: !165, size: 64, offset: 768)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !322, file: !183, line: 853, baseType: !165, size: 64, offset: 832)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !322, file: !183, line: 854, baseType: !195, size: 32, offset: 896)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !322, file: !183, line: 855, baseType: !8, size: 32, offset: 928)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !322, file: !183, line: 856, baseType: !8, size: 32, offset: 960)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !322, file: !183, line: 857, baseType: !8, size: 32, offset: 992)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !322, file: !183, line: 858, baseType: !8, size: 32, offset: 1024)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !322, file: !183, line: 859, baseType: !8, size: 32, offset: 1056)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !322, file: !183, line: 860, baseType: !8, size: 32, offset: 1088)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !322, file: !183, line: 861, baseType: !8, size: 32, offset: 1120)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !322, file: !183, line: 862, baseType: !8, size: 32, offset: 1152)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !322, file: !183, line: 863, baseType: !8, size: 32, offset: 1184)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !322, file: !183, line: 864, baseType: !8, size: 32, offset: 1216)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !322, file: !183, line: 865, baseType: !8, size: 32, offset: 1248)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !322, file: !183, line: 866, baseType: !8, size: 32, offset: 1280)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !322, file: !183, line: 867, baseType: !8, size: 32, offset: 1312)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !322, file: !183, line: 868, baseType: !13, size: 16, offset: 1344)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !322, file: !183, line: 869, baseType: !137, size: 8, offset: 1360)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !322, file: !183, line: 870, baseType: !137, size: 8, offset: 1368)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !322, file: !183, line: 871, baseType: !137, size: 8, offset: 1376)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !322, file: !183, line: 872, baseType: !359, size: 160, offset: 1384)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 20)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !274, file: !183, line: 900, baseType: !181, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !274, file: !183, line: 901, baseType: !364, size: 64, offset: 448)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !183, line: 663, size: 640, elements: !366)
!366 = !{!367, !375, !388, !397, !406, !419, !433, !445, !457}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !365, file: !183, line: 664, baseType: !368, size: 128)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !183, line: 567, size: 128, elements: !369)
!369 = !{!370, !371, !372, !373, !374}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !183, line: 568, baseType: !30, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !368, file: !183, line: 568, baseType: !137, size: 8, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !183, line: 568, baseType: !137, size: 8, offset: 72)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !368, file: !183, line: 568, baseType: !13, size: 16, offset: 80)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !368, file: !183, line: 568, baseType: !13, size: 16, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !365, file: !183, line: 665, baseType: !376, size: 384)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !183, line: 593, size: 384, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !376, file: !183, line: 594, baseType: !30, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !376, file: !183, line: 594, baseType: !137, size: 8, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !376, file: !183, line: 594, baseType: !137, size: 8, offset: 72)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !376, file: !183, line: 594, baseType: !13, size: 16, offset: 80)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !376, file: !183, line: 594, baseType: !13, size: 16, offset: 96)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !376, file: !183, line: 594, baseType: !13, size: 16, offset: 112)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !376, file: !183, line: 595, baseType: !282, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !376, file: !183, line: 596, baseType: !176, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !376, file: !183, line: 597, baseType: !176, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !376, file: !183, line: 598, baseType: !108, size: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !365, file: !183, line: 666, baseType: !389, size: 192)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !183, line: 573, size: 192, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !183, line: 574, baseType: !30, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !389, file: !183, line: 574, baseType: !137, size: 8, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !183, line: 574, baseType: !137, size: 8, offset: 72)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !389, file: !183, line: 574, baseType: !13, size: 16, offset: 80)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !389, file: !183, line: 574, baseType: !13, size: 16, offset: 96)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !389, file: !183, line: 574, baseType: !128, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !365, file: !183, line: 667, baseType: !398, size: 192)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !183, line: 604, size: 192, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !183, line: 605, baseType: !30, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !398, file: !183, line: 605, baseType: !137, size: 8, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !398, file: !183, line: 605, baseType: !137, size: 8, offset: 72)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !398, file: !183, line: 605, baseType: !13, size: 16, offset: 80)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !398, file: !183, line: 605, baseType: !13, size: 16, offset: 96)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !398, file: !183, line: 605, baseType: !181, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !365, file: !183, line: 668, baseType: !407, size: 448)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !183, line: 608, size: 448, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416, !417, !418}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !407, file: !183, line: 609, baseType: !30, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !407, file: !183, line: 609, baseType: !137, size: 8, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !183, line: 609, baseType: !137, size: 8, offset: 72)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !407, file: !183, line: 609, baseType: !13, size: 16, offset: 80)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !407, file: !183, line: 609, baseType: !13, size: 16, offset: 96)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !407, file: !183, line: 609, baseType: !8, size: 32, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !407, file: !183, line: 610, baseType: !282, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !407, file: !183, line: 611, baseType: !176, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !407, file: !183, line: 612, baseType: !176, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !407, file: !183, line: 613, baseType: !8, size: 32, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !365, file: !183, line: 669, baseType: !420, size: 512)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !183, line: 580, size: 512, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !420, file: !183, line: 581, baseType: !30, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !420, file: !183, line: 581, baseType: !137, size: 8, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !183, line: 581, baseType: !137, size: 8, offset: 72)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !420, file: !183, line: 581, baseType: !13, size: 16, offset: 80)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !420, file: !183, line: 581, baseType: !13, size: 16, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !420, file: !183, line: 581, baseType: !8, size: 32, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !420, file: !183, line: 582, baseType: !128, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !420, file: !183, line: 583, baseType: !128, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !420, file: !183, line: 584, baseType: !248, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !420, file: !183, line: 585, baseType: !30, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !420, file: !183, line: 586, baseType: !8, size: 32, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !365, file: !183, line: 670, baseType: !434, size: 320)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !183, line: 620, size: 320, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !434, file: !183, line: 621, baseType: !30, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !434, file: !183, line: 621, baseType: !137, size: 8, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !434, file: !183, line: 621, baseType: !137, size: 8, offset: 72)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !434, file: !183, line: 621, baseType: !13, size: 16, offset: 80)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !434, file: !183, line: 621, baseType: !13, size: 16, offset: 96)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !434, file: !183, line: 621, baseType: !137, size: 8, offset: 112)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !434, file: !183, line: 622, baseType: !248, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !434, file: !183, line: 623, baseType: !128, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !434, file: !183, line: 624, baseType: !108, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !365, file: !183, line: 671, baseType: !446, size: 640)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !183, line: 631, size: 640, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !446, file: !183, line: 632, baseType: !30, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !446, file: !183, line: 632, baseType: !137, size: 8, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !183, line: 632, baseType: !137, size: 8, offset: 72)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !446, file: !183, line: 632, baseType: !13, size: 16, offset: 80)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !446, file: !183, line: 632, baseType: !13, size: 16, offset: 96)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !446, file: !183, line: 633, baseType: !454, size: 512, offset: 128)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 512, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 8)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !365, file: !183, line: 672, baseType: !458, size: 320)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !183, line: 654, size: 320, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !183, line: 655, baseType: !30, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !458, file: !183, line: 655, baseType: !137, size: 8, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !183, line: 655, baseType: !137, size: 8, offset: 72)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !458, file: !183, line: 655, baseType: !13, size: 16, offset: 80)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !458, file: !183, line: 655, baseType: !13, size: 16, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !458, file: !183, line: 655, baseType: !137, size: 8, offset: 112)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !458, file: !183, line: 656, baseType: !181, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !458, file: !183, line: 657, baseType: !128, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !458, file: !183, line: 658, baseType: !469, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !183, line: 645, size: 128, elements: !471)
!471 = !{!472, !478}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !470, file: !183, line: 646, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !477, !8, !30}
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !30)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !470, file: !183, line: 647, baseType: !30, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !274, file: !183, line: 902, baseType: !282, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !274, file: !183, line: 903, baseType: !8, size: 32, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !249, file: !250, line: 61, baseType: !8, size: 32, offset: 1088)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !249, file: !250, line: 62, baseType: !8, size: 32, offset: 1120)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !249, file: !250, line: 63, baseType: !13, size: 16, offset: 1152)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !249, file: !250, line: 64, baseType: !137, size: 8, offset: 1168)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !249, file: !250, line: 66, baseType: !486, size: 2688, offset: 1216)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 2688, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 7)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !249, file: !250, line: 67, baseType: !490, size: 3072, offset: 3904)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 3072, elements: !455)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !249, file: !250, line: 68, baseType: !492, size: 576, offset: 6976)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 576, elements: !20)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !249, file: !250, line: 69, baseType: !213, size: 64, offset: 7552)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !249, file: !250, line: 71, baseType: !176, size: 64, offset: 7616)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !249, file: !250, line: 72, baseType: !213, size: 64, offset: 7680)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !249, file: !250, line: 73, baseType: !364, size: 64, offset: 7744)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !249, file: !250, line: 74, baseType: !181, size: 64, offset: 7808)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !249, file: !250, line: 75, baseType: !128, size: 64, offset: 7872)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !249, file: !250, line: 76, baseType: !181, size: 64, offset: 7936)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !249, file: !250, line: 77, baseType: !282, size: 64, offset: 8000)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !249, file: !250, line: 78, baseType: !128, size: 64, offset: 8064)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !249, file: !250, line: 79, baseType: !181, size: 64, offset: 8128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !249, file: !250, line: 80, baseType: !165, size: 64, offset: 8192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !249, file: !250, line: 81, baseType: !282, size: 64, offset: 8256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !249, file: !250, line: 82, baseType: !506, size: 64, offset: 8320)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !183, line: 702, size: 128, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !508, file: !183, line: 706, baseType: !8, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !508, file: !183, line: 707, baseType: !8, size: 32, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !183, line: 708, baseType: !13, size: 16, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !508, file: !183, line: 709, baseType: !137, size: 8, offset: 80)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !508, file: !183, line: 710, baseType: !137, size: 8, offset: 88)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !508, file: !183, line: 711, baseType: !137, size: 8, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !249, file: !250, line: 83, baseType: !282, size: 64, offset: 8384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !249, file: !250, line: 84, baseType: !128, size: 64, offset: 8448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !249, file: !250, line: 85, baseType: !364, size: 64, offset: 8512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !249, file: !250, line: 86, baseType: !128, size: 64, offset: 8576)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !249, file: !250, line: 87, baseType: !364, size: 64, offset: 8640)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !249, file: !250, line: 88, baseType: !282, size: 64, offset: 8704)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !249, file: !250, line: 89, baseType: !282, size: 64, offset: 8768)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !249, file: !250, line: 90, baseType: !524, size: 64, offset: 8832)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !249, file: !250, line: 91, baseType: !526, size: 64, offset: 8896)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !183, line: 637, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!6, !248, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !249, file: !250, line: 92, baseType: !532, size: 64, offset: 8960)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !183, line: 641, baseType: !245)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !241, file: !130, line: 152, baseType: !128, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !227, file: !130, line: 155, baseType: !8, size: 32, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !227, file: !130, line: 156, baseType: !202, size: 16, offset: 416)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !227, file: !130, line: 157, baseType: !137, size: 8, offset: 432)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !129, file: !130, line: 375, baseType: !538, size: 576)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !130, line: 122, size: 576, elements: !539)
!539 = !{!540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !538, file: !130, line: 123, baseType: !128, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !538, file: !130, line: 123, baseType: !137, size: 8, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !538, file: !130, line: 123, baseType: !137, size: 8, offset: 72)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !538, file: !130, line: 123, baseType: !13, size: 16, offset: 80)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !130, line: 123, baseType: !137, size: 8, offset: 96)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !538, file: !130, line: 123, baseType: !137, size: 8, offset: 104)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !538, file: !130, line: 124, baseType: !13, size: 16, offset: 112)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !538, file: !130, line: 125, baseType: !30, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !538, file: !130, line: 126, baseType: !108, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !538, file: !130, line: 127, baseType: !524, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !538, file: !130, line: 128, baseType: !128, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !538, file: !130, line: 129, baseType: !128, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !538, file: !130, line: 130, baseType: !181, size: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !538, file: !130, line: 131, baseType: !137, size: 8, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !129, file: !130, line: 376, baseType: !555, size: 448)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !130, line: 134, size: 448, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !568}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !555, file: !130, line: 135, baseType: !128, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !555, file: !130, line: 135, baseType: !137, size: 8, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !130, line: 135, baseType: !137, size: 8, offset: 72)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !555, file: !130, line: 135, baseType: !13, size: 16, offset: 80)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !130, line: 135, baseType: !137, size: 8, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !555, file: !130, line: 135, baseType: !137, size: 8, offset: 104)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !555, file: !130, line: 136, baseType: !181, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !555, file: !130, line: 137, baseType: !128, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !555, file: !130, line: 138, baseType: !128, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !555, file: !130, line: 139, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !108)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !555, file: !130, line: 140, baseType: !8, size: 32, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !129, file: !130, line: 377, baseType: !570, size: 320)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !130, line: 184, size: 320, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !581}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !570, file: !130, line: 185, baseType: !128, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !570, file: !130, line: 185, baseType: !137, size: 8, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !570, file: !130, line: 185, baseType: !137, size: 8, offset: 72)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !570, file: !130, line: 185, baseType: !13, size: 16, offset: 80)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !570, file: !130, line: 185, baseType: !137, size: 8, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !570, file: !130, line: 185, baseType: !578, size: 128, offset: 128)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 2)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !570, file: !130, line: 185, baseType: !128, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !129, file: !130, line: 378, baseType: !583, size: 384)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !130, line: 187, size: 384, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !583, file: !130, line: 188, baseType: !128, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !583, file: !130, line: 188, baseType: !137, size: 8, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !583, file: !130, line: 188, baseType: !137, size: 8, offset: 72)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !583, file: !130, line: 188, baseType: !13, size: 16, offset: 80)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !130, line: 188, baseType: !137, size: 8, offset: 96)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !583, file: !130, line: 189, baseType: !578, size: 128, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !583, file: !130, line: 189, baseType: !128, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !583, file: !130, line: 189, baseType: !593, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !183, line: 480, size: 576, elements: !595)
!595 = !{!596, !597, !598, !599, !607, !622, !654, !655, !656, !657, !658, !659}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !594, file: !183, line: 481, baseType: !181, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !594, file: !183, line: 482, baseType: !593, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !594, file: !183, line: 483, baseType: !593, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !594, file: !183, line: 484, baseType: !600, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !183, line: 497, size: 256, elements: !602)
!602 = !{!603, !604, !605, !606}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !601, file: !183, line: 498, baseType: !600, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !601, file: !183, line: 499, baseType: !600, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !601, file: !183, line: 500, baseType: !593, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !601, file: !183, line: 501, baseType: !8, size: 32, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !594, file: !183, line: 485, baseType: !608, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !183, line: 466, size: 320, elements: !610)
!610 = !{!611, !616, !617, !618, !619, !620, !621}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !609, file: !183, line: 467, baseType: !612, size: 128)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !183, line: 459, size: 128, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !612, file: !183, line: 460, baseType: !137, size: 8)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !612, file: !183, line: 461, baseType: !108, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !609, file: !183, line: 468, baseType: !612, size: 128, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !609, file: !183, line: 469, baseType: !13, size: 16, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !609, file: !183, line: 470, baseType: !137, size: 8, offset: 272)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !609, file: !183, line: 471, baseType: !137, size: 8, offset: 280)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !609, file: !183, line: 472, baseType: !137, size: 8, offset: 288)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !609, file: !183, line: 473, baseType: !137, size: 8, offset: 296)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !594, file: !183, line: 486, baseType: !623, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !183, line: 448, size: 192, elements: !625)
!625 = !{!626, !649, !650, !651, !652, !653}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !624, file: !183, line: 449, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !183, line: 438, size: 64, elements: !628)
!628 = !{!629, !630, !643}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !627, file: !183, line: 439, baseType: !181, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !627, file: !183, line: 440, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !183, line: 419, size: 256, elements: !633)
!633 = !{!634, !639, !640, !641, !642}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !632, file: !183, line: 420, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!8, !477, !8, !30}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !632, file: !183, line: 421, baseType: !30, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !632, file: !183, line: 422, baseType: !181, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !632, file: !183, line: 423, baseType: !137, size: 8, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !632, file: !183, line: 424, baseType: !137, size: 8, offset: 200)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !627, file: !183, line: 441, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !183, line: 429, size: 128, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !645, file: !183, line: 430, baseType: !181, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !645, file: !183, line: 431, baseType: !644, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !624, file: !183, line: 450, baseType: !608, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !624, file: !183, line: 451, baseType: !137, size: 8, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !624, file: !183, line: 452, baseType: !137, size: 8, offset: 136)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !624, file: !183, line: 453, baseType: !137, size: 8, offset: 144)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !624, file: !183, line: 454, baseType: !137, size: 8, offset: 152)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !594, file: !183, line: 487, baseType: !108, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !594, file: !183, line: 488, baseType: !8, size: 32, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !594, file: !183, line: 489, baseType: !13, size: 16, offset: 480)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !594, file: !183, line: 490, baseType: !13, size: 16, offset: 496)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !594, file: !183, line: 491, baseType: !137, size: 8, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !594, file: !183, line: 492, baseType: !137, size: 8, offset: 520)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !129, file: !130, line: 379, baseType: !661, size: 384)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !130, line: 192, size: 384, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !661, file: !130, line: 193, baseType: !128, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !661, file: !130, line: 193, baseType: !137, size: 8, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !130, line: 193, baseType: !137, size: 8, offset: 72)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !661, file: !130, line: 193, baseType: !13, size: 16, offset: 80)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !130, line: 193, baseType: !137, size: 8, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !661, file: !130, line: 193, baseType: !578, size: 128, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !661, file: !130, line: 193, baseType: !128, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !661, file: !130, line: 193, baseType: !8, size: 32, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !661, file: !130, line: 194, baseType: !8, size: 32, offset: 352)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !129, file: !130, line: 380, baseType: !673, size: 384)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !130, line: 197, size: 384, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !673, file: !130, line: 198, baseType: !128, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !673, file: !130, line: 198, baseType: !137, size: 8, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !673, file: !130, line: 198, baseType: !137, size: 8, offset: 72)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !673, file: !130, line: 198, baseType: !13, size: 16, offset: 80)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !673, file: !130, line: 198, baseType: !137, size: 8, offset: 96)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !673, file: !130, line: 200, baseType: !137, size: 8, offset: 104)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !673, file: !130, line: 201, baseType: !137, size: 8, offset: 112)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !673, file: !130, line: 202, baseType: !578, size: 128, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !673, file: !130, line: 202, baseType: !128, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !673, file: !130, line: 202, baseType: !685, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !108)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !129, file: !130, line: 381, baseType: !687, size: 320)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !130, line: 205, size: 320, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !687, file: !130, line: 206, baseType: !128, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !687, file: !130, line: 206, baseType: !137, size: 8, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !687, file: !130, line: 206, baseType: !137, size: 8, offset: 72)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !687, file: !130, line: 206, baseType: !13, size: 16, offset: 80)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !130, line: 206, baseType: !137, size: 8, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !687, file: !130, line: 206, baseType: !578, size: 128, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !687, file: !130, line: 206, baseType: !128, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !129, file: !130, line: 382, baseType: !697, size: 384)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !130, line: 233, size: 384, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !697, file: !130, line: 234, baseType: !128, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !697, file: !130, line: 234, baseType: !137, size: 8, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !697, file: !130, line: 234, baseType: !137, size: 8, offset: 72)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !697, file: !130, line: 234, baseType: !13, size: 16, offset: 80)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !130, line: 234, baseType: !137, size: 8, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !697, file: !130, line: 234, baseType: !137, size: 8, offset: 104)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !697, file: !130, line: 234, baseType: !137, size: 8, offset: 112)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !697, file: !130, line: 234, baseType: !137, size: 8, offset: 120)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !697, file: !130, line: 234, baseType: !181, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !697, file: !130, line: 234, baseType: !8, size: 32, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !697, file: !130, line: 234, baseType: !8, size: 32, offset: 224)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !697, file: !130, line: 234, baseType: !8, size: 32, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !697, file: !130, line: 234, baseType: !137, size: 8, offset: 288)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !697, file: !130, line: 234, baseType: !137, size: 8, offset: 296)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !697, file: !130, line: 234, baseType: !128, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !129, file: !130, line: 383, baseType: !715, size: 576)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !130, line: 237, size: 576, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !130, line: 238, baseType: !128, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !130, line: 238, baseType: !137, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !130, line: 238, baseType: !137, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !130, line: 238, baseType: !13, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !130, line: 238, baseType: !137, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !715, file: !130, line: 238, baseType: !137, size: 8, offset: 104)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !715, file: !130, line: 238, baseType: !137, size: 8, offset: 112)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !715, file: !130, line: 238, baseType: !137, size: 8, offset: 120)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !130, line: 238, baseType: !181, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !715, file: !130, line: 238, baseType: !8, size: 32, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !715, file: !130, line: 238, baseType: !8, size: 32, offset: 224)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !715, file: !130, line: 238, baseType: !8, size: 32, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !715, file: !130, line: 238, baseType: !137, size: 8, offset: 288)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !715, file: !130, line: 238, baseType: !137, size: 8, offset: 296)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !715, file: !130, line: 238, baseType: !13, size: 16, offset: 304)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !715, file: !130, line: 239, baseType: !128, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !715, file: !130, line: 240, baseType: !176, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !715, file: !130, line: 241, baseType: !13, size: 16, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !715, file: !130, line: 242, baseType: !176, size: 64, offset: 512)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !129, file: !130, line: 384, baseType: !737, size: 384)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !130, line: 262, size: 384, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !737, file: !130, line: 263, baseType: !128, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !737, file: !130, line: 263, baseType: !137, size: 8, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !130, line: 263, baseType: !137, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !737, file: !130, line: 263, baseType: !13, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !130, line: 263, baseType: !137, size: 8, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !737, file: !130, line: 263, baseType: !137, size: 8, offset: 104)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !737, file: !130, line: 263, baseType: !137, size: 8, offset: 112)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !737, file: !130, line: 263, baseType: !137, size: 8, offset: 120)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !737, file: !130, line: 263, baseType: !181, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !737, file: !130, line: 263, baseType: !8, size: 32, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !737, file: !130, line: 263, baseType: !8, size: 32, offset: 224)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !737, file: !130, line: 263, baseType: !8, size: 32, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !737, file: !130, line: 263, baseType: !137, size: 8, offset: 288)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !737, file: !130, line: 263, baseType: !137, size: 8, offset: 296)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !737, file: !130, line: 263, baseType: !137, size: 8, offset: 304)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !737, file: !130, line: 264, baseType: !128, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !129, file: !130, line: 385, baseType: !756, size: 448)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !130, line: 245, size: 448, elements: !757)
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !756, file: !130, line: 246, baseType: !128, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !756, file: !130, line: 246, baseType: !137, size: 8, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !756, file: !130, line: 246, baseType: !137, size: 8, offset: 72)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !756, file: !130, line: 246, baseType: !13, size: 16, offset: 80)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !130, line: 246, baseType: !137, size: 8, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !756, file: !130, line: 246, baseType: !137, size: 8, offset: 104)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !756, file: !130, line: 246, baseType: !137, size: 8, offset: 112)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !756, file: !130, line: 246, baseType: !137, size: 8, offset: 120)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !756, file: !130, line: 246, baseType: !181, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !756, file: !130, line: 246, baseType: !8, size: 32, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !756, file: !130, line: 246, baseType: !8, size: 32, offset: 224)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !756, file: !130, line: 246, baseType: !8, size: 32, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !756, file: !130, line: 246, baseType: !137, size: 8, offset: 288)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !756, file: !130, line: 246, baseType: !137, size: 8, offset: 296)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !756, file: !130, line: 246, baseType: !128, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !756, file: !130, line: 247, baseType: !128, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !129, file: !130, line: 386, baseType: !775, size: 448)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !130, line: 250, size: 448, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !775, file: !130, line: 251, baseType: !128, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !775, file: !130, line: 251, baseType: !137, size: 8, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !130, line: 251, baseType: !137, size: 8, offset: 72)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !775, file: !130, line: 251, baseType: !13, size: 16, offset: 80)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !130, line: 251, baseType: !137, size: 8, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !775, file: !130, line: 251, baseType: !137, size: 8, offset: 104)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !775, file: !130, line: 251, baseType: !137, size: 8, offset: 112)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !775, file: !130, line: 251, baseType: !137, size: 8, offset: 120)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !775, file: !130, line: 251, baseType: !181, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !775, file: !130, line: 251, baseType: !8, size: 32, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !775, file: !130, line: 251, baseType: !8, size: 32, offset: 224)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !775, file: !130, line: 251, baseType: !8, size: 32, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !775, file: !130, line: 251, baseType: !137, size: 8, offset: 288)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !775, file: !130, line: 251, baseType: !137, size: 8, offset: 296)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !775, file: !130, line: 256, baseType: !128, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !775, file: !130, line: 257, baseType: !128, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !129, file: !130, line: 387, baseType: !794, size: 512)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !130, line: 273, size: 512, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !802, !803, !804, !805}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !794, file: !130, line: 274, baseType: !128, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !794, file: !130, line: 274, baseType: !137, size: 8, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !794, file: !130, line: 274, baseType: !137, size: 8, offset: 72)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !794, file: !130, line: 274, baseType: !13, size: 16, offset: 80)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !130, line: 274, baseType: !137, size: 8, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !794, file: !130, line: 274, baseType: !181, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !794, file: !130, line: 275, baseType: !8, size: 32, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !794, file: !130, line: 276, baseType: !473, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !794, file: !130, line: 277, baseType: !30, size: 64, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !794, file: !130, line: 278, baseType: !578, size: 128, offset: 384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !129, file: !130, line: 388, baseType: !807, size: 512)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !130, line: 281, size: 512, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !822, !823, !824, !830, !831}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !807, file: !130, line: 282, baseType: !128, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !807, file: !130, line: 282, baseType: !137, size: 8, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !807, file: !130, line: 282, baseType: !137, size: 8, offset: 72)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !807, file: !130, line: 282, baseType: !13, size: 16, offset: 80)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !807, file: !130, line: 282, baseType: !137, size: 8, offset: 96)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !807, file: !130, line: 282, baseType: !137, size: 8, offset: 104)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !807, file: !130, line: 283, baseType: !137, size: 8, offset: 112)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !807, file: !130, line: 284, baseType: !817, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!6, !8, !567, !8, !821, !30, !30}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !807, file: !130, line: 285, baseType: !181, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !807, file: !130, line: 286, baseType: !30, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !807, file: !130, line: 287, baseType: !825, size: 64, offset: 320)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !826)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!6, !477, !8, !30, !829}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !807, file: !130, line: 288, baseType: !128, size: 64, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !807, file: !130, line: 289, baseType: !128, size: 64, offset: 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !129, file: !130, line: 389, baseType: !833, size: 512)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !130, line: 307, size: 512, elements: !834)
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !833, file: !130, line: 308, baseType: !128, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !833, file: !130, line: 308, baseType: !137, size: 8, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !833, file: !130, line: 308, baseType: !137, size: 8, offset: 72)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !833, file: !130, line: 308, baseType: !13, size: 16, offset: 80)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !833, file: !130, line: 308, baseType: !137, size: 8, offset: 96)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !833, file: !130, line: 308, baseType: !137, size: 8, offset: 104)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !833, file: !130, line: 309, baseType: !137, size: 8, offset: 112)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !833, file: !130, line: 310, baseType: !137, size: 8, offset: 120)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !833, file: !130, line: 311, baseType: !30, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !833, file: !130, line: 312, baseType: !181, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !833, file: !130, line: 313, baseType: !213, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !833, file: !130, line: 314, baseType: !176, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !833, file: !130, line: 315, baseType: !176, size: 64, offset: 384)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !833, file: !130, line: 316, baseType: !8, size: 32, offset: 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !129, file: !130, line: 390, baseType: !850, size: 448)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !130, line: 340, size: 448, elements: !851)
!851 = !{!852, !853, !854, !855, !856, !857, !858, !859, !860, !861}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !850, file: !130, line: 341, baseType: !128, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !850, file: !130, line: 341, baseType: !137, size: 8, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !850, file: !130, line: 341, baseType: !137, size: 8, offset: 72)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !850, file: !130, line: 341, baseType: !13, size: 16, offset: 80)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !850, file: !130, line: 341, baseType: !137, size: 8, offset: 96)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !850, file: !130, line: 341, baseType: !181, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !850, file: !130, line: 342, baseType: !181, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !850, file: !130, line: 343, baseType: !30, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !850, file: !130, line: 344, baseType: !176, size: 64, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !850, file: !130, line: 345, baseType: !8, size: 32, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !129, file: !130, line: 391, baseType: !863, size: 256)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !130, line: 350, size: 256, elements: !864)
!864 = !{!865, !866, !867, !868, !869, !870, !875}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !863, file: !130, line: 351, baseType: !128, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !863, file: !130, line: 351, baseType: !137, size: 8, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !863, file: !130, line: 351, baseType: !137, size: 8, offset: 72)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !863, file: !130, line: 351, baseType: !13, size: 16, offset: 80)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !863, file: !130, line: 351, baseType: !137, size: 8, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !863, file: !130, line: 351, baseType: !871, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !477, !30}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !863, file: !130, line: 352, baseType: !30, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !129, file: !130, line: 392, baseType: !877, size: 192)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !130, line: 357, size: 192, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !877, file: !130, line: 358, baseType: !128, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !877, file: !130, line: 358, baseType: !137, size: 8, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !877, file: !130, line: 358, baseType: !137, size: 8, offset: 72)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !877, file: !130, line: 358, baseType: !13, size: 16, offset: 80)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !877, file: !130, line: 358, baseType: !137, size: 8, offset: 96)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !877, file: !130, line: 358, baseType: !128, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !129, file: !130, line: 399, baseType: !182, size: 384)
!886 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !125, file: !3, line: 196, type: !128)
!887 = !DILocation(line: 196, column: 69, scope: !125)
!888 = !DILocalVariable(name: "status", scope: !125, file: !3, line: 198, type: !6)
!889 = !DILocation(line: 198, column: 14, scope: !125)
!890 = !DILocation(line: 202, column: 6, scope: !891)
!891 = distinct !DILexicalBlock(scope: !125, file: !3, line: 202, column: 6)
!892 = !DILocation(line: 202, column: 6, scope: !125)
!893 = !DILocation(line: 204, column: 32, scope: !894)
!894 = distinct !DILexicalBlock(scope: !891, file: !3, line: 202, column: 16)
!895 = !DILocation(line: 204, column: 42, scope: !894)
!896 = !DILocation(line: 204, column: 48, scope: !894)
!897 = !DILocation(line: 204, column: 7, scope: !894)
!898 = !DILocation(line: 203, column: 10, scope: !894)
!899 = !DILocation(line: 205, column: 2, scope: !894)
!900 = !DILocation(line: 207, column: 2, scope: !125)
!901 = distinct !DISubprogram(name: "acpi_ex_system_wait_event", scope: !3, file: !3, line: 226, type: !902, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!902 = !DISubroutineType(types: !903)
!903 = !{!6, !128, !128}
!904 = !DILocalVariable(name: "time_desc", arg: 1, scope: !901, file: !3, line: 226, type: !128)
!905 = !DILocation(line: 226, column: 54, scope: !901)
!906 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !901, file: !3, line: 227, type: !128)
!907 = !DILocation(line: 227, column: 33, scope: !901)
!908 = !DILocalVariable(name: "status", scope: !901, file: !3, line: 229, type: !6)
!909 = !DILocation(line: 229, column: 14, scope: !901)
!910 = !DILocation(line: 233, column: 6, scope: !911)
!911 = distinct !DILexicalBlock(scope: !901, file: !3, line: 233, column: 6)
!912 = !DILocation(line: 233, column: 6, scope: !901)
!913 = !DILocation(line: 235, column: 37, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 233, column: 16)
!915 = !DILocation(line: 235, column: 47, scope: !914)
!916 = !DILocation(line: 235, column: 53, scope: !914)
!917 = !DILocation(line: 236, column: 15, scope: !914)
!918 = !DILocation(line: 236, column: 26, scope: !914)
!919 = !DILocation(line: 237, column: 9, scope: !914)
!920 = !DILocation(line: 236, column: 9, scope: !914)
!921 = !DILocation(line: 235, column: 7, scope: !914)
!922 = !DILocation(line: 234, column: 10, scope: !914)
!923 = !DILocation(line: 238, column: 2, scope: !914)
!924 = !DILocation(line: 240, column: 2, scope: !901)
!925 = distinct !DISubprogram(name: "acpi_ex_system_reset_event", scope: !3, file: !3, line: 255, type: !126, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!926 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !925, file: !3, line: 255, type: !128)
!927 = !DILocation(line: 255, column: 67, scope: !925)
!928 = !DILocalVariable(name: "status", scope: !925, file: !3, line: 257, type: !6)
!929 = !DILocation(line: 257, column: 14, scope: !925)
!930 = !DILocalVariable(name: "temp_semaphore", scope: !925, file: !3, line: 258, type: !30)
!931 = !DILocation(line: 258, column: 17, scope: !925)
!932 = !DILocation(line: 267, column: 6, scope: !925)
!933 = !DILocation(line: 266, column: 9, scope: !925)
!934 = !DILocation(line: 268, column: 6, scope: !935)
!935 = distinct !DILexicalBlock(scope: !925, file: !3, line: 268, column: 6)
!936 = !DILocation(line: 268, column: 6, scope: !925)
!937 = !DILocation(line: 269, column: 34, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 268, column: 28)
!939 = !DILocation(line: 269, column: 44, scope: !938)
!940 = !DILocation(line: 269, column: 50, scope: !938)
!941 = !DILocation(line: 269, column: 9, scope: !938)
!942 = !DILocation(line: 270, column: 34, scope: !938)
!943 = !DILocation(line: 270, column: 3, scope: !938)
!944 = !DILocation(line: 270, column: 13, scope: !938)
!945 = !DILocation(line: 270, column: 19, scope: !938)
!946 = !DILocation(line: 270, column: 32, scope: !938)
!947 = !DILocation(line: 271, column: 2, scope: !938)
!948 = !DILocation(line: 273, column: 10, scope: !925)
!949 = !DILocation(line: 273, column: 2, scope: !925)
